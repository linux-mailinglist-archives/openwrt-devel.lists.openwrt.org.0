Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48C81D2BF3
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 11:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FIGZV5gghQi1GV5c1TdsA3w8Mk07+iSgd+F5CpfjCy0=; b=rDu1xxrGU+hInT7zoierM34Fo
	FWhGVdpm742WTGKtiWyC7HxIipsJnFgKG07SSYHR/DDSXNm3kp3U1rnDeTmohi0gawcmuxiTOz2/7
	ZHZsmLOU2B76ClpIfQgDQtAshCcxJkvD7oGfIkN3pfXBHoPlDVlEPbhg9JlmNOMfliIlxEv2HoD3S
	2/hXYkGKE+6+GNUbTBUusO0ffchIKyTWAMld4uLQP7TR9BIEekIGCN3+CWNmcQr6qT4HKtBkABInQ
	mH43V4x3LB2Blzi7Wv1BU59x8x6d5vCJx+humyhEDeQRtzoat+fiFrxoIcR84vL94jCNKldTs02bd
	HShjmscUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZAcg-0003W0-85; Thu, 14 May 2020 09:57:50 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZAca-0003VK-0J
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 09:57:46 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MgiPE-1isOkO3Nt6-00h8gu; Thu, 14 May 2020 11:57:36 +0200
From: <mail@adrianschmutzler.de>
To: "'Luochongjun'" <luochongjun@gl-inet.com>,
 <openwrt-devel@lists.openwrt.org>
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
In-Reply-To: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
Date: Thu, 14 May 2020 11:57:32 +0200
Message-ID: <009701d629d6$18b45560$4a1d0020$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQI8KFJQncMPzNJEUnXTrI7FbcNghqfbWX0Q
Content-Language: de
X-Provags-ID: V03:K1:txAiYlqVG9fP3R/61FHPy5nldyms7XKAzFUCmQH1+l2udD8dKlm
 7OPb6ocOXDSOv5/ml5Ci9ehnt09AUoM25nlLGBBXAfBC6qvv1W/8NzrNyB7W2PhGO9+re1b
 bgwsWsSCoXwRJQzXmEUTfhVW3Ga33soARziBP/fxA8YsylU+J25BXlcny4VKRgqMzvX+4Xk
 v1HJxxoohuvkwR6v/NnrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kUyu5n8xCOg=:BGp15UisZTWS7FOHt4pQ9g
 n7+J5z0U9YAcUpq3Vu3235lkteHrZe6AVr3725bxG178uy1omWYDk55S9IPITQlCqEVN4uFOm
 V0/hNNfbo2D5LSE3z5fssmshWMYFfphC5zHrzoxZV5em42AJcIvS4Q76fDsflGpKt4lOXGsY9
 puywHSyiZRAYYUSdF9+4O3FUhP/r3TTLBKlkD84GrmoxkGM9+6S3n/d3XGZ6q13rBF86xePg8
 tJo+oYITduqEUiyxPk45k2SehZOz5htTHWhouarGo4Kch1RguzuC3qhKACWHeepCZKVex3yRg
 JDXrcKKRNJSq05InJQHFgWsxBXYlpAsVp4R9b9zOI2UA+WlPKXae7FnoZ/MAVQSTjpULy/FYV
 TZLhYNvgw1eLqZEoi2Vw/HYj9WWmCBzSrBfd3MG6FnqMlygwC0AzGCOIIaMQnsHbUCvX/KLuP
 JLrI63xKnpNIaLYw1W5kRC1O0/f/chTPrrKcdQmg2yH2yPkMkcPWweRjyxTyXxeJCawCrB6UE
 dkLQjOPDWtZPL2qUcFE7bHq3mvNO2FVNKqi6mkqSq3nJNNGQPsAkxoAgBl8uPDS46Khwgv3aR
 I+f3I1gjT9ntk/sBeZ4hE93SRZNWKUj3HuGgVmfSOtnTWyr+VKSSDlBrduqNpGKdrxaontrpD
 Vj36L9qL/k13ekrzAoUstSgakl07SvazZKWrPo33IkqW0ypv7t7sg6iBLUGNYdp0XAnV7lIjT
 XD+oXoPbrwjAaGWsmCmBsErOB0gB3k91yJMMRKyVhtk5gpgKFmQlFsYDeRuEFTcs+DWm6cdFu
 VL2nvowbYiIT30a038nnxK2kG1fxJX0ciREb5vT12cy5+PbZYCqf4bYwdVQzRhhdKdhIpmP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_025744_340147_B844D63C 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Content-Type: multipart/mixed; boundary="===============4048893626459851456=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4048893626459851456==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=sA+FZVpAyqJMT/=-="

This is a multipart message in MIME format.

--=-=sA+FZVpAyqJMT/=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Luochongjun
> Sent: Donnerstag, 7. Mai 2020 13:47
> To: openwrt-devel@lists.openwrt.org
> Cc: Luochongjun <luochongjun@gl-inet.com>
> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
>=20
> The gl-e750 is a portable travel router that gives you safe access to the
> internet while traveling.
>=20
> Specifications:
> - SoC: Qualcomm Atheros AR9531 (650MHz)
> - RAM: 128 MB DDR2
> - Flash: 16 MB SPI NOR (W25Q128FVSG) + 128 MB SPI NAND
> (GD5F1GQ4UFYIG)
> - Ethernet: 10/100: 1xLAN
> - Wireless: QCA9531 2.4GHz (bgn) + QCA9887 5GHz (ac)
> - USB: 1x USB 2.0 port
> - Switch: 1x switch
> - Button: 1x reset button
> - OLED Screen: 128*64 px

No LEDs?

Some other comments below.

>=20
> Flash instruction:
> Support for sysupgrade directive upgrades, as well as luci upgrades.
>=20
> OLED screen control:
> OLED controller is connected to QCA9531 through serial port, and can send
> instructions to OLED controller directly through serial port.
> Refer to the links below for a list of supported instructions:
> https://github.com/gl-inet/GL-E750-MCU-instruction
>=20
> Signed-off-by: Luochongjun <luochongjun@gl-inet.com>
> ---
>  target/linux/ath79/dts/qca9531_glinet_gl-e750.dts  | 141
> +++++++++++++++++++++
>  .../generic/base-files/etc/board.d/02_network      |   1 +
>  target/linux/ath79/image/nand.mk                   |  15 +++
>  3 files changed, 157 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
>=20
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
> b/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
> new file mode 100644
> index 0000000..645c69a
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
> @@ -0,0 +1,141 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca953x.dtsi"
> +
> +/ {
> +	compatible =3D "glinet,gl-e750", "qca,qca9531";
> +	model =3D "GL.iNet GL-E750";
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&jtag_disable_pins>;
> +
> +		reset {
> +			label =3D "reset";
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		switch {
> +			label =3D "switch";
> +			linux,code =3D <BTN_0>;
> +			gpios =3D <&gpio 1 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +        gpio-export {
> +                compatible =3D "gpio-export";
> +                #size-cells =3D <0>;
> +
> +                gpio_lte_power {
> +                        gpio-export,name =3D "lte";

I'd consider lte-power or lte_power as name here.

> +                        gpio-export,output =3D <1>;
> +                        gpios =3D <&gpio 0 GPIO_ACTIVE_HIGH>;
> +                };
> +        };
> +
> +};
> +
> +&pcie0 {
> +	status =3D "okay";
> +};
> +
> +&uart {
> +	status =3D "okay";
> +};
> +
> +&usb0 {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	status =3D "okay";
> +
> +	hub_port: port@1 {
> +		reg =3D <1>;
> +		#trigger-source-cells =3D <0>;
> +	};
> +};
> +
> +&usb_phy {
> +	status =3D "okay";
> +};
> +
> +&spi {
> +	status =3D "okay";
> +	num-cs =3D <2>;
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
> +				reg =3D <0x0 0x40000>;
> +				read-only;
> +			};
> +
> +			partition@40000 {
> +				label =3D "u-boot-env";
> +				reg =3D <0x40000 0x10000>;
> +			};
> +
> +			art: partition@50000 {
> +				label =3D "art";
> +				reg =3D <0x50000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@60000 {
> +				label =3D "kernel";
> +				reg =3D <0x60000 0x400000>;
> +			};
> +
> +			partition@460000 {
> +				label =3D "reserved";
> +				reg =3D <0x460000 0xba0000>;
> +			};
> +
> +		};
> +	};
> +
> +	flash@1 {
> +		compatible =3D "spi-nand";
> +		reg =3D <1>;
> +		spi-max-frequency =3D <25000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "ubi";
> +				reg =3D <0x0 0x8000000>;
> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	mtd-mac-address =3D <&art 0x0>;
> +	phy-handle =3D <&swphy4>;
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +	mtd-cal-data =3D <&art 0x1000>;
> +	mtd-mac-address =3D <&art 0x1002>;

mtd-mac-address can be dropped here, as it will be read from this offset by=
 mtd-cal-data automatically.

> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index d7f7eed..a50dfec 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -23,6 +23,7 @@ ath79_setup_interfaces()
>  	dlink,dir-505|\
>  	engenius,ecb1750|\
>  	glinet,gl-ar300m-lite|\
> +	glinet,gl-e750|\
>  	netgear,ex6400|\
>  	netgear,ex7300|\
>  	ocedo,koala|\
> diff --git a/target/linux/ath79/image/nand.mk
> b/target/linux/ath79/image/nand.mk
> index 3ccd199..e6743e4 100644
> --- a/target/linux/ath79/image/nand.mk
> +++ b/target/linux/ath79/image/nand.mk
> @@ -130,6 +130,21 @@ define Device/glinet_gl-ar750s-nor  endef
> TARGET_DEVICES +=3D glinet_gl-ar750s-nor
>=20
> +define Device/glinet_gl-e750
> +  SOC :=3D qca9531
> +  DEVICE_VENDOR :=3D GL.iNet
> +  DEVICE_MODEL :=3D GL-E750
> +  DEVICE_PACKAGES :=3D kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-
> usb2 \
> +	kmod-usb-storage block-mount
> +  KERNEL_SIZE :=3D 4096k
> +  IMAGE_SIZE :=3D 131072k
> +  PAGESIZE :=3D 2048
> +  VID_HDR_OFFSET :=3D 2048
> +  BLOCKSIZE :=3D 128k
> +  IMAGES +=3D factory.img

Typically, GL.inet devices can be installed with sysupgrade, so a factory i=
mage is not necessary? (And it's not set up anyway)
I think this can be dropped.

If you send a newer patch, please make sure to add a v2 ...

Best

Adrian

> +endef
> +TARGET_DEVICES +=3D glinet_gl-e750
> +
>  # fake rootfs is mandatory, pad-offset 129 equals (2 * uimage_header +
> 0xff)  define Device/netgear_ath79_nand
>    DEVICE_VENDOR :=3D NETGEAR
> --
> 2.7.4
>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=sA+FZVpAyqJMT/=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl69FgkACgkQoNyKO7qx
AnCaGA//X3PrSuPWz9L60Ql7aoNUc/O5B4aBrsZdCcZLA7BiPKlKrAqUiQU8BchN
S4qEtHswz5OUy650H89V4+RhVEMUleirLQYUTSTL+Xu+ExdJcIpj/303m6FDM+J6
M0sQQPMWNGy7668m6Xr9b3aeXcXrlQb3RCD4tTD9fsM9KYqKuKaXX5NGWkZeNYDu
cO9RyjbBf0WeOXGpb3DSeLpkia9QEF1FLtFYPpCK4m4wxj8Qab/s5axk42EYpKOd
/5jNP4cyOexdlJvrzJ4CuJ5CxJKizHeKwXVERADD8EtJYvxPJQ4beUr0NV+F1aHz
mF+GVtOkNC3tUVhXeOLpGRmHont2O41QAl+YTy69luqMP7u9di5h6/5YLkgdM1sO
MIx/YGnSNRaunD5UmqtjEAb80gU3TSjM18N9RnX/ovbt8M31X8T1k0p3kHmu4jPd
DZIxakBKBagUKMeiibMf7oYhRM8cdWYe0vfN/xsQewNUeBvJnFMQ3CEIlnmHL5Fx
bWOqYX1bFkbPp8CMg+fm6wn1jIWQ4jSrgf81br0ylOS0QYxh29cwfsvjiM5Xfyom
P6liwVgRmfOR6CT0LdBchhEikXYUunNvssnIGMNdflJziSVEgVqt8K5DyZMMstwz
XEROQk9kKZcw5KNqFCWvbKEt2xdZMdrIOSnQoFEzcG3flCQtKMs=
=e98N
-----END PGP SIGNATURE-----


--=-=sA+FZVpAyqJMT/=-=--



--===============4048893626459851456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4048893626459851456==--


