Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED38E70A7
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 12:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JKQu1y8hZfiS65G4uipy+mEvAaL14YTLxFwNeX/kr1s=; b=bi3pTdSP1k62AKMapwSOHjgAj
	RxRTc5IUyk2ADVaOKdGK8zQn5mFK5CC6vLQImNIkOudCW9JNUEYylgso9xhPg+ZyHOKCVwV9++Cd/
	8ZppSt/gIyGUTfV24Ywcpzfip6+FOKQIkbLoUKnTm9r5NCE1G0gLo/fukrPBJ2uvJcHdybip1aLvp
	OtGUWvX/z0jUxKf11DiKFQ0MhjGVQTWYyGCS+tdj6k0C1512EhEThl/Fw+VebDlxsHznWbsfsWByf
	MMdoGczu8QWNqdUau/YFEBWll9cVvu3pCidSxFeoy3JopJmMO0N4jBvVMPSrM69AWKMqTQPtAhBiN
	hiVF0lWvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3Qb-0002H5-Gm; Mon, 28 Oct 2019 11:43:17 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3QQ-0002FJ-EH
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 11:43:08 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MZCSt-1iTg7X3WjZ-00V81o; Mon, 28
 Oct 2019 12:42:58 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Jeff Kletsky'" <lede@allycomm.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191025035501.3063-1-lede@allycomm.com>
 <20191025035501.3063-2-lede@allycomm.com>
In-Reply-To: <20191025035501.3063-2-lede@allycomm.com>
Date: Mon, 28 Oct 2019 12:42:57 +0100
Message-ID: <023c01d58d84$d8b92730$8a2b7590$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQGRs/fqTmB7XytZB/vDwBH7b5BGQAMRpLFbp98T0+A=
MIME-Version: 1.0
X-Provags-ID: V03:K1:Cjih2Zf64my36REGaDChkxs/GlxJ+qbbZEwWuKkGNYBNXh73h05
 9vcMXSIY3BozgWtAw3p06AesGFJjivxs8yp3WVvRLzFbvEGwFtfps79u59Psn05fj9xByYl
 WkeQ+coVazbPQLOMc0MXUsnl00coI8wqp1aEY6qlmgxAt3BdRbC36tLyg++4bHAvaI+rshA
 dlaY8/an64NtIQU75HBLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7eSX3CNNa/w=:0njWpn9S1kcK0C6M0izM3E
 Iqk1KVuY27zY0qrnG0vW2/hc2vbz4K8punzjxg6Os4Sbot6Zf5X9dDYDC56dLwaScxo3OWW08
 sKaxbPqzjw4uRR/aXTBOlona8C82ojdGwCnER8EfGNk4oH3RyhrauzoN9mM0WoZ/2A/Bau1Ky
 oVFGF2gO00Z4/2kvqwUhQ+/zT2MdJhlMPj1+Fvz37NrxV4BB7t/HilUHHd0pS8s203Df49IWc
 4XV1uSGRWzH6RA8m8a1anwXsAJOC91wvVdkvoeoOvv3q1BkOV5CMIG+5htJlJpXyj6Bd9TCNu
 VWW4cmqt6w3xkbfQw/i7ufcSyp/gDBDLTh7TgT0OaXEsEAfavVCkLfP4drZ86UQyglNem1n1s
 eu5zwZ8p/gpbjG649J42hyfSlhMLxZZBbDEmz0Mqa0ugE/hqy7viGKn3q4t7laAI2Nd5gwjEO
 R6hYLUPjS8Nn3vJ0O5XErSX5Rg6xFZW0AQeOpS0f7uJ4K1TIl6bveqD34wmjMvtwLEmTjD0T/
 Bce4JhkzGUfXaMt7dNL5+ZztqIwl3mzK25TIaNFzVZO2zWnMC7kcCZ/e5hJzwExCNtO9QB/f4
 xIeuh2D0Yv04oFHWegfghSlPv2VCi8Ncq6/Rnyc9lDPerpwe3OpmpzI3ACUG7EoJqZhKebvoT
 nbHEQztYUE63Yrv0yU5b9ShaRTdFpdbSc/WQutKtJoRydj4exz/63Pcmkhyt5Xom6SaR94JBV
 RsIwjICIHVmmuN770wtPTphcNRsIIfrNYWv0+Q45Ix/mky+5FKEegHDGamtBRUQlKrhvYEE0H
 5drEzw63JzayxUXjGgC0stdhC5oywhqmAocxlBinD8/Fyd0TrSN1wWLmPm6vv6xnUHokNvejG
 x+6azoSowUAiYIKORXdMWo8Fs4VKcFF1I9gGxJmoQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_044306_789431_6AA5E168 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: Remove legacy GL.iNet
 GL-AR300M NAND target
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
Cc: "'Marty E . Plummer'" <hanetzer@startmail.com>,
 'Jeff Kletsky' <git-commits@allycomm.com>
Content-Type: multipart/mixed; boundary="===============5603353194660652979=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5603353194660652979==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=QVeqA8A2CLXr2x=-="

This is a multipart message in MIME format.

--=-=QVeqA8A2CLXr2x=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

after the recent changes (base-files split, new nand devices), I don't see =
a benefit anymore in removing ar300m-nand first and then adding it again.

I'd vote for removing this patch and doing the small remainder of it in "at=
h79: GL-AR300M: Provide NAND support", as this will be clearer _now_.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Jeff Kletsky
> Sent: Freitag, 25. Oktober 2019 05:55
> To: openwrt-devel@lists.openwrt.org
> Cc: Marty E . Plummer <hanetzer@startmail.com>; Jeff Kletsky <git-commits=
@allycomm.com>
> Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: Remove legacy GL.iNet GL-AR30=
0M NAND target
>=20
> From: Jeff Kletsky <git-commits@allycomm.com>
>=20
> Remove the sole board on the legacy ath79 NAND target
> to clarify patches that will reintroduce support
> on the MTD SPI-NAND framework present in Linux 4.19
>=20
> Cc: Marty E. Plummer <hanetzer@startmail.com>
>=20
> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
> ---
>  package/boot/uboot-envtools/files/ath79       |  1 -
>  .../ath79/base-files/etc/board.d/01_leds      |  1 -
>  .../dts/qca9531_glinet_gl-ar300m-nand.dts     | 34 -------------------
>  target/linux/ath79/image/nand.mk              | 15 --------
>  4 files changed, 51 deletions(-)
>  delete mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nand.=
dts
>=20
> diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot=
-envtools/files/ath79
> index d5b94823fd..c0d131142d 100644
> --- a/package/boot/uboot-envtools/files/ath79
> +++ b/package/boot/uboot-envtools/files/ath79
> @@ -17,7 +17,6 @@ alfa-network,ap121f|\
>  buffalo,bhr-4grv2|\
>  engenius,ecb1750|\
>  glinet,gl-ar300m-lite|\
> -glinet,gl-ar300m-nand|\
>  glinet,gl-ar300m-nor|\
>  librerouter,librerouter-v1|\
>  netgear,ex6400|\
> diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/l=
inux/ath79/base-files/etc/board.d/01_leds
> index 499fe0031c..5beba7665c 100755
> --- a/target/linux/ath79/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/base-files/etc/board.d/01_leds
> @@ -101,7 +101,6 @@ glinet,gl-ar150)
>  	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
>  	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x0=
2"
>  	;;
> -glinet,gl-ar300m-nand|\
>  glinet,gl-ar300m-nor)
>  	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m:green:lan" "eth0"
>  	;;
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nand.dts b/t=
arget/linux/ath79/dts/qca9531_glinet_gl-ar300m-nand.dts
> deleted file mode 100644
> index 26c30f2b72..0000000000
> --- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nand.dts
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -/dts-v1/;
> -
> -#include "qca9531_glinet_gl-ar300m.dtsi"
> -
> -/ {
> -	compatible =3D "glinet,gl-ar300m-nand", "qca,qca9531";
> -	model =3D "GL.iNet GL-AR300M (NAND)";
> -};
> -
> -&spi {
> -	num-cs =3D <1>;
> -
> -	flash@1 {
> -		compatible =3D "spinand,mt29f";
> -		reg =3D <1>;
> -		spi-max-frequency =3D <25000000>;
> -
> -		partitions {
> -			compatible =3D "fixed-partitions";
> -			#address-cells =3D <1>;
> -			#size-cells =3D <1>;
> -
> -			partition@0 {
> -				label =3D "kernel";
> -				reg =3D <0x000000 0x0200000>;
> -			};
> -
> -			partition@1 {
> -				label =3D "ubi";
> -				reg =3D <0x200000 0x7e00000>;
> -			};
> -		};
> -	};
> -};
> diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/=
nand.mk
> index db4ff9c6f0..e69de29bb2 100644
> --- a/target/linux/ath79/image/nand.mk
> +++ b/target/linux/ath79/image/nand.mk
> @@ -1,15 +0,0 @@
> -define Device/glinet_gl-ar300m-nand
> -  ATH_SOC :=3D qca9531
> -  DEVICE_VENDOR :=3D GL.iNet
> -  DEVICE_MODEL :=3D GL-AR300M
> -  DEVICE_VARIANT :=3D NAND
> -  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbpo=
rt
> -  KERNEL_SIZE :=3D 2048k
> -  BLOCKSIZE :=3D 128k
> -  PAGESIZE :=3D 2048
> -  VID_HDR_OFFSET :=3D 512
> -  IMAGES +=3D factory.ubi
> -  IMAGE/sysupgrade.bin :=3D sysupgrade-tar
> -  IMAGE/factory.ubi :=3D append-kernel | pad-to $$$$(KERNEL_SIZE) | appe=
nd-ubi
> -endef
> -TARGET_DEVICES +=3D glinet_gl-ar300m-nand
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=QVeqA8A2CLXr2x=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl221D0ACgkQoNyKO7qx
AnD29RAAlXvxp4KKik2ZDsH9e9nv4HSqmxHXOJHrz64IHqBueZN78wj1/hX2KCct
uHbtqOZOyk77YUGXNC0HT7jxA3U1Hrp4kHdWAxb3dNfkSeQaFQXAPePyjxhWqJHb
tc71D7accf5FnRDfqEvaOMc9zhdtE0FFFgtsg3tkGGvu4MkbQhnhaB44urCDJYsN
5MoRAgh118L2TWm693LdVQr7DsDbbF5A6eco+9zU7NAgsz4N4PK/EB86vQ1LIhGZ
asF2hnHipEa951HYzbnxrQ74TaxpJEqA/ZV1i3L/+YlE1TpfNWXdMLWqpY6zHIfD
Qs8ayg+r4Vaqs8hzv1vOqPcMuAzfsbSzJnwJ98AnIQnvdxEKOPzZspm5jVajrOwY
BhxbjoBycguVev80H04mKTUeHFvOklGPAKZVAc2eOUcZR1WQ07do4aDtkXmRSXSg
JKR9dHi1Ovx29nwdGkgJtgaqOqs+Kr5pO9JUJlzpAWMoHONzG3RUweMMnzuCwaoI
VH5yhVOtRFtVxH/WD31l6aJcoQrwWJuxbBOkDAszJiQkMuv4rYdeUNpElCdWF4tQ
RovTWg+Jq+2TvVwb+nDKasocnXquFOmhuAISou30xtlLJm6B5wJ7wYAwuWbt2VCo
0+Kup5ioHIIbeSV3BFj6DkA4VXK7aaCGJSFqitTy7br7d2jaaF0=
=Ucpu
-----END PGP SIGNATURE-----


--=-=QVeqA8A2CLXr2x=-=--



--===============5603353194660652979==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5603353194660652979==--


