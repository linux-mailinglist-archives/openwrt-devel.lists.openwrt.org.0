Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27F513862F
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 13:14:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TTq0oRvrcNFJNQRNgHQ4aBio6Jb6TuFAKAlIGjqjx1E=; b=NcolW7qJAJ97O9F6qgBSAaXSE
	g6K0s59PJiaL2XHVZvLKnX7p2zicXw+Kz4NiqiQ19QwDmsERZvGrDuqHdynmXM3lsLW+8OFYSsWIQ
	Li1+Xm6+0ge2KZNFT/XHIwWdHOJZULAcAaojw6FvNtp+ufTPecKKyK/KDQIA/PkiRFJVBSV3LrYy6
	0wEdNhYVCY1lL7ZnBKSB8h5vK5GCCP6ZecXMIYRqOKxD0NxqLIaFJDNLsFuQNV05TvIAGsk+qf+VE
	Vj7+RAZNl4g5eMuvQ+o8G53t3sMk/48iRbR/hwl6xyn1La04PlWqNMNTYNhAO7OFeWqmdc5UaITMb
	t0y4kHYqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqc8h-0007KJ-Uz; Sun, 12 Jan 2020 12:14:43 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqc8a-0007Jk-Fp
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 12:14:38 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MDy9C-1j0Xkg1ey4-009xE5; Sun, 12 Jan 2020 13:14:30 +0100
From: <mail@adrianschmutzler.de>
To: "'Josef Schlehofer'" <pepe.schlehofer@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20200112101314.6332-1-pepe.schlehofer@gmail.com>
In-Reply-To: <20200112101314.6332-1-pepe.schlehofer@gmail.com>
Date: Sun, 12 Jan 2020 13:14:29 +0100
Message-ID: <004c01d5c941$d79633e0$86c29ba0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQMx5FgM9H0KteO9vPTy5i6ZqIJD56UuuTpg
X-Provags-ID: V03:K1:Dvcs1sCNLwuT5Eu9p+06lTAJrV96JonsZ0PTX1qp6fO672ktvfn
 WY5y42kC/U1eg6/qm9bfhh4e0/70cKHSbhBh1zFtaaoP3c13xkYbBhegbAIvrSABY7X2sIu
 J6QTfXhbSjiKA3kXrVbjq88z+YNPLBG1DemHACldq7tj4QxxZyvrnlQMnx5zQ/M7ZV6QZ7K
 MPRahggIQTvznl0X7CaHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:x66cHZA9QfM=:KHS5e5orVUAQx0gmVqyTBW
 gHurz44kHvD65hxQwEBqL76vXKwcGi60tPLvustUUqIGbr7gYQ6xGJiqbRhk/R4S6o96ChM5F
 F0KSO1NGCQ8Y5glUP6DdsAiJPu0v3F1rLG8H4jaaEQvUJM6k8mRvVUcH6C7w9paEGAVZYvSTS
 Jc8K4/OFwsrYxE95O5QkFttWaKvCACLUZM1k0LtubfDrK2/dJJpo/iTbHtc2q6LD7Luahshrg
 zfgvQoREm8kW/HUcrcezDncE0sMAFs0k9hnV7STZVQNqYS/HVH+bE0tcbCvXbfqRM4pYryVzP
 KVRVHMERmR9ftuoGhXyEePRqvrQTuk60BjKrIE2Pn1S94MRvOI7ZD8bqPlllYGAJ/CMt51E/6
 gz8n9SD3kXzktnZR1JuzTz4dbOvbPMHpkRZUtNIYwAdF3K4fChn82g5/PKd7TlFgB9itgfHrv
 zfeWs8rjSzOApuy+sdizLX3pM1hFEsAXJUIC6pFjTOvXu1UDmqsUZGr1xNJtsMp0lsF0t+ZBd
 jKN3jvgx3P/gVUM17VZwXx9hS2+GbIOITjNiHG5ICceTg/xH7hUEgjwcNAbAJKH3lPDSr9VUH
 rO7Jd7HhGT/QEfv9RvYXTOo3A1JZWbxB51pzk6DP8jUkQ6vrpptB918Iup6oyEZmM9acFbL8i
 xbX2101lF7huQPYIKeX3gg5Hho99QKe9frle5e2axQLT5k6cwR004J4VMi8ruiKfVM2C/FUL9
 Gseasn+Dn84+c3MkbWY4es7U3o6kCrKYm35MDYLmYqal33NNbQ/LyVzA1Ak1VfLhD6H1i8gRd
 HnanNXl/ojeH+AWXW3CpjQyl7ee3iGZ9wBJEKtz/eC0pG6voYPC2BsOLlAnFe4i5RDODJw1ht
 Jw4z0wNvMjC76QQay2ctsrxOvljPdE7n6s/miA1Nc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_041436_823053_C1FF5A55 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] [19.07] ramips: add kmod-mt7615e to
 Xiaomi Mi Router 3 Pro
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
Content-Type: multipart/mixed; boundary="===============2354632250302465996=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2354632250302465996==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=W/UW+tcOmDvXJh=-="

This is a multipart message in MIME format.

--=-=W/UW+tcOmDvXJh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Josef,


> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Josef Schlehofer
> Sent: Sonntag, 12. Januar 2020 11:13
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: add kmod-mt7615e to
> Xiaomi Mi Router 3 Pro
>=20
> From: Ozgur Can Leonard <ozgurcan@gmail.com>
>=20
> The package kmod-mt7615e was added to this router in the master branch
> [1] to have working Wi-Fi, but it is not included in OpenWrt 19.07. It was
> reported on OpenWrt forum [2] and tested that after installing this packa=
ge
> Wi-Fi works.
>=20
> [1]
> https://github.com/openwrt/openwrt/commit/d7c082ba4f7de97b3708d1f4a
> 064954ffc774778
> [2] https://forum.openwrt.org/t/xiaomi-r3p-no-wifi-with-latest-stable-19-
> 07-0-after-upgrade/52299
>=20

I'd actually prefer to just cherry-pick the referenced commit [1] from mast=
er to openwrt-19.07, so we do not have different patches in master and 19.0=
7.

I've put the backported version in my staging-19.07 branch:
https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3Dre=
fs/heads/staging-19.07

Are you fine with that?

Best

Adrian

--=-=W/UW+tcOmDvXJh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4bDaEACgkQoNyKO7qx
AnBk6A//SnRu7p9P5LNZozNY3ABuxqxpM5YRZzihYyJmnbeX06EhL/1e8voMDm0l
ekVaCgSF+sHMhuQWgCiBxah4xwiwXijHy85eRznquY2s31nAN542N4427jLsDVL/
sOoRBSv6zbs2HOi/Di5PDVUMbqPNPJJFB0XSda7r4uVO49tmGZ+hASPt3ZKBxcZ1
8+iz2Pi6U1wFV6fE+KjfW+gW/s16qSADxLQdv2dg2Y14sRz9dknXOwD+31bHWApN
edhcSsdGJioNBhzp/gxOEx81CBjKjJdHqGMNPQD6n0eQRb8Th9je9TPzRBNEM93v
WIsMDO5rzlw+JoaOhE5HgJU5Kjast91R6uRUA/k54ekwwYGJ4GWCfplASEYXj+8r
1nY3RIzXJOYBRsCLZ7gWfKnSlTNgMok5aV2DEIGPr3B2JaRH6PUgaRxe3Tum/Raj
3aGVysU9JAiREmXR4G+nw94uJ6aHQygl+iU9y34mG3EMq3k4NhnCmm/CZWdA1kFV
DIQnTVUHEpG8d0uW3tUi+AyIUrff1F6hZ/oioxbh9zalWiK15ladlNQXPQJYt87x
23MIhCOY90rNAi9D/CrnssFvcWXv5GZ+lW5XoYZuDjDJcHDV8JZWrTooyduTF830
tAZYsainUMIAMfQBgTdOPB/TpClN3V7Yd7WF4crdLjyo3ZGxCaE=
=AxGA
-----END PGP SIGNATURE-----


--=-=W/UW+tcOmDvXJh=-=--



--===============2354632250302465996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2354632250302465996==--


