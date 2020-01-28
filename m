Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF9214BDD6
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 17:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcoDUCoNV2Auq9JGYHlL8r65ndV4Zw3BJUDvTWRDEek=; b=aJINcn923Z0+Z3
	Ky1mYDttNaqAWJrRhc/W7Dkz4LpFiY6jcB2VS/nM45C8MjNz6zu85UUzAxNH52kqjRe7IXTrbvbzI
	wKBwdFfM37aOuMlz6z+MmN0pR+kGhyQC5A5pApQN3NnQNC26rgzDaEDV6e6KNRxJ754eQ81crSMEZ
	ea55Vi2tFAjqAnTUNEh8XDfKXOVgUsxR0N8ClY7EV8UYN0AMRIz7/iJtL0MYtjv0CTQ3pCx5pFnU1
	3IJ18KwChpadluOiqc7jaLCbuii5jFFpEWKY/3xogDKSjo94MoDllptbHe+fyrxLRuQuodHoQrUR5
	sMTJ9JCEIIU/9XeX9XXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTpc-0002Wz-HW; Tue, 28 Jan 2020 16:35:16 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTpI-0002WL-FM
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 16:34:58 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MYeV3-1j1cNB13pL-00Vfji; Tue, 28
 Jan 2020 17:34:54 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20200126222605.152990-1-mail@david-bauer.net>
In-Reply-To: <20200126222605.152990-1-mail@david-bauer.net>
Date: Tue, 28 Jan 2020 17:34:53 +0100
Message-ID: <00cb01d5d5f8$debbe840$9c33b8c0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJpW0yFKgz3ydTO/z1BBRqerXr2oabZNydw
Content-Language: de
X-Provags-ID: V03:K1:X/SRmwLQ/qdRbWy3TqLZ4FgZgU5NIUMsCKGtJkklabNjLgS0se4
 IJzsnjXv7a4xHEB7y4ogW6obbzxBBYNFBA+4f8yraEXtE/5/MMpwa0Sw2z6zTqtX7E+ZB+W
 ahmSl7vdASGkwdk2RWmr7p7NHrEGZEP7ch3LHncYzODGb9PBpwci1xnExRa6FODGEKWkY+4
 Tdo9vRl+pE6AKnlnnHKuw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jP9wrnnd6hY=:xHaQB1aiFo5r2etWKnMSQe
 5c/FltrrMDBC5lwgT3+xJkhHKn6Dx7+9HLIkucrUlL4mce7HpQqCox/wTQngZILw0qzQDb57E
 aN4Av+MvNXYnXSaoiH42T1MV0m8Jvk9NUPK2yNJeLV+MN733UQ5UYplTRDblA/lEdGa42ZNe3
 WBKhnBXnH7tineo0q/TEfuVQs8xdB6oDSOZiadcLV3SJinb7nAOaK6jsP/tZYuzPBdRpHoP2H
 bhnAoKjt0W6KBw574uTALE1m5cmwm/21YQtpH16zoMNl6q0fQxsGOMaeE1UqKta2AsVIcM8HF
 f5hE7WSyJ4f5HOQB2A1LUgvVus13R5GNLUh3nlJoqaCBsOIsr9fce3+t6uD3guUK+7jP2C2DQ
 MIS0mZaVSj449mm7aJKQh6SheC2SrbYc+706fFMVviZ/VXL8fDn917UcNaNwnLOsCAegJKwaM
 5O6Gjx4oYaCvYSCmk6/KwjjRhv9ObjmNgwj1RmOhhvBfNAu6PuO8kV5VUCMosPny0l6kVJ50v
 1UIkUl+0GBXqm2QFxpUN3ZEy9uWgJsAi8FtHv+ImDsudpc4UDGhoRDVrgT/efGtYNoi+mXcwK
 cerJBM0uDT6AZImnHd0L0vClfZMpAIFqzLD2b5QhK9S7W9hE7eVMXB4eTAweqXp/8oct4CVM6
 QvlBWrOmOQ3Q6rGGF7XnTalWv6GARPQvqFyS79pXRnrVfCVHQhiBqWvIZWlUEXUivUzMYvAI/
 UPX/192rWHtYaUniyE5PVTjvPcp9LSfAlFzR+fsmN46ZHpE82wiVF7hS2rqYBG+J6R1wyjNeF
 7SC5vmdfIrzDPrIQ6jt6Uoh5A/dOpc7/bqvdHgycqNd4t+AmsQI2MZjO0WlMFU1ZhgpxUMe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_083456_814697_CCEA40AD 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for GL.iNet
 microuter-N300
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

Hi David,

some nitpick comments below.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of David Bauer
> Sent: Sonntag, 26. Januar 2020 23:26
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: add support for GL.iNet microuter-
> N300
> 
> The GL.iNet microuter-N300 (internally referred as MT300N-v4) is a
> pocket-size travel router. It is essentially identical to the VIXMINI
> (internally referred as MT300N-v3) but with double the RAM and
> SPI-flash.

One could consider adding the v3/v4 names with the DEVICE_ALT0 syntax.

> 
> Hardware
> --------
> SoC:   MediaTek MT7628NN
> RAM:   128M DDR2
> FLASH: 16M
> LED:   Power - WLAN
> BTN:   Reset
> UART:  115200 8N1
>        TX and RX are labled on the board as pads next to the SoC
> 
> Installation via web-interface
> ------------------------------
> 1. Visit the web-interface at 192.168.8.1
>    Note: The ethernet port is by default WAN. So you need to connect to
>    the router via WiFi
> 
> 2. Navigate to the Update tab on the left side.
> 
> 3. Select "Local Update"
> 
> 4. Upload the OpenWrt sysupgrade image.
>    Note: Make sure you select not to preserve the configuration.
> 
> Installation via U-Boot
> -----------------------
> 1. Hold down the reset button while powering on the device.
>    Wait for the LED to flash 5 times.
> 
> 2. Assign yourself a static IPv4 in 192.168.1.0/24
> 
> 3. Upload the OpenWrt sysupgrade image at 192.168.1.1.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
>  .../dts/mt7628an_glinet_microuter-n300.dts    |  21 ++++
>  .../ramips/dts/mt7628an_glinet_vixmini.dts    |  97 ++--------------
>  .../mt7628an_glinet_vixmini_microuter.dtsi    | 104 ++++++++++++++++++
>  target/linux/ramips/image/mt76x8.mk           |   8 ++
>  .../mt76x8/base-files/etc/board.d/02_network  |   1 +
>  5 files changed, 141 insertions(+), 90 deletions(-)
>  create mode 100644 target/linux/ramips/dts/mt7628an_glinet_microuter-
> n300.dts
>  create mode 100644
> target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi
> 
> diff --git a/target/linux/ramips/dts/mt7628an_glinet_microuter-n300.dts
> b/target/linux/ramips/dts/mt7628an_glinet_microuter-n300.dts
> new file mode 100644
> index 0000000000..742cd6a8ef
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_glinet_microuter-n300.dts
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7628an_glinet_vixmini_microuter.dtsi"
> +
> +/{

Typically we have a space in-between here "/{" -> "/ {", but looks like it's
missing for vixmini as well.

> +	compatible = "glinet,microuter-n300", "mediatek,mt7628an-soc";
> +	model = "GL.iNet microuter-N300";
> +};
> +
> +&led_power_blue {

If there is only one color per type, I'd personally remove the color from the
label (-> led_power for this case).

> +	label = "microuter-n300:blue:power";
> +};
> +
> +&led_wlan_white {
> +	label = "microuter-n300:white:wlan";
> +};
> +
> +&firmware_part {
> +		reg = <0x50000 0xfb0000>;
> +};
> diff --git a/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
> b/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
> index 0935ec869b..9cdd9a0e14 100644
> --- a/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
> +++ b/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
> @@ -1,104 +1,21 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>  /dts-v1/;
> 
> -#include "mt7628an.dtsi"
> -
> -#include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/input/input.h>
> +#include "mt7628an_glinet_vixmini_microuter.dtsi"
> 
>  /{

Space?

>  	compatible = "glinet,vixmini", "mediatek,mt7628an-soc";
>  	model = "GL.iNet VIXMINI";
> -
> -	aliases {
> -		led-boot = &led_power;
> -		led-failsafe = &led_power;
> -		led-running = &led_power;
> -		led-upgrade = &led_power;
> -	};
> -
> -	chosen {
> -		bootargs = "console=ttyS0,115200";
> -	};
> -
> -	leds {
> -		compatible = "gpio-leds";
> -
> -		led_power: power {
> -			label = "vixmini:blue:power";
> -			default-state = "on";
> -			gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
> -		};
> -
> -		wlan {
> -			label = "vixmini:white:wlan";
> -			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
> -			linux,default-trigger = "phy0tpt";
> -		};
> -	};
> -
> -	keys {
> -		compatible = "gpio-keys";
> -
> -		reset {
> -			label = "reset";
> -			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
> -			linux,code = <KEY_RESTART>;
> -		};
> -	};
>  };
> 
> -&state_default {
> -	gpio {
> -		ralink,group = "wdt", "wled_an", "p1led_an";
> -		ralink,function = "gpio";
> -	};
> +&led_power_blue {
> +	label = "vixmini:blue:power";
>  };
> 
> -&ethernet {
> -	mtd-mac-address = <&factory 0x4>;
> +&led_wlan_white {
> +	label = "vixmini:white:wlan";
>  };
> 
> -&wmac {
> -	status = "okay";
> -};
> -
> -&spi0 {
> -	status = "okay";
> -
> -	flash@0 {
> -		compatible = "jedec,spi-nor";
> -		reg = <0>;
> -		spi-max-frequency = <10000000>;
> -
> -		partitions {
> -			compatible = "fixed-partitions";
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -
> -			partition@0 {
> -				label = "u-boot";
> -				reg = <0x0 0x30000>;
> -				read-only;
> -			};
> -
> -			partition@30000 {
> -				label = "u-boot-env";
> -				reg = <0x30000 0x10000>;
> -				read-only;
> -			};
> -
> -			factory: partition@40000 {
> -				label = "factory";
> -				reg = <0x40000 0x10000>;
> -				read-only;
> -			};
> -
> -			partition@50000 {
> -				compatible = "denx,uimage";
> -				label = "firmware";
> -				reg = <0x50000 0x7b0000>;
> -			};
> -		};
> -	};
> +&firmware_part {
> +		reg = <0x50000 0x7b0000>;
>  };
> diff --git a/target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi
> b/target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi
> new file mode 100644
> index 0000000000..b5611ac11e
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi
> @@ -0,0 +1,104 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +#include "mt7628an.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/{

Space missing here again (see above).

> +	aliases {
> +		led-boot = &led_power_blue;
> +		led-failsafe = &led_power_blue;
> +		led-running = &led_power_blue;
> +		led-upgrade = &led_power_blue;
> +
> +		label-mac-device = &ethernet;

I'd have done this in a separate commit, or at least added a comment to the
commit message.

> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,115200";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led_power_blue: power {
> +			/* Name is set device-specific */
> +			gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_wlan_white: wlan {
> +			/* Name is set device-specific */
> +			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "phy0tpt";
> +		};
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		reset {
> +			label = "reset";
> +			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +		};
> +	};
> +};
> +
> +&state_default {
> +	gpio {
> +		ralink,group = "wdt", "wled_an", "p1led_an";
> +		ralink,function = "gpio";
> +	};
> +};
> +
> +&ethernet {
> +	mtd-mac-address = <&factory 0x4>;
> +};
> +
> +&wmac {
> +	status = "okay";
> +};
> +
> +&spi0 {
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <10000000>;
> +
> +		partitions: partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "u-boot";
> +				reg = <0x0 0x30000>;
> +				read-only;
> +			};
> +
> +			partition@30000 {
> +				label = "u-boot-env";
> +				reg = <0x30000 0x10000>;
> +				read-only;
> +			};
> +
> +			factory: partition@40000 {
> +				label = "factory";
> +				reg = <0x40000 0x10000>;
> +				read-only;
> +			};
> +
> +			/*
> +			 * Firmware-partition size is model-specific
> +			 * due to different flash sizes.
> +			 */
> +			firmware_part: partition@50000 {

Why not just call it "firmware" corresponding to the label and how we do it with
factory?

> +				compatible = "denx,uimage";
> +				label = "firmware";
> +			};
> +		};
> +	};
> +};
> diff --git a/target/linux/ramips/image/mt76x8.mk
> b/target/linux/ramips/image/mt76x8.mk
> index 5ddeec14d5..37cac84229 100644
> --- a/target/linux/ramips/image/mt76x8.mk
> +++ b/target/linux/ramips/image/mt76x8.mk
> @@ -70,6 +70,14 @@ define Device/glinet_gl-mt300n-v2
>  endef
>  TARGET_DEVICES += glinet_gl-mt300n-v2
> 
> +define Device/glinet_microuter-n300
> +  IMAGE_SIZE := 16064k
> +  DEVICE_VENDOR := GL.iNet
> +  DEVICE_MODEL := microuter-N300
> +  SUPPORTED_DEVICES += microuter-n300

That's needed for GLinet's OpenWrt?

Best

Adrian

> +endef
> +TARGET_DEVICES += glinet_microuter-n300
> +
>  define Device/glinet_vixmini
>    IMAGE_SIZE := 7872k
>    DEVICE_VENDOR := GL.iNet
> diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
> b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
> index b036eb76e6..259a257f16 100755
> --- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
> @@ -33,6 +33,7 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"1:lan" "0:wan" "6@eth0"
>  		;;
> +	glinet,microuter-n300|\
>  	glinet,vixmini)
>  		ucidef_add_switch "switch0" \
>  			"0:lan" "6@eth0"
> --
> 2.25.0
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
