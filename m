Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF93C1007D0
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 16:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bptDokXtfYnQBafec0jSzDACEW9f4mxeOtNsTqRvUZw=; b=jRs9L4uDmFsROyiD04w1jq8nm
	8lvwPKIuuiMa44SzkT5slO5Sd77EutfPONV86JskDO/cggfIoKycWbg8igtFErJTQdxQ1x+SfcuMy
	+NMNs+KVoa1vcIxRIoi0sSh4cwF2YjePbLuEyG0UYHi/sRW9wAy2lsg/ZkfU5Mn9PBGcVH7BM/cE+
	fkH7rmvfsxLoYCt+MseEBxAMm48ssfOwDp+7NHktfH6rbGYzN0uMXssb4kTWAMX/nXeGkx6gCoKla
	vbWSUo7A2A79wOnFokS+/sd21EwnKwOxNELLjiZ56qfYU8HDlAkDAaS/OiwrRWBFEmRSLHnyFVu4m
	noUCUJkMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWiXB-0007eS-RQ; Mon, 18 Nov 2019 15:01:45 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWiX4-0007ds-EQ
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 15:01:40 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MTAJr-1iQzSk1Ax5-00UcVn; Mon, 18
 Nov 2019 15:59:33 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Joe Ayers'" <joe@ayerscasa.com>,
 =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <CAALvt2OQ-LCg=C86GkcgZkw4V-deTbxVYGsxte9iyO9E3BX_cg@mail.gmail.com>
 <20191118110716.GB19872@meh.true.cz>
 <CAALvt2N2Op+dbfGaMYnCCWdRAEqrKkwo601dmbeqqK-RKry2FQ@mail.gmail.com>
In-Reply-To: <CAALvt2N2Op+dbfGaMYnCCWdRAEqrKkwo601dmbeqqK-RKry2FQ@mail.gmail.com>
Date: Mon, 18 Nov 2019 15:59:34 +0100
Message-ID: <015a01d59e20$cb99e420$62cdac60$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQH6NJ6Oj8cUusNNA7Cq9fjY3dDDjQGOFlZPAbQt35CnLcRp8A==
X-Provags-ID: V03:K1:6FF+CVKT4UDoc2HKm9RiHkDuDzfbSR5BlDyoEiGyNajV4Q45Rcl
 pJKGmNU4v/3X9P+3KdrhAtsMusjhezrbh1zJRiE2ufSyb/osROizyYLaaj4ogqSZdXQvvDK
 sfqvJHhz1RSrww2NSVlRHKQY/vigzBCWFpvbd4dkVDYY7R2oUqe2EdrqUseHiVs54TjCGQv
 Io2M6+fIxLbTlJnmXlwdQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ksl89nBT/kw=:/QOQms1eIjBnaPScVKBv2r
 EjES4V9oe9dPpIPY0gPJ697KUh+Vmpmu1qi8c0o0E1SpWAxjmM4IxLlTE4eGuHPBXs6w9Q7d3
 rHvdmJ/Y1ePas3AjntibdthFuD+eFbP0TITldnD3eXJ0+Ewiko+o2HipD2y0/66RDxNawq2Pt
 g65ZUIV3xowS0qtctcy/ojs+cTygkt68cFvW7Vlx/ymgzO5kswnobyR8TTk2JXHN1GEsbK4kk
 U2OP4LsrWKrGSD+dYWdo3Bqc30ReFVrSP/5A97/67BAe49Pz3/mdXm8nqKdMJfkyXahzNNVc3
 dF2XepJVSd3RCSwBZsaGI/IBtF0oFO/Z5cL2V0z7qZfsA/u/LBNtmS9x3PrwK1WrlyCf4qrXF
 I+o/XK1/+7EjObMM3TFXFA6yt/L8J0kbM368TufDhCp/xoLz1fXclypwDVhBtUR1zihm+vkJI
 10zreRHq1f+VGksztz8+MXyjbX8OUGpZ393Hq+leJKF3dDe/MrVTlxMegwxZ+CmTWe0TyuGd4
 oPlrV+Q6s9exWqmupsg96DBh1Fv52xXGXXK/54J19Uz8K+EjsQzYil5w88ZoQ5vSKKhtXx+uU
 xNIK0sssartKElppEDDWCiIr7hFGZeU7zSoI95JNX+aAUIwk5LvwL2QGe6teXQK3Rrp5ac4SU
 bzGrVUlHfgjqNbVTLyIhay9oshJHTI22HHaaWChp0nsb4vrlSoH+a5uaWnML2gWqyj9s4XsV1
 bUM+vqq/tQylCA8uQkPJeVQ77M++zgrcwbz+Nzlfue098vMWYL5fdyvrhW7+aWz8QZIEWJCaB
 l/vOdtWoho20DMMjpPvWsdSjBuFk+4Gy0UMK9NriWhHaLH/o+lh8qjjkBG0hyRuDwXFX5zI6a
 joSWPJqQLfm9aCiqqOnAfSDPBlgXwHGaIuMZ2AItc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_070138_780108_3B674770 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] nanostation-m-xw ath79 missing wlan sysfs pci
 entries
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
Cc: 'Andrew Cameron' <apcameron@softhome.net>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7980422309121206621=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7980422309121206621==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=nDo/dJf5J0Og8l=-="

This is a multipart message in MIME format.

--=-=nDo/dJf5J0Og8l=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Joe Ayers
> Sent: Montag, 18. November 2019 15:37
> To: Petr =C5=A0tetiar <ynezz@true.cz>
> Cc: Andrew Cameron <apcameron@softhome.net>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] nanostation-m-xw ath79 missing wlan sysfs pci
> entries
>=20
> > > On nanostation-m-xw ath79 target in master and 19.07,
> > > "/sys/devices/pci0000:00"  does not exist.  Unable to access vendor
> > > and device IDs, and no longer reported in "iwinfo <dev> info"
> > >
> > > This is working on ath79 for 'nanostation-m'.   I'm guessing the pcie
> > > entry in dts needs more definition on the nanostation-m-xw?
> >
> > I don't own the device, so you either need to `git bisect` the problem =
down or
> > at least start reverting kernel/mac80211 and find out which commit brok=
e it.
> > Ot at least provide last working Git hash for you.
> >
> > It would be better to create a bug report on bugs.openwrt.org, attach y=
our
> > .config (if you've custom image) and full dmesg as well.
> >
> > -- ynezz
>=20
> I will endeavor to find a good commit, but I suspect the
> nanostation-m-xw never showed through these PCI ID attributes with
> ath79 target.  I'm looking to obtain the subsystem_device (Ubiquiti
> boardid) and subsystem_vendor, to subsequently know the power offset,
> etc. ref:  /usr/share/libiwinfo/hardware.txt.

XW in ar71xx sets up both wmac and ap91_pci:
https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/files/ar=
ch/mips/ath79/mach-ubnt-xm.c#L460

In ath79, only wmac is set up. There is no pcie entry.

Since those devices only have one radio (AFAIK?), the dual setup in ar71xx =
looks wrong to me.

Best

Adrian

>=20
> Joe AE6XE
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=nDo/dJf5J0Og8l=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3SsdMACgkQoNyKO7qx
AnBxPQ/+NgdYTgO+OTKXg2d0Gs3yb74p8Zox4O8eeILLUdX0Srb77k7KlJYI0CvA
BrLUUEbrth3kCXuBFTjHMbPgbUrcSGT8/ePtpgD/RYcyxBF/ARimWH6rzc3DiMOI
0ESgsHedaZrSVN4w6RageuBzIpJvtVExcyPLitgSXbUUpGOAG5YGESerkW3Da6ZX
KlvXkw2PTFseTZgQlUWsrgSTCHbx0WbCC67NSloTgB15M1l6N/EK987Ajy2iLxUa
uphsg6suMS+b5L8uog50Zqj6SmvnPimoRnXQsP8sEapX4aGWbjgiRdoSzbUDQ1a2
IG36Du7vPyODFPZJPpLcM4xCUP7jc2KdG7pad51IEOr9QWKkf51699G7Bw4nJaky
4/nbKivOfM6NoEIRPAQZeCwi8DRqNm78owIuz7H2a08hOAznARtNxnVHxxAZ6Dki
fh8tERhJgaKxIhXHsSu3PNwoZ/05n6J3R+YbsUuoBhc8D4FBaYqrYzc4QDI9w/RZ
u7VtQTAp+J7jWU1ZJTRM8RXau6yXC0bXqB/QvbXbu93Th+FQf+QjYyTVKEeDXIE+
hrYZDi7Gctpq6un4bG+o6yq9V7F1CZo1RBpC3JX4BbhSrYOHn3jUc/7g3ylFuhGO
yGHrYm49VA4nzlUzR8sYTDcCWZCTnEg3/7gChEWGCesjTt2woxQ=
=7QOX
-----END PGP SIGNATURE-----


--=-=nDo/dJf5J0Og8l=-=--



--===============7980422309121206621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7980422309121206621==--


