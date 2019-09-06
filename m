Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5693AB917
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 15:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aySq9b6kpeHAkxrTm9RygEeebYdFdu6rshL0Ec834q8=; b=qHLBpl7eHr0Y8Tlj6NGfLRJWe
	XOAMqEuyfoX6FOZm7qS9XXK70XPZIzv904lwP8KGDy/WRseknbmLVDZ7yRUlE47kB4LD9hpA0kpL9
	c0uczqHNV+V2W8ulo4vDl5UyxHPD0wf8ugMz85U4IriQR9l/aunsR57plfReaBcW0AhprM6wokE7a
	CSXogxa0vlR9luJoLgqIB9Jej9Iph/4iQyO5dn2XAWIe9L7oda88hf3aG9PgRdJIdl+gi0jrU63+/
	DHTiDYYMLwSaWre4nA6UfTCjdt/8gDs8QRnq0F3PWloFK53Ydfqg/KsQ9RnTmDmum2Fm4Fo2PCo97
	OMfkykgcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6E6p-0002W0-7o; Fri, 06 Sep 2019 13:17:03 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6E6i-0002VM-Vm
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 13:16:58 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MKsSj-1hs7bQ0zoz-00LCUp; Fri, 06
 Sep 2019 15:16:49 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <rafal@milecki.pl>
References: <20190906051054.18311-1-zajec5@gmail.com>
 <20190906051054.18311-4-zajec5@gmail.com>
 <007d01d564b3$b63ea4e0$22bbeea0$@adrianschmutzler.de>
 <3dc6bcbd6132c0c470be5116de8512f1@milecki.pl>
In-Reply-To: <3dc6bcbd6132c0c470be5116de8512f1@milecki.pl>
Date: Fri, 6 Sep 2019 15:16:48 +0200
Message-ID: <009d01d564b5$5739c680$05ad5380$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQECTHRMTCLlI68ZA+Iqs4F85izFNQF8ofV5Ag+KBkQBSVDGdqieJPIg
X-Provags-ID: V03:K1:f/R3jYcKupXao7jWiEs9/UsD/tWL7kUr6lH4hOhOEbW5CdDgeCp
 Z0yINZe3a3CKLWKSVj2a8ZDz+3t0uBAgmHjLfcXZFrcVmttxGBRC6qhSLJxrRredbRqVm3D
 MBEeSBfZbU9Y7hPfI+4LFGnzS3FQiY5ZXi6gEqWnRwz1FXRNoY14Blmt5r5Gse5hw0zw7pK
 GAUIohUhXSgJma1ry9f2Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ks4n7grYvfw=:ZM8YK7ghPcxKiC2nqGAZUy
 StYg4IWUeJudDmzGWsawYT0kHHWUmnHXThqnpqfa/WNA2W8PqywugPXRXMPwLmk6DiU/GVTZt
 rT/towtV1mrhuY3XtIeUtBniwVtaAAgQXTlZqXkiUreh2T2ayBko9mzkA9TsRYf2aOcgag6nE
 W1lKIDQUtrP4C/+1XJerr6QNJdDjOfaCUWHQ1BbEOlEFw/YVsuer0pZd/cEype+cCLPjXOr/R
 gk1shNXQ1ue60wtA8cNtzqiLHHqOc0pZ5Hl4+25XINL7jaJgmO2QZeB76vDBelNf1qvizcQmB
 FjszHG/yBDBA6jzAi8+FZ9kLBTisGsbyfz38R9oOLxM7NdID7ncBIbO+Ud8Tpee1mnl0qL6vY
 zy37W/oReoQenBgqPJwhh8H6Yp83sXaekmvXsWhayRGm6H+3qQCkPr5wi6vBYJqKUDqsvNJUH
 aXj/5K95OKN2xMO0iE4sIpK6budF6XHiw5P3hFX4KMwwKDGDEQRjCEF0vsl16ej/V1lxQwFnh
 wrgzIsYNnP1ckzASuQ9mBPsg58i2IGOWXqzn90giWgMR7TELZGPieL442z4B3S2nmv8qFuCxx
 r8ACEOWC7I+v53JYEjuTPQLGQq2sLgSXVlwZWoR2mZckV0bvVOLHKdKH3PZX+/+l3IUG/8K5m
 hyMy3LR+AMU/uWxsm45xr1FVL1DJDQyf955weKlmTyNeYnOJzOTr/IXBfyVWFWm3aMM++BgHW
 IBEkYJmjdeEXprf80OD+UksH7eIiwtkgp7aHnSTbM8UiKqEiSgfyZ9TX8/xEIYeK19pd3lQx2
 1QO4Akb3Tr0Td5UFm1Ldx2nBvHS+pSv++xP7QjARXr7+mLObcDjM2661dq+WFbCsjWPHH4U
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_061657_312997_25C419AC 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use
 $UPGRADE_BACKUP to check for backup
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
Cc: 'John Crispin' <john@phrozen.org>,
 =?utf-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <zajec5@gmail.com>,
 'Jo-Philipp Wich' <jo@mein.io>, openwrt-devel@lists.openwrt.org,
 'Jonas Gorski' <jonas.gorski@gmail.com>
Content-Type: multipart/mixed; boundary="===============0486690089041995636=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0486690089041995636==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=eCYCyNr2Us74vz=-="

This is a multipart message in MIME format.

--=-=eCYCyNr2Us74vz=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Rafa=C5=82 Mi=C5=82ecki [mailto:rafal@milecki.pl]
> Sent: Freitag, 6. September 2019 15:13
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: 'Rafa=C5=82 Mi=C5=82ecki' <zajec5@gmail.com>; openwrt-devel@lists.ope=
nwrt.org; 'Jonas Gorski' <jonas.gorski@gmail.com>; 'Jo-Philipp Wich'
> <jo@mein.io>; 'John Crispin' <john@phrozen.org>
> Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use $UPGRA=
DE_BACKUP to check for backup
>=20
> On 2019-09-06 15:05, Adrian Schmutzler wrote:
> >> diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> >> b/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> >> index e313562017..8e02186eb8 100644
> >> --- a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> >> +++ b/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> >> @@ -74,7 +74,7 @@ platform_do_upgrade_openmesh() {
> >>  	#
> >>
> >>  	# take care of restoring a saved config
> >> -	[ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] &&
> >> restore_backup=3D"${MTD_CONFIG_ARGS} -j ${UPGRADE_BACKUP}"
> >> +	[ -n "$UPGRADE_BACKUP" ] && restore_backup=3D"${MTD_CONFIG_ARGS} -j
> >> ${UPGRADE_BACKUP}"
> >
> > Any reason for the curly braces here?
> >
> > If not, I'd consider removing them with this patch ...
>=20
> I just left existing coding style

I'm aware of that, I just saw that from all changed lines/files this is the=
 only one using the curly braces (without necessity).

However, this was just a suggestion and it is purely cosmetical, so feel fr=
ee to ignore it :-)

--=-=eCYCyNr2Us74vz=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1yXEAACgkQoNyKO7qx
AnBmgBAAvc4Au0GHQBBlQASHR0NWrS0f8kMMgzJ7nB8sN+qFTVetvoVe6PVEnLKf
EEjFYfOqVbrzuhzPLb3BqjcVQ+waIfc8g4P/yvx2FsJ4taYolT8g4/OMKAvI7pPl
NKnGhKon+Jp6qyLxnRCAk5Nz9q2gKdvd2mRhdH/Nn5suIDE+7SItEqzG+IULIr/c
kLb8BrP9+hfQSCg80aBwHAzBEj3N6ssAWprNHGcA0rKegyiWkiW4tdnB63Wt1kMj
IMpY5jc2fWL7cFW5HWMj+dwQ8BWVkZ0WccrbWUCj0MPGVatrGUJM+TBOtsZDTxZK
5vqKvyW5A3wSdDiQka+PDcRx8g1DCPrO3IjDwfPEGCkaODC3dvzjoSbg0i71LD58
5DnURWzQz34bVS6dTW1Y83RiMrkymalDLskxhUELkA5ezylXFFgj9mZ8sWhUvxnY
BouRnqkjrm04KD79gdyG0b5Kc85GcZSLAoxhswj3NBr68HUQKOg0UypJycxI0hQW
oz+BzFSJqwyHaMY9LVSqmGi+khIaDu+dp9yjGrOSB4bC0nUQRaxAgSokfzjrto9O
mYRDXLSTymOBMzYhUZHB7MgiOTc4RKr/cSLCl6gIrC/GmrOFoKs7UAHcQWpcpf6N
bHpDbQh5pxsmzR3m4WfDn5c7OzD5ul88kUaDD+HN1Yg+lN+HjmM=
=Ka/G
-----END PGP SIGNATURE-----


--=-=eCYCyNr2Us74vz=-=--



--===============0486690089041995636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0486690089041995636==--


