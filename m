Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA1F11AA92
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 13:16:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O6m0zUls6t6EqPjvPkfSUoFB79EdZhMq/NWlACCPxpk=; b=rb60w2cSgAHaHR
	mcdgs8Q861ihmCHwUWHQaYW4qfuDSmfSQOXXl7PuQv7lKMCcEqazzYAJEb3o+wN0B8pXXHq0fC6H6
	TzyMMAdcfpvY78fOqyqSL+hh5G1tvrW/zDYrkk5KeLJUmEAo0saA9XkSxVKBjfSGJBPSUPP2rSVRB
	f7QkHJdZNv6VB1/DIejyfO64RJYxJ5sAzm40pJOLmGo0EnMUEQH/VtQ0CH+pfUwv/xfuYhSQ73Ucx
	nNAoEm1XVlTY36J+yJqJVPSKgJhQ/+nkqw2xYqGLRWuJxNp1URFulLx5Kx8xyR4jlXiM4qNVASuMK
	OSsUokWvcZuJRoi21Qvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if0ut-0003Q6-5Y; Wed, 11 Dec 2019 12:16:31 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if0uW-0003BP-BA
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 12:16:11 +0000
X-Originating-IP: 77.191.81.254
Received: from tb.localdomain (x4dbf51fe.dyn.telefonica.de [77.191.81.254])
 (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 728E84000D;
 Wed, 11 Dec 2019 12:15:53 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Dec 2019 02:15:47 -1000
Message-Id: <20191211121547.430267-1-mail@aparcar.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_041608_672315_C9C2AFF2 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH v4] This separates the options for signature
 creation and verification
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
v4: replace ifdef with ifneq - Makefile magic
-ifdef CONFIG_SIGNED_PACKAGES
+ifneq ($(CONFIG_SIGNED_PACKAGES),)

 config/Config-build.in      | 12 ++++++++++--
 include/image-commands.mk   | 13 ++++++++-----
 package/base-files/Makefile | 20 +++++++++++---------
 3 files changed, 29 insertions(+), 16 deletions(-)

diff --git a/config/Config-build.in b/config/Config-build.in
index 872e5c12ab..af5de42ac6 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -37,13 +37,21 @@ menu "Global build settings"
 		  - Enabling per-device rootfs support
 		  ...
 
+	config INSTALL_LOCAL_KEY
+		bool "Install local usign key into image"
+		default y if !BUILDBOT
+
 	config SIGNED_PACKAGES
 		bool "Cryptographically signed package lists"
-		default y
+		default y if !BUILDBOT
+
+	config SIGNED_IMAGES
+		bool "Cryptographically signed firmware images"
+		default y if !BUILDBOT
 
 	config SIGNATURE_CHECK
 		bool "Enable signature checking in opkg"
-		default SIGNED_PACKAGES
+		default y
 
 	comment "General build options"
 
diff --git a/include/image-commands.mk b/include/image-commands.mk
index 5dfd6a2c2f..3d10b18bc8 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -373,11 +373,14 @@ metadata_json = \
 
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
index cf5166772d..e95a155124 100644
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
@@ -107,7 +107,7 @@ define Build/Compile/Default
 endef
 Build/Compile = $(Build/Compile/Default)
 
-ifdef CONFIG_SIGNED_PACKAGES
+ifneq ($(CONFIG_SIGNED_PACKAGES),)
   define Build/Configure
 	[ -s $(BUILD_KEY) -a -s $(BUILD_KEY).pub ] || \
 		$(STAGING_DIR_HOST)/bin/usign -G -s $(BUILD_KEY) -p $(BUILD_KEY).pub -c "Local build key"
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
@@ -130,9 +124,17 @@ ifeq ($(CONFIG_NAND_SUPPORT),)
   endef
 endif
 
+ifneq ($(CONFIG_INSTALL_LOCAL_KEY),)
+  define Package/base-files/install-local-key
+	mkdir -p $(1)/etc/opkg/keys
+	$(CP) $(BUILD_KEY).pub $(1)/etc/opkg/keys/`$(STAGING_DIR_HOST)/bin/usign \
+		-F -p $(BUILD_KEY).pub`
+  endef
+endif
+
 define Package/base-files/install
 	$(CP) ./files/* $(1)/
-	$(Package/base-files/install-key)
+	$(Package/base-files/install-local-key)
 	$(Package/base-files/nand-support)
 	if [ -d $(GENERIC_PLATFORM_DIR)/base-files/. ]; then \
 		$(CP) $(GENERIC_PLATFORM_DIR)/base-files/* $(1)/; \
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
