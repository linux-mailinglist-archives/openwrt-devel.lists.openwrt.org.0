Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49988192196
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 08:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7bsxSdmZ9ugRKCIMDdjVMaNO2kTKdxEO57YZvlil7n0=; b=r9KWvSYFrVu3bz
	PPQEtI7z3FWF7DYQjS4VyLv4egz8gMMPCsCpC8y86PjNlGnt7gUFuMK+3Nqlpvw31rb6cDwZ3/e8+
	Ind1yhv+e0zUIs1J0iLLnpLQltSFR7yFF/0FsMPmV/MEJp1tej5kyO8dkMJpHLm4oUtJLw/noEPF+
	u9l+gJF3vkaSjENghKgJOhXjxDepuKEdxp7XH40SEDthWK8LHuA+hC5cnnlqJ2S7mSKu65/DZk4H+
	HiVlY2ZVNoSR5vFExO1SMhImLJweXYcMtZbGk358QOAEAK8iafT+vMy/ggjYe+PIANfWAQsduxcaa
	wUwdr/T+uzuoN4N0V/zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH08x-0004Gn-Iy; Wed, 25 Mar 2020 07:08:03 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH08t-0004GW-Gl
 for openwrt-devel@bombadil.infradead.org; Wed, 25 Mar 2020 07:07:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=l96CvWRo2ufyGqK05h5bxebzqC432ZYiNHc7yVJAtTk=; b=QhSntSeAcZhb0qJxNCkoL9iYFv
 VzgP8rHQioLYKKiHdtsyq5QOq8psLw86Y3eaW6axtiiyyHzjRzTY5FkAmXHHDBf2pzlhrcF1TqwlW
 D6FhEDrIH2GwRR48Tbpt4PiD2rZr5DLH9zJbJ4+PE/A0L+kHnnxAJ+Oeq466Nuqxt+tFX9s42olOv
 rGXxCUqVDxDOl2H4WL1o4qwmnG2yqEl8xuSY9esmf3SCe9Oy8Qfns4Nz3N5HNgjiZ9dNH9twmJM5N
 ZUSGJj/TAh5Zabw333oHtAhhtFsFcpNurORzS4FRtbY5C4FL8xJ1oHnWvpZbN7rjNdA8bluXzeNdi
 Bd5jR79A==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH08q-00062u-2E
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 07:07:57 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D13DCC000B;
 Wed, 25 Mar 2020 07:07:20 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 21:06:57 -1000
Message-Id: <20200325070657.528739-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] x86: fix virutalbox squashfs images
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
Cc: russell@personaltelco.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The previous rework of x86 image creation broke the `vdi` images. ussell
Senior <russell@personaltelco.net> came up with this patch to fix the
padding.

Tested with x86/64 with Docker (squashfs), qemustart (ext4/squashfs) and
virtualbox (ext4/squashfs).

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/x86/image/Makefile | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index 81a8f73efc..6d12494f54 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -47,7 +47,7 @@ BOOTOPTS:=$(call qstrip,$(CONFIG_GRUB_BOOTOPTS))
 define Build/combined
 	$(CP) $(KDIR)/$(KERNEL_NAME) $@.boot/boot/vmlinuz
 	-$(CP) $(STAGING_DIR_ROOT)/boot/. $@.boot/boot/
-	PADDING="$(CONFIG_TARGET_IMAGES_PAD)" SIGNATURE="$(IMG_PART_SIGNATURE)" $(SCRIPT_DIR)/gen_image_generic.sh \
+	PADDING="1" SIGNATURE="$(IMG_PART_SIGNATURE)" $(SCRIPT_DIR)/gen_image_generic.sh \
 		$@ \
 		$(CONFIG_TARGET_KERNEL_PARTSIZE) $@.boot \
 		$(CONFIG_TARGET_ROOTFS_PARTSIZE) $(IMAGE_ROOTFS) \
@@ -95,10 +95,10 @@ endef
 DEVICE_VARS += GRUB2_VARIANT
 define Device/Default
   ARTIFACT/image.iso := grub-config iso | iso
-  IMAGE/combined.img := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install
-  IMAGE/combined.img.gz := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | gzip
-  IMAGE/combined.vdi := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | qemu-image vdi
-  IMAGE/combined.vmdk := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | qemu-image vmdk
+  IMAGE/combined.img := grub-config pc | combined | grub-install
+  IMAGE/combined.img.gz := grub-config pc | combined | grub-install | gzip
+  IMAGE/combined.vdi := grub-config pc | combined | grub-install | qemu-image vdi
+  IMAGE/combined.vmdk := grub-config pc | combined | grub-install | qemu-image vmdk
   ifeq ($(CONFIG_TARGET_IMAGES_GZIP),y)
     IMAGES := combined.img.gz
   else
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
