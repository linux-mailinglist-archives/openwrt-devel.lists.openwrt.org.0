Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6528536C
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BzvPfYwVlo7NGL7fCWWEItv0nudO9LAth9PXsGaPTiU=; b=sh0n8wPZjXGFWndmVaurgRKnK
	5NxqRCi+Wjf+9t0x5Tl+hBq9ef/4PC1+rfnDjRPonAoVUon5P0sO/fnSnZIQB2MJiDSiDV6HGcuI/
	O7K1dGGSk2wZcxTmedC3iJY1w4rtcf7fQZ2liwcQqVPELPfuGs+ojJa6QQEKC7b6O5Enmg/NmE1/q
	huboaLdvHbxkMz/kYcrVp3bS8TKy55/78SpQBZh4duHzbLkhko4cIsHkEvnh9v8GhOuUMFesOEXZy
	NurTFBz8FX4EM7pYWIS4tncBoZOM6+C3IBcG3V7obMwb/4HO9sdCs5xG1qaf+0bWAtmGY8nqQpm/I
	GOqqEWR5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRHt-0008TJ-Cd; Wed, 07 Aug 2019 19:07:53 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRHj-0008Sg-3v
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 19:07:44 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M9npV-1i0gTR0KaD-005mYm; Wed, 07
 Aug 2019 21:07:40 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
 <CANoib0GUUxSHCp5cRkjyiQykuRookSNdiVyJr4Bf0yE62fYSpw@mail.gmail.com>
 <02a201d54d51$4a49add0$dedd0970$@adrianschmutzler.de>
 <CANoib0Hk6buOR9tJ5F+3EXd2c-MCGiE0X=M+Yg7_R_+fP5zWdw@mail.gmail.com>
In-Reply-To: <CANoib0Hk6buOR9tJ5F+3EXd2c-MCGiE0X=M+Yg7_R_+fP5zWdw@mail.gmail.com>
Date: Wed, 7 Aug 2019 21:07:39 +0200
Message-ID: <02d001d54d53$6218e280$264aa780$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJfXR1+bkvErjfcpfU8tI79uGyNTQIaUNJQAh4I0tABy6WucAEWAwE3AjwCVLalkTvtgA==
Content-Language: de
X-Provags-ID: V03:K1:1tCwgaKD6HLrUamjADZ6I1NN7Ln+6E8Rktxm/pTDSMawpK5whO6
 MKot8y5ZTAGNxfdNzRZfAMwkMyV5Gws8eyKOdibk80HKG+c6WxJyhzx6uwQuA5VjMmbdjF+
 n6z3KEM/1sZqrHdIul+5D63sgcuXN6qo8iECTceAANCRErx270lNYkKfVAbnK3Y8be0snva
 WpvlgCGIsJVcUbYehtNoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1kKGJRlnOeA=:j8xKQx595lyDAGJB6L95t0
 aH1GeUKUptE9cewfx3Cnt/0Gw8AaYV6ozn4xRpsrpoO4lNqSrBPRxgQq6Ha5EFL9G4GsFSeF9
 GFv1XI+EIhW0gk1ObvgiB99WXjD+KtRYJp6wsxpfHhz32dhR+cT4tkuS9Msvv6G+F5u+isAfJ
 CJ4ZC1qnT4a83TUPbZDJzxX48E1bhgTcN6NsaWs8RCcbh9T0oLBSkGYR7s8WfP0mD49s/1RA/
 ACy1xtIiSw2RPww97ADiVyypRFNPsSq4905SoNf/J7Iq72UTsTZiRKZ1cL5X2CprYsGjQYWrB
 h9/KtXRkmW7E0lqll3yEbKpSQtji4b+cNNfeou/8PuwopCSiQZQO/wVjaLVVlGjUevmWyfkca
 CTcOLasaI+auTTrr1wPe2znRRVPdRoHIz6tOUdSnFEdO/k7qPtcLdCBpU+nNCNdl6B0pfBG3r
 qyODA42ozV0YddDVyDg7z3oZKjCFtGFUuLmwlrLCfumcxQnJlHQRMmczCt1KlSaFycfEBGrx2
 t6WMwEZYMihOJqYRdG1OYZi9GJ/yAeTdiiXZo+xMgp8WSf+sCgGJyirGZyDFtSy1Cr/mO7Mzn
 qG25G5BpIPzlUgSPbGRZENrbV3wnHCbDslme8g2oJTdDvKmcH6uvgeOLhpjjTxH6glDnGJeLR
 bGO40fEpAwMvBCp8Ba/g2GNTCErRgDnffoFKGLMbC0SKgIkE30AKS92Z153dNXXq/poLVDRLn
 zW+2unOIgFBUgV56aKi6k4RYHeqol8SZgABAOG6pdGfEOMD3YQ1A76Bljd0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_120743_457282_A5095C47 
X-CRM114-Status: UNSURE (   5.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800
 (Ch)
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============7783860204206227195=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7783860204206227195==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=awNQplHL0Ovwuj=-="

This is a multipart message in MIME format.

--=-=awNQplHL0Ovwuj=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> CH is used in BOARD_ID.

Ah, I see. I'm fine with the solution in v2.

You still have one WNR in the commit description and you can remove the DEV=
ICE_VENDOR, as it is still inherited.

Best

Adrian

--=-=awNQplHL0Ovwuj=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1LIXgACgkQoNyKO7qx
AnB/4w//Rwy+6sGr0thz9Qnf++4o2g4EpmdtXT1C9zlFs7wo4DgEwJNhMIJAXb+P
RnqSfdLyewW/YE7AoYkrVcv6iYV40VprSbOYVbV+zOx9OAR8kM070Sw7ezJWnBg2
jPCTuIDaL2wpHHgFqAHp6EtVozdc7WbRUXzg1MqfRZOfpc2IT6i6BsNL9dGFuKU5
WuWvXqJbdf4GeM/mqFFVtYGTt8ZMPw5XZ4xpi1cxvPENYgz6O/bNfZtWsErhrzLu
HT92X0CrI2zsukkv4tm4qtbQPMkHDxkYD8JxSLZ12D8EkRpJNPCqOT3GRpsEVnKu
n4u7GF175RwxdwJGS3VPeCISQO/9pfIdr60WofLGbJ8SocTMru5uucd+fJHl3MLq
VuVBs+fvQ10J9MpGhWgGMaYrpyyyXaEaumPGYPrjc9H6inIIKcosfeMm0dzGtsvE
JQ9JvYGHBiDZR1gQjP/UhOjOiEeFjABc0kunY8O72mnNyTK5H1e3h1z/pDuloZ2y
IQu51PCaY94ZgYnXtuIOm2x7M73h5CkvqACT5V9cSkmyJNbbtmlgIHXegfBKOhce
TRqDsvvU73c+Zh+/LAgBAlwJlQmVNt9UyuTbPoHZGSz6nFIh5ZC+oaF6kVS/3JOZ
E6h8SDq3Y+fVszEUvIzLoMhF/FaikG03F7BgNThAjv6ZIaLMk7s=
=zpau
-----END PGP SIGNATURE-----


--=-=awNQplHL0Ovwuj=-=--



--===============7783860204206227195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7783860204206227195==--


