Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A71FB043
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 13:18:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KA+3ZS+EdwJWht3lo59LcFBR0seAJFt0qoXKBbgm3s0=; b=QKlDQWF1vqFSkuN7ifPTU/rUr
	H5Zs8AUXxENFL8YG4Qqcoq1X7DrfegNBAcaCqiHW/yE0fck3+7RBiNYzrOPsTRkcU9VjH505505/O
	UwMmEeD4PVrKjTa/0CeaHRHADs6MeDmt68sKRApoSMbNLL540n1DLDYI+tVBSsOzkR7FTHFCykUqc
	cVpS26HNjKGqA40xQSg0Qv7DK4pp5FXl51OQ+67ncQVd/257rKg/O8rCsIyPBNjDdD1vgnlXG0Bv6
	NGdhBthUUfTy077GzEIDRP4VV+KqiK9NliikBFj1jWykLdlU5DgRIn/I3pozZg0gRk9nz6DQTOUGM
	qpN3yIZgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUrav-0007qb-HG; Wed, 13 Nov 2019 12:17:57 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUran-0007q6-So
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 12:17:51 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M3DeV-1iTUgE3Ti9-003aQg; Wed, 13
 Nov 2019 13:17:43 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Kryma'" <admin@kryma.net>,
	<openwrt-devel@lists.openwrt.org>
References: <20191111154224.1476-1-admin@kryma.net>
 <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>
 <b8afe62e-867f-2d60-2c0a-08d01ebd9fa4@guifi.net>
 <025a227a-d897-e71c-3193-ef3776ffec39@kryma.net>
In-Reply-To: <025a227a-d897-e71c-3193-ef3776ffec39@kryma.net>
Date: Wed, 13 Nov 2019 13:17:43 +0100
Message-ID: <007901d59a1c$5a15d640$0e4182c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQDYsPDVGtk9m46CJtJ5e+pqP6kaLAHQTdz/AiJ3EaECZdBCkalQEY+w
X-Provags-ID: V03:K1:Mq4sEgiwKaFYWJ+9nRu5j/eVxEFZGoocU623+qy8fUui0E5y3ce
 jT0XsoouCivfRzxxAVNR/JIAt5Q6SCB39BtGwXRB7TPdGCdPwENBpjZlaE1NXDGQoKoJ1lM
 DM23YAemnm2CBEl0vMKif6gmqO8+LxbzyDBCtN7p02MJMT9gTaTCTJUIY88NRP2YUmgEu+e
 rBnxFKneCg8UF4dKAVGSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BQ/yhRGU+Kg=:Jd+pez3F1VFj/zZTEQVEVe
 HohzXF+Wlq/d2rxMKWFGYo4+jMzFlNTvWWPQW2V4ZJnYyQ2Pc2eskjfTCgikVlNIfyZSJjXlg
 VTM8kuLRghYc6IRy6Qbb+vNVQX6AVaq7bU4fr5hNOgpBf5emd1MyGIUPEtEGnCl1LdKxAXFkE
 PuyJBDgVmPv5jWqAjDBmBcBWUqV6kcaf6ZYTYs7bum3ZM2ViH5JEyHaYu9BUGTNDnrqn5GkoU
 P7DzHkHTESJjzEqAFs5I3i8mZF00QY2X5uldxPk/96ITGxRIkZ0ehFpD7oPJ3f4xFmcow8JTs
 hyWXOQTVaMzyM05VrY6EDEvCVrkzDkqX5v52R5nTLk5rMaGJzwwHJmqbOX02T7SitwVecuUf7
 YSJajgy55CtyK8PBER06ruI+Eqv1YNuha4zr98pg8jfr1uOqtdVPrtGIFd3BtBQB3xez0cuPB
 ld4au+9uP3904DKF2dk8/Z3e3bQUNAynOUNlweVoK1g5kuuCi9QVlBTZEy4rF8FVpUMn07EPd
 NMDPXpDcrE586//ghjRh39fhvp8sAN2GI51fl/rNW90LsFi/XRkZtm6gMGq//6S+e+uza4PbL
 RjTMuL1doTuGhmMLnUc73nf0B4rpK0h2k3Ti+6OtYpbbMuGOhEwQGHEyfOs1gJtCObVJlnR9N
 c/BuZy0OnskH4xZoJvvL5x1iG4ZTMUiW/wTP4Av7tIz3SUsCcCIe2pZFNTOUDHUkZ/6F1nrSi
 CAeTowOfTDVnQoby1y294w5HNZvdlUvAMwqE/MXNH2fe/KPYVTXJZf3NxYet6d0OL8ZHpZf8X
 5yhbL9EPNDzel6VeEFkrBlLt2OXqcKfCQp60t+aHQ/9mxZr5Nsw/E1wPSEhmOdzD8OQcF2Yb+
 F5/nEtwJ7TLK4uQ5C1twh2Uo84btCqsJsGtjvDxX4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_041750_223262_9C314BB6 
X-CRM114-Status: GOOD (  12.13  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for COMFAST CF-E130N
 v2
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
Content-Type: multipart/mixed; boundary="===============8732037529060315402=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8732037529060315402==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ohegdLCD/BHEPU=-="

This is a multipart message in MIME format.

--=-=ohegdLCD/BHEPU=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Kryma
> Sent: Montag, 11. November 2019 23:02
> To: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for COMFAST CF-
> E130N v2
>=20
> Hi,
>=20
> > That's wrong. You have 0x7d0000, not 0xfd0000 ...
>=20
> There seems to be some discrepancy, possibly v1 vs v2. The
> specifications on the website and the partitioning seem to imply a 8MB
> image size - however, U-boot bootloader and the sum of MTD block sizes
> gives us 16MB. Unsure, I tried both 8000 and 16192. Both seem to work
> well, save for some I/O errors when writing files to homedir with both.
> Not sure what that implies, but assuming 16MB as size all that given.

based on how we use it currently, IMAGE_SIZE should match the size of the f=
irmware partition.

>=20
> > Will this work without a defined gpio?
>=20
> Could you elaborate?

+		rssimediumhigh {
+			label =3D "cf-e130n-v2:green:rssimediumhigh";
+                        // No individual GPIOs matched this LED!
+		};

Will this still work when using rssimediumhigh in 01_leds?

Best

Adrian

--=-=ohegdLCD/BHEPU=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3L9GYACgkQoNyKO7qx
AnBzwA/9H8SEXK4fe/0iF11QBMrLJpW1ajc4HtIzabAlY/5T4sx5ya9l605kTuey
b2C1P0haW3CEA3rKcEawmhkKgLqSr/C8KcczF4ZEmGnpPtPED0TB1OMo50njruZZ
i7p6hp7K7o0o1UXNWkxOAwyt5EeWd3o+TNKfCzSDsklnam87Hj8mAiDn+yT8if7k
n8ZWK58cb1YLSYL/TMDyilPtJN652DtCNCO4hiIwQ9Pgl7Baw2J6UOMjec5HIiDD
zHJ9oh8QCXRu29S5Zvo0xd/IFXktbbMVxzHEumv78b/mo74JBjDcsFB0l4JIivnS
TBFPETdziLOz05V/zYP7z4cKtUyyKV71xKjfq72P3FcWP7Bc4xFyMf13QSPWwpe9
/YSvQ4Tusl6/5X3oMue0RHPP69mUYxSiFtQ2G35WawyhP5yxeDbTvRy0IlnfEoXQ
a9XGiPShiyY5XOeZi9d8mF2FkFL8f+n4jMBYVwuCzuQHsuNOWG329eP/4PR5V+wB
cbbi/z6SdcVKFt+rWdqaj9ACxtvl1Ra4lUG8l73Y1sq571ZIhT7gfVXrSjwmNM2p
gHd7bxyVlrwy3Y2aqCxos2zX2irpriWbX4jWJaM9KbDtylKQ5rhZFztlDdVM5Oy2
REqGru3zmN2sRwxVZWfxs/SfbWeFAv+7gQbXv6iJN59uehiz5jY=
=AouQ
-----END PGP SIGNATURE-----


--=-=ohegdLCD/BHEPU=-=--



--===============8732037529060315402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8732037529060315402==--


