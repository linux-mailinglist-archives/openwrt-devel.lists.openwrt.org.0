Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02B118CBC4
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 11:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvWwrYauavN9ZcXZt52adNWYvQR/W8cxbzHzzIvitbw=; b=IL/fg1MuWLI5n3
	xGu1bqJVKf6HQYMUlxD/I1gBf9wMDi4iBgXAnTDl6SOMWP2R7yqOMt+ISSMmlFl+D6g1R6iiv2rYk
	KxfI9KUfgmkdYZkOP/2XEi1Lqnhp8eoed48QSP5M1XpTB74dCRu26jdz4OvtLKT/lZN2jg8+knkpp
	MXZia7Rnhlawd+stX1FTfxsX0Lojkq5lpGRwJsdayeBJJPxDbxNy8QTa5JxB1fPpsev6Sl0sqBhDA
	xxaWckf2J7rz7hHhVgTgNaFLyLoM7+Xe77n1PamCgpD+goxbQFXdD1lBlNaWppF+S7FlX4YfwaNjD
	mNGF+Aexyxsh+rfDsSzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFF1p-0003S8-MG; Fri, 20 Mar 2020 10:37:25 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFF1U-0003Jb-Hk
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 10:37:06 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 163AEFF819;
 Fri, 20 Mar 2020 10:36:59 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 00:10:54 -1000
Message-Id: <20200320101059.19793-2-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320101059.19793-1-mail@aparcar.org>
References: <20200320101059.19793-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_033704_853131_251EA80E 
X-CRM114-Status: UNSURE (   6.67  )
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
Subject: [OpenWrt-Devel] [PATCH 1/6] x86/grub2: move grub2 image creation to
 package
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
Cc: Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Let the grub2 package take care of creating installable grub2 images,
this will allow creating grub2 images without first calling x86 image
generation recipe. Also as side effect, since those images are now
shared, it'll reduce the number of calling grub-mkimage.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
[rebase, adjusted commit title]
Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 package/boot/grub2/Makefile                   | 31 +++++++++++++++++++
 .../boot/grub2/files}/grub-early.cfg          |  0
 target/linux/x86/image/Makefile               | 30 +++++-------------
 3 files changed, 39 insertions(+), 22 deletions(-)
 rename {target/linux/x86/image => package/boot/grub2/files}/grub-early.cfg (100%)

diff --git a/package/boot/grub2/Makefile b/package/boot/grub2/Makefile
index b26ef64ca4..980a6e372a 100644
--- a/package/boot/grub2/Makefile
+++ b/package/boot/grub2/Makefile
@@ -82,6 +82,37 @@ define Host/Configure
 	$(Host/Configure/Default)
 endef
 
+define Host/Install
+	$(call Host/Install/Default)
+
+	$(INSTALL_DIR) $(STAGING_DIR_HOST)/lib/grub/grub2-generic
+	$(STAGING_DIR_HOST)/bin/grub-mkimage \
+		-d $(STAGING_DIR_HOST)/lib/grub/i386-pc \
+		-p /boot/grub \
+		-O i386-pc \
+		-c ./files/grub-early.cfg \
+		-o $(STAGING_DIR_HOST)/lib/grub/grub2-generic/core.img \
+		at_keyboard biosdisk boot chain configfile ext2 linux ls part_msdos reboot serial vga
+
+	$(INSTALL_DIR) $(STAGING_DIR_HOST)/lib/grub/grub2-iso
+	$(STAGING_DIR_HOST)/bin/grub-mkimage \
+		-d $(STAGING_DIR_HOST)/lib/grub/i386-pc \
+		-p /boot/grub \
+		-O i386-pc \
+		-c ./files/grub-early.cfg \
+		-o $(STAGING_DIR_HOST)/lib/grub/grub2-iso/eltorito.img \
+		at_keyboard biosdisk boot chain configfile iso9660 linux ls part_msdos reboot serial vga
+
+	$(INSTALL_DIR) $(STAGING_DIR_HOST)/lib/grub/grub2-legacy
+	$(STAGING_DIR_HOST)/bin/grub-mkimage \
+		-d $(STAGING_DIR_HOST)/lib/grub/i386-pc \
+		-p /boot/grub \
+		-O i386-pc \
+		-c ./files/grub-early.cfg \
+		-o $(STAGING_DIR_HOST)/lib/grub/grub2-legacy/core.img \
+		biosdisk boot chain configfile ext2 linux ls part_msdos reboot serial vga
+endef
+
 define Package/grub2/install
 	$(INSTALL_DIR) $(1)/usr/sbin
 	$(INSTALL_BIN) $(PKG_BUILD_DIR)/grub-bios-setup $(1)/usr/sbin/
diff --git a/target/linux/x86/image/grub-early.cfg b/package/boot/grub2/files/grub-early.cfg
similarity index 100%
rename from target/linux/x86/image/grub-early.cfg
rename to package/boot/grub2/files/grub-early.cfg
diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index 373f2396b7..4e090bcf07 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -9,8 +9,7 @@ include $(INCLUDE_DIR)/image.mk
 
 export PATH=$(TARGET_PATH):/sbin
 
-GRUB2_MODULES = biosdisk boot chain configfile ext2 linux ls part_msdos reboot serial test vga
-GRUB2_MODULES_ISO = biosdisk boot chain configfile iso9660 linux ls part_msdos reboot serial test vga
+GRUB2_VARIANT =
 GRUB_TERMINALS =
 GRUB_SERIAL_CONFIG =
 GRUB_TERMINAL_CONFIG =
@@ -19,8 +18,9 @@ GRUB_CONSOLE_CMDLINE =
 USE_ATKBD = generic 64
 
 ifneq ($(strip $(foreach subtarget,$(USE_ATKBD),$(CONFIG_TARGET_x86_$(subtarget)))),)
-  GRUB2_MODULES += at_keyboard
-  GRUB2_MODULES_ISO += at_keyboard
+  GRUB2_VARIANT := generic
+else
+  GRUB2_VARIANT := legacy
 endif
 
 ifneq ($(CONFIG_GRUB_CONSOLE),)
@@ -63,14 +63,9 @@ ifneq ($(CONFIG_GRUB_IMAGES),)
 	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
 	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
 	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
-	grub-mkimage \
-		-p /boot/grub \
-		-d $(STAGING_DIR_HOST)/lib/grub/i386-pc \
-		-o $(KDIR)/root.grub/boot/grub/core.img \
-		-O i386-pc \
-		-c ./grub-early.cfg \
-		$(GRUB2_MODULES)
-	$(CP) $(STAGING_DIR_HOST)/lib/grub/i386-pc/*.img $(KDIR)/root.grub/boot/grub/
+	$(CP) $(STAGING_DIR_HOST)/lib/grub/i386-pc/*.img \
+		$(STAGING_DIR_HOST)/lib/grub/grub2-$(strip $(GRUB2_VARIANT))/core.img \
+		$(KDIR)/grub2/
 	echo '(hd0) $(BIN_DIR)/$(IMG_COMBINED)-$(1).img' > $(KDIR)/grub2/device.map
 	sed \
 		-e 's#@SERIAL_CONFIG@#$(strip $(GRUB_SERIAL_CONFIG))#g' \
@@ -98,16 +93,7 @@ define Image/Build/iso
 	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
 	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
 	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
-	grub-mkimage \
-		-p /boot/grub \
-		-d $(STAGING_DIR_HOST)/lib/grub/i386-pc \
-		-o $(KDIR)/grub2/eltorito.img \
-		-O i386-pc \
-		-c ./grub-early.cfg \
-		$(GRUB2_MODULES_ISO)
-	cat \
-		$(STAGING_DIR_HOST)/lib/grub/i386-pc/cdboot.img \
-		$(KDIR)/grub2/eltorito.img \
+		$(STAGING_DIR_HOST)/lib/grub/grub2-iso/eltorito.img \
 		> $(KDIR)/root.grub/boot/grub/eltorito.img
 	sed \
 		-e 's#@SERIAL_CONFIG@#$(strip $(GRUB_SERIAL_CONFIG))#g' \
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
