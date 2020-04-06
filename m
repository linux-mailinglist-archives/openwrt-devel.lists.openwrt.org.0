Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AC419F2DE
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 11:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YwiK0BjpVjtydg4AwGPqqdHvQH9Y3Mli0UInySJbnIE=; b=Wcuzvy986C1gTIfTsIRnKoU3h
	QtLZpEfnSi+pjsb1JfNBqmcK9NOthxqOity3MHf6SicrmsG367NDxcUuQ6klXV1yyJzeRRoFqG4qX
	BOgmjTbotb8V2hEKcj6r1u9jqQfesWas+8/hL9Snfs5Ijq4K0DBlbxKDtzcX95wdSSdb/MymjBxyv
	kcCyQvC0Kh6sXdBJpjZqUXsuigT4o92fGBLnUAOZuBXysIvWk4fGkvarXq3hUwZijU9V9kh3Xb0h8
	BaDH+zV8cgR9HwAdGEg76YLsrL0qqjVOnH2xnDNw90id8PPemOh/8wlIXhgFWQussEorDSjC5wqzc
	6PsqoU4Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLOLQ-0006aS-2l; Mon, 06 Apr 2020 09:47:04 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLOLG-0006Zj-7z
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 09:46:56 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MhDN4-1ipt4J2qWI-00eJLA; Mon, 06 Apr 2020 11:46:37 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Bj=C3=B8rn_Mork'?= <bjorn@mork.no>
References: <20200402195359.51545-1-mail@david-bauer.net>
 <87k12wx6tm.fsf@miraculix.mork.no>
 <e74d668d-d2ad-8312-b5c0-7e8e2e9bbf02@gmail.com>
 <332d6de9-97e7-2afb-20f9-18aa66e2a0aa@david-bauer.net>
 <CAHP3WfMQmF+rmm2iaTJPakKHDUAKpYoWDh=o_4tE+3LBQjhMbQ@mail.gmail.com>
 <87k12wveuc.fsf@miraculix.mork.no>
 <01f201d609ef$e09c4620$a1d4d260$@adrianschmutzler.de>
 <87r1x4tkl2.fsf@miraculix.mork.no>
In-Reply-To: <87r1x4tkl2.fsf@miraculix.mork.no>
Date: Mon, 6 Apr 2020 11:46:36 +0200
Message-ID: <006e01d60bf8$4424ddb0$cc6e9910$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGC1SgkF0aUPCAgLXhSaGRWdguy5wIcJfPpASbPQuMBpv3RWgItjMWUAjUTdwgCRCmQsQHAbxcbqKe7G0A=
Content-Language: de
X-Provags-ID: V03:K1:GAdAwZujDpswT9B8M0ucmkQsGpJxFGl3WTUqV6b8fj9dJR1Oub9
 D/hO4gWu27uM8gjEjJbqHRgi+QTgUgDJxbLq1qniFwvFXpXh52CbA36pMztAfHY32eNRxVs
 ngxbpe2j6KfMs/sW9GdbV6pwntfEK+PVbGHC03d0Qv5ZVRbwobiT+eumFTD3NP4Hh+ZE1v3
 BEtlMaHoJpWC0qxBfJjyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fWdIhIsd51c=:l+wepezD+8MP3YOjA/q61T
 4yp9egzCo0ztoPzF110Lt6MsXKVIQRgeJGALggrdsoKL9yOkY8zJ1AEjUKf89iABC9pFU50XS
 MZthAY0Jd2u78hfBpRGCRwH7aQI0wsWengk9PPqxrhBzwilV545kb11sbudT2/fEfKONqITZY
 pb8rxMUzr55JoVfReY9uBm+80uPtyp4ECM5kVla30TQU6kMFFGmOaqWmRwaQExCdFYKfLzukS
 /tQqAb3IlBfSGMvStSQlBx7rGnFwUKb8V+L9SkdPwPev4kp4quYysdS9W9zFU5R9GTQsmnBqF
 GoprzAJpPZs9cXKmjUmg+Q3iaxkjvQGPt5QrBOF1/rRWfoSoX+fxkMtHkealz0NBxKQ75DsHp
 kDrfpZYvKDqoLuhwXYtlLkbO6TMlGRGhTJifoUrRxRFPgat4Tz9OYcxHsAr3VFCxrjyaqk+u3
 C7ooKg7HIHW6RD9BQClyTnsgbFsaBvmHUOzKnouqMhN0vUnLUMWwNcujXcduKG67wIUbhfjIV
 4EBh+jCYIqAsMQhNweNhUIstjSIq195Ky9UYMZWcf9Ex4gteDDN7h5fwUF8aaw87ZEq3aw5N4
 QcDQW+HWJ5gAnKLX1xMl3Bd/Y7gmOHnXJIIg/nk57mSESCEqrDWawmjVSaM2DUubp/1kjXsiT
 bBl5sG3q/MfN1rV7d75HLsGuXLJD8Ij/i0AGorQku53WAL/PEdXQyRmEQv/gXLcu+LqUcKlEO
 vWE7xKv8oaA9TLysATYJOGP6lrXIfHjMlDDrURT/m6rWI1+WAHx0ke6BCkk8dPLO0uzdkYpcv
 FFnBZN/L0+EiXVapKzrs319C+0NBEsG+6g8Lf3T+SPVs5FMHrQn3wznetg8HiAx7OzDZAsZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_024654_578005_FA3572D6 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>,
 'Russell Senior' <russell@personaltelco.net>,
 'David Bauer' <mail@david-bauer.net>, 'Magnus Kroken' <mkroken@gmail.com>
Content-Type: multipart/mixed; boundary="===============4876323581420012235=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4876323581420012235==
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=JFnsOG2IczoN++=-="
Content-Language: de

This is a multipart message in MIME format.

--=-=JFnsOG2IczoN++=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've just quickly tested a few devices with "default" setup plus the inlini=
ng-patch on kernel 5.4:

TP-Link Archer C60 v1: works without apparent issues
TP-Link TL-WR841N v12 (tiny!): works without apparent issues, it is still p=
ossible to write to flash
TP-Link TL-WR1043ND v4: boots fine, WAN+Wifi works, I had some issues with =
WAN+LAN where network on my client device froze as soon as I tried to do a =
speed test (though I cannot clearly admit that to the router, it might be a=
 problem on my client device as well; rebooting the client device fixed it =
until I tried to measure speed again). However, note that this is the only =
device tested where the WAN port is part of the switch (eth0.2).

dmesg is clean for all devices, nothing remarkable.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Bj=C3=B8rn Mork
> Sent: Freitag, 3. April 2020 21:51
> To: mail@adrianschmutzler.de
> Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>; 'Russell Senior'
> <russell@personaltelco.net>; 'David Bauer' <mail@david-bauer.net>;
> 'Magnus Kroken' <mkroken@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
>=20
> <mail@adrianschmutzler.de> writes:
>=20
> >> AP is now revived *with* v5.4 built with gcc-8.4.0.
> >
> > So, this is sorted out?
>=20
> Well... There is a kernel patch which seems to work for me, and that's al=
l.
>=20
> But I'm unable to write any meaningful commit message explaining it.  So =
this
> still needs to be looked at by someone with a clue...
>=20
> I don't think 5.4 should be made default for ath79 before this is sorted =
out
> properly.
>=20
> > If further testing is required, I have a Unifi AC Mesh and several
> > TP-Link devices at hand (but only limited time for testing).  I might
> > also try what happens on tiny ...
>=20
> Further testing is definitely necessary. Maybe those with an already cras=
hing
> device could start?
>=20
>=20
> Bj=C3=B8rn
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=JFnsOG2IczoN++=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6K+nIACgkQoNyKO7qx
AnAbiBAAxWWiVDcSG9ITW2QvMeApeQgSWjkbx/gLRf3rCLjeRz4xaC++K/fUm8Ok
+CYXkiz6nwAHl+ziZeiP09fifN02qaNpGEg0NBTXHMw9abW0Flupqn8ItnlXwo2o
KoW4ivpi+tSAf7bTEkQCq0TPdi18CvSbGm+I4DBlKnoCBHwS6Kl8FEysLE7cXfMb
d5DH72LzuXLvlKXM8gfDza2S92s12TGoEumoY723vHR2GNj2MXPE6+o/ZIcDwV6F
TB5quvHqcaRjjpykro1Vq923QBalMf36rBHMcJN91qyRAEuVjuyPzDX360+URau+
I/6IbQmi+n4nGs5r4BA4Xee2TF1k0zdyGugoena0rdNfvpSVLTLUhPtOV5pxsugr
YnX95DG5a2z589jEy4YNeUJInt29K6UIgiBC7gym9wmYSMSLsziIH4ZwkyMjPsJE
IImIPnsoOzIxLAGPSPlsHBiC3TFmOT4KYwnZ5NekKDtYWiOhRlpddGd37+QJbleu
oE4yUfqeaNJVscKmGsrdrtfH2WKjoQJAyGhOzjtTajZsXbPhcZ6te8xOceQlbHHL
8mSKmUcAVKcoRLtocggP1MdeXbwUG2UaCjfPuXHZ2Gg0AtsHoCsS9VzU14G7+rfK
EZDVi6XGjTx7YLKl1WxLnn/zpbgyyF4JnwML0YH9kRZZRCGWuxc=
=sRFN
-----END PGP SIGNATURE-----


--=-=JFnsOG2IczoN++=-=--



--===============4876323581420012235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4876323581420012235==--


