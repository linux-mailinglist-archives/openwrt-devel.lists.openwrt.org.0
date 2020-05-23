Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CC71DFB8E
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 01:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZwxuduBjkpBT5IJNV5CfrdsvpnXUq4NmotqFKiMtTMs=; b=P843zzZy+8hawlygu5RuL5BUX
	mSDtaMLCX8vQPd6X7K5tufkEmKzRqCqsOY9uK+1o8RXj6LvgSv4U6Y6qXRYDP5t8n5E/KpkyiZMYt
	cJkOrXZ4Z6+nusKYLlOBY9utd8t3HTCPwnHskASk0mM7k6GXHwbtSqmSl/R4lkI+RfMBHuGU2JjAt
	3vd08nqfCnigpijTro1yXer4FdC4R4/ZVfc7uO6J8S8x/ohezmBotDPaJaV4q1W8qWdaMwIMwpa6i
	qiuM834GYHG4kseMhWyNqhnzuh4FVmqkOK4mgPmyArj9eveax7newavGtVFcLpZkzmvQZ2eL0+0Tc
	6cnwej9bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcd9R-0004Jh-2o; Sat, 23 May 2020 23:01:57 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcd9K-0004JF-Ey
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 23:01:52 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N5VXu-1ixHpz2Bek-016zKP; Sun, 24 May 2020 01:01:45 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Daniel_Gonz=C3=A1lez_Cabanelas'?= <dgcbueu@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20027397.f1LIkykH4V@tool>
In-Reply-To: <20027397.f1LIkykH4V@tool>
Date: Sun, 24 May 2020 01:01:45 +0200
Message-ID: <011101d63156$21a24740$64e6d5c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQILKhLas76jJ20jNKUXFB1Jee6o2ahMVsAw
X-Provags-ID: V03:K1:BG5HK/eCTwBu0rKJ5UtvhzUWvsuDfYWcNaEFXE5Gz8uB6x4h6Zy
 oaSZMzDjqatgJS2rdGrVV+65puaKMpBAu9J4VnqWEhFnCYD60EqrmOakvIf3F4Dhog/Wpod
 lrSDMPVFP6iujJTbx3DHmsJ34toGYhTfxQb9982yoUy/XZtkuSFPHNBOyGe/edx424mlqYt
 63ysPXrpjoad/sMHSpPcg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:A2EwcnzP9io=:OYzns8XaI89QNh7+aJeaLe
 6dFh7cYJg3W21/SkxpOlBXsR4gFQIWYCFyK98tNkzjOfK885DL3EBtIVj7eNQoOASRh7ee6wu
 vcASNH7NBVK3tbZzUMYQvcfhvKr2oWaJOJOoCTa9+8FQ9ALNMZpoHQfB7U9jGXULMo6qY2JbI
 R5zLmpslAow2X4pzAKz0QgB47mlMjejo6GR+KyMQyEk0c0WewaOa3SSMIj4bNFYo6rhu65Go8
 5fSh5Rph2qPAxIL4PSA/7aUZfOQxZUr1C65p05NHZnZqrhJa6/ldCKHf4w10zZOlXuLCHLaI0
 1n8D1ql5LnIUduAMKG7FcDdfg5juB0RnLXSI+q+QrF4BDSANkGfGKbFYsjDAu8CBXg5SioSLz
 VsLExZs7UpDu1z4f6F2gyqJXlxdR31V28qYnvW+yd+KDz4JKUEcyUlAufGrxghuiGYzgzamYl
 8PD+k78M5RjMm1/FXN8EbwKgqEFIi4AqQ4tgnYl24TJqDrLAn1SzTy0kwZsccShjqjxpwqcAP
 /njbAMaOvJ+8MH5AvamXUW7CIDStkLP/uuXWXBna8UeIpZhVG3KboogBvRaLalcXXcppN1vgg
 j+fgq5AK7uDxePZUCoXXHiPaC6ZIOD6UpegKRmbIbWNTSQ93hc9jjx1sJWiWp30DFsEQOswSL
 OG/REvnupt23gLJVS89IT+nymdVWngdCkvLlpw78dCX8DWkHiL+15CTHQiGPuc8PxE0r8m9ar
 Rwu3ffjDEmAPjhqWLnvIUiaHmuUH1mBtiGTd3J8iUOSpYzJmelbZ2nkoTuAkr360RpZBJTYdv
 r8dyqqVEu7MXZ5tfAs0IwBosF7YrXlT1jcVJKWK7U+4onzJGXjNqV9Dx1sM+7zY4bDfBHDN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_160150_799165_1F9E7122 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: DGND3700v1: device tree
 improvements
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
Cc: noltari@gmail.com
Content-Type: multipart/mixed; boundary="===============9150541530129609376=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9150541530129609376==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=YLIB4hroSi5UQn=-="

This is a multipart message in MIME format.

--=-=YLIB4hroSi5UQn=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Daniel Gonz=C3=A1lez Cabanelas
> Sent: Sonntag, 24. Mai 2020 00:24
> To: openwrt-devel@lists.openwrt.org
> Cc: noltari@gmail.com
> Subject: [OpenWrt-Devel] [PATCH] bcm63xx: DGND3700v1: device tree
> improvements
>=20
> Improve the device tree file and related board data for the DGND3700v1/
> DGND3800B router:
>  - Improve LEDs definitions, use shorter names.
>  - Make the board name more readable.
>  - Fix the switch LAN labels, the order is reversed.
>  - Use the real name of the board for the board name instead of device
>    name.
>  - Use standarized names for partition nodes and leds.

This deals with several different issues at the same time. I'd prefer to ha=
ve it split up (e.g. separate board name change from LED changes and switch=
 changes).

>=20
> Signed-off-by: Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>
> ---
>  .../bcm63xx/base-files/etc/board.d/01_leds    | 12 ++--
>  .../dts/bcm6368-netgear-dgnd3700-v1.dts       | 64 +++++++++----------
>  .../549-board_DGND3700v1_3800B.patch          |  2 +-
>  3 files changed, 39 insertions(+), 39 deletions(-)
>=20
> diff --git a/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> b/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> index 91d67f0c0b..6b82d9e952 100755
> --- a/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> +++ b/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> @@ -66,12 +66,12 @@ inventel,livebox-1)
>  	ucidef_set_led_netdev "wlan0" "WIFI" "Livebox1:red:wifi" "wlan0"
>  	;;
>  netgear,dgnd3700-v1)
> -	ucidef_set_led_netdev "lan" "LAN" "DGND3700v1_3800B:green:lan"
> "eth0.1"
> -	ucidef_set_led_netdev "wan" "WAN"
> "DGND3700v1_3800B:green:inet" "eth0.2"
> -	ucidef_set_led_netdev "wlan0" "WIFI2G"
> "DGND3700v1_3800B:green:wifi2g" "wlan0"
> -	ucidef_set_led_netdev "wlan1" "WIFI5G"
> "DGND3700v1_3800B:blue:wifi5g" "wlan1"
> -	ucidef_set_led_usbdev "usb1" "USB1"
> "DGND3700v1_3800B:green:usb-back" "1-1"
> -	ucidef_set_led_usbdev "usb2" "USB2"
> "DGND3700v1_3800B:green:usb-front" "1-2"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0.1"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:green:inet" "eth0.2"
> +	ucidef_set_led_netdev "wlan0" "WIFI2G" "$model:green:wifi2g"
> "wlan0"
> +	ucidef_set_led_netdev "wlan1" "WIFI5G" "$model:blue:wifi5g"
> "wlan1"
> +	ucidef_set_led_usbdev "usb1" "USB1" "$model:green:usb-back" "1-
> 1"
> +	ucidef_set_led_usbdev "usb2" "USB2" "$model:green:usb-front" "1-
> 2"

Is there any way to do sysupgrade on these devices? If yes, you will need m=
igration of the names in /etc/config/system ...

>  	;;
>  netgear,dgnd3700-v2)
>  	ucidef_set_led_netdev "lan" "LAN" "$model:green:ethernet" "eth0"
> diff --git a/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
> b/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
> index 546b0b1f60..c17bb3a600 100644
> --- a/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
> +++ b/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
> @@ -5,12 +5,12 @@
>  #include <dt-bindings/input/input.h>
>=20
>  / {
> -	model =3D "Netgear DGND3700v1/DGND3800B";
> +	model =3D "Netgear DGND3700v1 / DGND3800B";

I don't think this is really necessary ...

>  	compatible =3D "netgear,dgnd3700-v1", "brcm,bcm6368";
>=20
>  	aliases {
>  		led-boot =3D &led_power_green;
> -		led-failsafe =3D &led_power_green;
> +		led-failsafe =3D &led_power_red;

This should be a separate commit again.

>  		led-running =3D &led_power_green;
>  		led-upgrade =3D &led_power_green;
>  	};
> @@ -51,49 +51,49 @@
>  	leds {
>  		compatible =3D "gpio-leds";
>=20
> -		dsl_green {
> -			label =3D "DGND3700v1_3800B:green:dsl";
> +		led@2 {

I don't know whether this is different on bcm63xx, but based on what I'm us=
ed to the old node name is preferred (dsl_green).

Best

Adrian

> +			label =3D "dgnd3700-v1:green:dsl";
>  			gpios =3D <&pinctrl 2 1>;
>  		};
> -		inet_red {
> -			label =3D "DGND3700v1_3800B:red:inet";
> +		led@4 {
> +			label =3D "dgnd3700-v1:red:inet";
>  			gpios =3D <&pinctrl 4 1>;
>  		};
> -		inet_green {
> -			label =3D "DGND3700v1_3800B:green:inet";
> +		led@5 {
> +			label =3D "dgnd3700-v1:green:inet";
>  			gpios =3D <&pinctrl 5 1>;
>  		};
> -		wps_green {
> -			label =3D "DGND3700v1_3800B:green:wps";
> +		led@11 {
> +			label =3D "dgnd3700-v1:green:wps";
>  			gpios =3D <&pinctrl 11 1>;
>  		};
> -		usbfront_green {
> -			label =3D "DGND3700v1_3800B:green:usb-front";
> +		led@13 {
> +			label =3D "dgnd3700-v1:green:usb-front";
>  			gpios =3D <&pinctrl 13 1>;
>  		};
> -		usbback_green {
> -			label =3D "DGND3700v1_3800B:green:usb-back";
> +		led@14 {
> +			label =3D "dgnd3700-v1:green:usb-back";
>  			gpios =3D <&pinctrl 14 1>;
>  		};
> -		power_red {
> -			label =3D "DGND3700v1_3800B:red:power";
> +		led_power_red: led@22 {
> +			label =3D "dgnd3700-v1:red:power";
>  			gpios =3D <&pinctrl 22 1>;
>  		};
> -		lan_green {
> -			label =3D "DGND3700v1_3800B:green:lan";
> +		led@23 {
> +			label =3D "dgnd3700-v1:green:lan";
>  			gpios =3D <&pinctrl 23 1>;
>  		};
> -		led_power_green: power_green {
> -			label =3D "DGND3700v1_3800B:green:power";
> +		led_power_green: led@24 {
> +			label =3D "dgnd3700-v1:green:power";
>  			gpios =3D <&pinctrl 24 1>;
>  			default-state =3D "on";
>  		};
> -		wifi2g_green {
> -			label =3D "DGND3700v1_3800B:green:wifi2g";
> +		led@26 {
> +			label =3D "dgnd3700-v1:green:wifi2g";
>  			gpios =3D <&pinctrl 26 1>;
>  		};
> -		wifi5g_blue {
> -			label =3D "DGND3700v1_3800B:blue:wifi5g";
> +		led@27 {
> +			label =3D "dgnd3700-v1:blue:wifi5g";
>  			gpios =3D <&pinctrl 27 1>;
>  		};
>  	};
> @@ -107,25 +107,25 @@
>  		#address-cells =3D <1>;
>  		#size-cells =3D <1>;
>=20
> -		cfe@0 {
> +		partition@0 {
>  			label =3D "CFE";
>  			reg =3D <0x000000 0x020000>;
>  			read-only;
>  		};
>=20
> -		linux@20000 {
> +		partition@20000 {
>  			label =3D "linux";
>  			reg =3D <0x020000 0x1e20000>;
>  			compatible =3D "brcm,bcm963xx-imagetag";
>  		};
>=20
> -		board_data@1e40000 {
> +		partition@1e40000 {
>  			label =3D "board_data";
>  			reg =3D <0x1e40000 0x1a0000>;
>  			read-only;
>  		};
>=20
> -		nvram@1fe0000 {
> +		partition@1fe0000 {
>  			label =3D "nvram";
>  			reg =3D <0x1fe0000 0x20000>;
>  		};
> @@ -156,22 +156,22 @@
>=20
>  			lan@1 {
>  				reg =3D <1>;
> -				label =3D "lan1";
> +				label =3D "lan4";
>  			};
>=20
>  			lan@2 {
>  				reg =3D <2>;
> -				label =3D "lan2";
> +				label =3D "lan3";
>  			};
>=20
>  			lan@3 {
>  				reg =3D <3>;
> -				label =3D "lan3";
> +				label =3D "lan2";
>  			};
>=20
>  			lan@4 {
>  				reg =3D <4>;
> -				label =3D "lan4";
> +				label =3D "lan1";
>  			};
>=20
>  			cpu@8 {
> diff --git a/target/linux/bcm63xx/patches-5.4/549-
> board_DGND3700v1_3800B.patch b/target/linux/bcm63xx/patches-5.4/549-
> board_DGND3700v1_3800B.patch
> index 936aab115b..7569e9643e 100644
> --- a/target/linux/bcm63xx/patches-5.4/549-
> board_DGND3700v1_3800B.patch
> +++ b/target/linux/bcm63xx/patches-5.4/549-
> board_DGND3700v1_3800B.patch
> @@ -5,7 +5,7 @@
>   };
>=20
>  +static struct board_info __initdata board_DGND3700v1_3800B =3D {
> -+	.name				=3D "DGND3700v1_3800B",
> ++	.name				=3D "U12L144T01",
>  +	.expected_cpu_id		=3D 0x6368,
>  +
>  +	.has_pci			=3D 1,
> --
> 2.26.2
>=20
>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=YLIB4hroSi5UQn=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7Jq1QACgkQoNyKO7qx
AnB8XhAApQcu9BLM54jS/wyRov963quprha0pRXncwRU1Ef1ftIz15RhmPc6XmdZ
xE/yqlsLF97pw51RcXeglKSrocNgmxXvBf/KQ+LFUIhukXiLJcP9x051Ba78BoNA
X9tHEaNpRwotIDguSNj2wVHIJdiLjaN+SzK5Md49mcOzTlEvYfW1gVyCWjpzJbaf
noBrOByVXG72PTobv53vb4YOFQ3vAteWBVq1SfUzdDBE8zmoAKuB1ow17E7xfKsr
hkcWpQZNmMSjWxeYzObgdK2F6UUACRUqwQ+I0fATi8ZUNZSYhzM/NrNgjZ247Jb3
AhV729UV+r3qq2Hrey5YqGF0kTiB/2EDIxJabWWR6yaR1plseRgxtZWbsXcw7+1n
+EAoXQw2q8jSq5JgKoFjekaLHAaWumbOZdFU25uCdCHfmFKG8DvITZd+pItsOSnE
j5hNZPfve4nXBbcufOX4E2U4pcroHVT6J8PqqVqjAiMX6mgV/XXC4PQS4k8uw7uF
rZJUyuRKBAz5/8FreOyQWhXCmjJazHc5SVUzEBuSc6rsy/ZpAnRhTrbsNHOOV6nm
rT8VrRWawvUTYofHkP2YxNOwkPr6kZnk6CE2DzAr3rwnWRmR06jG+ztGNWu84P/r
o1+RaJSciaGCtPjjcj4FTp2DlTkzDy5rLzc8jYuKJxeeZTgaIxE=
=eyMb
-----END PGP SIGNATURE-----


--=-=YLIB4hroSi5UQn=-=--



--===============9150541530129609376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9150541530129609376==--


