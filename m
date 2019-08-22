Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003CE99747
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 16:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qG/IE+xsT5y8My0t8sp6UC9X3Fynh9aWN1pMDmmpYro=; b=TzoXWQuGYoLnd2
	K0nkg/s80No652mHTdFYvQa8898QSBwN+9yCzJVJK9RYN62xu8hWtVZ807uri7jrCTVBJnRPhKwno
	KHPIRwnjh0pb+OjeREzyysMrVMX8A6+4tPsLWxI2hNIAqLahnhq2lfg5kfTHosVzqk0QAbdG9CDoZ
	dovTeRaRhRY6GPuaEFcioV0cJ40X+GJLVAEY6IvMwToPXNvwXkrQbXz0tTiy04L/TSuhOig9fhy0E
	nCgVzMGeMOCAnc+z3Lt7kU7CJib4mYscK6XTrDK35+tOUkFnYZgRFG8QNfuJGMnV1KbCXtWLfNmk/
	o5apr6adBa0OjXSJ4QMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oOC-0008Od-Vp; Thu, 22 Aug 2019 14:48:37 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oNr-0008OF-S2
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 14:48:17 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <daniel@makrotopia.org>)
 id 1i0oNi-0001cl-UI; Thu, 22 Aug 2019 16:48:10 +0200
Date: Thu, 22 Aug 2019 16:47:51 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <20190822144751.GB1235@makrotopia.org>
References: <c475e787-3242-6c1b-cb7c-fbb1a78697da@birger-koblitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c475e787-3242-6c1b-cb7c-fbb1a78697da@birger-koblitz.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_074816_071564_83D8EE1F 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: Re: [OpenWrt-Devel] [PATCH v4] ramips: add support for Edimax RG21S
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I believe the PCI-IDs of the devices in your device tree are wrong,
see below:

On Sun, Jul 21, 2019 at 07:43:51AM +0200, Birger Koblitz wrote:
> ramips: add Edimax RG21S
> 
> SoC:	MediaTek MT7621AT dual-core @ 880MHz
> RAM:	256M (Nanya NT5CC128M)
> FLASH:	16MB (Macronix MX25L12835F)
> WiFi:	- 2.4GHz MediaTek MT7615N bgn
> 	- 5GHz MediaTek MT7615N nac
> Switch: SoC integrated Gigabit Switch (4 x LAN, 1 x WAN)
> USB:	No
> BTN:	Reset, WPS
> LED:	4 red LEDs, indistinguishable when casing closed
> UART: 	UART is present as Pads marked J1 on the PCB.
> 	3.3V - RX - GND - TX / 57600-8N1
> 	3.3V is the square pad
> 
> Installation
> ------------
> Update the factory image via the OEM web-interface
> (by default:http://192.168.1.1)
> The sysupgrade image can be installed via TFTP from
> the U-Boot bootloader. Connect ethernet port 2.
> 
> Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>
> 
> ---
> 
> v3: Update to DEVICE_VENDOR / DEVICE_MODEL in mt7621.mk
>     renamed .dts according to new conventions
>     Removed memory node from .dts
>     Correct image size
>     Whitespace fixes
> v4: Added wifi0/1 labels to wifi nodes
>     Model name corrected in dts
>     Comments removed from .dts
> 
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
> index a2b7d1cf33..252d2f4e50 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -329,6 +329,10 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch1" \
>  			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
>  		;;
> +	edimax,rg21s)
> +		ucidef_add_switch "switch0" \
> +			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
> +		;;
>  	gehua,ghl-r-001)
>  		ucidef_add_switch "switch0" \
>  			"0:lan" "1:lan" "2:lan" "4:wan" "6@eth0"
> @@ -587,6 +591,10 @@ ramips_setup_macs()
>  		lan_mac=$(cat /sys/class/net/eth0/address)
>  		wan_mac=$(macaddr_add "$lan_mac" 2)
>  		;;
> +	edimax,rg21s)
> +		lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
> +		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
> +		;;
>  	elecom,wrc-1167ghbk2-s|\
>  	elecom,wrc-1900gst|\
>  	elecom,wrc-2533gst|\
> diff --git a/target/linux/ramips/dts/mt7621_edimax_rg21s.dts b/target/linux/ramips/dts/mt7621_edimax_rg21s.dts
> new file mode 100644
> index 0000000000..80b644b7a7
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_edimax_rg21s.dts
> @@ -0,0 +1,157 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible = "edimax,rg21s", "mediatek,mt7621-soc";
> +	model = "Edimax RG21S";
> +
> +	aliases {
> +		led-boot = &led_power;
> +		led-failsafe = &led_power;
> +		led-running = &led_power;
> +		led-upgrade = &led_power;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,57600";
> +	};
> +
> +	palmbus: palmbus@1E000000 {
> +		i2c@900 {
> +			status = "okay";
> +		};
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		reset {
> +			label = "reset";
> +			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +		};
> +
> +		wps {
> +			label = "wps";
> +			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led_power: led_1 {
> +			label = "rg21s:red:led1";
> +			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led_2 {
> +			label = "rg21s:red:led2";
> +			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led_3 {
> +			label = "rg21s:red:led3";
> +			gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led_4 {
> +			label = "rg21s:red:led4";
> +			gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +};
> +
> +&sdhci {
> +	status = "okay";
> +};
> +
> +&spi0 {
> +	status = "okay";
> +
> +	m25p80@0 {
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
> +	wifi0: wifi@0,0 {
> +		compatible = "pci14c3,7603";
                             ^^^^^^^^^^^^^^
This looks wrong, MT7615N should have a different PCI ID (pci14c3,7615)

> +		reg = <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom = <&factory 0x0000>;
> +		ieee80211-freq-limit = <2400000 2500000>;
> +		mtd-mac-address = <&factory 0x4>;
> +	};
> +};
> +
> +&pcie1 {
> +	wifi1: wifi@0,0 {
> +		compatible = "pci14c3,7662";
                             ^^^^^^^^^^^^^^
And here "pci14c3,7615" as well I reckon.

> +		reg = <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom = <&factory 0x8000>;
> +		ieee80211-freq-limit = <5000000 6000000>;
> +		mtd-mac-address = <&factory 0x8004>;
> +	};
> +};
> +
> +&ethernet {
> +	mediatek,portmap = "wllll";
> +	port@5 {
> +		status = "disabled";
> +	};
> +};
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group = "wdt", "rgmii2", "jtag", "mdio";
> +			ralink,function = "gpio";
> +		};
> +	};
> +};
> +
> +&xhci {
> +	status = "disabled";
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
> index 73ded64e74..5a1e8204f3 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -30,6 +30,25 @@ define Build/elecom-wrc-factory
>    mv $@.new $@
>  endef
> 
> +define Build/elx-header
> +  $(eval hw_id=$(word 1,$(1)))
> +  $(eval xor_pattern=$(word 2,$(1)))
> +  ( \
> +    echo -ne "\x00\x00\x00\x00\x00\x00\x00\x03" | \
> +      dd bs=42 count=1 conv=sync; \
> +    hw_id="$(hw_id)"; \
> +    echo -ne "\x$${hw_id:0:2}\x$${hw_id:2:2}\x$${hw_id:4:2}\x$${hw_id:6:2}" | \
> +      dd bs=20 count=1 conv=sync; \
> +    echo -ne "$$(printf '%08x' $$(stat -c%s $@) | fold -s2 | xargs -I {} echo \\x{} | tr -d '\n')" | \
> +      dd bs=8 count=1 conv=sync; \
> +    echo -ne "$$($(STAGING_DIR_HOST)/bin/mkhash md5 $@ | fold -s2 | xargs -I {} echo \\x{} | tr -d '\n')" | \
> +      dd bs=58 count=1 conv=sync; \
> +  ) > $(KDIR)/tmp/$(DEVICE_NAME).header
> +  $(call Build/xor-image,-p $(xor_pattern) -x)
> +  cat $(KDIR)/tmp/$(DEVICE_NAME).header $@ > $@.new
> +  mv $@.new $@
> +endef
> +
>  define Build/iodata-factory
>    $(eval fw_size=$(word 1,$(1)))
>    $(eval fw_type=$(word 2,$(1)))
> @@ -173,6 +192,20 @@ define Device/d-team_pbr-m1
>  endef
>  TARGET_DEVICES += d-team_pbr-m1
> 
> +define Device/edimax_rg21s
> +  MTK_SOC := mt7621
> +  IMAGE_SIZE := 16064k
> +  DEVICE_VENDOR := EDIMAX
> +  DEVICE_MODEL := RG21S
> +  IMAGES += factory.bin
> +  IMAGE/factory.bin := \
> +    $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | \
> +    elx-header 02020038 8844A2D168B45A2D
> +  DEVICE_PACKAGES := \
> +        kmod-ata-ahci kmod-mt76x2 kmod-mt7603 kmod-mt7615e wpad-basic
> +endef
> +TARGET_DEVICES += edimax_rg21s
> +
>  define Device/elecom_wrc-1167ghbk2-s
>    MTK_SOC := mt7621
>    IMAGE_SIZE := 15488k
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
