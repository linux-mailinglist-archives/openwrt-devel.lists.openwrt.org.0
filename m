Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C971192D76
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 16:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2swIX1l0bA2/aI2OvMJNhNxdLrU8wo2rclWIu3Rbx0U=; b=AOkiHTDNdcZeSkDbB3IGRSq0w
	JqMSN8xPAnkwL++p44iVn7MHSGGN2EfXf4iyywtHBR7eltoKRfoXhh3DDygmvObXQkO/1NtdgxPnM
	7Y8/8ukEU+7l1LQAM3oizU1rrLrpONelAEQNodTLZAV06gfucHCvHf4cf6rnT0+HZhFN3UNGISCUe
	iSiEYbD12cQTXh25k1LlSW9T0QxoOAdSi0LS5Va77Q+Z3b91Dsk46t0mzbTQ7s5JKGRMR+pie1opQ
	qqIEZZQxuOATTGIo34JzUJUdVZ/wvav+CgHHMcDkR+4e203tJj7LFK1RPm1MUyAqXruMgh9y40X59
	tCvgimd9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8LG-0007Ci-0G; Wed, 25 Mar 2020 15:53:18 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH8L7-0007By-Rh
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 15:53:11 +0000
Received: from desktop ([188.192.136.247]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MeTD8-1jrZ5G1mJo-00aXUO; Wed, 25 Mar 2020 16:53:02 +0100
From: <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200324233343.27749-1-pepe2k@gmail.com>
 <003c01d60297$995af2c0$cc10d840$@adrianschmutzler.de>
 <d1346acc-465b-baa3-ae98-50ebd9660033@gmail.com>
In-Reply-To: <d1346acc-465b-baa3-ae98-50ebd9660033@gmail.com>
Date: Wed, 25 Mar 2020 16:53:01 +0100
Message-ID: <00d201d602bd$771ad510$65507f30$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQFMfYalWKnQ1I3jeoHKM4AeJPTRWgHfgjr1AuvRDNKpRh5RMA==
Content-Language: de
X-Provags-ID: V03:K1:LpCUKHGJcdg5jncJ14X926/krGnzpZJh4qutgbzczW4L6n8ULKZ
 ubNMPSkw5aKFsRJJ7nzP+Z1sglztzWj6ire0GbcbA8Eqfv8GEYY6cFswIsUzq55etaBWOP/
 1NR7R8qnqooqVVp7CSqCsDuljgaVrbBfYYbnDUSrIfwffhaL+nTyOSYkQejfnGPhTjvF3sN
 +SavwcX/sh7Xl4JZPAxTg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TXSpSK0UNJo=:YtI46q4SqrVKY7hklpvTVU
 jwl4S5skzxuogjdkymp7sMY2VgzbJYp0EcKUXvxQUl4AqKzgVyGF4QJqJxi9RBRLyiAM3PJ+w
 JepSYZ9Qlhds3Thr0lt+8SxdfANRSuVVsl+YQHc8juAGhLOfYc186Zg/PyD7Bc62Gz0koDwfQ
 KM2YQYro76X5mF4okHj/+appNpuuQfV6JVGCwbqfAqpre0kB1Fsx1D7dw82BzC5h3KLe8kFSu
 Qj0wRpH2Fk7+QQYwuUk8S0RzPc43zZh3s88mck4Qjbc51apsgrncIuX35f2u1JtsUE9gTXH9W
 X53p86WszfJtGn8Xd42yJSrBQlJU1O7XajEzII7qkeYtwtFsygID6FaLohlHJrOPboR3yUegH
 +JQA7pmcojeZzG/4f7Cz1WJAHlyg1ykw+icWjLMWDcoPhlzpKDKEAMMhQbEvRoFigxFQ5owXM
 XeSLLgJIzz21B3iDNBe/O4SnSBiVZ0c5ER9lGwvzfQOboFiI5Xfy+KoyAO/wExB2ASZCUuD3y
 kfnMi69/vwClhzzo2brEc82PLt6n6PNd8JFvjZ7wHbHp1jL10hMuCPwioq7FK6TnBB8iP/aLl
 c7Bm1NMJQBFUAdwaxm3+WnA08iKnQBMbU7mQawOC+SItJymTRd1tnYl39L0/Iww92zv/lJwbV
 6LxzsYfyxRdU2+aQ/P6XiMbYR79P7AGzVGE+t01mwSymYDyztQkgwVrAXc7DAWnzEuDpKNU9R
 mMAlVoKDjPdJ6+avRfZJT6kOOshDnys9ZqS/hL+eU2K4TR3h8hFqa5Y/413/BC9vBFgsbWFkV
 nYLS/Cxj/jdVUnFn/9dgyKXp/40ZLMIwA1qcb6O6SJmYf2bnDzb/eUMvW4WVvgugVK4E4jh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_085310_195506_585D5B21 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] target.mk: enable iwinfo by default
 with any wpad variant
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
Cc: 'Jo-Philipp Wich' <jo@mein.io>, 'Felix Fietkau' <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============3149397284693826787=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3149397284693826787==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=ZMNqmtVOAEZr43=-="

This is a multipart message in MIME format.

--=-=ZMNqmtVOAEZr43=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Piotr Dymacz [mailto:pepe2k@gmail.com]
> Sent: Mittwoch, 25. M=C3=A4rz 2020 15:08
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Cc: Felix Fietkau <nbd@nbd.name>; Jo-Philipp Wich <jo@mein.io>
> Subject: Re: [OpenWrt-Devel] [PATCH] target.mk: enable iwinfo by default
> with any wpad variant
>=20
> Hi Adrian,
>=20
> On 25.03.2020 12:21, mail@adrianschmutzler.de wrote:
> > Hi Piotr,
> >
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of Piotr Dymacz
> >> Sent: Mittwoch, 25. M=C3=A4rz 2020 00:34
> >> To: openwrt-devel@lists.openwrt.org
> >> Subject: [OpenWrt-Devel] [PATCH] target.mk: enable iwinfo by default
> >> with any wpad variant
>=20
> [...]
>=20
> > Since you are touching this, maybe you can elaborate why this
> > extra_packages construct is needed at all?
>=20
> I don't know exact reason and it was added long time ago, in 2014, see:
> 6435b8bb27e. I suppose that was the easy way to handle it back then?
>=20
> > Why can't we just add iwinfo as selective dependency to the wpad-/nas
> > packages as we do for all of the other packages?
>=20
> Could you explain what you mean by 'selective dependency'?
>=20
> I don't think DEPENDS is correct way to handle this. Do you mean use 'sel=
ect
> iwinfo' in wpad/nas packages config?

=46rom the point of _functionality_, it would just be a
DEPENDS :=3D +iwinfo
for the relevant packages.

However, I'm aware that this is not correct from a _conceptional_ point of =
view, since iwinfo is not a "dependency".

>=20
> > I'm asking because I recently had a downstream case where we use
> > hostapd instead of wpad and wanted to get of iwinfo. I expected iwinfo
> > to go away because nothing selected it anymore, but in this case it
> > turned out that iwinfo is not automatically deselected, but has to be
> > removed manually as well.
>=20
> I suppose you should first look at DEFAULT_PACKAGES and target.mk.
> In most cases, wpad-* is added there and that's how iwinfo gets selected.

For tiny devices, we replace wpad-mini by hostapd-mini (ar71xx/ath79):

CONFIG_PACKAGE_hostapd-mini=3Dy
CONFIG_PACKAGE_wpad-mini=3Dm

However, this will not unselect iwinfo (as it should theoretically accordin=
g to the extra_packages condition), which will still be at "y", so will be =
built into the images.

This can also be observed in make menuconfig, where deselecting any wpad pa=
ckages does not affect the status of iwinfo. I assume that the extra-packag=
es condition is just evaluated "too early", and not updated during evaluati=
on in make menuconfig like "real" dependencies.

Of course, removing iwinfo/libiwinfo from images can easily be achieved by

CONFIG_PACKAGE_iwinfo=3Dm
CONFIG_PACKAGE_libiwinfo=3Dm

It's just not a "live-update" like we are used to from DEPENDS.

=46rom looking at the dependencies as described in the Wiki [1], I do not t=
hink there really is an alternate solution available at the moment, though.
Somebody would have to build one, something like @TARGET_ath79, but not for=
 visibility, but for selection. So, somebody could just add the new "depend=
ency" (using =C2=A7 as symbol for the example) to the iwinfo package instea=
d of using the extra_packages construct:

DEPENDS +=3D =C2=A7wpad-mini =C2=A7wpad-basic =C2=A7nas ...

However, I'm not sure whether implementing that would really be worth it, c=
onsidering that disabling extra_packages manually is still quite easy to do.

Best

Adrian

[1] https://openwrt.org/docs/guide-developer/packages#dependency_types

>=20
> But I see the problem here, I'm just not sure if it's safe to change curr=
ent
> approach. Maybe Felix or Jo are able to explain reason for using
> extra_packages.
>=20
> --
> Cheers,
> Piotr
>=20
> >
> > Best
> >
> > Adrian
> >
> >>
> >>  define ProfileDefault
> >>    NAME:=3D
> >> --
> >> 2.20.1
> >>
> >>
> >> _______________________________________________
> >> openwrt-devel mailing list
> >> openwrt-devel@lists.openwrt.org
> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >

--=-=ZMNqmtVOAEZr43=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl57floACgkQoNyKO7qx
AnDRpxAAsM76i79JEKtMcSgYZoxnOuqI0KnlHyhmfwm0IBakbDogFDvWZcAKYJKH
gPf6u5spYLwkilMxAbeiv5CDJVBE+k4LJtql4zG/vA1Qcs4ucnMcNpy04PvoXqSp
Y7O/NsK0v4W6kEB2Fq9sq3HjE3tQyGa6tO8bANZIQHN29PE2ayqZfaY3Hynj9Ds4
IWmMos69u7TNK0JhXEt+g/rv3Sv5FkV6muYmT55AGn6A5qyDmv+FszwzoPU/9PGa
RHXJJQ/6beKJqu+lRV/j9cC4RUSYnWr8mEh9y97eZtSpvkVux4Gx5BzhlokNYTYb
xiPacgPrRAqfh6i7PWOxcIZJRt+8EoqmOoVMfXoQ4ASthUmWByD0SGb5dfgiUmWh
MW4NxBXf4wb72ptMBlawGJ8atrT+hjuZRIm5UxeN4uq82k7dUtL0kgnoQkiHzmPF
SbivFrj6xtgPe1qaBSZGG3LQTrHlFD/WsNWPxNMSTvdTPtdwbJ2XPYBLct++mou3
H3F1u5gHsKlkc8hwBLbxmGXo1aPAMcO88OoK948x2Hou9fvwB76fMWmcmZvcIWD9
PpmLZveJLquL8Cu2DQ4L+wiKxb8PPZiKFYEjqfSHsEO/46Px5c28uAzg7lEsAKDo
Z0byPhWGvxTmK+tH9DR3S6oGaxM0Iitjoorftf9gkBYkKJKMbnY=
=50za
-----END PGP SIGNATURE-----


--=-=ZMNqmtVOAEZr43=-=--



--===============3149397284693826787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3149397284693826787==--


