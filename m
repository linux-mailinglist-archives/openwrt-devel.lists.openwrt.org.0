Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400F118CBCB
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 11:38:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0F9zDcFU17og1d9Bh61vmwr/vXsc3oui8x1wivci3ss=; b=ImtvxbxOx0cIoFoos6UA6oaeVr
	waLgYmMKDQTQCFm7Dr3BNA8MqInn+MjtOCVR4/SAhuK7haE9482mxBCyURBr7mZgXOjnf4OlKJjh9
	PbHnh8TheToVx+zFpJNo2EFUGPfP0K0HiVwyojYEqN9P3oGvFI9LajCHYnUk1/its7Kxp2XzLUZrQ
	p+BqBTGUZPWbZ+h0eiENUwpD5uDqNaSkKmlfYN+21UvWpoMjEWleFN1o6uyGAjutpjKfa0wPJgRsN
	BktEDCyZ2DZYzUyQaRhmvphNMOOE5TupgJKQaJ6mxAmMtIwcD6bvMy0spouf57VC4Nemk8dssQbAQ
	7ia9ehpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFF2P-0004Hl-Uw; Fri, 20 Mar 2020 10:38:01 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFF1b-0003NE-E6
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 10:37:13 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C85FAFF814;
 Fri, 20 Mar 2020 10:37:08 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 00:10:57 -1000
Message-Id: <20200320101059.19793-5-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320101059.19793-1-mail@aparcar.org>
References: <20200320101059.19793-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_033711_614473_B428A294 
X-CRM114-Status: UNSURE (   6.35  )
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
Subject: [OpenWrt-Devel] [PATCH 4/6] x86: use qemu-image command from
 image-commands.mk
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

The `qemu-image` command converts images to the specified type and
reduces redundant code.

Adaption from Alexander Couzens <lynxis@fe80.eu> work[0].

[0]: https://git.openwrt.org/?p=openwrt/staging/lynxis.git;a=blob;f=target/linux/x86/image/Makefile;h=83b8140b7aefbe708fd09c9c61827e7e39bda8b4;hb=416cccf398e9589e3de386e05b61b1c46cace20d#l51

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 include/image-commands.mk       |  7 +++++++
 target/linux/x86/image/Makefile | 14 ++------------
 2 files changed, 9 insertions(+), 12 deletions(-)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 37cb083bbf..2ec1922044 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -414,3 +414,10 @@ define Build/kernel2minor
 	kernel2minor -k $@ -r $@.new $(1)
 	mv $@.new $@
 endef
+
+# Convert a raw image into a $1 type image.
+# E.g. | qemu-image vdi
+define Build/qemu-image
+	qemu-img convert -f raw -O $1 $@ $@.new
+	@mv $@.new $@
+endef
diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index 494a190b86..dfa1742d5a 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -92,23 +92,13 @@ define Build/iso
 		-o $@ $@.boot $(TARGET_DIR)
 endef
 
-define Build/vdi
-	qemu-img convert -f raw -O vdi $@ $@.new
-	@mv $@.new $@
-endef
-
-define Build/vmdk
-	qemu-img convert -f raw -O vmdk $@ $@.new
-	@mv $@.new $@
-endef
-
 DEVICE_VARS += GRUB2_VARIANT
 define Device/Default
   ARTIFACT/image.iso := grub-config iso | iso
   IMAGES := combined.img.gz
   IMAGE/combined.img.gz := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | gzip
-  IMAGE/combined.vdi := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | vdi
-  IMAGE/combined.vmdk := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | vmdk
+  IMAGE/combined.vdi := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | qemu-image vdi
+  IMAGE/combined.vmdk := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | qemu-image vmdk
   KERNEL := kernel-bin
   KERNEL_INSTALL := 1
   KERNEL_NAME := bzImage
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
