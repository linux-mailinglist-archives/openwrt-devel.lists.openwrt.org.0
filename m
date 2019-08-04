Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C178280CAE
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 23:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fmfmFqLCeJpGQDbZkmOni4GNv7iD5XVtrvic0YnPiOY=; b=rTqj37I9UEPV3ZpLTfts8+nOa
	R4FVJhHMzcGSrs+DbnaHiKhydvC8komQ3lrXrkGyKgDgi5Mi0K40aWAVKONHsu9z8tFNFVIj6ZVMO
	KPGcrFFE1feKtYrPxG7ltrY02Z58GlUIvLjxc16qfZTh9xTAU+8lnwr5w4dB//22lI3ibcv1Urbwj
	dB/TLA9qO+gZYAAA/QgMeZAPs9Mu+ZAOVQnM/CTnQCH+W9Qr+d7cz7mJduTqzMZ4wSlRRA+SoiHKp
	s+5r4rnAlKc6MQXdJ0l4+nbz7y1HTFxFKw56Ba7fM/vXTHIMoE2SpbdHvm6Y87pxdpfl53SZJ1G+3
	xFHhHGElQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huNfD-0001VU-5Z; Sun, 04 Aug 2019 21:03:35 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huNf7-0001VC-33
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 21:03:30 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mr9Jw-1ifK8C0RcM-00oEhp; Sun, 04 Aug 2019 23:03:14 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <20190803234256.2880-1-freifunk@adrianschmutzler.de>
 <20190803234256.2880-2-freifunk@adrianschmutzler.de>
 <20190804205253.GD12735@meh.true.cz>
In-Reply-To: <20190804205253.GD12735@meh.true.cz>
Date: Sun, 4 Aug 2019 23:03:13 +0200
Message-ID: <01a401d54b08$07e0eb20$17a2c160$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQD8JuPOZi0JcoaJS/9ES21FjwiNBAFQSRodAlMYQGyogKcOYA==
X-Provags-ID: V03:K1:Z8ik8wqk09ZGFno4y/83H//KtexYstOD/zJJikGnBlJ/csEvRwX
 TPOCcCsMh5mCoVkk3TJkmTvOF/lP2LndcdMhzcagen5dTGUK0LszFn85riGefZwv9ysvZic
 YqWRaU9GnVBg3ULri3sQd+KW6oh9B8qcKXYBzShkgGx2FljAL5sfCcAyRugPrZr9EidJgPX
 FPvk7opC2Fv5sBHCc7I0Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6hxvbtUp+Dk=:UdAqsy1Nicd//zF0GcA0ro
 P/fbokFU0GGG/kiwAsQrHeg7/Gh1d4UEyc+KBYxsJGRf36Cua92vBY2Tmj0tY272F1usVqB8T
 hOYEABtzhJKZGgtuktRLq4R9U6mYlxcDYid5lmmLIjtcEsuID+cfZU7/GEhrXB18IsNtZo3Y+
 mlYg8p40tDSxsFO4pToX+gPiFqrT7Wlk+B7BNuo9AvIlWf4xBfNgyvk7EKt3YR4ERJ7rfEWsj
 fUrm/7waLG1093RrtJOeVZX08UM+K9IiHFEYxpV5Hn10xJbJdLJEhI7gAqLFo4pAZutEWGV2D
 ho3sJShJXK74WXflndNsHoezJ7ERMlvzx12gpAzHSspWK9eAsuQDBvB4yNBk+TasHNKMDY6bE
 zBMxAvFh7WMlbpovp4M7TAnUBg2pYmwWdkLEYYrI/elBeEubE2UZtOXiWzz3dkYRg+bFIoGdM
 knVy9rZympywul6jVxtgoxKh/QSofAivnCrpvQwJT8KC2EHCjScBfkfABdhmCgYXr2u8N5fQ7
 bg1o4vS6lVgFMeumG4UoOkwYqKWeJl/6XtrD49jEkLndnzAI7aghn/W/Oq+HkjDQ+Mq1qyciX
 II/cllem1ICUDaWqz6JP6B0CQUCmYkBgP7Yr+pCAZka8AnfL5QJ1tUoE/+gqAzE1byhEDdBEU
 eMcNTefbmoBKtB6kJGOhH0cG/snNb3mPCT5DYlyx0FJMUzs9FYLcarPQ1ihOfVSEFLYjUw23I
 WfMGyd+Eo0Nm8NLHe2ueyLcnkR/qhk9su4PQoRisSmE8V6IZ6hcxC9n6DB4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_140329_428869_EEFF598B 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] mediatek: fix typo in Banana Pi R64
 device title
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
Content-Type: multipart/mixed; boundary="===============0760888634094841319=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0760888634094841319==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=MmJ+26YtVXSKXC=-="

This is a multipart message in MIME format.

--=-=MmJ+26YtVXSKXC=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

blogic included it in https://github.com/openwrt/openwrt/commit/efe09ef67f3=
737349552df44cb0d256aac6b4cbc already ...

> -----Original Message-----
> From: Petr =C5=A0tetiar [mailto:ynezz@true.cz]
> Sent: Sonntag, 4. August 2019 22:53
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 2/2] mediatek: fix typo in Banana Pi
> R64 device title
>=20
> Adrian Schmutzler <freifunk@adrianschmutzler.de> [2019-08-04 01:42:56]:
>=20
> > Reported-by: @86423355844265459587182778
>=20
> Uh? :-)

--=-=MmJ+26YtVXSKXC=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1HSA4ACgkQoNyKO7qx
AnBxghAAsrsUulNhYZGISMlRWNtxH7mPj/B9nCI17x6uYTrDQYupiNk0/XFOimmS
qA27CTdFEmN+px13YoNCLvD8rPi47GAIJJ+fkO0UXCzC6cjqoAU+fXBWklmfOXk9
27gdOGuCGzU7/s+Z7rThiZmbEVb/kJ4pR0ENYtBeQj5w4X0Afv7brjpZoHKxz32o
3PlmTmGF3eotzALgigUiHNf+7bQGW9YguhjPaYipovkLd/FiOaqjRMRCKGWTjIjH
9C6yvrjN+V4e3PpVGZ7OHhmXj189J82GOzQ+ENGRubS39x9nVfA0FKnED+/S7Ocp
AKWapbr7KkDpIxW8aQC0Mvq2bAdQC9+ZWMZpNLKSnqEDPPvxmEwPsVk9b+0hDKzh
yn9jhOicADjXFGCfnmNOwdRAAl4vj3RsxGKDUiDnDlbsPWrtAsAmsu7J8Oip6hfn
mYOSFu0n6EnJd4AjMbC9JbXGKIvk51rc7tkSPlGzYyBPH45gA6VcpjjoLhQNlW9+
T99pnRGiWQDsYa2MFhaL0owB4HHHSJRAFgoiWlsVE1RFLlzYZnd0JnAd75WbuO2w
kbZiTSxn1CJJXLggCpW0uOALQr15TdM9aRudZ3+ADLjNRd78ChCM1tGZsucI8p7k
5/Az1DYdH0YMkECIV03IvIy211PCMKlVWivHP5EdKom76ymYkFM=
=eqMI
-----END PGP SIGNATURE-----


--=-=MmJ+26YtVXSKXC=-=--



--===============0760888634094841319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0760888634094841319==--


