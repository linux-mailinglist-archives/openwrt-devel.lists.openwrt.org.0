Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215581EBF3
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 12:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+GC/N/kL6QfWXi4glfIy0y3yolGwKG10q/cl+PdSQYs=; b=X1GNrmHaVqf11+a3cqDsI3AoCV
	B0nNGEvo/r2HfpSI7zPudjXFFpSCQtGquO5bU85S5+vy3FQS8MBo/f8ysyOwk51UQhOoZo9sdCBzZ
	zaBRtY7+rHrw2IAQDuzDdYUoGODIvsxV9yREFhAlsqMx+PYmmHv3xE8D8zAUT0LkN/Y/NRPZ2u4wZ
	QEC9jDVy3O8ELMT0TSxwRZ0ThMmNAZOKL+F2SLzkjUPgdkCpeS/RKdkPBbGca1IfZUj7NqAmP9/43
	7zAuugw2AmI4cSZE81KdTcmEr+oe19BH/Md9Pkjiiy6NBFUZ+++Stf/akRNuiYSzNKU/zg8XSjK6b
	xx8IR25w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqyr-0008P7-Qc; Wed, 15 May 2019 10:17:49 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqyk-0008Ol-KQ
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 10:17:44 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FAHb7b023311
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 12:17:37 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1AB81464C;
 Wed, 15 May 2019 12:17:34 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 85cda6cb;
 Wed, 15 May 2019 12:17:32 +0200 (CEST)
Date: Wed, 15 May 2019 12:17:32 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190515101732.GA17721@meh.true.cz>
References: <20190510162622.22068-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510162622.22068-1-kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_031742_978646_C0D492F4 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: Add support for Head Weblink
 HDRM200
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kristian Evensen <kristian.evensen@gmail.com> [2019-05-10 18:26:22]:

> In order to install OpenWRT, you first need to compile an initramfs
> (ramdisk)-image for the device. 

This is no longer valid, right?

> --- a/target/linux/ramips/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/base-files/etc/board.d/01_leds
> @@ -184,6 +184,9 @@ hc5861)
>  	ucidef_set_led_netdev "wifi5g" "wifi5g" "$boardname:blue:wlan5g" "wlan0"
>  	ucidef_set_led_netdev "wifi2g" "wifi2g" "$boardname:blue:wlan2g" "wlan1"
>  	;;
> +head-weblink,hdrm200)
> +	set_wifi_led "$boardname:green:wifi"
> +	;;

this could be grouped with other devices.

> +			gpios = <&gpio0 19 GPIO_ACTIVE_LOW>;

pa group

> +			gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;

spi refclk group

> +			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;

wled group

> +			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;

uartf group

> +			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;

uartf group

> +&pinctrl {
> +	state_default: pinctrl0 {
> +		default {
> +			ralink,group = "i2c", "uartf", "pa", "spi refclk",
> +				       "wled";

so if I'm counting it right, you should probably remove i2c.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
