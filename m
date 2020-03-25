Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801D0193117
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 20:25:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+oGUogP+WcPiYFtofTz7c9dZR5oreL1eiOJb+JD1n1Q=; b=mkpVFaY7X59RkF
	Oai6/9MkOt4N/K9gpqm23X7dvfMd2KjUJYj52kfUsXAYZm0EMJog2InVzpK3c6IAF3F6ESGUurIWa
	PiB/go4bqN16HjzTgW66FezLHXL9O27xHoTdVQvQwRwbIzTCoJasgpMV2hZ+SUNI+UUbCzhEIMcuV
	Kg2nFIC86B0SPFwbEzumzue8RSKsjmPGGhuI/BvhUQbamocCy2Y8/okROcfkXUFajvX+JLIzImmS3
	D2svp0ffNGzWx+7f1wY+ZRv9qghTdXu6NyiqhAsG0WSbA5VAeU0tmaRzs1N2eP8NtzX5SDMwpufqI
	yB57HYXJJpg3UViJeueA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHBec-0007uX-2m; Wed, 25 Mar 2020 19:25:30 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHBeT-0007u5-K0
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 19:25:23 +0000
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 01551200003;
 Wed, 25 Mar 2020 19:25:16 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 09:25:10 -1000
Message-Id: <20200325192510.358091-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_122521_791083_D6251DBD 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] x86: fix offer f2fs/ext4 based overlays
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

With the recent rework of the x86 image creation the f2fs/ext4 based
overlays dissappeared as their are not copied by default.

This patch enables the creation of rootfs files for ext4 and squashfs
and stores it next to the combined images.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
v2:
  * Use generic image code instead of malta/armvirt workaround.

 target/linux/x86/image/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index c29eef9c7a..c0c5c8323a 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -99,10 +99,12 @@ define Device/Default
   IMAGE/combined.img.gz := grub-config pc | combined | grub-install | gzip
   IMAGE/combined.vdi := grub-config pc | combined | grub-install | qemu-image vdi
   IMAGE/combined.vmdk := grub-config pc | combined | grub-install | qemu-image vmdk
+  IMAGE/rootfs.img := append-rootfs
+  IMAGE/rootfs.img.gz := append-rootfs | gzip
   ifeq ($(CONFIG_TARGET_IMAGES_GZIP),y)
-    IMAGES := combined.img.gz
+    IMAGES := combined.img.gz rootfs.img.gz
   else
-    IMAGES := combined.img
+    IMAGES := combined.img rootfs.img
   endif
   KERNEL := kernel-bin
   KERNEL_INSTALL := 1
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
