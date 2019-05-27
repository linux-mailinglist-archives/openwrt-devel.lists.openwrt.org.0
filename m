Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F7E2B5B2
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 14:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6PjY/JuIa6TNuPEmkevly8UX+MiHkZXAqzdTl+pejys=; b=N+sRYQrQufMbSNXY3oGJR3/eVj
	3Qd3SejskPlMv5LPkivMcZu5BtAspDWKqiLRZGdoA07OMBgsAD1ZPj2e3pQj3TqZhk8BZ8hFiCDvN
	M38DkFdtr5lTAszQJTzoEGqakBRBI2Q5F7ldBwHtamyziIpNFXpGK1P8LtGSv4UJ8Mv8nCbVYJH3s
	LIAamVqy4WyrFIniQZSlQFgYl3zutbBFb22R2EgTl42Ea4JPhFN9ZMm+Yv3f7Psy/1aXkDmqbxO+j
	IRqGdQL23zujDxWC503j6ORAKUg21R6Udt8WBD3FzV5l55+8ptE3vCCrvvPLH4H8w6MvsBphZtQ68
	gL31F59A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVF2A-0004B8-Vd; Mon, 27 May 2019 12:47:22 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVF1X-0003V5-Mg
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 12:46:46 +0000
Received: (wp-smtpd smtp.tlen.pl 15198 invoked from network);
 27 May 2019 14:46:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1558961200; bh=wC7dn7V/J9uxl6ai9+Uh+knwL1fiAMlnIVY9/R7MqaQ=;
 h=From:To:Subject;
 b=dXgsLTQLWY3gnDuMdU8tJV0wAO3A5WLKrWaHCVScmeCOl0XaqTzqWWtnSd3hOgd2D
 2/3SS7hpadngOxIwyVMaho9QF8pjBF4v9gmBS97NWzuGLJDwymE6mHqsM2x/m9UH+y
 RrurdrbRihChrobWAUQgNrpLBqdfEhTjz50pkWpw=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 27 May 2019 14:46:40 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 14:46:29 +0200
Message-Id: <20190527124630.5042-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527124630.5042-1-tomek_n@o2.pl>
References: <20190527124630.5042-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 081ec87a4a8268346f41a0109bdbd45a
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [0fIk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_054644_310608_3ACCFA23 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/3] x86: add bootloader upgrade on
 sysupgrade
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Currently bootloader always stays on the same version as when first
written to boot medium. That creates inconveniences as it always stays
with same features or/and bugs. Users wishing to add support to
additional modules or new version, would need to write the whole image,
potentially destroying previous system configuration. To fix these, this
commit adds additional routine to sysupgrade which upgrades
unconditionally the bootloader to the latest state provided by OpenWrt.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/grub2/Makefile                   |  5 +++++
 .../x86/base-files/lib/upgrade/platform.sh    | 20 ++++++++++++++++++-
 target/linux/x86/image/Makefile               |  7 ++++---
 3 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/package/boot/grub2/Makefile b/package/boot/grub2/Makefile
index d6af65128e..d3a347ce84 100644
--- a/package/boot/grub2/Makefile
+++ b/package/boot/grub2/Makefile
@@ -83,6 +83,11 @@ define Host/Configure
 	$(Host/Configure/Default)
 endef
 
+define Package/grub2/install
+	$(INSTALL_DIR) $(1)/usr/sbin
+	$(INSTALL_BIN) $(PKG_BUILD_DIR)/grub-bios-setup $(1)/usr/sbin/
+endef
+
 define Package/grub2-editenv/install
 	$(INSTALL_DIR) $(1)/usr/sbin
 	$(INSTALL_BIN) $(PKG_BUILD_DIR)/grub-editenv $(1)/usr/sbin/
diff --git a/target/linux/x86/base-files/lib/upgrade/platform.sh b/target/linux/x86/base-files/lib/upgrade/platform.sh
index 439ba8f512..1a42fd3a11 100644
--- a/target/linux/x86/base-files/lib/upgrade/platform.sh
+++ b/target/linux/x86/base-files/lib/upgrade/platform.sh
@@ -1,3 +1,5 @@
+RAMFS_COPY_BIN='grub-bios-setup'
+
 platform_check_image() {
 	local diskdev partdev diff
 	[ "$#" -gt 1 ] && return 1
@@ -45,7 +47,7 @@ platform_copy_config() {
 }
 
 platform_do_upgrade() {
-	local diskdev partdev diff
+	local diskdev partdev diff bootpart
 
 	export_bootdevice && export_partdevice diskdev 0 || {
 		echo "Unable to determine upgrade device"
@@ -92,4 +94,20 @@ platform_do_upgrade() {
 	#copy partition uuid
 	echo "Writing new UUID to /dev/$diskdev..."
 	get_image "$@" | dd of="/dev/$diskdev" bs=1 skip=440 count=4 seek=440 conv=fsync
+
+	#upgrade bootloader
+	if export_partdevice bootpart 1; then
+		mkdir -p /tmp/boot
+		mount -o rw,noatime "/dev/$bootpart" /tmp/boot
+		echo "(hd0) /dev/$diskdev" > /tmp/device.map
+
+		echo "Upgrading bootloader on /dev/$diskdev..."
+		grub-bios-setup \
+			-m "/tmp/device.map" \
+			-d "/tmp/boot/boot/grub" \
+			-r "hd0,msdos1" \
+			"/dev/$diskdev"
+
+		umount /tmp/boot
+	fi
 }
diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index ca5fd72153..7f69f35ae8 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -67,11 +67,11 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 	grub-mkimage \
 		-p /boot/grub \
 		-d $(STAGING_DIR_HOST)/lib/grub/i386-pc \
-		-o $(KDIR)/grub2/core.img \
+		-o $(KDIR)/root.grub/boot/grub/core.img \
 		-O i386-pc \
 		-c ./grub-early.cfg \
 		$(GRUB2_MODULES)
-	$(CP) $(STAGING_DIR_HOST)/lib/grub/i386-pc/*.img $(KDIR)/grub2/
+	$(CP) $(STAGING_DIR_HOST)/lib/grub/i386-pc/*.img $(KDIR)/root.grub/boot/grub/
 	echo '(hd0) $(BIN_DIR)/$(IMG_PREFIX)-combined-$(1).img' > $(KDIR)/grub2/device.map
 	sed \
 		-e 's#@SERIAL_CONFIG@#$(strip $(GRUB_SERIAL_CONFIG))#g' \
@@ -81,6 +81,7 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 		-e 's#@TITLE@#$(GRUB_TITLE)#g' \
 		./grub.cfg > $(KDIR)/root.grub/boot/grub/grub.cfg
 	-$(CP) $(STAGING_DIR_ROOT)/boot/. $(KDIR)/root.grub/boot/
+	grub-bios-setup -V | cut -d' ' -f3 > $(KDIR)/root.grub/boot/grub/version
 	PADDING="$(CONFIG_TARGET_IMAGES_PAD)" SIGNATURE="$(SIGNATURE)" PATH="$(TARGET_PATH)" $(SCRIPT_DIR)/gen_image_generic.sh \
 		$(BIN_DIR)/$(IMG_PREFIX)-combined-$(1).img \
 		$(CONFIG_TARGET_KERNEL_PARTSIZE) $(KDIR)/root.grub \
@@ -88,7 +89,7 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 		256
 	grub-bios-setup \
 		--device-map="$(KDIR)/grub2/device.map" \
-		-d "$(KDIR)/grub2" \
+		-d "$(KDIR)/root.grub/boot/grub" \
 		-r "hd0,msdos1" \
 		"$(BIN_DIR)/$(IMG_PREFIX)-combined-$(1).img"
   endef
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
