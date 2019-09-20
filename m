Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9957AB8E44
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 12:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iAzjttn3WfPfIeBa/R4Hsjogqq56xCLQO+VXW5kgPKc=; b=cOS9CcIyh0KOOy99AMeEqXqh4
	vLWygsG54GA+9JTdtRD3e+E2n/DF+7PYmsLAv0W2KOZOhq/NCeudr2wYlVSNV2ccyjuGTdx2v8Qyw
	Z244W6A9zW72ocGICQAYjxhigOrrB4c5xucm3DE59guIudnpT4+4IVJ0UacEkBz22FpLQNlgODWFd
	XYBvJkvCabwNHUVIGA820JpIGGOvDQ1sYRN30bhfiCKzSyQlvMOffAE+OM3UsEJyIGmC789vNHtl3
	zLdrNfyUHoYbbM3Cqqiuv3Sv0OepjulYc7Icxtb2qTL+P8TWxSVwMp2CN+4kQxLH5fgLrS2WiL+L6
	EA9QSCAUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFp7-000787-NT; Fri, 20 Sep 2019 10:07:33 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFoy-00077L-HN
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 10:07:26 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MWRe1-1ij8kc0ADj-00Xq5k; Fri, 20
 Sep 2019 12:07:21 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Kristian Evensen'" <kristian.evensen@gmail.com>
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
 <20190623092448.27880-2-kristian.evensen@gmail.com>
 <20190920075558.GA21104@meh.true.cz>
In-Reply-To: <20190920075558.GA21104@meh.true.cz>
Date: Fri, 20 Sep 2019 12:07:20 +0200
Message-ID: <004e01d56f9b$310876f0$931964d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIBhalghVajNI65YBj9XBnXdhr9RAHeAdF/Ah+sgjOmvDzcwA==
Content-Language: de
X-Provags-ID: V03:K1:Y86pi8xFrTbGQPGn6BvVvhcuG3+rDImJPsKnb217lMt+sET7Z55
 BcC3IFm8IujtJPc9hC8WLc8De54SloD5ELvKi25rp+WTGDyaAJ7f1P2qllTsGD6ulcOrakR
 8OYC5IqnhmyEjCSoRxWQXf3x9eoi2o83iq6Le4sWmRP1d82HG+9yjXnjfFrQ9j8l7RYLvcX
 b076WzTIlsULcfrNNKboQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rueMqpjLEQ4=:c2DnzABE1GYiY1b7EFjE7C
 LD24t85GYW3UpMf07A22cPJGfRk51wXuXh2Fd5D07LJztPrd+HK+CzUNo7dAq2tK9uSTFR9Wz
 BiqvGJ7kLLc2NkcYAtFYclbujXotSK7g7Libp79A03dxqo9CgLDBJy/ZvAPx/P7w950JBhSRU
 upujm43JMxN53Tb7nqc97OiRgH5ByKDON3xQiYyhlWyo2vj2RFiGFVL4qKjGKFRyvvANOB51N
 Kq84o8LeEdKwwL4h++p8xyWo4wx1gyf12u+zqvaGx76IjkJgSpXxeWGgz5vRqrWnw+PYQoUHB
 7RAFD8hoy/rqGcO/rkit940c5JMGeaGJ61/Wcnew/bm+m75FMauYSAFHyariWi+MSvvgak4t8
 Qbj3GEAz86jOAstJsZCcg67gNIPxeMgnh1GDoF/DeD/Av02IpaB26UDbAokBBta4pvGZo8vDF
 YsYJAXrcAYzULYSNF8UiY5QofVis1zsZ97XXoqav3/JqRBd6cRpRYJnUTqmEn9aJT3LA2sAyL
 TbLUvK2iJNIe/+yjIcO8epILO4MO6oTf397oiUHWUrjlvPQKwarNbWoecFsre1FnXYAkl4q1a
 Wucp/XOH6zvHDY/wI3lBUShUNr+r7xegdIoHcJ8zVkAT5+dskOHgOusw+Jn7lkhZSuN+fxgtb
 J4wUOtHqcqWcIAsr/Kl/v0tiGSnYRnw1mE/+xhVkOOeJDJ1OeMABNKmE4Q48hYtDH5bmn+O0j
 JrbmescsdolzcEopQJkUQMBe0GRvdrN2p2HK7K9FFdbXsu+Lmzi6RstGRkWdazDRDx6uAPjbG
 lgVi1G6bdtb+/1NU7hNuEn+/ow0erOOsOxNITEZHA7cIe4sdwfE2q0dYHG3MR9PvGlhkgZFQ5
 KrjpKjnK5QOFfIrw++XsVSEACKouOMlLVR26mfDtA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_030724_871906_697B1801 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-files
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
Content-Type: multipart/mixed; boundary="===============6161378171484342371=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6161378171484342371==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=P1mZdqlA3r4BHE=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=P1mZdqlA3r4BHE=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Petr =C5=A0tetiar
> Sent: Freitag, 20. September 2019 09:56
> To: Kristian Evensen <kristian.evensen@gmail.com>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-fi=
les
>=20
> Kristian Evensen <kristian.evensen@gmail.com> [2019-06-23 11:24:47]:
>=20
> Hi,
>=20
> > This commit makes the following changes to the WE1026 DTS-files:
>=20
> could you please rebase to series to the current state of the tree? I wou=
ld
> like to apply it, thanks!
>=20
> BTW don't forget to include the license change ACKs.
>=20

Hi Kristian,

if you deal with these devices again anyway, can you check whether WE1026-H=
 has the WAN MAC address at <factory 0x2e>, so we do not have to calculate =
it?

Best

Adrian

--=-=P1mZdqlA3r4BHE=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2EpNUACgkQoNyKO7qx
AnBRqRAAt9XPGqbsllwbZ1D5jo9B3qjcZDWqjrJTfxssyMVmsDkZ2DGe3fIo3tfB
ogNEi2fzRonJlHU+pHusUOCAq0wuIHdA+/sJVH3eGAc96hypAaP5M99+chslJNf1
Hr1ZKgq4XMkg4JpMxpo6vVcDiAQS8Uxx7B8eE/Q88Z69tNWxuFmrlr3RNHFWv80n
m+a+x+QuaEllHKnA3pwtP22kisBe4aQlm2rNsFvXhFbwsaI4ghMQncix188DUkJJ
t8Tp0r5rEQXCsHR1ypAuf9Q3WFRJEkhaAXEA9ONohYcx2dp4n8nsCGXmQ2dV7lPB
hDPZem/CirZyfYWrjTQFB2RZrdJ0mta/i12bwKkYC2fVucDhA6o92DDLl9Pb3sYQ
VCo/aclIPmMTe+R1EFvgxi1HyXWqGwRol3dRjC5nHaO/FA0JoZbwKvgYjR/aswKd
wsTZV26JUeqChSFz7767aL3P9wD8VBfrouQkFQUe+KTo1OGQdJPo6iNS6qNqDP2I
Q9B5q2VdefBGetA5CbtfUKF8xvg4hVl+uk3AByyp2y7BC7vYpqt3YGnTRpyStBPu
sy/7m9f4MeWnNeOCY3+J6cNznRC85zJ4A5pfnCvu7RRBVRmczoKOwMbCMCajQNnZ
xfbnyi7R8lhuTE/85VPDPrn8kJ0y2okMurKh3hJKzk5VIpFsbKI=
=TuM3
-----END PGP SIGNATURE-----


--=-=P1mZdqlA3r4BHE=-=--



--===============6161378171484342371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6161378171484342371==--


