Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD05BE9BD2
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 13:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nXWuXuxp2O0FKZvsdngL/eM2m9yjfv+QbwWR57uXwHU=; b=uAwJ+n9vPnoI3D6gjLMFL/zwC
	+oJL6vFxSkAPwNUQ02Lgdq7DHK2Jyvs+CFmaH39L49ZFO0ajCFTYrya99+f50+i7mfXab1dnUlov0
	DjxXvR2mivSz8iRB+bj8mj85UrzjkvuHDSHVPVo6TaLnzIFRoxqnEF4nxYIhHHroy4uHvkx7fAW+u
	lDvBV8gtqVCpSPtELubd/cTXVka/kzkneZiB/9cGldUBDR5jTgKyKQ5Eqygr736rODsC1TxcjxSl6
	L/lQn+VYey695kv2Ujyta+FMOX/Tht6PV6dvw4vKESoax53vjeZ+z0Hx/yhDaaZu/bG6tJcV+g1sm
	kOKsURq0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnQt-0001nc-4n; Wed, 30 Oct 2019 12:50:39 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnQR-00016b-Aw
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 12:50:13 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mq2rM-1hdrPI14RW-00n5Hj; Wed, 30
 Oct 2019 13:50:06 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20191030123221.7a0af3ea@kosmio.komorska>
In-Reply-To: <20191030123221.7a0af3ea@kosmio.komorska>
Date: Wed, 30 Oct 2019 13:50:04 +0100
Message-ID: <004f01d58f20$8e12cd60$aa386820$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQE4ZxIgITOci8A20peAqGYj3ww1IaitbbMg
Content-Language: de
X-Provags-ID: V03:K1:1NtQEQczG2Z26kjZdcb7GGXAJuG81vR8jxyc8nVe3iG3NGy6DKz
 AozrP4zjKulgwPwaAVCHLQQLHdmevyqql0e5nxa3cFFmVUomrTc1o+/oU+ByTQb/8LBt9dh
 oF/OrClOWHm/JMnexglelwklwfiJtNItZmtQ9Jn/I/vCDnai+DLkaVjArIKasDSW9YULOR7
 FxHk1axaV1Sk5++Rv1Y3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NS6VORwMDNw=:LLDq5aiCGAhVRLgzIriQf0
 /YAzxSZlr3hnYPqrZX6LLwrzCNa8W5VYkn/QznXn2gRUKMSMSq9vYW1xKDL/TckQKx5aG52VO
 bJb5vsislrbqYUlRnmxcGdqHJ/5IgrG4k4rK5+7B6kYP3mTHx+FDlOBMaUcLR2IKtS7eUMlaT
 /nBrBBmYIXCHzSx1OH4ZANa1RkHllreiHtaczZ6d4m4BPvvyOVI0UbWYobDUfI2azUsmYgNYV
 8ev0urD90H8KAbsGroqxGWibLSBS1C3Kfbx6Df6ZaRjbdo8Enlj6HnzwBjCzJfEC0MCElddvo
 krKMTpqEMh8MrFbSAbIA4xP64TdiLsJgiw+/lDHoMXgkjQqu4WEyWXIgo3eC3c7fO1eLEk5xq
 P/xoYVKKlOHOkgPBci6QNUqify+UjV2uCijH4vhy1prq8j+NfxX2tmBfOa+M53x0YC7yCZWMe
 ivaAtwXs8U+e8BFiS+mXpbdT3tREEFMhnxK0U2te3ostp5CnJ39iIWIot1mhh3nK8WGLAgdEd
 Cmr46boDnG8Jq4svTEQQ8JZSPbnZlprhKddXxS6Nx2UxnFCNoK6+4sRIo1m4MG22Ub16zm6oh
 9RXQKzAhQs8HmcgCxgJXf5Dyix37Kfd+muE/9K80m+w8PJIPHP0Y/79f+y6KxY5fgRCqqhxcK
 QMdUQRh5XGzd5VaZkrJ6RrJQ4cPNT425/yGQCzZYMtCFo+nrrBGHilXP1Zr8sv8aytM3qDfLO
 n+VbzMKtUjCFztVGtavE9+o6jKicjn2MalAygq3DPSNXm8PUd/pcZoMbaHK33j1hLFEKH5+ja
 XXh0qf1zgPB+GOcKKWfpQT44VPRAC2bGOrlfSLMgoGirUihPTjtzwypzRWv/NTCq87lN5AB1T
 NlRYleBE/AaDGuDhYbNZWvZeYOMyWhcI1X2qymm+Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_055011_675530_574B371D 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============0578268579296537848=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0578268579296537848==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=VH7zCfYwSakUOx=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=VH7zCfYwSakUOx=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image=
/Makefile
> index 24768ef5e0..b6ac83cdc1 100644
> --- a/target/linux/ath79/image/Makefile
> +++ b/target/linux/ath79/image/Makefile
> @@ -77,6 +77,7 @@ include ./generic-ubnt.mk
>  endif
>  ifeq ($(SUBTARGET),nand)
>  include ./nand.mk
> +include ./nand-netgear.mk

Same question I asked on zyxel support: Do you expect several further netge=
ar devices to be added to nand target?

Up to let's say three/four devices, I'd prefer to merge stuff into nand.mk,=
 otherwise I'd say a separate file is justified, so we do get a .mk file fo=
r every vendor.

> diff --git a/target/linux/ath79/image/nand-netgear.mk b/target/linux/ath7=
9/image/nand-netgear.mk
> new file mode 100644
> index 0000000000..b25e6ec66c
> --- /dev/null
> +++ b/target/linux/ath79/image/nand-netgear.mk
> @@ -0,0 +1,34 @@
> +include ./common-netgear.mk	# for netgear-uImage
> +
> +# (pad-offset 129 =3D 2 * uimage_header + 0xff)
> +define Device/netgear_ath79_nand
> +  DEVICE_VENDOR :=3D NETGEAR
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ledtrig-usbport
> +  KERNEL_SIZE :=3D 2048k
> +  BLOCKSIZE :=3D 128k
> +  PAGESIZE :=3D 2048
> +  IMAGE_SIZE :=3D 25600k
> +  KERNEL :=3D kernel-bin | append-dtb | lzma -d20 | \
> +	pad-offset $$(KERNEL_SIZE) 129 | \
> +	netgear-uImage lzma | append-string -e '\xff' | \
> +	append-uImage-fakehdr filesystem $$(NETGEAR_KERNEL_MAGIC)
> +  KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma -d20 | \
> +	netgear-uImage lzma
> +  IMAGES :=3D ubi-sysupgrade.bin ubi-factory.img
> +  IMAGE/ubi-factory.img :=3D append-kernel | append-ubi | netgear-dni | \
> +	check-size $$$$(IMAGE_SIZE)
> +  IMAGE/ubi-sysupgrade.bin :=3D sysupgrade-tar | append-metadata | \
> +	check-size $$$$(IMAGE_SIZE)

I there a real need to deviate from the sysupgrade.bin/factory.img naming s=
cheme here?
I didn't find that naming scheme anywhere else in ath79 or ramips.

> diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10=
-ath9k-eeprom b/target/linux/ath79/nand/base-
> files/etc/hotplug.d/firmware/10-ath9k-eeprom
> index 88a40b5d41..ae1d3572a8 100644
> --- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-=
eeprom
> +++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-=
eeprom
> @@ -9,6 +9,9 @@ board=3D$(board_name)
>  case "$FIRMWARE" in
>  "ath9k-eeprom-ahb-18100000.wmac.bin")
>  	case $board in
> +	netgear,wndr4300)
> +		caldata_extract "caldata" 0x1000 0x440
> +		;;

I hesitated when reviewing the DTS section of your patch, but since this ca=
n be merged with zyxel here, I'd recommend to change the partition label to=
 "art", which is frequently used for that very reason.

Best

Adrian

--=-=VH7zCfYwSakUOx=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl25hvUACgkQoNyKO7qx
AnCZKw//U6yaJ/ipezimAS1EO36Z5RKlbjGtqf492ObKaP1VUwMIsA0NMj6bTKil
ECxcw0Ir3K4qXkAMSLi9xuPPkCjhT1d9lF3KO4IDExXo8HrmJHz/d9Et77gPUwOG
Sg1MZRovRFnJT7/jJGtQepaX55Mpspd1sdnO4CSAcOLEBEfWWdxf+Z2Gpz+HcOEU
QR5L3NG1mv0r4Wuqphn8goG7mSRrNGUvWN+cZ21RPvb/2UJT2i8VnnMgH/UPkIeU
zsZOzQUGgeGmL1XP+3q1XRsTuQWts1Miw3yWYmtoz/eT5E+dS8qUTy/DTNPdf8Pn
au3gPFxdtdddsJ3+fqB8eLX8kRb4gkk7NizuwKrTf1oyEeGV7GAGNWvBo2J6e6aq
130ftjKtCDnknpaGG5y4xJAG180l0y9D0nvdCH2LjVIYZgc5NxyYhuq1E+E+Dtsp
yh72B6yVpriztWy+ab7HzFUrZWgQUB+OsnxSqZ8GPrxxdaJOCuSOjb8CIa70D6u8
wian474uuKTmrO+4lnrlkB2sydAi7cLBkGLRRvkvmt1pZmCfmBvoRoYBFnfv0nZm
eRZqnFC2PN0m/pug/Lp6D4V5SxUYDh3LuqfvR3ShBudQLEYn5ha97OGSyANEtIJJ
DZNE34rPWCPW3lYD/sY5GDNz/6tLHxUb+0F4jvsKeRlNK42TRvA=
=fPKq
-----END PGP SIGNATURE-----


--=-=VH7zCfYwSakUOx=-=--



--===============0578268579296537848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0578268579296537848==--


