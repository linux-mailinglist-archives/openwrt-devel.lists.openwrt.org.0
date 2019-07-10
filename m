Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445E764BC0
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 19:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SWawwOSB/fc0ATN4nbYUUTOd63AIefcz729zi0p7/1Q=; b=i5rzfvxDIxWbhThGDn5a7hyBh
	ADbfRhZ0XdZYSJRsifdDqaLJOV7ORcViG6e5WbJEPjcy0tH3E7ZpEJ/6Hj3DYJKGII6gLgS4S9SFt
	YcXU8HclZWvCqnKwR5aGRacL3LLpxeVnCPGNeilYpYbg7XHaMs+Od/BEftY3U82YL0t5DoQEF2dtq
	m1p4QIKNyfOdM/k4/fJ2Bail+IyFYAoWsjWUgzcq+QAaik5AxbvA6ans7MpXMdwRdKLKIVv8UVSvc
	7+WPeLfq9qAn/Odsk6nxnMro4/ORKJ7sf/4J3hfoxpSriCmNftxvCzBvRqz1QS1IOOLLTEWv7Zc6T
	b5LVcrJsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlGoG-0007tQ-6K; Wed, 10 Jul 2019 17:55:16 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlGo2-000729-BH
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jul 2019 17:55:04 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 6DD58FB1D0; Wed, 10 Jul 2019 19:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1562780809;
 bh=ABXWiwTtVBnKrILvQwYh0xvbAtGz6sX9qemU8h3adpQ=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=hoLawQzpUCskW6NQP+snusFDZbx3dPlN/EsSn52WfUFohDp/fJQtKzV3OybOlaSvW
 3nOu2ahDhivVljg29DCs0851qse6PTOzWubgKKh/0PORary9igvgG3VPxdB7Tala5D
 2piKSURFx61DSgP/u6VdhQwvyruPcsJMDAvZUCnQ=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.10] (213.219.168.236.adsl.dyn.edpnet.net
 [213.219.168.236])
 by volatilesystems.org (Postfix) with ESMTPSA id 5391DFB1CB;
 Wed, 10 Jul 2019 19:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1562780807;
 bh=ABXWiwTtVBnKrILvQwYh0xvbAtGz6sX9qemU8h3adpQ=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=Jf33iJzhVAP1x1PrFfA0XiL5itKAYrSwmCxNZRrsOzFRu5Pi9ohJHmOjC93LdFa9B
 52B0gs4Z4Oli5qKGhZAcSnHYa03NZGE2qz5ggvgtGtbBSzVAJB4ytqbu3LsYkyvwAs
 R6dAutIc/MdkY8cKtWaEG2BZA29CuCsRWVisy+uc=
Date: Wed, 10 Jul 2019 19:46:26 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: David Bauer <mail@david-bauer.net>
Message-Id: <1562780786.1814.0@mail.volatilesystems.org>
In-Reply-To: <20190703125014.1331-1-mail@david-bauer.net>
References: <20190703125014.1331-1-mail@david-bauer.net>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_105502_668710_4DA3F15F 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for ASUS RT-AC57U
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
Cc: openwrt-devel@lists.openwrt.org, chunkeey@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Op woensdag 3 juli 2019 om 14:50 schreef David Bauer 
<mail@david-bauer.net>:
> SoC:   MediaTek MT7621AT
> RAM:   128M (Winbond W631GG6KB-15)
> FLASH: 16MB (Spansion S25FL128SA)
> WiFi:  MediaTek MT7603EN bgn 2SS
> WiFi:  MediaTek MT7612EN nac 2SS
> BTN:   Reset - WPS
> LED:    - Power
>         - LAN {1-4}
>         - WAN
>         - WiFi 2.4 GHz
>         - WiFi 5 GHz
>         - USB
> UART:  UART is present next to the Power LED.
>        TX - RX - GND - 3V3 / 57600-8N1
>        3V3 is the nearest one to the Power LED.
> 
> Installation
> ------------
> Via TFTP:
> 1. Set your computers IP-Address to 192.168.1.75.
> 2. Power up the Router with the Reset button pressed.
> 3. Release the Reset button after 5 seconds.
> 4. Upload OpenWRT sysupgrade image via TFTP:
>  > tftp -4 -v -m binary 192.168.1.1 -c put <IMAGE>
> 
> Via SSH:
> Note: User/password for SSH is identical with the one used in the
> Web-interface.
> 1. Complete the initial setup wizard.
> 2. Activate SSH under "Administration" -> "System".
> 3. Transfer the OpenWrt sysupgrade image via scp:
>  > scp owrt.bin admin@192.168.1.1:/tmp
> 4. Connect via SSH to the router.
>  > ssh admin@192.168.1.1
> 5. Write the OpenWrt image to flash.
>  > mtd-write -i /tmp/owrt.bin -d linux
> 6. Reboot the router
>  > reboot

Just got a 'second chance' RT-AC57U off Amazon. Looks like everything 
works fine. I applied your patch against 19.07. Let me know if you'd 
like me to test your v3 with master, just saw you sent that one in as 
well.

Thanks for the hard work!

Stijn

> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
> v2:
>  - Fixed SoC compatible
>  - Switch to using interrupt-based gpio-keys
> 
>  .../ramips/base-files/etc/board.d/02_network  |  10 +-
>  target/linux/ramips/dts/RT-AC57U.dts          | 153 
> ++++++++++++++++++
>  target/linux/ramips/image/mt7621.mk           |   8 +
>  3 files changed, 167 insertions(+), 4 deletions(-)
>  create mode 100644 target/linux/ramips/dts/RT-AC57U.dts
> 
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network 
> b/target/linux/ramips/base-files/etc/board.d/02_network
> index b13590566c..814f38bb07 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -219,6 +219,7 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
>  		;;
> +	asus,rt-ac57u|\
>  	atp-52b|\
>  	awm002-evb-4M|\
>  	awm002-evb-8M|\
> @@ -502,6 +503,11 @@ ramips_setup_macs()
>  	wmdr-143n)
>  		lan_mac=$(cat /sys/class/net/eth0/address)
>  		;;
> +	asus,rt-ac57u|\
> +	vr500)
> +		lan_mac=$(mtd_get_mac_binary factory 57344)
> +		wan_mac=$(mtd_get_mac_binary factory 57350)
> +		;;
>  	carambola|\
>  	freestation5|\
>  	w502u|\
> @@ -654,10 +660,6 @@ ramips_setup_macs()
>  		lan_mac=$(mtd_get_mac_ascii u-boot-env LAN_MAC_ADDR)
>  		wan_mac=$(mtd_get_mac_ascii u-boot-env WAN_MAC_ADDR)
>  		;;
> -	vr500)
> -		lan_mac=$(mtd_get_mac_binary factory 57344)
> -		wan_mac=$(mtd_get_mac_binary factory 57350)
> -		;;
>  	w306r-v20)
>  		lan_mac=$(cat /sys/class/net/eth0/address)
>  		wan_mac=$(macaddr_add "$lan_mac" 5)
> diff --git a/target/linux/ramips/dts/RT-AC57U.dts 
> b/target/linux/ramips/dts/RT-AC57U.dts
> new file mode 100644
> index 0000000000..e757716ffb
> --- /dev/null
> +++ b/target/linux/ramips/dts/RT-AC57U.dts
> @@ -0,0 +1,153 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible = "asus,rt-ac57u", "mediatek,mt7621-soc";
> +	model = "ASUS RT-AC57U";
> +
> +	aliases {
> +		led-boot = &led_power;
> +		led-failsafe = &led_power;
> +		led-running = &led_power;
> +		led-upgrade = &led_power;
> +	};
> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x8000000>;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,57600";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led_power: power {
> +			label = "rt-ac57u:blue:power";
> +			gpios = <&gpio1 16 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		usb {
> +			label = "rt-ac57u:blue:usb";
> +			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
> +			trigger-sources = <&ehci_port2>;
> +			linux,default-trigger = "usbport";
> +		};
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		wps {
> +			label = "wps";
> +			gpios = <&gpio1 11 GPIO_ACTIVE_HIGH>;
> +			linux,code = <KEY_WPS_BUTTON>;
> +			debounce-interval = <60>;
> +		};
> +
> +		reset {
> +			label = "reset";
> +			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +			debounce-interval = <60>;
> +		};
> +	};
> +
> +	led-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "LED-Power";
> +		gpio = <&gpio1 14 GPIO_ACTIVE_LOW>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
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
> +		partitions {
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
> +				label = "config";
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
> +			partition@50000 {
> +				compatible = "denx,uimage";
> +				label = "firmware";
> +				reg = <0x50000 0xfb0000>;
> +			};
> +		};
> +	};
> +};
> +
> +&pcie {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	wifi@0,0 {
> +		compatible = "mediatek,mt76";
> +		reg = <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom = <&factory 0x8000>;
> +
> +		led {
> +			led-sources = <2>;
> +			led-active-low;
> +		};
> +	};
> +};
> +
> +&pcie1 {
> +	wifi@0,0 {
> +		compatible = "mediatek,mt76";
> +		reg = <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom = <&factory 0x0000>;
> +
> +		led {
> +			led-active-low;
> +		};
> +	};
> +};
> +
> +&ethernet {
> +	mtd-mac-address = <&factory 0x4e000>;
> +};
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group = "sdhci";
> +			ralink,function = "gpio";
> +		};
> +	};
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk 
> b/target/linux/ramips/image/mt7621.mk
> index dce24308b8..b58d2f640b 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -92,6 +92,14 @@ define Device/11acnas
>  endef
>  TARGET_DEVICES += 11acnas
> 
> +define Device/asus_rt-ac57u
> +  DTS := RT-AC57U
> +  DEVICE_TITLE := ASUS RT-AC57U
> +  IMAGE_SIZE := 16064k
> +  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 
> kmod-usb-ledtrig-usbport wpad-basic
> +endef
> +TARGET_DEVICES += asus_rt-ac57u
> +
>  define Device/dir-860l-b1
>    $(Device/seama)
>    DTS := DIR-860L-B1
> --
> 2.20.1
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
