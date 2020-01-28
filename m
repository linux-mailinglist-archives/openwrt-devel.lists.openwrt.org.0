Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB6D14C026
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 19:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRiNkyYATogBNq6tsYSSF7is4ly/k7iYpj4s+ovmVAs=; b=m3oH9NPvLHzvnl
	q58qRrRSWG+2GlzLnr2IfkOzX8aQ7wkftcn6aGYHNPWUbzHGh7hinKxmlzMKykwItUD5g1REa9R1t
	YKD25WaLIakcx+vh0ha7HEZ7aSLyZ6Z1/EPFgzopxnd9abO6Bc1zlEdSpUaDYSeZa9IEEJ0gN2I/F
	V6S+weFWv3nn6A3ZaNiU4pd7vWwIgDJnvjnBM6WmjR1CzLvemzll2zjzq+qLPn/+rayHzaU9k44F7
	UKIF86JXXFBpsZ6+3Zea+EuIojtvY5lbaAtxjutVgTaD3TPF9DeOIfQ9SiIq9/Ay2r4QK+DAlhjaz
	EJezqaGMBGDcyv8Z5tgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVti-0007LY-LY; Tue, 28 Jan 2020 18:47:38 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVta-0007Kr-Be
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 18:47:32 +0000
Received: from [IPv6:2003:e5:3f17:4300:9ae5:2e36:1940:ad09]
 (p200300E53F1743009AE52E361940AD09.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f17:4300:9ae5:2e36:1940:ad09])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 8CCB122F46;
 Tue, 28 Jan 2020 19:47:22 +0100 (CET)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <20200126222605.152990-1-mail@david-bauer.net>
 <00cb01d5d5f8$debbe840$9c33b8c0$@adrianschmutzler.de>
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
Message-ID: <d66591cf-83a4-7b82-3230-c2bd6318ccf9@david-bauer.net>
Date: Tue, 28 Jan 2020 19:47:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <00cb01d5d5f8$debbe840$9c33b8c0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_104730_701461_C68ACAC5 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for GL.iNet
 microuter-N300
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

Hello Adrian,

On 1/28/20 5:34 PM, Adrian Schmutzler wrote:
>> The GL.iNet microuter-N300 (internally referred as MT300N-v4) is a
>> pocket-size travel router. It is essentially identical to the VIXMINI
>> (internally referred as MT300N-v3) but with double the RAM and
>> SPI-flash.
> 
> One could consider adding the v3/v4 names with the DEVICE_ALT0 syntax.

The naming for these devices is only used in their OpenWrt fork. I wouldn't
include this in OpenWrt, as it's too abstract.

> Typically we have a space in-between here "/{" -> "/ {", but looks like it's
> missing for vixmini as well.

You are right, will fix this.

> 
>> +	compatible = "glinet,microuter-n300", "mediatek,mt7628an-soc";
>> +	model = "GL.iNet microuter-N300";
>> +};
>> +
>> +&led_power_blue {
> 
> If there is only one color per type, I'd personally remove the color from the
> label (-> led_power for this case).

This is one LED on the casing with two colors and two independent functions,
therefore including full information here.

>> diff --git a/target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi
>> b/target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi
>> new file mode 100644
>> index 0000000000..b5611ac11e
>> --- /dev/null
>> +++ b/target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi
>> @@ -0,0 +1,104 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>> +
>> +#include "mt7628an.dtsi"
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +
>> +/{
> 
> Space missing here again (see above).
> 
>> +	aliases {
>> +		led-boot = &led_power_blue;
>> +		led-failsafe = &led_power_blue;
>> +		led-running = &led_power_blue;
>> +		led-upgrade = &led_power_blue;
>> +
>> +		label-mac-device = &ethernet;
> 
> I'd have done this in a separate commit, or at least added a comment to the
> commit message.

Will add this to the commit message.

>> +	};
>> +
>> +	chosen {
>> +		bootargs = "console=ttyS0,115200";
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +
>> +		led_power_blue: power {
>> +			/* Name is set device-specific */
>> +			gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		led_wlan_white: wlan {
>> +			/* Name is set device-specific */
>> +			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
>> +			linux,default-trigger = "phy0tpt";
>> +		};
>> +	};
>> +
>> +	keys {
>> +		compatible = "gpio-keys";
>> +
>> +		reset {
>> +			label = "reset";
>> +			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
>> +			linux,code = <KEY_RESTART>;
>> +		};
>> +	};
>> +};
>> +
>> +&state_default {
>> +	gpio {
>> +		ralink,group = "wdt", "wled_an", "p1led_an";
>> +		ralink,function = "gpio";
>> +	};
>> +};
>> +
>> +&ethernet {
>> +	mtd-mac-address = <&factory 0x4>;
>> +};
>> +
>> +&wmac {
>> +	status = "okay";
>> +};
>> +
>> +&spi0 {
>> +	status = "okay";
>> +
>> +	flash@0 {
>> +		compatible = "jedec,spi-nor";
>> +		reg = <0>;
>> +		spi-max-frequency = <10000000>;
>> +
>> +		partitions: partitions {
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
>> +				label = "u-boot-env";
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
>> +			/*
>> +			 * Firmware-partition size is model-specific
>> +			 * due to different flash sizes.
>> +			 */
>> +			firmware_part: partition@50000 {
> 
> Why not just call it "firmware" corresponding to the label and how we do it with
> factory?

For me, adding contextual information to a label makes it easier to
understand it's origin. As neither the specification nor upstream does
specify a naming convention for labels, this should be fine.

>> diff --git a/target/linux/ramips/image/mt76x8.mk
>> b/target/linux/ramips/image/mt76x8.mk
>> index 5ddeec14d5..37cac84229 100644
>> --- a/target/linux/ramips/image/mt76x8.mk
>> +++ b/target/linux/ramips/image/mt76x8.mk
>> @@ -70,6 +70,14 @@ define Device/glinet_gl-mt300n-v2
>>  endef
>>  TARGET_DEVICES += glinet_gl-mt300n-v2
>>
>> +define Device/glinet_microuter-n300
>> +  IMAGE_SIZE := 16064k
>> +  DEVICE_VENDOR := GL.iNet
>> +  DEVICE_MODEL := microuter-N300
>> +  SUPPORTED_DEVICES += microuter-n300
> 
> That's needed for GLinet's OpenWrt?

Yes, otherwise the upgrade GUI rejects the image.

Best wishes
David

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
