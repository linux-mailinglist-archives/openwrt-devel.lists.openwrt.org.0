Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B720EA1C4
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 17:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R/evKha9cEor1QloOusDQX8+hzpbwjvxMSwCFEptBPw=; b=O1gQiUdqvJ2ChVQX+qZiNEi+Y
	/q7NxvxSDWSe3DKvAhz+APF5/T/MA5WPddAzRebqPd9weYYneIlD7SS1p63HJ65mJfAvwG4SOivDR
	v0KDbhFB8Bt78usDldWgh+L3MM4BHjONgKSgRSM/6G49QL9lMRpZPwLADgMQLHisLMj1MLtymjx2w
	XBef4CuvLIs/fZSOySJlKSHwUAEAaF1pZgpfNtlo1CpiZAGvJ7o2ktUXtS2XcA6ho/nPciwWWUEs9
	Lh20gBTPpUvnoaESTbGrIbcZKL7ldSwbUbjVpeJRUkDbG3RSYi/OLTSscUTvitRGCcavFfI4afaFT
	RV/B0FL7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqqk-00033E-A9; Wed, 30 Oct 2019 16:29:34 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqqZ-0002yM-Su
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:29:25 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MoNu2-1hb3cn26uW-00ok5g; Wed, 30
 Oct 2019 17:29:21 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>, "'John Crispin'" <john@phrozen.org>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
 <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
In-Reply-To: <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
Date: Wed, 30 Oct 2019 17:29:21 +0100
Message-ID: <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQFzVQwVvcHDXaWzShGo3JtkXcblBgFLeCLxqC10ktA=
Content-Language: de
X-Provags-ID: V03:K1:i9yS72PQqlsGxrkvKbfqTloos6bs8+ZPakgnt/xp3bjq0Oblr5G
 PWykG2Md+/zQgZDnTqZs50Kgf5LM0R3WRC4RBsan/oxJ9MA69L3O1cGHpvQwPHRCpdEZ5Xb
 5rF8a4yAZWTcbzGFAZSsQFX/2Vt6QydzGTask7Zk5Jz7AreI5tcl8/32dKOOuIAIdP4HqBJ
 3GKZX9pZU0IlaSSpqTC2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O+EPxazEDbA=:VtP/X4+eOtsgSfbqXlxnvw
 Tncdyf9iWkV9zoKy/ViNvH/bQsW5Of7S8SLP6Phwl9bgKX6E4SQEJroYAiJ8NT46QPz8ItvLy
 cdOOGsPYbn0/qnKC/Ch97G2OTSDsIpc2pQAQikNEgHGaRcxg7mNKZ4TCDgm8x2byME+2REwUS
 F0q5sndsXvRjOQk3sLNcCOK23TymlD/457h7/KHdOwGV5B7N6TER34r5lsnYpt88jj1oijsFS
 5A2CktIAIzT4D7T9+p6NsAv+dB0+vQD60KTJwRktKgGjQhNeJCfR2+qlyJNE6kuDMScHQCvJF
 Vpf3xKPj1b07+b7zOGx9M8BUm25a8OZ9LbASgJu1cPg+581iVj9vhacOc1opvAb3YPH2HMDTr
 olEmsNZo8TV7rA/mDyovzIsdIbYmP+PZMmLnRQiCFXgSZvnPh/B56+zGfprFCL2CN9Fm17kGB
 GiL6PIl/R4TpjKNuBO37M9SXzk6BmDTrCCZTj8oNOEMPQ7++xwDChRqIiNKbEyEL7rrMHXoSj
 87wrDZQEBVThDAYfarwGFPBI3/ucaR3qpH6fdiUl0tDIOtyBAJXvCK/60jJt+ypkjNI/RHgP2
 R6KbQ116ORXyZ8HphNoc7SsEJ1Vdz6wWHN4Tz1ywDP8ip3wN6J0FuUTjdhUlPmHJgy2J2ndvl
 YT2UZ9io1uvKhHKepzNPfYTnpBJbec1zftOQaJhcaJjkeZTDxyM4ybhqh2kf7RQ+W+5LClZlU
 nCdyHNl5E2QYRR4eFiHII2xJXuzNNWNJC2qJPm5juPDlobnzhIufN99Vqq/+ig9uRFUlMkWF7
 ZHkOr1xrxTIjCNMTuZezilnChtstlqZx7bJsD9ByROdk+lkIbDGp0b1bgWYrA5WSCZGT6oMY6
 hfgpOGWulY/J8nNDzXKAyj7cSRq8JPeJzQhuzWLT8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_092924_231127_5944FA3C 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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
Content-Type: multipart/mixed; boundary="===============4110252923683152605=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4110252923683152605==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=9KFcvllpEwevci=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=9KFcvllpEwevci=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Hauke Mehrtens
> Sent: Mittwoch, 30. Oktober 2019 16:54
> To: John Crispin <john@phrozen.org>; OpenWrt Development List <openwrt-de=
vel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
>=20
> On 10/29/19 6:37 AM, John Crispin wrote:
> > Hi,
> > should we use v5.4 as our next kernel ?
> > =C2=A0=C2=A0=C2=A0=C2=A0John
>=20
> I also agree to have kernel 5.4 as the next kernel, it will be finally
> released in about 1 months and it is a long term kernel. If we are lucky
> it will be supported for 6 years for Android.
>=20
> What do we want to use in the next 20.X release after 19.07?
> If we want to go with kernel 5.4 with the release after 19.07 we can not
> make this release before April, I would assume. We would have generic
> support in OpenWrt master in about 1 month and then we will port the
> targets, probably we will have the most important targets ported about
> 2 months later (Mid January 2020) and can stabilize and port the rest of
> afterwards.
>=20
> hauke

1. We currently have work-in-progress 4.19 support PRs for ramips, ipq806x =
and bcm63xx, still with considerable work to do at least for the first two =
(IIRC). Without in-depth knowledge, I wonder whether it wouldn't be more ef=
ficient to skip 4.19 for those and go directly to 5.4 (less backporting etc=
., but also more adjustments of local stuff).
2. Obviously, starting with 5.4 now will cause a mixed-kernel-release-or-no=
t debate in early 2020. So, when moving to 5.4 we should already ask oursel=
ves this question early in the process. (Which obviously also depends on th=
e decision on subject 1.) I personally favor to not have a mixed kernel rel=
ease, but as I'm commenting from the side my voice shouldn't count much in =
that process.
3. Since stable branches are typically made 3-6 months after when they have=
 been set, I wouldn't care too much about a 3 month delay in estimated rele=
ase date. :-)

Just wanted to add those thoughts to the discussion, sorry for not providin=
g answers ;-)

Best

Adrian

--=-=9KFcvllpEwevci=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl25ul0ACgkQoNyKO7qx
AnCdzRAAv1d2++vtRBdai9dLJ+fzziGFFc9aisbVklrs9PIspGgbqXoXDfqoPKB9
MY/bDs6mglkgwJXTF8M7h6AHbfwokIjT2RwtE3yHIq38XH0zyUMI3oo0BPz9ghru
EjDQGcvbNAdYVYdkNhM9xKI3QvV6lVlNhepo+H0tnwrP9xGqHU6JYIgIj6RoigeQ
6kMRq/Bvr17N0xZb4PGyU+tg6MrGX6pNICrOssZEYOf9FEwxzrI0oDVYGbpjfHvq
cAsTnEYVxswXoJtR1DWnVcrg/idNtuNPoiLw04DUYZs++4Jt1s+a7c0hdJRkN5QH
7mrJOq8VkJM1FmSPYNxFpVIrqnVCj3Q4MZCgNgCZIRQ9ERb96PHlt5wRRFsTfWgi
AyIYjA911DwpiLwoAOUXQ9ivf6dFVPiuDLWJoVW10EU8cHosUasvEXn22guPMvAn
ks5tvBud1J0zqTdeT9H9w6am+rZ75kM+vP2YkyfiZotdPxQIY7RdoDvFM/c406hP
lHqC0m/KSu+OZq0go9aRCmoBvuGC8SvTCKEUjQeFJ0gbKaFnS7MDHjrjp+1qYezH
FnXf/Bc/Pa/xMhh+pRHzCt3va15usH2SKYsvhjVddzw1WKcYhXgyvDPvP2qUY/9b
7O3yLPd4FSBd02zBUYVBZvtAHwFbft/limTsfI98twygQMP/K4o=
=+CtF
-----END PGP SIGNATURE-----


--=-=9KFcvllpEwevci=-=--



--===============4110252923683152605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4110252923683152605==--


