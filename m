Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FDAB4C32
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 12:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QtNOn1ubtfbcbeUR520azdxADaWBJZWxS5Vw9P+qC/g=; b=fo6mpTPZxXvq7SyHF13tpO0U1
	BjV9efE4uMcLtgxLhHEPJyD9K1Hrwj457x14ogTAQi3VZeFfpKwik0BnI6d/DfGjaVUqiW0GwUmNV
	0bR7ELXzRl9foBXzegVKq/PQNzLHocMILDGAvmTxj7ajOKMFfLCM6dbcaJOdO01N13uI+g/gIMG8I
	hpz5s0Shx25OSa7O/ZaM5MlA9E+PtPFrZ2+2s2MoLcLXD55UkAQK1iuEpUo0MmR1953gxdJDLtrnQ
	71yvEjzTyjYvm3IjXsgQq/yi/qhFi3TkHthAXJ26kdAfwXZmEtQbIxh1K312IJipfM8XzDYU5ELtN
	ToMejlbkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAB2k-00015W-99; Tue, 17 Sep 2019 10:49:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAB2Z-00015C-25
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 10:49:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so2562899wrv.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 03:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=lSWSHLyGPMzErBCGW3jp7KoN+fhryjVs83BTCVmL/aA=;
 b=savUxBSJr16GmUn5USoIp2Qxei/SLeF7GG4V0gjo+C2toiMvU2b1/eh0qOXTwr4w4O
 kKMtQT2XKqJyf/eo16p8UMzPDCmqnIKNJ9tCvxEV0IrLCVqfMMkqF9wfvV4XfH6P30et
 ibK7KHa7yg1kCkp6aBU8mgENFQMPK0DwiM19uwImVf9oKKkIgufI+12zOpvJEMBeTJ4h
 FGu1FXvO6Toz/+oG82otr93jeej/vkl4YXk3urv9JbezldiuTuI6mXVFpV1EpISuzuuc
 GBRSUcMiwho3Rk53Gueye7at6G9HW3xdA+rldS1rwZ1PnglKX4W+qYNwMMXSVVM4h6fi
 5jUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=lSWSHLyGPMzErBCGW3jp7KoN+fhryjVs83BTCVmL/aA=;
 b=CUNFwEG1d6Zv8slf5wDdrs4VLuON04LYDEHlIm/P0ZEQ7+pqshw1c7MOEiR1iOeUS9
 igIBO2lRSp5o8/pAPm/AADOv9Ves+CdsJfvzz/GgDHp45CrDaiRU0ECEyx0UOWs5iMmt
 nuDaYzrMNueStuSm9E8e1sqLUnpA7oH+QfbErX1T5YZKSK6mH47NwM6TBomLDuiIjO6I
 W6A1gF1S/Cfw23mlrd1+qGI30BmbrkkEdiVVhty9X+kPI0bayRjCbUZj9XVmjP1DLbcc
 /3xlq6tM/JWQjKeduFUsQngbxVuOwhUXtDENi4wZwN1UEHyZdJvhhhMoRpcDb/S3f623
 Snbg==
X-Gm-Message-State: APjAAAVf9q5H0oRYugzqzDDBXQHW1PVv6AnB19eKQ/LbnG7tAbNLITbM
 tRNH69lBSnjjAqN6xdJpHpI=
X-Google-Smtp-Source: APXvYqwXC72QgkeTkje5ETlIz5TclfFvA1H6xR7umuMQYcp8S/N+yJWeoQDRYd4TA4M3OYdsdR+sZw==
X-Received: by 2002:a5d:5403:: with SMTP id g3mr2392611wrv.338.1568717337732; 
 Tue, 17 Sep 2019 03:48:57 -0700 (PDT)
Received: from mStation (host111-46-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id r12sm1817935wrq.88.2019.09.17.03.48.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 03:48:57 -0700 (PDT)
Date: Tue, 17 Sep 2019 12:48:55 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Adrian Schmutzler <mail@adrianschmutzler.de>
In-Reply-To: <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
Message-ID: <alpine.LNX.2.21.99999.353.1909171243340.1098807@mStation.localdomain>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_034859_102379_79DB8589 
X-CRM114-Status: GOOD (  27.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: Filip Moc <lede@moc6.cz>, openwrt-devel@lists.openwrt.org,
 Piotr Dymacz <pepe2k@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

thank you very very much Adrian!! I'll address all of the comments hopefully, and send a new version. In the meantime I am trying to configure the switch correctly, which is not the case.
My current snippet is:
&eth0 {
 	status = "okay";
 	phy-handle = <&swphy0>;

 	mtd-mac-address = <&uboot 0x1fc00>;
 	mtd-mac-address-increment = <1>;
};

&eth1 {
 	mtd-mac-address = <&uboot 0x1fc00>;
 	mtd-mac-address-increment = <(-1)>;
};

Where - eth1 works correctly (e.g.: detects cable plugging / unplugging), eth0 does not.
Can you help me translate the C code in the mach- file to the DTS equivalent?
The most similar device is TP-Link 942N but it seems not supported.

BTW - fixing eth1 issue helped mitigate LTE init problem...
As per leds, I was trying to keep things the ar71xx way, what do you think?

Enrico

On Tue, 17 Sep 2019, Adrian Schmutzler wrote:

> Date: Tue, 17 Sep 2019 12:07:20
> From: Adrian Schmutzler <mail@adrianschmutzler.de>
> To: Enrico Mioso <mrkiko.rs@gmail.com>, openwrt-devel@lists.openwrt.org
> Cc: Filip Moc <lede@moc6.cz>, Piotr Dymacz <pepe2k@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
> 
> Hi,
>
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On Behalf Of Enrico Mioso
>> Sent: Dienstag, 17. September 2019 02:21
>> To: openwrt-devel@lists.openwrt.org
>> Cc: Filip Moc <lede@moc6.cz>; Piotr Dymacz <pepe2k@gmail.com>; Enrico Mioso <mrkiko.rs@gmail.com>
>> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
>>
>> This adds support to the ath79 target for the TP-Link MR6400 router.
>>
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
>> Working:
>> - Wi-Fi
>> - TP-Link LTE module does it's thing (but see Notes)
>> - reset/rfkill keys
>> Untested:
>> - recovery via factory
>> - leds
>>
>> Issues for which I need help:
>> eth1 detects link when infact it's not there, and occasionally causes kernel traces due to tx timeouts.
>> I promise I'll test untested items as well in final version
>>
>> Note: as it happened occasionally in ar71xx, during bursty flash activity, LTE module init will fail, with USB enumeration errors.
>>
>> Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
>> CC: Filip Moc <lede@moc6.cz>
>> CC: Piotr Dymacz <pepe2k@gmail.com>
>> ---
>>  .../ath79/base-files/etc/board.d/01_leds      |   6 +
>>  .../ath79/base-files/etc/board.d/02_network   |   5 +
>>  .../ath79/dts/qca9531_tplink_tl-mr6400-v1.dts | 165 ++++++++++++++++++
>>  target/linux/ath79/image/generic-tp-link.mk   |  10 ++
>>  4 files changed, 186 insertions(+)
>>  create mode 100644 target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
>>
>> diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
>> index 778316e450..5728aeb491 100755
>> --- a/target/linux/ath79/base-files/etc/board.d/01_leds
>> +++ b/target/linux/ath79/base-files/etc/board.d/01_leds
>> @@ -130,6 +130,12 @@ tplink,archer-c7-v5)
>>  	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x10"
>>  	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x20"
>>  	;;
>> +tplink,tl-mr6400-v1)
>> +	ucidef_set_led_netdev "lan" "LAN" "tp-link:white:lan" "eth0"
>> +	ucidef_set_led_netdev "wan" "WAN" "tp-link:white:wan" "eth1"
>
> Here, you assign eth1 to the "wan" LED, but in 02_network you assign eth1 to "lan".
> Either change 02_network or this LED shouldn't be called WAN.
>
>> +	ucidef_set_led_netdev "4g" "4G" "tp-link:white:4g" "usb0"
>> +	ucidef_set_led_wlan "wlan" "WLAN" "tp-link:white:wlan" "phy0tpt"
>
> phy0tpt trigger can be moved to DTS, just have a look at other devices recently added to ath79.
>
>> +	;;
>>  tplink,archer-c2-v3|\
>>  tplink,tl-wr1043nd-v4|\
>>  tplink,tl-wr1043n-v5)
>> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
>> index 5b47af8ef7..2b0e1ce400 100755
>> --- a/target/linux/ath79/base-files/etc/board.d/02_network
>> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
>> @@ -56,6 +56,11 @@ ath79_setup_interfaces()
>>  	winchannel,wb2000)
>>  		ucidef_set_interface_lan "eth0"
>>  		;;
>> +	tplink,tl-mr6400-v1)
>> +		ucidef_set_interfaces_lan_wan "eth0.1 eth1" "usb0"
>
> As stated above, this will make eth1 part of "lan" ...
>
>> +		ucidef_add_switch "switch0" \
>> +			"0@eth0" "1:lan" "2:lan" "3:lan"
>> +		;;
>>  	avm,fritz4020|\
>>  	pcs,cr3000|\
>>  	tplink,archer-c58-v1|\
>> diff --git a/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
>> new file mode 100644
>> index 0000000000..4acb1a02a4
>> --- /dev/null
>> +++ b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
>> @@ -0,0 +1,165 @@
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
>> +	model = "TP-Link TL-MR6400 v1.0";
>
> I would remove the ".0" here, as with TP-Link the sub-revisions typically refer only to their firmware. So just "v1" should be better.
>
>> +
>> +	aliases {
>> +		led-boot = &led_power;
>> +		led-failsafe = &led_power;
>> +		led-running = &led_power;
>> +		led-upgrade = &led_power;
>> +	};
>> +
>> +	gpio_leds: leds {
>> +		compatible = "gpio-leds";
>> +
>> +		/* D12 */
>
> What's that?
>
>> +		led_wan: wan {
>> +			label = "tp-link:white:wan";
>> +			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
>> +		};
>
> IMO those labels only make sense if you use them, as for led_power. I would remove all of the other ones, i.e. only "wan {" here instead of "led_wan: wan {" ...
>
>> +
>> +		/* D11 */
>> +		led_4g: 4g {
>> +			label = "tp-link:white:4g";
>> +			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		/* D5 */
>> +		led_wps: wps {
>> +			label = "tp-link:white:wps";
>> +			gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		/* D3 */
>> +		led_wlan: wlan {
>> +			label = "tp-link:white:wlan";
>> +			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		/* D2 */
>> +		led_power: power {
>> +			label = "tp-link:white:power";
>> +			gpios = <&gpio 13 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		/* D4 */
>> +		led_lan: lan {
>> +			label = "tp-link:white:lan";
>> +			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
>> +		};
>> +	};
>> +
>> +	gpio-export {
>> +		compatible = "gpio-export";
>> +		#size-cells = <0>;
>> +
>> +		gpio_usb_power {
>> +			gpio-export,name = "tp-link:power:LTE";
>> +			gpio-export,output = <0>;
>
> Sure about the 0?
>
>> +			gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
>> +		};
>> +	};
>
> Please replace gpio-export by a gpio-hog. Either look at recently added devices or at https://patchwork.ozlabs.org/patch/1141057/
>
> Note that in this case I would call the node "lte_power" or "power_lte" instead of referring to the USB, but that's a matter of taste.
>
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
>> +			label = "RFKill button";
>> +			linux,code = <KEY_RFKILL>;
>> +			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
>> +			debounce-interval = <60>;
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
>> +	num-cs = <1>;
>> +
>> +	flash@0 {
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +		compatible = "jedec,spi-nor";
>> +		reg = <0>;
>> +		spi-max-frequency = <10000000>;
>> +
>> +		partitions {
>> +			compatible = "fixed-partitions";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			uboot:	partition@0 {
>
> There is a tab between uboot and partition. Replace by space ...
>
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
>> +&eth1 {
>> +	mtd-mac-address = <&uboot 0x1fc00>;
>> +	mtd-mac-address-increment = <(-1)>;
>> +};
>> +
>> +&eth0 {
>> +	status = "okay";
>> +	phy-handle = <&swphy4>;
>> +
>> +	mtd-mac-address = <&uboot 0x1fc00>;
>> +	mtd-mac-address-increment = <1>;
>> +};
>> +
>> +&wmac {
>> +	status = "okay";
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
>> diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
>> index 5519e9c960..78d7810f29 100644
>> --- a/target/linux/ath79/image/generic-tp-link.mk
>> +++ b/target/linux/ath79/image/generic-tp-link.mk
>> @@ -393,6 +393,16 @@ define Device/tplink_tl-wr810n-v1
>>  endef
>>  TARGET_DEVICES += tplink_tl-wr810n-v1
>>
>> +define Device/tplink_tl-mr6400-v1
>> +  $(Device/tplink-8mlzma)
>> +  ATH_SOC := qca9531
>> +  DEVICE_MODEL := TL-MR6400
>> +  DEVICE_VARIANT := v1
>> +  TPLINK_HWID := 0x64000001
>> +  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-net kmod-usb-net-rndis kmod-usb-serial kmod-usb-serial-option adb
>
> You can remove kmod-usb-core, kmod-usb-net and kmod-usb-serial, as those are dependencies of the other packages.
>
> Since this is a port from ar71xx, you should add a SUPPORTED_DEVICES entry.
>
> Best
>
> Adrian
>
>> +endef
>> +TARGET_DEVICES += tplink_tl-mr6400-v1
>> +
>>  define Device/tplink_tl-wr810n-v2
>>    $(Device/tplink-8mlzma)
>>    ATH_SOC := qca9533
>> --
>> 2.23.0
>>
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
