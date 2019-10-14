Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473DFD62DE
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 14:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jvQMbZ3KzOiS4sqAXJsQA3CJmvbt6NAqoDGxu8C05lc=; b=ekSFU/ig+V3ZCmXxuFI1hCx/v
	cAzrwEUKM1lADPnCqPxrO64RjZJagOzshi10KeIpEYsZe7haVsuEQ1uEqhSxhaVxdCdjzNOO9y0w4
	E25Vm2blfqwa+e5TJy7L34hao8c1MzYQ2LLbB+e5s+pm7/6/KuwzUmWsUSFXkklrQWcMBI+FCKZ6t
	/ouaQChGRlR8zF80tujdCNyOrk+OxuMafGJXYqYt6wqr4h81DCfv/dvSY1hIrQIc+7dV53+nPJ/l3
	JwzfivEd1fC++vl43fvl3UVDbpWsfWuB0bPzQwWWe9mkW09Q8/FXH0xxCmVGIEV1YT81B3quQVQBw
	NWoA6hOQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzjQ-0005yC-8X; Mon, 14 Oct 2019 12:45:48 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzjH-0005xf-Jp
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 12:45:41 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N6sWd-1hzxZ11MJL-018J5O; Mon, 14
 Oct 2019 14:45:36 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>,
 "'Adrian Schmutzler'" <freifunk@adrianschmutzler.de>
References: <20191006174834.3398181-1-dev@andreas-ziegler.de>
 <00b001d58289$846fd670$8d4f8350$@adrianschmutzler.de>
 <089a96db-880b-e058-068b-9f77170c01ce@david-bauer.net>
In-Reply-To: <089a96db-880b-e058-068b-9f77170c01ce@david-bauer.net>
Date: Mon, 14 Oct 2019 14:45:34 +0200
Message-ID: <00cb01d5828d$4691d660$d3b58320$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQK+Iv4yziDpX0/ONY/jHl28IqYV/gKgQX1eAbHEz1GlZkMkEA==
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:J1VwgeTuvKqkYtCW5gzsz+RU1yDvHdGhU4XXS1eA0LTiIiel2Pq
 0ecSFh9WMs08nRxKjaMEM7var+dgmmVjiEwjUei4Q1MilKzdbgXHdwaayozLvMb4+cixWw3
 wqb+SISmE+JcBu5+N3N12Gof3oYVNl8CBmDoGxaFKx6CpzFXq/nHIvk0GXaJ6b33r0c3bS7
 d1G1JXh6DTS/5d8ycs7hQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZTei8P1T27g=:eafEdPYe4Cls1YxfpZEMK+
 t1dgiWT2oQyU/7hIrZVUY0/VoPv08uWq/wDBZ1c4W5x0mgwM7bO+UbStJD51sn6ZI6KcYjeaM
 z8jwUC/xeR7dlBiLQ+Y4p3YxgGf5S0Bq++2WsfUpdYvVUqvEX/yT4nFwzORo297K20LeBhIT5
 XUMe8BZzgTPJbo02gHrzKS0kxKWCeZzz8Lq07dRRX2XVm77R7oZ/XTHcV8x66J5mLOPiNnhgB
 hXM/Rw6bOaMr4HkaFljsOnVNo52FFuqxLIfo0lul4v5KNvUkm33vlReVOy06U8Ek80/tw8BKW
 R/d9h/CN3fr7QL7xu1mqJ7Tgp4taOvqCsG0P+2R2YpavUsc5yp4i8XaPDxoK8FC1WDZ/xEnOh
 t2NurWzhfyrV7Fp4P2joemPQIqlQ7m8bEsxezJ568jlrVqDUkgRFA3A30ZKkgVmKdfY9rtjxK
 1LpZ1Tf9by+J7aJ9J2iVzizl1ogygFsGdrtrE/vjfY/gHPR8V9ftkDlSUAuYcys5lT1PEQbG0
 lxWWu3FdivEBILbeTrgIqM3pkGe6pG5zMo1e6yuTSajBFAgIsKOkrOhsiiC+e3gGK9ausqc8l
 ZEB6ivXSe1c+txnEDhzzVt22ncgy0E+Uwr6tjuBOGW7qvQO5KglCMZEOAgoKLxd4UafKeD7TZ
 kEGScO5BjlykIHiuzol/9/EeDabRn0gl7j88dYUHy2nKbEQYZutxbTKvbWEYwcZlompme3ntZ
 6egrTdHhUw8uYBRgOiJq/lDUxu+aHD2tZe0VOXPTxHb8JElubN5B/f81eb/QWL51nQxH/nh6x
 GcM2HCb6B5usPIVm9mx7Q+/s1rkRK8mvk2gjzv+4ei9J5Q/GXvW30vQ0LDdaePYo6yRpRO8E7
 78afaEXMdtGP/WT6gGtnzBNjmgbZVh1q1fppYmH90=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_054539_950257_A1551712 
X-CRM114-Status: GOOD (  28.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for UniFi AC-LR
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>, dev@andreas-ziegler.de
Content-Type: multipart/mixed; boundary="===============2608329449897296043=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2608329449897296043==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=cp3dr1pF6sTYNX=-="

This is a multipart message in MIME format.

--=-=cp3dr1pF6sTYNX=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

> -----Original Message-----
> From: David Bauer [mailto:mail@david-bauer.net]
> Sent: Montag, 14. Oktober 2019 14:39
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: dev@andreas-ziegler.de; openwrt-devel <openwrt-devel@lists.openwrt.or=
g>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for UniFi AC-LR
>=20
> Hello Adrian,
>=20
> On 10/14/19 2:18 PM, Adrian Schmutzler wrote:
> > Hi,
> >
> > the device name is inconsistent in model string and DEVICE_MODEL (hyphe=
ns...).
> >
> > However, as this is only the friendly name, it is not really important.
> >
> > On their homepage, Ubiquiti never uses hyphens on product names, only f=
or the abbreviations:
> > UniFi AC Pro vs. UAP-AC-PRO-5
> > UniFi AC Lite vs. UAP-AC-LITE
> >
> > Since we are using a lot of hyphens for other Ubiquiti devices, too, I =
wouldn't bother for this commit.
> > But it might make sense to "correct" the friendly names for all Ubiquit=
i devices at some point in the future.
>=20
> I've looked into the naming Ubiquiti uses for their devices and sadly, th=
ey have for
> each of their devices multiple namings on their Website.
>=20
> > UniFi AC Pro
> > UniFi AP AC Pro
> > UAP-AC-PRO

Since we have the alternate names now, one could actually provide at least =
two, e.g.
DEVICE_MODEL :=3D UniFi AC Pro
DEVICE_ALT0_MODEL :=3D UAP-AC-PRO

I was mainly focusing on that we are using the names without hyphens origin=
ally and then add hyphens to them.

Nevertheless, I do not believe this is terribly important or blocks the LR =
support patch.
It's more like an objective for a boring, rainy afternoon.

Best

Adrian

>=20
> And don't get started on their Mesh series, things only get more confusin=
g there.
>=20
> If we want to be 100% consistent, we probably have to use the product-ids=
 (UAP-AC-PRO for example),
> however i think having the marketing name is nicer.
>=20
> Best wishes
> David
>=20
> >
> > Best
> >
> > Adrian
> >
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] O=
n Behalf Of Andreas Ziegler
> >> Sent: Sonntag, 6. Oktober 2019 19:49
> >> To: openwrt-devel@lists.openwrt.org
> >> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for UniFi AC-LR
> >>
> >> The Unifi AC-LR has identical hardware to the Unifi AC-Lite.
> >> The antenna setup is different according to the vendor,
> >> which explains the thicker enclosure.
> >> Therefore, it is helpful to know the exact device variant,
> >> instead of having "Ubiquiti UniFi-AC-LITE/MESH".
> >>
> >> Signed-off-by: Andreas Ziegler <dev@andreas-ziegler.de>
> >> ---
> >>  target/linux/ath79/base-files/etc/board.d/02_network     | 1 +
> >>  .../base-files/etc/hotplug.d/firmware/11-ath10k-caldata  | 1 +
> >>  target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts       | 9 +++++++++
> >>  target/linux/ath79/image/generic-ubnt.mk                 | 7 +++++++
> >>  4 files changed, 18 insertions(+)
> >>  create mode 100644 target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
> >>
> >> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/ta=
rget/linux/ath79/base-files/etc/board.d/02_network
> >> index 0de17adb9d..fe74bddbf1 100755
> >> --- a/target/linux/ath79/base-files/etc/board.d/02_network
> >> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
> >> @@ -50,6 +50,7 @@ ath79_setup_interfaces()
> >>  	ubnt,nanostation-ac-loco|\
> >>  	ubnt,rocket-m|\
> >>  	ubnt,unifiac-lite|\
> >> +	ubnt,unifiac-lr|\
> >>  	ubnt,unifiac-mesh|\
> >>  	ubnt,unifi|\
> >>  	wd,mynet-wifi-rangeextender|\
> >> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-a=
th10k-caldata b/target/linux/ath79/base-
> >> files/etc/hotplug.d/firmware/11-ath10k-caldata
> >> index 446b729a2b..ba39cb3981 100644
> >> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-c=
aldata
> >> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-c=
aldata
> >> @@ -179,6 +179,7 @@ case "$FIRMWARE" in
> >>  		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
> >>  		;;
> >>  	ubnt,unifiac-lite|\
> >> +	ubnt,unifiac-lr|\
> >>  	ubnt,unifiac-mesh|\
> >>  	ubnt,unifiac-mesh-pro|\
> >>  	ubnt,lap-120|\
> >> diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts b/targ=
et/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
> >> new file mode 100644
> >> index 0000000000..a1e542ada6
> >> --- /dev/null
> >> +++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
> >> @@ -0,0 +1,9 @@
> >> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> >> +/dts-v1/;
> >> +
> >> +#include "qca9563_ubnt_unifiac-lite.dtsi"
> >> +
> >> +/ {
> >> +	compatible =3D "ubnt,unifiac-lr", "qca,qca9563";
> >> +	model =3D "Ubiquiti UniFi-AC-LR";
> >> +};
> >> diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/a=
th79/image/generic-ubnt.mk
> >> index 4b2cee215c..13af092ee3 100644
> >> --- a/target/linux/ath79/image/generic-ubnt.mk
> >> +++ b/target/linux/ath79/image/generic-ubnt.mk
> >> @@ -225,6 +225,13 @@ define Device/ubnt_unifiac-lite
> >>  endef
> >>  TARGET_DEVICES +=3D ubnt_unifiac-lite
> >>
> >> +define Device/ubnt_unifiac-lr
> >> +  $(Device/ubnt_unifiac)
> >> +  DEVICE_MODEL :=3D UniFi AC-LR
> >> +  SUPPORTED_DEVICES +=3D unifiac-lite
> >> +endef
> >> +TARGET_DEVICES +=3D ubnt_unifiac-lr
> >> +
> >>  define Device/ubnt_unifiac-mesh
> >>    $(Device/ubnt_unifiac)
> >>    DEVICE_MODEL :=3D UniFi AC-Mesh
> >> --
> >> 2.23.0
> >>
> >>
> >> _______________________________________________
> >> openwrt-devel mailing list
> >> openwrt-devel@lists.openwrt.org
> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=cp3dr1pF6sTYNX=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2kbe4ACgkQoNyKO7qx
AnAXLQ//Q9dW92NQFYkOnasNFAsGt11jECRZTHosvYec/URHM3nYMC0TR+JIIWAH
Q8hoZriliOAkMNUgj+SwX+YamngnekI+9HtTIY89Z1ajpvGQyBbKbrM4aeFTNcFs
tpYcl5AhwP/v3odFEB+YvCKUoaxEhXgXxCUG0CC8Ycz3so2PvPkctT033dCUqfh4
7vorIGCZhajPa5Ba4sEwzPHsAVueWGaXuPtOM3hACpBKkLX5Fa232BO7xVy/uo0y
e7KGwrhukbqqwf+jaCbDexjAQqthnbM7PzHz5VGf+7ZpoWNZbnL1onyZ3PouJybI
zKFgY+rzbV+qnF4LxVxmvVVjyV/EhGZeU32x7nzS72JJBrBsYvMCufAVX04n099X
bul5Epxx5QmwolxpK2KcGAS7A+lGwwEwDcOMzIhMPzF9fz3CC6dmXKiuF7wDLkWH
9ILBWH26noQPNf/eNw/Pq6p8t1Cmbmwk9/Nxm2ADBn4FR97RDQYbZXhuILuQxYDL
ZOXFPg+INAyr8nQcmBnd/oTNZYA6v3oFe8MT0ZfprfJqSfv6Gp6H6SxdJzetryTV
IHtd8hIHg8z8BdwtmicORvuMjKO1qsDDKSVcAMh1FdrQO1XK2cUR31DiiuXNv4e9
zNPYODXqSdHF8zQMBEsQGwS6dWHgrVYknz9VAT+upTs0gSh6CRA=
=ZhdL
-----END PGP SIGNATURE-----


--=-=cp3dr1pF6sTYNX=-=--



--===============2608329449897296043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2608329449897296043==--


