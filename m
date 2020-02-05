Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0422315370D
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 18:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEdek2ylkUjWrfCA+UZ4VuYOkN7xuuLitokJZ93O9Ss=; b=fSRAymGZhEECQ4
	fcg4dV7GonuNFRjnqN6gLS5RtB1Vc8kJSxbJs9G20yGakCk960ZdQ9IIvdt86ch5gVOoOw4yQ1WhO
	wZoHgu/03kecFQF4q0M7/0Njx1GA8vBZs4XCqmr4EHUj0ziBILFFS4lpmFTydofqcdJ2Zapgg5UxD
	Bc9i01H6tLXOq04CNJVi3azHI2W6fu0IwQ/hVE8ldZ0Dw1bOIAzX1+axQ45R77tBjS7Etj/MbGPTT
	qXiBZ86q6FZaEcjhMastJzhsrEQ9K8pze/GDcndnzXp4//wyk45+PmFAcJI72g3Qc1YI+pliiEVYP
	FeFQbZGkBs2xsomFUKiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOog-0003ZW-LC; Wed, 05 Feb 2020 17:50:22 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOoP-0003YL-NI
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 17:50:08 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1izOoN-0002J2-0b; Wed, 05 Feb 2020 18:50:04 +0100
Date: Wed, 5 Feb 2020 19:49:59 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20200205174959.GB736874@makrotopia.org>
References: <20200205170651.GA879610@makrotopia.org>
 <00d401d5dc49$062096a0$1261c3e0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00d401d5dc49$062096a0$1261c3e0$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_095006_421630_6DF42383 
X-CRM114-Status: GOOD (  11.60  )
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
Cc: openwrt-devel@lists.openwrt.org, 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Feb 05, 2020 at 06:23:46PM +0100, Adrian Schmutzler wrote:
> Hi,
> 
> > +	leds {
> > +		compatible = "gpio-leds";
> > +
> > +		signal0 {
> > +			label = "rut955:green:signal1";
> 
> Still signalX not matching here.

Ah, I'll fix that.

> 
> > +			gpios = <&gpio_ext 0 GPIO_ACTIVE_HIGH>;
> > +		};
> 
> [...]
> 
> > +
> > +		led_system_green: system_green {
> > +			label = "rut955:green:system";
> > +			gpios = <&gpio_ext 6 GPIO_ACTIVE_HIGH>;
> > +			default-state = "on";
> > +			linux,default-trigger = "phy0tpt";
> 
> tpt trigger to the system LED? Don't think that would be really helpful, maybe
> one can use one of the signal leds for that?

This is how the vendor firmware handles it as well and there is a
Wifi-symbol next to that LED. The signal bars are supposedly intended
for the GSM/WCDMA/LTE WWAN signal strength.

> 
> > +		};
> > +	};
> > +
> 
> [...]
> 
> > +define Build/teltonika-fw-fake-checksum
> > +	# Teltonika U-Boot web based firmware upgrade/recovery routine
> > compares
> > +	# 16 bytes from md5sum1[16] field in TP-Link v1 header (offset: 76 bytes
> > +	# from begin of the firmware file) with 16 bytes stored just before
> > +	# 0xdeadc0de marker. Values are only compared, MD5 sum is not
> > verified.
> > +	let \
> > +		offs="$$(stat -c%s $@) - 20"; \
> > +		dd if=$@ bs=1 count=16 skip=76 |\
> > +		dd of=$@ bs=1 count=16 seek=$$offs conv=notrunc
> 
> Maybe change to bs=16 count=1 for both? (Don't forget seek_bytes/skip_bytes
> flags in this case.)
> 
> Best
> 
> Adrian
> 
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
