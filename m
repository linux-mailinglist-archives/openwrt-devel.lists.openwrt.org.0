Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FB514346C
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 00:27:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L3zPGEbB8OaevkfjOMB7Nm48b4hTK1/bPRiYo51IbzM=; b=hG1GRQqbejncsrawRYFT/lOz9
	YSuQR80xFltKrLho53m7SyFvWLRzZA1SGd10WI3fxFaDmRgocup/gPHiAAfJ0/k2GlDclIfx8XMTI
	6nXwkyGV9FA/o2CKDowbnww+T5A3LNamvV73wQXpNatNHeWbpKhrT+ngQ9cqNkFYCehex1w5LR9aX
	76wAnAP9wJAGYHq02lUW109jJx4WiXl1497ajVr35UFEzBdidgh/2DXIT2hYpAyB5FvOhYuUqDLve
	4GZE3WfLFecGV68YPgZ3FV7wdIULQZGHc15xypN3IbPoyoQekdT2RJePawvSx+PKeuN5wqdikcchX
	YxhpxervA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itgRh-0000pW-6M; Mon, 20 Jan 2020 23:27:01 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itgRX-0000oy-7V
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 23:26:53 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N64FC-1jiRbO07OC-016RFy; Tue, 21 Jan 2020 00:26:42 +0100
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
References: <20200120194024.25841-1-ynezz@true.cz>
In-Reply-To: <20200120194024.25841-1-ynezz@true.cz>
Date: Tue, 21 Jan 2020 00:26:41 +0100
Message-ID: <00d101d5cfe9$126a1790$373e46b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIVsuySktPfIYJohjynWu/DYjCzOKd0amBg
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:YLhl7wq8gn+VZ1Df3BigdABGcw2t7YJlZA3ttYX8763CpxCIyfj
 anF2bYeicPmGe63ZX3l7DsoGNXrIWILvWAS9ncHKzAxQfNx/aWwhQWislwmWY17kSTMHyrj
 lCB8awHhQqM9bebDly0Bvlw3vcJQH2pt7LdVMEOefxZO97OapeNRhvLGJGn5QRshbwsDvfC
 f30ML8yVjywZTfQtigpOA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WiGsSPdaGU4=:+Io5yyuCsMPVKz4UtS+mGc
 QjLs8Vug5PmRInw8vlGAe2lxw6ZGLWxY2faBjl2vLCxCUQnTCMDrKoZPfjI+fybV/O8rotPUF
 NWN7qTffzfJToZE0C+tbZS8Z4yYZYVBM9/3uczn8/5nNyj4In+zGLATZwXLOJhumWnloP5wXu
 PGxpB8uR3WVeA+QWcz3a9CBeir33TJCC7apdoqQWfLyvjfadbGeOIeQNvgGF9LYYKLWPd8c0O
 JEHBAwQaYlAyDcVEPuXCOKM+JPHpK+3sZGCfzfJ3aeVrW+thThYkGjsxgHQnWk1nq6FGsH79a
 4LABj3q6vYmoxHsxHeZVKgLGX5dVzIoqZyBKtiVxV13MYdmlLcacY8Y5QCfkAOX3sAC778nm4
 SalPmFrHf5EnCKnerKfnQ/QCQclvo3Yh6hNJajWPYQOuOyQ8RhWqul+7ePJIjcLoUmspFp44W
 /2yqLtdlIIgNBuCLHwMwQ6dMkpxHQJEhc8g00DRSKpdzqWoOprfekPrm3fYIRIVkg1y4h5vDn
 F2HtUdow/JlWyWvPftQiw+rdoBiMxTNLYmEJk4W4FQT/1ou2rYrMDxzd+ebVwaFWo+VwZC0Jf
 eVEBHBHbRadXGj4KbiAyFDLXigRwqfEyR2Zb3wB35E6rT/PKwuFjMeGFigGk2Vxk3i4oSvMgu
 s8s3qZLkZjss0i418lYRF/07Sq2eQ9Z2npIYKGo3cq2rMu6O3HY/jeJcTtw1nWONkchL0ybsO
 fzCvD6rh+4ia6YWgwGic4n5D+O+kg7c5rIWWxkl7sZUnNeFkusOku5URE9zcLRJdjveL3u0dE
 UyPSoI7ZvoOgorGrz3PLSW6hdFSCZOJq4Qoj14iCTh2vW0k5PITU1Zn4ZgEoL7wLuDlrcxodL
 p5CxoVn2rF108c3ICLuAjDmL5WwrdxevxFP3MRTBk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_152651_565886_E9F80B94 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ramips: mt7621: ubnt-erx: allow
 sysupgrade from master
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
Content-Type: multipart/mixed; boundary="===============4598874652422586997=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4598874652422586997==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=gaQuA429SJy2e9=-="

This is a multipart message in MIME format.

--=-=gaQuA429SJy2e9=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Petr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Petr =C5=A0tetiar
> Sent: Montag, 20. Januar 2020 20:40
> To: openwrt-devel@lists.openwrt.org
> Cc: Petr =C5=A0tetiar <ynezz@true.cz>
> Subject: [OpenWrt-Devel] [PATCH 19.07] ramips: mt7621: ubnt-erx: allow
> sysupgrade from master
>=20
> Currently it's not possible to downgrade from master:
>=20
>  Device ubiquiti,edgerouterx not supported by this image  Supported
> devices: ubnt-erx
>=20
> So fix it by adding a DTS based device name from master into
> SUPPORTED_DEVICES list.

Note that I changed somewhat between 100 and 150 devices when reorganizing =
board names in ramips between master and 19.07.

So, unless you have a specific reason to deal with this particular device, =
there are more to come. ;-)

I thus personally would not start to actively support "downgrading". On the=
 other side, there is no downside to adding downgrade support for this part=
icular device, so feel free to go ...

Best

Adrian

>=20
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
> ---
>  target/linux/ramips/image/mt7621.mk | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index 53a264f527a6..a8999974731a 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -483,6 +483,7 @@ define Device/ubnt-erx
>    KERNEL_INITRAMFS :=3D $$(KERNEL) | ubnt-erx-factory-image
> $(KDIR)/tmp/$$(KERNEL_INITRAMFS_PREFIX)-factory.tar
>    IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
>    DEVICE_TITLE :=3D Ubiquiti EdgeRouter X
> +  SUPPORTED_DEVICES +=3D ubiquiti_edgerouterx
>  endef
>  TARGET_DEVICES +=3D ubnt-erx
>=20
> @@ -491,6 +492,7 @@ define Device/ubnt-erx-sfp
>    DTS :=3D UBNT-ERX-SFP
>    DEVICE_TITLE :=3D Ubiquiti EdgeRouter X-SFP
>    DEVICE_PACKAGES +=3D kmod-i2c-algo-pca kmod-gpio-pca953x kmod-i2c-
> gpio-custom
> +  SUPPORTED_DEVICES +=3D ubiquiti_edgerouterx-sfp
>  endef
>  TARGET_DEVICES +=3D ubnt-erx-sfp
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=gaQuA429SJy2e9=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4mNy0ACgkQoNyKO7qx
AnDacBAAmFySJ0nAGt8h3AyLWihUUqL1axdW7WgNIEEhjGNUvDRhnnBNPfcFdnfk
5UB25KCls9cTcjFMpV6QwY/C7dXzBtUTnc6vboIPD0JoJ0yrJX4CftdOd3g6se1m
P7wq+L+qH41K+0/HajXBjzedhkP9gK/YWVyF4QW0NyOG4o2rnxpfk/r9jm6RcxjO
zEoFxH4s14Cc4OJD8KCv7YbtjpKkdkhOt4KRadlHbh3scL/4JKGgkBAK6aCl7zNp
qnzDv+g6h31dQByfrkCrUedRlZySt31yEqQyDttjK/7CZpsRHeKeK5V4nGGUzG4q
JTBTFOMoERG6nXvm1gINyyZHj12cqMnUKc9d7vNS4NpdKIFvcqDT2lY4RakyM7bm
WNd7ePzmbzv+PeZbizfni6zKaXLoIttaBp/cs7xvVvNMR0y0cfjJKH2eEtngsluZ
1N/sRKoFNBK62rqZgRBpKpjVsQUS9ss6yZ62KOFmtjUrGIeeW1iaVDz6BE0W70Yb
asmCiGvxa76plEsN0yJhBFCRkSTxsUpN/Fjk/9BesVQPoQNzRdwc0Cfk3whsZMnn
g2S4ryBEFpVn+BYejwHW7wArc3/LLJa7MLoTA4aml2Q5iqZH/PPhyrvFT38ZG5Na
/Fta0TC9zdmMGOsr0QUpjEgvFQ6IScDPsTH7hmf7A/cX6K0kaR8=
=86Uc
-----END PGP SIGNATURE-----


--=-=gaQuA429SJy2e9=-=--



--===============4598874652422586997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4598874652422586997==--


