Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8A018A14
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 14:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IbtRFZ45CJZNixpM5Sx3kcUKo/0Ly/SttKqQOhyzjhQ=; b=ixmmAMFfEVa3NpMTHJC4TleL6
	bbbn/UymuMhaG5PNwfP3uqjDjuXAXDXiveFadpTQiiQMbuZu2LOYPMTnkRCsx5k+81s/RvSAfkViJ
	t9keJswEN5JmdBT4t5AAw/cwVrbARXYqi9z3cICf219dS1orvmwBiY5EvcGqp/j8bSki8H6qn37d0
	BbfFNwcgtzMIw+TQmH6ZdGCGpctx1bP9P6kC6Zc4EzrwslHR65SeVXgakd+XLoLXnYF3niJOfDIri
	dmksDGp5aZECOKN6AsZbZmDTs/biGFP5cnoxJEQf1JG7nCCy2LmHghf/MOPQr/IM51PW8PzJYq8Zw
	q1jpp+IBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiXB-0002GO-5w; Thu, 09 May 2019 12:52:25 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiX4-0002FC-ON
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 12:52:20 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MjjOl-1h1SFs2vWN-00lDyq; Thu, 09
 May 2019 14:52:11 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
References: <20190509115039.6127-1-freifunk@adrianschmutzler.de>
 <20190509124138.GR81826@meh.true.cz>
In-Reply-To: <20190509124138.GR81826@meh.true.cz>
Date: Thu, 9 May 2019 14:52:11 +0200
Message-ID: <014f01d50666$04fc92b0$0ef5b810$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIAZH7ihFt4B/58hK9UXfi3C6tgPwGe8MGnpf8IvkA=
X-Provags-ID: V03:K1:xKm3KD1xcclCRDN+WsDTUuDIMMgIfeObNn31USkU5cTl+9WQH8c
 NCH1mMMsv7vgGMY0qoXLG5A0KKo1iUzqx/OIjMXmzw76kxJ3SuDFLP7FRD7tVDULgqlddRw
 Gzb/yMBlIzNTUtHXnsONP8Rq8WISAk0jhNmYMsJr9rO+Wfxuoq2kgxg8TsEiV9OACjAXf0+
 I2W3wjSrnjM69kuCb+mBA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HSvL4khtOGM=:pzXQeHNWQiAEOLxkcgRxMv
 kieaAJtDlQmQu6tfNuLNJRQARtvdEXThMch62C0xANPEE2pPTRWAyUprOHoq9Sr68auV07JsJ
 eOhbiay4ZQT5iX6pRwsof+ME7wBVvDOh92c406+P58ZePRhEuyq7140k/7muHrpoFg0O7uPKz
 9+VBI76C3/C3dHP57mmH0CuF2qHUGen93Po7pBG7eApWTJeKFgFZ4fRV7oRqrDaU/iYdlU+sY
 b3lJi3cL6Wh/7gHrTZkvGf9kUWX+IwOcllLLnpUBldI2x6DV+pCG1yzXHmYdB46OioyNVMtou
 pmMAYjicQqR3L9vQVMWng5PTSfkxAP2F43iZzFRAKLz4WlQ99d8Enq4HhEbcn3ImK2ZpcF68X
 GYEaAF2EfWXT2fMX0r9GwfErvtCLTWtuT4xdF0RbsmwFGLzN7sPadlldFpq5ID5zcnR7M3n/g
 ypcb+CExn0h8sRPfZfIAebDkCnTvCCHEHojbzHvbmlpGW/+GNclfKMSoBP3xyxvgBl+ut+WQZ
 oJv6c1hqboy9cLFiPNteRgcZV/xCrqGi+w1PaShew141y9Wq8CgIj/VHIJMMpb5/EqNe3Bf3W
 GVsFGqGAOUxKvTKSxy+VIZ2rTufpaHt/mcYS2Q3e4uCjo0G6mcGf5NjbkOmyZ5KT1zZ0gANZj
 KF4DF7R0tj0JOrKFLNW584ClN4AhyPqskqmv2ku/Ky3qtxVe62gjj93fdI76EwbvpeAu+sn4m
 A7Ajx1J8VxEzCTxTrxf9fxM9i0SKj1ye8Bdi6xiV5UdZ9f5AFgsgaxx46b4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_055219_096323_715D55C3 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add missing read-only properties
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5738149300443233654=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5738149300443233654==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=pdGpZyb0c6P341=-="

This is a multipart message in MIME format.

--=-=pdGpZyb0c6P341=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Petr =C5=A0tetiar [mailto:ynezz@true.cz]
> Sent: Donnerstag, 9. Mai 2019 14:42
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add missing read-only propert=
ies
>=20
> Adrian Schmutzler <freifunk@adrianschmutzler.de> [2019-05-09 13:50:39]:
>=20
> Hi,
>=20
> > The read-only properties for non-firmware partitions seem to have been
> > assigned rather randomly.
>=20
> Instead of randomly I would say, that it was developer/submitter preferen=
ce.
>=20
> >  				label =3D "u-boot-env";
> > +				read-only;
> >  			};
>=20
> as ath79 has `DEFAULT_PACKAGES +=3D uboot-envtools` and just few devices =
set
> `DEFAULT_PACKAGES -=3D uboot-envtools` I would assume, that it's expected=
 to
> be
> writeable.

Okay. I also found some devices where u-boot-env IS read-only, e.g.
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/ar724=
0_buffalo_whr-g301n.dts#L131

What would you suggest:
1. Remove read-only from the remaining ones
2. Set it based on how DEFAULT_PACKAGES is set
3. Don't change. Leave it as it was set by the submitters

In case 1 or 2, I would separate this from the other changes into a separat=
e patch.

Best

Adrian

>=20
> >  				label =3D "art";
> > +				read-only;
> >  			};
>=20
> this one seems legit and should be probably ok.
>=20
> -- ynezz

--=-=pdGpZyb0c6P341=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAlzUIngACgkQoNyKO7qx
AnD+sBAAuBXwgx8VZ56IWs4CxO2V663wmeDBLYW2VaQog1IvJ0x6QYRCetSE6vNF
wQwUyuK0JwlcbYbmfWGsuTSyTCCFo2QCFUFbFElogsHME/7LiiuBB1PzmNfrkC3b
hs0/ihRTkMXvtaBAN7mB2AE6/Z6/8JIqcSQ93yisaoSZrINg1/LgDLdcKfeaUOHg
UV/quOCxYEjpdrlzXt+ecJFn405QcnVvY1Uj1zBMqKWyDjGfGb+WUKzPeueZFX/K
d8BbvrdYCf516sbuz9xx3M2rJFpwGFDZhzNwSRU5Q2pQQZwzcrHLUjSY9ha4gYQJ
91CXp3NZgRvPmqor9uE+JLw500bRiD39L84rNqKdg/W4NFNWY3sCYXVkWf8bkDt/
NhIapWAnDRgCkZ+f7SgwauL531F5O0h6mIRIu4R3jBnlvayFTt2bAN7FRYkE6Ync
vxHA+Zsrwbb7Ru5j21EjqpjMA9KAZOTNv0ehjnJdwRlW6J4rllpAiiqLk+4QlTdx
BSufSAeRMhMX85IGLWwyb/WeZ8S+HO2bb2HkHZ4oUSuDPb/QJbliJvNEX3hpIUsd
8pUCZfwKvU+nRmwx8LsgT6vLY8C6ve/4Hbfa4/lrwmFXu08gckpSqsjBH5muA/6q
Cqne8rOCOBcvbePh3DyhU6FwLFZQHHA43Tfls/NtRY0pxmBeSJQ=
=jTBv
-----END PGP SIGNATURE-----


--=-=pdGpZyb0c6P341=-=--



--===============5738149300443233654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5738149300443233654==--


