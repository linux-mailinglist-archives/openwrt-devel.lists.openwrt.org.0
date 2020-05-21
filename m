Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC9D1DD600
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 20:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HRT6dSB/D1/sqx8YIu5hYM7WUaOXT/z9eKdus34KpXc=; b=HMuyYDlYwRAd42CobFAxUc4sM
	q5UveSdRHBNWs8x1rM5dP+tfImHZUUmfFCeFqku1X6qTuOmayeqCyJpQOvpIFy0XNUdBCjT4U9iSz
	NG/o+vX04n2xsCFCIch92xCPbsCggUV9eJ8efaMmXly9XBgd1Z47KUmNhs+6gZ+F2aQCz2EUS2Xp1
	0rkfbTC+r4mCds2u1UKYpPisypavJnLlV9L1j2G5t049i1dB6Hictlid0F88FSg7OvrQuea/dtBG9
	O9BLK2qwZoiE63TAJLv1whqzamwD29ru7tZEdUfiJRUs/nJBCXVQ/Y9bVIP2a/cm6gnCCjU2NKk+N
	7ZlRqXEPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbpxx-00079f-Nw; Thu, 21 May 2020 18:30:49 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbpxr-00079G-4K
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 18:30:45 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MIMXC-1jnzac3AwO-00EQMW; Thu, 21 May 2020 20:30:38 +0200
From: <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>
References: <20200521180109.1667-1-freifunk@adrianschmutzler.de>
 <195d3121-2205-21ac-c646-4c67371d29cd@universe-factory.net>
In-Reply-To: <195d3121-2205-21ac-c646-4c67371d29cd@universe-factory.net>
Date: Thu, 21 May 2020 20:30:38 +0200
Message-ID: <00f101d62f9d$ed118e50$c734aaf0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIBE0ox1YRwGEnRNLfljWsVYwJs4QMB6zDIqEUCo/A=
Content-Language: de
X-Provags-ID: V03:K1:luOowst5q3GQp71MN5P2oan90khwSDSzBKypJrvlCDU5EOPtewx
 RRU7z8+renoYCV+14RlRwGRwEZls7IZYiZFnzItDFGBAVQfQsLj5FwIWyZtH2DcgnMfoZUY
 ebw4atvcUvPaX/4PnY5Ne6LQOIs2USLTaqE8/Xbfegnt/r3SCHwBtHiN57ggv+jwo2HWOWG
 QGbdWG99bdhdr+/u6RRIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yIXLC3ssURY=:b6IIrAimsdKvGrYW1bsq3b
 7+eHbzSzn5geTR01wiFcngNeREgNvJ5qVxOmKOOxmn/PeQcjKj9eB9p0rV1903P2ezqDdHwIM
 sy1IYoImrOnKfbgG1ePHOHrHkzbokfgLeyxUcuG2qVSH1ZJfYRNr9OWaZT986PJT8I6TnwH5F
 folCsFnUNFSBvDxSMJ/3DrKyjUxZ6kdc++u6YkrCpqlogd1Aq4bngZSeJ1Ss/DnLQM87un1pk
 HuB8O8s7u65GEF6cJsscsrh0obLeZWAXGkzWczeZeLWjmEO3hYW9VUUw/MKF4Oh9Ccd1GTDyw
 PTSyqO0AWFDXDiCVk4w6aW7Sjbdrw5DUlex0MqVioFcIQLKidKAVvbzftr2knqsgg2BC/twyV
 986bi/PRDAGPFbRZXsqmUp3GC4aAhDnV+mh5pQF+bvJ6vo3rBROtGoI1tMFbUblHyRHRaP0+q
 xOQViEq79PhtoGitgghl64c9b/V25P1/aYyteciWAmq/QauEBMA6CG+9g1WM3sR4NE6CYt35t
 KB1vwopZUYW1L659q6rDf/RHPIFsHtPC0LMUUNbuYxJNM3xvaJblccdQSaFnEU84G6SwNXfNZ
 0bMHhveCJOR6Rz3BKgzxNMg+lv/vpFFIi2RRWiXGLFrIZsfBMW2cnRKjRoo4YEuMxpwqaX3Pm
 92KiDItPBLyzFxzEnHU6BmBDRlD/2IIYvcl368SR3hDO7C5mQB+Yj4dGwGkl5kR6o0fkxL4Oi
 s2yUvcA1btQ7+ep6fzUnZolO4gypAtJmir2DHkt4DG7ZlP3Y9A3/x+SFPCPJdre/BU64E7ZpR
 dw1EY17uikYU6XajMsINYoap/yXjI+BbaKgCqXN3O4RsaiUT5x18H/0rnT9XdCbvgl7zmGB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_113043_468785_8D06EDFE 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: use "model" instead of
 ambiguous "boardname" in 01_leds
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
Content-Type: multipart/mixed; boundary="===============6558751743106088964=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6558751743106088964==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=dImYLIB4hroSi5=-="

This is a multipart message in MIME format.

--=-=dImYLIB4hroSi5=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> > To signal this difference of the variable compared to the board_name=20
> > function, let's just rename it to "model", as it contains the model=20
> > part of the board name/compatible.=20
> >=20
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>=20
> I don't think model is a good choice for the variable name: "model" is=20
> generally used to refer to a human-readable device identification, both i=
n=20
> device trees, and in OpenWrt's sysinfo.=20
> Maybe simply call it "device"? Or leave it as is, I'm not really convince=
d=20
> this needs to be changed.=20
> Kind regards,=20
> Matthias=20

"device" would have been my alternative choice. However, for me "device" im=
plies the full name (including vendor) even more.
In contrast, for me model implies that the vendor is not included (like we =
use in for DEVICE_MODEL). I accept your argument about the DTS "model", tho=
ugh.

I agree that finding a proper name is hard here, however I don't think it's=
 really good to have $boardname and board_name standing for something diffe=
rent.

After all, it might be cleaner to keep $boardname for the model part, but r=
ename board_name to something more accurate, but I hesitate to touch this f=
unction as it will break compatibility widely.

Is there a reference somewhere about how the model:color:use scheme of the =
LED labels has to be set up? I couldn't find one on a quick search, but may=
be it would be best to just pick what's used there, if there is any documen=
tation ...

Best

Adrian




--=-=dImYLIB4hroSi5=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7GyMoACgkQoNyKO7qx
AnBvdRAAokmGJoLbYCcrHKExIiwYB5mDF6tJT2oIs+ttyEx7OFqUo1Gy+4Q9Mt/v
m1s1leVciI1xR3kjg+sW8VRKQXEk82hgSG6RM+zpKAmUHhUFdCq+QyvghxG2w7yv
LmNaPmVqEBa9i9AuLlvVySA1v/Rx+s7kVeqwhT32w4aIVaiJFZrSYhwll1xj0/j1
BN567sm1DWdfSVusJGkeL5vWoCCtSwRiqYV9634RtXT5+cWVj2/L1eSYmJ7jKynC
ZIH+AgRBlRxvRHze6yj36d77aL8QN98XAVzbhgfXpp0RMAAtdkF68Ok4rIVSSvsc
7XGKD3mbwbQG1hxnc1vIZWcX24atLb1uWtSqDyp17pGx0VXCHZkbXIS9Zgjmk9Sr
lnKiHvBt2wTMKqJ8lRaglQv/9vxFgkGgc51PHyv8QSFYVMiuzyT3qYLIM7upxfcu
TGfGyByH83AVeYW6PzdrLRI6fPN9Stt212n6Gcn0ayLMkojJoCVlnpvhfMLZ6qqs
NdKY76BWRP/Y8MeLowZUJicjMUQlRbwibw36kWC/Bq2o1DQkINPeN/MdvxCVFoma
dpU9elG7S3R3MG5NpsvYtndoP0IY+QWO6Rr4WSdLYUr5lt0BzvwYPRB6FSADUi5E
COgFkOMdQPCM11hzLafi6xC9IJa+Dq6pT2hRxJRlmWgO3HMbI1E=
=ugZ6
-----END PGP SIGNATURE-----


--=-=dImYLIB4hroSi5=-=--



--===============6558751743106088964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6558751743106088964==--


