Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7A9D622E
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 14:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dANR0Af1xCryz25Q/26RMy45S8ra1Njq9qfNkh3QZxM=; b=VCuyEXKJCflJNliuLNNqyzXQ/
	+ti8da3uBEaVEkWdBziEtvxzkjd1KrZOjnIauTtodOwvUiOQkQhkVX8co12XcUHSfItvFc3mdZB7D
	Xw1zYvB4xrc8GF0pQdhBzUv3iae+mDQ4PArZKRg2SWoc45gY90RMe7E2213fI4WuyRWkaOUoxg7Ef
	pEuVeShIzk6gv4hnxPVrmkftoxXoIo/I46P8rVbNAwmgk7AL+9TQOsUm3eDle+aYKP9S8PPDrDyOX
	v+LKy9sj7gq8hB+4WA1jJFB/rka+ZrK72khiHny/jlx9DpsTuvVRbzkZTfxbWgZDPI1WF9SekZu2H
	dBze2YmZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzJM-0001pw-Nw; Mon, 14 Oct 2019 12:18:52 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJF-0001pL-19
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 12:18:46 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MGzI3-1iGOP30Pid-00E9oH; Mon, 14
 Oct 2019 14:18:42 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Andreas Ziegler'" <dev@andreas-ziegler.de>,
 <openwrt-devel@lists.openwrt.org>, "'David Bauer'" <mail@david-bauer.net>
References: <20191006174834.3398181-1-dev@andreas-ziegler.de>
In-Reply-To: <20191006174834.3398181-1-dev@andreas-ziegler.de>
Date: Mon, 14 Oct 2019 14:18:41 +0200
Message-ID: <00b001d58289$846fd670$8d4f8350$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQK+Iv4yziDpX0/ONY/jHl28IqYV/qWIy4NA
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:URH2SqNigOA3FIZMTKTLjrWSIjCh+HOBaRFdt7NObQ3+aH81wm4
 jlw/sE38CezhJU141BuF//rKUkt0pQPs0xgQRCv63XeC/gPPNBz6iWMcWrag6wZczJ8Y+Y2
 RxXXVxck+BiB3bGJZUdPmP2hYuc46sRz+Go3L54gLxGvD2gStSDOCuH/CN/QIBC8W2JJ+I/
 BGN4E8NOR48ONUkmo565w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lx/xfH4XzV4=:nlkMgJACoIk+148y01X8c0
 rDO4Bsg15dMcDt7w302FfgIXbK5jHwPJmO8YMngWNaVAV5BJY5hiIrO0EXmSSm3IVo64jsc9S
 xfIY5y3gAW2cwmHM8bu1k+Nhg6W5J/sE5cLZNglm92s5KFkwtQpwFOGLCrw+b3dYwZg7yGvjn
 LzF4HupWoFPE3+uML589G2unjsBQKXfwR/QSkjtjqFGe29ofoXJlUKxkFPIWlK9FNhGhqB0+5
 fq1Nj8g0DRt/imLDC3t/I10cjjMwi1ontjgTAr483/PZdw2Lg4SHVOzSRtvdRKijtgy0S7h75
 3CddqYv4fHRKLUdVoby5Uy5ma3Auqsq6ilu0nBljrh4mk1V5Vn7VZinhnLvbpbfjoac+Gm0j4
 +getu0AyJGhWYrRcOo9SA4TWwx78ffb4uhbBXqPlN/pIinz5jJklLl6vT/XU8WEZqEIdHsY05
 fqACnrq7LvtkimyAp7Gj3mmqHdRGVcWj+Kt42eCGTSJOZCqcRYQTW/Ti/OBbqO+HIGhY9ThNm
 i15zRcRhrlOle2sGuW2xiPOFzy0IKAFr9SMMcxeOPQFoDlJ/OaFxyI6k5LDVqc8nZ5ZWnzY3n
 k8heXfIyVysarfzQqO4RDpSsMo5loxfVHf7Bd1y4UKd25tSJ/gMQ6G6y4lVAmIpyNy6QqA+K5
 hkKppZsf6EwHE718VZoFjYXKC71evY9V0WGjzbqwtTDy1KPLymLoFDsJESO8Kt/bg4l1YRqQX
 2HAM4sJqXobslFsIM5TUSL0bfKZVw41R2nvV3l4qVP3WohKB8p/wUh8DPVyCAtEoXEcF0X5CW
 KK572Huarl6emz1eFOVhHmKEbnWpJVNnsxXmF1duVynNxz69zul2OiS4qoK6dD/clSBjcHbbK
 H076daLfvzu+ls5v1qRCpq7XPs0ZyRk4ZiD32J3V0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_051845_367834_4D2F8B66 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for UniFi AC-LR
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
Content-Type: multipart/mixed; boundary="===============0218638676248380019=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0218638676248380019==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=CGBrM6w/wwnUGy=-="

This is a multipart message in MIME format.

--=-=CGBrM6w/wwnUGy=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

the device name is inconsistent in model string and DEVICE_MODEL (hyphens..=
.).

However, as this is only the friendly name, it is not really important.

On their homepage, Ubiquiti never uses hyphens on product names, only for t=
he abbreviations:
UniFi AC Pro vs. UAP-AC-PRO-5
UniFi AC Lite vs. UAP-AC-LITE

Since we are using a lot of hyphens for other Ubiquiti devices, too, I woul=
dn't bother for this commit.
But it might make sense to "correct" the friendly names for all Ubiquiti de=
vices at some point in the future.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Andreas Ziegler
> Sent: Sonntag, 6. Oktober 2019 19:49
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for UniFi AC-LR
>=20
> The Unifi AC-LR has identical hardware to the Unifi AC-Lite.
> The antenna setup is different according to the vendor,
> which explains the thicker enclosure.
> Therefore, it is helpful to know the exact device variant,
> instead of having "Ubiquiti UniFi-AC-LITE/MESH".
>=20
> Signed-off-by: Andreas Ziegler <dev@andreas-ziegler.de>
> ---
>  target/linux/ath79/base-files/etc/board.d/02_network     | 1 +
>  .../base-files/etc/hotplug.d/firmware/11-ath10k-caldata  | 1 +
>  target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts       | 9 +++++++++
>  target/linux/ath79/image/generic-ubnt.mk                 | 7 +++++++
>  4 files changed, 18 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
>=20
> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/targe=
t/linux/ath79/base-files/etc/board.d/02_network
> index 0de17adb9d..fe74bddbf1 100755
> --- a/target/linux/ath79/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
> @@ -50,6 +50,7 @@ ath79_setup_interfaces()
>  	ubnt,nanostation-ac-loco|\
>  	ubnt,rocket-m|\
>  	ubnt,unifiac-lite|\
> +	ubnt,unifiac-lr|\
>  	ubnt,unifiac-mesh|\
>  	ubnt,unifi|\
>  	wd,mynet-wifi-rangeextender|\
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath1=
0k-caldata b/target/linux/ath79/base-
> files/etc/hotplug.d/firmware/11-ath10k-caldata
> index 446b729a2b..ba39cb3981 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cald=
ata
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cald=
ata
> @@ -179,6 +179,7 @@ case "$FIRMWARE" in
>  		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
>  		;;
>  	ubnt,unifiac-lite|\
> +	ubnt,unifiac-lr|\
>  	ubnt,unifiac-mesh|\
>  	ubnt,unifiac-mesh-pro|\
>  	ubnt,lap-120|\
> diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts b/target/=
linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
> new file mode 100644
> index 0000000000..a1e542ada6
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "qca9563_ubnt_unifiac-lite.dtsi"
> +
> +/ {
> +	compatible =3D "ubnt,unifiac-lr", "qca,qca9563";
> +	model =3D "Ubiquiti UniFi-AC-LR";
> +};
> diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath7=
9/image/generic-ubnt.mk
> index 4b2cee215c..13af092ee3 100644
> --- a/target/linux/ath79/image/generic-ubnt.mk
> +++ b/target/linux/ath79/image/generic-ubnt.mk
> @@ -225,6 +225,13 @@ define Device/ubnt_unifiac-lite
>  endef
>  TARGET_DEVICES +=3D ubnt_unifiac-lite
>=20
> +define Device/ubnt_unifiac-lr
> +  $(Device/ubnt_unifiac)
> +  DEVICE_MODEL :=3D UniFi AC-LR
> +  SUPPORTED_DEVICES +=3D unifiac-lite
> +endef
> +TARGET_DEVICES +=3D ubnt_unifiac-lr
> +
>  define Device/ubnt_unifiac-mesh
>    $(Device/ubnt_unifiac)
>    DEVICE_MODEL :=3D UniFi AC-Mesh
> --
> 2.23.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=CGBrM6w/wwnUGy=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2kZ6EACgkQoNyKO7qx
AnA48g//ZiN0RryCWkNq1sOVr/1BjvZ+v8P8qwz+thsmdNU7AHo0uJ/LLRoJHnjT
CkoUZB7g7ksm/0+7u69pi/30Mqm3afwKd5vJ4Wmoz8RTqA+KFla3jBiDUx0q2lbf
yz7Q1aUKtUAzmnrro/m85+2QP/pGU4NU5UIJcQ2MXn/P/eMB0Ux1qDdCgRsqB4x2
YxoN3NyB//HNecuUJt+5hh7KDDg4Kod2NZH1EfypSLyBZB/iwDqZt0fAuhHzPKLm
i7XrDMTB1dSo4q7x0asf05djc8gHxYv3WNzxknn5coZGFCjlHdofIbfu74qM+y7/
iNFgWOKjPD9+B9HALYXu8YOd2JP/dHspvUcMD6BY/cpiAk0WeawQppZkdM6iUH/I
Gsf4bf+aX5rA47ZgHWH+/tucg4MfJAtUUdDCKerrQTfTJLs/Y7n1wY8FelVhokFD
7Ujm8b/GMqcnAv/qG8qfytT29/0tphln3h5EMWut8xwy4IYpbZW9d2n25sCNuUDt
9i7Hy4Sowhosd0NREDoLctjobskJ7d1UVAlW+oyIOqz6pqh2EPW4JfUAbXotr7EV
4jZQI5T1/ySPStNHwSTLXjBYFWwdmQlJOeabvkikGnJ2+19SFzLcnWLSEYGF3dk2
Nk2WTC+saAKCS+XOPWYbhTo2LiFbNWy2GrvcwahKVyisQeCeWcE=
=yI41
-----END PGP SIGNATURE-----


--=-=CGBrM6w/wwnUGy=-=--



--===============0218638676248380019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0218638676248380019==--


