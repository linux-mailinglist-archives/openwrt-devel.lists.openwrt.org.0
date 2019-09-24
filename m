Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB30DBD4F9
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 00:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c7R8pNItiVLZBcV204bOiZhlFd+OeVq2S/jvtwsp49A=; b=CuCXEuTIUEsRml
	9GQv8sHPztcm9GFSkNz+b3dueaIAmuZe3iP89JA02pCCIcokddNTU4LLpeJBMpCCLiwCbknOOrftm
	eESB6mcY9V4k9ki4Wee/CzfTco9fikRPJD7+2STK6oi4Ccdc8BiX4i9DBF6XF7QlhXoqc9qh0aALc
	nBEZJkr32r3GZt5M859IACv7otm1qdQPZIaCZOgmauZGieQwjqcp7rl7g1WsKupVGYdNWHa+2t3Ui
	NTDyjM0xRQp+YzYDX4lrj3DVIoRkRvQB5O5JeX7L7o6JxWDbhkJUQ9/SL0jyIhyJ8g5EV4svW5QCH
	lgQ0yNI3fwWNQz9Bs3tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCtOW-0006m2-Lp; Tue, 24 Sep 2019 22:34:52 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCtOC-0006li-0I
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 22:34:34 +0000
Received: from localhost.localdomain (dhcp-grp2-01.ics.hawaii.edu
 [128.171.10.79]) (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 63D7C200007;
 Tue, 24 Sep 2019 22:34:17 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Sep 2019 12:32:54 -1000
Message-Id: <20190924223254.24160-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_153432_351352_1D38A0F1 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] build: separate signing logic
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

This separates the options for signature creation and verification

* SIGNED_PACKAGES create Packages.sig
* SIGNED_IMAGES add ucert signature to created images
* CHECK_SIGNATURE add verification capabilities to images
* INSTALL_LOCAL_KEY add local key-build to /etc/opkg/keys

Right now the buildbot.git contains some hacks to create images that
have signature verification capabilities while not storing private keys
on buildbot slaves. This commit allows to disable these steps for the
buildbots and only perform signing on the master.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 config/Config-build.in      | 12 ++++++++++--
 include/image-commands.mk   | 13 ++++++++-----
 package/base-files/Makefile | 17 +++++++++--------
 3 files changed, 27 insertions(+), 15 deletions(-)

diff --git a/config/Config-build.in b/config/Config-build.in
index 35341833e3..fd2ae5bbdd 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -30,13 +30,21 @@ menu "Global build settings"
 		  - Enabling per-device rootfs support
 		  ...
 
+	config INSTALL_LOCAL_KEY
+		bool "Install local usign key into image"
+		default n
+
 	config SIGNED_PACKAGES
 		bool "Cryptographically signed package lists"
-		default y
+		default n
+
+	config SIGNED_IMAGES
+		bool "Cryptographically signed firmware images"
+		default n
 
 	config SIGNATURE_CHECK
 		bool "Enable signature checking in opkg"
-		default SIGNED_PACKAGES
+		default y
 
 	comment "General build options"
 
diff --git a/include/image-commands.mk b/include/image-commands.mk
index 1d0aed1918..d4d19a40e1 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -370,11 +370,14 @@ metadata_json = \
 
 define Build/append-metadata
 	$(if $(SUPPORTED_DEVICES),-echo $(call metadata_json,$(SUPPORTED_DEVICES)) | fwtool -I - $@)
-	[ ! -s "$(BUILD_KEY)" -o ! -s "$(BUILD_KEY).ucert" -o ! -s "$@" ] || { \
-		cp "$(BUILD_KEY).ucert" "$@.ucert" ;\
-		usign -S -m "$@" -s "$(BUILD_KEY)" -x "$@.sig" ;\
-		ucert -A -c "$@.ucert" -x "$@.sig" ;\
-		fwtool -S "$@.ucert" "$@" ;\
+	[ -z "$(SIGNED_IMAGES)" \
+		-o ! -s "$(BUILD_KEY)" \
+		-o ! -s "$(BUILD_KEY).ucert" \
+		-o ! -s "$@" ] || { \
+			cp "$(BUILD_KEY).ucert" "$@.ucert" ;\
+			usign -S -m "$@" -s "$(BUILD_KEY)" -x "$@.sig" ;\
+			ucert -A -c "$@.ucert" -x "$@.sig" ;\
+			fwtool -S "$@.ucert" "$@" ;\
 	}
 endef
 
diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index f105d2cd27..588c958f80 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -37,7 +37,7 @@ endif
 define Package/base-files
   SECTION:=base
   CATEGORY:=Base system
-  DEPENDS:=+netifd +libc +procd +jsonfilter +SIGNED_PACKAGES:usign +SIGNED_PACKAGES:openwrt-keyring +NAND_SUPPORT:ubi-utils +fstools +fwtool
+  DEPENDS:=+netifd +libc +procd +jsonfilter +SIGNATURE_CHECK:usign +SIGNATURE_CHECK:openwrt-keyring +NAND_SUPPORT:ubi-utils +fstools +fwtool
   TITLE:=Base filesystem for OpenWrt
   URL:=http://openwrt.org/
   VERSION:=$(PKG_RELEASE)-$(REVISION)
@@ -116,12 +116,6 @@ ifdef CONFIG_SIGNED_PACKAGES
 		$(STAGING_DIR_HOST)/bin/ucert -I -c $(BUILD_KEY).ucert -p $(BUILD_KEY).pub -s $(BUILD_KEY)
 
   endef
-
-  define Package/base-files/install-key
-	mkdir -p $(1)/etc/opkg/keys
-	$(CP) $(BUILD_KEY).pub $(1)/etc/opkg/keys/`$(STAGING_DIR_HOST)/bin/usign -F -p $(BUILD_KEY).pub`
-
-  endef
 endif
 
 ifeq ($(CONFIG_NAND_SUPPORT),)
@@ -130,9 +124,16 @@ ifeq ($(CONFIG_NAND_SUPPORT),)
   endef
 endif
 
+ifdef CONFIG_INSTALL_LOCAL_KEY
+  define Package/base-files/install-local-key
+	mkdir -p $(1)/etc/opkg/keys
+	$(CP) $(BUILD_KEY).pub $(1)/etc/opkg/keys/`$(STAGING_DIR_HOST)/bin/usign \
+		-F -p $(BUILD_KEY).pub`
+endef
+
 define Package/base-files/install
 	$(CP) ./files/* $(1)/
-	$(Package/base-files/install-key)
+	$(Package/base-files/install-local-key)
 	$(Package/base-files/nand-support)
 	if [ -d $(GENERIC_PLATFORM_DIR)/base-files/. ]; then \
 		$(CP) $(GENERIC_PLATFORM_DIR)/base-files/* $(1)/; \
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
