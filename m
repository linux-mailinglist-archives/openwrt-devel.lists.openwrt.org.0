Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2192E51B54
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 21:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/+cp/6UzQedwn6IhSTAnkYLjhTiTEPxBUWEYke9/ps=; b=amEhiIZQN9VIIY
	mjl50h677w+Sa7PrNwOOx8aWbFSky3SQxs+3QfiiK8TGdFtbk3q2itiarz1A6N8pfK+qIlt28lBeV
	G1jbo+oIHQapKOEFT8PVNwlv1TJ+AVL5sMHEf/u89zD8U1sUw0hbuX8OGD9xg3sxsFi+LGiypq/b6
	Yc12KKBnLt0Ke+RlCvCPubtCCjXY/GtVl2Aen0l9HIX1mPXF2Vv3ksRrDwDOktc9VzEIlI00SOeDq
	kcUlCQWK/RQB4AsuIjf0tzev1TdSRHW+K9Rq0NCCrF9bE+d7XkwMHpPsK14f5kbtfq/pf7ge9SNWd
	22oDVRBU0sYBvD9Lm2dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUUy-0003c7-Hg; Mon, 24 Jun 2019 19:19:28 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUUq-0003bZ-GR
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 19:19:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id f15so5223907wrp.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Jun 2019 12:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PfPu6FVNjsiAuBVXRcuwUhZ6D7BcmmhIO5Wxrp0H4ak=;
 b=p6qkg/CEMbInWoVppKP25u6ioO6PYeDCBGh8MqbrH074BKB+Ow0QiAM+6V461/aXd+
 Fn4hHAOxbc4DREhytFGp9TiN+HmUTZWgygB84gNC7+v9lS3cD+Swe49sjMKJ3OHZwNsX
 domaUwzRrZOZrg9yP0So5vwVrJYMijNKhrP+dyzXF82MANtdulXVUsZwD2yVWtLLPhr0
 hq6Y1Tnx50ADf60ad0qWxzVBEbNfAMsW+KM1diujnwqNcHmmXchxZjHedBOCReXZTl7A
 YyjRsLIQwOku+CxNkWOeKvKERGqcv9Nz/bSjfAfwkVw77Kt4lBH4Vuy7Six156nyg4pr
 8AyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PfPu6FVNjsiAuBVXRcuwUhZ6D7BcmmhIO5Wxrp0H4ak=;
 b=MEbMYI0Ft4vlfWCCyhOd/tTtIwPGACYw/wMQT6VvONpj5z+EwbYZ1/m5ZDNY7urT+1
 elqFllJZSEVdzyNq587MiqphOYZzzjvngPSlXXaKnvQoroLJFNuYXTP1vrlmsQTLD5w5
 tQhbgAGRhWhowRQei2Npshv7zElf61XWcXopRe8Ns97XIMOCxzRyAWS+jQor2D8mUuhM
 r4x/n9MXkQuWoi8zjvo8fKj3mXyU2fRlwcPg3GgSnkn4f0j8pM0YK/vDJFZv+zNMPTGe
 YVmf0pW1tExTlqMklEeavQ0rRpl/9/0dW9RSEk61O9KqPKDlsgeVUdf7iUQ13Qb0lLWL
 HWQA==
X-Gm-Message-State: APjAAAU8yxVDRHAAEbqRrQD+8v8dtBSY9AnUi+Yq67DBP19aRiO/A3Gw
 pn58+2Sk16Ft1j3TrKNlndiMYDQY
X-Google-Smtp-Source: APXvYqx1zLB/5P5qr7RortHy52Hsw9zw1ts/hTAux6JhTI3vMbE9Tjy4CYjNZrDsJXWGoI72G5wlEA==
X-Received: by 2002:adf:f8cf:: with SMTP id f15mr96914157wrq.333.1561403958063; 
 Mon, 24 Jun 2019 12:19:18 -0700 (PDT)
Received: from debian64.daheim (pD9E29A68.dip0.t-ipconnect.de.
 [217.226.154.104])
 by smtp.gmail.com with ESMTPSA id z19sm498694wmi.7.2019.06.24.12.19.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 12:19:17 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hfUUm-0002jO-Nq; Mon, 24 Jun 2019 21:19:16 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 24 Jun 2019 21:19:14 +0200
Message-ID: <2106121.d8lVLhYgiR@debian64>
In-Reply-To: <20190624123157.2437-1-mail@david-bauer.net>
References: <20190624123157.2437-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_121920_548242_4EDE74C7 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: gch981213@gmail.com, David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Monday, June 24, 2019 2:31:57 PM CEST David Bauer wrote:

Some comments below.

> diff --git a/target/linux/ramips/dts/RT-AC57U.dts b/target/linux/ramips/dts/RT-AC57U.dts
> --- /dev/null
> +++ b/target/linux/ramips/dts/RT-AC57U.dts
> @@ -0,0 +1,150 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible = "asus,rt-ac57u", "ralink,mt7620a-soc";
"mediatek,mt7621-soc" ?
(From what I know, the machine compatible isn't important
but the ralink,mt7620a-soc looks odd)

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
> +		compatible = "gpio-keys-polled";
The MT7261 should support interrupt-supported gpio-keys.

> +		poll-interval = <20>;
> +
> +		wps {
> +			label = "wps";
> +			gpios = <&gpio1 11 GPIO_ACTIVE_HIGH>;
> +			linux,code = <KEY_WPS_BUTTON>;
> +		};
> +
> +		reset {
> +			label = "reset";
> +			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
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
Just curious, is this regulator related to ASUS "Night mode"
feature? Also did you measure the voltages or is there a
3v3 LED driver on the board?

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
I haven't said much about the spi-max-frequencies before
but from what I know thanks to the threads like
"ramips: Increase GB-PC1 SPI frequency to 80MHz" the original
these values are off. And once the target switches to 4.19 (and
uses the upstream mt7621a.dtsi + spi-driver) this needs to be
reworked on all devices I think

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
> +		reg = <0x0000 0 0 0 0>;
Please add a compatible. (Binding text lists the right one).

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
> +		reg = <0x0000 0 0 0 0>;
Please add a compatible. (Binding text lists the right one).
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

Cheers,
Christian





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
