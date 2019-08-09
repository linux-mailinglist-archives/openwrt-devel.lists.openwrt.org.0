Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47124879B2
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 14:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DNzAMQJBcigGWCo2XjQtnDth53cWVcd9xE+Y30/unjk=; b=fw7CQoXFZEZJXl
	a47QTM2BNohWXLjeDECk158+zSO4VsevaqxA8GoDOCjT3t+4kCZI76778JtazzxoA3Gh3YcertHcB
	9yyQJzkAAfrdIsrxqhaFuRO5NQBgxBy4P+mRLHxIiJsxm+8f+x9bvucuiAR+eii4V5hvDyoY+irle
	O2h7N9gLbA5+NeBqYfZLMtcGQs2Z9TJfS/JUToLLOxhz50UfIevQRNhmvZEvCXbhjC8Hksu8v99vM
	PRWUi4tQaoVOo/d4UMgB9AryDDL2Ax90T8afWKMv6WNJ0SOTxEAiW2sCLhAkcnf8tD84TVEa0Zq2I
	Laz017ImX5Qx46sOpKOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3sN-0003WH-AD; Fri, 09 Aug 2019 12:20:07 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3sC-0003Vu-9q
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 12:19:57 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mtf7H-1iAi8r1IVD-00v6Gt for <openwrt-devel@lists.openwrt.org>; Fri, 09
 Aug 2019 14:19:54 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  9 Aug 2019 14:19:51 +0200
Message-Id: <20190809121951.2041-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:6E7AQW/CUthIROKUtz60Pe3zVCBXqVErZiSDpFCHCzozweng06t
 Vz1n1GBOaCw2Om+oFplQYKSuwP4EEFzyOoJXy+QRQnycIEWUwkQav3VaU09lOZBIRlVHNV0
 HZVVZ/O8/tS1z/+uApfE6vlOFMK3tuWuabh7ldT43z0wvQMnJkiFkqGw2Miy81tQ/oBBtzb
 10jfsCETKe+qTErUt+gUA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dFI7PKIO6VY=:mYSCO/o4QRJT+SHVGS1dpf
 ev/jcTMJhsZplxJ8wI2K9gaLuOVBu+XdDmRAJzaF2Ok9PlABBAIy4nj6MrFlQl0DnezF/uPI/
 0WoYRdjwjLaBDio5k68TgUtNcZK+5coCciuzUr196qSZudefeIAhxyHYtnC8eSP/4+/Kq7OBo
 Mb2KwUXseqjUjjXPEz7dntwtgdCzteQyeZtR9OiK0jBQxIq9Qkij1raB2uvPz5YyhBJKZTdDf
 915ugPa2Stb2onZvyvMIrrcts8VFR1DetF6D2ah04Xp4ziHzd2jJDuFNBYGyhzcNaJ4Ye1h9Q
 5RFZ9KFgQj9keMYklI6a/as0p6+jQiQkJCx9/ZNuAh9/Mj+vUACd3+iK7xwpVgLEzMGX04+gi
 QWIBozNZMwKySBhoq3rzEndvaoOnAM+193Aw34+mJ9MPeINXEv6BClSvE4mOBX5ROuEpQvLDp
 zaVF+BCSjgYI2t4ODbkugl+4Kfz8xE6toED2WBxmr/Sl1wyXLc6E0GQGc0rSsrqgiQKvZJk66
 63kpyswQ3Xukxq1WQRCbNq2/W12O2U+YI6scl9esyLniMkm48dSsIzTqtI0Sfwv9F0CgeBhj7
 3y+vmookbVI0lU3IXsd6ex6MPH/JD53i+uVAskMOYZdz1lSbOaZF9RhYgmiiX0wmUfN9utoaL
 Hpkp4hrEjtbegfs1RXdZdDckzCC0wHeAiDjW3Kxybw1kz9ELbnDr7HteHk3+YoTJZ9aqX7pnz
 hMmVd79ASVsSuzHcdJFL6Eap53cZziyZGShd3N8Vtod58wz1YYrqyzYFGjk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_051956_633299_236D47C5 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] ath79: fix whitespace errors from adding
 D-Link DIR-842 C3
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

We completely overlooked whitespace errors when reviewing
796ad2f7ef6f ("ath79: add support for D-Link DIR-842 C3").

Fix them and and also fix Makefile indent for C1/C2.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ath79/base-files/etc/board.d/02_network    |  4 ++--
 .../etc/hotplug.d/firmware/10-ath9k-eeprom     |  2 +-
 .../etc/hotplug.d/firmware/11-ath10k-caldata   |  2 +-
 target/linux/ath79/image/generic.mk            | 18 +++++++++---------
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index dd9fa3c36b..1ed71d1b4d 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -125,7 +125,7 @@ ath79_setup_interfaces()
 	dlink,dir-835-a1|\
 	dlink,dir-842-c1|\
 	dlink,dir-842-c2|\
-        dlink,dir-842-c3|\
+	dlink,dir-842-c3|\
 	dlink,dir-859-a1|\
 	engenius,epg5000|\
 	tplink,archer-c2-v3|\
@@ -319,7 +319,7 @@ ath79_setup_macs()
 		;;
 	dlink,dir-842-c1|\
 	dlink,dir-842-c2|\
-        dlink,dir-842-c3|\
+	dlink,dir-842-c3|\
 	dlink,dir-859-a1|\
 	nec,wg1200cr|\
 	wd,mynet-n750)
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 62d53248bc..ec597dd1d4 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -107,7 +107,7 @@ case "$FIRMWARE" in
 		;;
 	dlink,dir-842-c1|\
 	dlink,dir-842-c2|\
-        dlink,dir-842-c3|\
+	dlink,dir-842-c3|\
 	dlink,dir-859-a1|\
 	nec,wg1200cr|\
 	wd,mynet-n750)
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 501053e9d7..2ec3f3dd11 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -191,7 +191,7 @@ case "$FIRMWARE" in
 	case $board in
 	dlink,dir-842-c1|\
 	dlink,dir-842-c2|\
-        dlink,dir-842-c3|\
+	dlink,dir-842-c3|\
 	nec,wg1200cr)
 		ath10kcal_extract "art" 20480 12064
 		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 41d078d305..4ca8cfde3f 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -408,23 +408,23 @@ define Device/dlink_dir-842-c
 endef
 
 define Device/dlink_dir-842-c1
-	$(Device/dlink_dir-842-c)
-	DEVICE_VARIANT := C1
-	DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  $(Device/dlink_dir-842-c)
+  DEVICE_VARIANT := C1
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
 endef
 TARGET_DEVICES += dlink_dir-842-c1
 
 define Device/dlink_dir-842-c2
-	$(Device/dlink_dir-842-c)
-	DEVICE_VARIANT := C2
-	DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  $(Device/dlink_dir-842-c)
+  DEVICE_VARIANT := C2
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9888-ct
 endef
 TARGET_DEVICES += dlink_dir-842-c2
 
 define Device/dlink_dir-842-c3
-	$(Device/dlink_dir-842-c)
-	DEVICE_VARIANT := C3
-	DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  $(Device/dlink_dir-842-c)
+  DEVICE_VARIANT := C3
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
 endef
 TARGET_DEVICES += dlink_dir-842-c3
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
