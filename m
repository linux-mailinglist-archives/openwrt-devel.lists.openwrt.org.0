Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBCDCEAD9
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 19:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pbv4HrHHAACTAo0GgT+6RT0+RFzFkkp/+KWh3Kb6VY8=; b=erroOzCbPOXTLdY3Wu8rI9hHv
	yozc8NgkMmvRzrI44DfwtBwXm05Q3uwYr1130yRX+sjUNWeDIXd5kR4CnaaJhTEYRoZY2/S915Clj
	NxoV5U9r+srq5QoJ8DTMjg/mILA0KL4nRek/fZfClka9CZm01UbuisMJfPLCnOnyEhVznx1VxZ0Yf
	/PVuiHE3SRmiohsR/NnZW3bd82rvf0eE1fVWAbQ3Hh5ZaefC+wRQ1X/Gzs/qLzxWGNlnTWjLC0LW0
	67ZL21MMdeulORaBv0jevpsXuAxZXixWmIEeQ8wJDR9Tw61g51FaiFVEJ2j2HXSnSImqA77mCqjAL
	L0i2PN0Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHX4t-00033G-Ag; Mon, 07 Oct 2019 17:45:47 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHX4i-00032U-UM
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 17:45:38 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MdNwm-1hiTIv3VTM-00ZMiy
 for
 <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 19:45:29 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
 <000201d57973$398c8cd0$aca5a670$@adrianschmutzler.de>
In-Reply-To: <000201d57973$398c8cd0$aca5a670$@adrianschmutzler.de>
Date: Mon, 7 Oct 2019 19:45:29 +0200
Message-ID: <048601d57d37$02a552c0$07eff840$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIAQtOeg3XhQajU7dU87m+ETVuHCgKhrot7puTayNA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:Nqdkax7uFRupYOg3dfaVsuxcEuz6T/447RBCKrMeYZKoESGUgf/
 ALOpmuzxcWgK8Lmzb2SdD7OP6Q/MRC19rKpCJuQSjfB1Md0zQjt5tu02uoQKizpEHIFOnTm
 5hpq7JXQG9odAf2Z9izVzUjq7HYwmdtXPW1tvWTe9QWMfr8yuhr2KPpbnuMbpaIeVoemxl7
 w20wI9nUb32XggTsScceA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1gJXCkpT1bs=:ULwwAUCIGMRt6Nz1a2JaQ1
 t18Yoydol4tpW+LvrtFIzlab3tM4PZHMfhiPw0C6h/hf2NbZp/eaTReWjqpXsNMnvYdlBgq4e
 7SRoFTzd7FGTveGAwXZ0lxrRskqjuycMa8/ViBF5Hv3dwNXGwI2wrzTtUdhWb1xrQEWqAXYyD
 7aH67e9JZ0Uut1cwGh0c79q31Ck0a5viLI3YgukA763Z3QPo2ey+9nSszOXkuPbLz7fx+p4Fi
 l1yrOEGK6801DsYMzAsWsJPb+ErEPc9wkd3DPIPesA+irn96a1NidBMLaMf4PF7tC8jFpMrnd
 ELViWLuMzgGgCfvPSB6N5FgYIqks7mdvEo+LJaVixA1Mu3GG+KVKXz0BsI+pl6+ZI/tywERfn
 65R4Rt3KsYF2r/bRQkcQLyMPmcKSp2dYGVXbiuzHIGSGvk3q9ACt0rEqphV9vteZCmSFsC6W0
 ivddOceAazFV3Of+ZKsXOBN3w3b4lOk3uaMayrwqgFd8VCA4NLxilEmn6M96VhtZxv/PlTRN7
 hOBqmgCcvn1FCoR7T1LLb0wy3cdWIkG5evtk5HwCsCVs2QnVD6L6JBNLkB1iJCKqNmVVEJo/j
 rbNUpG/KuuFqzRM+Jyd/lfLux8bAV5r8AoKVJlKhTt6wtdsWT8fMn0BZibO+B5Dj72m5p4sHI
 8RNf/BqpRJO2NwFMjQbHr7Ujqi1YNmR0fdFrkLLpr5QgRINCS1Kla502Z7RKKP/MUiMg+0YL4
 ebI2Qs1xcrNrg3hbsyfgsBpenARg+uR4EDgx7TDL4p0ag3s54+cxjOo9sAx+6sygbVlYzMd4M
 OZRDozijRbNYlIbWnUzWUFOMESvIgasaugU+quga5WgViU+6hgD6X0s9kRinSI/i7DJi1vCzW
 q5+l046nJLAR4b0vTUwumNT+7L5V8PIvpHWcjiTx0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_104537_272364_C8A58FDB 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 0/7] Move caldata extraction and MAC
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
Content-Type: multipart/mixed; boundary="===============0648164093040969876=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0648164093040969876==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=qz+czKdQn/NTdb=-="

This is a multipart message in MIME format.

--=-=qz+czKdQn/NTdb=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of mail@adrianschmutzler.de
> Sent: Donnerstag, 3. Oktober 2019 00:46
> To: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH v2 0/7] Move caldata extraction and M=
AC patching to common file
>=20
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Adrian Schmutzler
> > Sent: Sonntag, 22. September 2019 11:57
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] [PATCH v2 0/7] Move caldata extraction and MAC
> > patching to common file
> >
> > This is an update of my patchset unifying caldata extraction and MAC
> > patching. I've improved some tiny things and despite that mostly done
> > rebasing.
> > I've also included the patch for the special situation in lantiq I sent
> > separately
> > for v1.
> >
> > The patchset removes 417 lines of redundant code, which despite that al=
so
> > included several variations of the same approach.
> >
> > This has been tested on:
> > - ath79/ath9k: WDR4300 v1
> > - ath79/ath10k: Archer C60 v2
> > - ipq806x: TP-Link C2600
> >
>=20
> Tested on mpc85xx (WDR4900 v1).

Tested on ipq40xx (Netgear EX6150v2).

--=-=qz+czKdQn/NTdb=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2bebUACgkQoNyKO7qx
AnAXahAA0yb2yksWc9VGKavofENRUobyMQmBSCgemeeMtl5Y21cK86JJneNSk9rG
9CN/blsS3eCQBHijUKpDC0IdS+RqGl3+spuW9BMGCVG3VKibPTrWEdMlh1RwBIW7
dRDGfxC/hpCg1B9AScMc/9yPJP49vWRcQ/CzSc8fQ4ePIIaoOpjBI7w1HnqqSGut
3Mwl+5CGJQMG9mlptrtRBre1OIkWz2mEIY/3ZirGwvlbyMQUue5AE1WqgFIDxHQs
EXMN52mioXjc/jlrumSXgPhn2E2mNvGQT/pkqYspJ44/UZiXwcSUvG44FbOaLiDo
fM/BxP3D1k5hWBsLkq6/mYJRpzgQKhDpNxI5hj7gS+kd4xN7YW8J1xqDivDTw4+P
iTpMJF2zHTxja3zwTVoknrF7uowXji1mXN76RtQi3/pfIEdTn2eap3vma93z76Lg
nIO5F+wqHfSCLVhnOHqDHKZu3vxILx+Vo5sHaqn59aQ+99Bkq9HSY1bqGRI+CK+w
6cdJihLBbWtRM8WMtMBqJyDoLm0ihjCapvPFWWf3OR+t0sFjy0SMTwxjGwjvazPQ
dFv5Zwnq6lvY6+tPueIuVJ4jGs1jDitWKbmrJUiPnEXuINo32fPY5E7LPlqlnVhV
BC17s5bExb3fkKia43lPtxaYNTFUeiwgSq9WUxwPTWxNW8NI1gU=
=80Cl
-----END PGP SIGNATURE-----


--=-=qz+czKdQn/NTdb=-=--



--===============0648164093040969876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0648164093040969876==--


