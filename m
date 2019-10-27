Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4610CE62A0
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 14:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sY6ngX/H4jh0VttWVclugMNsiYdZb5oDhd0HgqS/JAY=; b=QlwThPv386aeYa4UIZd51vtqX
	NP6nhT+xfkcEs6UQZCUiVD0fsL1j+zJOj9Tye/UdcXwx6j9wA5yQG1GTcgQxh4cbJJW4XsxHu8Xpe
	sNwvGXrBxdGXdCmAg92qtFEsK5ZU0OmnJz+uR7haXBCKo7Grdxuz22MZ/rVGfaf1yfdY0oARiJYXo
	GJQInTWuHbw9aOk5WI2HywOPOLfQoDL3AovPeuv2/WAf5X2N5v7DrT/wLACVo87MrtX05dw2+xcXW
	yMWLvdeURisQL6c3VTSmnUmZxseifrYSjj44o4UoymXbaD/nasD2ObzXectYiev9TBiZH/BC86vlV
	oOdktaNZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOiUt-0006Ep-ID; Sun, 27 Oct 2019 13:22:19 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOiUk-0006EO-F0
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 13:22:12 +0000
Received: by mail-yw1-xc42.google.com with SMTP id r134so2882870ywg.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 27 Oct 2019 06:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B/E8zNvfV5zJHEI7Csd2fWr/Y1iPJNFkxSbg14VBxHI=;
 b=JZ9w5ObF5d17pOfoeDFRlD64O149vptrxJHRvJOBqcYYfZait3hIZy5ZXPTAPi7VMi
 mMyMoMMnV6RxTSetJ356vE0dDkW1QkuwhyylDEmO9t8FXF8bK5NqhF2t7aNZTkNh0tr3
 bUDT88XBme/xlWJbWipgo5g/YD0csMPKgkqCp3WiRRUFCSSdZGk2oL7hRMdkz8FmILgX
 M/wkTno5e2fqtirXHwqJeoLqn1keYTexxF0aY1/RjisJUmN+Aqkn90/MZDwY/H/jeGjC
 5ERoSMLYrx/00GPgs+j3HuyYP+WljuTPtAGmJTVFUs07yZfL098f+OSOfsjXxSqMWn5u
 u9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B/E8zNvfV5zJHEI7Csd2fWr/Y1iPJNFkxSbg14VBxHI=;
 b=JvfNJQWeqkfeBGzIcxUeMPfIUGa0xlXtq+PsPKNpoutN+e+VjSBL5Y2YzWOYEGppgx
 wijaPs9u9D0pV7nwitx7uJ0jiOrijJeOEf9VFTpTaRFzGDZMJoyarmSK+H+ti4j/5L0U
 WBzY1WCTqpB2lPpGNBl1UecKinkVufacXRUfXqv3/ML94Ozr434vH6uRJH5nUBQTK7nf
 dsju/LU35cosmq1wti0F6zbBtMMfwdf7J9WLiJZSxGtOroxI7TSwhtu+lUX/Z5VOfKKI
 njxNO/wMHVItgg0Mo1sPM01NvAgOimYdNCAACDLvmkO2RMvibYFg21qVE0Vdqfg9pCTN
 y8cw==
X-Gm-Message-State: APjAAAWfF1eERNxqit+pNu2niFE7y0mGncjCL2GxJE+UNJxe3BakVfVj
 muvI3MCLlFuQ6VsIA+rLupDLaFDQSiHNxHrI9zQ49Q==
X-Google-Smtp-Source: APXvYqwzWF00nm/2BXNrCVAU61KMzI0ni1np/+dg/AH8Wkz5gaq2p7cSgfyclpBCrQnZTlwyyxuf7+ZJTPouugrm8o0=
X-Received: by 2002:a81:4801:: with SMTP id v1mr10039344ywa.329.1572182527770; 
 Sun, 27 Oct 2019 06:22:07 -0700 (PDT)
MIME-Version: 1.0
References: <3020121.uscLunan1g@tool>
 <ba5d5df3-a26d-15a0-04d9-81bb5c79ae5f@phrozen.org>
In-Reply-To: <ba5d5df3-a26d-15a0-04d9-81bb5c79ae5f@phrozen.org>
From: Daniel <dgcbueu@gmail.com>
Date: Sun, 27 Oct 2019 14:21:56 +0100
Message-ID: <CABwr4_sRWZbOxJHqMuV=pvqnCw5FWW2nvGs3ciWgmBrEkE+stQ@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_062210_514871_47EFBD08 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dgcbueu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] Add support for Inventel DV4210
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
Content-Type: multipart/mixed; boundary="===============7808839145250596803=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7808839145250596803==
Content-Type: multipart/alternative; boundary="0000000000001706020595e4451d"

--0000000000001706020595e4451d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, I forgot to add the the target. I'll send again the patch

Thanks very much.



El dom., 27 oct. 2019 a las 14:05, John Crispin (<john@phrozen.org>)
escribi=C3=B3:

> On 22/09/2019 22:05, Daniel Gonzalez Cabanelas wrote:
> > Add support for the Inventel DV4210 router.
> >
> > This is an Inventel Livebox 1 board. The patch supports the board with =
a
> CFE bootloader, and
> > a RAM mod (64 MB, tested).  The board originally comes with 8 MB flash.
> Under this conditions
> > this old BCM6348 based board still runs quite fine with current
> snapshots.
> >
>
> Hi,
> thanks for the patch, the subject line needs to start with "brcm63xx:"
>         John
>
> > Signed-off-by: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
> > ---
> >   .../brcm63xx/base-files/etc/board.d/01_leds   |   1 +
> >   .../base-files/etc/board.d/02_network         |   2 +-
> >   target/linux/brcm63xx/base-files/etc/diag.sh  |   1 +
> >   .../linux/brcm63xx/base-files/lib/brcm63xx.sh |   3 +
> >   target/linux/brcm63xx/dts/dv4210.dts          | 102 +++++++++++++++++=
+
> >   target/linux/brcm63xx/image/bcm63xx.mk        |  13 +++
> >   .../patches-4.14/599-board_DV4210.patch       |  50 +++++++++
> >   7 files changed, 171 insertions(+), 1 deletion(-)
> >   create mode 100644 target/linux/brcm63xx/dts/dv4210.dts
> >   create mode 100644
> target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
> >
> > diff --git a/target/linux/brcm63xx/base-files/etc/board.d/01_leds
> b/target/linux/brcm63xx/base-files/etc/board.d/01_leds
> > index d25d37e847..00109ba112 100755
> > --- a/target/linux/brcm63xx/base-files/etc/board.d/01_leds
> > +++ b/target/linux/brcm63xx/base-files/etc/board.d/01_leds
> > @@ -69,6 +69,7 @@ homehub2a)
> >       ucidef_set_led_usbdev "usb1" "USB1" "HOMEHUB2A:blue:phone" "1-1"
> >       ucidef_set_led_usbdev "usb2" "USB2" "HOMEHUB2A:green:phone" "2-1"
> >       ;;
> > +dv4210|\
> >   livebox1)
> >       ucidef_set_led_netdev "lan" "LAN" "Livebox1:red:traffic" "eth0"
> >       ucidef_set_led_netdev "wan" "WAN" "Livebox1:red:adsl" "eth1"
> > diff --git a/target/linux/brcm63xx/base-files/etc/board.d/02_network
> b/target/linux/brcm63xx/base-files/etc/board.d/02_network
> > index a2ca5a37b3..0e384f82f6 100755
> > --- a/target/linux/brcm63xx/base-files/etc/board.d/02_network
> > +++ b/target/linux/brcm63xx/base-files/etc/board.d/02_network
> > @@ -145,8 +145,8 @@ bcm963268bu_p300)
> >       ucidef_add_switch "switch0" \
> >               "0:lan" "3:lan" "4:lan" "5:lan" "6:lan" "7:lan" "8t@eth0"
> >       ;;
> > -
> >   cpva502p |\
> > +dv4210 |\
> >   livebox1)
> >       ucidef_set_interfaces_lan_wan "eth0" "eth1"
> >       ;;
> > diff --git a/target/linux/brcm63xx/base-files/etc/diag.sh
> b/target/linux/brcm63xx/base-files/etc/diag.sh
> > index 34464ec44a..c673a75e40 100644
> > --- a/target/linux/brcm63xx/base-files/etc/diag.sh
> > +++ b/target/linux/brcm63xx/base-files/etc/diag.sh
> > @@ -114,6 +114,7 @@ set_state() {
> >       hg655b)
> >               status_led=3D"HW65x:green:power"
> >               ;;
> > +     dv4210|\
> >       livebox1)
> >               status_led=3D"Livebox1:red:adsl-fail-power"
> >               ;;
> > diff --git a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
> b/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
> > index 1676ae0abb..9c0c33cc31 100755
> > --- a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
> > +++ b/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
> > @@ -177,6 +177,9 @@ brcm63xx_dt_detect() {
> >       "Inteno VG50")
> >               board_name=3D"vg50"
> >               ;;
> > +     "Inventel DV4210")
> > +             board_name=3D"dv4210"
> > +             ;;
> >       "Inventel Livebox 1")
> >               board_name=3D"livebox1"
> >               ;;
> > diff --git a/target/linux/brcm63xx/dts/dv4210.dts
> b/target/linux/brcm63xx/dts/dv4210.dts
> > new file mode 100644
> > index 0000000000..02975fe3b6
> > --- /dev/null
> > +++ b/target/linux/brcm63xx/dts/dv4210.dts
> > @@ -0,0 +1,102 @@
> > +/dts-v1/;
> > +
> > +#include "bcm6348.dtsi"
> > +
> > +#include <dt-bindings/input/input.h>
> > +
> > +/ {
> > +     model =3D "Inventel DV4210";
> > +     compatible =3D "inventel,dv4210", "brcm,bcm6348";
> > +
> > +     chosen {
> > +             bootargs =3D "rootfstype=3Dsquashfs,jffs2 noinitrd
> console=3DttyS0,115200";
> > +             stdout-path =3D "serial0:115200n8";
> > +     };
> > +
> > +     keys {
> > +             compatible =3D "gpio-keys-polled";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +             poll-interval =3D <20>;
> > +
> > +             button1 {
> > +                     label =3D "1";
> > +                     gpios =3D <&pinctrl 36 1>;
> > +                     linux,code =3D <KEY_RESTART>;
> > +                     debounce-interval =3D <60>;
> > +             };
> > +
> > +             button2 {
> > +                     label =3D "2";
> > +                     gpios =3D <&pinctrl 7 1>;
> > +                     linux,code =3D <BTN_2>;
> > +                     debounce-interval =3D <60>;
> > +             };
> > +     };
> > +
> > +     leds {
> > +             compatible =3D "gpio-leds";
> > +
> > +             red_adsl_fail {
> > +                     label =3D "Livebox1:red:adsl-fail-power";
> > +                     gpios =3D <&pinctrl 0 0>;
> > +                     default-state =3D "on";
> > +             };
> > +
> > +             red_adsl {
> > +                     label =3D "Livebox1:red:adsl";
> > +                     gpios =3D <&pinctrl 1 0>;
> > +             };
> > +
> > +             red_traffic {
> > +                     label =3D "Livebox1:red:traffic";
> > +                     gpios =3D <&pinctrl 2 0>;
> > +             };
> > +
> > +             red_phone {
> > +                     label =3D "Livebox1:red:phone";
> > +                     gpios =3D <&pinctrl 3 0>;
> > +             };
> > +
> > +             red_wifi {
> > +                     label =3D "Livebox1:red:wifi";
> > +                     gpios =3D <&pinctrl 4 0>;
> > +             };
> > +     };
> > +};
> > +
> > +&pflash {
> > +     reg =3D <0x1f400000 0x800000>;
> > +     status =3D "ok";
> > +
> > +     partitions {
> > +             compatible =3D "fixed-partitions";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <1>;
> > +
> > +             cfe@0 {
> > +                     reg =3D <0x000000 0x010000>;
> > +                     label =3D "cfe";
> > +             };
> > +
> > +             linux@10000 {
> > +                     reg =3D <0x010000 0x7e0000>;
> > +                     label =3D "linux";
> > +                     compatible =3D "brcm,bcm963xx-imagetag";
> > +             };
> > +
> > +             nvram@7f0000 {
> > +                     reg =3D <0x7f0000 0x010000>;
> > +                     label =3D "nvram";
> > +             };
> > +     };
> > +};
> > +
> > +&pinctrl {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_pci &pinctrl_ext_mii &pinctrl_mii_pccard>=
;
> > +};
> > +
> > +&uart0 {
> > +     status =3D "ok";
> > +};
> > diff --git a/target/linux/brcm63xx/image/bcm63xx.mk
> b/target/linux/brcm63xx/image/bcm63xx.mk
> > index 212960e972..690ffb49fa 100644
> > --- a/target/linux/brcm63xx/image/bcm63xx.mk
> > +++ b/target/linux/brcm63xx/image/bcm63xx.mk
> > @@ -769,6 +769,19 @@ define Device/livebox
> >   endef
> >   TARGET_DEVICES +=3D livebox
> >
> > +define Device/DV4210
> > +  $(Device/bcm63xx)
> > +  DEVICE_TITLE :=3D Inventel DV4210
> > +  DEVICE_DESCRIPTION =3D Build firmware images for the Inventel DV4210=
.
> Board with CFE bootloader and >32MB RAM
> > +  DEVICE_DTS :=3D dv4210
> > +  CFE_BOARD_ID :=3D DV4210
> > +  CFE_CHIP_ID :=3D 6348
> > +  DEVICE_PACKAGES :=3D \
> > +    $(B43_PACKAGES) $(USB1_PACKAGES)
> > +  DEFAULT :=3D y
> > +endef
> > +TARGET_DEVICES +=3D DV4210
> > +
> >   ### Netgear ###
> >   define Device/CVG834G
> >     $(Device/bcm33xx)
> > diff --git a/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
> b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
> > new file mode 100644
> > index 0000000000..618a214d63
> > --- /dev/null
> > +++ b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
> > @@ -0,0 +1,50 @@
> > +--- a/arch/mips/bcm63xx/boards/board_bcm963xx.c
> > ++++ b/arch/mips/bcm63xx/boards/board_bcm963xx.c
> > +@@ -1058,6 +1058,31 @@
> > +     },
> > + };
> > +
> > ++static struct board_info __initdata board_DV4210 =3D {
> > ++    .name                           =3D "DV4210",
> > ++    .expected_cpu_id                =3D 0x6348,
> > ++
> > ++    .has_enet0                      =3D 1,
> > ++    .has_enet1                      =3D 1,
> > ++    .has_pci                        =3D 1,
> > ++
> > ++    .enet0 =3D {
> > ++            .has_phy                =3D 1,
> > ++            .use_internal_phy       =3D 1,
> > ++    },
> > ++
> > ++    .enet1 =3D {
> > ++              .has_phy              =3D 1,
> > ++              .phy_id               =3D 31,
> > ++    },
> > ++
> > ++    .ephy_reset_gpio                =3D 6,
> > ++    .ephy_reset_gpio_flags  =3D GPIO_ACTIVE_LOW,
> > ++
> > ++    .has_ohci0                      =3D 1,
> > ++    .has_pccard                     =3D 0,
> > ++};
> > ++
> > + static struct board_info __initdata board_96348A_122 =3D {
> > +     .name                           =3D "96348A-122",
> > +     .expected_cpu_id                =3D 0x6348,
> > +@@ -2746,6 +2771,7 @@
> > +     &board_FAST2404,
> > +     &board_FAST2604,
> > +     &board_DV201AMR,
> > ++    &board_DV4210,
> > +     &board_96348gw_a,
> > +     &board_rta1025w_16,
> > +     &board_96348_D4PW,
> > +@@ -2859,6 +2885,7 @@
> > +     { .compatible =3D "d-link,dsl-2640b-b", .data =3D &board_96348_D4=
PW, },
> > +     { .compatible =3D "davolink,dv-201amr", .data =3D &board_DV201AMR=
, },
> > +     { .compatible =3D "dynalink,rta1025w", .data =3D &board_rta1025w_=
16, },
> > ++    { .compatible =3D "inventel,dv4210", .data =3D &board_DV4210, },
> > +     { .compatible =3D "netgear,dg834gtpn", .data =3D &board_96348gw_1=
0, },
> > +     { .compatible =3D "netgear,dg834g-v4", .data =3D &board_96348W3, =
},
> > +     { .compatible =3D "sagem,f@st2404", .data =3D &board_FAST2404, },
> >
>
>

--0000000000001706020595e4451d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, I forgot to add the the target. I&#39;ll send again=
 the patch<div><br></div><div>Thanks very much.<br><div><br></div><div><br>=
</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">El dom., 27 oct. 2019 a las 14:05, John Crispin (&lt;<a href=3D=
"mailto:john@phrozen.org">john@phrozen.org</a>&gt;) escribi=C3=B3:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">On 22/09/2019 22:05, Dan=
iel Gonzalez Cabanelas wrote:<br>
&gt; Add support for the Inventel DV4210 router.<br>
&gt; <br>
&gt; This is an Inventel Livebox 1 board. The patch supports the board with=
 a CFE bootloader, and<br>
&gt; a RAM mod (64 MB, tested).=C2=A0 The board originally comes with 8 MB =
flash.=C2=A0 Under this conditions<br>
&gt; this old BCM6348 based board still runs quite fine with current snapsh=
ots.<br>
&gt; <br>
<br>
Hi,<br>
thanks for the patch, the subject line needs to start with &quot;brcm63xx:&=
quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 John<br>
<br>
&gt; Signed-off-by: Daniel Gonzalez Cabanelas &lt;<a href=3D"mailto:dgcbueu=
@gmail.com" target=3D"_blank">dgcbueu@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0.../brcm63xx/base-files/etc/board.d/01_leds=C2=A0 =C2=A0|=
=C2=A0 =C2=A01 +<br>
&gt;=C2=A0 =C2=A0.../base-files/etc/board.d/02_network=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A02 +-<br>
&gt;=C2=A0 =C2=A0target/linux/brcm63xx/base-files/etc/diag.sh=C2=A0 |=C2=A0=
 =C2=A01 +<br>
&gt;=C2=A0 =C2=A0.../linux/brcm63xx/base-files/lib/brcm63xx.sh |=C2=A0 =C2=
=A03 +<br>
&gt;=C2=A0 =C2=A0target/linux/brcm63xx/dts/dv4210.dts=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 102 ++++++++++++++++++<br>
&gt;=C2=A0 =C2=A0target/linux/brcm63xx/image/<a href=3D"http://bcm63xx.mk" =
rel=3D"noreferrer" target=3D"_blank">bcm63xx.mk</a>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 13 +++<br>
&gt;=C2=A0 =C2=A0.../patches-4.14/599-board_DV4210.patch=C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 50 +++++++++<br>
&gt;=C2=A0 =C2=A07 files changed, 171 insertions(+), 1 deletion(-)<br>
&gt;=C2=A0 =C2=A0create mode 100644 target/linux/brcm63xx/dts/dv4210.dts<br=
>
&gt;=C2=A0 =C2=A0create mode 100644 target/linux/brcm63xx/patches-4.14/599-=
board_DV4210.patch<br>
&gt; <br>
&gt; diff --git a/target/linux/brcm63xx/base-files/etc/board.d/01_leds b/ta=
rget/linux/brcm63xx/base-files/etc/board.d/01_leds<br>
&gt; index d25d37e847..00109ba112 100755<br>
&gt; --- a/target/linux/brcm63xx/base-files/etc/board.d/01_leds<br>
&gt; +++ b/target/linux/brcm63xx/base-files/etc/board.d/01_leds<br>
&gt; @@ -69,6 +69,7 @@ homehub2a)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ucidef_set_led_usbdev &quot;usb1&quot; &quot=
;USB1&quot; &quot;HOMEHUB2A:blue:phone&quot; &quot;1-1&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ucidef_set_led_usbdev &quot;usb2&quot; &quot=
;USB2&quot; &quot;HOMEHUB2A:green:phone&quot; &quot;2-1&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; +dv4210|\<br>
&gt;=C2=A0 =C2=A0livebox1)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ucidef_set_led_netdev &quot;lan&quot; &quot;=
LAN&quot; &quot;Livebox1:red:traffic&quot; &quot;eth0&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ucidef_set_led_netdev &quot;wan&quot; &quot;=
WAN&quot; &quot;Livebox1:red:adsl&quot; &quot;eth1&quot;<br>
&gt; diff --git a/target/linux/brcm63xx/base-files/etc/board.d/02_network b=
/target/linux/brcm63xx/base-files/etc/board.d/02_network<br>
&gt; index a2ca5a37b3..0e384f82f6 100755<br>
&gt; --- a/target/linux/brcm63xx/base-files/etc/board.d/02_network<br>
&gt; +++ b/target/linux/brcm63xx/base-files/etc/board.d/02_network<br>
&gt; @@ -145,8 +145,8 @@ bcm963268bu_p300)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ucidef_add_switch &quot;switch0&quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;0:lan&quot=
; &quot;3:lan&quot; &quot;4:lan&quot; &quot;5:lan&quot; &quot;6:lan&quot; &=
quot;7:lan&quot; &quot;8t@eth0&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; -<br>
&gt;=C2=A0 =C2=A0cpva502p |\<br>
&gt; +dv4210 |\<br>
&gt;=C2=A0 =C2=A0livebox1)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ucidef_set_interfaces_lan_wan &quot;eth0&quo=
t; &quot;eth1&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; diff --git a/target/linux/brcm63xx/base-files/etc/diag.sh b/target/lin=
ux/brcm63xx/base-files/etc/diag.sh<br>
&gt; index 34464ec44a..c673a75e40 100644<br>
&gt; --- a/target/linux/brcm63xx/base-files/etc/diag.sh<br>
&gt; +++ b/target/linux/brcm63xx/base-files/etc/diag.sh<br>
&gt; @@ -114,6 +114,7 @@ set_state() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0hg655b)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status_led=3D&qu=
ot;HW65x:green:power&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dv4210|\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0livebox1)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status_led=3D&qu=
ot;Livebox1:red:adsl-fail-power&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; diff --git a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh b/target=
/linux/brcm63xx/base-files/lib/brcm63xx.sh<br>
&gt; index 1676ae0abb..9c0c33cc31 100755<br>
&gt; --- a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh<br>
&gt; +++ b/target/linux/brcm63xx/base-files/lib/brcm63xx.sh<br>
&gt; @@ -177,6 +177,9 @@ brcm63xx_dt_detect() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Inteno VG50&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board_name=3D&qu=
ot;vg50&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0&quot;Inventel DV4210&quot;)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board_name=3D&quot;dv=
4210&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Inventel Livebox 1&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board_name=3D&qu=
ot;livebox1&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; diff --git a/target/linux/brcm63xx/dts/dv4210.dts b/target/linux/brcm6=
3xx/dts/dv4210.dts<br>
&gt; new file mode 100644<br>
&gt; index 0000000000..02975fe3b6<br>
&gt; --- /dev/null<br>
&gt; +++ b/target/linux/brcm63xx/dts/dv4210.dts<br>
&gt; @@ -0,0 +1,102 @@<br>
&gt; +/dts-v1/;<br>
&gt; +<br>
&gt; +#include &quot;bcm6348.dtsi&quot;<br>
&gt; +<br>
&gt; +#include &lt;dt-bindings/input/input.h&gt;<br>
&gt; +<br>
&gt; +/ {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0model =3D &quot;Inventel DV4210&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0compatible =3D &quot;inventel,dv4210&quot;, &quot=
;brcm,bcm6348&quot;;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0chosen {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bootargs =3D &quot;ro=
otfstype=3Dsquashfs,jffs2 noinitrd console=3DttyS0,115200&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0stdout-path =3D &quot=
;serial0:115200n8&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0};<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0keys {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;=
gpio-keys-polled&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#address-cells =3D &l=
t;1&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#size-cells =3D &lt;0=
&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poll-interval =3D &lt=
;20&gt;;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0button1 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;1&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0gpios =3D &lt;&amp;pinctrl 36 1&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0linux,code =3D &lt;KEY_RESTART&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0debounce-interval =3D &lt;60&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0button2 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;2&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0gpios =3D &lt;&amp;pinctrl 7 1&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0linux,code =3D &lt;BTN_2&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0debounce-interval =3D &lt;60&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +=C2=A0 =C2=A0 =C2=A0};<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0leds {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;=
gpio-leds&quot;;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0red_adsl_fail {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;Livebox1:red:adsl-fail-power&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0gpios =3D &lt;&amp;pinctrl 0 0&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0default-state =3D &quot;on&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0red_adsl {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;Livebox1:red:adsl&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0gpios =3D &lt;&amp;pinctrl 1 0&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0red_traffic {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;Livebox1:red:traffic&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0gpios =3D &lt;&amp;pinctrl 2 0&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0red_phone {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;Livebox1:red:phone&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0gpios =3D &lt;&amp;pinctrl 3 0&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0red_wifi {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;Livebox1:red:wifi&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0gpios =3D &lt;&amp;pinctrl 4 0&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +=C2=A0 =C2=A0 =C2=A0};<br>
&gt; +};<br>
&gt; +<br>
&gt; +&amp;pflash {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x1f400000 0x800000&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0status =3D &quot;ok&quot;;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0partitions {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;=
fixed-partitions&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#address-cells =3D &l=
t;1&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#size-cells =3D &lt;1=
&gt;;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cfe@0 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0reg =3D &lt;0x000000 0x010000&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;cfe&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0linux@10000 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0reg =3D &lt;0x010000 0x7e0000&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;linux&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0compatible =3D &quot;brcm,bcm963xx-imagetag&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nvram@7f0000 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0reg =3D &lt;0x7f0000 0x010000&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0label =3D &quot;nvram&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; +=C2=A0 =C2=A0 =C2=A0};<br>
&gt; +};<br>
&gt; +<br>
&gt; +&amp;pinctrl {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pinctrl-names =3D &quot;default&quot;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pinctrl-0 =3D &lt;&amp;pinctrl_pci &amp;pinctrl_e=
xt_mii &amp;pinctrl_mii_pccard&gt;;<br>
&gt; +};<br>
&gt; +<br>
&gt; +&amp;uart0 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0status =3D &quot;ok&quot;;<br>
&gt; +};<br>
&gt; diff --git a/target/linux/brcm63xx/image/<a href=3D"http://bcm63xx.mk"=
 rel=3D"noreferrer" target=3D"_blank">bcm63xx.mk</a> b/target/linux/brcm63x=
x/image/<a href=3D"http://bcm63xx.mk" rel=3D"noreferrer" target=3D"_blank">=
bcm63xx.mk</a><br>
&gt; index 212960e972..690ffb49fa 100644<br>
&gt; --- a/target/linux/brcm63xx/image/<a href=3D"http://bcm63xx.mk" rel=3D=
"noreferrer" target=3D"_blank">bcm63xx.mk</a><br>
&gt; +++ b/target/linux/brcm63xx/image/<a href=3D"http://bcm63xx.mk" rel=3D=
"noreferrer" target=3D"_blank">bcm63xx.mk</a><br>
&gt; @@ -769,6 +769,19 @@ define Device/livebox<br>
&gt;=C2=A0 =C2=A0endef<br>
&gt;=C2=A0 =C2=A0TARGET_DEVICES +=3D livebox<br>
&gt;=C2=A0 =C2=A0<br>
&gt; +define Device/DV4210<br>
&gt; +=C2=A0 $(Device/bcm63xx)<br>
&gt; +=C2=A0 DEVICE_TITLE :=3D Inventel DV4210<br>
&gt; +=C2=A0 DEVICE_DESCRIPTION =3D Build firmware images for the Inventel =
DV4210. Board with CFE bootloader and &gt;32MB RAM<br>
&gt; +=C2=A0 DEVICE_DTS :=3D dv4210<br>
&gt; +=C2=A0 CFE_BOARD_ID :=3D DV4210<br>
&gt; +=C2=A0 CFE_CHIP_ID :=3D 6348<br>
&gt; +=C2=A0 DEVICE_PACKAGES :=3D \<br>
&gt; +=C2=A0 =C2=A0 $(B43_PACKAGES) $(USB1_PACKAGES)<br>
&gt; +=C2=A0 DEFAULT :=3D y<br>
&gt; +endef<br>
&gt; +TARGET_DEVICES +=3D DV4210<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0### Netgear ###<br>
&gt;=C2=A0 =C2=A0define Device/CVG834G<br>
&gt;=C2=A0 =C2=A0 =C2=A0$(Device/bcm33xx)<br>
&gt; diff --git a/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch=
 b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch<br>
&gt; new file mode 100644<br>
&gt; index 0000000000..618a214d63<br>
&gt; --- /dev/null<br>
&gt; +++ b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch<br>
&gt; @@ -0,0 +1,50 @@<br>
&gt; +--- a/arch/mips/bcm63xx/boards/board_bcm963xx.c<br>
&gt; ++++ b/arch/mips/bcm63xx/boards/board_bcm963xx.c<br>
&gt; +@@ -1058,6 +1058,31 @@<br>
&gt; +=C2=A0 =C2=A0 =C2=A0},<br>
&gt; + };<br>
&gt; +<br>
&gt; ++static struct board_info __initdata board_DV4210 =3D {<br>
&gt; ++=C2=A0 =C2=A0 .name=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;DV4210&quot;,<br>
&gt; ++=C2=A0 =C2=A0 .expected_cpu_id=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D 0x6348,<br>
&gt; ++<br>
&gt; ++=C2=A0 =C2=A0 .has_enet0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D 1,<br>
&gt; ++=C2=A0 =C2=A0 .has_enet1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D 1,<br>
&gt; ++=C2=A0 =C2=A0 .has_pci=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D 1,<br>
&gt; ++<br>
&gt; ++=C2=A0 =C2=A0 .enet0 =3D {<br>
&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .has_phy=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D 1,<br>
&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .use_internal_phy=C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D 1,<br>
&gt; ++=C2=A0 =C2=A0 },<br>
&gt; ++<br>
&gt; ++=C2=A0 =C2=A0 .enet1 =3D {<br>
&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .has_phy=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D 1,<br>
&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .phy_id=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D 31,<br>
&gt; ++=C2=A0 =C2=A0 },<br>
&gt; ++<br>
&gt; ++=C2=A0 =C2=A0 .ephy_reset_gpio=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D 6,<br>
&gt; ++=C2=A0 =C2=A0 .ephy_reset_gpio_flags=C2=A0 =3D GPIO_ACTIVE_LOW,<br>
&gt; ++<br>
&gt; ++=C2=A0 =C2=A0 .has_ohci0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D 1,<br>
&gt; ++=C2=A0 =C2=A0 .has_pccard=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D 0,<br>
&gt; ++};<br>
&gt; ++<br>
&gt; + static struct board_info __initdata board_96348A_122 =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0.name=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;96348A-122=
&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0.expected_cpu_id=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D 0x6348,<br>
&gt; +@@ -2746,6 +2771,7 @@<br>
&gt; +=C2=A0 =C2=A0 =C2=A0&amp;board_FAST2404,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0&amp;board_FAST2604,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0&amp;board_DV201AMR,<br>
&gt; ++=C2=A0 =C2=A0 &amp;board_DV4210,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0&amp;board_96348gw_a,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0&amp;board_rta1025w_16,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0&amp;board_96348_D4PW,<br>
&gt; +@@ -2859,6 +2885,7 @@<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ .compatible =3D &quot;d-link,dsl-2640b-b&quot;,=
 .data =3D &amp;board_96348_D4PW, },<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ .compatible =3D &quot;davolink,dv-201amr&quot;,=
 .data =3D &amp;board_DV201AMR, },<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ .compatible =3D &quot;dynalink,rta1025w&quot;, =
.data =3D &amp;board_rta1025w_16, },<br>
&gt; ++=C2=A0 =C2=A0 { .compatible =3D &quot;inventel,dv4210&quot;, .data =
=3D &amp;board_DV4210, },<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ .compatible =3D &quot;netgear,dg834gtpn&quot;, =
.data =3D &amp;board_96348gw_10, },<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ .compatible =3D &quot;netgear,dg834g-v4&quot;, =
.data =3D &amp;board_96348W3, },<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ .compatible =3D &quot;sagem,f@st2404&quot;, .da=
ta =3D &amp;board_FAST2404, },<br>
&gt; <br>
<br>
</blockquote></div>

--0000000000001706020595e4451d--


--===============7808839145250596803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7808839145250596803==--

