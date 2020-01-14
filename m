Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A36D13B146
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 18:46:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k9RVh/11RqhXKTzgITj/ZJN74u929itj0ldO4XCpVlk=; b=Y9guj/6qS+iYJDWg1Ua7VP07VW
	SVQ5RMCpJEAFxaYXtitCXdVXULXV0mMsnoIrHOs6IE6D3+jdVXzR/TJdpASopLESocnuuk+K132AL
	Qkrw80NviimVGpRs3Vli5tgLX6B132RjEkAwYfyguFxMzZ2gFJ3Ey3wO2Hg+EbpQsOBFlcu90X5iv
	27NZTm4+sg3sJsDlL1jlfk3TmmcrXMMaLHQrq1AFlfpZrmpIi2h6rXGof6d5yde1rXVF/G+1lEQmR
	hKNUKtyAKgtQpO1YXm9YNzWcwqSAo/IIXT6aFMoGXbw4NE9WvvHQPZSggK/GadslswjCEIE13Pni1
	DE9yloew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQH3-0006TH-Nh; Tue, 14 Jan 2020 17:46:41 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQGP-00062k-0w
 for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 17:46:06 +0000
Received: (wp-smtpd smtp.tlen.pl 15951 invoked from network);
 14 Jan 2020 18:45:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1579023957; bh=8y/nzgJTmef4MOXcBVxFf7KLJOHdmFMpZzokkPaIh5o=;
 h=From:To:Subject;
 b=hIHbgYO3PM8eVDVz9octXTKGt81GpQiQJVo1b6rg79TDQ1DOzvme+gAZeba7eYF8l
 9WeO5Z//ghiYzlaZKkZ5PorodMN65WeJCj+OMhviypwyqzO++N54jWnNTD0O6UhnPy
 imIB2TlNUH8zVPIp+YTPubqjo0f4pbIDQAKny0PM=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 14 Jan 2020 18:45:57 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Jan 2020 18:45:44 +0100
Message-Id: <20200114174545.1514-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114174545.1514-1-tomek_n@o2.pl>
References: <20200114174545.1514-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 2b3f0338c2febc5ed9ee3cc69536cbf5
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [0TN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_094601_222008_3027272A 
X-CRM114-Status: UNSURE (   9.48  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v3 2/3] x86: add bootloader upgrade on
 sysupgrade
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

Currently bootloader always stays on the same version as when first
written to boot medium (not true if partition layout changed, which will
trigger sysupgrade process to write full disk image). That creates
inconveniences as it always stays with same features or/and bugs. Users
wishing to add support to additional modules or new version, would need
to write the whole image, potentially destroying previous system
configuration. To fix these, this commit adds additional routine to
sysupgrade which upgrades unconditionally the bootloader to the latest
state provided by OpenWrt.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/grub2/Makefile                   |  5 ++++
 .../x86/base-files/lib/upgrade/platform.sh    | 24 +++++++++++++++++++
 target/linux/x86/image/Makefile               |  7 +++---
 3 files changed, 33 insertions(+), 3 deletions(-)

diff --git a/package/boot/grub2/Makefile b/package/boot/grub2/Makefile
index 1f92ba9250..b26ef64ca4 100644
--- a/package/boot/grub2/Makefile
+++ b/package/boot/grub2/Makefile
@@ -82,6 +82,11 @@ define Host/Configure
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
index 3b6c25877f..8be96dfcd4 100644
--- a/target/linux/x86/base-files/lib/upgrade/platform.sh
+++ b/target/linux/x86/base-files/lib/upgrade/platform.sh
@@ -1,3 +1,5 @@
+RAMFS_COPY_BIN='grub-bios-setup'
+
 platform_check_image() {
 	local diskdev partdev diff
 	[ "$#" -gt 1 ] && return 1
@@ -44,6 +46,26 @@ platform_copy_config() {
 	fi
 }
 
+platform_do_bootloader_upgrade() {
+	local bootpart
+	local diskdev="$1"
+
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
+}
+
 platform_do_upgrade() {
 	local diskdev partdev diff
 
@@ -92,4 +114,6 @@ platform_do_upgrade() {
 	#copy partition uuid
 	echo "Writing new UUID to /dev/$diskdev..."
 	get_image "$@" | dd of="/dev/$diskdev" bs=1 skip=440 count=4 seek=440 conv=fsync
+
+	platform_do_bootloader_upgrade "$diskdev"
 }
diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index 2838b3139c..373f2396b7 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -66,11 +66,11 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
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
 	echo '(hd0) $(BIN_DIR)/$(IMG_COMBINED)-$(1).img' > $(KDIR)/grub2/device.map
 	sed \
 		-e 's#@SERIAL_CONFIG@#$(strip $(GRUB_SERIAL_CONFIG))#g' \
@@ -80,6 +80,7 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 		-e 's#@TITLE@#$(GRUB_TITLE)#g' \
 		./grub.cfg > $(KDIR)/root.grub/boot/grub/grub.cfg
 	-$(CP) $(STAGING_DIR_ROOT)/boot/. $(KDIR)/root.grub/boot/
+	grub-bios-setup -V | cut -d' ' -f3 > $(KDIR)/root.grub/boot/grub/version
 	PADDING="1" SIGNATURE="$(IMG_PART_SIGNATURE)" PATH="$(TARGET_PATH)" $(SCRIPT_DIR)/gen_image_generic.sh \
 		$(BIN_DIR)/$(IMG_COMBINED)-$(1).img \
 		$(CONFIG_TARGET_KERNEL_PARTSIZE) $(KDIR)/root.grub \
@@ -87,7 +88,7 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 		256
 	grub-bios-setup \
 		--device-map="$(KDIR)/grub2/device.map" \
-		-d "$(KDIR)/grub2" \
+		-d "$(KDIR)/root.grub/boot/grub" \
 		-r "hd0,msdos1" \
 		"$(BIN_DIR)/$(IMG_COMBINED)-$(1).img"
   endef
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
