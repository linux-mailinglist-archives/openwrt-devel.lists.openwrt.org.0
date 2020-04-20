Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAE31B0DA9
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 16:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ICjKUzrZWJx5EwvLW8MctItIuO3EnjI5ExpViQhlIvo=; b=oH+ooYc1Qp7Iw6L980EcvajEd
	U3CRQZ1XOp/rSSZFdhe8spGHqRfilbZlznn1wvx8/pfByZVfGO2oYgJy+mfORg820JFMMXt5PiAHn
	v2Lr96WMYZpdvazNb6RGmrV3xRW1vNfvp6Zqnps6ZEaHKE9ooqsW/AObGZMLU9T1NxTusrDY02IF/
	emMwbIwjEov4tJsdE3iMJsTo7w+j4yyh0BELJT2+LgwFu+nwYahqoaqQbe2GIrDT34pClEEVa2CLw
	okNfRjlqFOYUaLbJpGKlBw+wVGnwAQQSoIIwbpat6/GPA9HSG5S89xay3WJRwdzZAcTmnaxxm7ZpN
	GTg24zp+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQX0e-0007fg-0h; Mon, 20 Apr 2020 14:02:52 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQX0V-0007eR-Fq
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 14:02:45 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M8hMn-1jLsB73uYD-004hix; Mon, 20 Apr 2020 16:02:41 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Thibaut_VAR=C3=88NE'?= <hacks@slashdirt.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-9-hacks@slashdirt.org>
In-Reply-To: <20200420133503.18700-9-hacks@slashdirt.org>
Date: Mon, 20 Apr 2020 16:02:41 +0200
Message-ID: <016101d6171c$5b79a430$126cec90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQH9rhEV/dFWOkGBLi2xOlxjqT5TbgDi1dO+qCvFaTA=
Content-Language: de
X-Provags-ID: V03:K1:tKW+79JZ1r/K6p1D+2uRJAN21jK5A4+ER8hxQWwOU4jCght+npz
 i0cogVB7Afsv2eGJUCXWB6/3S3jCOdQu4BxKppoDoK3u/5nzf8gYMn0k9mIpsXF0e4P8N1w
 ffKBzDGYSDyzI26yNvwlK3dn818zs+IoPqrOKm6dI7ZGA3bMjCCe0ZlfhO12ziRYwYoJM4/
 H5DeV7qbgSZoLUxLVMYEg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ljqL2nCsAxk=:ss8wzucR5eJcGITxLOEe4r
 oRfAv8R6vYQGj7RvOTW1myb30H0sNAnM5AK/zO+wbU7mOVVFzR1LiCRPY95FBwBvLkZsbvgtp
 DfO+JDU1q1gBAJNEkbXOHQDE8iEgGDMLt6iz81v9daglZf6KN6HLvlZNzNWrA3xWaKJyOf9Fc
 cRAAt1RuT1ls49BznZDbnta05H6AlrjDDC6W8iVinlhfk7CpwLBn/oRs/CJGq44+vB27JRm/R
 z23CinYejjnnwt06v04v+kPMr5aIS+UBKY4MFmzXjp3FlEzyZB1Z7meN5MisGtj2wZrfM7nYG
 fwRzcrEpx9ZBTCpKZrLXbinCFd5C32mkeh40xCQJg9XCDSKOeJSy61LZSHKB2AQ2jWo2U6Nue
 zuFq2gI2SYf2pvngSvw5YA0Daf0h4HmFUVKQEtQVyC0EBT9+jlwnec6C6NI/O2ElQQTXzvEV1
 KUbIB3B9kMremY5A9u+Khm0bw3AKGQTKGZfEo5Uqot72UfuFd3MYd69Hs4YR6XHxZREPYPQGA
 0l/Wg6cBA2qsKH0LC3MeuXsLhdjqLBS4K1hnT8eAQA5v6OnrKZpn9WFNurbnaPD8sm/keMbg+
 +URvhLblfVEXfvqVMqnbsxipsHMHvh3tUstl9qqR6VgD/HPbGe+JMsDuZeI4u7gZwec/433j6
 F5DGS4PmxB+hZsyy1wU5iaFLgnF2wyQYcKk6E7tmu6yTs1V8ksRcsohK06bIUBOs9cU0LOMzO
 Ed4civ6qh1dSVkRsZmB3qQdRhj34nWmt6DxdovNN+96kmv7TSlRTEC0dnUR1pbZvZsJIuo+Vq
 KkZqSPzDw0Ks7pw71YPXq0yC3mytKUhaPt8ulOMbfm4KlBeeurlAKxq9p5JQLB05A6+RoQU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_070243_817559_ABD9FB63 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH v2 08/14] ath79/mikrotik: use standard
 caldata functions
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
Cc: koen.vandeputte@ncentric.com
Content-Type: multipart/mixed; boundary="===============0518356344655222946=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0518356344655222946==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=7zcgKgPdWvFTpX=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=7zcgKgPdWvFTpX=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Thibaut VAR=C3=88NE
> Sent: Montag, 20. April 2020 15:35
> To: openwrt-devel@lists.openwrt.org
> Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>; koen.vandeputte@ncentric.c=
om
> Subject: [OpenWrt-Devel] [PATCH v2 08/14] ath79/mikrotik: use standard
> caldata functions
>=20
> With the implementation of a sysfs interface to access WLAN data, this ta=
rget
> no longer needs a special wrapper to extract caldata.
>=20
> Signed-off-by: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> ---
>  target/linux/ath79/image/common-mikrotik.mk        |  2 +-
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom         |  8 ++++---
>  .../etc/hotplug.d/firmware/11-ath10k-caldata       |  7 +++---
>  .../base-files/lib/functions/mikrotik-caldata.sh   | 26 ----------------=
------
>  4 files changed, 10 insertions(+), 33 deletions(-)  delete mode 100644
> target/linux/ath79/mikrotik/base-files/lib/functions/mikrotik-caldata.sh
>=20
> diff --git a/target/linux/ath79/image/common-mikrotik.mk
> b/target/linux/ath79/image/common-mikrotik.mk
> index 292237c76a..4cf0aa1cac 100644
> --- a/target/linux/ath79/image/common-mikrotik.mk
> +++ b/target/linux/ath79/image/common-mikrotik.mk
> @@ -1,6 +1,6 @@
>  define Device/mikrotik
>  	DEVICE_VENDOR :=3D MikroTik
> -	DEVICE_PACKAGES :=3D rbextract rbcfg
> +	DEVICE_PACKAGES :=3D rbcfg
>  	LOADER_TYPE :=3D elf
>  	KERNEL :=3D kernel-bin | append-dtb | lzma | loader-kernel
>  	KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma | loader-
> kernel diff --git a/target/linux/ath79/mikrotik/base-
> files/etc/hotplug.d/firmware/10-ath9k-eeprom
> b/target/linux/ath79/mikrotik/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom
> index 86995de890..be2f6aec69 100644
> --- a/target/linux/ath79/mikrotik/base-files/etc/hotplug.d/firmware/10-
> ath9k-eeprom
> +++ b/target/linux/ath79/mikrotik/base-files/etc/hotplug.d/firmware/10-a
> +++ th9k-eeprom
> @@ -3,7 +3,9 @@
>  [ -e /lib/firmware/$FIRMWARE ] && exit 0
>=20
>  . /lib/functions/caldata.sh
> -. /lib/functions/mikrotik-caldata.sh
> +
> +wlan_data=3D"/sys/firmware/mikrotik/hard_config/wlan_data"
> +mac_base=3D"/sys/firmware/mikrotik/hard_config/mac_base"

I'd use the cat here already as well.
Note that in contrast to the 02_network case mentioned earlier, this one is=
 _purely_ matter of taste, just wanted to mention it.
If don't like it, just forget about ...

Best

Adrian

>=20
>  board=3D$(board_name)
>=20
> @@ -11,8 +13,8 @@ case "$FIRMWARE" in
>  "ath9k-eeprom-ahb-18100000.wmac.bin")
>  	case $board in
>  	mikrotik,routerboard-wap-g-5hact2hnd)
> -		mikrotik_caldata_extract "hard_config" 0x1000 0x440
> -		ath9k_patch_mac $(macaddr_add $(mtd_get_mac_binary
> hard_config 0x10) +2)
> +		caldata_from_file $wlan_data 0x1000 0x440
> +		ath9k_patch_mac $(macaddr_add $(cat $mac_base) +2)
>  		;;
>  	*)
>  		caldata_die "board $board is not supported yet"
> diff --git a/target/linux/ath79/mikrotik/base-
> files/etc/hotplug.d/firmware/11-ath10k-caldata
> b/target/linux/ath79/mikrotik/base-files/etc/hotplug.d/firmware/11-ath10k-
> caldata
> index 2521f0ad96..b486a5720d 100644
> --- a/target/linux/ath79/mikrotik/base-files/etc/hotplug.d/firmware/11-
> ath10k-caldata
> +++ b/target/linux/ath79/mikrotik/base-files/etc/hotplug.d/firmware/11-a
> +++ th10k-caldata
> @@ -3,7 +3,8 @@
>  [ -e /lib/firmware/$FIRMWARE ] && exit 0
>=20
>  . /lib/functions/caldata.sh
> -. /lib/functions/mikrotik-caldata.sh
> +
> +wlan_data=3D"/sys/firmware/mikrotik/hard_config/wlan_data"
>=20
>  board=3D$(board_name)
>=20
> @@ -11,14 +12,14 @@ case "$FIRMWARE" in
>  "ath10k/cal-pci-0000:00:00.0.bin")
>  	case $board in
>  	mikrotik,routerboard-wap-g-5hact2hnd)
> -		mikrotik_caldata_extract "hard_config" 0x5000 0x844
> +		caldata_from_file $wlan_data 0x5000 0x844
>  		;;
>  	esac
>  	;;
>  "ath10k/cal-pci-0000:01:00.0.bin")
>  	case $board in
>  	mikrotik,routerboard-922uags-5hpacd)
> -		mikrotik_caldata_extract "hard_config" 0x5000 0x844
> +		caldata_from_file $wlan_data 0x5000 0x844
>  		;;
>  	esac
>  	;;
> diff --git a/target/linux/ath79/mikrotik/base-files/lib/functions/mikroti=
k-
> caldata.sh b/target/linux/ath79/mikrotik/base-files/lib/functions/mikroti=
k-
> caldata.sh
> deleted file mode 100644
> index 71a1bf02f3..0000000000
> --- a/target/linux/ath79/mikrotik/base-files/lib/functions/mikrotik-calda=
ta.sh
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -# Copyright (C) 2019 Robert Marko <robimarko@gmail.com> -# Copyright
> (C) 2019 Roger Pueyo Centelles <roger.pueyo@guifi.net> -# -# Helper
> function to extract MAC addresses and calibration data for MikroTik -#
> -
> -mikrotik_caldata_extract() {
> -	local part=3D$1
> -	local offset=3D$(($2))
> -	local count=3D$(($3))
> -	local mtd
> -	local erdfile=3D"/tmp/erd.bin"
> -	local fwfile=3D"/lib/firmware/${FIRMWARE}"
> -
> -	[ -e $fwfile ] && exit 0
> -
> -	mtd=3D$(find_mtd_chardev $part)
> -	[ -n "$mtd" ] || caldata_die "no mtd device found for partition $part"
> -
> -	rbextract -e $mtd $erdfile
> -
> -	dd if=3D$erdfile of=3D$fwfile iflag=3Dskip_bytes bs=3D$count skip=3D$of=
fset
> count=3D1 2>/dev/null || \
> -		caldata_die "failed to extract calibration data from $mtd"
> -
> -	rm -f $erdfile
> -}
> --
> 2.11.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=7zcgKgPdWvFTpX=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6dq4AACgkQoNyKO7qx
AnDvvBAAuyi1VcI4Z50Ym5tK8Y/EdrD5CxK3EUAcfJV+iUBgEMvaEAlU9myqoZwX
fcVxOwkksSEDxIHnCEg1ULaKcikD070agjQBNgaGHWhmxy3MuTVzDJXlTxcC+Tms
fX6TbLv4EzBMxz05p/hdLbY5BZrth9SfQGn2mREdq2sdtGUdcS0nfkrug9vFMCCE
Dg5JNW3AHTBRVpsTn6YES0h0eso5iomaaMTqWHPg1Aj7r2x5AYSfZaNmwCVgpn1x
7MsacsWFruu8hi6CapPpbiajeYpbnvWawXOpFae9pDiw8sco74CVCHOvJzFeKzbH
XH6Jb3V55JpdGulax9jHZx4K0DzQRSmYpj6lC+IrqEQbW9Awml4VPjWLjlxETdmF
bjYXalD52pl8rDtPV/nq6/qf39VfRfqjDUYTFru3YwMj8K1b8SaoABVjxUj3xqIZ
rtXG24Tt9K0Eh/TWxqV+IB5a0qKKQkp5+1Hp0INd2guNkW/exnyNmMsM37qrrEAR
Zphn047kURXah5qOZe+Hom+3Jp/lt57nx17w4kDXX47IlZxbGbkMFy9oHIZ52sRb
2aNQ9khA2DeoL2zK/LaeNyTS3m/KNqOyfENIrAPrQL39dp8toD5dZZanEDH3I4eY
l4QOX0FbtEnw2Bi1/bia44M34qc7mu91SG0xon63rLe9+PZK6VA=
=aF+m
-----END PGP SIGNATURE-----


--=-=7zcgKgPdWvFTpX=-=--



--===============0518356344655222946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0518356344655222946==--


