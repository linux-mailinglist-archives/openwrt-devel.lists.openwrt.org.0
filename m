Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A39914A88
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 15:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+YjWKgAlmdNZLkWWD3wsRuqNLXtmN/Ecv+A8y1Xkd0=; b=HX5zp6K8JcTnOC
	hmFqSfuPIgWGnyq44zXbdRrFnSBJAuYNID8XXsqXR/j5cPLYukCnzD1VY6j97pehzov766FClhFES
	0TUff90ox2wyDJ5DszNv73G6RshahCQQqt2yqQCGTeXDGvefzoIyG27F2/gZa2UZBRvN46QcoKvcY
	c/fUrizdWkNmy9Mfsl0oKrZydMjNXq/AWvBctvqTpSZ4jYcr4mH7+ZS3XKt4ruYW2qnDCHVY3vLFB
	oQkADsJui6W7L2Y12zrWKYinoFNiQH93i3NXchsE0zFEJNuWPQGsHNJPfIVtDdyZlSRb3JLERKM3h
	mvqzhG4QvCZVviBzdBWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdI5-00056B-H8; Mon, 06 May 2019 13:04:21 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdHw-00055k-5X
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 13:04:15 +0000
Received: from [172.18.73.242] (nat-3218.dyn.hrz.tu-darmstadt.de
 [130.83.116.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 125A12204E;
 Mon,  6 May 2019 15:04:09 +0200 (CEST)
To: Markus Scheck <markus@mscheck.de>
References: <20190506091512.5578-1-markus@mscheck.de>
From: David Bauer <mail@david-bauer.net>
Openpgp: id=D70432697B7C4C27380FCDA3BAB39714B4A4B878
Autocrypt: addr=mail@david-bauer.net; prefer-encrypt=mutual; keydata=
 mQENBFYkGEcBCADbRMHdOXmszxrmE9G/gWUD4/HXklOfn+hyBpEcOul+GKAet0oFxznkchJe
 hO5MbEFYsnM8TZVxjnEi70c3luF1m4JycjgQ91GJ52+xvLV0dVz+L99JBgVJNRDvvt68rLVq
 A8/LCdkXctZ+GBfrtTYQ6dOeuQf/qWuwlNTvuG92uWVZjncyWOmQX73gv+1MTRsCmIGNYQu1
 ZDVyhr3YsTgJIXTHUCxBHQBDglkb3L5lK9WHPf1puQ2grNbUg9VSmo4a9IzUpRauNtCDUFxi
 1m1e5VnmU5O5/xZyDzwmpWog9tUfScS7X9pdVNQ+2W3zCRrotFEn6FKdD01mhIsLnczjABEB
 AAG0IkRhdmlkIEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD6JAVkEEwEIAEMCGwMHCwkI
 BwMCAQYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRhu
 BQkIy2cnAAoJELqzlxS0pLh4It8IALb1ea/ezwy8v65zmTeIepeuO5umWzWIy7fLaAsxzJbH
 rO6rCTnRN5ZLyzuxNlhYMyvXAJL7kmPuEOOzHk5xh3soV24VZLSryzGeB6TG3g8L6D0guJ72
 JMM/2HGP8g1zu/IfIM94DZJk7WEuRKG5sndZp49s/voKhrMqAvAU4G03knpEN5SbJx5RA/Wf
 i5stipz2vqS87jHgOVTL1m67Wg9jhKuzJbSlt+m8rHZCQ9dCQQLtqbHugnyOrFhKxwfGFEMB
 aV0sKwoBfjtWP/g3kb9L5wOvRj8UnDRLTB/fVnOsMD18ILEiNqc6FCh4hIb4y2QQEc0nb68f
 imjr4Hz7TOe5AQ0EViQYRwEIALqz1V6kWIvCTVN/6QN9fepVSwSw+5IiiVBGtf2rtdqujCRD
 bGi96a2ZLYRQzlSQvCZ51skgoZFmIW2YhPP90qiZssSEQxgY1rf+DEYnjWmFSgi3iHqYXRk2
 cY7OI3ZT8D2tAFu9pIAxZpD5FdQznJmUhljeTJw+lGOoxctf1xjHZcRcU6GUFMpFBc4xaLC0
 hUN24HT5pDpklxskPFH91VncDaOsLesqszGaUHWx3hogRfogdADvycUp/bQB80kZO/XqexWN
 GUNJYS4axWM2ND25bWV1h9aFjPpOwFM7FwAyra0VihnnNn7dTL5vBpFztY0IFPlvqyc1Vw8y
 vgtShA0AEQEAAYkBPAQYAQgAJgIbDBYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRiFBQkI
 y2c+AAoJELqzlxS0pLh4LIcH/jnL+ytxRSAh8VX3U2xrMOhBFOkJbW9fj6UgE2iFfZUEOBZl
 q6fZTYn1LOTOECrnLC6eNUQsnZ2u+/N93I5Fmof0MIICUbVabEVmbF/jCFkKjrTPFv/DbNZy
 c+X2ugyX7LsJT+CdvtPT9fObTLCS1nQc3G49syEGVEIzPNyIFzJbFLyh1AfRxmnzAwlal6xK
 S82CsKe+n2lwWg2dyyoJYqwM2G6hAg/ZFqRBZ1RH6TsACGMnwvmsfW/871mPt/mOTCDoH1s1
 tcsgxxtD87UnEqA4zL8dqi5uRA82ZznWaq3mzOGKcBkgEcxi8nnQWW+EyTiZWC+wJ9xT4kLh
 z03IzJQ=
Message-ID: <eb323eda-f46d-671a-0045-6f1eb6f80a63@david-bauer.net>
Date: Mon, 6 May 2019 15:04:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506091512.5578-1-markus@mscheck.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_060412_505967_393C478D 
X-CRM114-Status: GOOD (  28.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for Xiaomi Mi
 Router 4A (100M Edition)
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Markus,

see my comments inline:

On 06.05.19 11:15, Markus Scheck wrote:
> - SoC:      MediaTek MT7628AN
> - Flash:    16MB (Winbond W25Q128JV)
> - RAM:      64MB
> - Serial:   As marked on PCB, 3V3 logic, baudrate is 115200
> - Ethernet: 3x 10/100 Mbps (switched, 2x LAN + WAN)
> - WIFI0:    MT7628AN 2.4GHz 802.11b/g/n
> - WIFI1:    MT7612EN 5GHz 802.11ac
> - Antennas: 4x external (2 per radio), non-detachable
> - LEDs:     Programmable power-LED (two-colored, yellow/blue)
>             Non-programmable internet-LED (shows WAN-activity)
> - Buttons:  Reset
> 
> INSTALLATION:
> 
> 1. Connect to the serial port of the router and power it up.
>    If you get a prompt asking for boot-mode, go to step 3.
> 2. Unplug the router after
>        > Erasing SPI Flash...
>        > raspi_erase: offs:20000 len:10000
>    occurs on the serial port. Plug the router back in.
> 3. At the prompt select option 2 (Load system code then
>    write to Flash via TFTP.)
> 4. Enter 192.168.1.1 as the device IP and 192.168.1.2 as the
>    Server-IP.
> 5. Connect your computer to LAN1 and assign it as 192.168.1.2/24.
> 6. Rename the sysupgrade image to test.bin and serve it via TFTP.
> 7. Enter test.bin on the serial console and press enter.
> 
> Signed-off-by: Markus Scheck <markus@mscheck.de>
> ---
>  .../ramips/base-files/etc/board.d/02_network  |   4 +
>  target/linux/ramips/base-files/lib/ramips.sh  |   3 +
>  target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts | 147 ++++++++++++++++++
>  target/linux/ramips/image/mt76x8.mk           |   8 +
>  4 files changed, 162 insertions(+)
>  create mode 100644 target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts
> 
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
> index c2646876a2..29a1e7b54c 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -450,6 +450,10 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
>  		;;
> +	xiaomi,mir4a-100m)
> +		ucidef_add_switch "switch0" \
> +			"4:lan:1" "2:lan:2" "0:wan" "6t@eth0"
> +		;;

You can replace "6t@eth0" with "6@eth0". Tagging is always used by default.

>  	zbtlink,zbt-we1226|\
>  	y1)
>  		ucidef_add_switch "switch0" \
> diff --git a/target/linux/ramips/base-files/lib/ramips.sh b/target/linux/ramips/base-files/lib/ramips.sh
> index 093303892c..a9e7e746cd 100755
> --- a/target/linux/ramips/base-files/lib/ramips.sh
> +++ b/target/linux/ramips/base-files/lib/ramips.sh
> @@ -649,6 +649,9 @@ ramips_board_detect() {
>  	*"X8")
>  		name="x8"
>  		;;
> +	*"Xiaomi Mi Router 4A (100M Edition)")
> +		name="xiaomi,mir4a-100m"
> +		;;
>  	*"Y1")
>  		name="y1"
>  		;;

You can completely omit this change in ramips.sh. By default, the
boardname is extracted from the machines compatible-string in it's
device-tree. :)

> diff --git a/target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts b/target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts
> new file mode 100644
> index 0000000000..b843bb203e
> --- /dev/null
> +++ b/target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts
> @@ -0,0 +1,147 @@
> +//SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7628an.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible = "xiaomi,mir4a-100m", "mediatek,mt7628an-soc";
> +	model = "Xiaomi Mi Router 4A (100M Edition)";
> +
> +	chosen {
> +		bootargs = "console=ttyS0,115200";
> +	};
> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x4000000>;
> +	};
> +
> +	aliases {
> +		led-boot = &power_yellow;
> +		led-failsafe = &power_yellow;
> +		led-running = &power_blue;
> +		led-upgrade = &power_yellow;
> +	};

This might be a matter of personal preference, but i would use the blue
indicator for led-boot instead of the yellow one.

> +
> +	gpio-leds {

Rename the node (not the compatible) from 'gpio-leds' to 'leds'.

> +		compatible = "gpio-leds";
> +
> +		power_blue: power_blue {
> +			label = "mir4a-100m:blue:power";
> +			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		power_yellow: power_yellow {
> +			label = "mir4a-100m:yellow:power";
> +			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	gpio-keys {

Rename the node (not the compatible) from 'gpio-keys' to 'keys'.

> +		compatible = "gpio-keys-polled";
> +		poll-interval = <20>;
> +
> +		reset {
> +			label = "reset";
> +			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +		};
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
> +				label = "bootloader";
> +				reg = <0x0 0x20000>;
> +				read-only;
> +			};
> +
> +			partition@20000 {
> +				label = "config";
> +				reg = <0x20000 0x10000>;
> +				read-only;
> +			};
> +
> +			factory: partition@30000 {
> +				label = "factory";
> +				reg = <0x30000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@40000 {
> +				label = "crash";
> +				reg = <0x40000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@50000 {
> +				label = "cfg_bak";
> +				reg = <0x50000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@60000 {
> +				label = "overlay";
> +				reg = <0x60000 0x100000>;
> +				read-only;
> +			};
> +
> +			partition@160000 {
> +				compatible = "denx,uimage";
> +				label = "firmware";
> +				reg = <0x160000 0xea0000>;
> +			};
> +		};
> +	};
> +};
> +
> +&pcie {
> +	status = "okay";
> +
> +	pcie-bridge {
> +		mt76@0,0 {
> +			reg = <0x0000 0 0 0 0>;
> +			device_type = "pci";
> +			mediatek,mtd-eeprom = <&factory 0x8000>;
> +			mediatek,2ghz = <0>;
> +		};
> +	};
> +};

Commit f9b8328d794473fcd044197ec64abf87761793e4 reworked how PCIe nodes
are referenced. Instead of recreating the whole hierarchy, try something
like

&pcie {
	status = "okay";
};

&pcie0 {
	wifi@0,0 {
		[...]
	};
};

Note how 'mt76@0,0' switched wo the more generic 'wifi@0,0'.

> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group = "gpio";
> +			ralink,function = "gpio";

You have to specify which pins should work in GPIO mode. You can omit
the gpio pin here, as by itself it is already set to GPIO mode.

Instead you need to specify 'ralink,function = "gpio"' for the "wdt" and
"wled_an" pingroup.

Take a look at the MT7628 datasheet (Google). On Page 23/24 you will see
the Pin-Sharing scheme. GPIO0-GPIO31 are gpio0, GPIO32-GPIO63 are gpio1.

> +		};
> +	};
> +};
> +
> +&ethernet {
> +	pinctrl-names = "default";

As you did not specify any pins, this definition should be removed. I'm
also pretty sure you do not need to specify pins for the ethernet driver.

> +	mtd-mac-address = <&factory 0x28>;
> +};
> +
> +&esw {
> +	mediatek,portmap = <0x2f>;
> +	mediatek,portdisable = <0x2a>;
> +};
> +
> +&wmac {
> +	status = "okay";
> +};

The reference to the caldata seems to be missing here. Usually, it is
saved at 0x0 on the factory partition, however the MAC address should
map to 0x04 in this case.

> diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
> index 571ddf3d51..82659254cb 100644
> --- a/target/linux/ramips/image/mt76x8.mk
> +++ b/target/linux/ramips/image/mt76x8.mk
> @@ -446,6 +446,14 @@ define Device/wrtnode2r
>  endef
>  TARGET_DEVICES += wrtnode2r
>  
> +define Device/xiaomi_mir4a-100m
> +  DTS := XIAOMI-MIR4A-100M
> +  IMAGE_SIZE := $(ralink_default_fw_size_16M)

IMAGE_SIZE should match the size of the "firmware" partition.
ralink_default_fw_size_16M is defined as 16121856 (F60000) bytes, so
this does not match for your board.

In you case, the firmware parttion is 14976kb large.

> +  DEVICE_TITLE := Xiaomi Mi Router 4A (100M Edition)
> +  DEVICE_PACKAGES := kmod-mt76x2
> +endef
> +TARGET_DEVICES += xiaomi_mir4a-100m
> +
>  define Device/zbtlink_zbt-we1226
>    DTS := ZBT-WE1226
>    IMAGE_SIZE := $(ralink_default_fw_size_8M)
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
