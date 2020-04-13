Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64951A6528
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 12:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TZEnkdhSsTEoTUs7Fl/6l60Ly3AgyuwXXF1uLtKKVTk=; b=P5uQ8ZmLtfXRK9
	lhULeEnLuavNpWZuM4jw3ORnqAoskbcAaq8wuHytzPms+kqySCBCZcLRl9hM7lg5wSpRoz/9JZEoF
	2PD9Z1v7O3rzLVbI/wL7u6X37EbTvEOuuPkggDLYErjrxbVsH5OM/x4BbyvWME2cdbNyKt1AnAJg9
	MOhp+K0NoEw0UVNVsquLK/g+cMv5kTPJDKPjqIwnTxVmDT4C9yZ15c4G0twSeqh5f0lyq+FpCvV2s
	+P618qhjY81FFIOty0cP+GTba5+lQvUBEydSNl1qUPqLluPwpF54hRxJ8wNbjRvRTyqOAFIt6zrAU
	A8lijLUgzpfY5+RTrYNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNwJS-00021N-4j; Mon, 13 Apr 2020 10:27:34 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNwJL-0001zI-M7
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 10:27:30 +0000
X-QQ-mid: bizesmtp12t1586773622tl0dh369
Received: from glinet.lan (unknown [116.30.123.160])
 by esmtp6.qq.com (ESMTP) with 
 id ; Mon, 13 Apr 2020 18:26:53 +0800 (CST)
X-QQ-SSF: 01100000002000G0CG60000A0000000
X-QQ-FEAT: vjJEMjdVuT3bLXSG9K3GVT3tNd4KDeKF97j0urgjuKUE8mNGiW/QeC2lY/U7s
 sgYzpO/pTEChy3U1fRnQSgZ3OjLElh66l15S1hMtlfiqLr3wVT8Suvnac79Bh7mPyPODwhl
 tKkPOl3gMBsvCrfhzgYfoe5EZkx1cyL8NtNi/6uddCmQFfJKB4a6nU1Yxitufj8JhA0VlKT
 VO0PDiNN63RZSoAuuhqnNumCIOaBwz9wq3TsC50LFYoLBlFu7xFqDygcsGttoT4J7bEL36t
 mSoG1Sq4CpFCLTobVQFncjRFLD6nKxtZl8NMqJVrwrXjT1Tyy9/8KfyDDPuRhwAj6pjtiXi
 rq3Dpw5RnqZX1tJiEubEYEDPI9wRw==
X-QQ-GoodBg: 0
From: Li Zhang <li.zhang@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 18:26:51 +0800
Message-Id: <1586773611-27431-1-git-send-email-li.zhang@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_032727_856349_6BBB4089 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mvebu: add support for GL.iNet GL-MV1000
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
Cc: Li Zhang <li.zhang@gl-inet.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds supports for GL-MV1000.

Specification:
	- SOC: Marvell Armada 88F3720 (1GHz)
	- Flash: 16MB (W25Q128FWSIG)
	- RAM: 1GB DDR4
	- Ethernet: 3x GE (1 WAN + 2 LAN)
	- EMMC: 8GB EMMC (KLM8G1GETF-B041)
	- MicroSD: 1x microSD slot
	- USB: 1x USB 2.0 port(TypeA),1x USB 3.0 port(TypeC)
	- Button: 1x reset button,1x slide switch
	- LED: 3x greed LED
	- UART: 1x UART on PCB (JP1: 3.3V, RX, TX, GND)

Signed-off-by: Li Zhang <li.zhang@gl-inet.com>
---
 package/boot/uboot-envtools/files/mvebu            |  3 +
 .../cortexa53/base-files/etc/board.d/02_network    |  3 +-
 .../boot/dts/marvell/armada-gl-mv1000-emmc.dts     | 68 ++++++++++++++++++++++
 target/linux/mvebu/image/Makefile                  |  9 +++
 target/linux/mvebu/image/cortexa53.mk              |  9 +++
 target/linux/mvebu/image/gen_mvebu_sdcard_img.sh   |  6 ++
 .../mvebu/image/generic-arm64-emmc.bootscript      | 12 ++++
 7 files changed, 109 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts
 create mode 100644 target/linux/mvebu/image/generic-arm64-emmc.bootscript

diff --git a/package/boot/uboot-envtools/files/mvebu b/package/boot/uboot-envtools/files/mvebu
index 7902384..9d23c77 100644
--- a/package/boot/uboot-envtools/files/mvebu
+++ b/package/boot/uboot-envtools/files/mvebu
@@ -24,6 +24,9 @@ globalscale,espressobin-v7-emmc|\
 marvell,armada8040-mcbin)
 	ubootenv_add_uci_config "/dev/mtd0" "0x3f0000" "0x10000" "0x10000" "1"
 	;;
+glinet,gl-mv1000-emmc)
+	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x8000" "0x8000" "1"
+	;;
 linksys,caiman|\
 linksys,cobra|\
 linksys,shelby)
diff --git a/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network b/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network
index ba4b930..e5ff667 100755
--- a/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network
+++ b/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network
@@ -14,7 +14,8 @@ case "$board" in
 globalscale,espressobin|\
 globalscale,espressobin-emmc|\
 globalscale,espressobin-v7|\
-globalscale,espressobin-v7-emmc)
+globalscale,espressobin-v7-emmc|\
+glinet,gl-mv1000-emmc)
 	ucidef_set_interfaces_lan_wan "lan0 lan1" "wan"
 	;;
 marvell,armada-3720-db|\
diff --git a/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts b/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts
new file mode 100644
index 0000000..fe01dfe
--- /dev/null
+++ b/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts
@@ -0,0 +1,68 @@
+/*
+ * Device Tree file for GL.iNet GL-MV1000
+ */
+
+#include "armada-3720-espressobin.dts"
+
+/ {
+       model = "GL.inet GL-MV1000 (Marvell)";
+       compatible = "glinet,gl-mv1000-emmc";
+};
+
+&spi0 {
+        status = "okay";
+
+        flash@0 {
+                reg = <0>;
+                compatible = "jedec,spi-nor";
+                spi-max-frequency = <104000000>;
+                m25p,fast-read;
+                partitions {
+                        compatible = "fixed-partitions";
+                        #address-cells = <1>;
+                        #size-cells = <1>;
+
+                        partition@0 {
+                                label = "u-boot";
+                                reg = <0 0xf0000>;
+                        };
+
+                        partition@f0000 {
+                                label = "u-boot-env";
+                                reg = <0Xf0000 0x8000>;
+                        };
+
+                        art: partition@f8000 {
+                                label = "art";
+                                reg = <0xf8000 0x8000>;
+                        };
+
+               };
+        };
+};
+
+&sdhci1 {
+        wp-inverted;
+        bus-width = <4>;
+        cd-gpios = <&gpionb 17 GPIO_ACTIVE_LOW>;
+        marvell,pad-type = "sd";
+        no-1-8-v;
+        vqmmc-supply = <&vcc_sd_reg1>;
+        status = "okay";
+};
+
+
+&sdhci0 {
+        bus-width = <8>;
+        mmc-ddr-1_8v;
+        mmc-hs400-1_8v;
+        non-removable;
+        no-sd;
+        no-sdio;
+        marvell,pad-type = "fixed-1-8v";
+        status = "okay";
+};
+
+&eth0 {
+	mtd-mac-address = <&art 0x0>;
+};
diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index ef92748..b848049 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -107,6 +107,15 @@ define Device/Default-arm64
   KERNEL := kernel-bin
 endef
 
+define Device/Default-arm64-emmc
+  BOOT_SCRIPT := generic-arm64-emmc
+  DEVICE_DTS_DIR := $(DTS_DIR)/marvell
+  IMAGES := emmc.img
+  IMAGE/emmc.img := boot-scr | boot-img-ext4 | sdcard-img-ext4 | append-metadata
+  KERNEL_NAME := Image
+  KERNEL := kernel-bin
+endef
+
 define Device/NAND-128K
   BLOCKSIZE := 128k
   PAGESIZE := 2048
diff --git a/target/linux/mvebu/image/cortexa53.mk b/target/linux/mvebu/image/cortexa53.mk
index 77f5c79..4dfd0b4 100644
--- a/target/linux/mvebu/image/cortexa53.mk
+++ b/target/linux/mvebu/image/cortexa53.mk
@@ -69,3 +69,12 @@ define Device/methode_udpu
   BOOT_SCRIPT := udpu
 endef
 TARGET_DEVICES += methode_udpu
+
+define Device/glinet_gl-mv1000-emmc
+  $(call Device/Default-arm64-emmc)
+  DEVICE_TITLE := GL.iNet GL-MV1000 EMMC
+  DEVICE_DTS := armada-gl-mv1000-emmc
+  SUPPORTED_DEVICES := glinet,gl-mv1000-emmc
+endef
+TARGET_DEVICES += glinet_gl-mv1000-emmc
+
diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
index 842e591..50028fe 100755
--- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
+++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
@@ -51,6 +51,12 @@ while [ "$#" -ge 3 ]; do
 	shift; shift; shift
 done
 
+model=''
+model=$(echo $OUTFILE | grep "gl-mv1000-emmc")
+[ "$model" != "" ] && {
+	ptgen_args="$ptgen_args -t 83 -p 7093504"
+}
+
 head=16
 sect=63
 
diff --git a/target/linux/mvebu/image/generic-arm64-emmc.bootscript b/target/linux/mvebu/image/generic-arm64-emmc.bootscript
new file mode 100644
index 0000000..4de4d39
--- /dev/null
+++ b/target/linux/mvebu/image/generic-arm64-emmc.bootscript
@@ -0,0 +1,12 @@
+setenv bootargs "root=/dev/mmcblk0p2 rw rootwait"
+
+if test -n "${console}"; then
+	setenv bootargs "${bootargs} ${console}"
+fi
+
+setenv mmcdev 0
+
+load mmc ${mmcdev}:1 ${fdt_addr} @DTB@.dtb
+load mmc ${mmcdev}:1 ${kernel_addr} Image
+
+booti ${kernel_addr} - ${fdt_addr}
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
