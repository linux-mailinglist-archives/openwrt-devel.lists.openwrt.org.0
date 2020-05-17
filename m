Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A001D6BB0
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 20:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3FmSx2pELgmrM3muZLURMV4jsYpBmz9soV1K9H+eLUc=; b=B86k98U+I47iVO38zaWGnD4kU
	wdQnnZg+gSLYZXh0m6KWedKF6radgmA9c+lJPRlc7T0f3UQkc92PiOTgtEbRU96+pIKhvLa34LAZn
	fbiX1pNyXv3JpnFHI1y9GRmm2TKdKgqvqHUUTfV6lQuukE3mjZ/e7eTnasbBrZ95hSjbvhKEHXDdZ
	XJirDhQoff+O0Z/ZGTgBUBDm9GzmCsFYtlTy9h70xrX5TO8npPPkGEed85oRPvkXHSnCKKjWvrAIh
	WQ2PUGNwpIpHbxHG7sJ2C8JCR67gOH80zVdG50/6IlprkivpZNVGxj+wt++AY13g+nHsw1Q6AXEQS
	K5n8+YpyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaNua-0001Ah-Aa; Sun, 17 May 2020 18:21:20 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaNuQ-0001AH-0p
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 18:21:12 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M8hlZ-1jeWln07Wr-004gQD; Sun, 17 May 2020 20:21:06 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Daniel_Gonz=C3=A1lez_Cabanelas'?= <dgcbueu@gmail.com>
References: <3676440.c42S0g3a1G@tool>
 <00d001d62c6c$ac971180$05c53480$@adrianschmutzler.de>
 <CABwr4_sbkxbeGbqkkzivydHfO2RuJ16zgGbg==FrDWrE07Ca=Q@mail.gmail.com>
In-Reply-To: <CABwr4_sbkxbeGbqkkzivydHfO2RuJ16zgGbg==FrDWrE07Ca=Q@mail.gmail.com>
Date: Sun, 17 May 2020 20:21:05 +0200
Message-ID: <010301d62c77$ee0df1f0$ca29d5d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJxbEgMOcEwkamT/bHNbtDVG/8oZAFTYY/6AeK+jGOnXF/H8A==
Content-Language: de
X-Provags-ID: V03:K1:Mcks70n+A2CmV1ld9oFuCUn6fyN2H31XX9Fpv3sECpPSgINKei9
 exKgH1+z1GCdc0VE/FPlIDEIjLveDbMbNc7d+FacihjKmA27QHZtyeztT+JV3KGHiqqYGnw
 5Re48qmCP2nCaobW3MTdfoSRoUwmTe45MtK6asQtzJTFC1amKGgBIRzafEQ8YCeUx6y3RqT
 0n3SHa4RiiL5Yzcwefjzg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KKVUc0DFMHY=:sZkLXO/B8cO9mmgcs8NqtD
 7knc0IDJboUl63Ju+GdMl0imYSWFdNdCsCbyXB/gL4oBjA1aalmJG/2aI6fiLLdNHpaQ+Ek4a
 QUi2UNvB/AO0bM7omsJwMwM24xWmvsn8uq+rV+Qqk9zEim0pvlxJY07zsKj3AE+iC6UPUdclM
 tMuDRF2we886qBY/slGCm3f/EAJp0R/rrvk3Zu2VJIF6nDR3ol62lXKWYHlbusQH21YTmGRz0
 fqF8kRnqV6IlnUgws5rShtRFhXG7Q7oofK55iCLhQwFp/QtnB3V4tGozm/iWWUrV9VnI7rJyc
 X4V9Cl1AHZi784g0hoQoGZBC7MGoSqbBiMHTgQZbbrsNSYasLWnsSz51/TYQ+bsp8QjfBZjkL
 9rVHk/y9K8TpbBeV++MzfbnbjqVVp+UJ2acpzgLyD6+JQoxKARSWpvyiDXe5QDa1O1SImPccq
 iR0F80zKP7kR+4Do3xk3NJG5lTAjE41dYVnpJy0Riq7NbqGxaXWV37hlg9dwYKNt7ale1DIP6
 gX4kZyYJqcjj6JyeAkjDIl2nZ2TB55JGEi1xIN5yEtzvp4e7WS+FAnLJFhSRuAySfKw4O3pGT
 dcu4faJ216jhEgTS/qvkQj2sdN0bLTcLZ3KCB6QQ0j+U45xDRwWfDTqY4aKYjiLUHgc1W4z63
 cZERCaXOQE7g7PBAj9buIteDWqIuq3QzjqbDuQPBL4HopB+GYm5CdNN8PWKwzjxFMuOacGBhA
 QJ9Br1njUzvbHMsTaW8UHm4+IZva/t7cKczewC6uTZUR9Denih9ZgQal3h+Z1anFVQwyjCnUE
 hu4Q6KRRXWQr0A2+FiEOE3Eh23Epag39nylRWrePCjqm3s7jbBdaMIlKtlSTpUazscW4jYl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_112110_355940_07D1EA30 
X-CRM114-Status: GOOD (  28.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: Livebox1: reenable the image
 generation
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
Content-Type: multipart/mixed; boundary="===============6566750286507784431=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6566750286507784431==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=PWqhUpUERBYNu7=-="

This is a multipart message in MIME format.

--=-=PWqhUpUERBYNu7=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

> -----Original Message-----
> From: Daniel Gonz=C3=A1lez Cabanelas [mailto:dgcbueu@gmail.com]
> Sent: Sonntag, 17. Mai 2020 19:57
> To: mail@adrianschmutzler.de
> Cc: openwrt-devel@lists.openwrt.org; =C3=81lvaro Fern=C3=A1ndez Rojas
> <noltari@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: Livebox1: reenable the
> image generation
>=20
> Hi Adrian,
>=20
> El dom., 17 may. 2020 a las 19:00, <mail@adrianschmutzler.de> escribi=C3=
=B3:
> >
> > Hi,
> >
> > > -----Original Message-----
> > > From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> > > On Behalf Of Daniel Gonz=C3=A1lez Cabanelas
> > > Sent: Sonntag, 17. Mai 2020 18:52
> > > To: openwrt-devel@lists.openwrt.org
> > > Cc: noltari@gmail.com
> > > Subject: [OpenWrt-Devel] [PATCH] bcm63xx: Livebox1: reenable the
> > > image generation
> > >
> > > This old BCM6348 device still runs quite fine with OpenWrt snapshots
> > > when the board is modded with 64MB of RAM.
> > >
> > > Reenable the image generation and advertise the mod in the image
> > > filename
> >
> > OpenWrt does not officially support modded devices. If you require
> something like that, just build the appropriate image yourself.
>=20
> I was't aware of that rule. I thought this project was engaged with the s=
pirit
> of hacking (software or hardware). Furthermore, one of features which
> leaded Openwrt success was the hardware modding.
> Without hardware modding a lot of devices couldn't be supported. This fact
> has no discussion for me.

There are so many devices out there that we typically receive more requests=
 for devices to add than we can process.

Despite, for a device sold officially you regularly can assume that the har=
dware in it is defined and stays the same, at least within a revision.
If we started to accept modified devices, we would
- get a multiple of devices to review and maintain
- completely loose our ability to name devices properly, as there are no de=
fined names (would be easy for flash/RAM, but what about other mods)
- could never be sure that we properly supported a specific device, as we'd=
 never really know what some modder out there really did

So, it doesn't make much sense to officially support and add a modded devic=
e as explicitly supported device in OpenWrt.

However, OpenWrt of course is still perfectly suitable for supporting these=
 devices. You just have to build it yourself.

>=20
> Appart from that, this is the only one device in the bcm63xx target with
> Redboot support. Without the image generation it will be difficult to test
> otherwise. Therefore the support should be also dropped for this kernel
> subtarget if no one cares about testing the snapshot images appart from m=
e.
> This is a bit sad, but would make more sense.
>=20
> Of course I can build my own images. But I don't make tests or fix issues=
 on
> this device only for myself but also for others. So, with no image genera=
tion I
> will probably stop testing snapshots on this device. As a result of this,=
 I won't
> either detect and fix other issues on this target as I made in the past.

If you really rely on someone to build the images, than this might be the c=
ase, although it's a pity.

>=20
> > Despite that, I don't think the way you modify the image name would fit
> the naming logic on that target very well.
>=20
> Not sure about what's wrong with this naming logic. I made it the most
> concise and less disruptive I could.

IMO the proper way would be to rename the device, not having the image name=
 deviate from the device name.

If it was an official device, one would e.g. use
Device/inventel_livebox-1-64m
and adjust compatible etc. appropriately.

Best

Adrian

>=20
> Regards.
>=20
> Daniel.
>=20
> >
> > I will mark this patch as Rejected. Sorry.
> >
> > Best
> >
> > Adrian
> >
> > >
> > > Signed-off-by: Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>
> > > ---
> > >  target/linux/bcm63xx/image/bcm63xx.mk | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/target/linux/bcm63xx/image/bcm63xx.mk
> > > b/target/linux/bcm63xx/image/bcm63xx.mk
> > > index d5601e2c3c..1e5b0b9776 100644
> > > --- a/target/linux/bcm63xx/image/bcm63xx.mk
> > > +++ b/target/linux/bcm63xx/image/bcm63xx.mk
> > > @@ -759,7 +759,7 @@ define Device/inventel_livebox-1
> > >    DEVICE_MODEL :=3D Livebox 1
> > >    SOC :=3D bcm6348
> > >    DEVICE_PACKAGES :=3D $(B43_PACKAGES) $(USB1_PACKAGES)
> > > -  DEFAULT :=3D n
> > > +  IMAGE_NAME =3D $$(IMAGE_PREFIX)-64RAM_mod-$$(1).$$(2)
> > >  endef
> > >  TARGET_DEVICES +=3D inventel_livebox-1
> > >
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

--=-=PWqhUpUERBYNu7=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7BgI0ACgkQoNyKO7qx
AnBQtg//eJh6eGgRRnvZGH9OkfsVGWyVPKbVYNfb62E/vtobn25mnbu8f8vSdMyK
vcG5p+qNV7PEKl/+WF13YuGonZcKRX7Q0ZvtnGenJhMuJKEEjiFr8T/KyCJouF9T
Edxb5OZvlMQjr1c2Dtxtl0b7NrABLLMyyfrTIGAMBHyQpJgahw3NsgT0ySpIdQ4w
fQ4PUleXRiI3mcNO/OAMKt9NOogsICuW+iP7BH6I4M0gwkqskS1R+PqC1wwZi+Yb
hUbpha+COSTVZ5wLFslLhkoyzeELhzk4/UEpI9fqcV8qXX6mMUCGuix2kHYJ1DDh
Fggez6oa8l8YZkpPDeLSE6vGil6I6PJ1dSGD5pNH3tijaFJgpmRCCVZT/mFa6ueo
JnmSHbjosUn0QkDC1EP+fx4ZKmuFD5kGdpg6wQmOvjCWSmAVPkKhf9Pra54lAC0V
7bug9/Wi1ktuMun3tG2VTkaXwb64mXxEVjIvODQxa25BZtiGXm+RgRYQQ4FxQMVp
lgGiXoPndMqL5vCn8azndgJ6RdOtnPhE1+vC0EgsXLQOgYGx4+SnbIqoK0pnSxhc
oLQLjX0mGx1mDrpLDs7eNadngYOiukZXhYciOXhs8y33FrDCPDdIDWL1e0lmD16q
y0fXdakfH0EzD31W+Ulwg54tPupikAUcUVXGfP0XBQ/itJUK/c4=
=iW/E
-----END PGP SIGNATURE-----


--=-=PWqhUpUERBYNu7=-=--



--===============6566750286507784431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6566750286507784431==--


