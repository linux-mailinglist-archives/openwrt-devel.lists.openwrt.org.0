Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A082C103065
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 00:44:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0ASukoiw/K5S3YAzxaUqOwAhv8afGN6I18oR/4M1hu4=; b=HiMkCZpDIP8SbgJz3gA0VUFr4
	Hw0FGugt6a9b9yCMJa4UBRBhYMePEJFtSDFKTzRE7tHAtv0N4b+FlID2ATGunrHK5DywMOjXVQJDW
	hED3xCi4bX7ovG8s/mhoaimPyt93LyV9EIDYUUc+T3j9KKWpbBQ4whxFHhlc+yQbYG6DRT+HaxlbG
	g5p5ZVNVIMyjsqnH/e4YdoMT7SXy8DkbLszsL91D3tdsSHLBh+NdrDQMNOpYqf+C1rpUNjXFvAHGN
	e3wlvl1R+eKJITBaJqiSg0ebrfAAPB00u9rYvNrRR60T/U0uod/ergyxLtSfq4hg+nUOaZz7HaXxs
	6QSC9hx7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXDAx-00031l-5C; Tue, 19 Nov 2019 23:44:51 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXDAp-00030t-EA
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 23:44:45 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MOzKk-1iCDJj0NGW-00PNpj; Wed, 20 Nov 2019 00:44:39 +0100
From: <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>
References: <20191030123221.7a0af3ea@kosmio.komorska>	<20191030123408.5e8dd3fe@kosmio.komorska>	<007f01d59f17$4e324840$ea96d8c0$@adrianschmutzler.de>
 <20191120001920.23a0dbbc@kosmio.komorska>
In-Reply-To: <20191120001920.23a0dbbc@kosmio.komorska>
Date: Wed, 20 Nov 2019 00:44:38 +0100
Message-ID: <018f01d59f33$4ec8f940$ec5aebc0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQE4ZxIgITOci8A20peAqGYj3ww1IQIrK1RVAcV7Dr0CTYvubKibprPw
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:UUFcC7P/7B/Qz8j+T/QGaJXDa5jTq8iVN1evTwmajXLDJ6YFbo7
 vGS3+BftCWfcGyhMXEzKyzqhwsEsdP3P73Pujk1ey4uIMboTcFQHhQFeLi99asll8Owb715
 pbiNJ1ZN0GRzYlBGzW3t8MrxiUmnEn9bSlb43eRFpPUPZMru3TtITEB2MpFV5oaZjI/IJxR
 DTwEV71VbDThwApxIh/Dg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6KtKq9bboLg=:mBdyRFZMgyYh+B2z3w2Rl3
 HCBpyCIIAs4MkO2ztWJ6AuVJbRXSTFkGeqiFGGVy/4AV87YbiC6csgfBQMqdgr1FsAF3t3u8D
 ++JuJPDCTOCJWv+wmqWZ1xd+gLIQqLaWlDhfIAXMLgEKuFzUeoCMsFY8Oq5zYKivLlW8ZyPIW
 b3kkHsD2ifZ2jXJvOPmyVqvlgTx8qXbdGW++MM6toSyL+53nIHhdaHeZt22bBAWtUU8MkP+hl
 SoAS9Xzp3u5amoDVyD/9azv08YLWCW9jHaqI5EVKQIwYOmODRq/2KAYl4nHq9/4j/2SsBwYzj
 WUmnY7YKFau2ZmoRO/Bxm8w7C6A0rWZRxzVzU6LTPuWvtuKKMPWlvaxJ9GxQHHoYygzQ+xNlO
 Ka3nJQ/71XiM2Jfb8kK7ex7TOPXVVS42uc85G8nd5lRcWM3nFrHbTiauhZOkgZ65nCLUtWMeD
 tK/+Gbpjcvznst90Sd1oC2T0moCYCHS5ob62qdSaDT9p+Kc0gO/RpMQg9uoNIAX2JoMYAfVp6
 KyVaFiOmmV428rkRQ/3s9R6K3uvmbf3VR3qCCdNqVdRJxMGLcPJ/PBShLMKUCKcEGnPnjRTPA
 ZyEEPgKw+BWyS2TeVYOya+XsRwsR6Hi7TMOiq1WPFNveknypMmjiJPNiA+P64VWmKUmErNY4e
 5L7pM4lu4fr4ndnzg0N1SURGfM5VpYRiaDXxkZ43WHn8PDu+mDnQQumj8Vzm15mJLmfZ0ru28
 SAMJu9veIMIFVRTW81XKKN0S/GnQKopFt2ZYvLXNnRBoyGfNaD9//g9ZLzFqonwDex7+0f87N
 my8Lh1UP5kF0OHMqu1qWshhAtgTCJzVoBeulbDHNqSWQvJqibcTIOvZnSklaTBR3aEDr8zonx
 hgTuhvCRPj7D2C8cAMTbqqhQf3MFVZevjvNYmrfbg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_154443_768336_7BF0084F 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for Netgear
 WNDR4300
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
Content-Type: multipart/mixed; boundary="===============1266102913042674958=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1266102913042674958==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=pU6Ent/JZUR/4y=-="

This is a multipart message in MIME format.

--=-=pU6Ent/JZUR/4y=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Michal Cieslakiewicz [mailto:michal.cieslakiewicz@wp.pl]
> Sent: Mittwoch, 20. November 2019 00:21
> To: mail@adrianschmutzler.de
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for Netgear
> WNDR4300
>=20
> Hello Adrian,
>=20
> >
> > What is/was the reason for that change and do we have to backport it
> > to ar71xx?
> >
>=20
> On my WNDR4300 2.4 GHz radio is at 0x1000 and 5 GHz is at 0x5000, like ma=
ny
> other ar9344 models have. Both areas are 0x440 in length not 0x800
> - after 0x440 empty space begins (0xff) - so tells hexdump anyway.
> Both radios were tested and confirmed to work prior to submitting patch.
> I think it's safe to backport that to ar71xx, if not - it does no harm to=
 have
> extra 0xff bytes at the end I guess.

okay. Sound to me like it's not worth compiling and reviewing a patch for a=
r71xx.

Thanks for your response.

Adrian

>=20
> Regards
> Michal

--=-=pU6Ent/JZUR/4y=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3UfmUACgkQoNyKO7qx
AnA56hAAohIZUs9CnCqSa2XaK0baAl55cKZfr9qo8vf11u8QzYcnhAEn2JHauwdL
dOWg55+6cWp6vPJtCo8G+jWtz0eEMR6mCMjpe9sEP8+naD3d7Z1o4a1c9z/PgYkZ
5w7GaHD2/hgJOIiUxVmBYjy3gbgnlqpyEb0wfFyKpm3cV9IeW5N1oGu0pV6rEgR0
hfZ0gKPnV7DtJmlHS0436WVjDelE+rbrAMrFxF4s0DPjGMOxEcGI2ChrMoZdSVvn
Nk7lDqRRJtA+4FRq+UeikkEFoT4oZpSwvSRUFG7cRhXDLfpqTe2ddSQ6zBfjHyZn
P5I0w+surHPL006/SD1rxMYY7klH2506mbVjKNYgwkmK50RY8gKzBL5VMEsyVWkm
GiTYB4BS9/2+DdvBvJwh02ee5qa4BSm3M8YqgT2bYyKCyi4LsKG9PG3b/peucIdM
7F/3WfBDc1j9i3GVZ2NG+N4IFykSlKcvxOyrTTI+Ti8mwPn5YsebzgdFEGXzCjJU
sky5xBinlLJazLzIyXtGjg/o7lV0TN9H461DRahA2sAdfS8GRcNWa6mj4dO/hsDB
AWb/UbVPBg5ynLnshacaSMaa58k/miLuEwXMhoqIz2umuv4GJK/UwxPGV871sZGK
el2HUWO/Uo47Gg9UaySq4wQMoXpsSaRxNVglTKQmeVnfFfc3Ckc=
=M/SD
-----END PGP SIGNATURE-----


--=-=pU6Ent/JZUR/4y=-=--



--===============1266102913042674958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1266102913042674958==--


