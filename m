Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B74B527F9
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 11:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQgI4xlMRDJ/QmgdYailYwkguSEXO3gjMajntKaU4K4=; b=g+qcfMdo7SUeg4
	udo5gw1oxeR3PA62G9WiBEFiiCJnH4dLdLHyA0FGnKG0/IkOGWhEbgcEmQxoMnyn3JVnQOV236t10
	XyG/i7jbVrHjPDq1dKFsjMPhjCWSCoT0BXFvrHvlrR+v1K7A1QLeZFh0tzCFfMoyXLzorzHGqlnPW
	JZaM41zyG0FGntFFI41ppZc8RM4H2jWQkmjqB9ehmNAP/e55ByhC+D7ROemjGiLXpAdPtUgkOhOI3
	y9cYEvON111pI4cKnLERp8cXBlHqGY9l2P8EeeCRCZi2hYHTCIj8a5Rp3XgP3cNFQQlnAU/O4Ncgd
	FnsZxLKLD1PIgEBl4fDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhfx-00073E-Vp; Tue, 25 Jun 2019 09:23:42 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhfW-0006xY-Ed
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 09:23:16 +0000
Received: by mail-wr1-x433.google.com with SMTP id c2so16983090wrm.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 02:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QqHXre8uxVOdUiaL3E+rIP4yQFYE24rRmeqV3EBEzHo=;
 b=qlSnP4JhzviESAryp35ZPHjbM2gYxBqYW+ZJVyLeS7eBckhva1tf+QnrdjPRZQ2eRj
 gbkaffeyq0ERHTls1dHKkzBQVxGTRRCUR0LDNmbsD/eRvo46926jSnh1cx3nxQv/o0XD
 4a0A06/Y/jH6xUeCD4GJhpmCWq2lhV81hc1cZx+6d7fhKVX6wuT84/U3qnazUdMjjZZl
 aWfa+0N1M1bL4smFR2FEeTulrtIhk1ctsWvf9FsYUXcEoRYHP5LHZjoZY2yYlzmATBHT
 JIvHEKVUjFuC61WmuArhNIcOAecLatfJ5GhyiKwm4ts8L6XfhB32oZxV+88tpJhnP8vM
 pN2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QqHXre8uxVOdUiaL3E+rIP4yQFYE24rRmeqV3EBEzHo=;
 b=YG4u7tbuY3erBx0FdZpWIgBATCR0sACbJaoMRiWvL9B3X1b2T1ylhhVyq8w3yPEPL/
 5nm2nnuCiHBx9ngQGyqF2eOyL5LxEjCQoXhtz1cp1UUsErMcxIO22JzUH6p+pbKu5XFc
 iiOYh+YD3vyv5+Eb5zl3cR4F+ab543PK/2md+BK+oUGFY/L+ND5nPKpiFZniPmtxg/5n
 pNDbrVMZtTOf1XfXcq4VC67FU0uCX24l4CS4rOzUTz+SkglJRh9yMfaI/1n0tr6ONuJ+
 oTBd4kU3kvS1RP3bgnqsrAez312WiWcZ4WBkfcwU/onXfn51ymJJiW0fr/mH48AFthir
 S60A==
X-Gm-Message-State: APjAAAXRgmHgWocwj+7NlJMhJ3sAkig8+JTFkFdNuZL3M4HMaNSx4IwG
 R8W1smJUuhKRSpBOFH5zGo0=
X-Google-Smtp-Source: APXvYqwqoguwFeRYl44jBZfJy2/PpFpjC2CcNttHeOxbwW3vZBH4w46aAvM1jAC48fr4ywbrzWl3+A==
X-Received: by 2002:a5d:6389:: with SMTP id p9mr22230265wru.297.1561454592353; 
 Tue, 25 Jun 2019 02:23:12 -0700 (PDT)
Received: from debian64.daheim (pD9E29981.dip0.t-ipconnect.de.
 [217.226.153.129])
 by smtp.gmail.com with ESMTPSA id v65sm2571518wme.31.2019.06.25.02.23.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 02:23:11 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hfhfT-0003IG-8O; Tue, 25 Jun 2019 11:23:11 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: David Bauer <mail@david-bauer.net>
Date: Tue, 25 Jun 2019 11:23:11 +0200
Message-ID: <6483537.HxzJLxGeEp@debian64>
In-Reply-To: <312a0f5f-d712-dcfd-a07f-c2215d90002b@david-bauer.net>
References: <20190624123157.2437-1-mail@david-bauer.net>
 <2106121.d8lVLhYgiR@debian64>
 <312a0f5f-d712-dcfd-a07f-c2215d90002b@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_022314_577438_64A47E5F 
X-CRM114-Status: GOOD (  28.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi David,

On Monday, June 24, 2019 10:00:06 PM CEST David Bauer wrote:
> Hello Christian,
> >> +
> >> +	keys {
> >> +		compatible = "gpio-keys-polled";
> > The MT7261 should support interrupt-supported gpio-keys.
> 
> I will try your suggestion, however i suspect we will face the same 
> issues we have on the ath79 platform currently.

Well, from what I can tell the gpio in the apm821xx works differently
than that of the ath79... and the mt7621 will be different as well.

I wonder if making the change brought just enough attention to the
driver and everyone just checked and found some hidden issues.
 
> While we are at it - i haven't forgotten about this one but due to 
> hardware issues, testing is currently a bit cumbersome.

No sweat :) (Yes, it's already too hot). 
 
> > 
> >> +		poll-interval = <20>;
> >> +
> >> +		wps {
> >> +			label = "wps";
> >> +			gpios = <&gpio1 11 GPIO_ACTIVE_HIGH>;
> >> +			linux,code = <KEY_WPS_BUTTON>;
> >> +		};
> >> +
> >> +		reset {
> >> +			label = "reset";
> >> +			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> >> +			linux,code = <KEY_RESTART>;
> >> +		};
> >> +	};
> >> +
> >> +	led-regulator {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "LED-Power";
> >> +		gpio = <&gpio1 14 GPIO_ACTIVE_LOW>;
> >> +		regulator-min-microvolt = <3300000>;
> >> +		regulator-max-microvolt = <3300000>;
> >> +		regulator-always-on;
> > Just curious, is this regulator related to ASUS "Night mode"
> > feature? Also did you measure the voltages or is there a
> > 3v3 LED driver on the board?
> 
> I suppose it is as the PHY LEDs seem to be controlled in hardware and so 
> can't be toggled from software. The voltage is the one that goes to the 
> LEDs.
> 
> Thinking about this, do you think we are better off using a "fake" LED 
> for this that we set default on? A user is then able to turn off even 
> the LEDs we can't control in software. We could name it something like 
> "rt-ac57u:power:led". However, this would violate the naming scheme.
> 
> What do you think?

I think we should extend LuCI & friends so it can switch on/off these
regulators ;). (Note: we probably don't want to mess with all regulators
, usb-regulators for example should be controlled by the driver).
> >> +	};
> >> +};
> >> +
> >> +&spi0 {
> >> +	status = "okay";
> >> +
> >> +	flash@0 {
> >> +		compatible = "jedec,spi-nor";
> >> +		reg = <0>;
> >> +		spi-max-frequency = <10000000>;
> > I haven't said much about the spi-max-frequencies before
> > but from what I know thanks to the threads like
> > "ramips: Increase GB-PC1 SPI frequency to 80MHz" the original
> > these values are off. And once the target switches to 4.19 (and
> > uses the upstream mt7621a.dtsi + spi-driver) this needs to be
> > reworked on all devices I think
> 
> I just head a quick look over this thread and the driver. I might be 
> missing something, but shouldn't the spi bus run with 10 MHz in this case?

Is 10MHz even a supported frequency for the SPI-NOR chip? From what I know
the problem arose because of the dodgy 50MHz value for the sysclock for the
MT7621 (I think it's 200 MHz so it's 4 times as fast).

If you look into the mt7621 datasheet you see that the SPI frequency is
generated from the sysclock and the driver just sets the divisor. So the
"10 MHz" spi frequency would actually be "40" MHz".

I think you can measure the time it takes to read the SPI-NOR and check
if the KiB/s match with the selected frequency or not.

(That said, this is wrong on so many other ramips. so.)

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
