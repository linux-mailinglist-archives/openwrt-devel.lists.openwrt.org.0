Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B95C21A4E31
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 07:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=QMYCaRjkUAO1bgYXGh9sQyf7A8zS3/k/3sqS7IogFv0=; b=Yj/w9yuXntYPo8
	zYYurr6375sCqc0AtQ7zWLKpx/CpBnvMDRmS1OzFA6E0Pmy+eZpHS1749m+eNxB/+v86DwYbwfYro
	dTSE2ElVCqKiG1Ev2xKR0hAfrpP53AGIQ93BRm878ptutCE9kXKOwFdoXxkI5mx5oNqz1aedegTge
	6jKN6xJ5D3eGLRmbV4W5rnwxxAYZUlzTgCujOMw0qw8Djf+YaFjvXN5g6tdv6ffPmWXePjpj9iWfv
	/rVWqMC5XA2WUIALjhCD3F9aHKecWpbP91LS+5RsTjGFJgKXoFv6iUiiijm962DNyzA2RiCsQ+M48
	lN9yH96Kg/g6wbqQPkaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN8Vx-0006LF-4B; Sat, 11 Apr 2020 05:17:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN8Vt-0006L8-4Q
 for openwrt-devel@bombadil.infradead.org; Sat, 11 Apr 2020 05:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:To:From:Subject:Cc:Date:
 In-Reply-To:Content-Type:Content-Transfer-Encoding:Sender:Reply-To:
 MIME-Version:Content-ID:Content-Description:References;
 bh=7PodHeOIr36nL0NiGtYpl9kEzAHf8qIjMQUxtE0SvA0=; b=ioDWmtDa8w5d5d/ut0prOen5xv
 xMW5xrorIc4U7zx7JH467lddlz96Msl6Th8G+bYMRuVF8VQHcyJ/hLn6kt0DvBoWpszExP4GyLF8J
 wWosz5PSoiZ0LK9lLjdaCIqbEseuG2T5nOLUzdDTorMbsuO1PTyQuIW02v+vkLlPoipV7IRDUGYdg
 zKvDPzRHfzmy+MfBXtVOaTuTznWcGNmkyrljZ1qGCvGfvwbC2Bvo8WBHlpsCOASYyvPtRuloj/DFP
 27NK2tQ6itAkD1dIGWIJnlrltzxDxeMY+Q5QuvrgrOGP4MfUAkJlD4a3g25UVfePkzjv+4MBsOCST
 hRwGuQlw==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN8Vp-0002Zq-3G
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 05:17:03 +0000
Received: from localhost (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id AF0AF200002;
 Sat, 11 Apr 2020 05:16:16 +0000 (UTC)
In-Reply-To: <1586578695-23145-1-git-send-email-li.zhang@gl-inet.com>
Date: Fri, 10 Apr 2020 19:09:59 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: "Li Zhang" <li.zhang@gl-inet.com>, <openwrt-devel@lists.openwrt.org>
Message-Id: <C1Y4B4LUCQ2B.FP7OUTJB6070@tb>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: add support for GL.iNet GL-MV1000
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

Hi Li Zhang,

thank you very much for the contribution! Please stick to the device
tree naming schema of `manufacture,model` when adding devices to
OpenWrt. In this case the device should be called `glinet,gl-vm1000`
instead of just `gl-mv1000`.

For the device profile (inline commented below), please replace the `,`
with a `_`.

On Sat Apr 11, 2020 at 2:18 AM PST, Li Zhang wrote:
> This patch adds supports for GL-MV1000.
>
> Specification:
> - SOC: Marvell Armada 88F3720 (1GHz)
> - Flash: 16MB
> - RAM: 1GB DDR4
> - Ethernet: 3x GE (1 WAN + 2 LAN)
> - EMMC: 8GB EMMC
> - MicroSD: 1x microSD slot
> - USB: 1x USB 2.0 port;1x USB 3.0 port(typec)
> - Button: 1x reset button
> - LED: 16x LEDs (3x GPIO controllable)
> - UART: 1x UART on PCB (JP1: 3.3V, RX, TX, GND)
>
> Signed-off-by: Li Zhang <li.zhang@gl-inet.com>
> ---
> package/boot/uboot-envtools/files/mvebu | 3 +
> .../linux/mvebu/base-files/etc/board.d/02_network | 3 +-
> .../linux/mvebu/base-files/lib/upgrade/platform.sh | 19 ++++++
> .../boot/dts/marvell/armada-gl-mv1000-emmc.dts | 68 +++++++++++++++++++
> .../arm64/boot/dts/marvell/armada-gl-mv1000.dts | 77
> ++++++++++++++++++++++
> target/linux/mvebu/image/Makefile | 15 +++++
> target/linux/mvebu/image/gen_mvebu_sdcard_img.sh | 6 ++
> .../mvebu/image/generic-arm64-emmc.bootscript | 12 ++++
> target/linux/mvebu/image/gl-mv1000.mk | 27 ++++++++
> 9 files changed, 229 insertions(+), 1 deletion(-)
> create mode 100644
> target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts
> create mode 100644
> target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts
> create mode 100644
> target/linux/mvebu/image/generic-arm64-emmc.bootscript
> create mode 100644 target/linux/mvebu/image/gl-mv1000.mk
>
> diff --git a/package/boot/uboot-envtools/files/mvebu
> b/package/boot/uboot-envtools/files/mvebu
> index c2e746d..d37c000 100644
> --- a/package/boot/uboot-envtools/files/mvebu
> +++ b/package/boot/uboot-envtools/files/mvebu
> @@ -24,6 +24,9 @@ globalscale,espressobin-v7-emmc|\
> marvell,armada8040-mcbin)
> ubootenv_add_uci_config "/dev/mtd0" "0x3f0000" "0x10000" "0x10000" "1"
> ;;
> +gl-mv1000)

Please call your device within OpenWrt `glinet,gl-mv1000`.

> + ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x8000" "0x8000" "1"
> + ;;
> linksys,caiman|\
> linksys,cobra|\
> linksys,shelby)
> diff --git a/target/linux/mvebu/base-files/etc/board.d/02_network
> b/target/linux/mvebu/base-files/etc/board.d/02_network
> index 0881910..65f13f1 100755
> --- a/target/linux/mvebu/base-files/etc/board.d/02_network
> +++ b/target/linux/mvebu/base-files/etc/board.d/02_network
> @@ -18,7 +18,8 @@ cznic,turris-omnia)
> globalscale,espressobin|\
> globalscale,espressobin-emmc|\
> globalscale,espressobin-v7|\
> -globalscale,espressobin-v7-emmc)
> +globalscale,espressobin-v7-emmc|\
> +gl-mv1000)
> ucidef_set_interfaces_lan_wan "lan0 lan1" "wan"
> ;;
> linksys,caiman|\
> diff --git a/target/linux/mvebu/base-files/lib/upgrade/platform.sh
> b/target/linux/mvebu/base-files/lib/upgrade/platform.sh
> index 58e7d83..840eb9c 100755
> --- a/target/linux/mvebu/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/mvebu/base-files/lib/upgrade/platform.sh
> @@ -19,6 +19,19 @@ platform_check_image() {
> esac
> }
>  
> +platform_do_upgrade_mv1000(){
> + local firmware=`fw_printenv firmware | awk -F '=' '{print $2}'`
> +
> + case "$firmware" in
> + gl-mv1000-emmc)
> + platform_do_upgrade_sdcard "$1"
> + ;;
> + *)
> + default_do_upgrade "$1"
> + ;;
> + esac
> +}
> +
> platform_do_upgrade() {
> case "$(board_name)" in
> linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,shelby|linksys,venom)
> @@ -28,6 +41,9 @@ platform_do_upgrade() {
> marvell,armada8040-mcbin|solidrun,clearfog-base-a1|solidrun,clearfog-pro-a1)
> platform_do_upgrade_sdcard "$1"
> ;;
> + gl-mv1000)
> + platform_do_upgrade_mv1000 "$1"
> + ;;
> *)
> default_do_upgrade "$1"
> ;;
> @@ -42,5 +58,8 @@ platform_copy_config() {
> marvell,armada8040-mcbin|solidrun,clearfog-base-a1|solidrun,clearfog-pro-a1)
> platform_copy_config_sdcard
> ;;
> + gl-mv1000)
> + platform_copy_config_sdcard
> + ;;
> esac
> }
> diff --git
> a/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts
> b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts
> new file mode 100644
> index 0000000..9e9c547
> --- /dev/null
> +++
> b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts
> @@ -0,0 +1,68 @@
> +/*
> + * Device Tree file for GL.iNet GL-MV1000
> + */
> +
> +#include "armada-3720-espressobin.dts"
> +
> +/ {
> + model = "GL.inet GL-MV1000 (Marvell)";
> + compatible = "gl-mv1000";

Especially here `glinet,gl-mv1000`.

> +};
> +
> +&spi0 {
> + status = "okay";
> +
> + flash@0 {
> + reg = <0>;
> + compatible = "jedec,spi-nor";
> + spi-max-frequency = <104000000>;
> + m25p,fast-read;
> + partitions {
> + compatible = "fixed-partitions";
> + #address-cells = <1>;
> + #size-cells = <1>;
> +
> + partition@0 {
> + label = "u-boot";
> + reg = <0 0xf0000>;
> + };
> +
> + partition@f0000 {
> + label = "u-boot-env";
> + reg = <0Xf0000 0x8000>;
> + };
> +
> + art: partition@f8000 {
> + label = "art";
> + reg = <0xf8000 0x8000>;
> + };
> +
> + };
> + };
> +};
> +
> +&sdhci1 {
> + wp-inverted;
> + bus-width = <4>;
> + cd-gpios = <&gpionb 17 GPIO_ACTIVE_LOW>;
> + marvell,pad-type = "sd";
> + no-1-8-v;
> + vqmmc-supply = <&vcc_sd_reg1>;
> + status = "okay";
> +};
> +
> +
> +&sdhci0 {
> + bus-width = <8>;
> + mmc-ddr-1_8v;
> + mmc-hs400-1_8v;
> + non-removable;
> + no-sd;
> + no-sdio;
> + marvell,pad-type = "fixed-1-8v";
> + status = "okay";
> +};
> +
> +&eth0 {
> + mtd-mac-address = <&art 0x0>;
> +};
> diff --git
> a/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts
> b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts
> new file mode 100644
> index 0000000..5c8c236
> --- /dev/null
> +++
> b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts
> @@ -0,0 +1,77 @@
> +/*
> + * Device Tree file for GL.iNet GL-MV1000
> + */
> +
> +#include "armada-3720-espressobin.dts"
> +
> +/ {
> + model = "GL.inet GL-MV1000 (Marvell)";
> + compatible = "gl-mv1000";
> +};
> +
> +&spi0 {
> + status = "okay";
> +
> + flash@0 {
> + reg = <0>;
> + compatible = "jedec,spi-nor";
> + spi-max-frequency = <104000000>;
> + m25p,fast-read;
> + partitions {
> + compatible = "fixed-partitions";
> + #address-cells = <1>;
> + #size-cells = <1>;
> +
> + partition@0 {
> + label = "u-boot";
> + reg = <0 0xf0000>;
> + };
> +
> + partition@f0000 {
> + label = "u-boot-env";
> + reg = <0Xf0000 0x8000>;
> + };
> +
> + art: partition@f8000 {
> + label = "art";
> + reg = <0xf8000 0x8000>;
> + };
> +
> + partition@100000{
> + label = "dtb";
> + reg = <0X100000 0x10000>;
> + };
> +
> + partition@110000 {
> + label = "firmware";
> + reg = <0X110000 0xef0000>;
> + };
> + };
> + };
> +};
> +
> +&sdhci1 {
> + wp-inverted;
> + bus-width = <4>;
> + cd-gpios = <&gpionb 17 GPIO_ACTIVE_LOW>;
> + marvell,pad-type = "sd";
> + no-1-8-v;
> + vqmmc-supply = <&vcc_sd_reg1>;
> + status = "okay";
> +};
> +
> +
> +&sdhci0 {
> + bus-width = <8>;
> + mmc-ddr-1_8v;
> + mmc-hs400-1_8v;
> + non-removable;
> + no-sd;
> + no-sdio;
> + marvell,pad-type = "fixed-1-8v";
> + status = "okay";
> +};
> +
> +&eth0 {
> + mtd-mac-address = <&art 0x0>;
> +};
> diff --git a/target/linux/mvebu/image/Makefile
> b/target/linux/mvebu/image/Makefile
> index 57e5a30..d1a4b63 100644
> --- a/target/linux/mvebu/image/Makefile
> +++ b/target/linux/mvebu/image/Makefile
> @@ -68,6 +68,11 @@ define Build/omnia-medkit-initramfs
> --file=$@ -C $(dir $(IMAGE_KERNEL))boot/ .
> endef
>  
> +define Build/pad-dtb
> + (dd if=$(KDIR)/image-$(DEVICE_DTS).dtb bs=64k conv=sync;dd if=$@) >
> $@.new
> + mv $@.new $@
> +endef
> +
> define Device/Default
> PROFILES := Default
> BOARD_NAME = $$(DEVICE_DTS)
> @@ -92,6 +97,15 @@ define Device/Default-arm64
> KERNEL := kernel-bin
> endef
>  
> +define Device/Default-arm64-emmc
> + BOOT_SCRIPT := generic-arm64-emmc
> + DTS_DIR := $(DTS_DIR)/marvell
> + IMAGES := emmc.img
> + IMAGE/emmc.img := boot-scr | boot-img-ext4 | sdcard-img-ext4 |
> append-metadata
> + KERNEL_NAME := Image
> + KERNEL := kernel-bin
> +endef
> +
> define Device/NAND-128K
> BLOCKSIZE := 128k
> PAGESIZE := 2048
> @@ -112,5 +126,6 @@ endef
> include cortex-a9.mk
> include cortex-a53.mk
> include cortex-a72.mk
> +include gl-mv1000.mk
>  
> $(eval $(call BuildImage))
> diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
> b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
> index e0230e4..7696872 100755
> --- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
> +++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
> @@ -51,6 +51,12 @@ while [ "$#" -ge 3 ]; do
> shift; shift; shift
> done
>  
> +model=''
> +model=$(echo $OUTFILE | grep "gl-mv1000-emmc")
> +[ "$model" != "" ] && {
> + ptgen_args="$ptgen_args -t 83 -p 7093504"
> +}
> +
> head=16
> sect=63
>  
> diff --git a/target/linux/mvebu/image/generic-arm64-emmc.bootscript
> b/target/linux/mvebu/image/generic-arm64-emmc.bootscript
> new file mode 100644
> index 0000000..4de4d39
> --- /dev/null
> +++ b/target/linux/mvebu/image/generic-arm64-emmc.bootscript
> @@ -0,0 +1,12 @@
> +setenv bootargs "root=/dev/mmcblk0p2 rw rootwait"
> +
> +if test -n "${console}"; then
> + setenv bootargs "${bootargs} ${console}"
> +fi
> +
> +setenv mmcdev 0
> +
> +load mmc ${mmcdev}:1 ${fdt_addr} @DTB@.dtb
> +load mmc ${mmcdev}:1 ${kernel_addr} Image
> +
> +booti ${kernel_addr} - ${fdt_addr}
> diff --git a/target/linux/mvebu/image/gl-mv1000.mk
> b/target/linux/mvebu/image/gl-mv1000.mk
> new file mode 100644
> index 0000000..efce4bc
> --- /dev/null
> +++ b/target/linux/mvebu/image/gl-mv1000.mk
> @@ -0,0 +1,27 @@
> +ifeq ($(SUBTARGET),cortexa53)
> +
> +define Device/gl-mv1000

Please call the device profile `glinet_gl-mv1000`.

> + KERNEL_NAME := Image
> + KERNEL_LOADADDR := 0x000080000
> + KERNEL := kernel-bin | lzma | uImage lzma | pad-dtb
> + DEVICE_TITLE := GL.iNet GL-MV1000
> + DEVICE_PACKAGES := e2fsprogs ethtool mkf2fs kmod-fs-vfat kmod-usb2
> kmod-usb3 kmod-usb-storage
> + BLOCKSIZE := 64k
> + IMAGES := sysupgrade.bin
> + IMAGE_SIZE := 15000k
> + IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(BLOCKSIZE) |
> append-rootfs | pad-rootfs | append-metadata | check-size
> $$$$(IMAGE_SIZE)
> + DEVICE_DTS := armada-gl-mv1000
> + DTS_DIR := $(DTS_DIR)/marvell
> +endef
> +TARGET_DEVICES += gl-mv1000
> +
> +define Device/gl-mv1000-emmc
> + $(call Device/Default-arm64-emmc)
> + DEVICE_TITLE := GL.iNet GL-MV1000 EMMC
> + DEVICE_DTS := armada-gl-mv1000-emmc
> +endef
> +
> +TARGET_DEVICES += gl-mv1000-emmc
> +
> +endif
> +
> --
> 2.7.4
>
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
