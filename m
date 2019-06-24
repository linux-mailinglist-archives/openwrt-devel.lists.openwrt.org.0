Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 554EF51BDE
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 22:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JzZ5ATEvWDnZNGFt5gXR5wkS7xCG3FK8P+U+eQV8Jto=; b=ltLy3yf7lzaUc7UTPVaevYdvY
	ApTu3GPfgvxBUw7McrfQp6/rte+wEfWO6ywUT2/cXUFUmaYxfyUwyGqEVzbnSNV1uizM4g6EgmQCB
	TF9f89ijAULNmeNGs4n846SLdenUbWT5fp+gD/6TmWhfgdtKehZi3CjNwvblCmPwt4iW/hWHGhAXM
	8sYAer+HiWwUUMy2N0yEOtO8f9lct4rC9HOnfWYTFnfnBufxtZcP8H3rym9ftoKE/c/uHg2tGPltD
	58gY+LfxC0crtSyQsyCNyDCPJeqFwx7Nv513lnxdxVIoLanbJFUCs3fpnSsufc9kpdzUe5aEvWjML
	KqqN0WrKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfV8x-0002EM-ES; Mon, 24 Jun 2019 20:00:47 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfV8Q-0001nI-06
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 20:00:16 +0000
Received: from [IPv6:2003:e5:3f06:a00:25ea:b454:2383:93e9]
 (p200300E53F060A0025EAB454238393E9.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f06:a00:25ea:b454:2383:93e9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id A856322846;
 Mon, 24 Jun 2019 22:00:06 +0200 (CEST)
To: Christian Lamparter <chunkeey@gmail.com>
References: <20190624123157.2437-1-mail@david-bauer.net>
 <2106121.d8lVLhYgiR@debian64>
From: David Bauer <mail@david-bauer.net>
Message-ID: <312a0f5f-d712-dcfd-a07f-c2215d90002b@david-bauer.net>
Date: Mon, 24 Jun 2019 22:00:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <2106121.d8lVLhYgiR@debian64>
Content-Language: en-IE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130014_784403_D6DC54E6 
X-CRM114-Status: GOOD (  25.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for ASUS RT-AC57U
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Christian,

On 24.06.19 21:19, Christian Lamparter wrote:
> On Monday, June 24, 2019 2:31:57 PM CEST David Bauer wrote:
> 
> Some comments below.
> 
>> diff --git a/target/linux/ramips/dts/RT-AC57U.dts b/target/linux/ramips/dts/RT-AC57U.dts
>> --- /dev/null
>> +++ b/target/linux/ramips/dts/RT-AC57U.dts
>> @@ -0,0 +1,150 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>> +/dts-v1/;
>> +
>> +#include "mt7621.dtsi"
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +
>> +/ {
>> +	compatible = "asus,rt-ac57u", "ralink,mt7620a-soc";
> "mediatek,mt7621-soc" ?

Whoops, you are right.  I will change this to

"mediatek,mt7621-soc"

> (From what I know, the machine compatible isn't important
> but the ralink,mt7620a-soc looks odd)
> 
>> +	model = "ASUS RT-AC57U";
>> +
>> +	aliases {
>> +		led-boot = &led_power;
>> +		led-failsafe = &led_power;
>> +		led-running = &led_power;
>> +		led-upgrade = &led_power;
>> +	};
>> +
>> +	memory@0 {
>> +		device_type = "memory";
>> +		reg = <0x0 0x8000000>;
>> +	};
>> +
>> +	chosen {
>> +		bootargs = "console=ttyS0,57600";
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +
>> +		led_power: power {
>> +			label = "rt-ac57u:blue:power";
>> +			gpios = <&gpio1 16 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		usb {
>> +			label = "rt-ac57u:blue:usb";
>> +			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
>> +			trigger-sources = <&ehci_port2>;
>> +			linux,default-trigger = "usbport";
>> +		};
>> +	};
>> +
>> +	keys {
>> +		compatible = "gpio-keys-polled";
> The MT7261 should support interrupt-supported gpio-keys.

I will try your suggestion, however i suspect we will face the same 
issues we have on the ath79 platform currently.

While we are at it - i haven't forgotten about this one but due to 
hardware issues, testing is currently a bit cumbersome.

> 
>> +		poll-interval = <20>;
>> +
>> +		wps {
>> +			label = "wps";
>> +			gpios = <&gpio1 11 GPIO_ACTIVE_HIGH>;
>> +			linux,code = <KEY_WPS_BUTTON>;
>> +		};
>> +
>> +		reset {
>> +			label = "reset";
>> +			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
>> +			linux,code = <KEY_RESTART>;
>> +		};
>> +	};
>> +
>> +	led-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "LED-Power";
>> +		gpio = <&gpio1 14 GPIO_ACTIVE_LOW>;
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		regulator-always-on;
> Just curious, is this regulator related to ASUS "Night mode"
> feature? Also did you measure the voltages or is there a
> 3v3 LED driver on the board?

I suppose it is as the PHY LEDs seem to be controlled in hardware and so 
can't be toggled from software. The voltage is the one that goes to the 
LEDs.

Thinking about this, do you think we are better off using a "fake" LED 
for this that we set default on? A user is then able to turn off even 
the LEDs we can't control in software. We could name it something like 
"rt-ac57u:power:led". However, this would violate the naming scheme.

What do you think?

> 
>> +	};
>> +};
>> +
>> +&spi0 {
>> +	status = "okay";
>> +
>> +	flash@0 {
>> +		compatible = "jedec,spi-nor";
>> +		reg = <0>;
>> +		spi-max-frequency = <10000000>;
> I haven't said much about the spi-max-frequencies before
> but from what I know thanks to the threads like
> "ramips: Increase GB-PC1 SPI frequency to 80MHz" the original
> these values are off. And once the target switches to 4.19 (and
> uses the upstream mt7621a.dtsi + spi-driver) this needs to be
> reworked on all devices I think

I just head a quick look over this thread and the driver. I might be 
missing something, but shouldn't the spi bus run with 10 MHz in this case?

I don't doubt that we might be able to run higher frequencies, but the 
issue you pointed out in the thread seems to only apply to frequencies > 
25MHz.

Shall i test if the device runs with the current max of 25MHz and change 
the frequency accordingly?

> 
>> +
>> +		partitions {
>> +			compatible = "fixed-partitions";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			partition@0 {
>> +				label = "u-boot";
>> +				reg = <0x0 0x30000>;
>> +				read-only;
>> +			};
>> +
>> +			partition@30000 {
>> +				label = "config";
>> +				reg = <0x30000 0x10000>;
>> +				read-only;
>> +			};
>> +
>> +			factory: partition@40000 {
>> +				label = "factory";
>> +				reg = <0x40000 0x10000>;
>> +				read-only;
>> +			};
>> +
>> +			partition@50000 {
>> +				compatible = "denx,uimage";
>> +				label = "firmware";
>> +				reg = <0x50000 0xfb0000>;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&pcie {
>> +	status = "okay";
>> +};
>> +
>> +&pcie0 {
>> +	wifi@0,0 {
>> +		reg = <0x0000 0 0 0 0>;
> Please add a compatible. (Binding text lists the right one).

Thanks, will do.

> 
>> +		mediatek,mtd-eeprom = <&factory 0x8000>;
>> +
>> +		led {
>> +			led-sources = <2>;
>> +			led-active-low;
>> +		};
>> +	};
>> +};
>> +
>> +&pcie1 {
>> +	wifi@0,0 {
>> +		reg = <0x0000 0 0 0 0>;
> Please add a compatible. (Binding text lists the right one).

Thanks, will do.

Best wishes
David

>> +		mediatek,mtd-eeprom = <&factory 0x0000>;
>> +
>> +		led {
>> +			led-active-low;
>> +		};
>> +	};
>> +};
>> +
>> +&ethernet {
>> +	mtd-mac-address = <&factory 0x4e000>;
>> +};
>> +
>> +&pinctrl {
>> +	state_default: pinctrl0 {
>> +		gpio {
>> +			ralink,group = "sdhci";
>> +			ralink,function = "gpio";
>> +		};
>> +	};
>> +};
> 
> Cheers,
> Christian
> 
> 
> 
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
