Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54B199185
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 13:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XQdzVlBriW9CEWFIFUZ3daDV8EEEAoWcR4wBmyDacsA=; b=aGbhDqSLMJsG+WyUMw2WmPJ9vz
	X+Pgmnw5vrg7teCcuehcEcYooKXmQFc9b8xEnnqiei+mUFy+DDqEUw91osZKMjjmGnB6fC8dHZVb5
	vJE6P51RmI1ldxGmNSQkV3krDbL4V7/VKcWgwPJre0PBYwV4qPwnX+7rDhdrr0l0dc4GdpU0pR73Q
	v7+c9P/Henwn1HCOh+rWD1VwRJ2vIg5fti6FNdauWSkvJ5hdFGvJDi2k3gBEUARJgU9Kgnf6nCyOs
	BzVeFLLs9NUr6dEI5mclX5za80Y/dCyVCDi1xpq24v8eD/IX+TlLCkY4PwBXEzJPSwjMJW7GzzVze
	5sS5gICA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kpX-00006D-CF; Thu, 22 Aug 2019 11:00:35 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kpN-00005r-0V
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 11:00:26 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 16E60A611E3; Thu, 22 Aug 2019 04:00:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 93335A6115A;
 Thu, 22 Aug 2019 04:00:21 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
References: <87a7c1qxl2.fsf@husum.klickitat.com>
Date: Thu, 22 Aug 2019 04:00:21 -0700
In-Reply-To: <87a7c1qxl2.fsf@husum.klickitat.com> (Russell Senior's message of
 "Thu, 22 Aug 2019 03:54:49 -0700")
Message-ID: <875zmpqxbu.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_040025_093666_0C8DC42D 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH RFC 2/2] amp821xx: use newly added
 pad-squashfs for Meraki MR24
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


Using pad-squashfs ensures that the root.squashfs is assigned sufficient
LEBs on UBI such that all reads of the rootfs succeed, in order to avoid
read failures and kernel panics.

This fixes one such kernel panic observed on Meraki MR24 where an
inopportune-sized unpadded root.squashfs occurred.

Note: ext4-sysupgrade firmware binaries will build with this patch, but
they are as nonsensical as before the patch. Finding a way to disable
ext4 builds for Meraki MR24 is left as a TODO.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 target/linux/apm821xx/image/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
index acfd478755..53192bb448 100644
--- a/target/linux/apm821xx/image/Makefile
+++ b/target/linux/apm821xx/image/Makefile
@@ -133,7 +133,8 @@ define Device/meraki_mr24
   IMAGE_SIZE := 8191k
   KERNEL := kernel-bin | lzma | uImage lzma | MerakiAdd-dtb | MerakiNAND
   KERNEL_INITRAMFS := kernel-bin | lzma | dtb | MuImage-initramfs lzma
-  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  IMAGE/sysupgrade.bin/squashfs := pad-squashfs | sysupgrade-tar | append-metadata
+  IMAGE/sysupgrade.bin/ext4 := sysupgrade-tar | append-metadata
   UBINIZE_OPTS := -E 5
   SUPPORTED_DEVICES += mr24
 endef
-- 
2.23.0


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
