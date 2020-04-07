Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D7D1A09F5
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 11:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xiNOKGTeNUjDH+qrbktvYlqGZwHy94TQ0JhKhWJ5PQU=; b=dLAjwGCyM0rMtm
	KQ6DZtZDMVXil2QOl1+dn3j38hUf5TFSxkYP1VuuvN7SDVum5006VGIbgtFrcK/u8tzGbrxzNM8Zw
	arEedQiutBvnEscv0kv7TRbJ8rB+O6UwWO8/WKriSbNLbRXYmInA/bFL3E12ebMf3sNlx+MVxl7NJ
	UD/sRm+f6sOO55LEtWbIEnT+HWRFuJ8eZgyYBuk/EGlc8ahDaeSW7n+zonnlYyoG9oVPbPYKALgly
	2IQOUFTuPwZGmUmngsNFJxfudn46XISKWLVAit5zYOHRRocQjcAhHMxop80tZ+Mpudqp3V/18YAMJ
	z9mYXVs5dmH3NDEX1qsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkQR-0008OS-Cd; Tue, 07 Apr 2020 09:21:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkQL-0008OH-PG
 for openwrt-devel@bombadil.infradead.org; Tue, 07 Apr 2020 09:21:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=ja5qlf9Kl4u3NyY/t5IjeZBrIICZffQlxMMPddEQHFE=; b=cCOgm5iKEbiPKtYt7DmA8NOTkr
 Us5GZjGlq4Pr8Pd1DTc+63UX6RDITXc1cMgVzkAJjtpawGvz/ItkKueQywg9kPDZ2f6y+vjqUbm60
 0zllAgaBYlCV9fpV/GPha/SyiLdiXtwdW2rjvT+X+VLzzQzZ+MUKLaW6ctEf+PJi5PekzSCkSTthx
 YG+DkQv2uBKZfNu6DCMiRSXtiVUqPAxcVaWGwens6bKhN4DgT7bsr9m5Qnff2GAIl/lyu/x4Riloz
 sNXajtSu0hwU/eJPSKoZsMRu9+VcOxmpnLh54TiBVskP+s4PzgamoJk6hIdeBHqIevFpm6KScugpy
 obfw88bQ==;
Received: from mout.kundenserver.de ([212.227.17.24])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkQF-0005WF-An
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 09:21:34 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MYvHa-1jqWqu34lM-00Uqyv for <openwrt-devel@lists.openwrt.org>; Tue, 07
 Apr 2020 11:21:20 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 11:20:20 +0200
Message-Id: <20200407092020.40937-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:om6ydNoeRCUWYgDSxIplsVOJMuxp/44uZ/nbQnuoNXkCF5lNweB
 927nBm89bqEFI5ApcXDbp2g5RtHtXpU1U3eDFjRJAV/hqFEP3MbVL23THWMiWZIWstgZhqa
 rSxJTpQsSTzwLSSNu4dscRkclBCHk6yA/zqdfSWJWxPYdtflVsh2IPW/NL96kd0ZTMOiyxu
 jECpaG7fBKnnyYFWaW5iA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W8hiLDyjYJA=:tfAIHetQLOq6EqAQIL7FAS
 tzgptDwz6aeY1FgfftlUQ6GVqznnCNGPexoQpStLVHgeqTJSJsQMFxrwLrELdTiBCcwcdb8UR
 sNESqwZxXvkydBqP8EjYzG9aF+l115tMfcFpc1baK6pOErvZK2vJEgo3c2cLrzyJpiqW6rHQ5
 2GZw8LYE1TvNbAcTvzTq28lbfcEkewezeEbbSCNxBtZf/zZFDoz4S4zFtpZHJUoxAdJLUMqNx
 GcEvMK+WjrI+8ltcZcJ9K40AJn9jrrOfWWjSDNXN3zRrg1iO5c/BcUnfmaG/2pc3eFp3OGyeH
 sdGoN3zSGlxhMd84mSeqRt+Yo1iiuH2rwMjTn6v9Sjw8Pxh3N4NXwUcyRzK30YwaX6acsnY3+
 r8lvLpTGs+SaFkdTSglQAGOe+HNChDCmScRkYIxePeQbKiSIw2ZKflQQwro6/k8vpE14JbT1S
 wZeNhQumQY7yAlgOUis2fdMNrW9HyiSp7iCIduEujG3491T6rPFqruUsappFAaeT/K/Xv81T9
 pC4SNlE/wIkGplKPnwaXcGG1B7uU/OxHMB03LK93L4ULrF58t0zTx1wdil9wO/0may5OrmLN5
 grC1IoEnj1pGUYlbnXJkWseXlMmTsWR1JlWLJUdVimkjM7dFpROB5DleCYKqXN5p9PXifDZKc
 lbvXwsbHjC/Pysv8gqyWm26CS6xqHT+to51lzvYEx2p8Dix6D39ZCBx+9tiORMTJWYn2P6t6p
 wXMxNJP3nxRi3yXkZqA0C91l3ujB1Vr6mhVsZ35E7BzWhCfuD5NmJQYiw1XHt7mksYv+DS0Zu
 dXzyv2JZNsVYIITYr/ft43hrbdn9u7VCffyxw+7jeo6esNit599C6MX1q+izMbv8mXu1XXG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_102131_700868_C0E7867F 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: tidy up names for Ubiquiti
 devices
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

The "proper" vendor prefix for Ubiquiti is "ubnt", this is used in
all targets except ramips and also recommended by the kernel.

This patch adjusts the various board/image/device name variables
accordingly. Since we touch it anyway, this also adds the space
in "EdgeRouter X" as a hyphen to those variables to really make
them consistent with the model name.

While at it, create a real shared definition for the devices in
image/mt7621.mk instead of deriving one device from another.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../dts/mt7621_ubiquiti_edgerouterx-sfp.dts   | 17 --------------
 .../dts/mt7621_ubiquiti_edgerouterx.dts       |  8 -------
 .../dts/mt7621_ubnt_edgerouter-x-sfp.dts      | 17 ++++++++++++++
 .../ramips/dts/mt7621_ubnt_edgerouter-x.dts   |  8 +++++++
 ...erx.dtsi => mt7621_ubnt_edgerouter-x.dtsi} |  0
 target/linux/ramips/image/mt7621.mk           | 23 +++++++++++--------
 .../mt7621/base-files/etc/board.d/02_network  |  4 ++--
 .../base-files/etc/board.d/03_gpio_switches   |  4 ++--
 .../lib/preinit/07_mt7621_bringup_dsa_master  |  4 ++--
 .../mt7621/base-files/lib/upgrade/platform.sh |  4 ++--
 10 files changed, 46 insertions(+), 43 deletions(-)
 delete mode 100644 target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx-sfp.dts
 delete mode 100644 target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dts
 create mode 100644 target/linux/ramips/dts/mt7621_ubnt_edgerouter-x-sfp.dts
 create mode 100644 target/linux/ramips/dts/mt7621_ubnt_edgerouter-x.dts
 rename target/linux/ramips/dts/{mt7621_ubiquiti_edgerouterx.dtsi => mt7621_ubnt_edgerouter-x.dtsi} (100%)

diff --git a/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx-sfp.dts b/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx-sfp.dts
deleted file mode 100644
index b4deb490ed..0000000000
--- a/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx-sfp.dts
+++ /dev/null
@@ -1,17 +0,0 @@
-/dts-v1/;
-
-#include "mt7621_ubiquiti_edgerouterx.dtsi"
-
-/ {
-	model = "UBNT-ERX-SFP";
-	compatible = "ubiquiti,edgerouterx-sfp", "mediatek,mt7621-soc";
-};
-
-&i2c {
-	status = "okay";
-
-	pca9555@25 {
-		compatible = "nxp,pca9555";
-		reg = <0x25>;
-	};
-};
diff --git a/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dts b/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dts
deleted file mode 100644
index 5c1d9ec887..0000000000
--- a/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dts
+++ /dev/null
@@ -1,8 +0,0 @@
-/dts-v1/;
-
-#include "mt7621_ubiquiti_edgerouterx.dtsi"
-
-/ {
-	model = "UBNT-ERX";
-	compatible = "ubiquiti,edgerouterx", "mediatek,mt7621-soc";
-};
diff --git a/target/linux/ramips/dts/mt7621_ubnt_edgerouter-x-sfp.dts b/target/linux/ramips/dts/mt7621_ubnt_edgerouter-x-sfp.dts
new file mode 100644
index 0000000000..9515f1d8b5
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_ubnt_edgerouter-x-sfp.dts
@@ -0,0 +1,17 @@
+/dts-v1/;
+
+#include "mt7621_ubnt_edgerouter-x.dtsi"
+
+/ {
+	model = "Ubiquiti EdgeRouter X SFP";
+	compatible = "ubnt,edgerouter-x-sfp", "mediatek,mt7621-soc";
+};
+
+&i2c {
+	status = "okay";
+
+	pca9555@25 {
+		compatible = "nxp,pca9555";
+		reg = <0x25>;
+	};
+};
diff --git a/target/linux/ramips/dts/mt7621_ubnt_edgerouter-x.dts b/target/linux/ramips/dts/mt7621_ubnt_edgerouter-x.dts
new file mode 100644
index 0000000000..260baf9cf9
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_ubnt_edgerouter-x.dts
@@ -0,0 +1,8 @@
+/dts-v1/;
+
+#include "mt7621_ubnt_edgerouter-x.dtsi"
+
+/ {
+	model = "Ubiquiti EdgeRouter X";
+	compatible = "ubnt,edgerouter-x", "mediatek,mt7621-soc";
+};
diff --git a/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dtsi b/target/linux/ramips/dts/mt7621_ubnt_edgerouter-x.dtsi
similarity index 100%
rename from target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dtsi
rename to target/linux/ramips/dts/mt7621_ubnt_edgerouter-x.dtsi
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index cdae42f3e4..767ada3f2f 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -768,27 +768,30 @@ define Device/tplink_re650-v1
 endef
 TARGET_DEVICES += tplink_re650-v1
 
-define Device/ubiquiti_edgerouterx
+define Device/ubnt_edgerouter_common
+  DEVICE_VENDOR := Ubiquiti
   IMAGE_SIZE := 256768k
   FILESYSTEMS := squashfs
   KERNEL_SIZE := 3145728
   KERNEL_INITRAMFS := $$(KERNEL) | \
 	ubnt-erx-factory-image $(KDIR)/tmp/$$(KERNEL_INITRAMFS_PREFIX)-factory.tar
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
-  DEVICE_VENDOR := Ubiquiti
+endef
+
+define Device/ubnt_edgerouter-x
+  $(Device/ubnt_edgerouter_common)
   DEVICE_MODEL := EdgeRouter X
-  SUPPORTED_DEVICES += ubnt-erx
+  SUPPORTED_DEVICES += ubnt-erx ubiquiti,edgerouterx
 endef
-TARGET_DEVICES += ubiquiti_edgerouterx
+TARGET_DEVICES += ubnt_edgerouter-x
 
-define Device/ubiquiti_edgerouterx-sfp
-  $(Device/ubiquiti_edgerouterx)
-  DEVICE_VENDOR := Ubiquiti
-  DEVICE_MODEL := EdgeRouter X-SFP
+define Device/ubnt_edgerouter-x-sfp
+  $(Device/ubnt_edgerouter_common)
+  DEVICE_MODEL := EdgeRouter X SFP
   DEVICE_PACKAGES += kmod-i2c-algo-pca kmod-gpio-pca953x
-  SUPPORTED_DEVICES += ubnt-erx-sfp
+  SUPPORTED_DEVICES += ubnt-erx-sfp ubiquiti,edgerouterx-sfp
 endef
-TARGET_DEVICES += ubiquiti_edgerouterx-sfp
+TARGET_DEVICES += ubnt_edgerouter-x-sfp
 
 define Device/ubnt_unifi-nanohd
   DEVICE_VENDOR := Ubiquiti
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index d73305981f..82fcd3d5ce 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -42,8 +42,8 @@ ramips_setup_interfaces()
 	mikrotik,rb750gr3)
 		ucidef_set_interfaces_lan_wan "lan2 lan3 lan4 lan5" "wan"
 		;;
-	ubiquiti,edgerouterx|\
-	ubiquiti,edgerouterx-sfp)
+	ubnt,edgerouter-x|\
+	ubnt,edgerouter-x-sfp)
 		ucidef_set_interface_lan "eth0 eth1 eth2 eth3 eth4"
 		;;
 	*)
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches b/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches
index d3bc85f827..45f0e30be6 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches
@@ -13,10 +13,10 @@ mikrotik,rb750gr3)
 telco-electronics,x1)
 	ucidef_add_gpio_switch "modem_reset" "Modem Reset" "16"
 	;;
-ubiquiti,edgerouterx)
+ubnt,edgerouter-x)
 	ucidef_add_gpio_switch "poe_passthrough" "PoE Passthrough" "0"
 	;;
-ubiquiti,edgerouterx-sfp)
+ubnt,edgerouter-x-sfp)
 	ucidef_add_gpio_switch "poe_power_port0" "PoE Power Port0" "496"
 	ucidef_add_gpio_switch "poe_power_port1" "PoE Power Port1" "497"
 	ucidef_add_gpio_switch "poe_power_port2" "PoE Power Port2" "498"
diff --git a/target/linux/ramips/mt7621/base-files/lib/preinit/07_mt7621_bringup_dsa_master b/target/linux/ramips/mt7621/base-files/lib/preinit/07_mt7621_bringup_dsa_master
index 7a11252168..b8ebcc3f41 100644
--- a/target/linux/ramips/mt7621/base-files/lib/preinit/07_mt7621_bringup_dsa_master
+++ b/target/linux/ramips/mt7621/base-files/lib/preinit/07_mt7621_bringup_dsa_master
@@ -7,8 +7,8 @@ mt7621_bringup_dsa_master() {
     local masterif
 
     case "$board" in
-    ubiquiti,edgerouterx|\
-	ubiquiti,edgerouterx-sfp)
+    ubnt,edgerouter-x|\
+    ubnt,edgerouter-x-sfp)
         masterif="dsa"
         ;;
     *)
diff --git a/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh b/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
index ad10dcbdaa..1e91954f3d 100755
--- a/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
@@ -61,8 +61,8 @@ platform_do_upgrade() {
 		iodata_mstc_upgrade_prepare
 		nand_do_upgrade "$1"
 		;;
-	ubiquiti,edgerouterx|\
-	ubiquiti,edgerouterx-sfp)
+	ubnt,edgerouter-x|\
+	ubnt,edgerouter-x-sfp)
 		platform_upgrade_ubnt_erx "$1"
 		;;
 	*)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
