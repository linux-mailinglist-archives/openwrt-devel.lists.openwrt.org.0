Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC92CEE81
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 23:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yyHEe1j3NiOC4lHBGm3Nys5UUROEXJEpH+z4YM+PI1A=; b=Wwf3EQDDfkNmZlnMvKJ/KEbdk
	Li5m3yuTXSBSsuuq/e8MCvbhKwpxShD3HoJbdOG6Q1bC4BerXXDKssMD+qZj1l7CXxtqjlatM6e9x
	QDOOqLT/SnFTyWIgGL+wpeE+SPDrr6Z7M35B2Ql4UAneTCYcMmJOIigFko8LXa2ntbBXn3PuBNOAR
	9n+j4SBHEjr0+hX5BBc+oGk5MGzru99XLVfWPU26707bN6Bjl4SBS3eCUPF5/JFOUZ/OHe+Q9rSFh
	/Px745GSVXl/rb43PntS1A8n61GEzig74IQlStoew8pp28YctZzbbJV9L1q5XpZiOAte7fyOytwhX
	7kUkozcgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHakn-0006hj-NL; Mon, 07 Oct 2019 21:41:17 +0000
Date: Mon, 7 Oct 2019 23:40:54 +0200
To: Enrico Mioso <mrkiko.rs@gmail.com>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
In-Reply-To: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.1821.1570484470.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Filip Moc via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Filip Moc <lede@moc6.cz>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link
 TL-MR6400
Content-Type: multipart/mixed; boundary="===============7190166873203152795=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7190166873203152795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7190166873203152795==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from hosting.moc6.cz ([2a02:c60:c70:8900::1] helo=moc6.cz)
	by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHakd-0006gp-B2
	for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 21:41:09 +0000
Received: by moc6.cz (Postfix, from userid 1025)
	id B51012320030; Mon,  7 Oct 2019 23:40:54 +0200 (CEST)
Date: Mon, 7 Oct 2019 23:40:54 +0200
From: Filip Moc <lede@moc6.cz>
To: Enrico Mioso <mrkiko.rs@gmail.com>
Cc: openwrt-devel@lists.openwrt.org
Subject: Re: [PATCH V2] ath79: add support for TP-Link TL-MR6400
Message-ID: <20191007214054.GA14886@moc6.cz>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_144107_694137_AE83E8CB 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record

Hi,

I tested your v2 patch. It's working but I found some issues.

There is no adb-enablemodem so httpd on LTE module won't start.
I understand it's hardly an issue for you but most users may find it a serious
drawback when compared to ar71xx version.

There is some problem with kernel detecting that eth0 is disconnected.
It is always shown as up (with carrier) and LAN LED won't ever turn off.

If you need help to fix this let me know.

Filip


On Tue, Sep 17, 2019 at 09:30:29PM +0200, Enrico Mioso wrote:
> This device is an LTE router supported in ar71xx.
> As per original commit, hardware specifications (v1.0 EU):
> - SoC: QCA9531
> - Flash: Winbond W25Q64FV (8MiB)
> - RAM: EtronTech EM6AB160TSE-5G (64MiB)
> - Wireless: SoC platform only (2.4GHz b/g/n, 2x internal antenna)
> - Ethernet: 2NIC (3x100M + 1x100M)
> - WWAN: TP-LINK LTE MODULE (2x external detachable antenna)
> - Power: DC 12V 1A
> 
> Flashing instructions:
> You can flash via tftp recovery (serve factory image as /mr6400_tp_recovery.bin
> on 192.168.0.66/24, connect to any ethernet port and power on device while
> holding the reset button). Flashing via OEM web interface does not work.
> 
> Working:
> - Wi-Fi
> - TP-Link LTE module does it's thing (but see Notes)
> - reset/rfkill keys
> 
> Untested:
> - recovery via factory
> - leds
> 
> (I promise I'll test untested items as well in final version.)
> 
> Issues:
> switch configuration currently broken (port 2 on device is seen as port 3, port 3 as port 2).
> 
> Note: as it happened occasionally in ar71xx, during bursty flash activity, LTE module init will fail, with USB enumeration errors.
> 
> V1->V2:
> - addressed most comments, except for SUPPORTED_DEVICES
> 
> Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
> CC: Filip Moc <lede@moc6.cz>
> CC: Piotr Dymacz <pepe2k@gmail.com>
> ---
> {
> This version is not meant to be definite nor merged. I'll be laving tomorrow, and will be back sunday, so I wanted to post this version so in case you have visibility over last changes.
> Thanks!
> Enrico
> }
>  .../ath79/base-files/etc/board.d/01_leds      |   5 +
>  .../ath79/base-files/etc/board.d/02_network   |   5 +
>  .../ath79/dts/qca9531_tplink_tl-mr6400-v1.dts | 172 ++++++++++++++++++
>  target/linux/ath79/image/generic-tp-link.mk   |  10 +
>  4 files changed, 192 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> 
> diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
> index 778316e450..385ac8d9ca 100755
> --- a/target/linux/ath79/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/base-files/etc/board.d/01_leds
> @@ -130,6 +130,11 @@ tplink,archer-c7-v5)
>  	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x10"
>  	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x20"
>  	;;
> +tplink,tl-mr6400-v1)
> +	ucidef_set_led_netdev "lan" "LAN" "tp-link:white:lan" "eth0"
> +	ucidef_set_led_netdev "wan" "WAN" "tp-link:white:wan" "eth1"
> +	ucidef_set_led_netdev "4g" "4G" "tp-link:white:4g" "usb0"
> +	;;
>  tplink,archer-c2-v3|\
>  tplink,tl-wr1043nd-v4|\
>  tplink,tl-wr1043n-v5)
> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
> index 5b47af8ef7..2b0e1ce400 100755
> --- a/target/linux/ath79/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
> @@ -56,6 +56,11 @@ ath79_setup_interfaces()
>  	winchannel,wb2000)
>  		ucidef_set_interface_lan "eth0"
>  		;;
> +	tplink,tl-mr6400-v1)
> +		ucidef_set_interfaces_lan_wan "eth0.1 eth1" "usb0"
> +		ucidef_add_switch "switch0" \
> +			"0@eth0" "1:lan" "2:lan" "3:lan"
> +		;;
>  	avm,fritz4020|\
>  	pcs,cr3000|\
>  	tplink,archer-c58-v1|\
> diff --git a/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> new file mode 100644
> index 0000000000..a2c006f05e
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> @@ -0,0 +1,172 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca953x.dtsi"
> +
> +/ {
> +	compatible = "tplink,tl-mr6400-v1", "qca,qca9531";
> +	model = "TP-Link TL-MR6400 v1";
> +
> +	aliases {
> +		led-boot = &led_power;
> +		led-failsafe = &led_power;
> +		led-running = &led_power;
> +		led-upgrade = &led_power;
> +	};
> +
> +	gpio_leds: leds {
> +		compatible = "gpio-leds";
> +
> +		/* D12 */
> +		wan {
> +			label = "tp-link:white:wan";
> +			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		/* D11 */
> +		4g {
> +			label = "tp-link:white:4g";
> +			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		/* D5 */
> +		wps {
> +			label = "tp-link:white:wps";
> +			gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		/* D3 */
> +		wlan {
> +			label = "tp-link:white:wlan";
> +			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "phy0tpt";
> +		};
> +
> +		/* D2 */
> +		led_power: power {
> +			label = "tp-link:white:power";
> +			gpios = <&gpio 13 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		/* D4 */
> +		lan {
> +			label = "tp-link:white:lan";
> +			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		/* SW2 */
> +		reset {
> +			label = "Reset button";
> +			linux,code = <KEY_RESTART>;
> +			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
> +			debounce-interval = <60>;
> +		};
> +
> +		/* SW3 */
> +		rfkill {
> +			label = "RFKill button";
> +			linux,code = <KEY_RFKILL>;
> +			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
> +			debounce-interval = <60>;
> +		};
> +	};
> +};
> +
> +&uart {
> +	status = "okay";
> +};
> +
> +&spi {
> +	status = "okay";
> +	num-cs = <1>;
> +
> +	flash@0 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <10000000>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			uboot: partition@0 {
> +				label = "u-boot";
> +				reg = <0x000000 0x020000>;
> +				read-only;
> +			};
> +
> +			partition@20000 {
> +				compatible = "tplink,firmware";
> +				label = "firmware";
> +				reg = <0x020000 0x7d0000>;
> +			};
> +
> +			art: partition@7f0000 {
> +				label = "art";
> +				reg = <0x7f0000 0x010000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status = "okay";
> +	phy-mode = "mii";
> +	phy-handle = <&swphy0>;
> +
> +	mtd-mac-address = <&uboot 0x1fc00>;
> +	mtd-mac-address-increment = <1>;
> +
> +	gmac-config {
> +		device = <&gmac>;
> +		switch-phy-swap = <1>;
> +		switch-phy-addr-swap = <1>;
> +	};
> +};
> +
> +&eth1 {
> +	status = "okay";
> +	mtd-mac-address = <&uboot 0x1fc00>;
> +	mtd-mac-address-increment = <(-1)>;
> +};
> +
> +&wmac {
> +	status = "okay";
> +	mtd-cal-data = <&art 0x1000>;
> +	mtd-mac-address = <&uboot 0x1fc00>;
> +};
> +
> +&usb0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	hub_port: port@1 {
> +		reg = <1>;
> +		#trigger-source-cells = <0>;
> +	};
> +};
> +
> +&usb_phy {
> +	status = "okay";
> +};
> +
> +&gpio {
> +	lte_power {
> +		gpio-hog;
> +		gpios = <4 GPIO_ACTIVE_HIGH>;
> +		output-low;
> +		line-name = "tp-link:power:LTE";
> +	};
> +};
> diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
> index 5519e9c960..78d7810f29 100644
> --- a/target/linux/ath79/image/generic-tp-link.mk
> +++ b/target/linux/ath79/image/generic-tp-link.mk
> @@ -393,6 +393,16 @@ define Device/tplink_tl-wr810n-v1
>  endef
>  TARGET_DEVICES += tplink_tl-wr810n-v1
>  
> +define Device/tplink_tl-mr6400-v1
> +  $(Device/tplink-8mlzma)
> +  ATH_SOC := qca9531
> +  DEVICE_MODEL := TL-MR6400
> +  DEVICE_VARIANT := v1
> +  TPLINK_HWID := 0x64000001
> +  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-net kmod-usb-net-rndis kmod-usb-serial kmod-usb-serial-option adb
> +endef
> +TARGET_DEVICES += tplink_tl-mr6400-v1
> +
>  define Device/tplink_tl-wr810n-v2
>    $(Device/tplink-8mlzma)
>    ATH_SOC := qca9533
> -- 
> 2.23.0
> 


--===============7190166873203152795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7190166873203152795==--
