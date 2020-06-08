Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94341F1928
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 14:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EwHA5iUxCq+zepuM1RtDZnD2+CPvWH0euL8Q05Y65SQ=; b=tQu3yndq1TdL7J2INwbBPKjuP
	cxj2N9F5vDvU4fKJD0sn3QOpaPy94wOusP+UInX0mhScGb4UMYwGeIPCCXkWtJ0W1CfvHMt5/Ke06
	eOUU5zielkjxag6DBkrtEzP/+WpveFH2dz5HOee8hVSSrrBnu9CpLP9l3xvrwlRjTjr9ToH0dNIJ9
	aCQiAjU1nDEb940YgYRUa1zLc33QtrffehZhApiReRv2GMl36FUuI58RjyF5qDi2Pgx5ORpRWAEU7
	TdkunyQHaACHB584LF733jKx4jl3R79CsjnOdxA786KafWTL2HZXE1y0B/6IwoMedGGNIs0Rt35/K
	o8mNMnV6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiHGP-0006mf-Dz; Mon, 08 Jun 2020 12:52:29 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiHG5-0006fz-Ok
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 12:52:13 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N5VPg-1itIQP1gYU-016wjm; Mon, 08 Jun 2020 14:51:59 +0200
From: <mail@adrianschmutzler.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>, <openwrt-devel@lists.openwrt.org>
References: <20200608093631.1196081-1-stijn@linux-ipv6.be>
 <20200608093631.1196081-5-stijn@linux-ipv6.be>
In-Reply-To: <20200608093631.1196081-5-stijn@linux-ipv6.be>
Date: Mon, 8 Jun 2020 14:51:58 +0200
Message-ID: <009401d63d93$993989a0$cbac9ce0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQLLrC3Y94u6dgkiQDrqr2GZVrqE+gGWInM1ptcTJjA=
Content-Language: de
X-Provags-ID: V03:K1:Rku6XEL9St7AMtLcwTDRHByO9eRj7UQ2k5jLrMCaNoebRA6dDVK
 giOXzaBMqLVW0t52e7GgcvGIs0/WTu73/nOXyhre7TfBf/PqNJ9KPM8xuKLAAWbnOcOGB/W
 5Eyz2fK8Tst9KlkYU/tVTyIkIVOqEhts3IDzTFNVECyoTFRDhIF1r28Wn9iYwU9yMgyPwwl
 pIdf1edBJnGKZn7bWl64w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hROq+2v99Cs=:YHWn6PzmAJJ74tW3BK7Nzk
 F1JBdc7WhMg73GyJaYW5CyGHqwvMpVdS+XAeuCry0PW29rvB3mmHJ/Zj+p+YPpfZetXDEFCV9
 MjQmpatnBi8iCKQUBowqdT2IWkEmaxAjrkC9n2NfKf6Snm80KNvfymB1GIgiA14cXm6acEeSs
 VRKs9UHyZ5I4EBOAO4IjP8gMsOvP9Ycq0pToCC/lHk5TyNiFFNPn+51CsJAGgjs7l4H7HeczU
 1RqrnpuXU61id1KvAgTAs8fab2vq04yxg0EMXa95uYjCy9Hdsi+LVTNaEH8T1vN8wultT7VZt
 Vn33tiTm1fiNQvfT4YluumPXBFBMmwMlysYqHu8N/KmhDKLLilyqUJZ7x6E2NR4dfcWK2YODX
 236e+0NaoJoQ5suE5arqYSyn8Y/xcv66eIv4weSHax1IY+xyGAeqTFL45fFw8Q8kcNbWCu3jA
 hKt0JFqZ9LiL4bvIG+61LxVDSUIldx7KZcfP4VM5/9rvUONLFo6+f1BcYMjWRMx/baoI0AL7H
 u3U7Go8KldpMHbt9C8J4Kbi8/xTq8XqVPULDkwYDeNa7ww+2gegjsvHoqPqQIqE50Oc9K3KP6
 RDh1mfB/7czs7JQJPfZyxKkGJc/Y2ytab5gAfadQn2FeJPydWR5DUnCjFlySClWpIQ4mcJUyR
 YkBCWTcoViqo/FDRTBBQxbh+OdHyPKTSJ3N6le51Rth8dclhiGpw5Yov51oUBKdmnOSqpE694
 7mf6m3XcDVH+CwXvZxIKwguG7mm+bCw9F/cqw53fK3FthnmLg1aSdFWl4wK1XfHUsxe2NfZnl
 ZpthM0U96scmjKw0M9wvQWw1CcTZRULz/9lXhQP3Zj7+ejLKzlaBbwoTA8x+qBF8VlteXAu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_055210_184356_4C6A6AC9 
X-CRM114-Status: GOOD (  25.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] ath79: add support for D-Link
 DAP-2695-A1
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
Content-Type: multipart/mixed; boundary="===============5538097125156835174=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5538097125156835174==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=XMvxVdaVBbhA+p=-="

This is a multipart message in MIME format.

--=-=XMvxVdaVBbhA+p=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Stijn,

find my comments inline.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Stijn Tintel
> Sent: Montag, 8. Juni 2020 11:37
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 4/4] ath79: add support for D-Link DAP-
> 2695-A1
>=20
> Hardware:
> * SoC: Qualcomm Atheros QCA9558
> * RAM: 256MB
> * Flash: 16MB SPI NOR
> * Ethernet: 2x 10/100/1000 (1x 802.3at PoE-PD)
> * WiFi 2.4GHz: Qualcomm Atheros QCA9558
> * WiFi 5GHz: Qualcomm Ahteros QCA9880-2R4E
> * LEDS: 1x 5GHz, 1x 2.4GHz, 1x LAN1(POE), 1x LAN2, 1x POWER
> * Buttons: 1x RESET
> * UART: 1x RJ45 RS-232 Console port
>=20
> Installation via stock firmware:
> * Install the factory image via the stock firmware web interface
>=20
> Installation via bootloader Emergency Web Server:
> * Connect your PC to the LAN1(PoE) port
> * Configure your PC with IP address 192.168.0.90
> * Open a serial console to the Console port (115200,8n1)
> * Press "q" within 2s when "press 'q' to stop autoboot" appears
> * Open http://192.168.0.50 in a browser
> * Upload either the factory or the sysupgrade image
> * Once you see "write image into flash...OK,dest addr=3D0x9f070000" you
>   can power-cycle the device. Ignore "checksum bad" messages.
>=20
> Setting the MAC addresses for the ethernet interfaces via
> /etc/board.d/02_network adds the following snippets to
> /etc/config/network:
>=20
> config device 'lan_eth0_1_dev'
>         option name 'eth0.1'
>         option macaddr 'xx:xx:xx:xx:xx:xx'
>=20
> config device 'wan_eth1_2_dev'
>         option name 'eth1.2'
>         option macaddr 'xx:xx:xx:xx:xx:xx'
>=20
> This would result in the proper MAC addresses being set for the VLAN
> subinterfaces, but the parent interfaces would still have a random MAC
> address. Using untagged VLANs could solve this, but would still leave tho=
se
> extra snippets in /etc/config/network, and then the device VLAN setup
> would differ from the one used in ar71xx. Therefore, the MAC addresses of
> the ethernet interfaces are being set via preinit instead.
>=20
> The bdcfg partition contains 4 MAC address labels:
> - lanmac
> - wanmac
> - wlanmac
> - wlanmac_a
>=20
> The first 3 all contain the same MAC address, which is also the one on the
> label. This MAC address is used for the 2.4GHz interface, eth0 uses this
> MAC+1, eth1 uses this MAC+2, as is done in ar71xx.
>=20
> Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
> ---
>  .../ath79/dts/qca9558_dlink_dap-2695-a1.dts   | 172 ++++++++++++++++++
>  .../generic/base-files/etc/board.d/01_leds    |   5 +
>  .../generic/base-files/etc/board.d/02_network |   6 +
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
>  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
>  .../etc/uci-defaults/09_fix-checksum          |   8 +
>  .../base-files/lib/preinit/10_fix_eth_mac.sh  |   5 +
>  target/linux/ath79/image/generic-dlink.mk     |  33 ++++
>  8 files changed, 237 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
>=20
> diff --git a/target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
> b/target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
> new file mode 100644
> index 0000000000..fdabbcb84a
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
> @@ -0,0 +1,172 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca955x.dtsi"
> +
> +/ {
> +	compatible =3D "dlink,dap-2695-a1", "qca,qca9557";
> +	model =3D "D-link DAP-2695-A1";
> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,115200n8";
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		power_green {
> +			label =3D "d-link:green:power";
> +			gpios =3D <&gpio 23 GPIO_ACTIVE_LOW>;
> +			default-state =3D "off";

default-state =3D "off" is default and can be dropped for all leds.

Consider using default-state =3D "on" for power_green and adding an aliases=
 section with power_green and/or power_red for indicating boot/failsafe etc.

> +		};
> +
> +		power_red {
> +			label =3D "d-link:red:power";
> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> +			default-state =3D "off";
> +		};
> +
> +		wifi_2g {

I'd be consistent with the label here and use wifi2g for the node name.

> +			label =3D "d-link:green:wifi2g";
> +			gpios =3D <&gpio 13 GPIO_ACTIVE_LOW>;
> +			default-state =3D "off";
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys-polled";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		poll-interval =3D <20>;

Can you try with gpio-keys for the compatible, and drop the poll-interval?
Despite, I think the two cells lines are not needed and can be dropped as w=
ell.

> +
> +		button@0 {

I'd use "reset" for the node name here.

> +			label =3D "reset";
> +			linux,code =3D <KEY_RESTART>;
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
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "mx25l12805d";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <25000000>;

I'd have added an empty line here (before partitions).

> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			uboot:  partition@0 {

Don't think the "uboot:" is used anywhere, so consider to drop it.

> +				label =3D "u-boot";
> +				reg =3D <0x000000 0x040000>;
> +				read-only;
> +			};
> +
> +			partition@40000 {
> +				label =3D "bdcfg";
> +				reg =3D <0x040000 0x010000>;
> +				read-only;
> +			};
> +
> +			partition@50000 {
> +				label =3D "rgdb";
> +				reg =3D <0x050000 0x010000>;
> +				read-only;
> +			};
> +
> +			partition@60000 {
> +				label =3D "langpack";
> +				reg =3D <0x060000 0x010000>;
> +				read-only;
> +			};
> +
> +			partition@70000 {
> +				compatible =3D "wrg";
> +				label =3D "firmware";
> +				reg =3D <0x070000 0xf00000>;
> +			};
> +
> +			partition@f70000 {
> +				label =3D "captival";
> +				reg =3D <0xf70000 0x070000>;
> +				read-only;
> +			};
> +
> +			partition@fe0000 {
> +				label =3D "certificate";
> +				reg =3D <0xfe0000 0x010000>;
> +				read-only;
> +			};
> +
> +			art: partition@ff0000 {
> +				label =3D "art";
> +				reg =3D <0xff0000 0x010000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&mdio0 {
> +	status =3D "okay";
> +
> +	phy0: ethernet-phy@0 {
> +		reg =3D <0>;
> +
> +		qca,ar8327-initvals =3D <
> +			0x04 0x07600000 /* PORT0_PAD_CTRL */
> +			0x0c 0x00080080 /* PORT6_PAD_CTRL */
> +			0x7c 0x0000007e /* PORT0_STATUS */
> +			0x94 0x0000007e /* PORT6_STATUS */
> +		>;
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	phy-handle =3D <&phy0>;
> +	phy-mode =3D "rgmii";
> +	pll-data =3D <0x56000000 0x00000101 0x00001616>;
> +
> +	fixed-link {
> +		speed =3D <1000>;
> +		full-duplex;
> +	};
> +};
> +
> +&eth1 {
> +	status =3D "okay";
> +
> +	phy-mask =3D <0>;
> +	phy-mode =3D "sgmii";
> +	pll-data =3D <0x03000101 0x00000101 0x00001616>;
> +
> +	fixed-link {
> +		speed =3D <1000>;
> +		full-duplex;
> +	};
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
> +&wmac {
> +	status =3D "okay";
> +
> +	qca,no-eeprom;
> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index 5521379cea..f31a21088e 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -110,6 +110,11 @@ enterasys,ws-ap3705i)
>  devolo,magic-2-wifi)
>  	ucidef_set_led_netdev "plcw" "dLAN" "devolo:white:dlan" "eth0.1"
> "rx"
>  	;;
> +dlink,dap-2695-a1)
> +	ucidef_set_led_default "power" "POWER" "d-link:green:power" "1"

This can be implemented by setting default-state =3D "on" in DTS as suggest=
ed above.

Despite, have a look at the led-* aliases in DTS, e.g. just grep for "led-b=
oot" or "led-failsafe" in target/linux/ath79/dts

> +	ucidef_set_led_default "diag" "DIAG" "d-link:red:power" "0"

I don't think that will have any effect, I'd just drop it.

> +	ucidef_set_led_wlan "wlan2g" "WLAN 2.4 GHz" "d-
> link:green:wlan2g" "phy1tpt"

This can be implemented via a trigger in DTS, just grep for "phy0tpt" or "p=
hy1tpt" in the dts folder given above.
So, eventually, you won't need any entry in 01_leds for this device at all.

> +	;;
>  dlink,dir-859-a1)
>  	ucidef_set_led_switch "internet" "WAN"
> "$boardname:green:internet" "switch0" "0x20"
>  	;;
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index 1672f093a7..d5964e9a0f 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -136,6 +136,9 @@ ath79_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "2:wan" "3:lan" "4:lan"
>  		;;
> +	dlink,dap-2695-a1)
> +		ucidef_add_switch "switch0" "0@eth0" "2:lan" "3:wan"
> "6@eth1"
> +		;;

I'd just have chosen the default case with
ucidef_set_interfaces_lan_wan "eth0" "eth1"
here, unless you specifically aim for the switch to be set up already in uc=
i config to be altered later. Matter of taste, though.

>  	dlink,dir-825-b1)
>  		ucidef_set_interface_wan "eth1"
>  		ucidef_add_switch "switch0" \
> @@ -359,6 +362,9 @@ ath79_setup_macs()
>  	devolo,magic-2-wifi)
>  		label_mac=3D$(macaddr_add "$(mtd_get_mac_binary art
> 0x1002)" 3)
>  		;;
> +	dlink,dap-2695-a1)
> +		label_mac=3D$(mtd_get_mac_ascii bdcfg "wlanmac")
> +		;;
>  	dlink,dir-825-b1)
>  		lan_mac=3D$(mtd_get_mac_text "caldata" 0xffa0)
>  		wan_mac=3D$(mtd_get_mac_text "caldata" 0xffb4) diff --git
> a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom b/target/linux/ath79/generic/base-
> files/etc/hotplug.d/firmware/10-ath9k-eeprom
> index e0fa5ff354..972157604d 100644
> --- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-
> ath9k-eeprom
> +++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-at
> +++ h9k-eeprom
> @@ -14,6 +14,10 @@ case "$FIRMWARE" in
>  	avm,fritz450e)
>  		caldata_extract_reverse "urlader" 0x1541 0x440
>  		;;
> +	dlink,dap-2695-a1)
> +		caldata_extract "art" 0x1000 0x440
> +		ath9k_patch_mac $(mtd_get_mac_ascii bdcfg "wlanmac")

Does that really work as replacement for
ath79_register_wmac(art + DAP2695_WMAC_CALDATA_OFFSET, wmac0);
?

> +		;;
>  	dlink,dir-505|\
>  	dlink,dir-825-c1|\
>  	dlink,dir-835-a1)
> diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware=
/11-
> ath10k-caldata b/target/linux/ath79/generic/base-
> files/etc/hotplug.d/firmware/11-ath10k-caldata
> index 29815a1ada..603557d6c2 100644
> --- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-
> ath10k-caldata
> +++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-at
> +++ h10k-caldata
> @@ -40,6 +40,10 @@ case "$FIRMWARE" in
>  		caldata_extract "art" 0x5000 0x844
>  		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary
> art 0x0) -1)
>  		;;
> +	dlink,dap-2695-a1)
> +		caldata_extract "art" 0x5000 0x844
> +		ath10k_patch_mac $(mtd_get_mac_ascii bdcfg wlanmac_a)
> +		;;
>  	dlink,dir-859-a1)
>  		caldata_extract "art" 0x5000 0x844
>  		ath10k_patch_mac $(mtd_get_mac_ascii devdata
> "wlan5mac") diff --git a/target/linux/ath79/generic/base-files/etc/uci-
> defaults/09_fix-checksum b/target/linux/ath79/generic/base-files/etc/uci-
> defaults/09_fix-checksum
> index 22c9483e74..085ad2e925 100644
> --- a/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-
> checksum
> +++ b/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-chec
> +++ ksum
> @@ -6,9 +6,17 @@ fix_seama_header() {
>  	[ "$kernel_size" ] && mtd -c 0x$kernel_size fixseama firmware  }
>=20
> +fixwrgg() {
> +	local kernel_size=3D$(sed -n 's/mtd[0-9]*: \([0-9a-
> f]*\).*"kernel".*/\1/p' /proc/mtd)
> +	[ "$kernel_size" ] && mtd -c 0x$kernel_size fixwrgg firmware }
> +
>  board=3D$(board_name)
>=20
>  case "$board" in
> +dlink,dap-2695-a1)
> +	fixwrgg
> +	;;
>  qihoo,c301)
>  	fix_seama_header
>  	;;
> diff --git a/target/linux/ath79/generic/base-
> files/lib/preinit/10_fix_eth_mac.sh b/target/linux/ath79/generic/base-
> files/lib/preinit/10_fix_eth_mac.sh
> index da1583a825..5b1aea7bb0 100644
> --- a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
> +++ b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.s
> +++ h
> @@ -8,6 +8,11 @@ preinit_set_mac_address() {
>  	avm,fritz450e)
>  		ip link set dev eth0 address $(fritz_tffs -n maca -i
> $(find_mtd_part "tffs (1)"))
>  		;;
> +	dlink,dap-2695-a1)
> +		label_mac=3D$(mtd_get_mac_ascii bdcfg "lanmac")
> +		ip link set dev eth0 address $(macaddr_add "$label_mac" 1)
> +		ip link set dev eth1 address $(macaddr_add "$label_mac" 2)

=46rom ar71xx, and to use the available addresses, I think it should be:
		ip link set dev eth0 address $(macaddr_add "$(mtd_get_mac_ascii bdcfg "la=
nmac")" 1)
		ip link set dev eth1 address $(macaddr_add "$(mtd_get_mac_ascii bdcfg "wa=
nmac")" 2)

Not that it would make any difference based on your comment that addresses =
are the same anyway.
Do you have any idea why they provide distinct addresses for lan and wan an=
d increment them then anyway?

> +		;;
>  	enterasys,ws-ap3705i)
>  		ip link set dev eth0 address $(mtd_get_mac_ascii u-boot-
> env0 ethaddr)
>  		;;
> diff --git a/target/linux/ath79/image/generic-dlink.mk
> b/target/linux/ath79/image/generic-dlink.mk
> index 96cb015a09..4d59af1645 100644
> --- a/target/linux/ath79/image/generic-dlink.mk
> +++ b/target/linux/ath79/image/generic-dlink.mk
> @@ -1,3 +1,36 @@
> +DEVICE_VARS +=3D DAP_SIGNATURE
> +
> +define Build/mkwrggimg
> +	$(STAGING_DIR_HOST)/bin/mkwrggimg -b \
> +		-i $@ -o $@.imghdr -d /dev/mtdblock/1 \
> +		-m $(DEVICE_MODEL)-$(DEVICE_VARIANT) -s
> $(DAP_SIGNATURE) \
> +		-v $(VERSION_DIST) -B $(REVISION)
> +	mv $@.imghdr $@
> +endef
> +
> +define Build/wrgg-pad-rootfs
> +	$(STAGING_DIR_HOST)/bin/padjffs2 $(IMAGE_ROOTFS) -c 64 >>$@
> endef

Ah, that's what I meant by putting the relevant recipes in dlink.mk when co=
mmenting on the earlier patch. Maybe just check that for the existing recip=
es ...

> +
> +define Device/dlink_dap-2695-a1
> +  SOC :=3D qca9558
> +  DEVICE_VENDOR :=3D D-Link
> +  DEVICE_MODEL :=3D DAP-2965
> +  DEVICE_VARIANT :=3D A1
> +  IMAGES :=3D factory.img sysupgrade.bin
> +  IMAGE_SIZE :=3D 15360k
> +  IMAGE/default :=3D append-kernel | pad-offset 65536 160
> +  IMAGE/factory.img :=3D $$(IMAGE/default) | append-rootfs | wrgg-pad-
> rootfs | \
> +	mkwrggimg | check-size $$$$(IMAGE_SIZE)

IMAGE_SIZE argument can be omitted for check-size now.

> +  IMAGE/sysupgrade.bin :=3D $$(IMAGE/default) | mkwrggimg | append-
> rootfs | \
> +	wrgg-pad-rootfs | append-metadata |  check-size $$$$(IMAGE_SIZE)

IMAGE_SIZE argument can be omitted for check-size now.

> +  KERNEL :=3D kernel-bin | append-dtb | relocate-kernel | lzma
> +  KERNEL_INITRAMFS :=3D $$(KERNEL) | mkwrggimg
> +  DAP_SIGNATURE :=3D wapac02_dkbs_dap2695
> +  SUPPORTED_DEVICES +=3D dlink,dap-2695-a1 dap-2695-a1 endef

The first string will be created automatically from the node name, so you j=
ust need

SUPPORTED_DEVICES +=3D dap-2695-a1

Despite, DEVICE_PACKAGES seem to be missing here.

Best

Adrian

> +TARGET_DEVICES +=3D dlink_dap-2695-a1
> +
>  define Device/dlink_dir-505
>    SOC :=3D ar9330
>    DEVICE_VENDOR :=3D D-Link
> --
> 2.26.2
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=XMvxVdaVBbhA+p=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7eNGoACgkQoNyKO7qx
AnDIbw/+KJhegcTtzTDh8EXPWt/JrHXvuzL9y5+VOX7mjIaHSHf9+z0aYCJfm18+
flU95HmqoVSHzaG11EIaQeqsJSa8K5kh7eWzt8T14A9k4tmLaW0GgVJqkFWEhAsB
QahIsApMESj927ft5HAuKAjzD4n7FU6GLCTGBr9wkQDnyFgwSwrW75gc0Prg5Zb0
XtPFss9drKJKVpJTN/VS4+WL2c/l0KQFx7n5WxtKzziptrYS3OVwbf3jsGrCF+cS
YytSs/XP9i2vvW33+nFqYT7fnCP4uKTHx2QGa2X1pKionk40Ib6IUcKph6geAzG3
PeJV9Ug0rFmr+vdOwDASUIpplypf437cFKDtO6LFoprHvnwaNg5AvMbUQ6cnfgiB
a2pYb2CbDjWYTfX+fxZt9NK8W1cPh5LzoCN8z9yVBixVQHhxZtPCiDeco9TCRcq7
Eg62QTy82RIv6wwX+CoxXSkSItPb2m3+C/eQtyzOxa/79Qo4hLsAhCZ35bZDDTqK
PFn7IBBAYlaI8eRW+c0TSZtSFuJrbbcDalH58RRU4Yb0Pz4+nDYC03746n1BOcVI
0xYqWEbSaXtrgQSdNKeX9CkOtkix1bu5v75PBAuZmB0ItXaviiaHcYoH7aGXlQHO
Xaq4ZQJhKATKG+HlT7PoiUcujB4TJNth8Nb3sX5cwgayH9G921g=
=CkdY
-----END PGP SIGNATURE-----


--=-=XMvxVdaVBbhA+p=-=--



--===============5538097125156835174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5538097125156835174==--


