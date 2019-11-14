Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D09FCA7E
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 Nov 2019 17:05:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7UXXZ+gzAHkmdPS194Eocu76iTfdrg95+pzNwZSa/fI=; b=YBAJOBZaH2RjbQJMiMvzvvmlM
	6B9xNxsi2oggV2ktuANHnf1jDDFeNuX1F1L3+7xHMohVhyQL2tE3hRiP3WWC8wy2+zN/YyF8hbf3A
	XK8M8pOKw1pdhBGkLzUGEbao0aJ47XBacCsU3jBPO13qNzYDALV8NWwmnmUDYBlz9O1dkQf6Wb9NZ
	gZBviUWV2og003qugAn96tlQwyKPdpLC5OcKYuw1ZVROtS6hALx7qymanyX9LI2Ih3633wGAnkDIc
	OhLSnXgzWi4YzTSU64o+LdqRx4HuYCgqRu7txwfn94dcmnw24db6xzE99VmF8HCyL8t+tPdaP6ADD
	07K3NnjJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHcR-0007Bb-Hh; Thu, 14 Nov 2019 16:05:15 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHc8-0007B3-D3
 for openwrt-devel@lists.openwrt.org; Thu, 14 Nov 2019 16:04:58 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MPGJh-1iEPzb0M05-00PgjK; Thu, 14
 Nov 2019 17:04:50 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <admin@kryma.net>,
	<openwrt-devel@lists.openwrt.org>
References: <20191113182238.1921-1-admin@kryma.net>
In-Reply-To: <20191113182238.1921-1-admin@kryma.net>
Date: Thu, 14 Nov 2019 17:04:49 +0100
Message-ID: <01ce01d59b05$3e611830$bb234890$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQHM94hVf2fP6ovsj4yaI4Zc5Qh9YaecF1ow
X-Provags-ID: V03:K1:1rGP6A87DORLbj065TMf93ZLjNObuBrKmshdayS841aTGXyfBBw
 /Qq+tlq3ZmJKjnD24RMyF7Zpc8KV1sVUu1xZzleLO0+0LcjYgyMbVYbx2IEIbkRZlHVE5SY
 6qbDd1Pjvyk16CzdaW5g3kuMs9vj34ULHsM2Qnx+djrf+lJu7fJVVpWOkkENd4FWuo2Zp1/
 Zli3ioH6nW5vf1cBA1eOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H9p5h/AJS54=:k+cQrZR7a8bX9AM+UHd7jI
 HoUyjPI20kSGfXjOVt5NvRJyq/1zL5b2MEqMkcgZGDiFaNaSWn7B8b1TbCjm6SURQZxyfQ6O+
 yY+DvkeNdi/FPc+mOWdk25Htj7/NnjqXCwpnYX84ikF9BzNCJEJlHaRb/IbpBmiYZfWx2wWDn
 y35W3wG7m9lqB9zqY6IKWikjml9LrVYJEfVpYV4mU9WqmafM60BGgQihedr4SfDHeljkCTPHl
 QCaDor1bUxeNs/Nm44nnDwQYsS6SqPYzOCrLOoIqODITVWT3qzUARSLKTXNPTvI89t3jmjmzg
 p6H6DHsmVJ/3/2O66WlSs3bAzglNZ8v9P41zOOpc23ZsplQIWuxcAUvAM0W5edXe9iYXlw82m
 Fiob+0DajYJoHWBEZwpMIhW3jmPLbs9k5Or9SFoQcIIm6TMx5rjLyblqSAmZCUzKfCYh5sDAH
 K0h2d/mlpvG1c5MQYRcvNDxdyUGQ+oc4nVWFw/MlOUVTiRBKHUNG/F1O3lpID7lIpD4apruI3
 3HQiOJL+9W/4kh+Vqc5SXEGHuggxgngVTxcBNbkrdIQ/dgutmN5vEc81KXM4PR9kjifIcG1eY
 lxrtgmTrI69TbXHG65vnVzIDD2kn9BsVSn+oIQY1BYnliE3b3+SAc5ARtBYQcY8vGNBKSuc/V
 XasEgeVYTg1wK3oxLYczcLHFHXgBYoTVVd+7xQuesQvxdtDT9iiT5d/P1IPdq6769N7ilpzHN
 Gc1NqWb6EYlqX6fj4nLB1oRd9VKmv8UDFpygDpZsRcYn21UxAS883gCBnY7VRz+ZoFX2iD4dn
 WXdFUt9N93ZDDFIO/bZl3P6jesjenzMUyZF9cZqRUbQXIxujL08NNhtj6AFNH95iJxmGzb+FD
 Im3PXECWidNjBbNeqceTtqSD+yKJjxCWSu87XJPj0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_080456_742252_D3A9032D 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for COMFAST
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
Content-Type: multipart/mixed; boundary="===============3927073085458599255=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3927073085458599255==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=mkG83fNDPWqhUp=-="

This is a multipart message in MIME format.

--=-=mkG83fNDPWqhUp=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of admin@kryma.net
> Sent: Mittwoch, 13. November 2019 19:23
> To: openwrt-devel@lists.openwrt.org
> Cc: Pavel Balan <admin@kryma.net>
> Subject: [OpenWrt-Devel] [PATCH v2] ath79: add support for COMFAST CF-E13=
0N
> v2
>=20
> From: Pavel Balan <admin@kryma.net>
>=20
> This patch adds support for the COMFAST CF-E130N v2, an outdoor wireless
> CPE with a single Ethernet port and a 802.11bgn radio.
>=20
> Specifications:
>=20
>  - QCA9531 SoC
>  - 1x 10/100 Mbps Ethernet, both with PoE-in support
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
>  installed via the stock web GUI.
>=20
>  The U-boot bootloader also contains a backup TFTP client to upload the
>  firmware from. Upon boot, it checks its ethernet network for the IP
>  192.168.1.10. Host a TFTP server and provide the image to be flashed as
>  file firmware_auto.bin.
>=20
> Changes since v1:
>=20
>  -Formatting fixes.
>  -Looked into rssi_medium_high more - found the correct GPIO pin.
>  -Removed the pin muxer.
>  -Changed 802.11an to 802.11bgn in the patch description.
>=20
> Open questions:
>=20
>  -LED menu in LUCI does not show the list of LEDs properly.
>       A LUCI issue or a device config one?

Please put patch revision changes and questions after a line with "---" mar=
k in your commit message. This automatically cuts off those when the patch =
is applied to a repository with git am.

>=20
>=20
> Signed-off-by: Pavel Balan <admin@kryma.net>
> ---
>  .../ath79/dts/qca9531_comfast_cf-e130n-v2.dts | 139 ++++++++++++++++++
>  .../generic/base-files/etc/board.d/01_leds    |   8 +
>  target/linux/ath79/image/generic.mk           |  10 ++
>  3 files changed, 157 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
>=20
> diff --git a/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
> b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
> new file mode 100644
> index 0000000000..b5527c0a49
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
> @@ -0,0 +1,139 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
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
> +		pinctrl-0 =3D <&led_rssimediumhigh_pin>;

I do not see the node corresponding to this reference. So, you haven't even=
 build-tested that one (it should produce an error during build...).

> +
> +		led_wlan {
> +			label =3D "cf-e130n-v2:green:wlan";
> +			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};
> +
> +		led_lan {
> +			label =3D "cf-e130n-v2:green:lan";
> +			gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_unused {
> +			label =3D "cf-e130n-v2:green:unused";
> +			gpios =3D <&gpio 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_rssilow {
> +			label =3D "cf-e130n-v2:red:rssilow";
> +			gpios =3D <&gpio 11 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_rssimediumlow {
> +			label =3D "cf-e130n-v2:red:rssimediumlow";
> +			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_rssimediumhigh {
> +			label =3D "cf-e130n-v2:green:rssimediumhigh";
> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_rssihigh: led_rssihigh {
> +			label =3D "cf-e130n-v2:green:rssihigh";
> +			gpios =3D <&gpio 16 GPIO_ACTIVE_LOW>;
> +		};

Sorry, maybe I wasn't precise enough here:
The _node label_ should be prefixed by "led_", but the _node name_ should n=
ot include it:
"   led_rssihigh: rssihigh {"
"   rssimediumhigh {"
etc.

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
> +
> +&uart {
> +	status =3D "okay";
> +
> +};

Remove empty line.

> +
> +&eth0 {
> +	status =3D "okay";
> +	phy-handle =3D <&swphy0>;

Add empty line after status.

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

Add empty line after status.

> +	mtd-cal-data =3D <&art 0x1000>;
> +};
> +

Remove empty line at the end.

Best

Adrian=20

--=-=mkG83fNDPWqhUp=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3Nex0ACgkQoNyKO7qx
AnB9Vg//ap54RHS5zOv8eldfDIlaLAIqL//J4wfbbdJoZur3nPigB4Il4NQI7fE4
52WUHR3xnVcjALScL1MKHMKnXJ4JLQeXKBk4XVs+FgXP2sGWk83zfYBkWOCw+oBA
1wxgY38erWzD5zy8F8/BLVzlc0tD4ElEKttPogpvuJcxg1iswCL6AJzOJakHin5y
KQ0x38AhPh/Y25A7wDV8aX6cgnnJMfkjb3xeIpQ/rSHeH8yqglbtk7w685wXSBNs
A+jqfO0PYM9gZNAe3Lk33bvjmhxqaOj8liSDc/jraaRnp0Aqu+LmmAeqIV6O5rVC
KJ0BPYv5yyheKxQK+l5tuYLda+jvzDykvbjAdWp19sS+NjE+u0lEObYGNaLrr3RQ
pzw2OTTtCUHdLBX1Hld24BpZRfIyUri1pdbz6a8EzFH+MXVgH9stGrUCW945P69j
00o7/RQopF/TSZP+LzMqkUNp7Bt58RrIcvp3EsEssy6TTkso3pwpG+pjdVNuqlfU
izPjXxw2Z7RBs7VzyI88x+ljqanqVVy1BD+scJ/HI4lQeH+qyOYBtnbWbBQy12EH
1XEGOsLP2pYDlGNK0fdNGDkvpHnve2HTKPyNa/o3LpzM79iCMtyNfsX7eULAB06B
6jh6BQbY+8tMhPB2SBP72Pme7llWFW/7NJHca3PybYzgJOJZGyg=
=j8o5
-----END PGP SIGNATURE-----


--=-=mkG83fNDPWqhUp=-=--



--===============3927073085458599255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3927073085458599255==--


