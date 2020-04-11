Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958C11A53D6
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 23:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a5UVZu3e6DnRE6RE18Y/ue+YZ0V38y2lR1Z5637vb8w=; b=juYRraYzxzOB82QhTBE3Iz265
	a6nCAmZlcz3cTNS7h2cFOBxlb/k8nhTzmkGsOBZVwPyOU9DoykfCDB/FR2L6h0EEBTSpBljXNa4NW
	Spw0dnIkciwf8jLbK64C/RJHyPys62c7sJxMLWJRcrd0+CpHsCAirhX02d88v5F/89Nc2qltInEm6
	7Oze3BTzmH9MCn9RLXldb1xRFGsJQmGINLJtF1IIYjEMDbjUU3VTcsF95LLBiVPoHtu6iTY6C9YZc
	aENA3xMhtHz5vAc+rnQFufl5jf48wu7nV53m78NT7caP+al+n2T41TpKZESg3M4W4W5nw0M6b1HaT
	enUqryLUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNO7J-0001Qw-Fa; Sat, 11 Apr 2020 21:56:45 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNO7C-0001QK-NU
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 21:56:41 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Ml6du-1j0Ndb2x7U-00lUQ2; Sat, 11 Apr 2020 23:56:31 +0200
From: <mail@adrianschmutzler.de>
To: "'Ernst Spielmann'" <endspiel@disroot.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200409172711.26807-1-endspiel@disroot.org>
In-Reply-To: <20200409172711.26807-1-endspiel@disroot.org>
Date: Sat, 11 Apr 2020 23:56:29 +0200
Message-ID: <015901d6104c$0f7a23b0$2e6e6b10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQE6B7uZxyfAyDYzKzeRhaAcDT8IK6msh8Ew
MIME-Version: 1.0
Content-Language: de
X-Provags-ID: V03:K1:vqtzSXGrnjQGgrlcJBCPzxTB+JvZN12ork6JrcpF8n2axUNxpQK
 qDN+G3zNBy3wHu4i2TeVF1QEmLG15eVYCtEaC5sJ/KtGrZu/3nOd4LRbrmVbix/kJqRW3bh
 zfPxWpESUbMPT4NMS+7qUtA662Z5bnUxeMqRZq8eKPT2AAxCsWmKfSiyE6LczUYd5UVCr1C
 EQNbfJrU5YNmnZis9eiig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mPpu2qVwnds=:D3kJ27IFfdbkA94zj7I0qH
 7mtUMuYkdvEXHSuSBtaOpToJg8aE4YhFW1AfhT2GnyybbbuCNvnOd/PffT11+f3GVbvpKGWim
 kxRvVD7ubiW2nK8A1IKsssOR9AUlCIsiSb4YDRI1pxpAm4lzJ/vDPtY83W93o48omwTBl6Srd
 lcRAE6NSQmp/+iWKHNO1NG5cJjf4iZqKWzUaJMipQSrHaV2sl/IqqIZivGVB6BzwInqMwdifh
 uNVHP0y5nm+buUMq6cY1UVbXgKalSSMv291XmLj5RSEigrTs04QiE1QXTvXnWCHO83N7boQtC
 uxNMOO2HGRg0JA985AISuBQahv/l/PP905b1d0QkaCqdmnWRVfcFStfx4nTkUxeoam9jFKqSA
 UF8cr2Pc3URQ36B5zQ/6fSc7/zKpS5v7JiWXuEuf0d6lmbDRjyWouPnPhcb2J7ltzji1Geztn
 9kJGuV7s5xbdzDtGYVDCh+zv6JUgLCamhogs5TRkNoGMsA7qfkQwjMs/nS2ind9U0NciPt9ah
 iKQHaeh2Vtf70WtfxgNosGH1P3SHfRdiOslKoVCsNi91TZrCjZ50++xMxx1vn0AYCq59POKMS
 Q2JgB0NL7W6sQRbzsJuMVEHHMGYkwUwgIPKe2cn0FqFTXPD1lzoZgQNlAbcPCymzeZFqfsdP2
 xoekMj8GzbilKktNwmW+dcB+9HAS1vU8070dUTA+gQFG06SZ/0N8VT2ubMr96mk0xwoneUcvn
 xykJ3ERTrBtqT9oe/+QsMNayye3N8bwQPwLMz1g59mxAe0E24kuSYEaHGYc6HDym2mTTyWWvU
 f1aJ1OrDADAQ6wC/N1yjPmyXXW+9QUWSoPuEJAURWQROv2kzRSZBdGdXwZZw4MEf3achWCm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_145639_063753_76BFFC29 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07 v2] ramips: add support for Asus
 RT-N10P V3 / RT-N11P B1 / RT-N12 VP B1
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
Content-Type: multipart/mixed; boundary="===============1913717336595673698=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1913717336595673698==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=7NcOGjqtSNOiNF=-="

This is a multipart message in MIME format.

--=-=7NcOGjqtSNOiNF=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Ernst Spielmann
> Sent: Donnerstag, 9. April 2020 19:27
> To: openwrt-devel@lists.openwrt.org
> Cc: Ernst Spielmann <endspiel@disroot.org>
> Subject: [OpenWrt-Devel] [PATCH 19.07 v2] ramips: add support for Asus RT-
> N10P V3 / RT-N11P B1 / RT-N12 VP B1

I do not see this device in master.

Please submit a patch that is based on master.
Note that we do not add devices to stable branch without a special reason.

Concerning the content, since the names of these devices are different, and=
 I think the image should reflect that, I'd create three separate "devices"=
 in OpenWrt for them, and only use a shared DTSI to reduce code duplication=
. That will be much more user-friendly at the end.

Best

Adrian

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
>=20
>  target/linux/ramips/base-files/etc/board.d/01_leds |   5 +
>  .../linux/ramips/base-files/etc/board.d/02_network |   1 +
>  target/linux/ramips/base-files/lib/ramips.sh       |   3 +
>  target/linux/ramips/dts/RT-N11P_B1.dts             | 125
> +++++++++++++++++++++
>  target/linux/ramips/image/mt76x8.mk                |   7 ++
>  5 files changed, 141 insertions(+)
>  create mode 100644 target/linux/ramips/dts/RT-N11P_B1.dts
>=20
> diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds
> b/target/linux/ramips/base-files/etc/board.d/01_leds
> index 5c005db0c1..c89af17d52 100755
> --- a/target/linux/ramips/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/base-files/etc/board.d/01_leds
> @@ -291,6 +291,11 @@ rp-n53)
>  	ucidef_set_led_netdev "eth" "Network" "$boardname:white:back"
> "eth0"
>  	set_wifi_led "$boardname:blue:wifi"
>  	;;
> +rt-n11p_b1)
> +	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0"
> "0xf"
> +	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan"
> "switch0" "0x10"
> +	ucidef_set_led_wlan "wlan" "wlan" "$boardname:green:wlan"
> "phy0tpt"
> +	;;
>  rt-n12p)
>  	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0.1
>  	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan"
> eth0.2 diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> b/target/linux/ramips/base-files/etc/board.d/02_network
> index f743ce851a..4ea5cf0565 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -112,6 +112,7 @@ ramips_setup_interfaces()
>  	pbr-m1|\
>  	psg1208|\
>  	psg1218a|\
> +	rt-n11p_b1|\
>  	rt-n12p|\
>  	sap-g3200u3|\
>  	sk-wb8|\
> diff --git a/target/linux/ramips/base-files/lib/ramips.sh
> b/target/linux/ramips/base-files/lib/ramips.sh
> index 093303892c..d1caa9d5ea 100755
> --- a/target/linux/ramips/base-files/lib/ramips.sh
> +++ b/target/linux/ramips/base-files/lib/ramips.sh
> @@ -439,6 +439,9 @@ ramips_board_detect() {
>  	*"RT-N10+")
>  		name=3D"rt-n10-plus"
>  		;;
> +	*"RT-N11P B1")
> +		name=3D"rt-n11p_b1"
> +		;;
>  	*"RT-N12+")
>  		name=3D"rt-n12p"
>  		;;
> diff --git a/target/linux/ramips/dts/RT-N11P_B1.dts
> b/target/linux/ramips/dts/RT-N11P_B1.dts
> new file mode 100644
> index 0000000000..d2824f8995
> --- /dev/null
> +++ b/target/linux/ramips/dts/RT-N11P_B1.dts
> @@ -0,0 +1,125 @@
> +/dts-v1/;
> +
> +#include "mt7628an.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible =3D "asus,rt-n11p_b1", "mediatek,mt7628an-soc";
> +	model =3D "Asus RT-N11P B1";
> +
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
> +			gpios =3D <&gpio1 5 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wlan {
> +			label =3D "rt-n11p_b1:green:wlan";
> +			gpios =3D <&gpio1 12 GPIO_ACTIVE_LOW>;
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
> +	mediatek,portmap =3D <0x3e>;
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
> index 7df5c04297..b9c37c58a0 100644
> --- a/target/linux/ramips/image/mt76x8.mk
> +++ b/target/linux/ramips/image/mt76x8.mk
> @@ -175,6 +175,13 @@ define Device/rakwireless_rak633  endef
> TARGET_DEVICES +=3D rakwireless_rak633
>=20
> +define Device/rt-n11p_b1
> +  DTS :=3D RT-N11P_B1
> +  IMAGE_SIZE :=3D $(ralink_default_fw_size_8M)
> +  DEVICE_TITLE :=3D Asus RT-N10P V3/RT-N11P B1/RT-N12 VP B1 endef
> +TARGET_DEVICES +=3D rt-n11p_b1
> +
>  define Device/skylab_skw92a
>    DTS :=3D SKW92A
>    IMAGE_SIZE :=3D 16064k
> --
> 2.14.5
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=7NcOGjqtSNOiNF=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6SPQwACgkQoNyKO7qx
AnDr8Q/+NZk6+yJuZZseEkWPwIBrZnewMiOp5M6avxaFR8WFVAqFxEMf3mh+krHw
T/bFoaMphaPMesJHSIZ7bJTv0aTYixD5uXJAohkVKOIH4afxf5PzxFtQD5hiLpB5
Mf+DvL1GOH3Ig3l1EOfrgBDhoBQvIkzxzjVJKYXtocy0p7YTFVOuZPVOqibMb0N9
WnKtG6dMUAzrvByHLBZ5VpdgUtBqIDnf1/HXM8Q19TJZsqtmpTXx74l9+irckXSE
Gl9f0Hd3oMtzHWux6Td3Dpu6Wv42IpPzRzazWyWAjg1PjoRW8qlAnvSP7jf9macp
MB6rfRuxF6RgiotaiEC+a+OBMc8Umi9Sl6eYWMmUEjtnUbNsZjsW0Rt3UpwiHSyG
bZIZNzrbI8azRj/VKCmA2bNwgfS4vWAhGkjUITiMPEqjZFcUtDh4QWGPRv3EBY+G
JeJjnONjJU1VIA8s/tanF3H/xVYLu+3nuOcVJqGxFnRTQnZKn39XnliRgD0GgkJy
wIBaatgMsKclVHzC9/71emJAl+Ijdwg1MR9OVeBhtCoE8YTC/EZPFwMIR+8jLg2w
soW/lcOTlxW6Ye5doGudFwi641UAaSp5HaRkn4FBRnjtVhaCSPCUAc6FN12N9UaL
roOjgZIqGeK/9iSkYdyxfYagWm/IyGTQX415UmFDPPhhofmZYTk=
=GtJp
-----END PGP SIGNATURE-----


--=-=7NcOGjqtSNOiNF=-=--



--===============1913717336595673698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1913717336595673698==--


