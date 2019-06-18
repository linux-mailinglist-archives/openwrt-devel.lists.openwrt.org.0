Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3594A07A
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Jun 2019 14:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P01nR96HExhIQwlqZBI3wPWADx39Gq60X5a++nbjhqE=; b=iUOR9D2I9XdzFlNomVLZRldZFd
	j56Q2YjoxE2XDxP0Wk2JF81OoPsO/gDUHUwPV0q3YqQAdS5gE5aCNlFRaJC8H/tHCU55q5r63mTM/
	+Qa+YNY8qHfaFMkxelmgDn4F77CtXZ+3Rc1Trg/7kjOAHQzL8aAhQ8ekenIPsv2X5VoauGwKXG4dr
	Ewo4PxpEfls5bJuk6Yzr9YhRGM5duxIVpY5Ig/smymRs8cS6WTC3fIMGIfLdbTnTCTMC8VDitv5so
	ZlGIMPfxCR8LxSv2X5T1HxineMZ/Ce7BV5yT4yBrJjgsMOS6dsBte2DIaCzvedX0ev3aXFWbnvmVT
	/DUab6Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCzQ-0007cp-Ur; Tue, 18 Jun 2019 12:13:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCvM-0003Ht-E0
 for openwrt-devel@lists.openwrt.org; Tue, 18 Jun 2019 12:09:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2001C4F6F;
 Tue, 18 Jun 2019 14:09:10 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d091c635;
 Tue, 18 Jun 2019 14:09:07 +0200 (CEST)
Date: Tue, 18 Jun 2019 14:09:07 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <20190618120907.GB95426@meh.true.cz>
References: <57f03f8d-5e39-8b0f-a1d9-e2db645864cd@birger-koblitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57f03f8d-5e39-8b0f-a1d9-e2db645864cd@birger-koblitz.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050916_645090_39ABA2C3 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Edimax
 EW-7478APC
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Birger Koblitz <mail@birger-koblitz.de> [2019-06-11 20:39:49]:

Hi,

> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led_power: power {
> +			label = "ew-7478apc:white:power";
> +			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
> +		};

please new line here

> +		internet {
> +			label = "ew-7478apc:blue:internet";
> +			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
> +		};

there 

> +		wlan {
> +			label = "ew-7478apc:blue:wlan";
> +			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
> +		};

and there

> +		usb {
> +			label = "ew-7478apc:blue:usb";
> +			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
> +			trigger-sources = <&ohci_port1>, <&ehci_port1>;
> +			linux,default-trigger = "usbport";
> +		};
> +	};
> +
> +

remove the stray newline here

> +	gpio_export {
> +		compatible = "gpio-export";
> +		#size-cells = <0>;
> +		usb-power {
> +			gpio-export,name="usb-power";
> +			gpio-export,output=<1>;
> +			gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
> +		};
> +	};

We're trying to get rid of the `gpio-export` functionality as it's hack for
missing kernel functionality, which was rejected in upstream kernel long time
ago, for details see this email
http://lists.infradead.org/pipermail/openwrt-devel/2019-February/015772.html,
discussion in PR#1366 or
https://github.com/openwrt/openwrt/pull/1814#issuecomment-462942022.

You can replace this with gpio-hog
https://github.com/openwrt/openwrt/blob/6ab138fa84c285075a787fe8ef1ed50b5cc28a85/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts#L78

> +};
> +
> +

stray newline here

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
