Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69349B166A
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 00:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:MIME-Version:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3416Pc065aTKdulXiCNwwBHWUjSyarb549vvP1X3hd4=; b=Wwb1CBNjSqAl7z671NXSJpD1W
	2Lfb41lyGgfamZn9I5ig4eqPM8sUd0fYzo9qYW7BV3XLMtQ2hF0G9XvtRNqOTH2GT7kXcwvpPUrPK
	qVeBA3hsbe++T0UVR+sIj2LFchNsqelE0ewnotMcvBECP8ZV5DcdeI78D1lwl8ebKknYwne227W98
	eH7g9kvu+X1d7ABb+vfSMuJSdhoc3c5on48E65BexrriyBSSjUKkJNW4xJ0mzMjOkIZwu1A1dGDxy
	3gz1XxC/zEJLg+WLZot8HADiBRNl7c2uq9DYelr4sCAXVnAZEEHg6mCGfzuiVfC59UQHBQhZs0GKx
	Dpx1w8HTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Xqd-0007s4-L9; Thu, 12 Sep 2019 22:45:55 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8XqO-0007ri-Oa
 for openwrt-devel@lists.openwrt.org; Thu, 12 Sep 2019 22:45:42 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MHoZS-1hvwvw20og-00EwoG for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep
 2019 00:45:34 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
 <005f01d5675a$03b2ba60$0b182f20$@adrianschmutzler.de>
In-Reply-To: <005f01d5675a$03b2ba60$0b182f20$@adrianschmutzler.de>
Date: Fri, 13 Sep 2019 00:45:33 +0200
MIME-Version: 1.0
Message-ID: <000001d569bb$c9efe280$5dcfa780$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEK1d2fWDlkXu4EV+r5wcwARMnkWQIerCDlqKzWUmA=
Content-Language: de
X-Provags-ID: V03:K1:ay54Mt+hWpmD8rAvq4crvi6zMzX9YqRJTZ9ykESIsR3wT+Zak/m
 Y5sO8fzMy3qUlxO4VITdao+83EQPttOyQKQPQDgjcYRHGEWQkSImgJukokJsYOqjGyT/sx5
 Tyna75PHrSfIPAAmSHcT8s4eEBdoc2Xyw8ha2X0ekeK2gZcbBA3EOxLcpeflVPVUQOTyNwD
 UWyiMmDazC9rrc/L3WJIQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HE4z9JQUzg4=:XnKHpHUS/9uSbBWt6FbFNj
 djnx2d1CdUoZWpPi9AiA8EpCrOrHDJjJqj6Gb0ORyH5RfQU9Gz85DH07myciWHyZcJVsB5qmN
 mslsEsO1Lpelu972BESWkD58QFDavwo0Od3SoQWtfCE2NLo97lzOU+fSAVFqLdHvFZS6QlaQ+
 HLRXZgEM6agINNC3RnrFA4SsXydKqDDztL804sM0RvwMmoqAfWhWAkD/1YhHTwWyJdQQLEru5
 edO81Jvu9TYAf2VLQkAyNmrcPCmrR8Br6zlNd6s0F/MmTK0WTd6uatfEW7NuowFVUJ7ZAebz0
 X5QQKC87zL4U9LgpTH2DgT+jhWycni4wI6chVZsPhcTKZqb0Mq/cuKeHV3vHDfS/cuU32QvyA
 CYi6UwwisMrcQE4/OSjInkbDwqjMiqOTYlVKFZ6ckvOW00PyisRRiMc2gYGk0Vjhhu+3z6g3I
 U09SznNwS2fA8MQSyaX8OAhU2WqvxUYze4HvhUkWhda4gcMytf8A1YW/DvL2l1y9o3F1rTQuB
 qw8rhyl0BoAs0SkFbRIJH93BUgcM1ZR2wZalJgFNS8rz5L6BPyeX751grir2e3ALxnfds8gyz
 QBZwsJhPXF9ymvsQQPht+vaTfhIjQ34hufSrOc9+OQbotabSK8if5P4N941721B12fzH1NgT6
 alBWfh8BHkRvRQL9zuMWPc4/CwatIjfaLwxAUy+gm6lVcAU4JHqzw4DC7KxrM/vi8NrJYOz2U
 fWXewb9cVo/U3NNlfknrlF3Y0wSpmNW0onjKQMPgnIHXNG5SGFGcaKUJ++/aqLo6QHRHj6Qpg
 gqkwgIGpWVkFcbUJbtytd1cQ5n3fyl5v8Schh5nCMh+qqt5vu8UxNHCeU8e+z1EGVMlG3mFJ9
 W5qK0VTNsmRW1RsUpZ9Eb1aMyGztuxgj7XDkiP3Qg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_154541_095821_319ECE75 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 0/4] Move caldata extraction and MAC
 patching to common file
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
Content-Type: multipart/mixed; boundary="===============6220210497869552477=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6220210497869552477==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=aQuA429SJy2e9J=-="

This is a multipart message in MIME format.

--=-=aQuA429SJy2e9J=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of mail@adrianschmutzler.de
> Sent: Dienstag, 10. September 2019 00:01
> To: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 0/4] Move caldata extraction and MAC
> patching to common file
>=20
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Adrian Schmutzler
> > Sent: Sonntag, 8. September 2019 16:11
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] [PATCH 0/4] Move caldata extraction and MAC
> > patching to common file
> >
> > This is another attempt to unify caldata extraction and MAC patching.
> >
> > Compared to my first attempt half a year ago, this includes more
> > targets and does more code cleanup, particularly by merging several
> > differently implemented function spread across the code which effective=
ly
> do the same.
> >
> > I also plan to address the special situation in lantiq when a find
> > some additional time.
> >
> > Note that the current state is only slightly above RFC quality. It has
> > not been tested so far on any target.
>=20
> Checked the code a second time and tested successfully on
> ath79/ath9k: WDR4300 v1
> ath79/ath10k: Archer C60 v2

Tested on TP-Link C2600 (ipq806x).

--=-=aQuA429SJy2e9J=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl16yokACgkQoNyKO7qx
AnDPbBAAno67404QIwXD1JgeU1JL4RvHzEf/4dPwTB6hH1xmhgEOFCAaMzG5fFZz
QPV5FqE+2ng0WuTrInkxV6df+VX5PTeAMmgu7p0Bje6xMjIPOT4K+e6tGvj/c6sb
xW0hAI5jVbP6U1NUWPzm6deMcj3PwCAPkE9SxNG9QoNFIH9HECO4McfMXlfk7g3e
EaTDH24pelkCzjm/qfBCysdnOuN7Xeae84o5zNVU3uqOf5NJvnvVOu/D8fJJ4FBR
J7VTdZUHnyvxqNnE5O/wzgtODrPybKtzk3zGrkPVPtdvXSr3a5huB5XAlf5ZNZte
DaHKYjNu2aCX0TJSM93FcpQZyWGwG9XJXXfJsnBPlk+VwX1QtPURAq/pHUIptmBh
Tsi+PXvky9uTi+fdb8+cv2dr/u1ZOm3pjrPs13sZEJtElzF1iB2XjSI9qECcZOxh
ySX6qI0pnejJdyCgKDxa/zjfS6lCcXDlzN9NBn7VVwYLVFUv3XVbCgEC/B7D1QWj
qZTzkQau0XGOi6vM409EP7WJSqvNU5TBegNqSmROmxBanMmuHcHEFt6O9ag2y82R
0/O30jU936EP706Qpxina3uiVkIsvT/5XwFEbm9JZQX9fvXIiDo+AQZHkS+vml5e
EXwkHAsvvyndYTMNAEk0SZh1pbGxXZ/zPgLLEWxbUIbvAF/MaWU=
=vs47
-----END PGP SIGNATURE-----


--=-=aQuA429SJy2e9J=-=--



--===============6220210497869552477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6220210497869552477==--


