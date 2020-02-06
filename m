Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EED1541CF
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 11:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBeLdJeMjl2xzEDPWjLBNQ+SeUDHF9lMH8ijcoP5agU=; b=c4QpM+BoINfev2
	Fy/RI8DzA3yeyoZqwQmhJzw1BueyMeDGGfsBpZmc3BsJM7XRYLSFD7NdS5r8Q2MASpK+HmhBfwVdc
	zZ16jhaOH/bnTIXbzcX9z6bkLg4Jbc22xsAtkchwyTvuxLaaMCdyyuuXMujI9WMtCM87xr3EzFPJv
	pz2Qdk03chwdbozHADUWeV+HgyzeW7NOIzGOMHakr3Dkqos4di+Bas8Hir3YtrEdUECpzd/TAh/OV
	sEWINji/FQ863m8X+y1bb0AkhLlOwa4Zf0ysZBCouvqnmAc8vAkD4Ro25XA5jcmAYGyikcPUcs1nX
	j/4aFB4wLB4IVenbcOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izeL6-00020R-I9; Thu, 06 Feb 2020 10:24:52 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izeL0-000200-00
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 10:24:47 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M4JeB-1izNDn2pY9-000K2T; Thu, 06
 Feb 2020 11:24:42 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Daniel Golle'" <daniel@makrotopia.org>
References: <20200205170651.GA879610@makrotopia.org>
 <00d401d5dc49$062096a0$1261c3e0$@adrianschmutzler.de>
 <20200205174959.GB736874@makrotopia.org>
In-Reply-To: <20200205174959.GB736874@makrotopia.org>
Date: Thu, 6 Feb 2020 11:24:41 +0100
Message-ID: <004f01d5dcd7$a5485cc0$efd91640$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQFpItzt0sW1W2ThBmMl3plCjORfTQI3A9cNAg2C7gqoxURCcA==
X-Provags-ID: V03:K1:Vbk0Yq2sYKSp9HyqoQfkwrBqICe7vXQfh44B3aKw+5KAGq709lo
 k9NUveO241/cDSb5EzE2vUMP2Y6s4DA0pkYc1ghKMjgO9+sRO/x/HbKwfw/W55DXdN4oXWZ
 kkEq6E06JFkyqcV1+/zXw6Kl2SAYc3lLWUb4PQDQueypA4FiQadU30G53xujZCYN5qCwOoc
 7+6bfF2tUKA9HjgWMV21w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0NRN+aCfAXo=:eKsI2fJFFsIgJdwhF+cUqF
 y4WALcwDXMVaaEF7hzBj6OF6LR/UKccZtELdkgqa7c/3YxvkgTM0l9VE46xSl1NgZPY6lY2sR
 YiCwH1LldTVKDY7yP+hpxDQoPAA8ZH+HNacXP/QMfgGlAwXQPJkGCW/6Aoj2N/Ie8XEaghaGU
 RLDUpPdh8y9VJHKRUhxmKfrieQBs97APOHSBnjz1gsb/GLAJP9hGv9KiTGrnJnVe/juw8akhl
 B/gNeyC2XiFC47uCMwInwUNN2sgUTMuO7lAMvUvGeyc6E+JLQZP5hrViwX82jsOjMmPWzHj6m
 U5ileynEtLyO/upr0bMFO0zZLrgbJHJ7hPrHdSu2rVJjwxJhH0NH6DxCom44FGiU30qSPQyKa
 80EG5eAcusa+ggxoR60dBkzHYIfyqKcGsuViAglgkXNJ09E/hvLq3JTZ4TwAHYMUCCNw6UeUF
 LpFXQCH8SlyzVSoOggqh+uIWMqWfotTzWak+UqIeUDLf3uGcC4sRSkqmltG96v0JjuNAEkQeQ
 BzODrTAUxghMXj3nPwg9AvSZIyyZxcnpDw2jbSiSd2LCDYf855PGPLgfe921ulWmYr4zvXsno
 kbq4ksaLp6Kx1Dty9tNgFobtSLEvz+EWYwf/pUcxxkyYP5bA228icHZq3QDzVLcMA5dNt+D4t
 YbLjpEFdutTgWDLZdQaDyMbBDOj2pxq8jfhwYQlG2Bfm0bMToLXmdWItXXnyISffFkgDPXKqo
 k5IHSmIRqxUNS5vi0eDvOQJevSTFnUJYh77xG8iYUBVDYWbEpOR1fEckWkhH5V4nDKFB75CmL
 0JJqJi+g3zVl4s/SjLHf9fqpAFYuc9CFJJydagfy4cAoTVVODVm9mkGOuWurvs2v4KFNx0a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_022446_334167_2B64E084 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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
Cc: openwrt-devel@lists.openwrt.org, 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> > > +
> > > +		led_system_green: system_green {
> > > +			label = "rut955:green:system";
> > > +			gpios = <&gpio_ext 6 GPIO_ACTIVE_HIGH>;
> > > +			default-state = "on";
> > > +			linux,default-trigger = "phy0tpt";
> >
> > tpt trigger to the system LED? Don't think that would be really helpful,
maybe
> > one can use one of the signal leds for that?
> 
> This is how the vendor firmware handles it as well and there is a
> Wifi-symbol next to that LED. The signal bars are supposedly intended
> for the GSM/WCDMA/LTE WWAN signal strength.
> 

Okay. But the name/label should somehow indicate that, so it doesn't look like a
mistake.

If there is a WiFi symbol next to the LED, I'd actually consider renaming it to
"wifi" or "wlan", though.

Best

Adrian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
