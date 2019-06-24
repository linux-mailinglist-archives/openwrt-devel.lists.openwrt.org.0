Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D390051C78
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 22:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gk3/pfAzocVHMfAfAgH1Wx7zuFndZDt+0ZVrpbsB5fs=; b=WNE2b0lixQ9yIZ
	PYGSta7YilXdmodsmGth9scpmUahwC+/pXZSzna8O8O2gWrRGyNt2nRg4/eCWUfq7c8VF/0WJ/uo+
	vtBWjwrc0lH+wJYhnSms+ddvihfyjRT0KujqBnxQEDxQjuIv2rb3YuBkPYcLP1JUAuNZdnzDafpWO
	XHnQl+B5UELAlAif4SYGY+kk3rQAyhaVNkE/NM4xmTzMeSVcKubvQ0xYM4/jlCWxvORQdkDP9cX3W
	edEVlfQdWBZyTHj9CYukgnsQz65aKsGsZHbYX+5al0aJm8cgu83gZJ2fbjA5mS3T+17T5numqrfw1
	ELHMvM9BmBF+GBBkIoPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfViI-0001ug-SY; Mon, 24 Jun 2019 20:37:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVi5-0001rx-DH
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 20:37:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so15293347wru.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Jun 2019 13:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ocOmiDwhDX6vGWTAhpqmWFVw+J8hFHeQoX+arG61ccQ=;
 b=qVeqlz3H/9Udb2wfJFCnxnKAERqOjmJIYnA8hHcJzpnCzoNmVnoisJhh4GeKf+Na+u
 7III8Yqwo8eaCleHhs6yr2KoofF3CqS+CZeMSSqVbHGQz/yRuU34+EneeJciqmZD62XX
 eP5H9PD4B2XJ82M5jm1de61zpNrlzudlCEjg02F+tOTRntTEQN9RRENKo77U1B/V+fo+
 oDEgWMyo087yrSIcHvd7sPFGuew4M0cf008PP07DmFRBP5wLl1YcMdIEXRB+tEcB8MoO
 3YKltqpVn4KPvcMxJgm0sgyBOHz5Y4KSIc0utbavaniJGe9lRTjv3J/JCTF1kuPsvmur
 uquw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ocOmiDwhDX6vGWTAhpqmWFVw+J8hFHeQoX+arG61ccQ=;
 b=HnlShEijmuopMDyie9BcvPV11qHnN9i9iyXhljZztxnv+b/8obUP7e4ZiTNvotGK47
 d65yz8ZQZxbv/ZjkPJiez7eQxONBl48F71cyUDURnDUCiYUsoA1eRBfAnW7rgkpwyl1/
 wR5edhsHTCndF6yM8h6uRx7HJ59b8kJtrjr8SHHHsrBfRTELWwpBKLmqYfZypVxLp2RD
 JgjhaNvXUV8oI50GrjHCVeYHw5eb9VqnBm/K8xRzBDe/8WwhXLDALf64urihjelGS2Kg
 sc3ZYTFCWVWZN01KjuVY5aDHd8vD4ftAsUldMRXHSbxujDdK6EX6qDzIvXQ48pNeaM9R
 H+Mw==
X-Gm-Message-State: APjAAAUxOoZ2opQZOCTgMZS79B75DuHmk88Bkl9X10VQzd1M6ZpgAjMC
 SD6pAEIgVVYZ9+N4UhOENry69htD
X-Google-Smtp-Source: APXvYqz/fDLp7KQHR5Qffw/W91m9QPTNOmLnOeOr62kRJY56QwimkLpUWavG7JL+duTKkTEoZA/bxA==
X-Received: by 2002:adf:a443:: with SMTP id e3mr57810110wra.221.1561408623631; 
 Mon, 24 Jun 2019 13:37:03 -0700 (PDT)
Received: from debian64.daheim (pD9E29A68.dip0.t-ipconnect.de.
 [217.226.154.104])
 by smtp.gmail.com with ESMTPSA id 35sm14054936wrj.87.2019.06.24.13.37.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 13:37:03 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hfVi2-0005IV-HV; Mon, 24 Jun 2019 22:37:02 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 24 Jun 2019 22:36:59 +0200
Message-ID: <4779585.jP50ncvV1B@debian64>
In-Reply-To: <1561365697-7221-1-git-send-email-luochongjun@gl-inet.com>
References: <1561365697-7221-1-git-send-email-luochongjun@gl-inet.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_133705_476551_A15ED77A 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: Luochongjun <luochongjun@gl-inet.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Monday, June 24, 2019 10:41:37 AM CEST Luochongjun wrote:
> This patch support gl-ar750 on ath79.

I'm looking at this previous patch for the GL-X750.
<https://github.com/openwrt/openwrt/commit/9989fd5154fd8301bf363ddae0b5083220141865>

And I think you can do better than this gl-ar750 post.

Can you please take the time and amend your patch with the
specification and a short description on how the flash the
initial image. Thanks.

More comments down below.

> 
> Signed-off-by: Luo chongjun <luochongjun@gl-inet.com>
Please make sure your Name matches exactly (as in bit-for-bit) that of
your E-Mail Client address. Otherwise this needs to be fixed by the
commiter since the openwrt infrastructure does a checks that.

> ---
>  .../etc/hotplug.d/firmware/11-ath10k-caldata       |   1 +
>  target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts | 149 +++++++++++++++++++++
>  target/linux/ath79/image/generic.mk                |   8 ++
>  3 files changed, 158 insertions(+)
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
> index 0000000..c173f0d
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
> +		compatible = "gpio-keys-polled";
ath79 should support "gpio-keys".

> +
> +		poll-interval = <20>;
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
> +                        label = "mode";
> +                        linux,code = <BTN_0>;
> +                        gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
> +                };
Please use tabs instead of space for indent.
(scripts/checkpatch.pl can help you find these cases).
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		power {
> +			label = "gl-ar750:green:power";
> +			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
> +			default-state = "on";
> +		};
> +
> +		wlan2g {
> +			label = "gl-ar750:green:wlan2g";
> +			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "phy1tpt";
> +		};
> +
> +		wlan5g {
> +			label = "gl-ar750:green:wlan5g";
> +			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "phy0tpt";
> +		};
> +
> +	};
> +
> +       i2c {
> +                compatible = "i2c-gpio";
> +
> +                sda-gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
> +                scl-gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
> +
> +                /* can be removed on 4.19 */
> +                gpios = <&gpio 17 GPIO_ACTIVE_LOW>,
> +                        <&gpio 16 GPIO_ACTIVE_LOW>;
Hm, ath79 switched to 4.19. So they can be removed right now ;)
> +
> +        };
> +
> +
> +};
> +
> +&pcie0 {
> +	status = "okay";
Please add a proper sub node with the right ath10k compatible
(see qcom,ath10k.txt) for the attached pcie chip here.

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
Please make this read-only, or explain in detail why
this needs to be rw. (Note: I've seen jokers that
overwrote bootcmd with reset and it required a external
spi tool to get it fixed).

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





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
