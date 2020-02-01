Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512F714F77E
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Feb 2020 11:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MTevdb9weXFWk0yL6WWCHg5It0jUJPiVlW9183muOfY=; b=amEvcBPwhIGU/0XH2GIishQUV
	6mW+3zJfc48cArnk5b6ahpfc3zM9+9q/mkU7s/t5l7+pa7WkSGVp4kbJEyaIy8pW3GFUyGZjN1MJV
	pM8pixj8HvY4c7C016jqn12UvW393jo1weQ/0t9eZWnJr41vOsNm//uXG1wUE2MWAB0De2PF8YFaS
	kIJ3RsVxU6hj9XdqTmK1LGHEYNc8wDYcfvodK+ELBnHSAIBBqwk6byYYkSiu1A0rc1OETXktIO09Z
	QcHNT/37cdid+kGOb6Lci2B/4CJM7qfHqbrYxy8G8sSeIcbVjTPrsNXAqLsElg1Bl94HZXsOGkXaA
	ZDXAmfpJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixplh-0004Sr-2R; Sat, 01 Feb 2020 10:12:49 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixpla-0004SP-AC
 for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 10:12:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so11583367wrh.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 01 Feb 2020 02:12:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=z++ZS7AI60UHaGoPgtsKaluSQr39QXy/8NuUAZK9XUE=;
 b=SG+QMuPvGskty1vdrABvQSncjX9RYI78ODGMpxm1alTxXWJHTiZfvhwcbPOyqNemeJ
 vshYXuc4FPzBJrqBJnpVd8F34umudxjwkEveNyWy4XOrgMz9KQBrpjXXTAFmZ9+JVEiL
 PK61PqxPUBzvmIYqqanIOI7iNijn3qrQ3A4EPdF1BAj12AUXtkct0RCIDscuHB4vEeT+
 pbNtQYWhAkRV56IFnfGgBhpfQ4CqpW2T9J/jTe2ajXcaTZvoNlK/6WVrYDQuEfYxYvVc
 OCSCrJBenG09nC1eEisTOonG5lUcLindYN/w76WvZkJOlNIDftgysAjApkT4j8I3Y5qK
 +uZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=z++ZS7AI60UHaGoPgtsKaluSQr39QXy/8NuUAZK9XUE=;
 b=s8xALaClPDdzaDjwHzt294Px/LhkBymWowr1XtGZ4//LeJDUPYahgIulBs3h1FQMLp
 qRXR7VTIrjP9yEfU6Dzfhp1uRYJPDzT6QMXICT4rB2LiM9a1htfmEREipriBawJpVPai
 brkujpYC6wwPabfbUfhDiI9DDuzdpe5Sn5AF+cHWPHmvMgD4OXTwpd6baGE4mxYT6uPH
 xhxdaJjdQzG1kOcyCuBNZMREH3lccN1/R7kPNeIZ6B/NTG42614vJgcHK1qCJ1xO8Db9
 GTEJ8tsfe4ykFnWZVP32KNXmfkj4cDXPCQ0j3+/ax3y6pffoQ5Wx+eaJjVPoC/V21R67
 a2pw==
X-Gm-Message-State: APjAAAVhmBGhgEFwnRd36VvU5BmynwmmadV+kytqccHaop1zrzZ6PG49
 x/Ygz/tanhi1Xwns7spnttw=
X-Google-Smtp-Source: APXvYqzz80wtWKfyHqSbnveWmbgtxE0TtOEPMeFKUi2poQ42L22LR/xWpPucnDIzpyj2UeFQw8N9+Q==
X-Received: by 2002:a5d:68cf:: with SMTP id p15mr3866794wrw.31.1580551957094; 
 Sat, 01 Feb 2020 02:12:37 -0800 (PST)
Received: from gatosaldo ([95.234.185.69])
 by smtp.gmail.com with ESMTPSA id l15sm15597894wrv.39.2020.02.01.02.12.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Feb 2020 02:12:36 -0800 (PST)
Date: Sat, 1 Feb 2020 11:12:34 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Filip Moc <lede@moc6.cz>
In-Reply-To: <20200131213333.GA441@moc6.cz>
Message-ID: <alpine.LNX.2.21.99999.382.2002011109110.19430@localhost.localdomain>
References: <20200117121552.2225-1-freifunk@adrianschmutzler.de>
 <20200131213333.GA441@moc6.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_021242_381950_FBADE7D3 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.1 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [PATCH v4] ath79: add support for TP-Link
 TL-MR6400
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Filip, and all.

Thank you very very much for bringing this on. Sorry for my disappearing lately, been a little bit busy moving home.
Unfortunately I don't think I have particular findings to reveal regarding stock FW - I probably would run the original firmware and look at console to try to have an idea on what's goin' on.
Maybe:
1 - changing flash SPI frequency may impact power usage and hence modem init success rate? maybe this is completely wrong hypotetis but ...
2 - Original Firmware may init modem later on?

I think we should merge this in any case. this is a nice device after all, and having support for it in OpenWRt is worth, even with those known issues.

big big thanks to you Adrian and Filip.




On Fri, 31 Jan 2020, Filip Moc wrote:

> Date: Fri, 31 Jan 2020 22:33:33
> From: Filip Moc <lede@moc6.cz>
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org, Enrico Mioso <mrkiko.rs@gmail.com>
> Subject: Re: [PATCH v4] ath79: add support for TP-Link TL-MR6400
> 
> Hi,
>
> I tested snapshot build from "Fri Jan 31 00:17:40 2020" and except for problems
> mentioned in known issues it seems to be working fine.
>
> Filip
>
>
> On Fri, Jan 17, 2020 at 01:15:52PM +0100, Adrian Schmutzler wrote:
>> From: Enrico Mioso <mrkiko.rs@gmail.com>
>>
>> This device is an LTE router supported in ar71xx so far.
>> As per original commit, hardware specifications (v1.0 EU):
>> - SoC: QCA9531
>> - Flash: Winbond W25Q64FV (8MiB)
>> - RAM: EtronTech EM6AB160TSE-5G (64MiB)
>> - Wireless: SoC platform only (2.4GHz b/g/n, 2x internal antenna)
>> - Ethernet: 2NIC (3x100M + 1x100M)
>> - WWAN: TP-LINK LTE MODULE (2x external detachable antenna)
>> - Power: DC 12V 1A
>>
>> Flashing instructions:
>> You can flash via tftp recovery (serve factory image as /mr6400_tp_recovery.bin
>> on 192.168.0.66/24, connect to any ethernet port and power on device while
>> holding the reset button). Flashing via OEM web interface does not work.
>>
>> Known issues:
>> - LTE module does not always come up during boot. This can be fixed by turning
>>   it off and on again.
>> - As it happened occasionally in ar71xx, during bursty flash activity, LTE
>>   module init will fail, with USB enumeration errors.
>> - eth1 (LAN) always shows carrier as 1 even if no cable is plugged in (this
>>   works "correctly" on ar71xx)
>>
>> Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
>> [rebase and several adjustments]
>> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>> Tested-by: Filip Moc <lede@moc6.cz>
>> ---
>>  .../ath79/dts/qca9531_tplink_tl-mr6400-v1.dts | 167 ++++++++++++++++++
>>  .../generic/base-files/etc/board.d/01_leds    |   5 +
>>  .../generic/base-files/etc/board.d/02_network |   5 +
>>  target/linux/ath79/image/generic-tp-link.mk   |  12 ++
>>  4 files changed, 189 insertions(+)
>>  create mode 100644 target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
>>
>> diff --git a/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
>> new file mode 100644
>> index 0000000000..7299257cda
>> --- /dev/null
>> +++ b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
>> @@ -0,0 +1,167 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +
>> +#include "qca953x.dtsi"
>> +
>> +/ {
>> +	compatible = "tplink,tl-mr6400-v1", "qca,qca9531";
>> +	model = "TP-Link TL-MR6400 v1";
>> +
>> +	aliases {
>> +		led-boot = &led_power;
>> +		led-failsafe = &led_power;
>> +		led-running = &led_power;
>> +		led-upgrade = &led_power;
>> +		label-mac-device = &wmac;
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +
>> +		/* D12 */
>> +		wan {
>> +			label = "tp-link:white:wan";
>> +			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		/* D11 */
>> +		4g {
>> +			label = "tp-link:white:4g";
>> +			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		/* D5 */
>> +		wps {
>> +			label = "tp-link:white:wps";
>> +			gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		/* D3 */
>> +		wlan {
>> +			label = "tp-link:white:wlan";
>> +			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
>> +			linux,default-trigger = "phy0tpt";
>> +		};
>> +
>> +		/* D2 */
>> +		led_power: power {
>> +			label = "tp-link:white:power";
>> +			gpios = <&gpio 13 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		/* D4 */
>> +		lan {
>> +			label = "tp-link:white:lan";
>> +			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
>> +		};
>> +	};
>> +
>> +	keys {
>> +		compatible = "gpio-keys";
>> +
>> +		/* SW2 */
>> +		reset {
>> +			label = "Reset button";
>> +			linux,code = <KEY_RESTART>;
>> +			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
>> +			debounce-interval = <60>;
>> +		};
>> +
>> +		/* SW3 */
>> +		rfkill {
>> +			label = "RF kill button";
>> +			linux,code = <KEY_RFKILL>;
>> +			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
>> +			debounce-interval = <60>;
>> +		};
>> +	};
>> +
>> +	gpio-export {
>> +		compatible = "gpio-export";
>> +
>> +		gpio_usb_power {
>> +			gpio-export,name = "tp-link:power:lte";
>> +			gpio-export,output = <0>;
>> +			gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
>> +		};
>> +	};
>> +};
>> +
>> +&uart {
>> +	status = "okay";
>> +};
>> +
>> +&spi {
>> +	status = "okay";
>> +
>> +	num-cs = <1>;
>> +
>> +	flash@0 {
>> +		compatible = "jedec,spi-nor";
>> +		reg = <0>;
>> +		spi-max-frequency = <25000000>;
>> +
>> +		partitions {
>> +			compatible = "fixed-partitions";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			uboot: partition@0 {
>> +				label = "u-boot";
>> +				reg = <0x000000 0x020000>;
>> +				read-only;
>> +			};
>> +
>> +			partition@20000 {
>> +				compatible = "tplink,firmware";
>> +				label = "firmware";
>> +				reg = <0x020000 0x7d0000>;
>> +			};
>> +
>> +			art: partition@7f0000 {
>> +				label = "art";
>> +				reg = <0x7f0000 0x010000>;
>> +				read-only;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&eth0 {
>> +	status = "okay";
>> +
>> +	phy-handle = <&swphy0>;
>> +
>> +	mtd-mac-address = <&uboot 0x1fc00>;
>> +	mtd-mac-address-increment = <1>;
>> +};
>> +
>> +&eth1 {
>> +	mtd-mac-address = <&uboot 0x1fc00>;
>> +	mtd-mac-address-increment = <(-1)>;
>> +};
>> +
>> +&wmac {
>> +	status = "okay";
>> +
>> +	mtd-cal-data = <&art 0x1000>;
>> +	mtd-mac-address = <&uboot 0x1fc00>;
>> +};
>> +
>> +&usb0 {
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
>> +	status = "okay";
>> +
>> +	hub_port: port@1 {
>> +		reg = <1>;
>> +		#trigger-source-cells = <0>;
>> +	};
>> +};
>> +
>> +&usb_phy {
>> +	status = "okay";
>> +};
>> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> index de4e8b4a7f..1023ba7a39 100755
>> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> @@ -215,6 +215,11 @@ tplink,re450-v2)
>>  	ucidef_set_led_netdev "lan_data" "LAN Data" "tp-link:green:lan_data" "eth0" "tx rx"
>>  	ucidef_set_led_netdev "lan_link" "LAN Link" "tp-link:green:lan_link" "eth0" "link"
>>  	;;
>> +tplink,tl-mr6400-v1)
>> +	ucidef_set_led_switch "lan" "LAN" "tp-link:white:lan" "switch0" "0x0e"
>> +	ucidef_set_led_netdev "wan" "WAN" "tp-link:white:wan" "eth1"
>> +	ucidef_set_led_netdev "4g" "4G" "tp-link:white:4g" "usb0"
>> +	;;
>>  tplink,tl-wr842n-v2)
>>  	ucidef_set_led_netdev "wan" "WAN" "tp-link:green:wan" "eth1"
>>  	ucidef_set_led_switch "lan1" "LAN1" "tp-link:green:lan1" "switch0" "0x04"
>> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
>> index a96b504d5a..0bae9dc384 100755
>> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
>> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
>> @@ -236,6 +236,11 @@ ath79_setup_interfaces()
>>  		ucidef_add_switch "switch0" \
>>  			"0@eth0" "2:lan:3" "3:lan:2" "4:lan:1" "1:wan"
>>  		;;
>> +	tplink,tl-mr6400-v1)
>> +		ucidef_set_interfaces_lan_wan "eth0.1 eth1" "usb0"
>> +		ucidef_add_switch "switch0" \
>> +			"0@eth0" "1:lan:1" "2:lan:3" "3:lan:2"
>> +		;;
>>  	tplink,tl-wr842n-v2)
>>  		ucidef_set_interface_wan "eth1"
>>  		ucidef_add_switch "switch0" \
>> diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
>> index a7266f05a9..53138e343b 100644
>> --- a/target/linux/ath79/image/generic-tp-link.mk
>> +++ b/target/linux/ath79/image/generic-tp-link.mk
>> @@ -374,6 +374,18 @@ define Device/tplink_re450-v2
>>  endef
>>  TARGET_DEVICES += tplink_re450-v2
>>
>> +define Device/tplink_tl-mr6400-v1
>> +  $(Device/tplink-8mlzma)
>> +  SOC := qca9531
>> +  DEVICE_MODEL := TL-MR6400
>> +  DEVICE_VARIANT := v1
>> +  TPLINK_HWID := 0x64000001
>> +  DEVICE_PACKAGES := kmod-usb2 kmod-usb-net kmod-usb-net-rndis kmod-usb-serial \
>> +	kmod-usb-serial-option adb-enablemodem
>> +  SUPPORTED_DEVICES += tl-mr6400
>> +endef
>> +TARGET_DEVICES += tplink_tl-mr6400-v1
>> +
>>  define Device/tplink_tl-wdr3500-v1
>>    $(Device/tplink-8mlzma)
>>    SOC := ar9344
>> --
>> 2.20.1
>>
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
