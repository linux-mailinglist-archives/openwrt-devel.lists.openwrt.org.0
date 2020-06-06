Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990CB1F08E2
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 23:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eAkNxmOFn4c+mjQMhS5P5VT/wrdYF+KMX+oat4wZydg=; b=nr3DrQzAIQAECAVkVEhai2ts7
	WIrRF2jY3/tZuCS0eJNQ9+3OOlvjK/QkfjyYj9cjVx2TV85+4WJtQmGJKCDCWCF6OPVlrBm1jsmvQ
	iS+S3I4XfObMV3Etk4YYmwCrdyDmU/XL2bEp2nGXBWQmvcA52UtqAn2lkrGMDSNhqdj2u3hJJ+dMa
	xZ0uRfKBPgJjNBnrIJXXT/hZ2VHyuT8pn9VVZtnXG4Z/RLPsidOp8hQMbav5ZJIguReK6Dewe/U1x
	WtQqEnPp5p5VF/J67NnMAA9JoTebrmX+7MmHSjDJEMJhNg67Mgn6Bn5msjquwmvGhoi1T9vrQn+2O
	NORdar4rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhgPN-0004v5-S5; Sat, 06 Jun 2020 21:31:17 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhgPF-0004uc-Sn
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 21:31:12 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MEFnR-1jphAF3Drp-00AGX7; Sat, 06 Jun 2020 23:31:06 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Daniel_Gonz=C3=A1lez_Cabanelas'?= <dgcbueu@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <2710876.ZIJXS6utr4@tool>
In-Reply-To: <2710876.ZIJXS6utr4@tool>
Date: Sat, 6 Jun 2020 23:31:06 +0200
Message-ID: <00c301d63c49$c9af0ce0$5d0d26a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQFc2j4HF5gZEgJHDc7TkL7125G1Qam+3RzA
Content-Language: de
X-Provags-ID: V03:K1:UPc3KUBq4CWMAMQEgKXZXAOyVu9U9vH3Jt1p12b2DpfbLHP0lIG
 YxeNF9/BMSML2KRj9L58Pz2uNmZY5Znuh2fhtJCis1LgUfRhadhV0OVbsSsnALSApP1MjD+
 ZumAhQ958RsWk4QHLMMykQYWWgc9ieL3xFMerjH17q0ctP7VGIl0gtuDr5A0Ua2o+QZvQ7R
 /ysb0Xkrvs6VLQCyD5Prw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8FXbC0gudXs=:BwEUBZbI98Nf6aUNcoVJ+N
 0XbPL60OpoEMKzOcHJ3IWAajLOsptss0OZF4uVCwDSHmid2XdcMJa9Fs1rJDhC55ZXLjlKf1m
 p1Qg8cFYgrTTxqCyhylZJbOPtTTm/lrieYamhjVW6rd/RUJF69cw0K4iFKit12ye4CLvR5UFy
 JbndpTCrFTtkxR6KTOcu804JNpwvJ+SyWs/GAXdJGAc6ES7vz97ZbP86Bs/FZCX1cgpZofkro
 d+5HKy3iqF01UnyQsgygvsUbfwgd2F9j6VEXw1wq+e2mxwX2ax3+9VIqiosXYWKyQOkiTaTgt
 Wh4j3sVncdvPUWnZeoRavXndd/nNKcD0UfBGPBqvd2uyN3VIa/O2/ymkkeal5axbvQL+ZUHqF
 QlxaPW/cHUNlv9mEK9A0JzAHm/WmX90d14//v3UlPpjXRTrZ44fz2rzC8DTI1BhrF8D0aAxzJ
 mOkQkYW9Xl+T/Zk6rqLDGvgxEhThxh8+d0b1paRpRaOBMdbRdZB9uyvNmQCY0mPTByvFv4+9g
 TaJbicpslSgEap3SLaXC+jpovNVCB7gkNbeDoiYFjkhSjSyVLf5N9cWSIaCsWzCfMai2FPSjN
 mRzSrkTZxy8MDW9MiNdz/UZnCXQ7sPQbm3YceTs6JEEbklhZzeINreVHKhSukY4RG6E1pirk3
 zYQGqZPl1x2ZUMt0VSh5vZNaJrxPLZvgaUIs/RpGoD3XlNBdmKs/K2j0I/YgDXdzZD0mpAxfD
 mtWY3Sa+TEzeaD9hutPxhcjTAV7Z9CPdfyRYN02XxkNUA9voICtkiWwcbq+j2HsfeLZLN9oE+
 BDuu7107LLU4b79wwCAQzk5iD0Wm7s/OlUX/xNdPhY5XjuzXKZ6wEmkWmlyJTXWbUP6CHwe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_143110_232057_842974C7 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: Re: [OpenWrt-Devel] [PATCH 4/4 v4] bcm63xx: add support for the
 Sercomm H500-s
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
Cc: freifunk@adrianschmutzler.de, noltari@gmail.com
Content-Type: multipart/mixed; boundary="===============3817803401432961760=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3817803401432961760==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=N0ZLDlRIl2593r=-="

This is a multipart message in MIME format.

--=-=N0ZLDlRIl2593r=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

> -----Original Message-----
> From: Daniel Gonz=C3=A1lez Cabanelas [mailto:dgcbueu@gmail.com]
> Sent: Samstag, 6. Juni 2020 21:55
> To: openwrt-devel@lists.openwrt.org
> Cc: noltari@gmail.com; freifunk@adrianschmutzler.de
> Subject: [PATCH 4/4 v4] bcm63xx: add support for the Sercomm H500-s
>=20
> Sercomm H500-s is an xDSL dual band wireless router based on Broadcom
> BCM63167 SoC.
>=20
> Hardware:
>    SoC:          Broadcom BCM63167
>    CPU:          BMIPS4350 V8.0, 400 MHz, 2 cores
>    Flash:        NAND 128 MiB
>    RAM:          DDR3 128 MiB
>    Ethernet:     4x 10/100/1000 Mbps
>    Switch:       BCM53134S
>    Wireless:     802.11b/g/n: BCM435f (integrated)
>                  802.11ac:    Quantenna QT3740BC (onboard SoC)
>    USB:          1x 2.0
>    LEDs/Buttons: 11x / 2x
>=20
> Flash instruction, web UI:
>   1. Reset to defaults using the reset button if the admin password is
>      unknown
>   2. Login into the web UI as admin.
>      Address:  http://192.168.0.1
>      User:     admin
>      Password: VF-ESVodafone-H-500-s or l033i-h500s
>   3. Go to Settings -> Firmware Update, and select the Openwrt factory
>      firmware
>   4. Update the firmware.
>   5. Wait until it finish, the device will reboot with Openwrt installed
>      on the alternative image partitions keeping the stock firmware in
>      the former.
>=20
> Notes:
>   - The patch also adds support for the lowi version. Only the factory
>     firmware is different.
>   - The integrated Wifi in the Broadcom Soc isn't still supported.
>   - The Quantenna 802.11ac wifi works ok, but needs to be configured with
>     the Quantenna client application. It can't be configured with Luci
>     nor any iw command since it's a separated subsystem linked via
>     ethernet.
>   - The BCM53134S external switch is managed via MDIO which isn't
>     supported in this target. Therefore it will behave as a dumb switch.
>=20
> Signed-off-by: Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>
> ---
> Changes in v2:
>   - Fixed passwords in commit log
>   - Added unsupported switch in dts
>   - Added custom LOADER_ENTRY to fix the ramdisk for this specific device
>   - Removed unneded b43 package
>   - Cosmetic changes
> Changes in v3:
>   - Device splitted: lowi, vfes
>   - Removed unsupported switch in dts
>   - Cosmetic changes
> Changes in v4:
>   - Fixed commit log
>   - Cosmetic changes

Thanks, this gets the idea and looks much better now with the split devices=
. A few comments below.

I have only taken a deeper look into patch 4/4.

>=20
>  .../bcm63xx/base-files/etc/board.d/01_leds    |   4 +
>  .../bcm63xx/base-files/etc/board.d/02_network |   4 +
>  .../base-files/lib/upgrade/platform.sh        |   8 +-
>  .../dts/bcm63167-sercomm-h500-s-lowi.dts      |  15 ++
>  .../dts/bcm63167-sercomm-h500-s-vfes.dts      |  15 ++
>  .../bcm63xx/dts/bcm63167-sercomm-h500-s.dtsi  | 196
> ++++++++++++++++++
>  target/linux/bcm63xx/image/bcm63xx_nand.mk    |  54 +++++
>  .../bcm63xx/patches-5.4/568-board-H500s.patch |  69 ++++++
>  8 files changed, 363 insertions(+), 2 deletions(-)  create mode 100644
> target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s-lowi.dts
>  create mode 100644 target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s-
> vfes.dts
>  create mode 100644 target/linux/bcm63xx/dts/bcm63167-sercomm-h500-
> s.dtsi
>  create mode 100644 target/linux/bcm63xx/patches-5.4/568-board-
> H500s.patch
>=20
> diff --git a/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> b/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> index 91d67f0c0b..cdaf0e77c9 100755
> --- a/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> +++ b/target/linux/bcm63xx/base-files/etc/board.d/01_leds
> @@ -100,6 +100,10 @@ sercomm,ad1018)
>  sercomm,ad1018-nor)
>  	ucidef_set_led_netdev "wlan0" "WLAN" "AD1018:green:wifi"
> "wlan0"
>  	;;
> +sercomm,h500-s-lowi|\
> +sercomm,h500-s-vfes)
> +	ucidef_set_led_netdev "wan" "WAN" "h500-s:green:internet"
> "eth0.2"
> +	;;
>  telsey,cpva502plus)
>  	ucidef_set_led_netdev "lan" "LAN" "CPVA502+:amber:link" "eth0"
>  	;;
> diff --git a/target/linux/bcm63xx/base-files/etc/board.d/02_network
> b/target/linux/bcm63xx/base-files/etc/board.d/02_network
> index 784af29cb4..f02eabe68f 100755
> --- a/target/linux/bcm63xx/base-files/etc/board.d/02_network
> +++ b/target/linux/bcm63xx/base-files/etc/board.d/02_network
> @@ -142,6 +142,10 @@ sercomm,ad1018-nor)
>  	ucidef_add_switch "switch0" \
>  		"1:lan:3" "2:lan:2" "3:lan:1" "0:wan" "8t@eth0"
>  	;;
> +sercomm,h500-s-lowi|\
> +sercomm,h500-s-vfes)
> +	ucidef_add_switch "switch0" "4:lan" "3:wan" "8t@eth0"
> +	;;
>  sfr,neufbox-6-sercomm-r0)
>  	ucidef_add_switch "switch0" \
>  		"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "9t@eth0"
> diff --git a/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh
> b/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh
> index 7d416297dd..525d3b90b5 100644
> --- a/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh
> @@ -9,7 +9,9 @@ platform_check_image() {
>  		comtrend,vr-3032u|\
>  		huawei,hg253s-v2|\
>  		netgear,dgnd3700-v2|\
> -		sercomm,ad1018)
> +		sercomm,ad1018|\
> +		sercomm,h500-s-lowi|\
> +		sercomm,h500-s-vfes)
>  			# NAND sysupgrade
>  			return 0
>  			;;
> @@ -69,7 +71,9 @@ platform_do_upgrade() {
>  		comtrend,vr-3032u|\
>  		huawei,hg253s-v2|\
>  		netgear,dgnd3700-v2|\
> -		sercomm,ad1018)
> +		sercomm,ad1018|\
> +		sercomm,h500-s-lowi|\
> +		sercomm,h500-s-vfes)
>  			REQUIRE_IMAGE_METADATA=3D1
>  			cfe_jffs2_upgrade_tar "$1"
>  			;;
> diff --git a/target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s-lowi.dts
> b/target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s-lowi.dts
> new file mode 100644
> index 0000000000..097ef2e60b
> --- /dev/null
> +++ b/target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s-lowi.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Sercomm H500-s lowi
> + *
> + * Copyright (C) 2020 Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>=
  */
> +
> +/dts-v1/;
> +
> +#include "bcm63167-sercomm-h500-s.dtsi"
> +
> +/ {
> +	model =3D "Sercomm H500-s lowi";
> +	compatible =3D "sercomm,h500-s-lowi", "brcm,bcm63268"; };

This deviates from the SOC in the DTS file name (63268 vs. 63167). Please c=
heck with Noltari whether both should be added here or whether it can stay =
as it is right now (same applies for the other DTS).

> diff --git a/target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s-vfes.dts
> b/target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s-vfes.dts
> new file mode 100644
> index 0000000000..c42b80f1c3
> --- /dev/null
> +++ b/target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s-vfes.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Sercomm H500-s vfes
> + *
> + * Copyright (C) 2020 Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>=
  */
> +
> +/dts-v1/;
> +
> +#include "bcm63167-sercomm-h500-s.dtsi"
> +
> +/ {
> +	model =3D "Sercomm H500-s vfes";
> +	compatible =3D "sercomm,h500-s-vfes", "brcm,bcm63268"; };
> diff --git a/target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s.dtsi
> b/target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s.dtsi
> new file mode 100644
> index 0000000000..e16819140b
> --- /dev/null
> +++ b/target/linux/bcm63xx/dts/bcm63167-sercomm-h500-s.dtsi
> @@ -0,0 +1,196 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Sercomm H500-s
> + *
> + * Copyright (C) 2020 Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>=
  */
> +
> +/dts-v1/;

This line should be only present once, and I prefer to have it in the DTS (=
which therefore is the common case now), so just remove it here.

Best

Adrian

> +
> +#include "bcm63268.dtsi"
> +
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	aliases {
> +		led-boot =3D &led_power_green;
> +		led-failsafe =3D &led_power_red;
> +		led-running =3D &led_power_green;
> +		led-upgrade =3D &led_power_green;
> +	};
> +
> +	chosen {
> +		bootargs =3D "rootfstype=3Dsquashfs,ubifs noinitrd
> console=3DttyS0,115200";
> +		stdout-path =3D "serial0:115200n8";
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys-polled";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		poll-interval =3D <20>;
> +
> +		wps {
> +			label =3D "wps";
> +			gpios =3D <&pinctrl 34 1>;
> +			linux,code =3D <KEY_WPS_BUTTON>;
> +			debounce-interval =3D <60>;
> +		};
> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&pinctrl 35 1>;
> +			linux,code =3D <KEY_RESTART>;
> +			debounce-interval =3D <60>;
> +		};
> +	};
> +};
> +
> +&leds {
> +	status =3D "okay";
> +
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_leds>;
> +
> +	mobile_red {
> +		reg =3D <0>;
> +		label =3D "h500-s:red:mobile";
> +	};
> +
> +	mobile_green {
> +		reg =3D <1>;
> +		label =3D "h500-s:green:mobile";
> +	};
> +
> +	led_power_red: power_red {
> +		reg =3D <8>;
> +		label =3D "h500-s:red:power";
> +	};
> +
> +	wifi_green {
> +		reg =3D <9>;
> +		label =3D "h500-s:green:wifi";
> +	};
> +
> +	phone_red {
> +		reg =3D <12>;
> +		label =3D "h500-s:red:phone";
> +	};
> +
> +	wifi_red {
> +		reg =3D <13>;
> +		label =3D "h500-s:red:wifi";
> +	};
> +
> +	internet_red {
> +		reg =3D <14>;
> +		label =3D "h500-s:red:internet";
> +	};
> +
> +	internet_green {
> +		reg =3D <15>;
> +		label =3D "h500-s:green:internet";
> +	};
> +
> +	phone_green {
> +		reg =3D <16>;
> +		label =3D "h500-s:green:phone";
> +	};
> +
> +	led_power_green: power_green {
> +		reg =3D <17>;
> +		label =3D "h500-s:green:power";
> +		default-state =3D "on";
> +	};
> +
> +	mobile_blue {
> +		reg =3D <23>;
> +		label =3D "h500-s:blue:mobile";
> +	};
> +};
> +
> +&nflash {
> +	status =3D "okay";
> +
> +	nandcs@0 {
> +		compatible =3D "brcm,nandcs";
> +		#size-cells =3D <1>;
> +		#address-cells =3D <1>;
> +		reg =3D <0>;
> +		nand-ecc-step-size =3D <512>;
> +		nand-ecc-strength =3D <4>;
> +		nand-on-flash-bbt;
> +		brcm,nand-oob-sector-size =3D <64>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "cferom";
> +				reg =3D <0x0000000 0x0020000>;
> +				read-only;
> +			};
> +
> +			partition@20000 {
> +				label =3D "part_map";
> +				reg =3D <0x0020000 0x00a0000>;
> +				read-only;
> +			};
> +
> +			partition@c0000 {
> +				label =3D "cferam1";
> +				reg =3D <0x00c0000 0x0140000>;
> +				read-only;
> +			};
> +
> +			partition@200000 {
> +				label =3D "cferam2";
> +				reg =3D <0x0200000 0x0140000>;
> +				read-only;
> +			};
> +
> +			partition@6920000 {
> +				label =3D "bootflag1";
> +				reg =3D <0x6920000 0x0140000>;
> +			};
> +
> +			partition@6a60000 {
> +				label =3D "bootflag2";
> +				reg =3D <0x6a60000 0x0140000>;
> +			};
> +
> +			partition@520000 {
> +				compatible =3D "sercomm,wfi";
> +				label =3D "wfi";
> +				reg =3D <0x0520000 0x6400000>; /* 2 images,
> 97152 KiB */
> +			};
> +
> +			partition@6ba0000 {
> +				label =3D "xml_cfg";
> +				reg =3D <0x6ba0000 0x0280000>;
> +				read-only;
> +			};
> +
> +			partition@6e20000 {
> +				label =3D "app_data";
> +				reg =3D <0x6e20000 0x0280000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	pinctrl_leds: leds {
> +		function =3D "led";
> +		pins =3D "gpio0",  "gpio1",  "gpio8",  "gpio9",
> +		       "gpio12", "gpio13", "gpio14", "gpio15",
> +		       "gpio16", "gpio17", "gpio23";
> +	};
> +};
> +
> +&uart0 {
> +	status =3D "okay";
> +};
> diff --git a/target/linux/bcm63xx/image/bcm63xx_nand.mk
> b/target/linux/bcm63xx/image/bcm63xx_nand.mk
> index 7b2039c988..4f030cbdab 100644
> --- a/target/linux/bcm63xx/image/bcm63xx_nand.mk
> +++ b/target/linux/bcm63xx/image/bcm63xx_nand.mk
> @@ -149,3 +149,57 @@ define Device/sercomm_ad1018
>    SERCOMM_VERSION :=3D 1001
>  endef
>  TARGET_DEVICES +=3D sercomm_ad1018
> +
> +define Device/sercomm_h500-s-lowi
> +  $(Device/sercomm-nand)
> +  DEVICE_VENDOR :=3D Sercomm
> +  DEVICE_MODEL :=3D H500-s
> +  DEVICE_VARIANT :=3D lowi
> +  LOADER_ENTRY :=3D 0x80010000
> +  KERNEL :=3D kernel-bin | append-dtb | lzma | cfe-jffs2-kernel
> +$$(KERNEL_LOADADDR)
> +  CHIP_ID :=3D 63268
> +  SOC :=3D bcm63167
> +  BLOCKSIZE :=3D 128k
> +  PAGESIZE :=3D 2048
> +  SUBPAGESIZE :=3D 512
> +  VID_HDR_OFFSET :=3D 2048
> +  DEVICE_PACKAGES +=3D $(USB2_PACKAGES)
> +  SERCOMM_PID :=3D \
> +    30 30 30 30 30 30 30 31 34 33 34 62 33 31 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 33 33 30 35 30 30 30 30 30 30 30 30 \
> +    0D 0A 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> +  SERCOMM_VERSION :=3D 1001
> +endef
> +TARGET_DEVICES +=3D sercomm_h500-s-lowi
> +
> +define Device/sercomm_h500-s-vfes
> +  $(Device/sercomm-nand)
> +  DEVICE_VENDOR :=3D Sercomm
> +  DEVICE_MODEL :=3D H500-s
> +  DEVICE_VARIANT :=3D vfes
> +  LOADER_ENTRY :=3D 0x80010000
> +  KERNEL :=3D kernel-bin | append-dtb | lzma | cfe-jffs2-kernel
> +$$(KERNEL_LOADADDR)
> +  CHIP_ID :=3D 63268
> +  SOC :=3D bcm63167
> +  BLOCKSIZE :=3D 128k
> +  PAGESIZE :=3D 2048
> +  SUBPAGESIZE :=3D 512
> +  VID_HDR_OFFSET :=3D 2048
> +  DEVICE_PACKAGES +=3D $(USB2_PACKAGES)
> +  SERCOMM_PID :=3D \
> +    30 30 30 30 30 30 30 31 34 32 35 38 34 62 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 \
> +    30 30 30 30 33 34 31 37 30 30 30 30 30 30 30 30 \
> +    0D 0A 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> +  SERCOMM_VERSION :=3D 1001
> +endef
> +TARGET_DEVICES +=3D sercomm_h500-s-vfes
> diff --git a/target/linux/bcm63xx/patches-5.4/568-board-H500s.patch
> b/target/linux/bcm63xx/patches-5.4/568-board-H500s.patch
> new file mode 100644
> index 0000000000..d94d5cfeb7
> --- /dev/null
> +++ b/target/linux/bcm63xx/patches-5.4/568-board-H500s.patch
> @@ -0,0 +1,69 @@
> +--- a/arch/mips/bcm63xx/boards/board_bcm963xx.c
> ++++ b/arch/mips/bcm63xx/boards/board_bcm963xx.c
> +@@ -2867,10 +2867,41 @@
> + 			},
> +
> + 		},
> + 	},
> + };
> ++
> ++static struct board_info __initdata board_H500s =3D {
> ++	.name				=3D "BXK00C-1.6",
> ++	.expected_cpu_id		=3D 0x63268,
> ++
> ++	.has_ehci0			=3D 1,
> ++	.has_ohci0			=3D 1,
> ++	.num_usbh_ports			=3D 1,
> ++
> ++	.has_enetsw			=3D 1,
> ++	.enetsw =3D {
> ++		.used_ports =3D {
> ++			[3] =3D {
> ++				.used   =3D 1,
> ++				.phy_id =3D 12,
> ++				.name   =3D "WAN",
> ++			},
> ++
> ++			[4] =3D {
> ++				.used =3D 1,
> ++				.phy_id =3D 0,
> ++				.bypass_link =3D 1,
> ++				.force_speed =3D 1000,
> ++				.force_duplex_full =3D 1,
> ++				.mii_override =3D 1,
> ++				.timing_sel =3D 1,
> ++				.name =3D "RGMII",
> ++			},
> ++		},
> ++	},
> ++};
> + #endif /* CONFIG_BCM63XX_CPU_63268 */
> +
> + /*
> +  * all boards
> +  */
> +@@ -2981,10 +3012,11 @@
> + 	&board_963269bhr,
> + 	&board_VG8050,
> + 	&board_VR3032u,
> + 	&board_vw6339gu,
> + 	&board_BSKYB_63168,
> ++	&board_H500s,
> + #endif
> + };
> +
> + static struct of_device_id const bcm963xx_boards_dt[] =3D {  #ifdef
> +CONFIG_OF @@ -3099,10 +3131,12 @@
> + 	{ .compatible =3D "brcm,bcm963268bu-p300", .data =3D
> &board_963268bu_p300, },
> + 	{ .compatible =3D "brcm,bcm963269bhr", .data =3D &board_963269bhr, },
> + 	{ .compatible =3D "comtrend,vg-8050", .data =3D &board_VG8050, },
> + 	{ .compatible =3D "comtrend,vr-3032u", .data =3D &board_VR3032u, },
> + 	{ .compatible =3D "inteno,vg50", .data =3D &board_vw6339gu, },
> ++	{ .compatible =3D "sercomm,h500-s-lowi", .data =3D &board_H500s, },
> ++	{ .compatible =3D "sercomm,h500-s-vfes", .data =3D &board_H500s, },
> + 	{ .compatible =3D "sky,sr102", .data =3D &board_BSKYB_63168, }, #endif
> + #endif /* CONFIG_OF */
> + 	{ },
> + };
> --
> 2.27.0
>=20
>=20
>=20

--=-=N0ZLDlRIl2593r=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7cCxcACgkQoNyKO7qx
AnAkHhAAhnluahWanFxeo69tjJKCmdJv9F9t/b46WJ/icTB3XW/yIVflRN7h5b71
QdG26PyjiSsunN6aMfAz1+EBULcBKbZ6y/fNtRWRK7VLQCnvhBn4nlzglGm9rXj7
LVQAwGm7uLMpu2B1oXn74fMABfYjt3wg/uIeBImcyCMbf3uKwqbK4RPwrWNy2v2k
NuujyKSE7fHeC3CBA1XF8MKSLBICsKmLgF5bfFbJ4b8224aNgDRjDrKBCXwwZ+QQ
5pAT6khwEBnE65iPw4//munUL9tM/NHSvYjwCixJI/YsZ8m9iuvcMfpG3/JVKikX
B3W7MGqOJnN/cYQl9RXP8kEfveXDe9SZyGtHAgRUbWnr8/mVKjLPzQajLiC/3xjt
MreSYYB7CDAta937XkGsZsx6YEF8ShYbAozeleWj47w7CzOPDsryV89K/kDG3SF2
kR0vcpUncdNfFdk5f3vYgd9i6mZGE/bzR9jaCtKE4b080ET+gA/GM7bhbGwhWLmf
o1Goi8JgWR336EK032OqmzggEHBZr1QCuh4pLHamHWC79BpxbyHXu6J2M1J780FZ
VK93+jC3LD98NslpgsxEK7PdY6SERZzKY4aqpUl0HJwdOv/A6lg3RdJAeAt/7PvG
2A30zV5y+sGQMwOwoWPDXdqG1QmHjmXO0/BWGpP7mrtjVLQIlXw=
=cyWi
-----END PGP SIGNATURE-----


--=-=N0ZLDlRIl2593r=-=--



--===============3817803401432961760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3817803401432961760==--


