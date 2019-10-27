Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A505CE6A34
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 00:31:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f86ncm9UCoqhMfV6h532FvwXGZVnOTkYUWjkhDBsDNg=; b=AQQRo/jub+sebO
	K43+6N3gXkuoZKivTRPyzVrXZvRsXpJUO03io8U/Gutp9rBrLjIXKz4v95AUi+qj1CvvwuEGnpId7
	5QOi1DeiTEbR2LoFMfIe6O1TdcAJ4wwXnd+wOf+v7IagWebfA1AyaI3RUVlA4Q6tMDqUBFl218qGM
	WZMAxHqyG8a2m20r0aNpv61WHEPrwNEhOOFmEDN7MxGuHof8XmufSc111iAQVdAlB9PdNPNKWiCX8
	SIwSzRP7SPR/Axf+B3EsP1/RlBdpBTkNCgytFur9BMiaaZj+bKTKfu1jV5d1rRrlxzHBA3t8pLl3Q
	0YMuSaY7f9pMTJEBaWIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOs01-0002xD-NQ; Sun, 27 Oct 2019 23:31:05 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOrzs-0002wj-U1
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 23:30:58 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N3bb1-1hyN5B2HJL-010eNn for <openwrt-devel@lists.openwrt.org>; Mon, 28
 Oct 2019 00:30:54 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 28 Oct 2019 00:30:51 +0100
Message-Id: <20191027233051.7840-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:rod80UZAvF3yxioAjIuHj6LcSlTu7apWX14esx/G5q4Fn9v2iw5
 ebJ1vQTde/c6HIepJ5Y+P7HesHr92H3iY0AUPuwFBAlIGgFNvV3YA04oWatG/w104LnoGsK
 WFIW178B5xIboSYwXCiO/YAGcnv98dF/iU+3phgt+ytUzXf0j5qbqwF4zimH77eXWAIlwOx
 BOqk94f74eTgDIbL8/7fQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d1aM+MRApFk=:eRkgoQd58zWy22Ljn9iIS1
 HeqWcgB79l/BtcIiulzGuIgQVBHtOGCZ/WlS6U6YUOAtbTv9L568mhIRkDP2GHXdOtCBplKOk
 GM4+2vrHkP65M561sLh+QZQnGJW9IHDSb+DD1pxEDk4awLlU7tJCCqD5NPHHaxnusvjSvZngs
 NfWRpGkPNRcwTgDH+dWyT9rw//U4scdlJx2paZsvu86QjfgsCRNSTdWWkn9nR4zg9xLYpb883
 I+UDdeX7kR8/fugje+jERHEzADuZR+lXyKPw6P1tXd8AJKf9+UjZL+3SutU9WbdWJ2D2P5PCO
 SoTTGvHwBhbSjNi9d4d6AB7Nm63abXM+3yBoQWvRL2FL2aiJN0vzSGxX+UBeBQLi7LWc047/U
 zPxBRXCChfqR3wZsQqz6WLn0pRFPyj2rKTpAGYlJeyJJmFRDazDAKyYyzgHwi8PEGms2IUzW1
 997rOitMI6z51eBhFRnCj4fIpaoOSwVVj6F+sw01bfGn1YToY6i2IrOW4CDwtzXEAojJpJyUg
 d1oASMUizQKsbv15fnA/q4I2xaXFxxQpxxAxrkPmzT7ffACXMoNltupzn+hI4j6ETt7RSZshF
 0lo0G2NkQLF75x5HpnV2oYXpPGlsask+QqVAnS7rxO9d+rKYoySwsBGe/p/uMMmG2KxPJBbkg
 +MCJhdYpPCYxPbuMmKtriCAXxdCXImZyzuQXCw/XiBzhVhclJI5ETDQGEzn92Pk46iou1vUcV
 D64FsGaMfaD+m86IE7RWGF7f9IZm2f+aakOGSSa6Kg0nCZ5dBud9Q7ZgT0KMAeMvpfnSTebYg
 LWJkvednmmcdxVKFgz4Fl3pvBY74fpvKRDnE+RZs27pKao0VPDz5LkOI8xHg+wNwIEVDH9Nso
 ESKB7o09Qpp6WmcB2wVMZICiJkrU8L2/qb2DPC2mM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_163057_264067_6F4787EB 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ath79: fix several issues for ZyXEL
 NBG6716
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
- Add missing DEVICE_MODEL
- Remove k2t.sh include (copy/paste leftover)

Fixes: 99835e09992b ("ath79: add support for ZyXEL NBG6716")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../linux/ath79/dts/qca9558_zyxel_nbg6716.dts | 22 +++++++++----------
 target/linux/ath79/image/nand.mk              | 21 +++++++++---------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  3 +--
 3 files changed, 23 insertions(+), 23 deletions(-)

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
index c11ff6a257..049701a971 100644
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
@@ -62,6 +62,7 @@ TARGET_DEVICES += glinet_gl-ar300m-nand
 define Device/zyxel_nbg6716
   ATH_SOC := qca9558
   DEVICE_VENDOR := ZyXEL
+  DEVICE_MODEL := NBG6716
   DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   RAS_BOARD := NBG6716
   RAS_ROOTFS_SIZE := 29696k
@@ -72,7 +73,7 @@ define Device/zyxel_nbg6716
   KERNEL := kernel-bin | append-dtb | uImage none | \
 	zyxel-buildkerneljffs | check-size 4096k
   IMAGES := sysupgrade.tar sysupgrade-4M-Kernel.bin factory.bin
-  IMAGE/sysupgrade.tar/squashfs := append-rootfs | pad-to $$$${BLOCKSIZE} | sysupgrade-tar rootfs=$$$$@ | append-metadata
+  IMAGE/sysupgrade.tar/squashfs := append-rootfs | pad-to $$$$(BLOCKSIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
   IMAGE/sysupgrade-4M-Kernel.bin/squashfs := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | pad-to 263192576 | gzip
   IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | zyxel-factory
   UBINIZE_OPTS := -E 5
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 75fdd42cdd..433d6475dd 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -3,7 +3,6 @@
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
 . /lib/functions/caldata.sh
-. /lib/functions/k2t.sh
 
 board=$(board_name)
 
@@ -12,7 +11,7 @@ case "$FIRMWARE" in
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
