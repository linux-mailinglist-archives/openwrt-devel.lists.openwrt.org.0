Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4814AAC2C5
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 01:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=znfDm8RsncmojRLv7gp4B5QhHjF1GMs+w8zlJ0+pGYw=; b=Zh/WfACgBqFQGCAodRfbv/ZPo
	i4YL+HFzBYzbUq1mWMles7/d7+zvah8pGfU3UqBw6ng5u1F103FatscJshC9PisxAp89IF/OoVHCq
	nrR5SFxePpXfmBHA9D6Ujj4iZfhFkYVx2gdY13/FGzTzddcpLkzEiv7h819wvUKFIB9S0uI1W2o3f
	T9j6QlFjpnMEyhPql00Tuw7+4JLghet/WiGqJak+80xBSRG0V0JmCbEmwF1Xru028Nu6f1hjDTf4K
	yVA97IdCRabsfT1Hj28PsnukLBugwKGr8EsFQ/u+lsNM5+kCVgdVjrRKTYR+rST9ZWuf6NZAtObXA
	Cd0aiKx8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6NCz-0001lN-ER; Fri, 06 Sep 2019 23:00:01 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6NCp-0001ky-8M
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 22:59:53 +0000
Received: from desktop ([188.193.187.204]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MXpQA-1henEb3frQ-00Y9pD for <openwrt-devel@lists.openwrt.org>; Sat, 07 Sep
 2019 00:59:45 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20190906145356.5010-1-freifunk@adrianschmutzler.de>
 <20190906145356.5010-2-freifunk@adrianschmutzler.de>
In-Reply-To: <20190906145356.5010-2-freifunk@adrianschmutzler.de>
Date: Sat, 7 Sep 2019 00:59:45 +0200
Message-ID: <007501d56506$c6f08bc0$54d1a340$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKh6dImyr+rpMi87jmtVN4vGQkSuQHFh9bLpXgM1iA=
X-Provags-ID: V03:K1:pF7sxkPXizkL8mL3vNO94wOcyrBnsqLyh9fCWutGaEEEd7jrFJ9
 U85Zzk0xeyED+FJjprDc+d7/4P8CJQnOLxgpYlwJA3OdBss7zJJMMbbe6P3V0jeHt1ovtgy
 VVp04OHWT9+kKwamNPTsZyv82jyGUccqGGYq+7V4m5y5WWZlsNUfmuY+wwYMRidRPsZH2UV
 Xdaqccp4Ak4tRvh7kGnqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RPA0fImpER4=:jyBY4URWF0LAPi2bz6HuwG
 b+7KGQ3Y9bF2WBRS/I82ZeOipjmK7rgXx9NTEHAiQXhUvv7Xq3yhJqOhgJLsS8U91t6qiGXdS
 afFh/s3OxjDhaQJPoeMTh/ZKonwHaZtcFFxm1gWXjni5wzVM3O6hLg0mevNEOqJsQOP7LFZ/b
 YQA9EIe36YO8LGw0w/iU8nqamGCJqyvwloszCVZI6YYWmurhmtxnwDdDWTLGxfukLzUIc7tG2
 91B4WD0IfkajJ2EyQ4TC9z8494mYG5SqLnEQNAuRvFzaoUqj7tEGz4ZLreYYIBxIf8a5TKkNt
 5bePUIVIrs3KUAejz2lVasMgRurwaEzRNdZlMUUGejtvkgzOO5sX2uPawJwjbjAACbrLbtGV8
 CppO8vps5CZlle9tZOflFURwzxQaohLgzlfHPLLzBevaRL8Y0pkwkjDotbX0b42dqnHYTyqxg
 bfuwcV2ky00AAMqUHTS9Lvm2gRjddLKlJvGPP4zloPXC1RbpS/un9FCUarKdSyQ1VDICzwR9t
 Hk4DT6FDnMlTQre6JE31LOG0UAtuPutlhRxIq8CY8HYE6izKnSW+RoG+cyHgH2nE20FqtkxjD
 al4Zu6jwSnRijfBRrmfh6McwDBcne1BOt5aXfUrKFJzlr3UxZucCNASSrSrUSE5ymbsZ4+op4
 Rs/eglkz/1UZnLW6jB90bEBNYsojxXDBtPyJVNkAl4qSkcF1hA++UwHHndHvDy7f/KwsU31Xs
 upCiuU+sYcuDQXvmqY3KnqCXgHNALhpvWcdWgKfeg3EoB9/6Z52pJ2gdh1OfMGhjR7FBoujYF
 bsnUAl/DtdYuq8CDXRdit1y6T/CqbIV7V7aDasWF6n1xinVEijpG8rGTBDSvboW4PhyPbt6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_155951_593978_31322A84 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ath79: refactor ath9k/ath10k
 caldata functions into library
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
Content-Type: multipart/mixed; boundary="===============6778810374816671428=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6778810374816671428==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=OL1FgZ9XnKZ2tQ=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=OL1FgZ9XnKZ2tQ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Freitag, 6. September 2019 16:54
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: refactor ath9k/ath10k caldata
> functions into library
>=20
> Both ath9k and ath10k caldata extraction use similar functions, which in
> several cases only differ by their name.
>=20
> This patch moves functions to a shared library script and merges ath9k and
> ath10k variants there.
> MAC address patch functions are moved, but not merged, as they are
> considerably different from each other.
>=20
> Having the functions in a library file will also help to reuse them after=
 the
> nand subtarget has been reworked.
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>=20
> ---
>=20
> This has not been device-tested yet.

Run-tested on:
WDR4300 v1 (ath9k)
Archer C60 v2 (ath10k)

While testing, I found that (independent of these patches) on WDR4300v1 (at=
h9k) the following messages occur during first boot only:

[   12.920627] ath9k 0000:00:00.0: Direct firmware load for ath9k-eeprom-pc=
i-0000:00:00.0.bin failed with error -2
[   12.930924] ath9k 0000:00:00.0: Falling back to syfs fallback for: ath9k=
-eeprom-pci-0000:00:00.0.bin

Any ideas?

--=-=OL1FgZ9XnKZ2tQ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1y5N0ACgkQoNyKO7qx
AnD+Ow//fuUnskv48ECh/BvjaFkzX2UC1xXb5gdstmhSZ055hnDfqCUBicpM3l+z
6K2TMWy0OCFPLDDNgeXnevx/Pj7nbFb7+rbqcMiyev7ew9dNi/YalOSa0qa3OVSH
WPwPTPXtkyI0DbrkPxz6+N0QCnazOdyrVghW5cs7BFmB4fYKvo0DcXtmVrmndF12
VviNGrIQxU8gc/fZv7hs1jscJDv/rgeXahD09uenorGKe4geWTG4nmTDnFSLxo8I
XKoSPWVhjjXwtWxtbniIX5k0wiCalN9sN10pDzLSlWiTvERm2p8RGzaVMLs9kDLs
aPftIMv+inrGtIQZVA5Vck6b9MjGn1PSiaQzsVbzA1W9MgNv2J9bpdvt6WuIyWmT
xAxWhocmbDyga7HvijToQgjK3ZQQbI/T5wxwhGHBMy/V1J7VeGYO6x7zKNfjGKfr
UklgMwmjDiVE3zVmfMSd/rCFMSCqFMA2ClnrGaRcrlYkaEFSQ19BTvUUV2Fo7Ygu
k0ezPBmK4/mMRPAGI3dFr2jDG9EZGiL90tRu4ehIwAPu0N1EeDl4XvUZ244Qp5wr
pDT/nXxcMW+YzRu5fi/0TLV/todRT9APY6CRW0b7hpdOk0rs0QCDhb9CKIyl+ct0
TlLBV3K9iYkmWCe9xHPZmaIhziL9rVgyZBKysKfqnxcAduLE6co=
=/xLH
-----END PGP SIGNATURE-----


--=-=OL1FgZ9XnKZ2tQ=-=--



--===============6778810374816671428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6778810374816671428==--


