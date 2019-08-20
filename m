Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2599896600
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 18:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B8xQrQiSnBEkkAWoxPdm1L8sljDssW3bnBpXLkq4KvI=; b=l9ooU3XuHJsdtnAkhkAfEqlef
	yIavqVKgM2HrdIz9LUFasMiIATwv434K4Vg6vBwkNfmPloSxCtgSBXd7IWU6PARi18zn7aKe++6G8
	aMyZQKC6sWl8t7Z1MZksoqxjwMn6ecbCXuZcwxvagD8tjaysUlg0bVZOpu1r2Ap2e6ZxE3ML/6Wru
	y/NtnxD7ZAZAInOlk7cWO7/JNU/qjU55Q9nvBUhlk1fTs97wsWSB0FDm7TMvbcpUQU9RYspjzqs2O
	7/XlCTENHe0IJE5otQCCcIOyG3ezPk2usNCpBJdBI+jxvWPWxR5OPTnqUUxecOvNIEQXOT2fHHYU8
	725L/+ajQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06mF-0007KN-5o; Tue, 20 Aug 2019 16:14:31 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06m5-0007Js-Ne
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 16:14:23 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MLyvH-1hir0F0bmD-00Hsdz; Tue, 20 Aug 2019 18:14:10 +0200
From: <mail@adrianschmutzler.de>
To: "'Yousong Zhou'" <yszhou4tech@gmail.com>
References: <20190820135159.15632-1-yszhou4tech@gmail.com>
 <000201d5576d$520b4620$f621d260$@adrianschmutzler.de>
 <CAECwjAj-5omvfG9zBcdhbOXDzbWjdrrG6DJJzgGfwW60vn40Pw@mail.gmail.com>
In-Reply-To: <CAECwjAj-5omvfG9zBcdhbOXDzbWjdrrG6DJJzgGfwW60vn40Pw@mail.gmail.com>
Date: Tue, 20 Aug 2019 18:14:09 +0200
Message-ID: <007d01d55772$4cae7e90$e60b7bb0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJg86Vi2Iww5m93bzeKrIxye1ijpgIp+at9ARiTcTSl0uThgA==
Content-Language: de
X-Provags-ID: V03:K1:0QxdeNmVarOWdwa1ZkuUdk2afRjpS9cH/zSt+tkektQESHV0xp3
 oNJHIdkRdV4vGrCbEX+1MpLmS2JNsjDX+uyGNoZLYg4CfF8JLVbfksZCzpCadPK3BQyDJZC
 7wnXjj3gPjcdsWHelYB9RHV5AHYYGvdm83jyd7I+cNZ5QwX2AJ6zqmjFHHe0nNTbA+LOFTm
 30asweqCOH9IALiQunRbw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:si2se7nvmH8=:4egrnNpeT2PQA3MFUFi8gl
 LTj+Kand4+mnBWc3Y25vKOjwAgZ7OC4izwAVfzIKRysR+jhAijd+r6E9NEEAgVWpEDTHXGHqZ
 k8sTel8JysR+60XDHNkPG1sZhlPfD9GmF9LnYjjDNKzVhid4oEfzvDybVTyWnUOwmgTgwAV6x
 PfHlR8UZeAkf27JD2FptF9AHxWJo3EfLwkF6thDQgKFeq+o9aJGfEBxu5I2RQTwAMdseOsLXG
 4xDD7oa6kDZ/d+/hzGi++nO3eL9WFIg3bkzyC3yAzkJ7JKn7A+hX/GWLiZ1wR8SNrF92KMpsG
 agmZZhszubNaiMnNVCLmca4yp3s4NnMm3oN4A7yNDtJxGtSLTCv4g0e1/zUUoLGTWtyEA1Wkl
 wfBzrbCi+9Xx6rtmlny1+qhXPKYvR54Rhz3kv1dVb7DvPOmY3+WrF43qEI8bmUnmhiCmtTZSa
 VwLfLw2hGPIKbRzTKgtI0EhcUzDWRztv5YIFwxh72BQ9vlqXb8IjZF6W6Wpb2Vr+zTq8/n4Gb
 rfYZA3X0c0Z4vzHrekj/IGw1LKTtD9fKIVisI5fkn4YF/pgl9bHbHRkaLfTBXi5o+kyfoy2al
 mrffSGDhHxgZLYaDhOiDYKaRpZq9xoHosCcRABICLgheOhwnWrkKUzmsNV1YgdBgHc2ivKbnv
 nSr+Lt+QH/aaFTZlXU0MIqrdVP1mY8mO/EZYcbLQmVjlc4gdcmjn9/brwE2c4vzSa1xHfEDkA
 +ZVqOdRirtgCrOUTtC5COX+75swAHCeTLlALIWIuG3sk5eTeQfg0z+D1VvU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_091422_069619_0DAE13F0 
X-CRM114-Status: GOOD (  30.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Paul Zanna' <paul@northboundnetworks.com>, 'John Crispin' <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============6957207616690988806=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6957207616690988806==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=2tQCJNoUJq5lIh=-="

This is a multipart message in MIME format.

--=-=2tQCJNoUJq5lIh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

just some comments on your comments ;-)

> -----Original Message-----
> From: Yousong Zhou [mailto:yszhou4tech@gmail.com]
> Sent: Dienstag, 20. August 2019 17:58
> To: mail@adrianschmutzler.de
> Cc: John Crispin <john@phrozen.org>; OpenWrt Development List
> <openwrt-devel@lists.openwrt.org>; Paul Zanna
> <paul@northboundnetworks.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound
> Networks Zodiac GX
>=20
> On Tue, 20 Aug 2019 at 23:38, <mail@adrianschmutzler.de> wrote:
> >
> > Hi,
> >
> > > -----Original Message-----
> > > From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> > > On Behalf Of Yousong Zhou
> > > Sent: Dienstag, 20. August 2019 15:52
> > > To: john@phrozen.org
> > > Cc: Yousong Zhou <yszhou4tech@gmail.com>; openwrt-
> > > devel@lists.openwrt.org; paul@northboundnetworks.com
> > > Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound
> > > Networks Zodiac GX
> > >
> > > Hardware spec
> > >
> > >  - MT7621A dual-core 880MHz
> > >  - 16MB Flash
> > >  - 256MB RAM
> > >  - 5 GbE ports
> > >
> > > Vendor device page:
> > > https://northboundnetworks.com/products/zodiac-gx
> > >
> > > Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
> > > ---
> > >  .../ramips/base-files/etc/board.d/02_network  |  1 +
> > >  .../dts/mt7621_northbound_zodiac-gx.dts       | 97
> +++++++++++++++++++
> > >  target/linux/ramips/image/mt7621.mk           |  9 ++
> > >  3 files changed, 107 insertions(+)
> > >  create mode 100644
> > > target/linux/ramips/dts/mt7621_northbound_zodiac-
> > > gx.dts
> > >
> > > diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> > > b/target/linux/ramips/base-files/etc/board.d/02_network
> > > index c0de9d4e50..2e3e5fbba7 100755
> > > --- a/target/linux/ramips/base-files/etc/board.d/02_network
> > > +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> > > @@ -392,6 +392,7 @@ ramips_setup_interfaces()
> > >                       "0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
> > >               ;;
> > >       linksys,re6500)
> >
> > should be "|\" instead of ")" here?
>=20
> Good catch.
>=20
> >
> > > +     northbound,zodiac-gx)
> > >               ucidef_add_switch "switch0" \
> > >                       "0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "6@eth0"
> > >               ;;
> >
> > Above you say "5 ports", these are only four ...?
>=20
> Indeed.  Will dig deeper to find better fit.
>=20
> The device was designed to be used as a switch.  So I was searching for t=
he
> line containing only "lan"

Ah, I see. With ports relabeling as you do here, you might not find one and=
 have to create your own at the end.

>=20
> >
> > > diff --git a/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> > > b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> > > new file mode 100644
> > > index 0000000000..51f2298d06
> > > --- /dev/null
> > > +++ b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> > > @@ -0,0 +1,97 @@
> > > +/dts-v1/;
> > > +
> > > +#include "mt7621.dtsi"
> > > +
> > > +#include <dt-bindings/gpio/gpio.h>
> > > +#include <dt-bindings/input/input.h>
> > > +
> > > +/ {
> > > +     compatible =3D "northbound,zodiac-gx", "mediatek,mt7621-soc";
> > > +     model =3D "Zodiac GX";
> >
> > Maybe include "Northbound" here, too.
>=20
> Maybe I should just use the full name "Northbound Networks".  It's a bit =
long
> but should be fine.

Indeed, I would just use the same as in DEVICE_TITLE (the concatenation of =
DEVICE_VENDOR and DEVICE_MODEL from Makefile).

However, I think it is a good idea to remove the "networks" for the compati=
ble (as you did).

>=20
> >
> > > +
> > > +     aliases {
> > > +             led-boot =3D &led_status;
> > > +             led-failsafe =3D &led_status;
> > > +             led-running =3D &led_status;
> > > +             led-upgrade =3D &led_status;
> > > +     };
> > > +
> > > +     chosen {
> > > +             bootargs =3D "console=3DttyS0,57600";
> > > +     };
> > > +
> > > +     leds {
> > > +             compatible =3D "gpio-leds";
> > > +
> > > +             led_status: status {
> > > +                     label =3D "zodiac:green:status";
> > > +                     gpios =3D <&gpio0 15 1>;
> > > +             };
> > > +     };
> > > +
> > > +     gpio-keys-polled {
> > > +             compatible =3D "gpio-keys-polled";
> > > +             #address-cells =3D <1>;
> > > +             #size-cells =3D <0>;
> > > +             poll-interval =3D <20>;
> >
> > Maybe try "gpio-keys" here, or is there a reason for the polled keys?
>=20
> This line I just copied from other dts files.  Will change and test.

Note that you can also drop the line with "poll-interval" then. There shoul=
d be enough gpio-keys examples around already, just grep for them.

>=20
> >
> > > +
> > > +             reset {
> > > +                     label =3D "reset";
> > > +                     gpios =3D <&gpio0 18 1>;
> > > +                     linux,code =3D <KEY_RESTART>;
> > > +             };
> > > +     };
> > > +};
> > > +
> > > +&spi0 {
> > > +     status =3D "okay";
> > > +
> > > +     m25p80@0 {
> > > +             compatible =3D "jedec,spi-nor";
> > > +             reg =3D <0>;
> > > +             spi-max-frequency =3D <10000000>;
> >
> > Maybe try to increase frequency here.
>=20
> Ditto.  Can you share some instructions on how to decide a higher value? =
 Or
> which high values are available and safe to try?

Can't give you anything specific, you might try to find a supposed SPI freq=
uency in a technical datasheet for the device or have a look at "similar" d=
evices with faster flash already (which depends on whether you can derive w=
hich device are "similar"...) ;-)

>=20
> >
> > > +
> > > +             partitions {
> > > +                     compatible =3D "fixed-partitions";
> > > +                     #address-cells =3D <1>;
> > > +                     #size-cells =3D <1>;
> > > +
> > > +                     partition@0 {
> > > +                             label =3D "u-boot";
> > > +                             reg =3D <0x0 0x30000>;
> > > +                             read-only;
> > > +                     };
> > > +
> > > +                     partition@30000 {
> > > +                             label =3D "u-boot-env";
> > > +                             reg =3D <0x30000 0x10000>;
> > > +                             read-only;
> > > +                     };
> > > +
> > > +                     factory: partition@40000 {
> > > +                             label =3D "factory";
> > > +                             reg =3D <0x40000 0x10000>;
> > > +                             read-only;
> > > +                     };
> > > +
> > > +                     partition@50000 {
> > > +                             compatible =3D "denx,uimage";
> > > +                             label =3D "firmware";
> > > +                             reg =3D <0x50000 0xfb0000>;
> > > +                     };
> > > +             };
> > > +     };
> > > +};
> > > +
> > > +&ethernet {
> > > +     mtd-mac-address =3D <&factory 0xe000>;
> >
> > If this really is a five port device, it would be nice to check for a W=
AN MAC
> address in 0xe006 and then read it from flash in 02_network (there should=
 a
> node for that already).
>=20
> All ports are supposed to be ordinary switch ports.  No wan/lan distincti=
on by
> default.

I see. Would be nice if you had a look anyway to satisfy my curiosity, I ha=
ve even seen one-port devices having two addresses recently ...

. /lib/functions.sh
. /lib/functions/system.sh
mtd_get_mac_binary factory 0xe006

>=20
> >
> > > +};
> > > +
> > > +&pinctrl {
> > > +     state_default: pinctrl0 {
> > > +             gpio {
> > > +                     ralink,group =3D "wdt", "rgmii2", "jtag", "mdio=
";
> > > +                     ralink,function =3D "gpio";
> > > +             };
> > > +     };
> > > +};
> > > diff --git a/target/linux/ramips/image/mt7621.mk
> > > b/target/linux/ramips/image/mt7621.mk
> > > index d32feb7eab..e52b1eba19 100644
> > > --- a/target/linux/ramips/image/mt7621.mk
> > > +++ b/target/linux/ramips/image/mt7621.mk
> > > @@ -464,6 +464,15 @@ define Device/netis_wf-2881  endef
> > > TARGET_DEVICES +=3D netis_wf-2881
> > >
> > > +define Device/northbound_zodiac-gx
> > > +  MTK_SOC :=3D mt7621
> > > +  IMAGE_SIZE :=3D 16064k
> > > +  DEVICE_VENDOR :=3D Northbound Networks
> > > +  DEVICE_MODEL :=3D Zodiac GX
> > > +  SUPPORTED_DEVICES +=3D zodiac-gx
> >
> > SUPPORTED_DEVICES can be dropped.
>=20
> I remembered OEM firmware sysupgrade checks for "zodiac-gx" and erred
> when this line was absent.

Ah, so this for flashing over factory firmware?

My statement was only valid for OpenWrt to OpenWrt sysupgrade. If you actua=
lly can exploit the SUPPORTED_DEVICES when flashing from vendor OS, then th=
is might be different.

Best

Adrian

>=20
> >
> > Best
> >
> > Adrian
>=20
> Thanks for the review, Adrian
>=20
> Regards,
>                 yousong

--=-=2tQCJNoUJq5lIh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1cHE0ACgkQoNyKO7qx
AnAUzQ//X0M9V5Vbcj3iXsGg5tF5CY61E4TrPLVuqzn+uA08CLwdyYbFwp2tyBrU
KM3Jy5nsimPu+wps1HnCUnTtiF9ZgA6taylAdCtRtef4TTgT9yrkZ7mIprrAlMA9
5gU/S+SnYbf6V03muYEIom205Mg6vElEzYlZyOCfWn6WPF8Nkkmf4SCCNupk2BwW
UT3wZp1TEI6BrBgKg6q7AwFSvVsiKiManGdV3UF0sANE6pne9S5NG0zFNt+Nj6sW
t6w/15EUoHg1qhGYRtnsFGGWJzB+nRxY0/VyXsJ8CqFob6KBCqyWxtP9n0MeDC8M
hAHVUTad1fiJS/2TKcCO+v5YCzvkQQ3HKDRqmlR+1Z9njc7mNfyMXkOwMU7ninug
pN/ERXmz8QdaskRJbrLUU/OvvmxFPbjOvGvgc1g7ZlLjQc+1g0CjIPRAK+Yxnias
moqIQeIZx+6cwygbG9g7t9zWigX4OS3mKsBnn5qwzztsOKKRSNNp+5xVfkjs09tV
4M3GUDQt6l2W/HIw7maVCBnu97gfyuZDqx6EFbJ9SIdkJsn1qfNXTi3Tdpv0Nt+C
1WC5uEWg2qqpew7iaLwAsRCG68LqXIp9Lv3Iq96WxlPYVfqq7S7OYfES4xoC+Phf
gSYVQUNc1TYA7y/UnKdQzzjZ0hCM2aW34slHdPSWiktXmXPflQo=
=1Ifq
-----END PGP SIGNATURE-----


--=-=2tQCJNoUJq5lIh=-=--



--===============6957207616690988806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6957207616690988806==--


