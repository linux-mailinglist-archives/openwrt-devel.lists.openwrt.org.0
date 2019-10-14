Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E310D6683
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 17:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A+aOwfsa+8jjJQL6p4kkTPTjuADTe6vJuR+nOEw6GJM=; b=c/S5NypkWQpzyk2QLTp7UMSDR
	EvxH8cfxA2PusQ+xmxGmPOeh5YHmCkMEqM592fMBIEG1ibLi5lI/UivzmH/rU9TK1Z+gC/BYfbAt3
	oKhekjaQ518BT9tTGP7oGMWvlL3xoqFT9PjfFa5+e+/ZdZjY2ubagJurIvuzncjSeNd1gMgkz9z0Y
	JCdz8Sts9520TdzuYj58VIUGyX8SLSrCkAm+YKdOXENpac1ZuYXUoChPfpjbIB1tFuLjGSolMuPV4
	SzxQm0FUD2l9Zg8xASnKD0flbN59xS7i0Dit0wVppRoTAHyES2qBtEb9xdjbQwIp7KMCppTbkAPjg
	Pvqe3NAmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK2cm-0001dm-F3; Mon, 14 Oct 2019 15:51:08 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2ce-0001cr-LT
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 15:51:02 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Myb09-1i87rm3FJV-00yuLg; Mon, 14
 Oct 2019 17:50:55 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Enrico Mioso'" <mrkiko.rs@gmail.com>,
	"'Filip Moc'" <lede@moc6.cz>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
 <20191007214054.GA14886@moc6.cz>
 <alpine.LNX.2.21.99999.353.1910080711190.3029597@mStation.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.353.1910080711190.3029597@mStation.localdomain>
Date: Mon, 14 Oct 2019 17:50:55 +0200
Message-ID: <01d001d582a7$2a3edd90$7ebc98b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJPfRHoBS5s4jhu9uUuLKJkakDH7gGolpkGAXzctd2mTSUpcA==
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:ugpDg4sUPhH0VM7FlWs4AQC4DfLvBUkTQ8nQ8T3oecn1an4YNFK
 e/5VgvODMu62iCF10gZURVhL2iMCG4e+Vt5c4egAggDQjEHpCQmCXFFG1N7Qphx1VsXr9zz
 tGYXwgZ3TCw/RYURO+GND5dikGkL9q7PHoNJmojIj4BOZtxqxG6moDvgls8SJ6zVi9e6jEJ
 KPxECZhyFtbdaXrJFRhHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8iJOB6HEbuw=:3ZZO9SDwB7pEJJ6+fBBlYG
 e+4+w9IovwiC9H9ohmx+RtCwh8zYEh9lsgUqWxEqeLXLrZ8kby3PgHZ5HAlnKx3F2VRbCinwi
 RDSMD1X7cKjAsN3jq8nFbgb+q/DT15py7Cu0lIRw/L/ON3pn+RwBSIakkTZySFIreJ7nTpmrh
 AckdFbgvKfIn54fwd57n+C3/+syQgbLf3ccPKLbRFxEfQAZGuNKKJwGviEtxyBMq8ZbHXCHox
 pKmUj8XJbXS1L4sWVYxo7vAQL9FZ75BmOkR/GZw3TxTz1suUzzrfNueRu0/7vC5sa9dSQ6b2Q
 4i2iZ/havCWdnw2P1KZ5kz0XW1zYWAJI6QL9lTf3FKP9QrXJT/l0N/XQqW0UKqyVasUvetYJD
 QvWcBTMVdQwSqN3u1PBssl86LBlclWy0NRGVUuTgblxKCEm7CXR66XRRn5YI6W5Dy23P8e2au
 oJ4D9Op4X0lTpJw5dpHxwOzEoFSaen/sXu+6hb1To/BJVt0C5ciFdptLTbbXUz/xTu8MCI2Mi
 8CcdbKXl/siFNGPY26rKr4XVrjK38AGpnuXb7W6dG4uia1NWThN0dNZ48cquK9Di4AAXDG+d2
 EBqtWmV7a/yEZfSceUwkA/voX7t7589xTq47O3A2JeYRZ3jNTmG37D3z71J5onikQGo6cVz59
 PQ1ceXw2xQaGtCTyraH5/pwuPm4P6PjA5qkSZO694gZuczh9bgURD7BzcaO8Rw6ItoZQYQezy
 cOwxTc53kkik00EebxSZRNF5Q3rNwZMqvQrewipDUO4/Qcg+EQI++2UmINT80axkoXt2XMpuS
 sdLoYeFXnApkM4a1vlkn8W7lrjAyTnPvI9JCREgsauP1jyZNAwcebmwY8NDSX5an2FPAKXO/L
 Ak8Rf9Hw25x7fhcl2AWSPDPCdCesG8D8GrnMyx5TU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_085100_996606_EB359A62 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link
 TL-MR6400
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
Content-Type: multipart/mixed; boundary="===============1904985679003389196=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1904985679003389196==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=m/su8FB0Xtfan1=-="

This is a multipart message in MIME format.

--=-=m/su8FB0Xtfan1=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
> Sent: Dienstag, 8. Oktober 2019 07:14
> To: Filip Moc <lede@moc6.cz>
> Cc: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Subject: Re: [PATCH V2] ath79: add support for TP-Link TL-MR6400
>=20
> Hi Filip, hello all!
>=20
> Thank you very very much for your help and sorry for me not ansering to y=
our previous mail. I tought I would re-check this all when I
> went back home to report with precise informations, but in the end I didn=
't.
> Your help is very very much apreciated.
>=20
> As you found out, I would need help in exactly that: setting port numbers=
 correctly in the UI and fixing the fact eth0 doesn't receive
> connection status events.

What exactly are you referring to when you say "connection status events"?

This has two aspects: One is the LED status which needs to be set with swit=
ch0 (I commented on that in my previous e-mail reviewing your v2 patch agai=
n).

The other one is that switch-phy-swap has an effect on which ports can dete=
ct link status changes. This setting will affect several things:
1. Which port gets link detection
2. The port numbers will change
3. The order in which gmacs are set up will change: If you change that, eth=
0 will become eth1 and vice versa (on running system). This will require ad=
justment of setup in 02_network/01_leds, where ethX then needs to be swappe=
d, too. Note that for several devices eth0/eth1 are swapped compared to ar7=
1xx.

So, you really have a lot to play around with and to make wrong ;-)

For further reading on the effects of switch-phy-swap, you might have a loo=
k at this Pull Request (starting at the comment):

https://github.com/openwrt/openwrt/pull/1942#issuecomment-529078064

Note that the situation in the PR is even more complicated as the vendor di=
d a dumbass setup in the first place.

Best

Adrian

--=-=m/su8FB0Xtfan1=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2kmVsACgkQoNyKO7qx
AnBhww//a4MzaZaJ1dOuoUJJBDrGK2mexFr3H6UXUF6Nw+YkkM1H3vLb3CIJxazj
kJ1P86JmL1XX94sGAzoIttCVl9uWANKGDC5g15cur7RqLHnkf53yqFkNXnH00wpi
WFVOxlztAWGsgzo+t+OGB6zwn4EBYYf8lNVEv5L0+fBmpl9Q0niBzPDf/c9UnXcD
bSRPQAKNvHmXVnQeR4N6kuiLCDlkpSOrohzFcBnjRGqnaqVvG4YzwpXUjsfOSJ3j
tJpFAtMtxTVnS2srndy9Ivf+T9a1babNEDmbMu5lTv8uqtFEurrC3r2oDJQtRk0o
cwK42yQQFhryiGYXbDSf0zQlGRI9nrTDwPaWNCAc8r/HCg56jyVQmom59Zj9a/8h
TrBfbA7kLImxhuTs5kE9sMFv4h8r6tni5b5R5I6h4SwyPPm5sC/b8uC32EjE3410
ViO96oqcBtawfWbv1BnERhduYFie/CloonYXOoC0eTPZ01AeTbsEGcYuJpWOifoy
YsiHz2gag1u9tvXUbNKAp0yXiNpWOX4l3sxHl49B07uaOPuVAW2D5VDzn0o0WrV7
9bqY0hS6UApTp4u0xPCXlfSX4rzFel5hfv2mu39iQyZJ1onA0S4hEj7xwkROWua0
h2rhJnDM8VFGWI/8tDFkFExlZOl0eLVXebY+UoF8Gp9HqXfc98E=
=O7np
-----END PGP SIGNATURE-----


--=-=m/su8FB0Xtfan1=-=--



--===============1904985679003389196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1904985679003389196==--


