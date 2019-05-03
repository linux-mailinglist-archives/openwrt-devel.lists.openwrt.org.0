Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20B01323E
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 18:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w6QrjuZzm/THHzwRbHTWz+1+PQsEx9IKnP0FrzcqZyE=; b=RX2ZqVla1m7aCBTxN4t1ues25h
	WfFptB1Y+qSJfuUquPYnm70CICePYxe4ZorsLJKkaCk+asjm8xtfzaoN00K7XSWlgBx16Kj6x8zFb
	WXvpEx5RjOcB7vwu/IArpI8Msw0n28D6LIXL+VRCwcoKdZmx4I+C1RJY1fDW45UirSUbus5i39zmS
	dlkvDpR84lkEEw1ktciga0CjwDdYARKcnDl/wAXmX/zTZIaSjvVCuk/9Oldg9cVPa2ltnYKA+9B1p
	dgYQtjWARKOpdnrcaaRBceptGeyl4+kpvW1bBYnCOWAP5XLwRF8W8qPqxdWDGVGJEB16Svoqf2RvP
	GF+kV00w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMb7L-0005lm-Ic; Fri, 03 May 2019 16:32:59 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMb7D-0005lC-PY
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 16:32:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 542E94D9B;
 Fri,  3 May 2019 18:32:49 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 042e7aab;
 Fri, 3 May 2019 18:32:47 +0200 (CEST)
Date: Fri, 3 May 2019 18:32:47 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190503163247.GF71477@meh.true.cz>
References: <20190503145852.6125-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503145852.6125-1-kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_093251_978776_0A68F07A 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: Add support for Head Weblink
 HDRM200
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kristian Evensen <kristian.evensen@gmail.com> [2019-05-03 16:58:52]:

Hi,

> In order to install OpenWRT, you first need to compile an initramfs
> (ramdisk)-image for the device.

if the ramdisk image is needed, then we probably should enable it for that
target and provide it, we shouldn't demand end users to build the ramdisk
images by themselves in order to be able to install OpenWrt, right?

This needs adding `ramdisk` in FEATURES in target.mk.

> * Copy the initramfs-image to your tftp-root (default filename is
> test.bin) and configure networking accordingly (default server IP is
> 10.10.10.3, client 10.10.10.123). Start your tftp server.
> * Open the board and connect to UART. The pins are exposed and clearly
> marked.
> * Boot the board and press 1.
> * Either use the default filename and client/server IP-addresses, or
> specify your own.
> 
> The image should now be loaded to memory and board boot. If the router
> reboots while the image is loading, you need to try again. 

Why does it reboot? Is there any kind of watchdog? Do you get any error in the
bootloader?

> diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
> index fa20ab0714..f9ca5c47b8 100755
> --- a/target/linux/ramips/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/base-files/etc/board.d/01_leds
> @@ -184,6 +184,9 @@ hc5861)
>  	ucidef_set_led_netdev "wifi5g" "wifi5g" "$boardname:blue:wlan5g" "wlan0"
>  	ucidef_set_led_netdev "wifi2g" "wifi2g" "$boardname:blue:wlan2g" "wlan1"
>  	;;
> +hdrm200)

this should match device from the DT compatible property and use generic
board/model detection as introduced in commit b3d699bdd3caa3d ("base-files:
add generic preinit script to extract board/model info from device-tree").

> +	set_wifi_led "$boardname:green:wifi"
> +	;;
>  hg255d)
>  	set_wifi_led "$boardname:green:wlan"
>  	ucidef_set_led_netdev "internet" "internet" "$boardname:green:internet" "eth0.2"
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
> index c2646876a2..8ae41ae59e 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -314,6 +314,7 @@ ramips_setup_interfaces()
>  			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
>  		;;
>  	hc5661|\
> +	hdrm200|\

ditto here.

>  	y1s)
>  		ucidef_add_switch "switch0" \
>  			"1:lan" "2:lan" "3:lan" "4:lan" "5:lan" "0:wan" "6@eth0"
> diff --git a/target/linux/ramips/base-files/lib/ramips.sh b/target/linux/ramips/base-files/lib/ramips.sh
> index 093303892c..6d5a9cc391 100755
> --- a/target/linux/ramips/base-files/lib/ramips.sh
> +++ b/target/linux/ramips/base-files/lib/ramips.sh
> @@ -229,6 +229,9 @@ ramips_board_detect() {
>  	*"HC5962")
>  		name="hc5962"
>  		;;
> +	*"HDRM200")
> +		name="hdrm200"
> +		;;

so this is not necessary anymore and you can drop it.

> diff --git a/target/linux/ramips/dts/HDRM200.dts b/target/linux/ramips/dts/HDRM200.dts
> new file mode 100644
> index 0000000000..05e0b1a6dc
> --- /dev/null
> +++ b/target/linux/ramips/dts/HDRM200.dts

...

> +	gpio-export {
> +		compatible = "gpio-export";
> +		#size-cells = <0>;
> +
> +		sim_switch {
> +			gpio-export,name = "sim_switch";
> +			gpio-export,output = <1>;
> +			gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		io1 {
> +			gpio-export,name = "io1";
> +			gpio-export,output = <1>;
> +			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		io2 {
> +			gpio-export,name = "io2";
> +			gpio-export,output = <1>;
> +			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		io3 {
> +			gpio-export,name = "io3";
> +			gpio-export,output = <1>;
> +			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		io4 {
> +			gpio-export,name = "io4";
> +			gpio-export,output = <1>;
> +			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		power_mpcie {
> +			gpio-export,name = "power_mpcie";
> +			gpio-export,output = <1>;
> +			gpios = <&gpio0 21 GPIO_ACTIVE_HIGH>;
> +		};
> +	};

We're trying to get rid of the `gpio-export` functionality as it's hack for
missing kernel functionality, which was rejected in upstream kernel long time
ago, for details see this email
http://lists.infradead.org/pipermail/openwrt-devel/2019-February/015772.html,
discussion in #1366 or
https://github.com/openwrt/openwrt/pull/1814#issuecomment-462942022.

So I'm wondering if it would be possible to replace the `gpio-export`
construct with the userspace gpio-switch alternative, for example
https://github.com/openwrt/openwrt/blob/master/target/linux/layerscape/base-files/etc/board.d/03_gpio_switches#L20-L22

> +&spi0 {
> +	status = "okay";
> +
> +	w25q128@0 {

Can you please change the node name to more generic name `flash@0` and try if
it boots for you?

> +&ethernet {
> +	status = "okay";

I would add newline here in order to separate the `status` property from the
rest.

> +&pinctrl {
> +	state_default: pinctrl0 {
> +		default {
> +			ralink,group = "i2c", "uartf", "pa", "spi refclk", "wled";
> +			ralink,function = "gpio";
> +		};
> +	};
> +};

...

> --- a/target/linux/ramips/image/mt7620.mk
> +++ b/target/linux/ramips/image/mt7620.mk
> @@ -358,6 +358,14 @@ define Device/hc5861
>  endef
>  TARGET_DEVICES += hc5861
>  
> +define Device/hdrm200

this should be set to `Device/head-weblink_hdrm200` in order to add
SUPPORTED_DEVICES variable with the proper value, matching the one in the DT
compatible.

> +  DTS := HDRM200
> +  IMAGE_SIZE := $(ralink_default_fw_size_16M)
> +  DEVICE_TITLE := Head Weblink HDRM2000
> +  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb2 kmod-usb-ohci kmod-sdhci-mt7620
> +endef
> +TARGET_DEVICES += hdrm200

TARGET_DEVICES += head-weblink_hdrm200

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
