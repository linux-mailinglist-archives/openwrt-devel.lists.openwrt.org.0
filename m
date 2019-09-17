Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9F3B4E53
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 14:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T5SV4jxXMOmSb+JHhmCBOjzuJMDpqSuErHWcnCGEYgw=; b=Qg7AQBKJuAmhZDAAZOzjhybsx
	LG/YQ+lfbGHkMf+js59xOnyu9vyN19HCb61SOMx9ulhahmzWpco50NFm6X77Ts6drLLAwgcH8jHCy
	vWtnpXr9LUNKUWw9+rtVvYwTiISG9UL6paJUXfCP3oU2lamyqoTHS7EqImJ0+cE8UwNuHGJnxigWm
	TYUowJDT/My7ZFQ+/9zJAmwZylicnyyxlui6XuhJbUl0NU22GL9erXWKzWN3yVoBY1y0/DBJZ48sh
	HFPzf+UVOMofdTAQTAVNAIzGrAM3J1wYePK8ExjNLr2FMN5atFybfKN03O/5//EERwyZeF/R79L6M
	rkVx2ZC3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACrd-0007r3-Nv; Tue, 17 Sep 2019 12:45:49 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACrH-0007qT-Eg
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 12:45:28 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N8XDT-1i5tLg1c9p-014VZY; Tue, 17
 Sep 2019 14:45:25 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <20190902091021.1083-1-freifunk@adrianschmutzler.de>
 <8c47337b-6bf4-55f2-a82c-0ddde517a1ed@david-bauer.net>
In-Reply-To: <8c47337b-6bf4-55f2-a82c-0ddde517a1ed@david-bauer.net>
Date: Tue, 17 Sep 2019 14:45:24 +0200
Message-ID: <00b501d56d55$c6e7deb0$54b79c10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQGJtGq8YkHx0GkkPLPCwFdyBk9neAH2Tawsp7eP/zA=
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:P/Ii93NK62mWPD+Gr7F5C+w2b73hCSE9SR544gn4OJ5UGnetFGt
 cOr6epGMCz2LgGL5j7av8K6b71mHVJ3/4H+ufufgd46Chp/0sLbXCROqSZzBfO3IsAdqjn4
 w0Ov/Hzi8k4rTKeUPskUJH9HTCV8y94lN0K2liQ0ImnwBF6NJ+N8Rb3kRrdxxO03ojx7Qp9
 oTGnTi2CiZoUalJay1FIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gBuYdPRsTo0=:kj8Q3roBvTrxKv3qdGx7E+
 YqpfrVTZYpVI0cZmn1VgGfcOKxS7XxtYXbBQjdoRYRq3Fv6NznvCkBJ071vwfIA4U7mhZ9Uci
 oe5i/W2p+4vxJ2TA3xf4B5VMiAMke9eVN9wSH970XTprKgG3ubE6yl6kz5WiwObkhxA5AwRYY
 YqnW4YtLecGzz6w4QyoFHCbinEdfrOAdLBptirb6LbUTkQjIfXA/wIoKKkd7ks3HSGfbKBnD6
 LXHZQH5eMcsTrU3DdidjGp3Yjtb63wj1Jxi+UMh2eHVov/5UKDdN4505w70MfHwysl5ipDEQJ
 ANNgX826pNkUHPH3b01hh9KgUAGWAhEAASRzocS4ouNyCPOueiRyikzHvtPTGUjMblSYjnHKx
 ZjXHEioedKXMqhOKaRfRbuOfje0B5QB/MKjaetwhUQYc3O7nGIGFf9d9YPMtSQWfW93VHqpkA
 +n3tWkzOLUtiNlQNFmRakc6DBu7R7TrvlNgEiUZwntrwMRDIUADIMRZg9/MHhFkpoIcfeveHe
 9eayC4xSVu4GgCud0JVaWvD2bh0btNcpN2NnJcVEUFNLc5J8cFRKcRj2+aU4a0ViWNts0ERLP
 O026XAN27S4hU1pCVKWIga8bGExlHn/fxnSeucjfh6NTV/sCM6MhKp4h+upp3YD0gPk1q/ZTQ
 HvOldOKwvAqxIUyhpJabkAOJWUPpO2VCl2ubIIxuMZtWqoLczvy0I9WG0qXxnfI6NDXSpA/XQ
 9AWHlTxQ4xh0UksQ0a1LRI9NMgoq13Zy6zEwFXn8JtCypopHoRkh69B/HbTIVZzUdYS69o4SJ
 CeWJZaqEvLsO+nWiHZoYOZ/2czzu1cSOD7mAMSLM3w70OcFUPEG4KB/8eUuUQWJd3JlgApzyn
 Ms17WKMmWlabYTGcsj6/GLhxKwdj7RY7qxaeNDqKM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_054527_787236_23CB1E52 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add LED migration for several
 Archer Cxx devices
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
Content-Type: multipart/mixed; boundary="===============4375794665891510275=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4375794665891510275==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=wKn/YdUN05nZC8=-="

This is a multipart message in MIME format.

--=-=wKn/YdUN05nZC8=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

since C59v2 had to be added anyway, I've sent a v2 patchset with a differen=
t approach.

Just wanted to notify you also in this thread, as you have marked this as U=
nder Review.

Best

Adrian

> -----Original Message-----
> From: David Bauer [mailto:mail@david-bauer.net]
> Sent: Dienstag, 3. September 2019 01:09
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add LED migration for several=
 Archer Cxx devices
>=20
> Hello Adrian
>=20
> On 9/2/19 11:10 AM, Adrian Schmutzler wrote:
> > Several Archer Cxx devices were using board-specific LED names in
> > ar71xx, which were changed to "tp-link:*" in ath79.
> >
> > This patch adds migration for them.
>=20
> Have you run-tested this patch? For me i ran into the issue of the device
> not being reachable via Ethernet, as the Ethernet MACs were swapped.
>=20
> Has anyone yet tried to find an migration approach for this? I assume this
> could be tricky, as we might need to update the board.json also in this r=
un.
>=20
> Regarding the actual patch: I assume the LEDs were migrated (as the WAN E=
thernet
> got illuminated), but i want to hear your opinion on how we should procee=
d with
> the Ethernet migration. :)
>=20
> Best wishes
> David

--=-=wKn/YdUN05nZC8=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2A1WAACgkQoNyKO7qx
AnAVdA//cH+63rLeHKNG2bagckSrELkSpYFCUWCS61I6ullfWnapDLi6O2FOBDfZ
9zKpT8HQJ4seUZ3TPGoXKx+W9bFe62IZMnZ42hceWXNhqCfqoB22xfJ9BS98QxsI
+rEuxIvE/LRhFAIlc7lga0zfo6RIclH32ovNQXRVJwsK0xF8qzPPhGxPbcqMyh1M
COvQjASeAz2q6aw86k6njT5OJKxkuZFGdrFz0HNFwcOlw1BC3baG6xZPX240nM0t
BTuxgQBURJHRtH41on9YVodZehO03cdtZmccnr2cQ1Ug1wg5ve8Mcc6Y4WFuva5d
e4d2z73WIetFpM+tnx6SUa0IdRncHWPdFvtEijtHNKQUflO4vDEoxKs0Gfp6PgTG
Hw045ZG3AnOrh64stPdGGsaTRO2MM+MhHpg6mxIwE7a6OO01zP1Ag6P8a8G/g3Iz
GO5/M2tlEEJFpvcBukbgzUAxlxxgVPzv5VfecuKvf6mSswHgBhKMk3+FO3INn2oy
KAOvafLBl8ihPeMjgNTGhQEywplPqx7uHv7v+7eWAdlULpSROGwaCTUKIxU3bhYG
uitXq7+aOjBIFxCmX5GxCrAEAnDBcm/HvJNLgZ0r7s93lhFdNKNSJhbxHo1ki39g
Xzy/WVTAizR6XiHMPBGJMamuofPrKMHB8y9O8GX96Oi7H2ElbI8=
=lRWt
-----END PGP SIGNATURE-----


--=-=wKn/YdUN05nZC8=-=--



--===============4375794665891510275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4375794665891510275==--


