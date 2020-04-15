Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 478721AAA6D
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 16:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sfjMJiSj94L00n+5cFrMfA38LPTkOmPdC3D8R+lSX+g=; b=XxQfM+3AfDOAKgh2YM8ufK7rc
	rIN9HM9j25bfkbVMrr5OJb6au+Q2+Z7m9WpRWL1hjwFdmm5BkwPcYrMRn3JGRfVk2kcpoh+yZJRgC
	tnHIt7xIaj2ykgES2C9+IyOIKsvnii0jHxXRm6b8TBzpPudI/rxhRsAgADeVIPa1VaqaIDhmS9RfC
	STXO0TO7ONeQp9b2hPQxb/SaVSFgwttCD+WvJWSq65vb7bBR0vvpGlAYU1BxiuQrpVCQVJMCCAr6O
	spuWtsKI9kuf6UJcpGFcRlfqKq3oW2084fTStajPJrvf3sG8z11ySxOapPb0SS0WOcB+6e7jALasA
	CcrCOg5dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOjJk-0003rP-VK; Wed, 15 Apr 2020 14:47:08 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOjJe-0003qa-Cz
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 14:47:05 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M7sM0-1jJlEx1XZS-004xWt; Wed, 15 Apr 2020 16:46:57 +0200
From: <mail@adrianschmutzler.de>
To: "'Ernst Spielmann'" <endspiel@disroot.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200414141248.6014-1-endspiel@disroot.org>
In-Reply-To: <20200414141248.6014-1-endspiel@disroot.org>
Date: Wed, 15 Apr 2020 16:46:56 +0200
Message-ID: <008501d61334$b66cd060$23467120$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHTKb84tVKyw8cpThmCUpiWyvIkOaiAEV2w
X-Provags-ID: V03:K1:3ZTOIFYXmK8o6MziycXfIT8Vg5wU2Euo0q/NMCF8jsCcReVExHG
 YbPOclnjw83iaKywRzsg3+zM27ZSMERPY5vg9aSwC9IYNzymGfKe+j064EGUaeQKUXkgVyV
 mkPbGaaOqU2gMfe/uPLFY0Ehy3GvrynrGMzasJmlELyEBUUEsEbyc8Myb6iFFdWx7waWNX5
 g298/jD6Q5Aa9q5Gi1quw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mD2za+A5cUE=:tkgSkUFlZ4/st+0TmyD/0e
 vmQQnr0yy0d5UWjziSJ67ZZZCvocNRYQYwtw0MCaCS34Ky091y0nV5upn/is2ZrKHTfFAyr2F
 HFp0bzBTmQH6XWEsQ4qaSXb3egyBgxkepsn4HN1rxok8DFgcVcBdeu0dDKjTq+aAqp17Ji+Jx
 yImAXvy3IOxtL6nUnd7SynbLWQMrtkNyAT4n5H4VMNkY1xmvUUy1liWW5pAFd5+4zsDLRyY55
 G7CFzz3nCczjQa96h1C9Ibu3REMq6qqFO2rYv9iolCjoZRhlGF4xTkUAQwfde9C8ucrVWa8GC
 Am31Voftkn57IUHX6IyigQWagTiIbiqCyMMiEAS5dFXZudfsjQj7TGrQVEPlGE7SqMrrPZoTA
 lJ045aW8g+Xw1Xe3UH05zYY942gYIAtEjvtCQ2Y2vt497JD7/osl4HEd+akecf5+Qkj597X2l
 PtVh//pPOorS83J1ZAXDw9C+yLvV9SyN/jumLF7vd1P/WX5ScPWbrLdyqURY8oW8faazgdPCi
 Ly/MfKRqdZpNZcnjTg8AwOV/Q8UQQEPbtY+0FfFIopMUN1CJ9PHh76C6zrn6/8/PQeVai/b4c
 5vUNvXS2Es3s9juTxlUS4pT516uOSO0oSrfwZZErC7beRYxmMPqHQTzjvVq145sM+gJk5lEoY
 xTxrYiMMPsTBERmFmKM9KtXgZjTBqpF2HeejbwD2mvosGqS8GvrzFFS59YJI6UcKF8ckgtYPP
 XwkV/DTw8edlQVsVC40SAvz3rQj2HEM5+3xi2sOXxQ7o0xmvLpMEmlO0qgcJWO3/3npYt5Uw6
 NqzwMLI0qmLvA3OLX08hbqq8mJ4AVtZwHOLKXfr3GmK1Qghdydf6JFepI13ZNGfGgAqSATx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_074702_741913_C2DA4175 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Asus RT-N10P
 V3 / RT-N11P B1 / RT-N12 VP B1
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
Content-Type: multipart/mixed; boundary="===============2222582968333724197=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2222582968333724197==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=yb0c6P341wVX1f=-="

This is a multipart message in MIME format.

--=-=yb0c6P341wVX1f=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Ernst Spielmann
> Sent: Dienstag, 14. April 2020 16:13
> To: openwrt-devel@lists.openwrt.org
> Cc: Ernst Spielmann <endspiel@disroot.org>
> Subject: [OpenWrt-Devel] [PATCH v3] ramips: add support for Asus RT-N10P
> V3 / RT-N11P B1 / RT-N12 VP B1
>=20
> Specifications:
>=20
> - MT7628NN @ 580 MHz
> - 32 MB RAM
> - 8 MB Flash
> - 5x 10/100 Mbps Ethernet (built-in switch)
> - 2.4 GHz WLAN
> - 2x external, non-detachable antennas (1x for RT-N10P V3)
>=20
> Flash instructions:
>=20
> 1. Set PC network interface to 192.168.1.75/24.
> 2. Connect PC to the router via LAN.
> 3. Turn router off, press and hold reset button, then turn it on.
> 4. Keep the button pressed till power led starts to blink.
> 5. Upload the firmware file via TFTP. (Any filename is accepted.) 6. Wait=
 until
> the router reboots.
>=20
> Signed-off-by: Ernst Spielmann <endspiel@disroot.org>
> ---
> v2: RT-N12 VP *B1* was incorrectly mentioned as *B3* in mt76x8.mk
> v3: switch to master branch & split device group into individual entries
>=20
>  .../linux/ramips/dts/mt7628an_asus_rt-n10p_v3.dts  |   8 ++
>  .../linux/ramips/dts/mt7628an_asus_rt-n11p_b1.dts  |   8 ++
>  .../ramips/dts/mt7628an_asus_rt-n12_vp_b1.dts      |   8 ++
>  target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi  | 120
> +++++++++++++++++++++
>  target/linux/ramips/image/mt76x8.mk                |  24 +++++
>  .../ramips/mt76x8/base-files/etc/board.d/01_leds   |   7 ++
>  .../mt76x8/base-files/etc/board.d/02_network       |   3 +
>  7 files changed, 178 insertions(+)
>  create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-
> n10p_v3.dts
>  create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-
> n11p_b1.dts
>  create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-
> n12_vp_b1.dts
>  create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi
>=20
> diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n10p_v3.dts
> b/target/linux/ramips/dts/mt7628an_asus_rt-n10p_v3.dts
> new file mode 100644
> index 0000000000..c55fee8533
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_asus_rt-n10p_v3.dts
> @@ -0,0 +1,8 @@

Please add a SPDX license identifier here and in the other DTS(I) files.

> +/dts-v1/;
> +
> +#include "mt7628an_asus_rt-n1x.dtsi"
> +
> +/ {
> +	compatible =3D "asus,rt-n10p_v3", "mediatek,mt7628an-soc";

use hyphen between model and variant in compatible: "asus,rt-n10p-v3" (and =
adjust below)

Same for file name:

mt7628an_asus_rt-n10p-v3.dts


> +	model =3D "Asus RT-N10P V3";
> +};
> diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n11p_b1.dts
> b/target/linux/ramips/dts/mt7628an_asus_rt-n11p_b1.dts
> new file mode 100644
> index 0000000000..d9b776865f
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_asus_rt-n11p_b1.dts
> @@ -0,0 +1,8 @@
> +/dts-v1/;
> +
> +#include "mt7628an_asus_rt-n1x.dtsi"
> +
> +/ {
> +	compatible =3D "asus,rt-n11p_b1", "mediatek,mt7628an-soc";

hyphen.

> +	model =3D "Asus RT-N11P B1";
> +};
> diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n12_vp_b1.dts
> b/target/linux/ramips/dts/mt7628an_asus_rt-n12_vp_b1.dts
> new file mode 100644
> index 0000000000..ddfcc9ae6d
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_asus_rt-n12_vp_b1.dts
> @@ -0,0 +1,8 @@
> +/dts-v1/;
> +
> +#include "mt7628an_asus_rt-n1x.dtsi"
> +
> +/ {
> +	compatible =3D "asus,rt-n12_vp_b1", "mediatek,mt7628an-soc";

hyphen: ... rt-n12-vp-b1

> +	model =3D "Asus RT-N12 VP B1";
> +};
> diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi
> b/target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi
> new file mode 100644
> index 0000000000..fee25aedaf
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi
> @@ -0,0 +1,120 @@
> +#include "mt7628an.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	aliases {
> +		led-boot =3D &led_power;
> +		led-failsafe =3D &led_power;
> +		led-running =3D &led_power;
> +		led-upgrade =3D &led_power;
> +	};
> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,57600";
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_power: power {
> +			label =3D "rt-n11p_b1:green:power";

Since labels contain the device name, they have to be moved into the DTS fi=
les (even though this means they are partially redundant).
So, in your case just move the whole "leds" block there. Despite, don't for=
get the underscore->hyphen adjustment here as well.

> +			gpios =3D <&gpio1 5 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wlan {
> +			label =3D "rt-n11p_b1:green:wlan";
> +			gpios =3D <&gpio1 12 GPIO_ACTIVE_LOW>;

Please add the phy0tpt trigger here and remove it in 01_leds.

> +		};
> +
> +		wan {
> +			label =3D "rt-n11p_b1:green:wan";
> +			gpios =3D <&gpio1 11 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan {
> +			label =3D "rt-n11p_b1:green:lan";
> +			gpios =3D <&gpio1 10 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys-polled";
> +		poll-interval =3D <20>;
> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&gpio0 5 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_RESTART>;
> +		};
> +	};
> +};
> +
> +&spi0 {
> +	status =3D "okay";
> +
> +	m25p80@0 {

flash@0

> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <10000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x0 0x30000>;
> +				read-only;
> +			};
> +
> +			partition@30000 {
> +				label =3D "u-boot-env";
> +				reg =3D <0x30000 0x10000>;
> +				read-only;
> +			};
> +
> +			factory: partition@40000 {
> +				label =3D "factory";
> +				reg =3D <0x40000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@50000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x50000 0x7b0000>;
> +			};
> +		};
> +	};
> +};
> +
> +&ethernet {
> +	mtd-mac-address =3D <&factory 0x4>;

No additional MAC addresses in factory? (0x28, 0x2e, 0xe000, 0xe006)

> +	mediatek,portmap =3D <0x3e>;

I think the portmap belongs into &esw?

> +};
> +
> +&wmac {
> +	status =3D "okay";
> +};
> +
> +&state_default {
> +	default {
> +		ralink,group =3D "refclk";
> +		ralink,function =3D "gpio";

Needs to be changed to:

+	gpio {
+		groups =3D "refclk", "i2c", "p1led_an", "p0led_an", "wled_an";
+		function =3D "gpio";


> +	};
> +};
> +
> +&usbphy {
> +	status =3D "disabled";
> +};
> +
> +&ehci {
> +	status =3D "disabled";
> +};
> +
> +&ohci {
> +	status =3D "disabled";
> +};
> diff --git a/target/linux/ramips/image/mt76x8.mk
> b/target/linux/ramips/image/mt76x8.mk
> index e2890c98e6..36aa296fb8 100644
> --- a/target/linux/ramips/image/mt76x8.mk
> +++ b/target/linux/ramips/image/mt76x8.mk
> @@ -213,6 +213,30 @@ define Device/rakwireless_rak633  endef
> TARGET_DEVICES +=3D rakwireless_rak633

Please add according to alphabetic sorting.

>=20
> +define Device/asus_rt-n10p_v3

As discussed above, this should be
	asus_rt-n10p-v3

Adjust the rest accordingly.

> +  IMAGE_SIZE :=3D 7872k
> +  DEVICE_VENDOR :=3D Asus
> +  DEVICE_MODEL :=3D RT-N10P V3
> +  SUPPORTED_DEVICES +=3D rt-n10p_v3

SUPPORTED_DEVICES can be removed.

> +endef
> +TARGET_DEVICES +=3D asus_rt-n10p_v3
> +
> +define Device/asus_rt-n11p_b1
> +  IMAGE_SIZE :=3D 7872k
> +  DEVICE_VENDOR :=3D Asus
> +  DEVICE_MODEL :=3D RT-N11P B1
> +  SUPPORTED_DEVICES +=3D rt-n11p_b1
> +endef
> +TARGET_DEVICES +=3D asus_rt-n11p_b1
> +
> +define Device/asus_rt-n12_vp_b1
> +  IMAGE_SIZE :=3D 7872k
> +  DEVICE_VENDOR :=3D Asus
> +  DEVICE_MODEL :=3D RT-N12 VP B1
> +  SUPPORTED_DEVICES +=3D rt-n12_vp_b1
> +endef
> +TARGET_DEVICES +=3D asus_rt-n12_vp_b1
> +
>  define Device/skylab_skw92a
>    IMAGE_SIZE :=3D 16064k
>    DEVICE_VENDOR :=3D Skylab
> diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
> b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
> index c66e13d3c5..8b8f4ad6fa 100755
> --- a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
> @@ -20,6 +20,13 @@ case $board in
>  alfa-network,awusfree1)
>  	set_wifi_led "$boardname:blue:wlan"
>  	;;
> +asus,rt-n10p_v3|\
> +asus,rt-n11p_b1|\
> +asus,rt-n12_vp_b1)
> +	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0"
> "0xf"
> +	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan"
> "switch0" "0x10"
> +	ucidef_set_led_wlan "wlan" "wlan" "$boardname:green:wlan"
> "phy0tpt"

Move that to DTS as indicated above.

> +	;;
>  cudy,wr1000)
>  	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan"
> "switch0" "0x10"
>  	ucidef_set_led_switch "lan1" "lan1" "$boardname:blue:lan1"
> "switch0" "0x08"
> diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
> b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
> index 5230717506..9889d92ada 100755
> --- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
> @@ -59,6 +59,9 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
>  		;;
> +	asus,rt-n10p_v3|\
> +	asus,rt-n11p_b1|\
> +	asus,rt-n12_vp_b1|\
>  	hiwifi,hc5661a|\
>  	mediatek,mt7628an-eval-board|\
>  	mercury,mac1200r-v2|\

Please move that block according to alphabetic sorting of its new first mem=
ber.

Best

Adrian

> --
> 2.14.5
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=yb0c6P341wVX1f=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6XHl0ACgkQoNyKO7qx
AnADlQ/+PHyJdhRlBKZ5JwqO06YRKRl1qoBreddGHOEYoNPYyv7JA9oc7875VgN3
KuwtJHeZeYzUrxUGU7+Aa0EQ7YIL8zlsmUMuRIEf4MuZpS/kt39FiKkVxgtgMxg4
foNNZj/0XeTSJwWw7fvQxAivZqCTK8xZDsn7Fk60eHc0O2LnW2p6xyJYqMBnS5Ft
bPOeLTDJV4jFrP1yAIjPkYTpaL+S8uNiUY/ASY3VV2Nrk6NAmyMeBSnw6GnHbHMn
pCAHJxVF0zy9xcZb9cUGZncfPQm6gMqumwAMA7ma/PgHSybZMMZCqRHtWRcxwBuA
40OOQiRhKEg2aBXnYtMf0uO8/LcDLDEKCkiPQ+dY0N13ecXQyM6yz2Haa5tiIz65
JwwIp+8XgduufgC82hyaqkSRXEo9VcJw+r+6UJPLeRkBbQxKwsdac/EDIcQbHr+k
rOrYO3ib4djf7BQLHUirqwk4OhCcI51iZOKQu0INrGkMNQOxOuTrVBNgzKUbVXxG
ad9LvQM0kKKVCLgcLY6QHiipDaUkIkqyP7+KVbIUWRBwPeF+RXTEJfAEG5+ppB+3
5wbBZx23X/VgPJPT9NbICAXwlq43qOe0ZiWoFq4S8VVRubGTiK/UBobjjlK0VQVI
jHQvJIQDjE5Tl/cIDFQ0sNx2JPzOoQxJGl6yCB/ekVRS24bG6MA=
=GT34
-----END PGP SIGNATURE-----


--=-=yb0c6P341wVX1f=-=--



--===============2222582968333724197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2222582968333724197==--


