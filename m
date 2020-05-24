Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906941DFEF6
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 14:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F5Vj6NL1ebcIPjmhYEq9vVSQQl4Yl6luncLeWdSJdL0=; b=ilJip2aY259D8N4X1iaE0Bucw
	6ons+jXH/xIyIXeQAGSMMxwZd4gbScOOoLuNsUrACLsXtFIXEJgqzT9Fq19msW18eYuDY532SK9eJ
	VGE2KViEzCELVft8ZvImeHf/UdBtiy0Ugt3txhKmmn2G1ZofF9hWnxV0yY16Vfx8pdWdnld1WiA1L
	fhreaVDl9J0RVlpwXSB9v/B/ar8uU6eWxe2icJhtsuIch2DOg5coJRE8BA6/GMPDGQIHSWjpFeGKI
	uwQ+yI6VrpOguJaR9H25wMn2TMAs5vIlj/8k34rtpi52F+W0p6IeRopS+xw+hQrdmj0apRJRgT/oY
	9hLcXmCHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcq3F-0002hH-Fi; Sun, 24 May 2020 12:48:25 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcq35-0002gN-Nc
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 12:48:17 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mth79-1ikizU3HF1-00v8gT; Sun, 24 May 2020 14:48:11 +0200
From: <mail@adrianschmutzler.de>
To: "'Stijn Segers'" <foss@volatilesystems.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200522174815.3723-1-foss@volatilesystems.org>
 <20200523085003.4426-1-foss@volatilesystems.org>
In-Reply-To: <20200523085003.4426-1-foss@volatilesystems.org>
Date: Sun, 24 May 2020 14:48:11 +0200
Message-ID: <00a101d631c9$955d8550$c0188ff0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKEsrrAcvdyFzNzuSu4VvG7fr6enAGWh94Qp015DOA=
X-Provags-ID: V03:K1:Y7fFoRkBiojJodXD8W44JO2Lf8jW/NlxsCtufuQUE9AF9aqWlJV
 qbJNa6DLpZTPoZfdLqeimzyJsX3/EZr4F0ObCZ2D+vQFwajPZWpOto0Dwd5eKeuT7GGYgzj
 LNFtEkD8gmGglBEks64xmUQftaZUwemn8GUbDO5/mrIAnTXGuyZVniGtXdUfdfE8xHPbiv1
 NL90aYv+Egn7XlnRmLK9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mfZYvVTkyb0=:JMd55GoD8aa4t6Dcqp01bH
 rvkYhRdCNChNgDXXz5WpnBYwCE7pzQ+FAiYmkwn8WafgQ7h95KLqKTejSF+JBAx3k5e9Ryqqa
 U8HGuX/TUTJf2OWO6RfMtbX6u66sAHUhCg59o2CN4hXjkVhyap4XQrSpFlfHKPP9ZWjH3nv+9
 F/SLH2kFOqqp6Dc/TWq2WHBOmizQ+cEQELEJWiGazt6clOPvOu5snJaOnICkaRtwpSCE7Ul9H
 KTUmMZfOnqB89XL8TTzx+n3F40fxyfBHMFVuvCLqJdNCHSq0momLmOSwchyf4oxjY5DK/EXLA
 zyDnZpsRtW/pvptbAm+Q3ELe3bKyL/BrK55QbmgQv3MrD7JYaP1eLEfTw0SUQ2rxsvaywc3dV
 h1ggFxFQvvCc5VL87wxijX72hvtbFjpx6w8ofK2h3h1ZTSCr6uyCoNOawvmcP6+q3KKeKErdl
 nOoxF4WVrQ5blLpq6SZZ4vrB/JNK8Dm12Gyd1QtAm37CzhH9lwMCIIkmlOmge0nnFnxpXFRl5
 K+W/92xz7vIsaJw6jW1q9vfTzKHg0Z8a+m+mh9r1Y5AXDEUi1L6egApNq541pe5cMq5FCfQRM
 D61+FfemlqDFCyaV/QBEXKadjzT8Q53kBW+Z3JGRvuZb2pw18YICBGituNQ8SpkNdMIN+V49E
 GM5VQ4QWU0dpWk/0jsQFzRV9BIHmnTGRrgVVBgceTzd+9HF/AQvuI1X982cTcDUKruNHnZgBK
 KwqEQr7s2Q9j7k+eYjgCOxwkxd1qjsNbmjihw0jKChBKk6B4P1IrJ56Dl1RZvL0imuXXKkar3
 JNfPhDJI7MyP4k8k1PsIqrM97w7gccxF9Kp4YuBpq/Czdwv9V77KkAN4Jr8s3nkiOacVUUR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_054816_061677_BDBB6620 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: Re: [OpenWrt-Devel] [PATCH v3] ath79/nand: add support for Netgear
 WNDR4300SW
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
Content-Type: multipart/mixed; boundary="===============8469586910162501217=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8469586910162501217==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=C5624Cjxmfapt+=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=C5624Cjxmfapt+=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Stijn Segers
> Sent: Samstag, 23. Mai 2020 10:50
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH v3] ath79/nand: add support for Netgear
> WNDR4300SW
>=20
> This patch adds support for the WNDR4300SW, marketed by California ISP
> SureWest (hence the 'SW' suffix). Hardware wise, it's identical to the
> WNDR4300 v1.

I've merged your patch.

Note that the patch doesn't add an entry for uboot-envtools, maybe you can =
provide a separate patch for that if you care, should be something simple l=
ike https://github.com/openwrt/openwrt/commit/a09408fa576c6482c21f683662cb2=
d5a49e14ecf

Best

Adrian

>=20
> Specifications:
> * SoC: Atheros AR9344
> * RAM: 128 MB
> * Flash: 128 MB NAND flash
> * WiFi: Atheros AR9580 (5 GHz) and AR9344 (2,4 GHz)
> * Ethernet: 5x 1000Base-T
> * LED: Power, WAN, LAN, WiFi, USB, WPS
> * UART: on board, to the right of the RF shield at the top of the board
>=20
> Installation:
>=20
> * Flashing through the OEM web interface:
>   + Connect your computer to the router with an ethernet cable and browse
>     to http://192.168.1.1/
>   + Log in with the default credentials are admin:password
>   + Browse to Advanced > Administration > Firmware Upgrade in the Netgear
>     interface
>   + Upload the Openwrt firmware: openwrt-ath79-nand-
> netgear_wndr4300sw-squashfs-factory.img
>   + Proceed with the firmware installation and give the device a few
>     minutes to finish and reboot.
>=20
> * Flashing through TFTP:
>   + Configure your wired client with a static IP in the 192.168.1.x range,
>     e.g. 192.168.1.10 and netmask 255.255.255.0.
>   + Power off the router.
>   + Press and hold the RESET button (the factory reset button on the bott=
om
>     of the device, with the red circle around it) and turn the router on
>     while keeping the button pressed.
>   + The power LED will start flashing orange. You can release the button
>     once it switches to flashing green.
>   + Transfer the image over TFTP:
>     $ tftp 192.168.1.1 -m binary -c put openwrt-ath79-nand-
> netgear_wndr4300sw-squashfs-factory.img
>=20
> Signed-off-by: Stijn Segers <foss@volatilesystems.org>
> ---
>  target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts   |  9 +++++++++
>  target/linux/ath79/image/nand.mk                       | 10 ++++++++++
>  target/linux/ath79/nand/base-files/etc/board.d/01_leds |  1 +
> .../linux/ath79/nand/base-files/etc/board.d/02_network |  2 ++  .../base-
> files/etc/hotplug.d/firmware/10-ath9k-eeprom  |  2 ++
>  5 files changed, 24 insertions(+)
>  create mode 100644
> target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
>=20
> diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
> b/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
> new file mode 100644
> index 0000000000..fb90eee550
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include "ar9344_netgear_wndr.dtsi"
> +
> +/ {
> +	compatible =3D "netgear,wndr4300sw", "qca,ar9344";
> +	model =3D "Netgear WNDR4300SW";
> +};
> diff --git a/target/linux/ath79/image/nand.mk
> b/target/linux/ath79/image/nand.mk
> index 3ccd19914f..dc06b65371 100644
> --- a/target/linux/ath79/image/nand.mk
> +++ b/target/linux/ath79/image/nand.mk
> @@ -172,6 +172,16 @@ define Device/netgear_wndr4300  endef
> TARGET_DEVICES +=3D netgear_wndr4300
>=20
> +define Device/netgear_wndr4300sw
> +  SOC :=3D ar9344
> +  DEVICE_MODEL :=3D WNDR4300SW
> +  NETGEAR_KERNEL_MAGIC :=3D 0x33373033
> +  NETGEAR_BOARD_ID :=3D WNDR4300SW
> +  NETGEAR_HW_ID :=3D 29763948+0+128+128+2x2+3x3
> +  $(Device/netgear_ath79_nand)
> +endef
> +TARGET_DEVICES +=3D netgear_wndr4300sw
> +
>  define Device/netgear_wndr4300-v2
>    SOC :=3D qca9563
>    DEVICE_MODEL :=3D WNDR4300
> diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> index d9989ec538..4f601849fc 100755
> --- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> @@ -14,6 +14,7 @@ glinet,gl-ar300m-nor)
>  	;;
>  netgear,wndr3700-v4|\
>  netgear,wndr4300|\
> +netgear,wndr4300sw|\
>  netgear,wndr4300-v2|\
>  netgear,wndr4500-v3)
>  	ucidef_set_led_switch "wan-amber" "WAN (amber)"
> "netgear:amber:wan" "switch0" "0x20"
> diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network
> b/target/linux/ath79/nand/base-files/etc/board.d/02_network
> index b2191eed92..84cdfd99bb 100755
> --- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
> @@ -22,6 +22,7 @@ ath79_setup_interfaces()
>  		;;
>  	netgear,wndr3700-v4|\
>  	netgear,wndr4300|\
> +	netgear,wndr4300sw|\
>  	netgear,wndr4300-v2|\
>  	netgear,wndr4500-v3)
>  		ucidef_add_switch "switch0" \
> @@ -44,6 +45,7 @@ ath79_setup_macs()
>  	case "$board" in
>  	netgear,wndr3700-v4|\
>  	netgear,wndr4300|\
> +	netgear,wndr4300sw|\
>  	netgear,wndr4300-v2|\
>  	netgear,wndr4500-v3)
>  		wan_mac=3D$(mtd_get_mac_binary caldata 0x6) diff --git
> a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-
> ath9k-eeprom
> index f5fae46dfb..355be93ead 100644
> --- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom
> +++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k
> +++ -eeprom
> @@ -11,6 +11,7 @@ case "$FIRMWARE" in
>  	case $board in
>  	netgear,wndr3700-v4|\
>  	netgear,wndr4300|\
> +	netgear,wndr4300sw|\
>  	netgear,wndr4300-v2|\
>  	netgear,wndr4500-v3)
>  		caldata_extract "caldata" 0x1000 0x440 @@ -24,6 +25,7 @@
> case "$FIRMWARE" in
>  	case $board in
>  	netgear,wndr3700-v4|\
>  	netgear,wndr4300|\
> +	netgear,wndr4300sw|\
>  	netgear,wndr4300-v2|\
>  	netgear,wndr4500-v3)
>  		caldata_extract "caldata" 0x5000 0x440
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=C5624Cjxmfapt+=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7KbQcACgkQoNyKO7qx
AnBBNRAAjMOYjAMBw7uBZ2eylGxrpQaBSOTRLz0z+UQXFWY8uc6qOMTnGnh6WVi8
nDoLd5KK9HcOBeuQ0+hY3sO+IuohkWIrOlj5XX4VlijdDMCb/RGfpoqRc/3fBmt4
DdGBNjqIAWvPW/xz65gjG4RgBYcik7efYJvlofWMredrxpi+mzAtDCAc5PSRwLHH
ZvyVgqJvM7X4V2wxTnw3xEWYQZ5DAtbnoVVoJ+qW56UDQFesk9rawN9xbKQtISS7
43YJQ1/CBhsa9tcoW2p4OAS2RxEFOm8oJw8xspXhM6ch8otk8jyJwcxQ2zC1zhla
6AYQTN7XmuSGt2KpNHO+75jlvVUVyQarN56CV0wbe8c+ceA0YkGTMqEJLzb8P6AG
96yeswGGg9YHopV+f8D8A0to0esfpZpPBKY8MxIWsF5LIBstJNV+CyomfuWBp6y/
HBSfX7iAmwHNY8ZUb/hdKm2Gjoo2OOiiXH8JDsDRZcsLJx2WJTlzVzeC1hQq5/M+
fsleVCC1wHdT+CfzzoSWPGMdJoGj1Oxdg+JGJababkv+xkG7MrMaO6NsgVGNlYVj
zb9ZdRtI6gSndrXHtp3ILU1Gs5EqnXDLIUKoJbj4B/1Y1UuRJZSFODVhPFWPEy14
Oown3FFY5q7345glpqTZ/uGDjQ/hEAfSvwq2OR6f7T6l+3PP8G8=
=3NWK
-----END PGP SIGNATURE-----


--=-=C5624Cjxmfapt+=-=--



--===============8469586910162501217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8469586910162501217==--


