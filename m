Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A06EB4B8C
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 12:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KRj9LhiE95pKhP/9Yv+SiHsf2cgwowgP3Amm6Wfo84g=; b=iBfPEXncCOxCpn7nAQwSEJnJ+
	wzArjl+kbvkHAz/SAbVN3+FFuLc+FkeTBV7XueHqX9St5PQNkkwMun4lDOuYbG9r3NsMjdNHB3GAc
	MityU/2+eBjA/Se4zZLvOWoC+16y9KpakAzb+VqxC6J6rwaTFfnNipr1oMoTcx7zKPBPzzrSYqNyf
	mfRDjndso+3QPinh7RbIHI2urYuCgoTbstmshZuI1MShdkeuCLv+4g4oeseNh1sHMow902BMCYd2W
	qjLxNS/DDicJvKNIv9RNCZrwDQNuhDA7HfLZ1VJ0hk1YvjV9W/w9P5ohcmC2t9jWsOy8Ali8m1uMo
	L6+ZLsUAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAAOk-0001rs-Pm; Tue, 17 Sep 2019 10:07:50 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAAOQ-0001r2-Qa
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 10:07:33 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MKsax-1iVQGa2KXF-00LGRL; Tue, 17
 Sep 2019 12:07:21 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Enrico Mioso'" <mrkiko.rs@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
In-Reply-To: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
Date: Tue, 17 Sep 2019 12:07:20 +0200
Message-ID: <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHPCZHinJawK2ESMIjVbhdD0BHTvqc8ZkOg
Content-Language: de
X-Provags-ID: V03:K1:G0p1MSVQrzrRgJ3VrVgear7BC5Sb+2rYkms2ik+xpGqAXnjJzde
 TDEmYGaX4+ZVayJyFKnIA0wXDPr5B9Z6zF//x+fsFHC0TY66IIl9Wlg2iYTe2962H3MFtGs
 92F0zcYTtFqmhU4LkQt12Se/huRZqwFr19EfeNdszyGVEZlASl9w1voWf8xr+XU5H2fHm6n
 wQ9yvircwt0xaFU/z/lCw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jBKdqtc+St8=:fMA4ZOVS7GVjQqfb2159pb
 LfzmI+lTl8NXRzkEkDdR62Jgb2eRxBNRt3H/WRGn4iQV++8h8Q4mMkO41JVpaRxPn1/Mh7wG5
 2uh4Nm5o+NwvPaMWSTEhVujUrEWTCvTWNymJH4wchHN2TnsFmxKVdeIVschjmqf2klX1bjMh6
 uM1p9kyHr6CgkM1LFMHneOtyfBJPFHOrpf0P2lhSrBHyue9YTYD+OCej9q9St/tsoMB47xdYD
 1xs+L6tvBuhCIbHdSx3UxDpE0HlpTPltqlOPoLKAm5H8ITmN580RRFvMy67157NTQUhPgXMnS
 uUVZgBV233hOeND63iLtsz7VkysUjOBT8SCNIX+ekRyvG8IEKRcstJ1G6x2Q75Cb+xNUPT6Aq
 RBsww0l/Zr4CCUNaElks6gLjahqS3lNZjVs2Mq1KshNS36HIyGpmcO6veAk3byOMorvjRNo3G
 QjbuIks7PrtRCu1fBJTx/AHV9EqkA2vqGGdVb2ycQITBNHBWurIdRc6Dweh5dE303EcWwGLu9
 HiV2bwpYZnIEZDvWLtm59EpKRtPHcEm0zJgD2/i+arW8BYCKUSP/1KVOsHz2U1rPY+93Oi025
 EheOzSzOlPNbCVPGIyOS7cyM1TnmycVoIJITqnLff9E4nZAdk34k65j78+gWUuW8KehYMSTNF
 6JQKmLqKKmCKO4pZVgK9Pah9FXTLz7OsQrw7BranSx7R0VMWCXfCh1mvvmq4iICrzPW0RH7fq
 sqlwo/411sYDBfVbYSheBX5c+0t1w8eeVIc//aCJ9rUyt6DPbfSjL0qvz9Bs3zI5bpaqG98AX
 aT3obYvlIYIgDWG3KsIpGUOJ3UpqWaDozXlnMrkdyc856DXWpavQa2rCHDlb9P1+8FkGpZIHI
 MfKbtKTbCG1cETrLGSlciDw9GrXR0GH2Ua7LOzAM8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_030731_355270_6F4A3F2C 
X-CRM114-Status: GOOD (  25.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: 'Filip Moc' <lede@moc6.cz>, 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: multipart/mixed; boundary="===============1502646772037532162=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1502646772037532162==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=3y7hi2iRdhLfaw=-="

This is a multipart message in MIME format.

--=-=3y7hi2iRdhLfaw=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Enrico Mioso
> Sent: Dienstag, 17. September 2019 02:21
> To: openwrt-devel@lists.openwrt.org
> Cc: Filip Moc <lede@moc6.cz>; Piotr Dymacz <pepe2k@gmail.com>; Enrico Mio=
so <mrkiko.rs@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
>=20
> This adds support to the ath79 target for the TP-Link MR6400 router.
>=20
> As per original commit, hardware specifications (v1.0 EU):
> - SoC: QCA9531
> - Flash: Winbond W25Q64FV (8MiB)
> - RAM: EtronTech EM6AB160TSE-5G (64MiB)
> - Wireless: SoC platform only (2.4GHz b/g/n, 2x internal antenna)
> - Ethernet: 2NIC (3x100M + 1x100M)
> - WWAN: TP-LINK LTE MODULE (2x external detachable antenna)
> - Power: DC 12V 1A
>=20
> Flashing instructions:
> You can flash via tftp recovery (serve factory image as /mr6400_tp_recove=
ry.bin
> on 192.168.0.66/24, connect to any ethernet port and power on device while
> holding the reset button). Flashing via OEM web interface does not work.
>=20
> Working:
> - Wi-Fi
> - TP-Link LTE module does it's thing (but see Notes)
> - reset/rfkill keys
> Untested:
> - recovery via factory
> - leds
>=20
> Issues for which I need help:
> eth1 detects link when infact it's not there, and occasionally causes ker=
nel traces due to tx timeouts.
> I promise I'll test untested items as well in final version
>=20
> Note: as it happened occasionally in ar71xx, during bursty flash activity=
, LTE module init will fail, with USB enumeration errors.
>=20
> Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
> CC: Filip Moc <lede@moc6.cz>
> CC: Piotr Dymacz <pepe2k@gmail.com>
> ---
>  .../ath79/base-files/etc/board.d/01_leds      |   6 +
>  .../ath79/base-files/etc/board.d/02_network   |   5 +
>  .../ath79/dts/qca9531_tplink_tl-mr6400-v1.dts | 165 ++++++++++++++++++
>  target/linux/ath79/image/generic-tp-link.mk   |  10 ++
>  4 files changed, 186 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
>=20
> diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/l=
inux/ath79/base-files/etc/board.d/01_leds
> index 778316e450..5728aeb491 100755
> --- a/target/linux/ath79/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/base-files/etc/board.d/01_leds
> @@ -130,6 +130,12 @@ tplink,archer-c7-v5)
>  	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x1=
0"
>  	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x2=
0"
>  	;;
> +tplink,tl-mr6400-v1)
> +	ucidef_set_led_netdev "lan" "LAN" "tp-link:white:lan" "eth0"
> +	ucidef_set_led_netdev "wan" "WAN" "tp-link:white:wan" "eth1"

Here, you assign eth1 to the "wan" LED, but in 02_network you assign eth1 t=
o "lan".
Either change 02_network or this LED shouldn't be called WAN.

> +	ucidef_set_led_netdev "4g" "4G" "tp-link:white:4g" "usb0"
> +	ucidef_set_led_wlan "wlan" "WLAN" "tp-link:white:wlan" "phy0tpt"

phy0tpt trigger can be moved to DTS, just have a look at other devices rece=
ntly added to ath79.

> +	;;
>  tplink,archer-c2-v3|\
>  tplink,tl-wr1043nd-v4|\
>  tplink,tl-wr1043n-v5)
> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/targe=
t/linux/ath79/base-files/etc/board.d/02_network
> index 5b47af8ef7..2b0e1ce400 100755
> --- a/target/linux/ath79/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
> @@ -56,6 +56,11 @@ ath79_setup_interfaces()
>  	winchannel,wb2000)
>  		ucidef_set_interface_lan "eth0"
>  		;;
> +	tplink,tl-mr6400-v1)
> +		ucidef_set_interfaces_lan_wan "eth0.1 eth1" "usb0"

As stated above, this will make eth1 part of "lan" ...

> +		ucidef_add_switch "switch0" \
> +			"0@eth0" "1:lan" "2:lan" "3:lan"
> +		;;
>  	avm,fritz4020|\
>  	pcs,cr3000|\
>  	tplink,archer-c58-v1|\
> diff --git a/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts b/tar=
get/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> new file mode 100644
> index 0000000000..4acb1a02a4
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> @@ -0,0 +1,165 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca953x.dtsi"
> +
> +/ {
> +	compatible =3D "tplink,tl-mr6400-v1", "qca,qca9531";
> +	model =3D "TP-Link TL-MR6400 v1.0";

I would remove the ".0" here, as with TP-Link the sub-revisions typically r=
efer only to their firmware. So just "v1" should be better.

> +
> +	aliases {
> +		led-boot =3D &led_power;
> +		led-failsafe =3D &led_power;
> +		led-running =3D &led_power;
> +		led-upgrade =3D &led_power;
> +	};
> +
> +	gpio_leds: leds {
> +		compatible =3D "gpio-leds";
> +
> +		/* D12 */

What's that?

> +		led_wan: wan {
> +			label =3D "tp-link:white:wan";
> +			gpios =3D <&gpio 0 GPIO_ACTIVE_HIGH>;
> +		};

IMO those labels only make sense if you use them, as for led_power. I would=
 remove all of the other ones, i.e. only "wan {" here instead of "led_wan: =
wan {" ...

> +
> +		/* D11 */
> +		led_4g: 4g {
> +			label =3D "tp-link:white:4g";
> +			gpios =3D <&gpio 1 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		/* D5 */
> +		led_wps: wps {
> +			label =3D "tp-link:white:wps";
> +			gpios =3D <&gpio 3 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		/* D3 */
> +		led_wlan: wlan {
> +			label =3D "tp-link:white:wlan";
> +			gpios =3D <&gpio 11 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		/* D2 */
> +		led_power: power {
> +			label =3D "tp-link:white:power";
> +			gpios =3D <&gpio 13 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		/* D4 */
> +		led_lan: lan {
> +			label =3D "tp-link:white:lan";
> +			gpios =3D <&gpio 16 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	gpio-export {
> +		compatible =3D "gpio-export";
> +		#size-cells =3D <0>;
> +
> +		gpio_usb_power {
> +			gpio-export,name =3D "tp-link:power:LTE";
> +			gpio-export,output =3D <0>;

Sure about the 0?

> +			gpios =3D <&gpio 4 GPIO_ACTIVE_LOW>;
> +		};
> +	};

Please replace gpio-export by a gpio-hog. Either look at recently added dev=
ices or at https://patchwork.ozlabs.org/patch/1141057/

Note that in this case I would call the node "lte_power" or "power_lte" ins=
tead of referring to the USB, but that's a matter of taste.

> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		/* SW2 */
> +		reset {
> +			label =3D "Reset button";
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +
> +		/* SW3 */
> +		rfkill {
> +			label =3D "RFKill button";
> +			linux,code =3D <KEY_RFKILL>;
> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +	};
> +};
> +
> +&uart {
> +	status =3D "okay";
> +};
> +
> +&spi {
> +	status =3D "okay";
> +	num-cs =3D <1>;
> +
> +	flash@0 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <10000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			uboot:	partition@0 {

There is a tab between uboot and partition. Replace by space ...

> +				label =3D "u-boot";
> +				reg =3D <0x000000 0x020000>;
> +				read-only;
> +			};
> +
> +			partition@20000 {
> +				compatible =3D "tplink,firmware";
> +				label =3D "firmware";
> +				reg =3D <0x020000 0x7d0000>;
> +			};
> +
> +			art: partition@7f0000 {
> +				label =3D "art";
> +				reg =3D <0x7f0000 0x010000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&eth1 {
> +	mtd-mac-address =3D <&uboot 0x1fc00>;
> +	mtd-mac-address-increment =3D <(-1)>;
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +	phy-handle =3D <&swphy4>;
> +
> +	mtd-mac-address =3D <&uboot 0x1fc00>;
> +	mtd-mac-address-increment =3D <1>;
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +	mtd-cal-data =3D <&art 0x1000>;
> +	mtd-mac-address =3D <&uboot 0x1fc00>;
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
> diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/a=
th79/image/generic-tp-link.mk
> index 5519e9c960..78d7810f29 100644
> --- a/target/linux/ath79/image/generic-tp-link.mk
> +++ b/target/linux/ath79/image/generic-tp-link.mk
> @@ -393,6 +393,16 @@ define Device/tplink_tl-wr810n-v1
>  endef
>  TARGET_DEVICES +=3D tplink_tl-wr810n-v1
>=20
> +define Device/tplink_tl-mr6400-v1
> +  $(Device/tplink-8mlzma)
> +  ATH_SOC :=3D qca9531
> +  DEVICE_MODEL :=3D TL-MR6400
> +  DEVICE_VARIANT :=3D v1
> +  TPLINK_HWID :=3D 0x64000001
> +  DEVICE_PACKAGES :=3D kmod-usb-core kmod-usb2 kmod-usb-net kmod-usb-net=
-rndis kmod-usb-serial kmod-usb-serial-option adb

You can remove kmod-usb-core, kmod-usb-net and kmod-usb-serial, as those ar=
e dependencies of the other packages.

Since this is a port from ar71xx, you should add a SUPPORTED_DEVICES entry.

Best

Adrian

> +endef
> +TARGET_DEVICES +=3D tplink_tl-mr6400-v1
> +
>  define Device/tplink_tl-wr810n-v2
>    $(Device/tplink-8mlzma)
>    ATH_SOC :=3D qca9533
> --
> 2.23.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=3y7hi2iRdhLfaw=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2AsFQACgkQoNyKO7qx
AnBKFg//dhJyob58281qe1M9qPpxKhi+3fM3FvR+yf1pj6ZuN89HGAXzYYRWCjrE
eQdOhb2yrbPhe3uyaEFrD0m7oTyKTDM7hlp4I/YxSzwKKDK7bIpdpNrptKDABSVG
QMUxnO5iX0wvDeNXSCRAB1QULT915EoZZYxEWxF9fnq1PUxE4ovuXdFvc+DcwdBV
aliq3cmixxZ9jnP+PW2EVs2Yyc5nllRpnQDbxCOAQQ8mcKOQnu+W/3yz1Nfef1vM
Nma6dHR8r73MbESA8otC6XXKBvl/1wwqyTbcL9W3TwOK6Vqm8xrebfUnAkLqFztm
3QZCWFOHOI1EAJLeTewrZyvPwGlq6HIRjhJKSQPNhU/yhqbJ7u34UneLCBJljj+I
cWFNQfYqsxqsxVe9LlH2Ax6dbLhr5oF6zA6JPY2497xPEY6K9a82kv00f/8nmUKj
mjPt5ccTMwnLxEBwXkZ5BlO4+BMF6CB9KV0aSqxVg6ZLpfYtvCy5A4QMv9flnOxE
mbvYIl4rqOpAV+ZcGgdNr2dmPuzlxPVzlVmZWpbRSnDwX1OVePdRn7cvGxDzF3Zm
lpNofr8+G3SYqowESwC2hrlWWP3o3LNYk0eUS/trlqBJfrz3LQtjHIbdWgc0DJXE
Kl0LClM5TqHIN+Gfnf4rex5YsZy22vIz8ucI+yf7azQKQab4wX8=
=9TtZ
-----END PGP SIGNATURE-----


--=-=3y7hi2iRdhLfaw=-=--



--===============1502646772037532162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1502646772037532162==--


