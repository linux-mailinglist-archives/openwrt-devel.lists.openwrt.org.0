Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3009916D
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 12:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8/aWXgcBSri/qgPUu3wFfVijKfxQniVGNkOVMC6PQOY=; b=ejvFGXgUEWM9+4
	mLdt7Q95EgAJmKAtWSIAwFfpJ9p21UDeyc6gqPM+gPDE/NZtncE83aUzMvIvc8ar4jzqvxD1PJ2jT
	N+w/UghEETA3vW+5PJk0IyxzTP94LzC+O3U0QvytKatqbPb13ObJLOs25cNu9oe35B92qLcc2PnAA
	UKaXdZu8QSvQ/FnmSMXOTvX3gmzzUkAjCXR83LBGBZZLdgPa08YjWJhcthZ538yUwONy3sVSbs+aB
	pLlmkBspZrxj+D5ArMyt3FjO/wQTpBH0iSlrmoiSSFoowmoEggrzDpQMkYnggJJLKs2ogZAKETTmG
	wKKN4kfq0BcD8fn6Trsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kkP-0003vX-E2; Thu, 22 Aug 2019 10:55:17 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kk2-0003ji-Jx
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 10:54:55 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 1AF95A611E1; Thu, 22 Aug 2019 03:54:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 73299A610F2;
 Thu, 22 Aug 2019 03:54:49 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 03:54:49 -0700
Message-ID: <87a7c1qxl2.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_035454_698462_F6CAD3D9 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH RFC 1/2] build: add squashfs padding
 infrastructure
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


Normally, root.squashfs should not be padded for alignment purposes,
because particularly on NOR flash it is typically concatenated with
other objects, like the kernel and device tree. However, in some cases
we do want the root.squashfs to be padded, in particular when it is
written into a ubi volume by itself. The kernel wants to read the
squashfs in chunks, apparently either 1k or 4k bytes at a time. Because
ubi volumes are allocated in logical erase blocks (LEBs) which are
typically *not* powers of two (as some of the underlying space is used
for metadata), a non-padded squashfs can align on the LEBs in such a way
that a block read near the end of the squashfs can bleed into an area
that is not part of the ubi volume, resulting in a kernel panic.

One such kernel panic was recently observed in a corner case on Meraki
MR24.  On the MR24, the LEBs are 15.5 kiB in size.  If rootfs sizes were
uniformily distributed, it would be expected to see such a kernel panic
for about 1/4 of the possible rootfs sizes.

This commit adds some infrastucture to allow the padding of a
root.squashfs to 4k boundaries.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 include/image-commands.mk | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 89c17aec5b..59dcf4e429 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -242,6 +242,11 @@ define Build/pad-rootfs
 		$(if $(BLOCKSIZE),$(BLOCKSIZE:%k=%),4 8 16 64 128 256)
 endef
 
+define Build/pad-squashfs
+	dd if=$(KDIR)/root.squashfs of=$(KDIR)/root.squashfs.new bs=4k conv=sync
+	mv $(KDIR)/root.squashfs.new $(KDIR)/root.squashfs
+endef
+
 define Build/pad-offset
 	let \
 		size="$$(stat -c%s $@)" \
-- 
2.23.0


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
