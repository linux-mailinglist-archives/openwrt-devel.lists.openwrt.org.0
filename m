Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E41E69FE
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 23:58:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0zoYJQdSuiaksU1aRJN1EnCNbLNIxfeARfKI2tXg+hI=; b=BGc2KjhyIGw1m1
	/dTn5Vo/4dE/wRVEh+ns+aAaZe3vsZrQWPe5HoAPDpozmdGAdD1SYWKwC9T80ze6svnefUVxlOlyM
	D468abtCSFbVQg1YudCYoUYbDL3Z86tIYN1VGo7NaMle4DTyAiv+Q7V96JEbLbXgB6+REfHOAf6bD
	xvmMsruqYt23uDc1SPM5quEBX59sbPBqOS4c0R8NJtW/eO0JNoZrj0hUl7E2lg7EVs1K1sC4PHkDe
	hG7p852IJq+JLXIFtnOzMB1NGFp6+16vS0JLBmZsAbtjW0NKFwXuYniVcgzF1nFqxkApGcbJZQaT5
	wqLu7uVR18tV1feObYOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOrUR-00073J-U1; Sun, 27 Oct 2019 22:58:27 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOrUM-00072o-RD
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 22:58:24 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M9FSx-1iJ6rb0Jz5-006OAV for <openwrt-devel@lists.openwrt.org>; Sun, 27
 Oct 2019 23:58:20 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 27 Oct 2019 23:58:17 +0100
Message-Id: <20191027225817.6994-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:RGqiZKWBHfuJ7XNeCIqLtJsNEV9pfU/CN2/jIlH2AU6G1MzTYEk
 Zo7Kr2CXjQFYG1kUxvALtLHPxHQSQWODX9Lct7kuGXV/kxa0av7W33wPKRCmnLe2RumyKl1
 ENG0BwAWlqwe1wOpICwbuq24L0JHOcrvp9oiRpDl/UKhHHOzaGC3EEPZDi/8PsPqBNqDi3a
 ssQYBTejNKoBU/Eo1/RTg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ovvmXV2ESjk=:Bmpz1TlU+egSH1BQebq3CO
 WkTpOHL0pWY22GYicB44KMgHjisslvQ+KIqJuTzWpO7P0yGG63Q/1fZJx5e0FbiX6G1Jw3XHm
 C9yu3LSNisOCTwjRErakRJiRNuuDfJAevfc7Wx8ndPYjnmayx8Ot08fHXZEuF2YwTN3NBMuyX
 7mLLMhl2l97FMMJJCEfSStdFiqhfw9h9PS0otNRd4WbZ/2A5zxUC6LtVT43pwSxjIvTQLn8+C
 ZG8C8sku8JDTo1NaMwtze9PdJEWrv7g/UeaeBeZHaOBow3SaDRsmUdt+3hgSttx8SBxCP+7Ho
 LYiHKdErsM6KLc+Yi/5mFFSMT07oosvxDZ24jrVwXHRh+wCW7doh8iPxHmejc0G2Y2AGm9GWa
 0AKAzGne7NdnxBieUH+CHsPzpHDV9xmMkfveno8JN6mZhZq3k/sQqpXtEJ6/JazciPUcEH8sZ
 llVPQy6VbSMM8Ymz0Qz2ZTvsQ5ui9szu2o0ar30TvJa0nMBrnvYtDF98JaLlaqcoKN4B2facp
 aCROimcC2eT8c2lk1Q6PUojjjTjnOc3NwsFAFSsNoDH4Zuk2jgHY6QxprvGZRA4bN6k3m3aom
 jPPaoiebZdM5R9/9iXw7bGU1J6mF5NGBSnRYudsRgpdcMvAXp5VglOKEf7PV2d2U++CJ3TLFM
 G23a3KPTiR6Yy38yWrVodkZe0f5XLe8kXaubeFDVSyRY4K1dLjP0s6om10ZaXUmosybYAV6Sm
 EAFTrj40wtXCLpPgo5QU2wgcJyRzzUuy654tewDUZ1PSvj2pNTJ1p2aNMheeoX2keYLXzyOu1
 QT0MdYoeU5kFydUcbVkih3adiEzXk2xV9PjoftZAp1tvWqeI0ZXGRvXsUEoVMjggG3ksrG3yh
 aF1Fc8GhUZbur/3z71F6XUgN7p6mLOcbXOhFZsxMo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_155823_175495_2EC3DCEE 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: fix several issues for ZyXEL NBG6716
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

This fixes several issues introduced with ZyXEL NBG6716 support:
- Inhomogeneous indent
- Wrong ath10k MAC patching function
- Wrong brackets for pad-to in nand.mk

Fixes: 99835e09992b ("ath79: add support for ZyXEL NBG6716")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../linux/ath79/dts/qca9558_zyxel_nbg6716.dts | 22 +++++++++----------
 target/linux/ath79/image/nand.mk              | 20 ++++++++---------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  2 +-
 3 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
index ea153d9f77..3e373928da 100644
--- a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
+++ b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
@@ -76,21 +76,21 @@
 			debounce-interval = <60>;
 		};
 
-	        wifi_button {
-                        label = "WiFi button";
+		wifi_button {
+			label = "WiFi button";
 			linux,code = <KEY_RFKILL>;
 			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
 			debounce-interval = <60>;
 		};
 
-	        usb1 {
+		usb1 {
 			label = "USB1 eject button";
 			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
 			debounce-interval = <60>;
 		};
 
-	        usb2 {
-                        label = "USB2 eject button";
+		usb2 {
+			label = "USB2 eject button";
 			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
 			debounce-interval = <60>;
 		};
@@ -105,7 +105,7 @@
 };
 
 &gpio {
-	gpio_usb_power {
+	usb_power {
 		gpio-hog;
 		gpios = <16 0>;
 		output-high;
@@ -262,7 +262,7 @@
 };
 
 &pcie1 {
-        status = "okay";
+	status = "okay";
 
 	wifi@0,0 {
 		compatible = "qcom,ath10k";
@@ -272,15 +272,15 @@
 };
 
 &usb_phy0 {
-        status = "okay";
+	status = "okay";
 };
 
 &usb_phy1 {
-        status = "okay";
+	status = "okay";
 };
 
 &usb0 {
-        status = "okay";
+	status = "okay";
 
 	hub_port0: port@1 {
 		reg = <1>;
@@ -290,7 +290,7 @@
 };
 
 &usb1 {
-        status = "okay";
+	status = "okay";
 
 	hub_port1: port@1 {
 		reg = <1>;
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index c11ff6a257..d794c50865 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -1,13 +1,13 @@
 # attention: only zlib compression is allowed for the boot fs
-define  Build/zyxel-buildkerneljffs
-        rm -rf  $(KDIR_TMP)/zyxelnbg6716
-        mkdir -p $(KDIR_TMP)/zyxelnbg6716/image/boot
-        cp $@ $(KDIR_TMP)/zyxelnbg6716/image/boot/vmlinux.lzma.uImage
-        $(STAGING_DIR_HOST)/bin/mkfs.jffs2 \
-                --big-endian --squash-uids -v -e 128KiB -q -f -n -x lzma -x rtime \
-                -o $@ \
-                -d $(KDIR_TMP)/zyxelnbg6716/image
-        rm -rf $(KDIR_TMP)/zyxelnbg6716
+define Build/zyxel-buildkerneljffs
+	rm -rf  $(KDIR_TMP)/zyxelnbg6716
+	mkdir -p $(KDIR_TMP)/zyxelnbg6716/image/boot
+	cp $@ $(KDIR_TMP)/zyxelnbg6716/image/boot/vmlinux.lzma.uImage
+	$(STAGING_DIR_HOST)/bin/mkfs.jffs2 \
+		--big-endian --squash-uids -v -e 128KiB -q -f -n -x lzma -x rtime \
+		-o $@ \
+		-d $(KDIR_TMP)/zyxelnbg6716/image
+	rm -rf $(KDIR_TMP)/zyxelnbg6716
 endef
 
 define Build/zyxel-factory
@@ -72,7 +72,7 @@ define Device/zyxel_nbg6716
   KERNEL := kernel-bin | append-dtb | uImage none | \
 	zyxel-buildkerneljffs | check-size 4096k
   IMAGES := sysupgrade.tar sysupgrade-4M-Kernel.bin factory.bin
-  IMAGE/sysupgrade.tar/squashfs := append-rootfs | pad-to $$$${BLOCKSIZE} | sysupgrade-tar rootfs=$$$$@ | append-metadata
+  IMAGE/sysupgrade.tar/squashfs := append-rootfs | pad-to $$$$(BLOCKSIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
   IMAGE/sysupgrade-4M-Kernel.bin/squashfs := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | pad-to 263192576 | gzip
   IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | zyxel-factory
   UBINIZE_OPTS := -E 5
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 75fdd42cdd..b9b0dfe9ef 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -12,7 +12,7 @@ case "$FIRMWARE" in
 	case $board in
 	zyxel,nbg6716)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
 	esac
 	;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
