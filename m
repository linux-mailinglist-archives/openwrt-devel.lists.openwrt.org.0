Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FFF1DFE82
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 13:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UaTj2pdjVppiUr9WErhmwzsEXU0Sx/wtDz7ryvNDJBI=; b=rbNe8IJ5n8+NNtfXbMsMGgH4T
	Eq6y2vBymcCFd6/KuL+MyjEDTYf8NBbD3cZTY12fmuy7zJ1tbIlYvAnrtJNRmtWxccIzgA3O1OesQ
	pKP1W0hpkCsrG8dMAmptQjpLpPBwifPtzw/hANBwJp9lo5sytmnDuLTuFjGC3404r9szaqL1aq8wD
	BbqkTn9tPzncIETypCBxil/J+UjMX26BZs9is7leV0EAqwNUvnHpbgcgkR1p21GZrV3Y4DyGgaDLP
	T7NykOYHtNghMvJMX5IBnHdu4xzkLo9PTwmE/7BPydfy1XOAED9UROmjtR+l+5rghdOe47azCndkL
	K05etDmIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcobc-0007F7-6f; Sun, 24 May 2020 11:15:48 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcob7-0006tj-CI
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 11:15:19 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N1g3U-1isjKk1p0a-0124Hh; Sun, 24 May 2020 13:15:14 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Daniel_Gonz=C3=A1lez_Cabanelas'?= <dgcbueu@gmail.com>
References: <20027397.f1LIkykH4V@tool>
 <011101d63156$21a24740$64e6d5c0$@adrianschmutzler.de>
 <CABwr4_v_oPa6ntDi+r7HN4FJ+CTgAzs7p8Z_AiO79pMqdXQ9eA@mail.gmail.com>
In-Reply-To: <CABwr4_v_oPa6ntDi+r7HN4FJ+CTgAzs7p8Z_AiO79pMqdXQ9eA@mail.gmail.com>
Date: Sun, 24 May 2020 13:15:13 +0200
Message-ID: <005e01d631bc$99019a00$cb04ce00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQILKhLas76jJ20jNKUXFB1Jee6o2QL8ZvaOASPhK7GoLB+L0A==
X-Provags-ID: V03:K1:WmlJHxcJgU31OWSWrJItWrZhovnguB7f3XNCLoOLwAKzeboXc4S
 l0hIaDM7ICVV/NC1Q7XFutE+l3i4yl/UxOUFifUCud5RZ8z7v7P0lVDFnRmldeXgU9N78mW
 8Fe7fjTlQytCKHSqMhfbdrGOq6UenXrW5IuNgStUQ5KbWi4X+UCTic/NxYBqE/7EHj//h61
 ldoJNwcdzGjSEZAGwASXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YbrgoyFGOyM=:UlwcKhEz2vGMo8/VcpVM1P
 zT58hvYJZFhBWILMwWs9/3DZjxIZZPjeFmc/9sHjDoOy7F1ja3ZTh5UNwtze1twtNi8Qjb7dE
 gDYS17KKX6bGrIIE5mMR14ZotYbQY+U1hWY5tq/IpADoYPfaGHhHBRGpnEkUtGVR7SbihrAz8
 gzG71hxjynr+aNJ2HcO385TbKAZ/ciRxpMQesbj+n/K/v3NgaczzdxoUKdN0G3hR11FchHFon
 PynRRiPrA3z3lqX96bN8nlOiRiqy+EVZY04+die4VbKg+fG19Ae4lt0D6sK2K3dFPmIZ6BZNy
 r9uX+k9PSIqOF/5joWFAt1RyW76AvZPvZsd9rL9zVVhl71ufwdxLt2qqEgnkwuOfwV8PYJLOD
 HBDwJQ+0k6j6dkSkBLYaB/rDmop8MO4TfC9fwyK6NQIyFKy3CmKmb9FJN3Zw1MFOt+9fEY8sm
 kw/9W/PLNXPM7o6/JOiq54oXVCOjn4vvrorb6yGmgyJ52Tu/qhcT8C1HyRTnnxhNSKkg2TOly
 VI2FWverkSjFtLVtI6t+GQD4hE+rixQuRku+ep8IAGTPfQiJlVjTzcNriA6ghk2MCV3MgMszf
 1A3ZlWZsx6habX6ue617ghMXtZwNOVOLXCzFY0zorK8uzoAQGcpiDC2h7i5CO66Jljf7TmBzS
 9F0LgyHt7pqcP0tbLZWj1EqOsQGC4yxBWgR4uH+C6DxMT8nZAWWpXk/u7P5AjcqKYdsG0V7oE
 D4tEt9zFXzaSqRsxniyT+aXbNM1k8Ttwsug/7iN6bVDpogyCfy/oN8yoNBULu8WD84K8P3h2W
 DSpXBUE/pZV/LXkBC4E+lqzcA/n29+WScTNYBAFvLdlYKkjG1qXZS48hDdQ5+1GOfZIXrAh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_041517_746269_B75EC415 
X-CRM114-Status: GOOD (  31.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: DGND3700v1: device tree
 improvements
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
 =?utf-8?Q?'=C3=81lvaro_Fern=C3=A1ndez_Rojas'?= <noltari@gmail.com>
Content-Type: multipart/mixed; boundary="===============2670806995382322134=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2670806995382322134==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=pPhNRedcWyymdw=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=pPhNRedcWyymdw=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Daniel Gonz=C3=A1lez Cabanelas
> Sent: Sonntag, 24. Mai 2020 11:06
> To: mail@adrianschmutzler.de
> Cc: openwrt-devel@lists.openwrt.org; =C3=81lvaro Fern=C3=A1ndez Rojas
> <noltari@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: DGND3700v1: device tree
> improvements
>=20
> Hi Adrian:
>=20
> El dom., 24 may. 2020 a las 1:01, <mail@adrianschmutzler.de> escribi=C3=
=B3:
> >
> > Hi,
> >
> > > -----Original Message-----
> > > From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> > > On Behalf Of Daniel Gonz=C3=A1lez Cabanelas
> > > Sent: Sonntag, 24. Mai 2020 00:24
> > > To: openwrt-devel@lists.openwrt.org
> > > Cc: noltari@gmail.com
> > > Subject: [OpenWrt-Devel] [PATCH] bcm63xx: DGND3700v1: device tree
> > > improvements
> > >
> > > Improve the device tree file and related board data for the
> > > DGND3700v1/ DGND3800B router:
> > >  - Improve LEDs definitions, use shorter names.
> > >  - Make the board name more readable.
> > >  - Fix the switch LAN labels, the order is reversed.
> > >  - Use the real name of the board for the board name instead of device
> > >    name.
> > >  - Use standarized names for partition nodes and leds.
> >
> > This deals with several different issues at the same time. I'd prefer t=
o have
> it split up (e.g. separate board name change from LED changes and switch
> changes).
> >
>=20
> I can't see the benefit of flooding with commits on every negligible chan=
ge.
> These are just cosmetic changes which won't affect the behavior of the
> device, and wont produce any unexpected bug, I've made the opportune
> tests.

Well, one of the possible bugs would be that LEDs won't work after sysupgra=
de, see below.
I don't think that everything should be separate, but I don't like complete=
ly different things stuffed together.

>=20
> > >
> > > Signed-off-by: Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>
> > > ---
> > >  .../bcm63xx/base-files/etc/board.d/01_leds    | 12 ++--
> > >  .../dts/bcm6368-netgear-dgnd3700-v1.dts       | 64 +++++++++--------=
--
> > >  .../549-board_DGND3700v1_3800B.patch          |  2 +-
> > >  3 files changed, 39 insertions(+), 39 deletions(-)
> > >
> > > diff --git a/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> > > b/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> > > index 91d67f0c0b..6b82d9e952 100755
> > > --- a/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> > > +++ b/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> > > @@ -66,12 +66,12 @@ inventel,livebox-1)
> > >       ucidef_set_led_netdev "wlan0" "WIFI" "Livebox1:red:wifi" "wlan0"
> > >       ;;
> > >  netgear,dgnd3700-v1)
> > > -     ucidef_set_led_netdev "lan" "LAN" "DGND3700v1_3800B:green:lan"
> > > "eth0.1"
> > > -     ucidef_set_led_netdev "wan" "WAN"
> > > "DGND3700v1_3800B:green:inet" "eth0.2"
> > > -     ucidef_set_led_netdev "wlan0" "WIFI2G"
> > > "DGND3700v1_3800B:green:wifi2g" "wlan0"
> > > -     ucidef_set_led_netdev "wlan1" "WIFI5G"
> > > "DGND3700v1_3800B:blue:wifi5g" "wlan1"
> > > -     ucidef_set_led_usbdev "usb1" "USB1"
> > > "DGND3700v1_3800B:green:usb-back" "1-1"
> > > -     ucidef_set_led_usbdev "usb2" "USB2"
> > > "DGND3700v1_3800B:green:usb-front" "1-2"
> > > +     ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0.1"
> > > +     ucidef_set_led_netdev "wan" "WAN" "$model:green:inet" "eth0.2"
> > > +     ucidef_set_led_netdev "wlan0" "WIFI2G" "$model:green:wifi2g"
> > > "wlan0"
> > > +     ucidef_set_led_netdev "wlan1" "WIFI5G" "$model:blue:wifi5g"
> > > "wlan1"
> > > +     ucidef_set_led_usbdev "usb1" "USB1" "$model:green:usb-back"
> > > + "1-
> > > 1"
> > > +     ucidef_set_led_usbdev "usb2" "USB2" "$model:green:usb-front"
> > > + "1-
> > > 2"
> >
> > Is there any way to do sysupgrade on these devices? If yes, you will ne=
ed
> migration of the names in /etc/config/system ...
> >
>=20
> The sysupgrade works out of the box using the default_do_upgrade. Not
> sure what I need to review, can you be more specific?

On a newly installed device there won't be a problem. 01_leds will generate=
 the LED entries in /etc/config/system on firstboot, and after that the nam=
es used there won't change anymore, even on upgrade. In contrast, the LED n=
ames in the device tree will change with every upgrade, so that this change=
 results in the LED settings becoming broken without a reset of config file=
s. This can be healed with a migration script, e.g.
https://github.com/openwrt/openwrt/blob/master/target/linux/ramips/mt76x8/b=
ase-files/etc/uci-defaults/04_led_migration

That's BTW the reason why we haven't changed these for consistency so far o=
n this target.

>=20
> > >       ;;
> > >  netgear,dgnd3700-v2)
> > >       ucidef_set_led_netdev "lan" "LAN" "$model:green:ethernet" "eth0"
> > > diff --git
> > > a/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
> > > b/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
> > > index 546b0b1f60..c17bb3a600 100644
> > > --- a/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
> > > +++ b/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
> > > @@ -5,12 +5,12 @@
> > >  #include <dt-bindings/input/input.h>
> > >
> > >  / {
> > > -     model =3D "Netgear DGND3700v1/DGND3800B";
> > > +     model =3D "Netgear DGND3700v1 / DGND3800B";
> >
> > I don't think this is really necessary ...
> >
> > >       compatible =3D "netgear,dgnd3700-v1", "brcm,bcm6368";
> > >
> > >       aliases {
> > >               led-boot =3D &led_power_green;
> > > -             led-failsafe =3D &led_power_green;
> > > +             led-failsafe =3D &led_power_red;
> >
> > This should be a separate commit again.
> >
>=20
> One commit per line, on the same file, really?, again this is a minor cha=
nge.

Yes, but it's a non-cosmetic (with respect to its effect) behavior change t=
hat is not at all connected to the rest.

Just imagine we want to backport this or the fixed port order to 19.07, but=
 don't want to mess with LED names. Separate commits for separate topics ma=
ke sense.

>=20
> > >               led-running =3D &led_power_green;
> > >               led-upgrade =3D &led_power_green;
> > >       };
> > > @@ -51,49 +51,49 @@
> > >       leds {
> > >               compatible =3D "gpio-leds";
> > >
> > > -             dsl_green {
> > > -                     label =3D "DGND3700v1_3800B:green:dsl";
> > > +             led@2 {
> >
> > I don't know whether this is different on bcm63xx, but based on what I'm
> used to the old node name is preferred (dsl_green).
> >
>=20
> Well, I'll never know what's the best way for naming a led node. I've tak=
en
> the partitions nodes as a reference, and the LEDs device tree documentati=
on
> also use this way as an example.

Openwrt seems to generally use the name-based scheme (the one already there=
), and since there is no reason for changing that and it's unconnected to t=
he rest of your changes, please just drop these changes (of course, only th=
e node name, not the label changes).

Best

Adrian

>=20
> Regards
>=20
> > Best
> >
> > Adrian
> >
> > > +                     label =3D "dgnd3700-v1:green:dsl";
> > >                       gpios =3D <&pinctrl 2 1>;
> > >               };
> > > -             inet_red {
> > > -                     label =3D "DGND3700v1_3800B:red:inet";
> > > +             led@4 {
> > > +                     label =3D "dgnd3700-v1:red:inet";
> > >                       gpios =3D <&pinctrl 4 1>;
> > >               };
> > > -             inet_green {
> > > -                     label =3D "DGND3700v1_3800B:green:inet";
> > > +             led@5 {
> > > +                     label =3D "dgnd3700-v1:green:inet";
> > >                       gpios =3D <&pinctrl 5 1>;
> > >               };
> > > -             wps_green {
> > > -                     label =3D "DGND3700v1_3800B:green:wps";
> > > +             led@11 {
> > > +                     label =3D "dgnd3700-v1:green:wps";
> > >                       gpios =3D <&pinctrl 11 1>;
> > >               };
> > > -             usbfront_green {
> > > -                     label =3D "DGND3700v1_3800B:green:usb-front";
> > > +             led@13 {
> > > +                     label =3D "dgnd3700-v1:green:usb-front";
> > >                       gpios =3D <&pinctrl 13 1>;
> > >               };
> > > -             usbback_green {
> > > -                     label =3D "DGND3700v1_3800B:green:usb-back";
> > > +             led@14 {
> > > +                     label =3D "dgnd3700-v1:green:usb-back";
> > >                       gpios =3D <&pinctrl 14 1>;
> > >               };
> > > -             power_red {
> > > -                     label =3D "DGND3700v1_3800B:red:power";
> > > +             led_power_red: led@22 {
> > > +                     label =3D "dgnd3700-v1:red:power";
> > >                       gpios =3D <&pinctrl 22 1>;
> > >               };
> > > -             lan_green {
> > > -                     label =3D "DGND3700v1_3800B:green:lan";
> > > +             led@23 {
> > > +                     label =3D "dgnd3700-v1:green:lan";
> > >                       gpios =3D <&pinctrl 23 1>;
> > >               };
> > > -             led_power_green: power_green {
> > > -                     label =3D "DGND3700v1_3800B:green:power";
> > > +             led_power_green: led@24 {
> > > +                     label =3D "dgnd3700-v1:green:power";
> > >                       gpios =3D <&pinctrl 24 1>;
> > >                       default-state =3D "on";
> > >               };
> > > -             wifi2g_green {
> > > -                     label =3D "DGND3700v1_3800B:green:wifi2g";
> > > +             led@26 {
> > > +                     label =3D "dgnd3700-v1:green:wifi2g";
> > >                       gpios =3D <&pinctrl 26 1>;
> > >               };
> > > -             wifi5g_blue {
> > > -                     label =3D "DGND3700v1_3800B:blue:wifi5g";
> > > +             led@27 {
> > > +                     label =3D "dgnd3700-v1:blue:wifi5g";
> > >                       gpios =3D <&pinctrl 27 1>;
> > >               };
> > >       };
> > > @@ -107,25 +107,25 @@
> > >               #address-cells =3D <1>;
> > >               #size-cells =3D <1>;
> > >
> > > -             cfe@0 {
> > > +             partition@0 {
> > >                       label =3D "CFE";
> > >                       reg =3D <0x000000 0x020000>;
> > >                       read-only;
> > >               };
> > >
> > > -             linux@20000 {
> > > +             partition@20000 {
> > >                       label =3D "linux";
> > >                       reg =3D <0x020000 0x1e20000>;
> > >                       compatible =3D "brcm,bcm963xx-imagetag";
> > >               };
> > >
> > > -             board_data@1e40000 {
> > > +             partition@1e40000 {
> > >                       label =3D "board_data";
> > >                       reg =3D <0x1e40000 0x1a0000>;
> > >                       read-only;
> > >               };
> > >
> > > -             nvram@1fe0000 {
> > > +             partition@1fe0000 {
> > >                       label =3D "nvram";
> > >                       reg =3D <0x1fe0000 0x20000>;
> > >               };
> > > @@ -156,22 +156,22 @@
> > >
> > >                       lan@1 {
> > >                               reg =3D <1>;
> > > -                             label =3D "lan1";
> > > +                             label =3D "lan4";
> > >                       };
> > >
> > >                       lan@2 {
> > >                               reg =3D <2>;
> > > -                             label =3D "lan2";
> > > +                             label =3D "lan3";
> > >                       };
> > >
> > >                       lan@3 {
> > >                               reg =3D <3>;
> > > -                             label =3D "lan3";
> > > +                             label =3D "lan2";
> > >                       };
> > >
> > >                       lan@4 {
> > >                               reg =3D <4>;
> > > -                             label =3D "lan4";
> > > +                             label =3D "lan1";
> > >                       };
> > >
> > >                       cpu@8 {
> > > diff --git a/target/linux/bcm63xx/patches-5.4/549-
> > > board_DGND3700v1_3800B.patch b/target/linux/bcm63xx/patches-
> 5.4/549-
> > > board_DGND3700v1_3800B.patch
> > > index 936aab115b..7569e9643e 100644
> > > --- a/target/linux/bcm63xx/patches-5.4/549-
> > > board_DGND3700v1_3800B.patch
> > > +++ b/target/linux/bcm63xx/patches-5.4/549-
> > > board_DGND3700v1_3800B.patch
> > > @@ -5,7 +5,7 @@
> > >   };
> > >
> > >  +static struct board_info __initdata board_DGND3700v1_3800B =3D {
> > > -+    .name                           =3D "DGND3700v1_3800B",
> > > ++    .name                           =3D "U12L144T01",
> > >  +    .expected_cpu_id                =3D 0x6368,
> > >  +
> > >  +    .has_pci                        =3D 1,
> > > --
> > > 2.26.2
> > >
> > >
> > >
> > >
> > >
> > > _______________________________________________
> > > openwrt-devel mailing list
> > > openwrt-devel@lists.openwrt.org
> > > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=pPhNRedcWyymdw=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7KVzwACgkQoNyKO7qx
AnCYXRAAvOajuhgS1toEQmpoWGCuEdmRquo7jRdvowi8RPDHLtSMSnWgKwaPZqho
emkpHE5cTzzHKRrU8d1ytebiUEUR0DHZfYK69Jj2c1/l0rwmup7CUi66cq0j0gvg
uALJN7sbe6Tl6b2jKleyYUuMzmOQ1vJ4j7IZ7E3GPMFmuLr5It0hzItLQNR3gqcX
A/HuX7NVfi1A4IC63MvboXirSqBeUYEM0lx6wooUd7zxa+PeKiGdQ89Dlw0vgA9o
uGrVkfK1cK5C2k31ZaQFPvySYmZ95Yzh+BjlBGG1xOFGWH1It09f0H/d/djo4l/X
fQpJMMe8dAdQxgYcBd/Httq9SaHggHoi9xqpTHZ83VQrzCnKgFjAOfgcHAGdqdsz
q5lGCxY55UmwvMRFccCe+298pUI2VqPPfv2dOKgSrziouIflGQDSBefxWo63toiu
tMuSUCJnuEPTapFLiaA5ScwmgBBhbcfwLF6BpVZiZSpJvKpH3qU8VgX1nrAhG2PF
iKDXXXssKKs6K0O1WUZW2FdeMVNugBeEGc0Ke3OfkVHWp9QJwV9e5J9LAwhmYQ4P
+wmAx6O6B3vEckyL0Tfd0jmuu+MBJN2ngDWqi8dI8sZSP60T6XBefVhRTcbSnpXd
8thjTvfn8QUeN6Qwp5zQE4CBAwsJLS/y5Wz+Wl/9v7DCKnKBr48=
=ibfM
-----END PGP SIGNATURE-----


--=-=pPhNRedcWyymdw=-=--



--===============2670806995382322134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2670806995382322134==--


