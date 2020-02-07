Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F851550B7
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Feb 2020 03:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJl6nGAvuDTeqjEdZZKF51W3oJfZ+M7OHTBQQyix6zw=; b=U71w3mX1v/Cdzc
	XooTZL++BRU7eZQ0eR4W31xyQX0yCQ9cEPV8k8gzml5lW0Sr2jXc3oUrKx7rD25ScIf14Jy+uBztA
	v5sHH+w9zve+FudQHt/2D3ULbhyMcGilDdWNZcVu4WaL1lfuz7KoCjPFbVQi+gBU27cBi8hvz01xy
	ERTYg32BOMa+GfUCSudH7YofQG5K6TZ/yXPayguf3ZSvIdkAcc5/a3VoB/inlvQujg8plac2o+Ukp
	DLLRkCNWq2VDxk9tuNgZpg1eSKTDaN2jSDzLiPnYbgzWHE1K+VmLs1/1RaRh4WyCd3JHmwiITaeWF
	MJWkTYSgSLpXgK19bKxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iztUM-0002dY-PE; Fri, 07 Feb 2020 02:35:26 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iztUG-0002cL-EM
 for openwrt-devel@lists.openwrt.org; Fri, 07 Feb 2020 02:35:22 +0000
Received: by mail-oi1-x244.google.com with SMTP id v19so556175oic.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 18:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uXr1umOJl540IlVOC7FL1IP7T0vdp2sxdh08Ti+uCo0=;
 b=Z3mNR1a7t//Sga/M8rHejGA6nX7MMnNEuRIAwZkKiDbq6w46rn5RaaApURZ2dGLt/N
 Keg4f0yhb9KZ+R7rS1x5HttMdvFHmHTUW8le8j8WxdMOEY5lFK3hf5FVV6/Pqo1lMgzc
 NvMLApMGdsXp//UuLzo0B58GVlwkEV1z6h6Y3OvjyrCJxp2zVE4+InfcAerS5bzxhWzf
 IR9wnNy94cm0DUnbXBNaCfJFqsVwg7QLTKl44p5HAMqyx02d3l/Qu8nvFehcYnBspzkb
 uGMLjHRwDWYcsaiW9Cm4J34N1aDKBQPPDhh6engNhCGWDr5wL/Zql7Ye8/1627vAWmZy
 0UPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uXr1umOJl540IlVOC7FL1IP7T0vdp2sxdh08Ti+uCo0=;
 b=CvwaDUjv2HNGqiJmsgM/5VmDsEyNFH1NRGWb6Q4u88kMEigevXb9tIPSNedzwBYXSN
 wCjJrjGY8Hse6buW97VYEHu5LpncZlQ0QTG+qTwIKxVm6aA7GbZlgCtWxB4IFEyAS+VM
 ZxgbjemHkmgUoQORqPBETM8oFICT2Ke6+a4R8tU4YWWFHPcz9U19evC2T3L/Y7a4fyja
 ufyT8M4LbrMm0/w5O9NBIxIbSXptEBq6MncLeLvc9y0HqNdjvS1K2XPXdDt5Ec/DQSPX
 POEqzN8Vkkey0bZoqwoacFHsD9OtGERMv2pGSwEZIuikzNL0XsQ5uV9cQWmE0+B7ovKq
 57+g==
X-Gm-Message-State: APjAAAVbrOmWN/oVa/M4kMAzBcWUi4AfKdipRWOGv914lFaCPER2Q7Wa
 O3lQQxVielFzS2VNpzN6on97jfUCtkwJabjNYNw=
X-Google-Smtp-Source: APXvYqwk9rAtBw3TuQmFDmBrwQlQEV6zFFZ43tvLeib7tiY4+nPDOTSt2oHZJ0saLhv+8aUFhY2jhZyAJaxgJ5xNjmk=
X-Received: by 2002:a54:4896:: with SMTP id r22mr631753oic.30.1581042919427;
 Thu, 06 Feb 2020 18:35:19 -0800 (PST)
MIME-Version: 1.0
References: <20200205170651.GA879610@makrotopia.org>
In-Reply-To: <20200205170651.GA879610@makrotopia.org>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 7 Feb 2020 10:35:08 +0800
Message-ID: <CAJsYDVKsFX=HQbini=w8CUEBOMu_9utJjWYEcKcRocniwkMY1w@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_183520_504398_BA666C81 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>, Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

some minor comments below:
On Thu, Feb 6, 2020 at 1:07 AM Daniel Golle <daniel@makrotopia.org> wrote:
...
> +
> +       gpio_ext_spi {
> +               compatible = "spi-gpio";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pmx_led_spi_gpio>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               sck-gpios = <&gpio 4 GPIO_ACTIVE_HIGH>;     // 74HC595 SRCLK (Serial Clock)
> +               mosi-gpios = <&gpio 12 GPIO_ACTIVE_HIGH>;   // 74HC595 SER (Serial)
> +               cs-gpios = <&gpio 20 GPIO_ACTIVE_HIGH>;     // 74HC595 RCLK (Register Clock)
> +               num-chipselects = <1>;
> +
> +               gpio_ext: gpio_ext@0 {
> +                       compatible = "fairchild,74hc595";
> +                       reg = <0>;
> +                       gpio-controller;
> +                       #gpio-cells = <2>;
> +                       registers-number = <2>;
> +                       spi-max-frequency = <10000000>;
> +                       gpio-line-names = "led_signal_bar1", "led_signal_bar2", "led_signal_bar3", "led_signal_bar4",
> +                               "led_signal_bar5", "led_status_red", "led_status_green", "sim_sel",
> +                               "DOUT1", "DOUT2", "modem_vbus", "modem_rst",
> +                               "DOUT3", "RS485_R", "SDCS", "HWRST";
> +               };
> +       };

Would you mind to test whether it's possible to move this 74hc595
under hardware spi instead? I believe using hw spi has a tiny bit less
cpu overhead than gpio spi.
It's possible to hook one output signal to multiple gpio pins
simultaneously on ath79. Try setting gpio 4/12/20 to clk/mosi/cs2 in
gpio function register respectively, move gpio_ext node under spi and
change reg to 2.

> +
> +       leds {
> +               compatible = "gpio-leds";
> +
> +               signal0 {
> +                       label = "rut955:green:signal1";
> +                       gpios = <&gpio_ext 0 GPIO_ACTIVE_HIGH>;
> +               };
...
> +&spi {
> +       status = "okay";
> +
> +       cs-gpios = <0>, <0>;

I pushed a spi driver replacement yesterday and we don't need this
cs-gpios to fix num_chipselect in driver now :)

> +       num-cs = <2>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&jtag_disable_pins>, <&pmx_spi_cs1>;
> +
...
> +&eth1 {
> +       status = "okay";
> +
> +       mtd-mac-address = <&config 0x0>;
> +
> +       gmac-config {
> +               device = <&gmac>;
> +       };

This gmac-config can be removed if you don't need it.

> +};
> +
> +&builtin_switch {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pmx_leds_switch>;
> +};
...
> +  IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs |\
> +       pad-rootfs | teltonika-fw-fake-checksum | append-string master |\
> +       append-md5sum-bin | check-size $$$$(IMAGE_SIZE)
> +  IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(BLOCKSIZE) |\

Do we need this "pad-to $$$$(BLOCKSIZE)" in
factory.bin/sysupgrade.bin? kernel/rootfs can be split anywhere and we
may squeeze out several kilobytes by removing this image padding.
Also I'm wondering whether "tplink-v1-image sysupgrade" recipe could
replace "append-kernel | append-rootfs | pad-rootfs" here.
("tplink-v1-header" needs to be removed from KERNEL or there'll be
duplicated headers)

> +       append-rootfs | pad-rootfs | append-metadata |\
> +       check-size $$$$(IMAGE_SIZE)
> +endef
> +TARGET_DEVICES += teltonika_rut955
> +
>  define Device/trendnet_tew-823dru
>    SOC := qca9558
>    DEVICE_VENDOR := Trendnet
> --

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
