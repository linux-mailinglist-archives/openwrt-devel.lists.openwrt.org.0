Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB06151294
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 23:51:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LhnH61pXc93y8kU2r3NzFZ85EDNkL0rKpCrhJJUk884=; b=Ic5p8cRJ2vMG6FxGf9qgheZcA
	FhMUqwKX24NNK6Nn7wexpN2lb5R/QbtYC5i4IMh0IhAmaabpOu5Q+3hBgywg960sr5DAMexncALqq
	p58kTsPNdfHTgoJs8p1b+AknvSRxfMs3bfA49lfGQYH7yAd7M0K3oSXHUQdrXgpgqXVNqtWsB1CNB
	RhPaOot8SvLgDxBbSsDnHz6Zetrsy1hNxFZrVpEjcE/tSqhk5EIHdIM9ozO5T1K0cHdQO824D42Sd
	whCfr7DIMTfnZWC0UJXttDck4WG+LtoLwhy7gv5gsDMDR1WhRldyYAws/1T1xVYZZj1JJj6dBhOeo
	wMmtEc19g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iykZD-0006Iy-OP; Mon, 03 Feb 2020 22:51:43 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iykZ3-0006IS-Nm
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 22:51:36 +0000
Received: by mail-lf1-x12d.google.com with SMTP id y19so10869704lfl.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 03 Feb 2020 14:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C52yqfETjABL9DJ5nbsWrxCLodXgZuNB6WEYNbhPiJw=;
 b=lopTi5NkvWls3ZPyh0W8kGS0kqrLamSXNi4D0xAEC7PD532hi9TVFF1d+Ekpg/CUBF
 CsKwXOpAY+ZpF8M4EzNrruH2VQwvr8rAiUEOYG/gXtJtc6cTL08a9AHj1WjdTAMgJnDw
 PvkYo04z2tO637UDNOYwWvsrzV1nufVastgzyn8cG9NfyGm6ryTbx2PAkPZfmHVRRJ1L
 uWkdD+BOlblcPAIZ7uxoF8X7WImRdcZ74SH7pUpdnKVTPyQSLfdS2oWdyo0r5rPF62Q4
 DzFP8XTP0nLF2ZRkPyEskQR6bnYPQO14Sq5a5Y9iRJTFJbHvrE9Ky6SY1fmrpb3UVXa8
 Q1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C52yqfETjABL9DJ5nbsWrxCLodXgZuNB6WEYNbhPiJw=;
 b=rfvzI6Z+83ZuTc2sYb1YgC3ZFRCAVnZ+6bcVLxxH6YNdXAturlOcwyJDbkJk8axXnr
 QoNFROxGbKT8z4ObMsN0qFJBd+1mAWK4ZSsd2hafcIbGxGIS0QUP7ElShrzSbvQj1pSN
 xRMoM9GScYIvkPYsk1oj2kb5BYBRZWcrBJmmcc2RdD5b9LIQoh2vRsxLANbm/vxVfDpv
 gSMX0DQmGVyDF0II/tO/dwUOTLeZQKq2iYNMlJwFyv+8W/rfiKR6iHY2Z5IH71mzvqvo
 XpFZgiiNgC3BzBlrQrsRm4X0Th3M1r83qcODOaKFGjK4K+vc2rQCTBCS+4Kmf3RkiKTI
 Ez5A==
X-Gm-Message-State: APjAAAWw73i+rMIwCRhZhvaEdbwoDZPdrpriyYQLJlmmeQRh0tRZYSnR
 LuD8Qujg9wXqmeP94NcLivE=
X-Google-Smtp-Source: APXvYqw/fF1+zAKoF0iw/8cM8D5JdSaT5NOxRuSO36MB+nHnNVYbowQpvP9jXV0oCDt7S6Z8hTlM1Q==
X-Received: by 2002:a05:6512:15d:: with SMTP id
 m29mr13397442lfo.51.1580770291264; 
 Mon, 03 Feb 2020 14:51:31 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id z13sm10401047ljh.21.2020.02.03.14.51.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Feb 2020 14:51:30 -0800 (PST)
From: Piotr Dymacz <pepe2k@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>, openwrt-devel@lists.openwrt.org
References: <20200202163756.GA9941@makrotopia.org>
Message-ID: <78ab693a-0913-e70b-e7b4-557cb51df386@gmail.com>
Date: Mon, 3 Feb 2020 23:51:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200202163756.GA9941@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_145133_802975_2A69A1BB 
X-CRM114-Status: GOOD (  34.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for Teltonika
 RUT955
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Daniel, Adrian,

See my comments inline.

On 02.02.2020 17:41, Daniel Golle wrote:
> The Teltonika RUT955 is an industrial 2G/3G/4G WiFi router with
> various additional inputs and outputs.
> 
> Specification:
> 
> - 550/400/200 MHz (CPU/DDR/AHB)
> - 128 MB of RAM (DDR2)
> - 16 MB of FLASH (SPI NOR)
> - 4x 10/100 Mbps Ethernet, with passive PoE support on LAN1
> - 2T2R 2,4 GHz (AR9344)

Have you tested RF sensitivity? I remember external GPIO-driven LNA in 
RUT900 has to be defined, otherwise the radio was almost deaf.

> - built-in 3G module (example: Qutectel EC-25EU)

Typo: s/Qutectel/Quectel

I think the only 3G-based one in whole series is RUT900.
EC25E is a 4G one.

> - RS232 on D-Sub9 port (Cypress ACM via USB, /dev/ttyACM0)
> - RS422/RS485 (AR934x high speed UART, /dev/ttyATH1)
> - analog 0-9V input (MCP3221)
> - various digital inputs and outputs incl. a relay
> - 2x miniSIM slot (can be swapped via GPIO)
> - 2x RP-SMA/F (Wi-Fi), 2x SMA/F (3G), 1x GPS
> - 2x 74HC595 shift registers providing 16 GPOs
> - 12x LED (4 are driven by AR9344, 7 by 74HC595)
> - 1x button (reset)
> - DC jack for main power input (9-30 V)
> - debugging UART available on PCB edge connector
> 
> Serial console (/dev/ttyS0) pinout:
> 
> - RX: pin1 (square) on top side of the main PCB (AR9344 is on top)
> - TX: pin1 (square) on bottom side
> 
> Flash instruction:
> 
> Vendor firmware is based on OpenWrt CC release. Use the "factory" image
> directly in GUI (make sure to uncheck "keep settings") or in U-Boot web
> based recovery. To avoid any problems, make sure to first update vendor
> firmware to latest version - "factory" image was successfully tested on
> device running "RUT9XX_R_00.06.051" firmware and U-Boot "3.0.2".
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>   target/linux/ath79/dts/ar9344_tlt_rut955.dts  | 301 ++++++++++++++++++
>   .../generic/base-files/etc/board.d/02_network |   5 +
>   target/linux/ath79/image/generic.mk           |  37 +++
>   3 files changed, 343 insertions(+)
>   create mode 100644 target/linux/ath79/dts/ar9344_tlt_rut955.dts
> 
> diff --git a/target/linux/ath79/dts/ar9344_tlt_rut955.dts b/target/linux/ath79/dts/ar9344_tlt_rut955.dts
> new file mode 100644
> index 0000000000..06d18f8d26
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar9344_tlt_rut955.dts
> @@ -0,0 +1,301 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "ar9344.dtsi"
> +
> +/ {
> +	model = "Teltonika RUT955";
> +	compatible = "tlt,rut955", "qca,ar9344";

I know that Teltonika uses this prefix in their software but maybe as 
Adrian suggested, full name would fit better here? I'm fine with both.

At least, until it's in [0], we can use whatever fits.

> +
> +	aliases {
> +		serial0 = &uart;
> +		serial1 = &hs_uart;
> +		led-boot = &led_system_green;
> +		led-failsafe = &led_system_red;
> +		led-running = &led_system_green;
> +		led-upgrade = &led_system_red;
> +		label-mac-device = &eth1;
> +	};
> +
> +	i2c {
> +		compatible = "i2c-gpio";
> +		scl-gpios = <&gpio 16 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		sda-gpios = <&gpio 17 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		hwmon@4d {
> +			compatible = "microchip,mcp3221";
> +			reg = <0x4d>;
> +		};
> +	};
> +
> +	gpio_ext_spi {
> +		compatible = "spi-gpio";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmx_led_spi_gpio>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		sck-gpios = <&gpio 4 GPIO_ACTIVE_HIGH>;     // 74HC595 SRCLK (Serial Clock)
> +		mosi-gpios = <&gpio 12 GPIO_ACTIVE_HIGH>;   // 74HC595 SER (Serial)
> +		cs-gpios = <&gpio 20 GPIO_ACTIVE_HIGH>;     // 74HC595 RCLK (Register Clock)
> +		num-chipselects = <1>;
> +
> +		gpio_ext: gpio_ext@0 {
> +			compatible = "fairchild,74hc595";
> +			reg = <0>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			registers-number = <2>;
> +			spi-max-frequency = <10000000>;
> +			gpio-line-names = "signal_bar0", "signal_bar1", "signal_bar2", "signal_bar3",
> +				"signal_bar4", "status_red", "status_green", "sim_sel",
> +				"", "relay", "modem_vbus", "modem_rst",
> +				"", "", "", "";

I don't think we use this property anywhere else in ath79 (or even other 
DTS-based targets?) so far and AFAIK it doesn't have any usage before we 
start using new char dev for GPIOs (libgpiod).

Anyway, wouldn't it be more readable to at least add "led" to names of 
lines driving LEDs?

Also, maybe it would make sense to provide access to SIM select and 
relay lines in user-space (with gpio-export in DTS or in UCI)?

> +		};
> +	};
> +
> +	reg_usb_modem_vbus: reg_usb_modem_vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_modem_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio_ext 10 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};

IIRC, with this approach, user would need to unload USB host driver to 
be able to disable VBUS (and thus 'hard-reset' modem). I would consider 
using "gpio-export" to give user control over that, especially if it 
controls power _only_ for the modem.

Also, see (long) discussion about this subject here: [1]

> +
> +	leds {
> +		compatible = "gpio-leds";

Any reason to use h/w control on WAN/LANs LEDs instead of defining them 
as gpio-leds and thus allow users to have control on them? I suppose we 
don't have a general rule here, though.

> +
> +		signal0 {

Could you keep it the same as in RUT900? Count from 1, not 0?

> +			label = "rut955:green:signal1";
> +			gpios = <&gpio_ext 0 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		signal1 {
> +			label = "rut955:green:signal2";
> +			gpios = <&gpio_ext 1 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		signal2 {
> +			label = "rut955:green:signal3";
> +			gpios = <&gpio_ext 2 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		signal3 {
> +			label = "rut955:green:signal4";
> +			gpios = <&gpio_ext 3 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		signal4 {
> +			label = "rut955:green:signal5";
> +			gpios = <&gpio_ext 4 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		led_system_red: systemred {
> +			label = "rut955:green:red";
> +			gpios = <&gpio_ext 5 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		led_system_green: systemgreen {
> +			label = "rut955:green:system";
> +			gpios = <&gpio_ext 6 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +		};
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		reset {

Please, add here also label = "reset". I think this property is optional 
but without it, at least in debugfs (/sys/kernel/debug/gpio), it will 
get meaningless name from parent node's compat string:

gpio-15  (                    |gpio-keys           ) in  lo IRQ

> +			linux,code = <KEY_RESTART>;
> +			gpios = <&gpio 15 GPIO_ACTIVE_HIGH>;

Are you sure it's active high? In RUT900 it's set to active low: [2].

> +			debounce-interval = <60>;
> +		};
> +	};
> +};
> +
> +&gpio {
> +	gpio-line-names = "", "wan_led", "input", "mmc_cs",
> +		"leds_sck", "", "", "",
> +		"", "", "", "",
> +		"leds_mosi", "lan2_led", "lan1_led", "",
> +		"i2c_scl", "i2c_sda", "", "DIN2",
> +		"spi?", "DIN1", "lan3_led";

"spi?"?

I'm wondering if we really need this 'gpio-line-names' now?

> +};
> +
> +&ref {
> +	clock-frequency = <40000000>;
> +};
> +
> +&uart {
> +	status = "okay";
> +};
> +
> +&hs_uart {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pmx_uart2>;
> +};
> +
> +&spi {
> +	cs-gpios = <0>, <0>;
> +	num-cs = <2>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&jtag_disable_pins>, <&pmx_spi_cs1>;
> +
> +	status = "okay";
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
> +			partition@0 {
> +				label = "u-boot";
> +				reg = <0x0 0x20000>;
> +				read-only;
> +			};
> +
> +			config: partition@20000 {
> +				label = "config";
> +				reg = <0x20000 0x10000>;
> +				read-only;
> +			};
> +
> +			art: partition@30000 {
> +				label = "art";
> +				reg = <0x30000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@40000 {
> +				label = "firmware";
> +				reg = <0x40000 0xf30000>;
> +				compatible = "tplink,firmware";
> +			};
> +
> +			partition@f70000 {
> +				label = "event-log";
> +				reg = <0xf70000 0x80000>;

As Adrian wrote, this should be 0x90000 (576k, same as in RUT900).

> +			};
> +		};
> +	};
> +
> +	microsd@1 {
> +		compatible = "mmc-spi-slot";
> +		spi-max-frequency = <25000000>;
> +		reg = <1>;
> +		voltage-ranges = <3200 3400>;
> +		broken-cd;
> +		status = "disabled";
> +	};
> +};
> +
> +&usb {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	port@1 {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <1>;
> +
> +		hub_port1: port@1 { // user USB port

Maybe a "label" property would be better here instead of a comment?

> +			compatible = "usb-a-connector";
> +			reg = <1>;
> +		};
> +
> +		hub_port2: port@2 { // N/C
> +			reg = <2>;
> +		};

I'm not sure if not populated connectors should be mentioned in DTS?

> +
> +		hub_port3: port@3 { // Cypress CDC-ACM serial (RS-232 D-Sub9)

Label?

> +			reg = <3>;
> +		};
> +
> +		hub_port4: port@4 { // Quectel EC-25 modem
> +			reg = <4>;
> +			vbus-supply = <&reg_usb_modem_vbus>;
> +		};

Also "hub_portX" aren't referenced anywhere, you can drop these labels.

> +	};
> +};
> +
> +&usb_phy {
> +	status = "okay";
> +};
> +
> +&wmac {
> +	status = "okay";
> +
> +	mtd-cal-data = <&art 0x1000>;
> +	mtd-mac-address = <&config 0x0>;
> +	mtd-mac-address-increment = <2>;
> +};
> +
> +&eth1 {

Why did you change nodes order here (eth1 before eth0)?

> +	status = "okay";
> +
> +	mtd-mac-address = <&config 0x0>;
> +
> +	gmac-config {
> +		device = <&gmac>;
> +		switch-phy-swap = <0>;
> +		switch-only-mode = <1>;

Have you tested that network configuration? Enabling 'switch-only-mode' 
doesn't make sense as it will make all internal switch PHYs connect to 
GMAC1 only.

> +	};
> +};
> +
> +&eth0 {
> +	status = "okay";
> +
> +	phy-handle = <&swphy4>;
> +
> +	mtd-mac-address = <&config 0x0>;
> +	mtd-mac-address-increment = <1>;
> +};
> +
> +&builtin_switch {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pmx_leds_switch>;
> +};
> +
> +&pinmux {
> +	pmx_spi_cs1: pinmux_spi_cs1 {
> +		pinctrl-single,bits = <0x0 0x07000000 0xff000000>;
> +	};
> +
> +	pmx_led_spi_gpio: pinmux_led_spi_gpio {
> +		pinctrl-single,bits = <0x4 0x0 0xff>,
> +					<0xc 0x0 0xff>,
> +					<0x14 0x0 0xff>;
> +	};
> +
> +	pmx_leds_switch: pinmux_leds_switch {
> +		pinctrl-single,bits =  <0x0 0x00002d00 0x0000ff00>,
> +					<0xc 0x002c2b00 0x00ffff00>,
> +					<0x14 0x002a0000 0x00ff0000>;
> +	};
> +
> +	pmx_uart2: pinmux_uart2 {
> +		pinctrl-single,bits = <0x10 0x4f000000 0xff000000>,
> +				<0x3c 0x000b0000 0x00ff0000>;

I'm wondering, are these pins also configured to output and input in 
GPIO_OE and GPIO_IN registers?

> +	};
> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index 4630cf8447..4b75dc0359 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -210,6 +210,11 @@ ath79_setup_interfaces()
>   		ucidef_add_switch "switch0" \
>   			"0@eth0" "1:lan" "2:lan" "3:wan"
>   		;;
> +	tlt,rut955)
> +		ucidef_set_interface_wan "eth1"
> +		ucidef_add_switch "switch0" \
> +			"0@eth0" "2:lan:3" "3:lan:2" "4:lan:1"
> +		;;
>   	tplink,archer-a7-v5|\
>   	tplink,archer-c6-v2|\
>   	tplink,archer-c6-v2-us|\
> diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
> index 1bc7b2d68e..ab11120da8 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -36,6 +36,11 @@ define Build/addpattern
>   	-mv "$@.new" "$@"
>   endef
>   
> +define Build/append-md5sum-bin
> +	$(STAGING_DIR_HOST)/bin/mkhash md5 $@ | sed 's/../\\\\x&/g' |\
> +		xargs echo -ne >> $@
> +endef
> +
>   define Build/cybertan-trx
>   	@echo -n '' > $@-empty.bin
>   	-$(STAGING_DIR_HOST)/bin/trx -o $@.new \
> @@ -73,6 +78,17 @@ define Build/pisen_wmb001n-factory
>     rm -rf "$@.tmp"
>   endef
>   
> +define Build/teltonika-fw-fake-checksum
> +	# Teltonika U-Boot web based firmware upgrade/recovery routine compares
> +	# 16 bytes from md5sum1[16] field in TP-Link v1 header (offset: 76 bytes
> +	# from begin of the firmware file) with 16 bytes stored just before
> +	# 0xdeadc0de marker. Values are only compared, MD5 sum is not verified.
> +	let \
> +		offs="$$(stat -c%s $@) - 20"; \
> +		dd if=$@ bs=1 count=16 skip=76 |\
> +		dd of=$@ bs=1 count=16 seek=$$offs conv=notrunc
> +endef
> +
>   define Device/seama
>     KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma
>     KERNEL_INITRAMFS := $$(KERNEL) | seama
> @@ -1044,6 +1060,27 @@ define Device/sitecom_wlr-7100
>   endef
>   TARGET_DEVICES += sitecom_wlr-7100
>   
> +define Device/tlt_rut955
> +  SOC := ar9344
> +  DEVICE_TITLE := Teltonika RUT955
> +  DEVICE_PACKAGES := kmod-usb2 kmod-usb-acm  kmod-usb-net-qmi-wwan kmod-usb-serial-option kmod-hwmon-mcp3021 uqmi -uboot-envtools
> +  IMAGE_SIZE := 15552k
> +  TPLINK_HWID := 0x35000001
> +  TPLINK_HWREV := 0x1
> +  TPLINK_HEADER_VERSION := 1
> +  KERNEL := kernel-bin | append-dtb | lzma | tplink-v1-header
> +  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | uImage lzma
> +  IMAGES := sysupgrade.bin factory.bin
> +  IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs |\
> +	pad-rootfs | teltonika-fw-fake-checksum | append-string master |\
> +	append-md5sum-bin | check-size $$$$(IMAGE_SIZE)
> +  IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(BLOCKSIZE) |\
> +	append-rootfs | pad-rootfs | append-metadata |\
> +	check-size $$$$(IMAGE_SIZE)
> +  SUPPORTED_DEVICES += rut900

Please, drop this line.
I will add support for RUT900 with a separate patch.

> +endef
> +TARGET_DEVICES += tlt_rut955
> +
>   define Device/trendnet_tew-823dru
>     SOC := qca9558
>     DEVICE_VENDOR := Trendnet
> 

[0] 
https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/vendor-prefixes.yaml

[1] 
https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg49220.html

[2] 
https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/files/arch/mips/ath79/mach-rut9xx.c#L111

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
