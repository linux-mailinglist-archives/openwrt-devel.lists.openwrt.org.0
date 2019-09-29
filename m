Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8289BC19B4
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Sep 2019 00:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QMR/qbADnU4k1NVz2s86tiZW1w0dR7tjR++8S5Iozf4=; b=LQpf8OEbdq6VAfzDcij+kuHeF
	g+mneGRDiiKa43DY+S2pZ362HmstFBZkjXB72KsUTOQB8azuFGP0uCuIVJN4eg+MWWM6vyJ56hwss
	C0NxU5B7H4gnIQPQzD94jUt6HM6ET8jypMlkvBeRcoUsSsFFnXAvPMP6vMlgWABFN4DQatoXI7ZpX
	Xq7gGQ6OumAUs4wquJvNSHMZhfK+FiVitWtEUpWbjQQ4X/D1AegE7gB+Yl2qvNZfFri/h63cmRfM0
	6+SM/ysko32xkeG87HfWBl3HHQ92bB4pEa4ksHsgmme7BTmJfW04ays6jlBf5uwIaUmL4Oy34sfI6
	jQEbkIfbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEhTe-00037P-JN; Sun, 29 Sep 2019 22:15:38 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEhTW-00036Q-TO
 for openwrt-devel@lists.openwrt.org; Sun, 29 Sep 2019 22:15:32 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M1HmG-1iHRYz0kos-002qGs; Mon, 30 Sep 2019 00:15:19 +0200
From: <mail@adrianschmutzler.de>
To: "'Christian Lamparter'" <chunkeey@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20190923143138.2976-1-freifunk@adrianschmutzler.de>
 <2787752.gk3AGoonP1@debian64>
In-Reply-To: <2787752.gk3AGoonP1@debian64>
Date: Mon, 30 Sep 2019 00:15:18 +0200
Message-ID: <00c201d57713$60f4fd50$22def7f0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEpAFnbIewR+fdxQ4OlUZcWzP74rAIPG7S2qIupmFA=
Content-Language: de
X-Provags-ID: V03:K1:zOGI35nlCYLnMLyEpevVm+81PRgpPHjXVRyLpOsFgWzgW0k965s
 g5orlQIGvUbsSS/BogXA0zjQp/4ZtteQNHxIXM5q/tUKKm4cPlRIoTaAc6nppUkgdy0okvE
 N+wwbTvDQoCIpGkExVBKbxdX6YrjPRLUDpHRC1sJ8ARs+Zhs32HIyI/lGodFGcIv0TKx2K7
 yQdo7XEAjTaA1+kfUA38A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:08Jchs+skhI=:fRIcg0ExIIsXu3RMeMHLkm
 qJTlhH5JAx98oGOo508k2okHWBLg5SHXUp3rtYwa3HdlD2QiYUxliadYs8ITwUF0fg9di6rzf
 3jh7BI8meKt8ICk3eQDsw6VDnZo0r6kWXPqD3Am16TYSz5hTC6dtW2/oLWwJ6qM/OqDHVbbMx
 9l9gHblWgcs/3crTvPGiHutZPcip1wtPvUwN/XjxvtCi3dd8seakkDpdH+jdjnCj84V0PABbE
 48zli8GXT8k6cCdR58ijHXWNLFu8aMXs3rit2DNsAKyYPyaQ84ZO7ns4JdSuGaIqSb7vzECIs
 K1lfBnqvG0xu5fU75Qduo36U7X6+Jjhr/K5u8p7Q9dpeBAXkaR3z5Kb6KOV9/vk72eNmDmzS5
 z6qYGsPzAPMJvpTo2m/iUdWOdP918kHQTPlhgTzbJxuofiK01NIJpNGaUxkV+yDHuQRsc1da3
 TU/KiTUKwycTQv6HAmF0wvTNPTMHMOz8fBtT2qHR6oS/39zN9FNZRHSti3zddGgGFiOj05Ld4
 CO5sruLIBRw/myN2iGNGcvaVxcZoKuqEdVw2djz4qTP/KkDV+94HuN6fhqtN4cUELytxFs+iv
 sAUF7Ws8PeI64SB0L5PeNcGC7tZtaJiqWjJ1eEUGCmzSYubQxvP9dUQEgxFaphMC5VACFzkGW
 K0MhS2cpPGv8bZK0TgXVgk6jx2lzA+qZ7XxR1koizU3W74jfHr+BmZcFem20ZmeOZmVw2N7s4
 LD6xRLHJqTX2laSoLGjxMgcopZZiRlmRxg5+ZxSu1CtNfkDg+7zelITKPSHvymn0KXCBBhey9
 GVbhxEbg/AhmmDoHCOVTFqce3MQ5ZT7FUJLDrBVczDU47H5TrX3NaS/M9xOzx5PdbONMKNx5f
 QQcdY3ryvw8U37GhJfS6Xcpke62ry5A+N8Rca6BMw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_151531_245368_01B2D0A5 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: add label MAC address for
 FritzBox 4040
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
Content-Type: multipart/mixed; boundary="===============1594101912070460421=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1594101912070460421==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=OG2IczoN++yrx/=-="

This is a multipart message in MIME format.

--=-=OG2IczoN++yrx/=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Christian,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Christian Lamparter
> Sent: Samstag, 28. September 2019 18:37
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: add label MAC address for
> FritzBox 4040
>=20
> On Monday, September 23, 2019 4:31:38 PM CEST Adrian Schmutzler wrote:
> > This adds label MAC address for the AVM FritzBox 4040, the first
> > device in ipq40xx target.
>=20
> I had to look this up a bit more, since my (broken) retail-unit Fritz!Box=
 4040
> does not have the MAC-Address on the sticker labeled as "MAC Address" (or
> something like that).
> Instead there is a "CWMP-Account" String/Number which displays the
> Address as a "part" of it.

I thought the MAC address was on the box, but I'm not really sure and don't=
 have the box anymore.

>=20
> Wouldn't it be better to just go with the "serial number" of the device i=
n this
> case then?

I need a MAC address for certain use cases, like calculating local/ULA IPv6=
 addresses based on MAC address or EUI that will allow identifying the devi=
ce in a network (Freifunk...). For that, it's convenient to exploit the fac=
t the most vendors print a MAC address on the device. A serial number won't=
 help me there. So, CWMP-Account will be the best I can get ATM.
Or are you pointing at something I don't see?

>=20
> Going deeper: The patch that introduced ucidef_set_label_macaddr
> describes it as
>=20
> |commit 469e347f19ce9eefdc16f421b8e1f18ed60c310c
> |Author: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> |Date:   Thu Aug 15 15:13:27 2019 +0200
> |
> |    base-files: provide option to specify label MAC address in board.d
> |
> |    For many devices, MAC addresses cannot be retrieved via the
> |    device tree alias.
> | [...]
>=20
> ... This is somewhat strange in the context of the Fritz!Box 4040.
> This is because the extra u-boot we use for the Fritz!Box 4040 makes a re=
al
> effort to patch the real mac-address into the device tree before handing =
it
> off to the kernel.
>=20
> https://github.com/chunkeey/FritzBox-4040-
> UBOOT/blob/master/board/qcom/ipq40xx_cdp/ipq40xx_cdp.c#L455
>=20
> So, everything should just "click" with this alias added.
>=20
> 	label-mac-device =3D &gmac0;
>=20
> Or does it not?

I tested this when I started the effort to add label-mac-address to OpenWrt=
 several months ago.
Back then there was no MAC address in /proc/device-tree (using find /proc/d=
evice-tree -name "*mac-address")

I re-checked today and now there are local-mac-address entries for gmac0 an=
d gmac1. So this must have been added recently?

Anyway, I will send a new patch adding label-mac-device as you suggested.

Best

Adrian

>=20
> Cheers,
> Christian
>=20
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> >  target/linux/ipq40xx/base-files/etc/board.d/02_network | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network
> > b/target/linux/ipq40xx/base-files/etc/board.d/02_network
> > index e5ba7260f3..082724ebfc 100755
> > --- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
> > +++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
> > @@ -77,6 +77,9 @@ ipq40xx_setup_macs()
> >  		wan_mac=3D$(mtd_get_mac_binary_ubi Factory 0x5006)
> >  		lan_mac=3D$(mtd_get_mac_binary_ubi Factory 0x1006)
> >  		;;
> > +	avm,fritzbox-4040)
> > +		label_mac=3D$(cat /sys/class/net/eth0/address)
> > +		;;
> >  	engenius,ens620ext)
> >  		wan_mac=3D$(mtd_get_mac_ascii u-boot-env ethaddr)
> >  		lan_mac=3D$(macaddr_add "$wan_mac" 1) @@ -89,6 +92,7
> @@
> > ipq40xx_setup_macs()
> >
> >  	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
> >  	[ -n "$wan_mac" ] && ucidef_set_interface_macaddr "wan"
> $wan_mac
> > +	[ -n "$label_mac" ] && ucidef_set_label_macaddr $label_mac
> >  }
> >
> >  board_config_update
> >
>=20
>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=OG2IczoN++yrx/=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2RLPMACgkQoNyKO7qx
AnCy+g/7BrDjtR05tOvH6Py3vf8MQKdPzXGH6LklevxS/jbx+7pN1kt268CfnATs
L6F6BX+/qVq5kfHhFoG75+PyCgc/yRgdwaFit34CviJpOyZ/wv86PjEUfuJmdmO9
R8qYSjUdAIjCPuozynbzclC0uhN1v9c1qrAi2WRtMamcG7h8UfFkxdPO+qkmV2kc
o1KtQ+GxubeBsIug2XaTAUb2xmDbpGqoJSfqc9uLyeHNqrhy1kffLgYVZPMNwSEA
qlUQstRWw1XOYDxrkNIROMpve//hxrLpfzk5iEFNpgz6Z9bmcjO+ULqJZr9eIM5r
zMQLSYioAjomRBsEZ2L36rJkAlZe9zxEQm6zPfY8MmPW/bu/qii7wmonIQhgRBOY
hJo92I8u0blUpI2zOh6z+elcU5NU13dBKGsUYAfPD5NjFIbyD1uOoJ3Edgr02FbB
ckNNYP3cUHH4zdl0L8rRsit+pKh4Z3CClsRvcs+WqKDlFtYu5kFR8+TzW826Kq13
51diAwE5NUMrFhkmuCOQmPXSlWVds42I3M3cQJKC6KFCmxRhi130AL4QlsBbnL12
RqwS3bMx/PQdf7XhNDOow1SpF8lGJ49+X2mNuSoVkidkAlClQa7j7gN7nTbyEjyM
lLa1FI9KFGWuH/DYMPl9m4F42P7lQcsJlKUNqdZGkHZXYnXuroQ=
=yhHw
-----END PGP SIGNATURE-----


--=-=OG2IczoN++yrx/=-=--



--===============1594101912070460421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1594101912070460421==--


