Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14275965B7
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 17:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9ZsTeIJ5muJkf5dVlte8ht3HPwbWD5gZFcI49KtZhg=; b=kI2tuvTrNKEoUR
	eH4STFvsDvoG54LR5dTkYExURQsNWQvDchRu2vxu5rD5HmwrNVE0iN6Syvi2m09yf5W8jKaEp2zQ9
	JEaCIGoLN0/QxdaqR0RLnUJmbabZwnNwZvEOZwgwa4kvU1N9wpk5A6sOnEu4J4nySbWxK9PdK+MX/
	h8m+anIkDl2Cpiz619QuI2/RJZ6aUO6sHOScXKerKH60rtU39nuDADXbwHTUFulBl73NrxMdB1eUm
	JQE000UuD1/C4nscNt7uoew+b+3EYND7Ih2WiXUk1QBJm1Bm50pGJkN6ZOoD+uxpP4znlsoUhRszd
	EbSaonDXdCfa+657S/zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06WN-0007mb-K1; Tue, 20 Aug 2019 15:58:07 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06WC-0007ha-KM
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 15:57:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id l1so5594282lji.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 08:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=anHoEqIZvhAMNXS4PjkVo8n17KmLBMz3GEeeDCGTRvw=;
 b=nTmjGDFlYKw0085J73Si1m7rFxHWPTeYat0ClQclUA/rbY2vUnn+pPNsCTBlP0xNaJ
 pXzhMRAZJb9LfdkW15rq7zmlZd/TbCkKiUMVBeviuWXXmI5Hqk7CzKAQv0/YtbSXslWC
 l1XYawOOvNK2FB7U3o5dK4m/nVXe653jkk7MEm7cidXXLMwJV5/7B06wiU/jcWNJxT9p
 KYEKmAMz5KWF8CBzxPExNCnB8Tx8KaO9d8zzBFv8LRKMkX6MZB7n0vnu6xyMFkJNAeDo
 LD+zX64LjTSMhWFbb4z5JSchGsDJHKK/H9yGmZ681Re8TiHjRYp8g9q+WhulfuY+tjYs
 CfrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=anHoEqIZvhAMNXS4PjkVo8n17KmLBMz3GEeeDCGTRvw=;
 b=tEZESHyCFGuwKdb144J6R9cJ6O9fiv7jObeaflkR2pf92ETSxgrq9PW1MMyfO5FoSi
 7XsGUWOwxykvILGtX84tXjcaGcsOKFeM/hxopI6KLAyNdq7B4WH3oZwr3qWfr0Ot8FCz
 H8P3sR5vswfJno1INIMylodNgmCA27YAvQkP4pKcBRjOH3J0Pxxfu4wOaYIVDtpQg9fr
 NZWrcJxdrabbnTZPo4iRfmPK4d7SuYQOC37Qng3q/HnsWD7s3/fIZmPTdJOOhF+CsX2D
 lz2eNWAtElFJYeboafAx3zQgHh46ED+LkctqHinv7/zjhU+4JiQGIdNxsuDJ8ad0Rk4J
 prHw==
X-Gm-Message-State: APjAAAVaoScsfjh+kD/zFdHIyE6P2NCmXQlPEAkho0EDBcvRBmi+V5E/
 kfyNs3cDkDJyn1Oi00UylojEDmEw6Ha7wgIm94Q=
X-Google-Smtp-Source: APXvYqxAxbhLTUY/jecfweda2NuxsoJloDYqsbDVy71Fo8hvZGNO9AqlZs8tQpGsFFOSd0mdQ18bvzkyUeCFytKCi84=
X-Received: by 2002:a2e:8658:: with SMTP id i24mr12741151ljj.188.1566316674339; 
 Tue, 20 Aug 2019 08:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190820135159.15632-1-yszhou4tech@gmail.com>
 <000201d5576d$520b4620$f621d260$@adrianschmutzler.de>
In-Reply-To: <000201d5576d$520b4620$f621d260$@adrianschmutzler.de>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 20 Aug 2019 23:57:42 +0800
Message-ID: <CAECwjAj-5omvfG9zBcdhbOXDzbWjdrrG6DJJzgGfwW60vn40Pw@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_085756_673680_C28563E1 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound
 Networks Zodiac GX
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Paul Zanna <paul@northboundnetworks.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, 20 Aug 2019 at 23:38, <mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Yousong Zhou
> > Sent: Dienstag, 20. August 2019 15:52
> > To: john@phrozen.org
> > Cc: Yousong Zhou <yszhou4tech@gmail.com>; openwrt-
> > devel@lists.openwrt.org; paul@northboundnetworks.com
> > Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound
> > Networks Zodiac GX
> >
> > Hardware spec
> >
> >  - MT7621A dual-core 880MHz
> >  - 16MB Flash
> >  - 256MB RAM
> >  - 5 GbE ports
> >
> > Vendor device page: https://northboundnetworks.com/products/zodiac-gx
> >
> > Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
> > ---
> >  .../ramips/base-files/etc/board.d/02_network  |  1 +
> >  .../dts/mt7621_northbound_zodiac-gx.dts       | 97 +++++++++++++++++++
> >  target/linux/ramips/image/mt7621.mk           |  9 ++
> >  3 files changed, 107 insertions(+)
> >  create mode 100644 target/linux/ramips/dts/mt7621_northbound_zodiac-
> > gx.dts
> >
> > diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> > b/target/linux/ramips/base-files/etc/board.d/02_network
> > index c0de9d4e50..2e3e5fbba7 100755
> > --- a/target/linux/ramips/base-files/etc/board.d/02_network
> > +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> > @@ -392,6 +392,7 @@ ramips_setup_interfaces()
> >                       "0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
> >               ;;
> >       linksys,re6500)
>
> should be "|\" instead of ")" here?

Good catch.

>
> > +     northbound,zodiac-gx)
> >               ucidef_add_switch "switch0" \
> >                       "0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "6@eth0"
> >               ;;
>
> Above you say "5 ports", these are only four ...?

Indeed.  Will dig deeper to find better fit.

The device was designed to be used as a switch.  So I was searching
for the line containing only "lan"

>
> > diff --git a/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> > b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> > new file mode 100644
> > index 0000000000..51f2298d06
> > --- /dev/null
> > +++ b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> > @@ -0,0 +1,97 @@
> > +/dts-v1/;
> > +
> > +#include "mt7621.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +
> > +/ {
> > +     compatible = "northbound,zodiac-gx", "mediatek,mt7621-soc";
> > +     model = "Zodiac GX";
>
> Maybe include "Northbound" here, too.

Maybe I should just use the full name "Northbound Networks".  It's a
bit long but should be fine.

>
> > +
> > +     aliases {
> > +             led-boot = &led_status;
> > +             led-failsafe = &led_status;
> > +             led-running = &led_status;
> > +             led-upgrade = &led_status;
> > +     };
> > +
> > +     chosen {
> > +             bootargs = "console=ttyS0,57600";
> > +     };
> > +
> > +     leds {
> > +             compatible = "gpio-leds";
> > +
> > +             led_status: status {
> > +                     label = "zodiac:green:status";
> > +                     gpios = <&gpio0 15 1>;
> > +             };
> > +     };
> > +
> > +     gpio-keys-polled {
> > +             compatible = "gpio-keys-polled";
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +             poll-interval = <20>;
>
> Maybe try "gpio-keys" here, or is there a reason for the polled keys?

This line I just copied from other dts files.  Will change and test.

>
> > +
> > +             reset {
> > +                     label = "reset";
> > +                     gpios = <&gpio0 18 1>;
> > +                     linux,code = <KEY_RESTART>;
> > +             };
> > +     };
> > +};
> > +
> > +&spi0 {
> > +     status = "okay";
> > +
> > +     m25p80@0 {
> > +             compatible = "jedec,spi-nor";
> > +             reg = <0>;
> > +             spi-max-frequency = <10000000>;
>
> Maybe try to increase frequency here.

Ditto.  Can you share some instructions on how to decide a higher
value?  Or which high values are available and safe to try?

>
> > +
> > +             partitions {
> > +                     compatible = "fixed-partitions";
> > +                     #address-cells = <1>;
> > +                     #size-cells = <1>;
> > +
> > +                     partition@0 {
> > +                             label = "u-boot";
> > +                             reg = <0x0 0x30000>;
> > +                             read-only;
> > +                     };
> > +
> > +                     partition@30000 {
> > +                             label = "u-boot-env";
> > +                             reg = <0x30000 0x10000>;
> > +                             read-only;
> > +                     };
> > +
> > +                     factory: partition@40000 {
> > +                             label = "factory";
> > +                             reg = <0x40000 0x10000>;
> > +                             read-only;
> > +                     };
> > +
> > +                     partition@50000 {
> > +                             compatible = "denx,uimage";
> > +                             label = "firmware";
> > +                             reg = <0x50000 0xfb0000>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&ethernet {
> > +     mtd-mac-address = <&factory 0xe000>;
>
> If this really is a five port device, it would be nice to check for a WAN MAC address in 0xe006 and then read it from flash in 02_network (there should a node for that already).

All ports are supposed to be ordinary switch ports.  No wan/lan
distinction by default.

>
> > +};
> > +
> > +&pinctrl {
> > +     state_default: pinctrl0 {
> > +             gpio {
> > +                     ralink,group = "wdt", "rgmii2", "jtag", "mdio";
> > +                     ralink,function = "gpio";
> > +             };
> > +     };
> > +};
> > diff --git a/target/linux/ramips/image/mt7621.mk
> > b/target/linux/ramips/image/mt7621.mk
> > index d32feb7eab..e52b1eba19 100644
> > --- a/target/linux/ramips/image/mt7621.mk
> > +++ b/target/linux/ramips/image/mt7621.mk
> > @@ -464,6 +464,15 @@ define Device/netis_wf-2881  endef
> > TARGET_DEVICES += netis_wf-2881
> >
> > +define Device/northbound_zodiac-gx
> > +  MTK_SOC := mt7621
> > +  IMAGE_SIZE := 16064k
> > +  DEVICE_VENDOR := Northbound Networks
> > +  DEVICE_MODEL := Zodiac GX
> > +  SUPPORTED_DEVICES += zodiac-gx
>
> SUPPORTED_DEVICES can be dropped.

I remembered OEM firmware sysupgrade checks for "zodiac-gx" and erred
when this line was absent.

>
> Best
>
> Adrian

Thanks for the review, Adrian

Regards,
                yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
