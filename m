Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E7913099E
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 20:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zDNeSe9zq7EaAoGEYC0PMOVJeYz2lCD7ULPaOhoVUvk=; b=LDzI8/1N8iyxT02unZPI6mt2a
	SRUWHHnhRhHNF/+FOYGk/DbA2+52hNNMROEbtABPyM6tg1G2pRc0a5aCGWhn29uZ7xhl9KXKuYlit
	U7ejE/Q2EEsMJzmr/Ul8JiP03pLTE9QqD/K878cs+wH+d7W1CqdT8l/MLxjIRFf1HK3gf/sAzAurI
	lbmxBP2QRNCvLjvRfbq+5JH7eAfP0DsRK/eo+SQmS/KA/MXoxHOWwhgxbqwiZ/fJ4jvLy9ZLsGcOS
	L9PhRtZc1KGcy6sj69kJ3tL9RI8Un9JaLC/7+r3FtQUXdkSkR+F5EKEFVPAkxvSSSIIky5gqOqGcI
	TkAwmynCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioBce-0007cl-0d; Sun, 05 Jan 2020 19:31:36 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioBcW-0007c6-6k
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 19:31:31 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MOQu6-1j4BXO4022-00Prao for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan
 2020 20:31:25 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20200105163813.3846-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200105163813.3846-1-freifunk@adrianschmutzler.de>
Date: Sun, 5 Jan 2020 20:31:24 +0100
Message-ID: <00f501d5c3fe$b7c88920$27599b60$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQF8NWKnQMIWpTO8yMc7ZNoUC7TRXaiPklzA
X-Provags-ID: V03:K1:fqVp1So99ZqjN7rXb8qEzJPOKBQNDcvYT7U9twdTTACxVthYd7s
 thvcNlM4wU80tEa1xf9aOQyxOk1JHHuSrIRZltfLSXAm7bZXWN2Clb30kq7usPfWOoTqE2n
 IDW8F/2+5an4PPjKWEDtMRgOVTO5poI0S4+fkSjlSQueQhg3VauI0mqMdw1fFkCw+g4GrR8
 8l5I2LIXeIko+2ml7UZFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:E63Rkxc0xWc=:RE3hGs0w5YNVi5Sbg+EGwf
 n/rOMUbkfjLaMQ4qB+SepL+XhJHjUknVpTGX+rqkMs3gaXz7EeV4OCZE8k/ZytQEfEa0qW/I8
 tFRCdRQb/BgQPZ6ZDCQGBXRdbxBJpZFvMGafSTMTFhROxGiGkHUFUwBS1tbhBBAtaNd3cuLWq
 HQx2a9h8GNJY5LU0UW1MuAfNKTJLGx3b5hGZ5q+GOIX1eim5J34sioIMEBH41hfXl5zbcxKRi
 I5NrV8tQn9gRGDYq1QnLdori4Yb0Czgz+SnxQwK1T96kx10Aqp4LTGAxvGAS1NCSjeL9Jfkue
 fEqlSPFWTbgVZetpglm/U58lVcEr50MG+0I2OlIcAJxVSBZfeyuGE0MkX2+urQwwHPzvWouJM
 VVY3TSrTY39mJ53ycA7htOwHvfdF7SKXZdejByx+IlNATsI4Z9TIpJZ1KESS00LiXfpY1rq8T
 1QqsvY2FcVAFCMLXKbW3iz5zl98dK3W2g8R3LPyWTRZbSYUVqJdI2Rc9/ds9+P6PJNRHCFaz6
 ksj5heZ5qXdPvTct9BbRCgKagLwDuvzq9+6qsI3HZbOFagVhqnoeNRlhqoszVbW1B/ZqFUIae
 A/FkbgsfUWErwN7rvKgES6pnxMr/t9YJ95nuyaHmzcBtaC09ynR3XaOSrkd+W75Ek0y+WOgQc
 uDR8q3fMAm3YCIDQ0cS1qkBCEEKmURlqk96y/KiEP1kyaPEqjsBHsOG1l3wwl5709ALy4jqz9
 H/n1kBOCO2ibPMs6L/RJk1tuDF9+zK7xZQmHK+hpDOLGNpygFOvKhCXxqt1j17PFK6Se3CGiT
 XYbv+vPl8K/OkadfCeagR/1qu44eZVVkCTVunhqkL6S5UQi5KbfxrLFlNug8kxoHx/E7dMrLz
 JWRsrHxXhT47T52wtJAZ+P1WBjQG3steBK9egj+Zw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_113128_539727_7D49CD0A 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/5] Remove kernel 4.9 targets and
 kernel 4.9 support
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
Content-Type: multipart/mixed; boundary="===============7203215727811885959=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7203215727811885959==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=3druTInEz+C4EH=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=3druTInEz+C4EH=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Sonntag, 5. Januar 2020 17:38
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 0/5] Remove kernel 4.9 targets and kernel
> 4.9 support
>=20

Patch 4/5 is too big for the list. You will find the complete patchset in m=
y staging repo:
https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3Dre=
fs/heads/remove49

--=-=3druTInEz+C4EH=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4SOYUACgkQoNyKO7qx
AnBefA/9FaMLaW2dGtqlI1/O25nZHiBlpsfIfoylvXOAWfh94Jn3xRsTOhDyoVkM
Fq1hiaUdZUBab0h+5x4r2evpXVaNobKLaWnOLZg45gsWy9nh9cR9jp7sMF2Go96K
AXj0xueIenV+pj0Ywftc/FcdZVb7RY+ofch+XElQ1BpdLbwJso7cr3C2H2G4ceWJ
oAsti/Krzm1fpBquWaSZF0wK8FrI6JIiT5b20pOhxZoXuKWv8rk2BX5FJcn7gg1r
Gg0XrlHvjxKeRYgD4yffy9nSpDWn8UozA98deTm/qPlaHN8jzzD/oR8NIcE+rRck
TWvqlYt/9VLQdKtV7+4msOimEJXujiADOcThp0njoJRY1c5jLU101a+M43B/yK21
PMw0ichbZ1DtifFAjeYX8X6IQCxFPjphXp+D6Y1Li817onP/c8tVbO4MXsrX/3tz
Vx95eKlWNpg5JJ5oPB9NhFyJP+KaKJ9hTZosiIEUc9qyxjsJ8DQtRy0kK+9/bYw0
bv29pR5E2JV4fFJZnXHMN++xfxs4CvQXhP345MpOOynYwBntwMSPwDtyT5YMiesG
YY4CShILbNNI2sC0QcWgnf7blyrze+n04ePel8ADsNqAaVsXyMaA5oU3ZUpTqHZp
i+yxd5vll3TFAiVPxaUkj3PiRJVqVmnRoA1arziYsi7yZXNuVa0=
=+U0E
-----END PGP SIGNATURE-----


--=-=3druTInEz+C4EH=-=--



--===============7203215727811885959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7203215727811885959==--


