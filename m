Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43A6140A36
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 13:53:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VBEPsygJjmpaHgrAAypEb376K8GapDFfSnvH7Zhyt9I=; b=HfegFne8kCerUx9Lo7Fc3DUqG
	4rGwo53Gyxj61czUyuqnLTB6RWbAF5ZnYYsO5/UITp6NrOWWwuMMHkQ18tAp1mMo5UyC4bJuxbca5
	zT1fjdt4DRo8ADm+SAyotNFAAnP7he4t+WONsQYdZDGR8MuXvnCbRRodlAGovZfUWcRSnBQwJm6Og
	w2+exRQCDDEPXni6lrtrb7PmqJBGNU3AZ1uVdJiUeDNYKv5SwYmGWwlkof2S2BowxKp6NbOoXD1L2
	lsMWdIV9WFdNkaLlDFaTGxKnp7bRidJbMmjAcVL342pZQWnp1dmLDwJEC3cu2jMjKeQ45f4sKqtAw
	xPHEg02Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isR85-0003fO-U5; Fri, 17 Jan 2020 12:53:37 +0000
Date: Fri, 17 Jan 2020 13:53:12 +0100
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20200117121552.2225-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200117121552.2225-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Message-ID: <mailman.25518.1579265608.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Filip Moc via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org, Enrico Mioso <mrkiko.rs@gmail.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Filip Moc <lede@moc6.cz>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH v4] ath79: add support for TP-Link
 TL-MR6400
Content-Type: multipart/mixed; boundary="===============5286563987152119438=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5286563987152119438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5286563987152119438==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from hosting.moc6.cz ([2a02:c60:c70:8900::1] helo=moc6.cz)
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isR7t-0003Y7-Hi
	for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 12:53:27 +0000
Received: by moc6.cz (Postfix, from userid 1025)
	id 14A492320020; Fri, 17 Jan 2020 13:53:12 +0100 (CET)
Date: Fri, 17 Jan 2020 13:53:12 +0100
From: Filip Moc <lede@moc6.cz>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Cc: openwrt-devel@lists.openwrt.org, Enrico Mioso <mrkiko.rs@gmail.com>
Subject: Re: [PATCH v4] ath79: add support for TP-Link TL-MR6400
Message-ID: <20200117125312.GA17767@moc6.cz>
References: <20200117121552.2225-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200117121552.2225-1-freifunk@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_045325_742849_926709ED 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record

Hi, 

thanks for patch. Good to see support for MR6400 possibly going to ath79.

Just to clarify known issues.
The first two issues are both just the same thing.
Problem with interface showing always as up with carrier is with eth0, not eth1
(eth0 is LAN1 to LAN3, eth1 is LAN4/WAN).

Filip


On Fri, Jan 17, 2020 at 01:15:52PM +0100, Adrian Schmutzler wrote:
> From: Enrico Mioso <mrkiko.rs@gmail.com>
> 
> This device is an LTE router supported in ar71xx so far.
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
> Known issues:
> - LTE module does not always come up during boot. This can be fixed by turning
>   it off and on again.
> - As it happened occasionally in ar71xx, during bursty flash activity, LTE
>   module init will fail, with USB enumeration errors.
> - eth1 (LAN) always shows carrier as 1 even if no cable is plugged in (this
>   works "correctly" on ar71xx)
> 
> Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
> [rebase and several adjustments]
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Tested-by: Filip Moc <lede@moc6.cz>
> ---
>  .../ath79/dts/qca9531_tplink_tl-mr6400-v1.dts | 167 ++++++++++++++++++
>  .../generic/base-files/etc/board.d/01_leds    |   5 +
>  .../generic/base-files/etc/board.d/02_network |   5 +
>  target/linux/ath79/image/generic-tp-link.mk   |  12 ++
>  4 files changed, 189 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> 
> diff --git a/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> new file mode 100644
> index 0000000000..7299257cda
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> @@ -0,0 +1,167 @@
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
> +		label-mac-device = &wmac;
> +	};
> +
> +	leds {
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
> +			label = "RF kill button";
> +			linux,code = <KEY_RFKILL>;
> +			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
> +			debounce-interval = <60>;
> +		};
> +	};
> +
> +	gpio-export {
> +		compatible = "gpio-export";
> +
> +		gpio_usb_power {
> +			gpio-export,name = "tp-link:power:lte";
> +			gpio-export,output = <0>;
> +			gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
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
> +
> +	num-cs = <1>;
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <25000000>;
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
> +
> +	phy-handle = <&swphy0>;
> +
> +	mtd-mac-address = <&uboot 0x1fc00>;
> +	mtd-mac-address-increment = <1>;
> +};
> +
> +&eth1 {
> +	mtd-mac-address = <&uboot 0x1fc00>;
> +	mtd-mac-address-increment = <(-1)>;
> +};
> +
> +&wmac {
> +	status = "okay";
> +
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
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index de4e8b4a7f..1023ba7a39 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -215,6 +215,11 @@ tplink,re450-v2)
>  	ucidef_set_led_netdev "lan_data" "LAN Data" "tp-link:green:lan_data" "eth0" "tx rx"
>  	ucidef_set_led_netdev "lan_link" "LAN Link" "tp-link:green:lan_link" "eth0" "link"
>  	;;
> +tplink,tl-mr6400-v1)
> +	ucidef_set_led_switch "lan" "LAN" "tp-link:white:lan" "switch0" "0x0e"
> +	ucidef_set_led_netdev "wan" "WAN" "tp-link:white:wan" "eth1"
> +	ucidef_set_led_netdev "4g" "4G" "tp-link:white:4g" "usb0"
> +	;;
>  tplink,tl-wr842n-v2)
>  	ucidef_set_led_netdev "wan" "WAN" "tp-link:green:wan" "eth1"
>  	ucidef_set_led_switch "lan1" "LAN1" "tp-link:green:lan1" "switch0" "0x04"
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index a96b504d5a..0bae9dc384 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -236,6 +236,11 @@ ath79_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "2:lan:3" "3:lan:2" "4:lan:1" "1:wan"
>  		;;
> +	tplink,tl-mr6400-v1)
> +		ucidef_set_interfaces_lan_wan "eth0.1 eth1" "usb0"
> +		ucidef_add_switch "switch0" \
> +			"0@eth0" "1:lan:1" "2:lan:3" "3:lan:2"
> +		;;
>  	tplink,tl-wr842n-v2)
>  		ucidef_set_interface_wan "eth1"
>  		ucidef_add_switch "switch0" \
> diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
> index a7266f05a9..53138e343b 100644
> --- a/target/linux/ath79/image/generic-tp-link.mk
> +++ b/target/linux/ath79/image/generic-tp-link.mk
> @@ -374,6 +374,18 @@ define Device/tplink_re450-v2
>  endef
>  TARGET_DEVICES += tplink_re450-v2
>  
> +define Device/tplink_tl-mr6400-v1
> +  $(Device/tplink-8mlzma)
> +  SOC := qca9531
> +  DEVICE_MODEL := TL-MR6400
> +  DEVICE_VARIANT := v1
> +  TPLINK_HWID := 0x64000001
> +  DEVICE_PACKAGES := kmod-usb2 kmod-usb-net kmod-usb-net-rndis kmod-usb-serial \
> +	kmod-usb-serial-option adb-enablemodem
> +  SUPPORTED_DEVICES += tl-mr6400
> +endef
> +TARGET_DEVICES += tplink_tl-mr6400-v1
> +
>  define Device/tplink_tl-wdr3500-v1
>    $(Device/tplink-8mlzma)
>    SOC := ar9344
> -- 
> 2.20.1
> 


--===============5286563987152119438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5286563987152119438==--
