Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6531DFEBB
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 13:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s9zo9UkyIliwy9h6nlMYzQOXE1fNZfV5RNb1lJgDpa8=; b=kxyl5/PBVw0PmRjrg2v/W72GL
	/7DvUtHQMyLBszI+ADY42u1uSG1RM/fcTmvJfFCCv2gIk3QadT7ZSWPfS7fyyYy2HUeUfJqYa1fdH
	fQYjd1hWnr4Un1tk3eNitCYJjtAJCDJFigNTWYyVBNx5z9ZZhIxE+d40eWlTSrAsuRnnRAKcOeop1
	JDVpxP9V5yaIUUlKuoiBucONodIWoh4OqDPHKPT1VE95Jw12h5IYmo/QGlwl1vuBDCO49zQeBZUdf
	9X9TzWDMNn7mBi/lcasEYHxLU0tkH0595rxIjAujDvprg36PMSBdxEjisyOH/CR1f/9yazlsIr+Pf
	5e/rQqjgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcp52-0000Jx-QH; Sun, 24 May 2020 11:46:12 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcp4v-0000IW-2e
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 11:46:07 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MXoQG-1jXG4g17E4-00YEa0; Sun, 24 May 2020 13:45:58 +0200
From: <mail@adrianschmutzler.de>
To: <admin@kryma.net>,
	<openwrt-devel@lists.openwrt.org>
References: <20200327033255.19291-1-admin@kryma.net>
In-Reply-To: <20200327033255.19291-1-admin@kryma.net>
Date: Sun, 24 May 2020 13:45:57 +0200
Message-ID: <007001d631c0$e40282e0$ac0788a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQLmfmgQ8h5MRVPKuhP3V+LICnBqcaaWhALg
X-Provags-ID: V03:K1:sN3J+xyM0g+4uZQ14a1F5/5dA6Imk3fW+ZUK14eep9INTXFKHiN
 CJSEbzUmQEfPH34qNh46CfzivWlel43cXN2YlfJBFOyzm61WdA6zILz0VxvzjOzyjhjadTA
 Auf6qKleN+mqURtuRUceZgFdC6D41b5anZbdCfN49mgygQeJgkY2AYy/UUvD0Rq4uOfr6B4
 Z9UrLuyF7i8S6v1w4i87Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PPTY5Uxa9Hg=:LtevZMAivwCeJkx1AM3gph
 GQ3YDJmifjuV6SG7eG4kTHi0/CFeJ5FPYnOQsEIC6eOhUZ2P9gWtFILaoR5c16ZL39EpX8L6d
 UfesN9PGpOu3dhCpW9zOgXhkCzR9cGk75Gw+T9qepfjfyaI+Ol/TvPPrgAGsVMC6G/4W5kosQ
 vnqzJ+QitrloYFwe5ADfadUrp6kxoRgSacHqGQUSgtKicLBULjYOSviLCtaSad2qMM2l5dPyy
 NcUp1kdspgSdhS05LYS95qgwe6ZawFqUJtaCp7c6ZDqj6cTLqWSjIvZmJhcuInECtJRxvnT1J
 u/bhbyZyjxiR4mj806U2RoNZSE5jcrEke9J0rKl56ZpydmND98vVJ81EdNjwG/sx/4WeYj8LT
 yQc9wFTcCEmQVe2vkkiraHE70m66j8UIlJJRbV2TeK0qPRY2S4cMELEwAOD8qpOu6wfDrg4Yr
 600O+7uwYNTugPTK811j7W+OaP6Hn1nNs77F4HOVvMMJPHJkaA1FDWP6edgqb1cIlj66nVIqG
 lZS1uTb5L9NsSP8MiIBC9UblaSBzWtUISYhNMOIdAHPm6qWbCwmN6EyYLtzIr2xmrm5Q3OGmv
 vHt1Z3BQQLVPylDlKK9EHP6fOlyC00La4ngygGHlGWAQgrgjjpEo/skQhnB0qMXaE/UavR/Bl
 bu+4PLse3aZBIWxgtC1rINAdccoGqUeHIF6HX8kWVKxX3teWiApNdB8o+g2N4y+oQyt1n9Zai
 kTvyBYdlQ4nIN4itIO5KGnqMM0S5DlRqL72NYlpIRvxv7F8EUiI7lFiFz/VhpWQVT5CXB4xFm
 iuQvUqnuaJWDcPyFCqNYlAlzbNUGo+6VGD+imawnLJZjv6nX0bcGwZOkf1VqmW762LcbhpQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_044605_418032_4EA0449D 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH v6] ath79: add support for COMFAST
 CF-E130N v2
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
Content-Type: multipart/mixed; boundary="===============6521849207302901014=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6521849207302901014==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=+7FVH7zCfYwSak=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=+7FVH7zCfYwSak=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of admin@kryma.net
> Sent: Freitag, 27. M=C3=A4rz 2020 04:33
> To: openwrt-devel@lists.openwrt.org
> Cc: Pavel Balan <admin@kryma.net>
> Subject: [OpenWrt-Devel] [PATCH v6] ath79: add support for COMFAST CF-
> E130N v2
>=20
> From: Pavel Balan <admin@kryma.net>
>=20
> This patch adds support for the COMFAST CF-E130N v2, an outdoor wireless
> CPE with a single Ethernet port and a 802.11bgn radio.
>=20
> Specifications:
>=20
>  - QCA9531 SoC
>  - 1x 10/100 Mbps Ethernet with PoE-in support
>  - 64 MB of RAM (DDR2)
>  - 16 MB of FLASH
>  - 5 dBi built-in antenna
>  - POWER/LAN/WLAN green LEDs
>  - 4x RSSI LEDs (2x red, 2x green)
>  - UART (115200 8N1) and GPIO (J9) headers on PCB
>=20
> Flashing instructions:
>=20
>  The original firmware is based on OpenWrt so a sysupgrade image can be
> installed via the stock web GUI.
>=20
>  The U-boot bootloader also contains a backup TFTP client to upload the
> firmware from. Upon boot, it checks its ethernet network for the IP
> 192.168.1.10. Host a TFTP server and provide the image to be flashed as  =
file
> firmware_auto.bin.
>=20
> Signed-off-by: Pavel Balan <admin@kryma.net>
> ---
> Run-tested on hardware.
>=20
> Changes since v5:
>=20
>  Made partition@7e0000 read-only.
>=20
>  Changed IMAGE_SIZE to 7936k.

it looks like you have actually sent the v5 version of your patch again, as=
 the v6-changes you report are not included. Anyway, I've added these (and =
a few others) myself and pushed the result to my staging tree here:

https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3Dre=
fs/heads/staging

Please run this on your device and check whether everything is okay, so I c=
an merge this.

Despite, I'd be interested whether the MAC address from calibration data (a=
rt 0x1002) is actually the same as art 0x0, so we can drop mtd-mac-address =
from wmac.

Best

Adrian

>=20
> ---
>  .../ath79/dts/qca9531_comfast_cf-e130n-v2.dts | 150
> ++++++++++++++++++
>  .../generic/base-files/etc/board.d/01_leds    |   8 +
>  .../generic/base-files/etc/board.d/02_network |   1 +
>  target/linux/ath79/image/generic.mk           |  10 ++
>  4 files changed, 169 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_comfast_cf-e130n-
> v2.dts
>=20
> diff --git a/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
> b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
> new file mode 100644
> index 0000000000..dc1e037307
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
> @@ -0,0 +1,150 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca953x.dtsi"
> +
> +/ {
> +	compatible =3D "comfast,cf-e130n-v2", "qca,qca9531";
> +	model =3D "COMFAST CF-E130N v2";
> +
> +	aliases {
> +		serial0 =3D &uart;
> +		led-boot =3D &led_rssihigh;
> +		led-failsafe =3D &led_rssihigh;
> +		led-upgrade =3D &led_rssihigh;
> +		label-mac-device =3D &eth1;
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		pinctrl-names =3D "default";
> +
> +		wlan {
> +			label =3D "cf-e130n-v2:green:wlan";
> +			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};
> +
> +		lan {
> +			label =3D "cf-e130n-v2:green:lan";
> +			gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		unused {
> +			label =3D "cf-e130n-v2:green:unused";
> +			gpios =3D <&gpio 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		rssilow {
> +			label =3D "cf-e130n-v2:red:rssilow";
> +			gpios =3D <&gpio 11 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		rssimediumlow {
> +			label =3D "cf-e130n-v2:red:rssimediumlow";
> +			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		rssimediumhigh {
> +			label =3D "cf-e130n-v2:green:rssimediumhigh";
> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_rssihigh: rssihigh {
> +			label =3D "cf-e130n-v2:green:rssihigh";
> +			gpios =3D <&gpio 16 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		reset {
> +			label =3D "reset";
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 17 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +	};
> +};
> +
> +&spi {
> +	status =3D "okay";
> +
> +	num-cs =3D <1>;
> +
> +	flash@0 {
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <25000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x000000 0x010000>;
> +				read-only;
> +			};
> +
> +			art: partition@10000 {
> +				label =3D "art";
> +				reg =3D <0x010000 0x010000>;
> +				read-only;
> +			};
> +
> +			partition@20000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x020000 0x7c0000>;
> +			};
> +
> +			partition@7e0000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "configs";
> +				reg =3D <0x7e0000 0x010000>;
> +			};
> +
> +			partition@7f0000 {
> +				label =3D "nvram";
> +				reg =3D <0x7f0000 0x010000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&uart {
> +	status =3D "okay";
> +
> +};
> +
> +&eth0 {
> +	compatible =3D "syscon", "simple-mfd";
> +};
> +
> +&eth1 {
> +	status =3D "okay";
> +
> +	phy-handle =3D <&swphy0>;
> +
> +	mtd-mac-address =3D <&art 0x0>;
> +
> +	gmac-config {
> +		device =3D <&gmac>;
> +		switch-phy-swap =3D <1>;
> +	};
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +
> +	mtd-mac-address =3D <&art 0x0>;
> +	mtd-cal-data =3D <&art 0x1000>;
> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index fbb0d0ea03..3046d34605 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -47,6 +47,14 @@ comfast,cf-e120a-v3)
>  	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
>  	ucidef_set_led_rssi "rssihigh" "RSSIHIGH"
> "$boardname:green:rssihigh" "wlan0" "76" "100"
>  	;;
> +comfast,cf-e130n-v2)
> +	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
> +	ucidef_set_rssimon "wlan0" "200000" "1"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow"
> "wlan0" "1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW"
> "$boardname:red:rssimediumlow" "wlan0" "26" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH"
> "$boardname:green:rssihigh" "wlan0" "76" "100"
> +	;;
>  comfast,cf-e313ac)
>  	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan"
> "switch0" "0x02"
>  	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan"
> "eth1"
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index 10ca213e70..b1ecc066fd 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -14,6 +14,7 @@ ath79_setup_interfaces()
>  	alfa-network,ap121f|\
>  	aruba,ap-105|\
>  	avm,fritz300e|\
> +	comfast,cf-e130n-v2|\
>  	devolo,dvl1200i|\
>  	devolo,dvl1750c|\
>  	devolo,dvl1750i|\
> diff --git a/target/linux/ath79/image/generic.mk
> b/target/linux/ath79/image/generic.mk
> index 70631c20d0..256481ece3 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -258,6 +258,16 @@ define Device/comfast_cf-e120a-v3  endef
> TARGET_DEVICES +=3D comfast_cf-e120a-v3
>=20
> +define Device/comfast_cf-e130n-v2
> +  ATH_SOC :=3D qca9531
> +  DEVICE_VENDOR :=3D COMFAST
> +  DEVICE_MODEL :=3D CF-E130N
> +  DEVICE_VARIANT :=3D v2
> +  DEVICE_PACKAGES :=3D rssileds kmod-leds-gpio -swconfig -uboot-envtools
> +  IMAGE_SIZE :=3D 8000k
> +endef
> +TARGET_DEVICES +=3D comfast_cf-e130n-v2
> +
>  define Device/comfast_cf-e313ac
>    ATH_SOC :=3D qca9531
>    DEVICE_VENDOR :=3D COMFAST
> --
> 2.17.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=+7FVH7zCfYwSak=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7KXnAACgkQoNyKO7qx
AnA83BAAngbj6jPaqbwKIdt0xirFqC3BgXCTkVALQ0Y854nnS6adYB16KVBHWeNa
cYEj48qcKffJCzH59F9c3Q4Z8+A3NJsqwIX73wjF+Vub47wEsTUsggX+VExXG8ix
EmLuM2W+UbKqDfoFJwdZGmxZ2APfWWy/MOJPKRmg91gAlajyb1ij6t9DCt+Fvt0w
zxYxCYgQiLay21SQP7fAW8392vdowYOd9g3odHq7wmq+8y9S4Jz4xnga4iVZI0d/
RvmFcfvVIVqVT8AHXsojrWu+jHnPRC86cI0ZNl7xxUQ1pkDifSO6xpis0B8EWT5/
QqDRBn8rOVFaxIDwHaoYlBH3TrXPo0Sayi5RgNQnRVTRH9to+QkGHwfPiR5NRbOD
jLvHoiYyeWz5QG7n+SmqG9pfnloeXVzfLDnKNvW3ek4V9A7ehpyhFONFMkT8kNFi
hvNxh/cEIKdWLsEVxwFzr6PcXRJexYA2VIEGdVC8DPCyxjXVyNGit107SR0Vhyjr
0LUIWyRoXO5fzfCB1knXhY2SUHlHHnDwZ9s6pjbDGzpr2E4blgCtl3t2vW/OBkTL
78AJ46BZIJOWKDc4FKoMQdE1sXzj7JBMDHMRjckAkmxJav2dLfjOKW0zW2Yi6Cmg
jYlVMRk+6o4wQPCg+zx20z97/JIWeJo1guH2k0VRRzohQbGpTZc=
=Skgb
-----END PGP SIGNATURE-----


--=-=+7FVH7zCfYwSak=-=--



--===============6521849207302901014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6521849207302901014==--


