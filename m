Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC4B8B678
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 13:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S7ohuCtxcHB8fOqfbkwm8EqDnJq8y3ROeRBLcyvCmoI=; b=Y4fSI9yZxm7wVHqNuzy/liErA
	5rM6+bUdhUcqKjZe4CTThU9PBJhYy/S7dtCr7U6bxDlGzxyZtnV3GFJ5SqvdrpaXK37nQ2jn/cnUm
	EC0sTGUziLydncvdOBZA4HX9oHCLSwdUTD/PrRUtPA0ByaMxtoVei1qa1/giCKDV0Inw9Z2CNz18F
	G5V4a1LjGmOgnDBz4bWZd6vJQ8Uar9MuCdYLrL8vciRRrElCQd0wfJ+hxQMG6qtNX6BPa9qoACg/q
	2zoumLiwj+PuKWzS9kZIA9Bxxyxfr9yyTob+VZYFsGPssiNW1nRCHC5zUG49uZT2Xh9HfwKSZ4Huv
	IUto844ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUpp-00058b-Jn; Tue, 13 Aug 2019 11:19:25 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUpZ-00057t-GH
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 11:19:11 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M9ntb-1huS233QBR-005nzC; Tue, 13
 Aug 2019 13:19:06 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>, "'Chuanhong Guo'" <gch981213@gmail.com>
References: <20190813104658.17f88b71@kosmio.komorska>
In-Reply-To: <20190813104658.17f88b71@kosmio.komorska>
Date: Tue, 13 Aug 2019 13:19:06 +0200
Message-ID: <00dc01d551c8$ebc67aa0$c3536fe0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHo4xaCp5EgVPp7rD2F4MgzLhtLYabRyPbQ
Content-Language: de
X-Provags-ID: V03:K1:M5exLSPO/GCeMwK1MelkwCQ2hI0SxW+0wv2/cnx2NO9C9+ZnJhE
 qfeDxhci8KdN1LFJHBa8XlhNCewMlodAMvWCZPIJiFeaoJTUI6tB9Cm1GHrxbZfsDlqOuPD
 d1+WHtVX20F8i2gcbp+FEML59bfMIbq6fuYdGiUnv9v+goyprOo7dfMky2DYeFLUM58WJR3
 pMEqxtan0z/hAj87q3rqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:skRJDK9T+OA=:6bZPyPBpU/oNMdu/1gqsPq
 0/gdF0JwSWFoyOVdJ+Smu+l/flXcAuqheplYp4w1FnQnsbD17kmeUtM9RdrA+t8M4XN8XO5Jm
 tZS9xlZuN3WhUwwwxvUZDj9k99jiNSJtr9znKl+XPc8lx5jWLB17X/vOLyPKMYi8smXS7gfYy
 B8XDYsxqdb9uD7/DtpcLkOfl/YjhFCRUql1jdwxultcr565ovAzkpMJhQdA4OjdNK3dIEKbUB
 uNELzILSxdHIdc9/vXNPSxkswfVJnA+99vfNpFUZS8M0T3dCOLhQehVTNT2hUI2oinf9//jhN
 OzOs7kQMtLDqHQVh7izpP2LDvJN0IpEJFjL2VW2aWyq2Gf4hKMnQdGSDAf4nLq5X30BnOS9fi
 1bPbsN3et2Xa/2GFXTYiotvWUZylf5iLKDeKCq4Q8IHie1gAPOFdMWQ9mqjwxVDo/OknroHYC
 Krx1YtmFUfnSbmwnf2BvwwLxQLxFBzOJnAHOi0JE0xAhLrPO2CAHcpGT/+7+P2t9MhFLpaHrz
 +Bbsr2BPZgtE1LKQPDBRZ0d3BiHOKZcAnhh1Gr118INtR6/I2khwDgf6bUrU4OQQFaax11nUa
 PpmuYjANt2yrWESDlII5MAoW+6svks8uKr7q4Bp73qPyps3b7jQ4UuNpMoermwoW3krL5PXlE
 PdcHIDvuqNDwicw3EfVx1chU1nEmOVIsSi6OeuhR5GWTiyU+4aG2oJF3I7Ohv9X7rItnemwAL
 E/o6IknmTSHdLrxYkjJRK7fBiwtLl6B7VQNdQslPewyL8F75j9ancXvu2d4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_041909_843376_36FFB0DC 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v4 0/5] ath79: add support for some
 Netgear WNR routers
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
Content-Type: multipart/mixed; boundary="===============3715519734968895641=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3715519734968895641==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=qtPVwKn/YdUN05=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=qtPVwKn/YdUN05=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Michal Cieslakiewicz
> Sent: Dienstag, 13. August 2019 10:47
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
> Subject: [OpenWrt-Devel] [PATCH v4 0/5] ath79: add support for some Netge=
ar WNR routers
>=20
> This patchset enables ath79 target for following Netgear ar724x-based
> routers currently supported by ar71xx:
> * Netgear WNR1000v2 (tiny, 4_32)
> * Netgear WNR2000v3 (tiny, 4_32)
> * Netgear WNR2200 (generic, 8_64 + USB)

This patchset is already in good shape. It would be nice if one of the devs=
 had a look onto it.

Notes from my side:
- I'm not familiar with the pinmux stuff, so I have not reviewed that.
- I'm not sure whether
	compatible =3D "qca,ar7241-eth", "syscon", "simple-mfd";
should be used to exchange initialization order as done here. (@Chuanhong G=
uo)
- In patch 5/5, the usb_power hog is a subnode of the ath9k node, as it is =
controlled by a wireless chip pin. Is this the correct way to do it?

Best

Adrian

--=-=qtPVwKn/YdUN05=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1SnKoACgkQoNyKO7qx
AnAsFRAAloPwHeefqMFnMtMXfC4nU/tax+ambzqO+OwmQLqh37q+crsom8/51nGq
3yrb6GYfQf72q1IVtzeCZi2MD22YWWkh8cwbjjU34wQ4x04FAfnVMBgu7x/kNMOT
I9K+b6MBluyvLNQMtuzLMhU/yQmooUPGqXQbRQ762iLdrtyh+gyDzXvHPnphkaGT
SlIXVoOQobgtpvhm1AH7ZChTauQQhEMt0E4kJLxQ7PWbQikcBb8NNIn24THC3OsI
JLBNKcQFzXLMpSwiXANFcImaVsZhRNpXkgVU8g1I1lMU+n6EDUH1aM3TqekBPFAH
9qUvI7OB2FfGPCxFS5iXKNDhodU1NUQL6jVfaWM56G5C5gMyQNsMyAyph1XQVA4z
uRSe9kVJ4r4HF0XbYHsDMbSx11aQt3NldJOvqibX2yvPDq6AM7gm/bPuvtxVuKFH
WByfPN1HLQLJyMRWehNHNBr+biFiR6m6g7orw3uE/zfsgxo8DWKdfuyOmV7ozF9e
+Hr7EZzHO0SAPG2buk38NU/kzh7iaHmvECFePuoUBw6T9HAx4YjkyEhVhkyYiJiQ
ZLN1VfkJTdjNY/tjN7MtkDtkR57/lPDLFu9XZfdciMOyhV3QQawyIIHeh2n9YZsy
dM/LKqf6kvRAeqCsppOhUBkaleJOaw3b4hQpwMXOroVGNotLbzU=
=gXsJ
-----END PGP SIGNATURE-----


--=-=qtPVwKn/YdUN05=-=--



--===============3715519734968895641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3715519734968895641==--


