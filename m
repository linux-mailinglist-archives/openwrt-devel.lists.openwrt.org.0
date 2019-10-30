Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3379DE9DC2
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 15:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wH6v3NTpWw+EJNauZcsOpe7aTTgjrASGQn78dWPDOGU=; b=FUm7Qmbsp8lZ/j6kgh6NpzFOq
	Wv28iN9RBpSyhXIlnUdD6oYlDTsMknFVmkXFTIq6JM0v0+tV1DwowtDiiUu37FsPQ/BviRufi32AZ
	smtrPCuQZ5415w9IqZO2Q+22ZEII1J5qNyPrZil0JBrMk7AX2Dy2G17mhiSaYZSi7GCuAYpmEKz3w
	U9a1WGkHGm3d32m6bo6N7ZDb5f7FIPNulQwqflEFr7BzyNtA0FufMJp1cQW+LEMg+ELR9JTbx8Kfw
	R21SWkQuQ1FvxBgdyNT0j/qGxSR/gIYIN8mRys/I9UAWOHUp03OBhfSW8alI4JZHJOmwzIsK/S/Md
	hKQAFZhWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpAP-0001Ws-9y; Wed, 30 Oct 2019 14:41:45 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpAG-0001WE-Sf
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 14:41:38 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mnqfc-1hbdNH1SDi-00pKiR; Wed, 30
 Oct 2019 15:41:33 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>
References: <20191030123221.7a0af3ea@kosmio.komorska>
 <004f01d58f20$8e12cd60$aa386820$@adrianschmutzler.de>
 <20191030152532.5b67428c@kosmio.komorska>
In-Reply-To: <20191030152532.5b67428c@kosmio.komorska>
Date: Wed, 30 Oct 2019 15:41:32 +0100
Message-ID: <00c801d58f30$1fe4d3f0$5fae7bd0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQE4ZxIgITOci8A20peAqGYj3ww1IQKaEkRTAvnYJoaogPBXkA==
Content-Language: de
X-Provags-ID: V03:K1:cdIscNGUgs7t66S9NVNBjbZoSoBgD51Ziz8wPTim5f0/6VpR3UJ
 iNKztjZa057lxtqyJNboyO3xX9ZJSoR6De8Vr5l5mnBrmV/linIw7j/Z9/I7nqzy7FxEO4n
 c2EFIuUGt+LracDls+IijWgJ7O77dT5w5z0HCeSYBGB7YQurorvZ8izIFrRuFLfYABZvvca
 5Wmokl2ob54H92kfHOznw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:szKSM8iWtn0=:ITTk37f67DYP6Sv4zKy2kD
 8ll697TiZHnF94PacXH69AAI6olvjh7RsYjLd1e00Viu/WRvMJb38CyLd4N89UeuWdYCes+v8
 VqLAWIQ1/eMa8WtXvFp3sIDGOdEwdnytB4kx++nzFdRc1pxvDTK0DWRAFsO5FAZdhf9XHG7A3
 voh3rmCrWehHoqK7goFl3ZBWjI4iHmT6dHaQxqoY8SmF0RpJbUBLCJUFnYQIZUMP3h8EWl3We
 x+1lMiHCYc29LXth655uJIEu0AFikj542HMMZcHnvp0La+psycCKfAC6C0Aqmh83w0I62YhWT
 XNqLGAJa0T/SBjoqVMzT3FtobafqrdiL2SIe84GNHVZs3jJO9VlgdhhJR7OstN2Dz4yyk4dHI
 ofC7P38y/OrT+IsQHNoKBB5Rb55fcR8nliQ0dLU7LiFD8PdYbibnpzXAIEMoBvbdla+GKCIMY
 i4q2icHHHfKT5+dqLkCic1UVqrSMsbvpdJJLcSWA2LNZM5u4yju4qA+iR+0IVq0GBjoprfPSO
 yfTQiVlFia2rg7hmyLPonMR8vUnUlj8+k6GnQmpQ2TzQ/ZqZeKTNJVK9cDNr4gfW7/GEByZ19
 EPkZ7NhKRXuTUGoF2bx13s25tPSDxNcO7xtrrRGpILBF6cpxyuIO4uGJ7LhqrHHFX0rv7Wm3c
 bffAYB3uQQzyZZcEhdeKAUa38aOC6JDOMpGZ08JagFqKVk8nK5aqhEBTcZwfS3MOwKR3ykAW4
 1KOnK+sANRJFC2BOVMOJPrFFOYTmcoV/S7BjqNwQB7JRoIRe3z1r/Vv9Htt4w+Tm6vrUUh+Pc
 qDa3L9dg0n80nrq1vA84LY5TPZnZwwfHMt+XnHY88UENqKcAm/8n0GV5lqy2Z75XU8G5mDX5c
 +mtonEawBbh7WFPfIAh6tprNTG72thuA+F2mHIwQw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_074137_222672_1D25B42F 
X-CRM114-Status: GOOD (  20.95  )
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
Content-Type: multipart/mixed; boundary="===============7501756371639158759=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7501756371639158759==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=Us74vziR+9dYET=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=Us74vziR+9dYET=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Michal Cieslakiewicz
> Sent: Mittwoch, 30. Oktober 2019 15:28
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for Netgear WN=
DR4300
>=20
>=20
> Hello Adrian,
>=20
> Thanks for your feedback!
>=20
> > Hi,
> >
> > Same question I asked on zyxel support: Do you expect several further
> > netgear devices to be added to nand target?
> >
> > Up to let's say three/four devices, I'd prefer to merge stuff into
> > nand.mk, otherwise I'd say a separate file is justified, so we do get
> > a .mk file for every vendor.
> >
>=20
> Yes, I'm planning to take on WNDR4300v2 (which, as usual, is quite
> different from v1 but still QCA-based -> ath79) after this one gets to
> mainline. I didn't investigated that router yet (it looks like a SPI
> NAND device) but I expect it to require the same image tools.
> Anyway, it is your call, I just didn't wanted to put Netgear-specific
> stuff into main nand Makefile.

I'd still put it in nand.mk, for GL.inet we will end up with four devices t=
here.

>=20
> >
> > I there a real need to deviate from the sysupgrade.bin/factory.img
> > naming scheme here? I didn't find that naming scheme anywhere else in
> > ath79 or ramips.
> >
>=20
> ar71xx replaces 'squashfs' with 'ubi' in factory image name, for ath79 I
> couldn't find matching rename function in mk files, so I decided to
> append 'ubi' in that very simple way. Again, I do not want to create
> mess, I just wanted to preserve information that ar71xx provides.

I commented on this with no deeper research, so keep it as it is for now.
It's not really important enough to waste time on it, so I don't know wheth=
er I will have a second look on that.

>=20
> >
> > I hesitated when reviewing the DTS section of your patch, but since
> > this can be merged with zyxel here, I'd recommend to change the
> > partition label to "art", which is frequently used for that very
> > reason.
> >
>=20
> It is for compatibility with vendor naming 'scheme' (which I agree is
> inconsistent by itself), there is also 'caldata_backup' partition that
> is a copy of 'caldata'.

Well, again this is not really important. Knowing about caldata_backup, I'm=
 50:50 for renaming vs. keeping...

Best

Adrian=20

--=-=Us74vziR+9dYET=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl25oRkACgkQoNyKO7qx
AnC9lQ/+IeW2w74oKusXOV5JkfDhM7Rh89z1Qclk+0QsucFCamSZ8N2QgcgVyGmr
+y57WILOOnCmxdWVr0MRY8Nx3OzRKQuZbMypx+DMStTG4UtdgaMwZfRDBsyg+u42
0PLnTP2xRKTUyHk1JchEOpmxhByj5T7yIpq7RJU6M/652Z5fRUbPK3iNqHw4QFZ7
sObXoKqs+Innz/nQVRcSBOYeCemVC4fF4ERIy2h8IbwvcFrfuQWdY3W/TAzsa5F1
QGY0WnXNhhed6HKa5hLGCJsb7mCNJgaksSIV3r6Z/1PHn/LIM+WES72W4NCGw5iY
eFXtXNEspduvZK+WSebsksEH8xG8rJRaiHB7yzEgWsntJ94P+s2NpYvLx8RHXscG
o9d2IUCLXVtkWZyBqju9JauaM7SNB+h7YGtDpvV2JCC7P6EweJqrM68WbnpBiGuE
nqH7LFOykdaJv2Cr9bwCauMfDuqttHXS39vjJeIFSp3b9MraoKu5ilcWGpAIEf+8
XvbdCAydd3xkA8kQ/M0TB5BkLOk8xy3xBGDBHk+yAPLlmpjudj8g5CR4krquMGJk
O0+nS42LxT/XQCd9ylBCfDQ6c+CFPto824vjxaz39qv6T0NYoRRFw07eXYyOQCKs
ZrodPlhoEy1DtohvLJScpomzLEBQFhPe/eRnCk98zu7NPJY9pNM=
=qVC5
-----END PGP SIGNATURE-----


--=-=Us74vziR+9dYET=-=--



--===============7501756371639158759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7501756371639158759==--


