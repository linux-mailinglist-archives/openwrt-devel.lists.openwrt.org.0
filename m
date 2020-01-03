Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B912012F8D9
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 14:38:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6OsIllcNA6ZmKSqY5KvTUdHvTCmVCe3nzc9FwgsFAHU=; b=mxD6O8Pwu4H0ipiREz7YXwUhX
	7VZqmDKbB2KA8Yd84X9Qjk+380oGwOD/3nR49ldTINFSkZ6nLCIJFJjNUFO+wbkwLAcjj3CIz2v3o
	28Fa5Z6+KnovGZAxqQS8Jil8EJT5vTi56MyMue5OaCYlRNa9FGT3pshP0ZhA/D86PouuIZDiCnpgJ
	07ocp3SAAOWbNM1aNi01mT2bLLEf1Wy2GlLSP6+N2+2J+pnr3NG1iFM3rgAyyYOAWgh/m8QWI9Ji9
	VgtF60Cy2EFUjnFScejHtM5Yt14k54y49VDKvhDxYEYl0KcIFj6T5AtEvm8//MQ7UsotMRgOEZNeZ
	8ATOl+6iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inN9e-0006Ab-KU; Fri, 03 Jan 2020 13:38:18 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inN9V-0006A1-8V
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 13:38:11 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MK5BG-1j140z1EsA-00LTuV; Fri, 03 Jan 2020 14:38:03 +0100
From: <mail@adrianschmutzler.de>
To: <admin@kryma.net>,
	<openwrt-devel@lists.openwrt.org>
References: <20191114224005.19099-1-admin@kryma.net>
In-Reply-To: <20191114224005.19099-1-admin@kryma.net>
Date: Fri, 3 Jan 2020 14:38:00 +0100
Message-ID: <00df01d5c23b$05cb0d70$11612850$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJjswkOVj6bddNPTOkN3DPYPb5W6Ka9DZwQ
X-Provags-ID: V03:K1:zqWJAVEnsy5wx+B0ZkVIgzuPJWZ6yW1PVFJfdzoHDMUuBLPDlZg
 9HZmhiZ0TxuWabr2+isncXw6qSGZxqCAAuyG0af02ZaS0s1jPK9o0sitThIuGuh4jbrZeZa
 RTnDqp+p6ZXPXGz/X2aiW9+8mE9Qiyb0gvbwSbiXjpF1gtMAGfyf9TzZO/I/AU0rM+RT1zd
 l1kFsf4plK5FJFETBTPYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O3yrcjixPyY=:H+KhI4rK0Ro8ciiPV2bnLI
 9Kzh1iwjpW0xt7x0m8e+OJkak8HYZdroBvezqraAzN+fjI3yCrnsIPDxyvMCbSGdPC941HbQl
 97Pbe3dKY53J0pnW8TiHYtQdspxjsqxdD5Dzcmwi24keRNsV/h66KFfG1HjFSAZJq05mhdGka
 v5mDtrbKyPCfPKMyWKMdY4bOF/GH55J6XYhIEoHPuAzTSLPDBL6G7RvdRLvCem8ClTAlu12vS
 5Vtnbyj0dgAwX1GlKDbmLyX5xC9P9Di1Qn4fLTtltOJZvWRuOWiv+5jtfp4CECVOLdabcO+4C
 AuWNzmEgNQqSxVnFiDwAgxxFx6EMhYOiCrZVfhTz2l44puGVrjh72G3X8ETjTPRZ6Zyip+KMq
 McOEg8ybTk5kEtoG2IIBu8EXjCp480Cg/Tgn0SYAgNDAJF+3dO4dnbif5gkq1yqNBRiRkC11I
 GjC+4qcGLI8VdHGTeuBhQn6xiHxYNp1swp5aa99Y1Bm8cor4KFdvj6XW0OELr2WzRb6pZiuNX
 VvDIsqZcZFkUAKEF3Rdj3R7xFyeYZoDzL2xp+PGDmqxuNTlLqiRLbCgvpgeOoU9zO1vf12L9R
 +FGEhgBllW+w1xxesgPMmNFmmYPSE8DCrwDfde/Xl+yD3XEEII5wPQFeYxVtC6MLPTQdCot9S
 tmfrxn5QWCVbXFeExsLD6SMqhKAzm+ZQY4/kmCgwG2CQdQl9RosmIRavEfFrL+icnceuz9JxX
 Yfkmvbc6sJ9WqP35VmbTI8rpf1/8BHYhIfJqv6nfRYR0lufTbBDaKuSzCYAOXuCzrA+dKvtsx
 7JUPLVFdwQWqLEzcj3zCU412paOvQ7wUK1IVl8SjS50TR5E6YvIM2vpOPkhCjR++eLJSoxbbZ
 c3eN6vUb99gOs4eBPE8IVeEHGnQvk+NHhekPLWyno=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_053809_600601_A8712D07 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] ath79: add support for COMFAST
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
Content-Type: multipart/mixed; boundary="===============2777127548691351175=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2777127548691351175==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=xoM4eZOv6/wU0d=-="

This is a multipart message in MIME format.

--=-=xoM4eZOv6/wU0d=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of admin@kryma.net
> Sent: Donnerstag, 14. November 2019 23:40
> To: openwrt-devel@lists.openwrt.org
> Cc: Pavel Balan <admin@kryma.net>
> Subject: [OpenWrt-Devel] [PATCH v3] ath79: add support for COMFAST CF-
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
> Run-tested on hardware. Thank you all for the feedback so far.
>=20
> Changes since v2:
>=20
>  -Formatting fixes
>  -Removed the pin muxer for real this time. Thank you Adrian!
>  -Added proper functionality to the WLAN pin.
>=20
> Closed questions:
>  -The memory error mentioned above is not reproducible on another router.
>     Assuming hardware defect.
>=20
> Open questions:
>  -The LED list in the LED configuration tab, along with normal LEDs, has
>     ath9k-phy0 listed. Why?
>=20
>  -I could not reproduce RSSI LED behaviour during test.
>     None lit up on connecting to the router via Wi-Fi.
>=20
>  -Could you refer me to a style guide? Some proposed fixes I can't
>     understand yet.
> ---
>  .../ath79/dts/qca9531_comfast_cf-e130n-v2.dts | 138
> ++++++++++++++++++
>  .../generic/base-files/etc/board.d/01_leds    |   9 ++
>  target/linux/ath79/image/generic.mk           |  10 ++
>  3 files changed, 157 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_comfast_cf-e130n-
> v2.dts
>=20
> diff --git a/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
> b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
> new file mode 100644
> index 0000000000..13d3c23a95
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
> @@ -0,0 +1,138 @@
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
> +		label-mac-device =3D &eth0;
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

What's that one used for in stock? Or is it not used there as well?

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
> +				reg =3D <0x020000 0x7d0000>;
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
> +&uart {

Add empty line before that.

> +	status =3D "okay";
> +
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	phy-handle =3D <&swphy0>;
> +
> +	mtd-mac-address =3D <&art 0x0>;

Did you verify the addresses of ethernet and WiFi with stock firmware (sorr=
y if I asked that already).

> +
> +	gmac-config {
> +		device =3D <&gmac>;
> +		switch-phy-swap =3D <1>;
> +	};
> +};

eth1 is enabled in qca953x.dtsi. If you do not need it, as this is a one-po=
rt, you should disable it by adding

&eth1 {
	compatible =3D "syscon", "simple-mfd";
};

> +
> +&wmac {
> +	status =3D "okay";
> +
> +	mtd-cal-data =3D <&art 0x1000>;
> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index fbb0d0ea03..1a5e63b23d 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -47,6 +47,15 @@ comfast,cf-e120a-v3)
>  	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
>  	ucidef_set_led_rssi "rssihigh" "RSSIHIGH"
> "$boardname:green:rssihigh" "wlan0" "76" "100"
>  	;;
> +comfast,cf-e130n-v2)
> +	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
> +	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan"
> "phy0tpt"

This line can be remove as you have the phy0tpt trigger in DTS.

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

You need to add this to the one-port setup in 02_network, which I miss comp=
letely here.

Best

Adrian=20

--=-=xoM4eZOv6/wU0d=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4PQ7QACgkQoNyKO7qx
AnA1MQ/+PzOrtCxa+JnKgLfh7UaZn08MdpWKwBrxASyv/PysNNOPpFnu79jQvdld
zDwY1vjPwGtARKaLED1CleIaMg/N5pkFXcmF72KnU9dr44XersSnySzv8aSTVejW
lXtTxPcguTuZ9nSTqB7L41TQ0hoPxrSXB2kRESyOjvWPoJUOl+eQagxo6UAQ56yo
gzitR8MYjFKbm39Ksme3R25ImBGLZwaSlZ/llOe99GBRC6ju54PyE9V1dOXRIH0p
YjjRDl1b3smza+5xQ/Mpi48YtsICk515FuoOX48p5h2pO+EHZ/zGu+OBsHCAvOq5
17vZnDvDXRKte69aVLAxJoZwlPd+XNgV4qUeCWMweFxfb1iPePOwEqnkAyR+CwHv
u6NW3JX9mmSj2W0RTzr+moEgZ+8BZqQZvA5y3XEzFSOBQdUaSUqX89pqGNwS4nK7
PR28yK/NghMPrib/6wzkFJYrh9q6oCdaOtGaugvcjY0j2fiKFuG8iQ6LZ2KzTaDO
TG78Zb1P+17Q7eG5ikaFqBRJIgt5U1J3UbYOcUerGv+fYAV8Kf/gmXgKjN6I/rMd
PJKIT7hLUYX/DzMGUGhqqqIt1I0mTh+vYPL1HYmaJFVqo+8q53w9sD40tVSRRGwU
xMctnWUh2mynSB5a6/yTGyEyxE81lMYS2aNqSW7HT9w738tWL/E=
=D3RT
-----END PGP SIGNATURE-----


--=-=xoM4eZOv6/wU0d=-=--



--===============2777127548691351175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2777127548691351175==--


