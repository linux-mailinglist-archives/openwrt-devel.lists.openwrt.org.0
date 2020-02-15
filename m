Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 255A3160116
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Feb 2020 00:28:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dyb85Df0vPYq0prDuvqbsLYD2PdOg3OcPqkMr+zXxCs=; b=Y1Ltx6VcIWE9m1
	Scz7/HpYCUEjD/rO10Uh5uhGaGmaHxYxKjMycPE/x/pGXdYmHMcnVZXxBErk+RfiyQ+vSkaTaxhtD
	0anjXxbT7hVIeNHPgeRAYSPJ/RMJKXaIsCjlhBDrw+5J/eU0r0PKusHFqFRgC+uEylc86Y+QEXr9P
	hTL8lvuZ456VcQeCXBg3MRn/I5hA8lNyNBwj7CM9A7xgLKWws4LDz45/e/GG4gjVZg/sBgslBRZ10
	qoKOLI8MlaZUQRjaih8y/YDWjlIkjL0vsMfo1m9K+pt695LytHLzKMlBfs4fa81+Qkuv/21N264GQ
	bDL8ats038IapH3Iv4Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j36ri-0005JA-ED; Sat, 15 Feb 2020 23:28:50 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j36rb-0005IR-Ez
 for openwrt-devel@lists.openwrt.org; Sat, 15 Feb 2020 23:28:45 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 2F2DFE0004;
 Sat, 15 Feb 2020 23:28:21 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Feb 2020 13:27:03 -1000
Message-Id: <20200215232702.2778489-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_152843_781222_165E17B6 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] build: refactor JSON info files
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

JSON info files contain machine readable information of built profiles
and resulting images. These files where added via 881ed09ee6e2. They are
useful for firmware wizards and script checking for reproducibility.

Currently all JSON files are stored next to the built images, resulting
in up to 168 individual files for the ath79/generic target.

This PR refactors the JSON creation to store individual files in
$(KDIR)/tmp and create an single overview file called `profiles.json` in
the target dir.

As before, this creation is enabled by default only for the BUILDBOT.

To archive the previous behaviour the option JSON_INDIVIDUAL_JSON_INFO
can be set.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 Makefile                            |  6 ++++++
 config/Config-build.in              | 24 +++++++++++++++++----
 include/image.mk                    |  9 +++++---
 scripts/json_overview_image_info.py | 33 +++++++++++++++++++++++++++++
 4 files changed, 65 insertions(+), 7 deletions(-)
 create mode 100755 scripts/json_overview_image_info.py

diff --git a/Makefile b/Makefile
index 181c33b180..6bc5b487b6 100644
--- a/Makefile
+++ b/Makefile
@@ -96,6 +96,11 @@ buildversion: FORCE
 feedsversion: FORCE
 	$(SCRIPT_DIR)/feeds list -fs > $(BIN_DIR)/feeds.buildinfo
 
+jsonoverviewimageinfo: FORCE
+	INPUT_DIR=$(BUILD_DIR)/linux-$(BOARD)$(if $(SUBTARGET),_$(SUBTARGET))/tmp \
+		TARGET_DIR=$(BIN_DIR) \
+		$(SCRIPT_DIR)/json_overview_image_info.py
+
 diffconfig: FORCE
 	mkdir -p $(BIN_DIR)
 	$(SCRIPT_DIR)/diffconfig.sh > $(BIN_DIR)/config.buildinfo
@@ -108,6 +113,7 @@ prepare: .config $(tools/stamp-compile) $(toolchain/stamp-compile)
 
 world: prepare $(target/stamp-compile) $(package/stamp-compile) $(package/stamp-install) $(target/stamp-install) FORCE
 	$(_SINGLE)$(SUBMAKE) -r package/index
+	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO),$(_SINGLE)$(SUBMAKE) -r jsonoverviewimageinfo)
 	$(_SINGLE)$(SUBMAKE) -r checksum
 
 .PHONY: clean dirclean prereq prepare world package/symlinks package/symlinks-install package/symlinks-clean
diff --git a/config/Config-build.in b/config/Config-build.in
index 59dfaea8bb..6f381eb250 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -7,12 +7,28 @@
 
 menu "Global build settings"
 
-	config JSON_ADD_IMAGE_INFO
-		bool "Create JSON info files per build image"
+	config JSON_OVERVIEW_IMAGE_INFO
+		bool "Create JSON info file overview per target"
 		default BUILDBOT
+		select JSON_CREATE_IMAGE_INFO
 		help
-		  The JSON info files contain information about the device and
-		  build images, stored next to the firmware images.
+		  Create a JSON info file called profiles.json in the target
+		  directory containing machine readable list of built profiles
+		  and resulting images.
+
+	config JSON_INDIVIDUAL_IMAGE_INFO
+		bool "Create individual JSON info files per build profile"
+		default n
+		select JSON_CREATE_IMAGE_INFO
+		help
+		  The JSON info files contain information about built profiles
+		  and resulting images. Activating this option creates a self
+		  containing info file next to the images in the target
+		  directory.
+
+	config JSON_CREATE_IMAGE_INFO
+		bool
+		default n
 
 	config ALL_NONSHARED
 		bool "Select all target specific packages by default"
diff --git a/include/image.mk b/include/image.mk
index fd04d4020b..375d865cd0 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -568,9 +568,9 @@ define Device/Build/image
 
   $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)): $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2))
 	cp $$^ $$@
-	$(if $(CONFIG_JSON_ADD_IMAGE_INFO), \
+	$(if $(CONFIG_JSON_CREATE_IMAGE_INFO), \
 		DEVICE_ID="$(DEVICE_NAME)" \
-		BIN_DIR="$(BIN_DIR)" \
+		BIN_DIR="$(KDIR)/tmp" \
 		IMAGE_NAME="$(IMAGE_NAME)" \
 		IMAGE_TYPE=$(word 1,$(subst ., ,$(2))) \
 		IMAGE_PREFIX="$(IMAGE_PREFIX)" \
@@ -594,6 +594,9 @@ define Device/Build/image
 		SUPPORTED_DEVICES="$(SUPPORTED_DEVICES)" \
 		$(TOPDIR)/scripts/json_add_image_info.py \
 	)
+	$(if $(CONFIG_JSON_INDIVIDUAL_IMAGE_INFO), \
+		cp $(KDIR)/tmp/$(IMAGE_PREFIX).json $(BIN_DIR)/$(IMAGE_PREFIX).json \
+	)
 
 endef
 
@@ -612,7 +615,7 @@ define Device/Build/artifact
 endef
 
 define Device/Build
-  $(shell rm -f $(BIN_DIR)/$(IMG_PREFIX)-$(1).json)
+  $(shell rm -f $(KDIR)/$(IMG_PREFIX)-$(1).json)
 
   $(if $(CONFIG_TARGET_ROOTFS_INITRAMFS),$(call Device/Build/initramfs,$(1)))
   $(call Device/Build/kernel,$(1))
diff --git a/scripts/json_overview_image_info.py b/scripts/json_overview_image_info.py
new file mode 100755
index 0000000000..bba13dd80c
--- /dev/null
+++ b/scripts/json_overview_image_info.py
@@ -0,0 +1,33 @@
+#!/usr/bin/env python3
+
+import json
+from pathlib import Path
+from os import getenv
+
+target_dir = Path(getenv("TARGET_DIR"))
+input_dir = Path(getenv("INPUT_DIR", target_dir))
+
+output_json = {}
+
+assert target_dir, "Target directory required"
+
+for json_file in input_dir.glob("*.json"):
+    profile_info = json.loads(json_file.read_text())
+    if not output_json:
+        output_json = {
+            "metadata_version": 1,
+            "target": profile_info["target"],
+            "version_commit": profile_info["version_commit"],
+            "version_number": profile_info["version_number"],
+            "profiles": {},
+        }
+
+    output_json["profiles"][profile_info["id"]] = {
+        "supported_devices": profile_info["supported_devices"],
+        "images": profile_info["images"],
+        "titles": profile_info["titles"],
+    }
+
+Path(target_dir / "profiles.json").write_text(
+    json.dumps(output_json, sort_keys=True, indent="  ")
+)
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
