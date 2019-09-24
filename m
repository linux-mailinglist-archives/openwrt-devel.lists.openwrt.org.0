Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9083BBCAF5
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 17:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wZJHHJKEKSbFzoy+aqkatEDGa8nDQJh5RiiDy5CFZg=; b=nz+NJW7dSueWw7
	Rwap9mDCNmhlLKYN1/MyaqPZST5e8gCWgWcPYAc1ezebafZWnVVAPzhAdb1xh5ORjY9VjNjl4FVXk
	YgEr2aZxDashIPGeHTKtH93oNbGeC5i5D2nc8EZpgAYX8sDsdCPFN1ipx8oe62sY8wAi+Ms8pUkcL
	gZePA0nLm390bsb52O1p6/weeri8dZ0Ma8HAE15JqlmtOQDl/6sqO3xzhI8IAsgY/+ayxIIVKpdEA
	sSjbCCwwwH1lxIq4R/bYKCJLS/6l2MdRuvqGNv7d9ZIEn1y5cq4aJfh/N4c2+CxdVzWl2IBIVR2Y/
	V8QZ16sp+jXIpX+zUMaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmYD-000068-7G; Tue, 24 Sep 2019 15:16:25 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmXv-00005Q-KU
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 15:16:09 +0000
Received: by mail-io1-xd41.google.com with SMTP id n197so5306706iod.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 08:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yve93XFFjStLp46sUQEGhtMx0fKXOTjMDLbQlveeTRo=;
 b=Fn/2a7Q1czqa2V92e9hyR1nVWAQ5LDWiO+0AkJL+zAyVrK68+3wpqUenPC9osJjWnJ
 RR3ti3NIsOQqziKPBq5I4uJFNGhLx4UaTbCml2b3eaDivj/0wMA1HGFyDm+oylakoMmI
 Mm9pc+ZAizoAMTg4n1SbYPgttquyiCW1acuSVgNi//rmDhvyg+PKv+no9MU3cDwHx59N
 XxTpb759PhGkcZi4rjuAwwWb4XY0MnxPwy1HJJZnchwD+tBXOX4T/UfxgWthRcH1bfgc
 2CYO9rI8P2QF9hRZBd1N4VnhTizvjPRt/c4fPDmPHtddVysinaZikHPTP7lOHvG3EK/n
 NQow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yve93XFFjStLp46sUQEGhtMx0fKXOTjMDLbQlveeTRo=;
 b=IVrerzt0OvJxJjOJqiScBmvZQzOqqNI5pUTBLze3ZFzcS2eOvN1R773eSK/+uJYpxh
 D+6abljo4y1ZN+xnw2PFlw1K47PUdvHPWFCIcS/IlQ7wRlvNiAePlGfw0Z3nE0KouE+m
 JHertXfK8he6k7xHa9HXAUmiz9yCLFhggEgsJo4idbmitnUBim0JB9Q6U3+eqyD+zCi8
 BuNA1Lf0qMdX0lH9Sb5ZwpmXAphpJXPamvEO2BDs/cEDR121g4JHQDe25cuk+U5VFSKf
 7qj8PYB0BvOexsAwG/637z5qt0dyhi3LD+woF5SxT7oswr3Gz8k6AG5x4LN8aIz3I11C
 mzoQ==
X-Gm-Message-State: APjAAAX4hxK84DzgfOgd2i16PRPYpUflMOLfjXD40cIZamon0QevDGyO
 nZ5+mzigfnOi70qd4KBLdzclbodiNeuuKmPhuesabM0v
X-Google-Smtp-Source: APXvYqzuFP999uV3aao37Z8PZM1DMoGt6xmSRctKm1RHywT03RT8zFlONtxow8T7uk+1Bo2H1vklsUqNY8gvGlQ8K/M=
X-Received: by 2002:a6b:2bc1:: with SMTP id r184mr3980148ior.146.1569338166579; 
 Tue, 24 Sep 2019 08:16:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190924104712.19812-1-kristian.evensen@gmail.com>
 <20190924104712.19812-3-kristian.evensen@gmail.com>
 <00b801d572cb$2755f550$7601dff0$@adrianschmutzler.de>
In-Reply-To: <00b801d572cb$2755f550$7601dff0$@adrianschmutzler.de>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Tue, 24 Sep 2019 17:15:55 +0200
Message-ID: <CAKfDRXhp++naehcrx2wXCLr7o20K3vUpLsJB2vk95f_CW8J-1g@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_081607_705229_769AB3B0 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ramips: Add support for ZBT
 WE1026-H
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
Cc: Alex Maclean <monkeh@monkeh.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 musashino.open@gmail.com, Mathias Kresin <dev@kresin.me>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Tue, Sep 24, 2019 at 1:28 PM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> first of all:
> Naming scheme for ZBT devices is mixed in ramips. Some include the ZBT in model name, some don't. In your case, this means the following options:
> zbtlink,zbt-we1026-h    corresponding to model    ZBT-WE1026-H
> or
> zbtlink,we1026-h    corresponding to model    WE1026-H
>
> I do not know what's correct here (if there is right/wrong for this at all), but just want you to decide about this intentionally. Even if the existing WE1026-5G proves to have the wrong scheme then, I'd use the correct one for the WE1026-H.

I prefer consistency, so my preference would be staying with the
initial naming scheme used for this "family" of devices.

> > diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
> > index 46202b4117..3e12c2a947 100755
> > --- a/target/linux/ramips/base-files/etc/board.d/01_leds
> > +++ b/target/linux/ramips/base-files/etc/board.d/01_leds
> > @@ -461,6 +461,11 @@ zbtlink,zbt-we826-16m|\
> >  zbtlink,zbt-we826-32m)
> >       set_wifi_led "zbt-we826:green:wifi"
> >       ;;
> > +zbtlink,we1026-h-32m)
>
> If you keep this name (without zbt), then you should sort it appropriately, i.e. "we" before "zbt" ...

True, thanks for spotting that.

> > @@ -721,6 +722,9 @@ ramips_setup_macs()
> >               wan_mac=$(mtd_get_mac_binary factory 0xe006)
> >               label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
> >               ;;
> > +     zbtlink,we1026-h-32m)
> > +             wan_mac=$(mtd_get_mac_binary factory 0x2e)
> > +             ;;
>
> Depending on how the label MAC address discussion below ends, you might merge this with the node for cudy,wr1000.
>
> >       *)
> >               wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
> >               ;;
> > diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.dts b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-
> > 32m.dts
> > new file mode 100644
> > index 0000000000..ca62ccfc84
> > --- /dev/null
> > +++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.dts
> > @@ -0,0 +1,14 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> > +/dts-v1/;
> > +
> > +#include "mt7620a_zbtlink_we1026-h.dtsi"
> > +
> > +/ {
> > +     compatible = "zbtlink,we1026-h-32m", "zbtlink,we1026-h",
> > +                  "zbtlink,we1026","ralink,mt7620a-soc";
> > +     model = "ZBT WE1026-H (32M)";
> > +};
> > +
> > +&firmware {
> > +     reg = <0x50000 0x1fb0000>;
> > +};
> > diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi
> > new file mode 100644
> > index 0000000000..fed79c2809
> > --- /dev/null
> > +++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi
> > @@ -0,0 +1,42 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> > +/dts-v1/;
> > +
> > +#include "mt7620a_zbtlink_we1026.dtsi"
> > +
> > +/ {
> > +     compatible = "zbtlink,we1026-h", "zbtlink,we1026",
> > +                  "ralink,mt7620a-soc";
> > +
> > +     aliases {
> > +             led-boot = &led_power;
> > +             led-failsafe = &led_power;
> > +             led-running = &led_power;
> > +             led-upgrade = &led_power;
> > +             label-mac-device = &wmac;
>
> This won't work, as wmac uses ralink,mtd-eeprom without mtd-mac-address (so you do not have access to the mac address via /proc/device-tree).

Ok, thanks for letting me know. I got confused because I saw other
devices assigning the same value to label-mac-device. I will remove
label-mac-device from the DTS then, as I do not see the point of
having something around that may or may not be used in the future. The
assignment can rather be added when label-mac-device is properly
supported.

> Current policy is to keep label-mac-device here anyway (for future use), but to include a line like the following in the mac setup section of 02_network to actually have label MAC address set:
> label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
> You have to evaluate whether phy0 or phy1 is correct for your device.
> If phy0 is, you can just add the device(s) to the cudy,wr1000 case.

Ok, thanks.

> If you have access to the WE1026-5G, too, the cleanest way would be to check label MAC address on it and then add label MAC address for all WE1026-* in 02_network, and move the label_mac_device alias to the parent DTSI where wmac is set up.

I will that a look.

> > +define Device/zbtlink_we1026-h-32m
> > +  MTK_SOC := mt7620a
> > +  DTS := WE1026-H-32M
>
> This line (DTS) can be dropped. DTS name is constructed automatically from node name and mtk_soc ...

Thanks for spotting this.

>
> > +  IMAGE_SIZE := 32448k
> > +  DEVICE_VENDOR := Zbtlink
> > +  DEVICE_MODEL := ZBT-WE1026-H
>
> If you choose that name, then you have to use zbtlink_zbt-we1026-h-32m.
> Otherwise, put "WE1026-H" here.

The DEVICE_MODEL for the other 1026-devices all start with
"ZBT-WE1026", so I prefer to remain consistent.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
