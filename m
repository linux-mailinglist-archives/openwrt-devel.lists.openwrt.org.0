Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3803518CBCC
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 11:38:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5x6LQBw2RWU/Vix5qMhL3Dufx2flc+qdqq6zlEPP+lc=; b=ZkPfPHnBMIjCFrM+k3WviiiwS6
	DM96i+Z2weL2BICAhx74LSEOJZCZerxKv2jrKh5Udeya2bv16TMa6rSftwjMfd5Utv7q/O3/CPCLE
	+WeGE6sO3IzR5xlKG8U8WZPxN8WPMq7ER+9EHa4UkFCse/YvMaKcxDug+0hcCS/dn/FKuvDUHV5UP
	HgfUsXm/EfIT5+XpaSBz0q9oJcrQudKD+P3N3YGb6GU4n2HalisTZVz+8Xihccf635Pwpxp/cErGG
	VjhD+SkuWmDiamdLduXPLUla0ez5UOn5APSAaplwQUzV9OQ7+ve4UNpLkI6SlTVZkn20V+9xVajVI
	Yrn3tG3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFF2a-0004Xn-3k; Fri, 20 Mar 2020 10:38:12 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFF1d-0003PW-Dq
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 10:37:15 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B1892FF804;
 Fri, 20 Mar 2020 10:37:10 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 00:10:58 -1000
Message-Id: <20200320101059.19793-6-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320101059.19793-1-mail@aparcar.org>
References: <20200320101059.19793-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_033713_604594_1EEFEF55 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 5/6] x86: allow non gzipped images
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

The previous image generation code would always gzipped images.

This patch changes the behaviour and only compresses images when
selected in menuconfig.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/x86/image/Makefile | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index dfa1742d5a..c01065f8e6 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -95,10 +95,15 @@ endef
 DEVICE_VARS += GRUB2_VARIANT
 define Device/Default
   ARTIFACT/image.iso := grub-config iso | iso
-  IMAGES := combined.img.gz
+  IMAGE/combined.img := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install
   IMAGE/combined.img.gz := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | gzip
   IMAGE/combined.vdi := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | qemu-image vdi
   IMAGE/combined.vmdk := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | qemu-image vmdk
+  ifeq ($(CONFIG_TARGET_IMAGES_GZIP),y)
+    IMAGES := combined.img.gz
+  else
+    IMAGES := combined.img
+  endif
   KERNEL := kernel-bin
   KERNEL_INSTALL := 1
   KERNEL_NAME := bzImage
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
