Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFE9159020
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 14:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4O1d8awlbC80bP5e+A6ifXf3h2tpRTalTlkZ/xaJquE=; b=fLR6s0qCvXoLKf
	zfpZv2SWCN6AqygP50Jc0Sf/DAEo8qOang59HOWowM07Rdx4BpyP0HIpYeyKfoJ5DHqF0kxxlXUKu
	RMyNSJwJtBVU7YQeT7o0zLDUDnn6rXdyWQ1awtU7rCtax6icqqXiHGqK9LzMJGIYeRy21oRKYlwWl
	S+mxvSyv6rw/GHtiOWjHCLHcDbVHvJDz0rr8K53cQKIUq4UUGG8sFuN0Y2HNwZjRMn4COsmkHoDec
	cpeuFXJ8SyxM+9VPtSk4Vr1AvqijkWqkYhRvKUT5ZBHeYco06YHu/uswNWOwzkCeXJLWvSBgNkfZm
	OI8Oo1njQiiBvRpX5/yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Vmi-000127-Ux; Tue, 11 Feb 2020 13:41:04 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1VmZ-0000xd-G9
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 13:40:56 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1j1VmS-0005KI-3u; Tue, 11 Feb 2020 14:40:50 +0100
Date: Tue, 11 Feb 2020 15:40:37 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Chuanhong Guo <gch981213@gmail.com>
Message-ID: <20200211134037.GA2430@makrotopia.org>
References: <20200205170651.GA879610@makrotopia.org>
 <CAJsYDVKsFX=HQbini=w8CUEBOMu_9utJjWYEcKcRocniwkMY1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJsYDVKsFX=HQbini=w8CUEBOMu_9utJjWYEcKcRocniwkMY1w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_054055_537865_F2C23D76 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Chuanhong,

thanks for the review and suggestions!

On Fri, Feb 07, 2020 at 10:35:08AM +0800, Chuanhong Guo wrote:
> Hi!
> 
> some minor comments below:
> On Thu, Feb 6, 2020 at 1:07 AM Daniel Golle <daniel@makrotopia.org> wrote:
> ...
> > +
> > +       gpio_ext_spi {
> > +               compatible = "spi-gpio";
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&pmx_led_spi_gpio>;
> > +               #address-cells = <1>;
> > +               #size-cells = <0>;
> > +
> > +               sck-gpios = <&gpio 4 GPIO_ACTIVE_HIGH>;     // 74HC595 SRCLK (Serial Clock)
> > +               mosi-gpios = <&gpio 12 GPIO_ACTIVE_HIGH>;   // 74HC595 SER (Serial)
> > +               cs-gpios = <&gpio 20 GPIO_ACTIVE_HIGH>;     // 74HC595 RCLK (Register Clock)
> > +               num-chipselects = <1>;
> > +
> > +               gpio_ext: gpio_ext@0 {
> > +                       compatible = "fairchild,74hc595";
> > +                       reg = <0>;
> > +                       gpio-controller;
> > +                       #gpio-cells = <2>;
> > +                       registers-number = <2>;
> > +                       spi-max-frequency = <10000000>;
> > +                       gpio-line-names = "led_signal_bar1", "led_signal_bar2", "led_signal_bar3", "led_signal_bar4",
> > +                               "led_signal_bar5", "led_status_red", "led_status_green", "sim_sel",
> > +                               "DOUT1", "DOUT2", "modem_vbus", "modem_rst",
> > +                               "DOUT3", "RS485_R", "SDCS", "HWRST";
> > +               };
> > +       };
> 
> Would you mind to test whether it's possible to move this 74hc595
> under hardware spi instead? I believe using hw spi has a tiny bit less
> cpu overhead than gpio spi.
> It's possible to hook one output signal to multiple gpio pins
> simultaneously on ath79. Try setting gpio 4/12/20 to clk/mosi/cs2 in
> gpio function register respectively, move gpio_ext node under spi and
> change reg to 2.

I've tried that and it works just as good as it does with spi-gpio.
Now I don't know what's better: Sacrificing bus-access time on the
SPI bus of the NOR flash (CS0) and microSD-card (CS1) by adding the
HC959s (CS2) there in the way you described **or** having an
independent bit-banged bus just for the SPI-connected HC595 driven
LEDs. It's trading CPU-time for SPI-bus-access time for a rather
neglectable load, so I'm also biased to go with sacrificing SPI bus-
access time, ie. using CS2 and pinmux in the way you suggested and
I've just successfully tested.

> 
> > +
> > +       leds {
> > +               compatible = "gpio-leds";
> > +
> > +               signal0 {
> > +                       label = "rut955:green:signal1";
> > +                       gpios = <&gpio_ext 0 GPIO_ACTIVE_HIGH>;
> > +               };
> ...
> > +&spi {
> > +       status = "okay";
> > +
> > +       cs-gpios = <0>, <0>;
> 
> I pushed a spi driver replacement yesterday and we don't need this
> cs-gpios to fix num_chipselect in driver now :)

Ack. removed.

> 
> > +       num-cs = <2>;
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&jtag_disable_pins>, <&pmx_spi_cs1>;
> > +
> ...
> > +&eth1 {
> > +       status = "okay";
> > +
> > +       mtd-mac-address = <&config 0x0>;
> > +
> > +       gmac-config {
> > +               device = <&gmac>;
> > +       };
> 
> This gmac-config can be removed if you don't need it.

Ack. removed.

> 
> > +};
> > +
> > +&builtin_switch {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pmx_leds_switch>;
> > +};
> ...
> > +  IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs |\
> > +       pad-rootfs | teltonika-fw-fake-checksum | append-string master |\
> > +       append-md5sum-bin | check-size $$$$(IMAGE_SIZE)
> > +  IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(BLOCKSIZE) |\
> 
> Do we need this "pad-to $$$$(BLOCKSIZE)" in
> factory.bin/sysupgrade.bin? kernel/rootfs can be split anywhere and we
> may squeeze out several kilobytes by removing this image padding.
> Also I'm wondering whether "tplink-v1-image sysupgrade" recipe could
> replace "append-kernel | append-rootfs | pad-rootfs" here.
> ("tplink-v1-header" needs to be removed from KERNEL or there'll be
> duplicated headers)

I've copied the image generation code from ar71xx/generic/rut900 which
shares the same base-board and flash layout. As pepe2k was suggesting
he would add RUT900 to ath79 after support for RUT955 got merged, I
leave it up to him so also re-organize the image generation code
because he is also the author of the original ar71xx code and I will
no longer have physical access to the device to play around with from
next week on... Hence I'd just leave it like it is for now.


> 
> > +       append-rootfs | pad-rootfs | append-metadata |\
> > +       check-size $$$$(IMAGE_SIZE)
> > +endef
> > +TARGET_DEVICES += teltonika_rut955
> > +
> >  define Device/trendnet_tew-823dru
> >    SOC := qca9558
> >    DEVICE_VENDOR := Trendnet
> > --
> 
> Regards,
> Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
