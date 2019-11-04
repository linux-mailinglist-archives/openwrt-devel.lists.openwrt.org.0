Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9555EE47D
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 17:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=20VON46PeVYDZXokm+zdrhTAj5dVNXhhrINXCsrL0aY=; b=fx9A3t7IFYngBAKACMh3+HZKl
	oIyRVyYpFKeupFZnHfC5nG9c4Uw/Gp91RSDNtdxZU2D6NRhr64vdISZrP3H3bUD91P7mAdgmyPXrF
	c2Oq0jVUP3BArHJS4rLugDGAQdD8TysMmPNCbCkw2fhUc1dwD/IEUghrPxUIgynxHsHtudHp2GTsG
	54P3WbqdwE1IUzGeCfqTickij8UgXCW5qtLU9sOkTmTlpKMY3rw/Y6dxWmlFP6zILeeio20UFsCaU
	rlcNf5AS3d8wEgwwOXb+lxB6+UnYCeKroqilgnDtiYt4EFdOiz4o97KFZsGMq1xuaRWobBTDGXrO9
	FCe5zBl7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRf1k-0006NO-Qi; Mon, 04 Nov 2019 16:16:24 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRf1d-0006Mn-Mc
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 16:16:19 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MIdW7-1igHco1dJ7-00EhBy; Mon, 04
 Nov 2019 17:16:15 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20191103113247.9782-1-fercerpav@gmail.com>
In-Reply-To: <20191103113247.9782-1-fercerpav@gmail.com>
Date: Mon, 4 Nov 2019 17:16:15 +0100
Message-ID: <024701d5932b$2eba0f40$8c2e2dc0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQFlRFxqn6fDMSD1VqGll6s+n+BPMKhbw5wA
MIME-Version: 1.0
X-Provags-ID: V03:K1:OakQb8xfBlwuSqsDKIcXBB3HXqic4xdmlIoXSAQ3OwA+DzV4MZl
 y0HhAEuFw9EBBhNV68gLMDQRxt4GH/GnJ2NV+47K5RX7e8MCKiqGudVwRjFFAjh+jKVWZul
 95k9NgpRG4eNdXPZVfxTTkeWvthAlSpL8g8cjvJo8OSR0w/3DhN7EpT7PjM+mgDVmzayHP5
 fa7cgoDSflygmfz2T8WhQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n02KjvBT9/c=:+NWxHzl342xYcF+tPwNEju
 HTbqz7U1VgR+JNtueiSB+rb/6+xmsy8kHPFqE7Ek4zWAhlswZxhdJGuWEvNuy02lLEIgAjVzD
 AnOQnQq1FwJ7Q0Iy6f3WosghZ0qKrxzGL/2OqoHRCiwEui9E5BU4YSFN7+FQGXWNNkCOmtngZ
 Nchbfthkd+IqFySmqoYIrqLn/zJRgW7yVMsT6tCs2/gqCi/c2MruB0xoOm3j3c53vVWABXLld
 TtXUQSyKfJhx72vw8pb9Z5rFcWok/Sstl87w54h+3Q3TxVmAm3wY4dI4Fh+0piEwoYndjr6Jp
 eUWMG1/k4OWPy4JjGYQZvoyltImV0V3QNGPsPwCo4JhpeM2mi7PLzVjOIAevDNIgyIFOTxRFw
 50XlXyN025ljD8fuC7bAtEGhYMjGN8eIoBiKqUmLnAZ8+lPNWOlqu9/+UmXdFOcx5qaltqxvt
 fkxwdJoxrHBKXPcxcnuwj02dR+lfReWolNgYIziUabDTNETq4OLCB6JiYnzsQa7I0kV7CF5dj
 2Oz3JFLfgirdIrhHz2NqcfZ0U0+J8u+01BMOUCdH74BCQc741jJCpylr/JFXV8MA7qnJsoh4k
 6gTOyXZiWWZ/wcClf1AsGwU04DOnbDVXyBW3xFVwkCuSsjbPbYQiK4fHaQcj20nCMW/JlOAQX
 gayqBLkgi94aJk8O0WtDh9BHrS4ObTDRRbR/nvm5Oq1J6zYDp8UnQMyQ/zJPpn6dwyuHGH40s
 AbOn9MyCf7NqVurDQI70mbhC4pbOCFEOdoGaXQsiR1f+Ez3czAwCgNu2JxL8ThkfWPNaBPoPP
 ltzXlaMqFHjbDN8HANt99xPesWXyfd5eqGUXKkHLkCjMoiFfwB9x0TFrfymFo3wuonE5dOLSH
 w656ALijDDTCbzLntQEmmMbPEt+UGz6pHIxgm0Bho=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_081618_031576_32CB5F3D 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Content-Type: multipart/mixed; boundary="===============6411832953615529882=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6411832953615529882==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=smijz50QGy50EC=-="

This is a multipart message in MIME format.

--=-=smijz50QGy50EC=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> diff --git a/target/linux/ath79/dts/ar7240_dlink_dir-600-a1.dtsi
> b/target/linux/ath79/dts/ar7240_dlink_dir-600-a1.dtsi
> new file mode 100644
> index 0000000000..e6206f6f42
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar7240_dlink_dir-600-a1.dtsi
> @@ -0,0 +1,173 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "ar7240.dtsi"
> +
> +/ {
> +	aliases {
> +		led-boot =3D &power_amber;
> +		led-failsafe =3D &power_amber;
> +		led-running =3D &power_green;
> +		led-upgrade =3D &power_amber;
> +		label-mac-device =3D &eth0;

This only works when the address is set in DT, but you use 02_network.

> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		reset {
> +			label =3D "reset";
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 8 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +
> +		wps {
> +			label =3D "wps";
> +			linux,code =3D <KEY_WPS_BUTTON>;
> +			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +	};
> +
> +	gpio-leds {

Use "leds".

> +		compatible =3D "gpio-leds";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&switch_led_pins>;
> +
> +		power_green: power_green {
> +			label =3D "d-link:green:power";

It's policy to use boardname instead of "d-link" here, except for tplink as=
 far as I know.

> +			gpios =3D <&gpio 6 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		power_amber: power_amber {
> +			label =3D "d-link:amber:power";
> +			gpios =3D <&gpio 1 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		wps {
> +			label =3D "d-link:blue:wps";
> +			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan1 {
> +			label =3D "d-link:green:lan1";
> +			gpios =3D <&gpio 13 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan2 {
> +			label =3D "d-link:green:lan2";
> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan3 {
> +			label =3D "d-link:green:lan3";
> +			gpios =3D <&gpio 15 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan4 {
> +			label =3D "d-link:green:lan4";
> +			gpios =3D <&gpio 16 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wan_amber {
> +			label =3D "d-link:amber:wan";
> +			gpios =3D <&gpio 7 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		wan_green {
> +			label =3D "d-link:green:wan";
> +			gpios =3D <&gpio 17 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&spi {
> +	status =3D "okay";
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
> +			uboot: partition@0 {
> +				reg =3D <0x0 0x30000>;
> +				label =3D "u-boot";
> +				read-only;
> +			};
> +
> +			nvram: partition@30000 {
> +				reg =3D <0x30000 0x10000>;
> +				label =3D "nvram";
> +				read-only;
> +			};
> +
> +			firmware: partition@40000 {
> +				compatible =3D "denx,uimage";
> +				reg =3D <0x40000 0x370000>;

3520k? Does this even build with standard buildbot settings?
Be aware that you might not find someone willing to merge this.

> +				label =3D "firmware";
> +			};
> +
> +			mac: partition@3b0000 {
> +				reg =3D <0x3b0000 0x10000>;
> +				label =3D "mac";

Why is there a partition labelled mac that is not used for MAC addresses? H=
ave you checked the partition for MAC addresses?

> +				read-only;
> +			};
> +
> +			lp: partition@3c0000 {
> +				reg =3D <0x3c0000 0x30000>;
> +				label =3D "lp";
> +				read-only;
> +			};
> +
> +			art: partition@3f0000 {
> +				reg =3D <0x3f0000 0x10000>;
> +				label =3D "art";
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	/* ethernet MAC is stored in nvram */
> +};
> +
> +&eth1 {
> +	status =3D "okay";
> +
> +	/* ethernet MAC is stored in nvram */
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +
> +	ath9k: wifi@0,0 {
> +		compatible =3D "pci168c,002b";
> +		reg =3D <0x0000 0 0 0 0>;
> +		qca,no-eeprom;
> +		/* LAN MAC is supposed to be used for wifi */
> +		#gpio-cells =3D <2>;
> +		gpio-controller;
> +	};
> +};
> +
> +&pinmux {
> +	switch_led_pins: pinmux_switch_led_pins {
> +		pinctrl-single,bits =3D <0x0 0x0 0xf8>;
> +	};
> +};
> +
> +&uart {
> +	status =3D "okay";
> +};
> diff --git a/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts
> b/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts
> new file mode 100644
> index 0000000000..7ea6e8a583
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "ar7240_dlink_dir-600-a1.dtsi"
> +
> +/ {
> +	model =3D "D-Link DIR-615 rev. E4";

Remove the "rev.".

> +	compatible =3D "dlink,dir-615-e4", "qca,ar7240";
> +
> +	ath9k-leds {
> +		compatible =3D "gpio-leds";
> +
> +		wlan {
> +			label =3D "d-link:green:wlan";
> +			gpios =3D <&ath9k 1 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};
> +	};
> +};
> diff --git a/target/linux/ath79/image/tiny.mk
> b/target/linux/ath79/image/tiny.mk
> index 8f867575af..a4aed65684 100644
> --- a/target/linux/ath79/image/tiny.mk
> +++ b/target/linux/ath79/image/tiny.mk
> @@ -13,6 +13,22 @@ define Device/buffalo_whr-g301n
>  endef
>  TARGET_DEVICES +=3D buffalo_whr-g301n
>=20
> +define Device/dlink_dir-615-e4
> +  ATH_SOC :=3D ar7240
> +  DEVICE_VENDOR :=3D D-Link
> +  DEVICE_MODEL :=3D DIR-615
> +  DEVICE_VARIANT :=3D E4
> +  IMAGE_SIZE :=3D 3520k
> +  FACTORY_IMAGE_SIZE :=3D 3456k
> +  IMAGES +=3D factory.bin
> +  IMAGE/default :=3D append-kernel | append-rootfs | pad-rootfs
> +  IMAGE/sysupgrade.bin :=3D $$(IMAGE/default) | append-metadata |
> check-size $$$$(IMAGE_SIZE)
> +  IMAGE/factory.bin :=3D $$(IMAGE/default) | check-size
> $$$$(FACTORY_IMAGE_SIZE) | \
> +    pad-to $$$$(FACTORY_IMAGE_SIZE) | append-string
> "AP99-AR7240-RT-091105-05"
> +  SUPPORTED_DEVICES +=3D dir-615-e4
> +endef
> +TARGET_DEVICES +=3D dlink_dir-615-e4
> +
>  define Device/pqi_air-pen
>    ATH_SOC :=3D ar9330
>    DEVICE_VENDOR :=3D PQI
> diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
> b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
> index bb1799c645..80877929f4 100755
> --- a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
> @@ -15,6 +15,13 @@ buffalo,whr-g301n)
>  	ucidef_set_led_switch "lan3" "LAN3" "$boardname:green:lan3"
> "switch0" "0x08"
>  	ucidef_set_led_switch "lan4" "LAN4" "$boardname:green:lan4"
> "switch0" "0x10"
>  	;;
> +dlink,dir-615-e4)
> +	ucidef_set_led_netdev "wan" "WAN" "d-link:green:wan" "eth0"
> +	ucidef_set_led_switch "lan1" "LAN1" "d-link:green:lan1" "switch0"
> "0x02"
> +	ucidef_set_led_switch "lan2" "LAN2" "d-link:green:lan2" "switch0"
> "0x04"
> +	ucidef_set_led_switch "lan3" "LAN3" "d-link:green:lan3" "switch0"
> "0x08"
> +	ucidef_set_led_switch "lan4" "LAN4" "d-link:green:lan4" "switch0"
> "0x10"
> +	;;

If you use boardname for leds as indicated above, you can merge this with b=
uffalo,whr-....

>  netgear,wnr1000-v2|\
>  netgear,wnr2000-v3)
>  	ucidef_set_led_netdev "wan-amber" "WAN (amber)"
> "netgear:amber:wan" "eth0"
> diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/02_network
> b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
> index 49fccc0b2e..ff12975063 100755
> --- a/target/linux/ath79/tiny/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
> @@ -35,6 +35,7 @@ ath79_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
>  		;;
> +	dlink,dir-615-e4|\
>  	netgear,wnr1000-v2|\
>  	netgear,wnr2000-v3|\
>  	netgear,wnr612-v2|\
> @@ -75,6 +76,10 @@ ath79_setup_macs()
>  	local board=3D"$1"
>=20
>  	case "$board" in
> +	dlink,dir-615-e4)
> +		lan_mac=3D$(mtd_get_mac_ascii "nvram" "lan_mac")
> +		wan_mac=3D$(mtd_get_mac_ascii "nvram" "wan_mac")
> +		;;

I didn't find a reference to "wan_mac" in nvram in ar71xx. Did you deduce t=
hat by yourself?

Best

Adrian

--=-=smijz50QGy50EC=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3ATssACgkQoNyKO7qx
AnBJ9w//R70lLIKG7SgpmzHsueidSc9o/+690E452LEq4aaV+55XLB0DNYQAwMHO
JXBnRfaJJtPUibTD3uWBdclo67nPVYn4Vxw1WIOmRAsclX879aGQd81RJmX/x65x
0kFlP9t4hg8kXmopLA7pTItVMHmeQd7864u7CpN1n9N/CckFmBEPGDcaMw8xR3gS
m7CBhVlhYuxjXPQmm8aHJPA8XdLTHVCilEPw+dMeLKfofieyc8bO1TrKnjdGtBnP
2D5KJSEjCxDcDy6nedKy/webhd1u4ScWnhBbGa+Us1RWPUijFKt5rX7X3ojJ7MPn
nCaNipXg7rgFC6Hr3TUPwB9Xz2K4STQ6xtb1tEiTFHVZCElUfPHS5elqD0YumXmj
e65KKhe+y2t7p6JHGM18j8boVA5c1neGyz4ftjvBY4Vd2dr7PxNU3Q2olOp1sS4b
IdMUyF/WDXaW+SfLta0oYeOlxaj63d8VmiLqWzIG0Uq6cApfbwKHG/k/cA3tMSu/
jgYFVcnWAhshx5YkhYjFUxTpv2E3dhcvaoy0F0G1y6y5ExOzI5vCB+898CCyCX/V
F67k8u8tezLZyzVcdnfGsh1+sXd6m8+Abwk/a/WPNNFICu6lFNVI23W9SNeobE0v
zcjcuh5F9ia2Tc499MqJmH0X9Dvjzf+6R9h6+Tw/b49zleTvxT8=
=NVR6
-----END PGP SIGNATURE-----


--=-=smijz50QGy50EC=-=--



--===============6411832953615529882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6411832953615529882==--


