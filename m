Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDC5151CD5
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Feb 2020 16:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1rzrid4lwkfLo+Xu/pgnXS7jiAQ2V3FwwPaGwK0lm4=; b=ILLirS6Ea7pi5p
	L2CGGiZbIRReqaNQye2ZiVgjoRz0Iydy85uBr/FLjV34J94KPjp+H0hrQEbz2mZJAN+s08oDlI56J
	yR0SAaERp8bppJIqodhEhHoICWi9xyksc8elixw4yp85581aQTOR2N/knHC+eTyFZExZSJDq8OhcZ
	A2ylqTL427bQFCmSAVBXfndR29iA7vj+386Lt1InH/oKMX+lNAnkzBdFYVyakEkkIoa0EypqoQGd7
	LlhpS4ldZwmf7jFk+LUbPzWAmdT3aDRr9xUogUcC4KMyesb7Vqa5OOSdNVdd6BatZO/8rYq8o1hNC
	SdX083F4RCc4pMrnectg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyzhq-0002jP-Ie; Tue, 04 Feb 2020 15:01:38 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyzhk-0002iu-Jl
 for openwrt-devel@lists.openwrt.org; Tue, 04 Feb 2020 15:01:34 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iyzhi-0004GC-Qn; Tue, 04 Feb 2020 16:01:31 +0100
Date: Tue, 4 Feb 2020 17:01:24 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: mail@adrianschmutzler.de
Message-ID: <20200204150124.GB4491@makrotopia.org>
References: <20200202163756.GA9941@makrotopia.org>
 <00f301d5d9ec$65e67910$31b36b30$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00f301d5d9ec$65e67910$31b36b30$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_070132_648404_E64B26B4 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Feb 02, 2020 at 06:15:41PM +0100, mail@adrianschmutzler.de wrote:
> Hi Daniel,
> 
> several comments inline below.
> > +	compatible = "tlt,rut955", "qca,ar9344";
> 
> I would prefer having the full vendor name here (teltonika,rut955), as we tried to avoid abbreviations in names for ath79 wherever possible (with the exception of ubnt).

Ack.

> > ...
> > +	leds {
> > +		compatible = "gpio-leds";
> > +
> > +		signal0 {
> > +			label = "rut955:green:signal1";
> 
> I'd prefer having the same numbering for node and label here (signal0<>signal1).

Ack.
> > ...
> > +
> > +		led_system_red: systemred {
> 
> Please add an underscore: system_red
Ack.

> 
> > +			label = "rut955:green:red";
> 
> This should be rut955:red:system ?

Oh yes. Ack.

> > ...
> > +			gpios = <&gpio_ext 5 GPIO_ACTIVE_HIGH>;
> > +			default-state = "off";
> 
> Default-state "off" is default, so I think this is not needed (also above).

Ack, removed.

> > ...
> > +			partition@f70000 {
> > +				label = "event-log";
> > +				reg = <0xf70000 0x80000>;
> > +			};
> 
> There are 0x10000 left empty at the end?
> Is this writeable by intention?

No, length should be 0x90000 instead, was a typo.
Also set read-only as this is not being used by OpenWrt.

> > +&wmac {
> > +	status = "okay";
> > +
> > +	mtd-cal-data = <&art 0x1000>;
> > +	mtd-mac-address = <&config 0x0>;
> > +	mtd-mac-address-increment = <2>;
> 
> No other addresses available in flash? art 0x1002 not usable?

00000000  ff ff ff ff ff ff ff ff  ff ff ff ff ff ff ff ff  |................|
*
00001000  02 02 00 02 03 04 05 06  00 30 3a 30 32 3a 30 33  |.........0:02:03|
00001010  3a 30 34 3a 30 35 3a 30  36 00 00 00 00 00 1f 00  |:04:05:06.......|

Doesn't look useful to me :(
> 
> Please use newer syntax:
> 
> DEVICE_VENDOR := Teltonika
> DEVICE_MODEL := RUT955

Ack.

> 
> > +  DEVICE_PACKAGES := kmod-usb2 kmod-usb-acm  kmod-usb-net-qmi-
> > wwan
> 
> Double space after -acm; I'd like a line break here.

Fixed.

> 
> > +kmod-usb-serial-option kmod-hwmon-mcp3021 uqmi -uboot-envtools
> > +  IMAGE_SIZE := 15552k
> > +  TPLINK_HWID := 0x35000001
> > +  TPLINK_HWREV := 0x1
> > +  TPLINK_HEADER_VERSION := 1
> > +  KERNEL := kernel-bin | append-dtb | lzma | tplink-v1-header
> > +  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | uImage lzma
> > +  IMAGES := sysupgrade.bin factory.bin
> 
> Could also use "IMAGES += factory.bin" here.

True.

I will repost v2 shortly after testing it with all changes suggested
by Piotr and you applied.

Thanks to both of you for the instant review!


Cheers


Daniel

> 
> Best
> 
> Adrian
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
