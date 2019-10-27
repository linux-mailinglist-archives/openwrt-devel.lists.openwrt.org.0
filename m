Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C568E6288
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 14:06:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8LIda7jIMtYrz9pEPWY/vFNqmCIvt0xusjZZ0OruIAY=; b=M3l78Tp17ew3Wehyhze5uAK0e
	qmIxhb9GVxXJDankaG4B7tWcHEWuGuvEVUu2cXPBDS9IB7I1TFlh0z1Dk+L0idZ5HRKfizu3BsKkq
	+JI2cKUS/7HbnYfA6wBsbogJMGhXn6X3nqZl9HbPe/APMJqb+w5yDuMg3JmanbkFLaFhQ1F+QVNXJ
	xvv+Ej6dApU8E4oGrT4iajgluuVT128FcsRtarETam+8J04DGxmKgoyMrgupQ09nPqT3nQW+aPVvK
	HaxzI69eKe5Z892HyEr0E5197PWLr8S+6zqz+OExb0I+qWAgW7m6DmDJJ5WL4au1/89PInPD2wovC
	iOZ+WKMbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOiFK-00011r-TP; Sun, 27 Oct 2019 13:06:14 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOiF3-0000wa-TX
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 13:06:00 +0000
Received: from p5dcfb592.dip0.t-ipconnect.de ([93.207.181.146]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iOiEx-0003lo-NK; Sun, 27 Oct 2019 14:05:52 +0100
To: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <3020121.uscLunan1g@tool>
From: John Crispin <john@phrozen.org>
Message-ID: <ba5d5df3-a26d-15a0-04d9-81bb5c79ae5f@phrozen.org>
Date: Sun, 27 Oct 2019 14:05:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3020121.uscLunan1g@tool>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_060558_114604_C675011D 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] Add support for Inventel DV4210
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 22/09/2019 22:05, Daniel Gonzalez Cabanelas wrote:
> Add support for the Inventel DV4210 router.
> 
> This is an Inventel Livebox 1 board. The patch supports the board with a CFE bootloader, and
> a RAM mod (64 MB, tested).  The board originally comes with 8 MB flash.  Under this conditions
> this old BCM6348 based board still runs quite fine with current snapshots.
> 

Hi,
thanks for the patch, the subject line needs to start with "brcm63xx:"
	John

> Signed-off-by: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
> ---
>   .../brcm63xx/base-files/etc/board.d/01_leds   |   1 +
>   .../base-files/etc/board.d/02_network         |   2 +-
>   target/linux/brcm63xx/base-files/etc/diag.sh  |   1 +
>   .../linux/brcm63xx/base-files/lib/brcm63xx.sh |   3 +
>   target/linux/brcm63xx/dts/dv4210.dts          | 102 ++++++++++++++++++
>   target/linux/brcm63xx/image/bcm63xx.mk        |  13 +++
>   .../patches-4.14/599-board_DV4210.patch       |  50 +++++++++
>   7 files changed, 171 insertions(+), 1 deletion(-)
>   create mode 100644 target/linux/brcm63xx/dts/dv4210.dts
>   create mode 100644 target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
> 
> diff --git a/target/linux/brcm63xx/base-files/etc/board.d/01_leds b/target/linux/brcm63xx/base-files/etc/board.d/01_leds
> index d25d37e847..00109ba112 100755
> --- a/target/linux/brcm63xx/base-files/etc/board.d/01_leds
> +++ b/target/linux/brcm63xx/base-files/etc/board.d/01_leds
> @@ -69,6 +69,7 @@ homehub2a)
>   	ucidef_set_led_usbdev "usb1" "USB1" "HOMEHUB2A:blue:phone" "1-1"
>   	ucidef_set_led_usbdev "usb2" "USB2" "HOMEHUB2A:green:phone" "2-1"
>   	;;
> +dv4210|\
>   livebox1)
>   	ucidef_set_led_netdev "lan" "LAN" "Livebox1:red:traffic" "eth0"
>   	ucidef_set_led_netdev "wan" "WAN" "Livebox1:red:adsl" "eth1"
> diff --git a/target/linux/brcm63xx/base-files/etc/board.d/02_network b/target/linux/brcm63xx/base-files/etc/board.d/02_network
> index a2ca5a37b3..0e384f82f6 100755
> --- a/target/linux/brcm63xx/base-files/etc/board.d/02_network
> +++ b/target/linux/brcm63xx/base-files/etc/board.d/02_network
> @@ -145,8 +145,8 @@ bcm963268bu_p300)
>   	ucidef_add_switch "switch0" \
>   		"0:lan" "3:lan" "4:lan" "5:lan" "6:lan" "7:lan" "8t@eth0"
>   	;;
> -
>   cpva502p |\
> +dv4210 |\
>   livebox1)
>   	ucidef_set_interfaces_lan_wan "eth0" "eth1"
>   	;;
> diff --git a/target/linux/brcm63xx/base-files/etc/diag.sh b/target/linux/brcm63xx/base-files/etc/diag.sh
> index 34464ec44a..c673a75e40 100644
> --- a/target/linux/brcm63xx/base-files/etc/diag.sh
> +++ b/target/linux/brcm63xx/base-files/etc/diag.sh
> @@ -114,6 +114,7 @@ set_state() {
>   	hg655b)
>   		status_led="HW65x:green:power"
>   		;;
> +	dv4210|\
>   	livebox1)
>   		status_led="Livebox1:red:adsl-fail-power"
>   		;;
> diff --git a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh b/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
> index 1676ae0abb..9c0c33cc31 100755
> --- a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
> +++ b/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
> @@ -177,6 +177,9 @@ brcm63xx_dt_detect() {
>   	"Inteno VG50")
>   		board_name="vg50"
>   		;;
> +	"Inventel DV4210")
> +		board_name="dv4210"
> +		;;
>   	"Inventel Livebox 1")
>   		board_name="livebox1"
>   		;;
> diff --git a/target/linux/brcm63xx/dts/dv4210.dts b/target/linux/brcm63xx/dts/dv4210.dts
> new file mode 100644
> index 0000000000..02975fe3b6
> --- /dev/null
> +++ b/target/linux/brcm63xx/dts/dv4210.dts
> @@ -0,0 +1,102 @@
> +/dts-v1/;
> +
> +#include "bcm6348.dtsi"
> +
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model = "Inventel DV4210";
> +	compatible = "inventel,dv4210", "brcm,bcm6348";
> +
> +	chosen {
> +		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys-polled";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		poll-interval = <20>;
> +
> +		button1 {
> +			label = "1";
> +			gpios = <&pinctrl 36 1>;
> +			linux,code = <KEY_RESTART>;
> +			debounce-interval = <60>;
> +		};
> +
> +		button2 {
> +			label = "2";
> +			gpios = <&pinctrl 7 1>;
> +			linux,code = <BTN_2>;
> +			debounce-interval = <60>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		red_adsl_fail {
> +			label = "Livebox1:red:adsl-fail-power";
> +			gpios = <&pinctrl 0 0>;
> +			default-state = "on";
> +		};
> +
> +		red_adsl {
> +			label = "Livebox1:red:adsl";
> +			gpios = <&pinctrl 1 0>;
> +		};
> +
> +		red_traffic {
> +			label = "Livebox1:red:traffic";
> +			gpios = <&pinctrl 2 0>;
> +		};
> +
> +		red_phone {
> +			label = "Livebox1:red:phone";
> +			gpios = <&pinctrl 3 0>;
> +		};
> +
> +		red_wifi {
> +			label = "Livebox1:red:wifi";
> +			gpios = <&pinctrl 4 0>;
> +		};
> +	};
> +};
> +
> +&pflash {
> +	reg = <0x1f400000 0x800000>;
> +	status = "ok";
> +
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		cfe@0 {
> +			reg = <0x000000 0x010000>;
> +			label = "cfe";
> +		};
> +
> +		linux@10000 {
> +			reg = <0x010000 0x7e0000>;
> +			label = "linux";
> +			compatible = "brcm,bcm963xx-imagetag";
> +		};
> +
> +		nvram@7f0000 {
> +			reg = <0x7f0000 0x010000>;
> +			label = "nvram";
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pci &pinctrl_ext_mii &pinctrl_mii_pccard>;
> +};
> +
> +&uart0 {
> +	status = "ok";
> +};
> diff --git a/target/linux/brcm63xx/image/bcm63xx.mk b/target/linux/brcm63xx/image/bcm63xx.mk
> index 212960e972..690ffb49fa 100644
> --- a/target/linux/brcm63xx/image/bcm63xx.mk
> +++ b/target/linux/brcm63xx/image/bcm63xx.mk
> @@ -769,6 +769,19 @@ define Device/livebox
>   endef
>   TARGET_DEVICES += livebox
>   
> +define Device/DV4210
> +  $(Device/bcm63xx)
> +  DEVICE_TITLE := Inventel DV4210
> +  DEVICE_DESCRIPTION = Build firmware images for the Inventel DV4210. Board with CFE bootloader and >32MB RAM
> +  DEVICE_DTS := dv4210
> +  CFE_BOARD_ID := DV4210
> +  CFE_CHIP_ID := 6348
> +  DEVICE_PACKAGES := \
> +    $(B43_PACKAGES) $(USB1_PACKAGES)
> +  DEFAULT := y
> +endef
> +TARGET_DEVICES += DV4210
> +
>   ### Netgear ###
>   define Device/CVG834G
>     $(Device/bcm33xx)
> diff --git a/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
> new file mode 100644
> index 0000000000..618a214d63
> --- /dev/null
> +++ b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
> @@ -0,0 +1,50 @@
> +--- a/arch/mips/bcm63xx/boards/board_bcm963xx.c
> ++++ b/arch/mips/bcm63xx/boards/board_bcm963xx.c
> +@@ -1058,6 +1058,31 @@
> + 	},
> + };
> +
> ++static struct board_info __initdata board_DV4210 = {
> ++	.name				= "DV4210",
> ++	.expected_cpu_id		= 0x6348,
> ++
> ++	.has_enet0			= 1,
> ++	.has_enet1			= 1,
> ++	.has_pci			= 1,
> ++
> ++	.enet0 = {
> ++		.has_phy		= 1,
> ++		.use_internal_phy	= 1,
> ++	},
> ++
> ++	.enet1 = {
> ++		  .has_phy		= 1,
> ++		  .phy_id 		= 31,
> ++	},
> ++
> ++	.ephy_reset_gpio		= 6,
> ++	.ephy_reset_gpio_flags	= GPIO_ACTIVE_LOW,
> ++
> ++	.has_ohci0			= 1,
> ++	.has_pccard			= 0,
> ++};
> ++
> + static struct board_info __initdata board_96348A_122 = {
> + 	.name				= "96348A-122",
> + 	.expected_cpu_id		= 0x6348,
> +@@ -2746,6 +2771,7 @@
> + 	&board_FAST2404,
> + 	&board_FAST2604,
> + 	&board_DV201AMR,
> ++	&board_DV4210,
> + 	&board_96348gw_a,
> + 	&board_rta1025w_16,
> + 	&board_96348_D4PW,
> +@@ -2859,6 +2885,7 @@
> + 	{ .compatible = "d-link,dsl-2640b-b", .data = &board_96348_D4PW, },
> + 	{ .compatible = "davolink,dv-201amr", .data = &board_DV201AMR, },
> + 	{ .compatible = "dynalink,rta1025w", .data = &board_rta1025w_16, },
> ++	{ .compatible = "inventel,dv4210", .data = &board_DV4210, },
> + 	{ .compatible = "netgear,dg834gtpn", .data = &board_96348gw_10, },
> +  	{ .compatible = "netgear,dg834g-v4", .data = &board_96348W3, },
> + 	{ .compatible = "sagem,f@st2404", .data = &board_FAST2404, },
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
