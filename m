Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73D671607
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 12:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpJjonx+QQ63gAxRJLszf0Rf065HIKkeWHPmZz/Pyh4=; b=HwNqJYgEO10jQT
	yxcpmju9pJkgSPRCvXkm/qsY8D3UXXIIjBGnL6OIT8yhadHW7LhKXrUmBLrqgWi0ciP8cddgFPGB3
	VfE5YWkKRCRvX3alM9ZQfM8GnYfHHw9328yY82e5dgIDphqnenVeM9xEHY1trrxZ34TpElJhaDcCR
	5WtMXXQAy3v5NbxyqOto6hhU0GRQb3pQKO+vmgwV9yT+jln3BEtY/5igo5b8YxLN9x3rXhu0gKfjn
	J2K4u9Kh7IwDIBFDVAXUN0tJzkWgmwsO+dYLZcY4YZJiM9RS/N2CuHzzpUU8RXQx4xv/yU2gMboM2
	/XKmkgkIp9hNz6aUOxqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hps1S-0001G7-En; Tue, 23 Jul 2019 10:27:54 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hps1B-0001EA-FJ
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 10:27:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1563877651;
 bh=O8hRbB/koZ90BbmNDCEC+9ZiAhSo8WadpxIGFqzMkHw=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=WMnt1IHxGu1elFYtJ+XjwUMJcusxQYbLzIrBxZ7uKMPryMelksbkfsBaZhZh7PniH
 TAZUPry7OPeasqFD2+lZNSl6t9YhTgbCaKHZM/cYoH5/3JkVCovZS4Y0O+gvmghdqq
 TR3rXEIQWddWUaGfaRjZhZ32AAWYW986BmZD4yfI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.61] ([46.114.38.112]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MMVu6-1hm3KP0SB4-008MQV for
 <openwrt-devel@lists.openwrt.org>; Tue, 23 Jul 2019 12:27:31 +0200
To: openwrt-devel@lists.openwrt.org
References: <1563867925-5931-1-git-send-email-luochongjun@gl-inet.com>
From: Moritz Warning <moritzwarning@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <47ab81c8-bd2b-a4f0-f94c-0aa68a7c5724@web.de>
Date: Tue, 23 Jul 2019 12:27:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563867925-5931-1-git-send-email-luochongjun@gl-inet.com>
Content-Language: en-IE
X-Provags-ID: V03:K1:MajsOgoeZavzTclst2uTdNnCSPVp8wqrwrmjgBrI0D8OTFv9ah4
 NIOuKz8eWzVQFY6tz8uAMDlB4DZAWM4nZnZQhkHfNNtVc7Qy5VnhcCB9GKhClsWuxcBCAy8
 x7ZNJdtXV58IBbLrSXGBUMxA+CtfS8jwcR8OiRVYnJ79YnsNf3uMfyTL09OfVYBXO+lJanF
 icieK6fBqayryuut22Mxw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:feYyz7n6WBc=:sP97yviAyEbLWLft9NHDJb
 vBYkCkS65tOfC3d0XZit9bzNWrkIcNVls3X1Gkl0UL4wrayfodIOGZrGkaF/AEl0c0s8F/juJ
 ydftGMt8wtGwngGKLBP/6NK3S4BA63rS70SgOr96nOyyZsAxkrIHxgAKWkkZ59rVHURxAsE2n
 Y5/u2cpXMkxcUQ5XhukKIfWXaR+nM+oJ7FSuIjd3QQdO9Iw2b4qIbnBH2+0XCql9fzKzr5GYS
 /TWi9IFhMntFdVV6SbBvg3VITdKFy6Y8YCtDI8jIwbMAQRsBg0QCmHuWQhDIMadmQU5Vdg2B1
 CZhMLsJGp6D9FCpJZbXF/D0CiHtD5bpDB2TbipWLlLLCT7vxm5C2BSVJSMgQlTULl24TaUHXH
 xYsIkKpnB6KKWHLTUrU0O61AoTm//Uj9rlQHwMVeRhpNsCcb8aArJ4NyGQe9+FLNrrba/Rmvx
 UT34tcnjhsN4IHdcSeEhMaGPEsmXvDZP69UrUvtYzKJcmEmFO1e5C2N8PH+BgXOLzd25R1xfM
 wSGOur6pKyNyAuyDEBPF+iCW734Z324W1pf0+wynbmJP698b7lXOVBiB38cqtzw6yaxpPXkQc
 uN2YrMQgAIHthQL/wabu/GwexAkl3rxvrCFiy2PBYqKMu36jKC5YhJtDAYcgTryZCTWQGiMyl
 MfunFVAz19QgpE6KYyPPFBpA539IcnbcWzrPHVVswAWpDK1akxZ0gUm9kc9tWgssXdOH2Kmra
 i1/jKurAMX1uPjCVNLre4BPCZBdl1zaTZWK4/x+DUAs3b0oWWTun8a089YA5ttQav+HHBxkrT
 zVXOzvXUqybIAqN3MIMzgo9cGsK3Cz5t1ha8QoB6cBWPYnbGpyGlrps/AS8zMvi7S+EUBgb5N
 Ox+9jnftaaQOQGp3E6fuSZ65F0i2nrU/5Xnxt+eAKxW8pKaDUP1D0kPYJ1H9ZMpcZQpA+U5Rs
 wNU+Szh6M0lcG+7AFg+by/s52BTcxdkNKlgs6Hil1viZq7ho5VtBhwXvoLieMDQGwr/NeG7Y7
 g+UVbc7JqnASIaCrs2qb7F8ct0muFxjY/SZ82ggfW50hQ5hMbJg5j7/yOU7y85p/1jVDLz4y+
 x6MGNYfARB4ilpAf7z4V8gESqrasv8NSvMh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_032737_859430_E1D69718 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (moritzwarning[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It would be a good idea to rewrite

DEVICE_TITLE := GL.iNet GL-AR750

to

DEVICE_VENDOR := GL.iNet
DEVICE_MODEL := GL-AR750

See https://github.com/openwrt/openwrt/pull/2124

On 7/23/19 9:45 AM, Luochongjun wrote:
> This patch supports gl-ar750, which was previously supported by ar71xx.
>
> Specification:
> - SOC: QCA9531 (650MHz)
> - Flash: 16 MiB (W25Q128FVSG)
> - RAM: 128 MiB DDR2
> - Ethernet: 10/100: 2xLAN + 10/100: 1xWAN
> - Wireless: 2.4GHz (bgn) and 5GHz (ac)
> - USB: 1x USB 2.0 port
> - Switch: 1x switch
> - Button: 1x reset button
> - LED: 3x LEDS (white)
>
> Flash instruction:
> Support for sysupgrade directive upgrades, as well as luci upgrades.
>
> Signed-off-by: Luochongjun <luochongjun@gl-inet.com>
> ---
>  .../etc/hotplug.d/firmware/11-ath10k-caldata       |   1 +
>  target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts | 149 +++++++++++++++++++++
>  target/linux/ath79/image/generic.mk                |   9 ++
>  3 files changed, 159 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
>
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> index 8f0ea1d..6a9cb1c 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> @@ -116,6 +116,7 @@ case "$FIRMWARE" in
>  		ath10kcal_extract "art" 20480 2116
>  		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
>  		;;
> +	glinet,gl-ar750|\
>  	glinet,gl-ar750s)
>  		ath10kcal_extract "art" 20480 2116
>  		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0) +1)
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
> new file mode 100644
> index 0000000..b8f9735
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
> @@ -0,0 +1,149 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca953x.dtsi"
> +
> +/ {
> +	compatible = "glinet,gl-ar750", "qca,qca9531";
> +	model = "GL.iNet GL-AR750";
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&jtag_disable_pins>;
> +
> +		reset {
> +			label = "reset";
> +			linux,code = <KEY_RESTART>;
> +			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		mode {
> +			label = "mode";
> +			linux,code = <BTN_0>;
> +			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		power {
> +			label = "gl-ar750:white:power";
> +			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
> +			default-state = "on";
> +		};
> +
> +		wlan2g {
> +			label = "gl-ar750:white:wlan2g";
> +			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "phy1tpt";
> +		};
> +
> +		wlan5g {
> +			label = "gl-ar750:white:wlan5g";
> +			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "phy0tpt";
> +		};
> +
> +	};
> +
> +	i2c {
> +		compatible = "i2c-gpio";
> +
> +		sda-gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
> +		scl-gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
> +	};
> +
> +
> +};
> +
> +&pcie0 {
> +	status = "okay";
> +
> +	wifi@0,0 {
> +		compatible = "qcom,ath10k";
> +		reg = <0 0 0 0 0>;
> +		device_type = "pci";
> +	};
> +};
> +
> +&uart {
> +	status = "okay";
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
> +&spi {
> +	status = "okay";
> +	num-cs = <0>;
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
> +				reg = <0x000000 0x040000>;
> +				read-only;
> +			};
> +
> +			partition@40000 {
> +				label = "u-boot-env";
> +				reg = <0x040000 0x010000>;
> +				read-only;
> +			};
> +
> +			art: partition@50000 {
> +				label = "art";
> +				reg = <0x050000 0x010000>;
> +				read-only;
> +			};
> +
> +			partition@60000 {
> +				compatible = "denx,uimage";
> +				label = "firmware";
> +				reg = <0x060000 0xfa0000>;
> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status = "okay";
> +	mtd-mac-address = <&art 0x0>;
> +	phy-handle = <&swphy4>;
> +};
> +
> +&eth1 {
> +	mtd-mac-address = <&art 0x0>;
> +	mtd-mac-address-increment = <1>;
> +};
> +
> +&wmac {
> +	status = "okay";
> +	mtd-cal-data = <&art 0x1000>;
> +};
> diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
> index d5f67b8..86da1a9 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -389,6 +389,15 @@ define Device/glinet_gl-ar300m-nor
>  endef
>  TARGET_DEVICES += glinet_gl-ar300m-nor
>
> +define Device/glinet_gl-ar750
> +  ATH_SOC := qca9531
> +  DEVICE_TITLE := GL.iNet GL-AR750
> +  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
> +  IMAGE_SIZE := 16000k
> +  SUPPORTED_DEVICES += gl-ar750
> +endef
> +TARGET_DEVICES += glinet_gl-ar750
> +
>  define Device/glinet_gl-ar750s
>    ATH_SOC := qca9563
>    DEVICE_TITLE := GL.iNet GL-AR750S
>


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
