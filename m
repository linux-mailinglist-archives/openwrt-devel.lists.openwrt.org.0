Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2F1B2F90
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 12:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OPOsaiP60uEEPF00gStbRMTaxi7Bsu2k9gDsDMIl02g=; b=aLezbvnH9aKwL/hk+0x+zEgcE
	w9uoQpp5M5tTHAslwA6iJhejPPsHz4u+rx2y+jgT1oEI2TDb44UCdRuTnzBgd9h8gvSc3suYj6k+l
	AQ7hL51ytJSUNeEIJRsVpdXZOHffYVhRoDw2vcS7ItzEul0nVBV4nokk42AWR6eMtqBVxBCk2OUMO
	JvBUuBD85tp7R7qUQSD7unSxG0YhTvItDYV8ubLBAp6Pra4bjQcSB1b6JTNwLqdDHrEfkxiTS63Il
	W72nFIgZWIwCwLr41GlcZS4oH97IVYXm+1QilT490YsCOInmzN4DJ9ubc4zHqoL/W2/yK2aJ+xMaI
	NvDBar3gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Rp9-00005W-Vn; Sun, 15 Sep 2019 10:32:08 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Roy-000057-3a
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 10:31:58 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MaIGB-1hduk50TjR-00WBId; Sun, 15 Sep 2019 12:31:48 +0200
From: <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>,
 <openwrt-devel@lists.openwrt.org>
References: <dc2bbddc-93d4-7fa0-7853-87dde39b4b30@birger-koblitz.de>
In-Reply-To: <dc2bbddc-93d4-7fa0-7853-87dde39b4b30@birger-koblitz.de>
Date: Sun, 15 Sep 2019 12:31:47 +0200
Message-ID: <004e01d56bb0$c76c5740$564505c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJXRGydjC0WEht/eTRvuOhrnYL65aYo2CiA
Content-Language: de
X-Provags-ID: V03:K1:ChfRIMoktg7f1FhEJNbx4wn9c6f1owfzP+6kNVSxRCSeZ+Ti3nc
 ZONmhuOxdRnGPSZO6sNbeRSEFPZbkJ6nHBPUXJrLqxOtTae3CozlSS7ty5bi05JIYnrq999
 bGXXqNwXnxpVLgCbu+FCgrhUtPwEebicKyglVHNqnbfHKY0WrGlWAqSR4mBDm6hygsVw02Y
 QCbHRBqiXsgB8/89/LS4g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DZsc3Ev+kJw=:nht7IlILeLcswLyEMAlA9Z
 zCztx1dSfduYYSaCmkDP227+ErwKZqlZ45hjWWj4ksqKjemvIynsrimrAXJiLdiMzgnI4/Mno
 bDDvMDz+ztD3oIonARMOl7pA+g6zmjaZhbKHBiWPwHo6OzwsF7a83dxDfJR8kPGS4SnxJW6Mh
 HOC6Nh5Lxdt73sLRSLrgH83iMiCCjfCFj3kXNoxcH3OLQsnumy3bGeaZNNl4wspkljWZkOeKB
 Gnqf0ALFW2mqA+oV2WoxMHwDjgVnmdw9OHIAcywTfc8rRQf05o5GzIoHVhA58ORyXDcbYhVXW
 zpVsRfK5574JONqDJuOj/T0XfPICN7VVTQMsA0oemCYluleA0TOSsrBd2ORgC+nSMjAeI15rt
 ZTsIXw6ISDPqxDg5BwSNoAauYNe/P/TFG9WAXCBevJ80CF/i3lLvE6HCVXkmdMQpN6XF2f4xW
 N83owAw1d/xanHhiw+pw8gYceOb3W0VbqmCmdzveWXY9cGVyAtB89zogJVZoRsDHYwij20PgI
 Sl9R+y9ry9vWjORWXvKk8Jqmao4myZ/yWgm1JXOzZrFMATyMYs1vWAZtQjN6zqin/RudaNHqQ
 GC9r5wzMJEkrRNsTzn1pQwGgRNTVvf7MEWMTdxI9qaw+NSMK9/pAMmYMvTwqgZGI0xlG6enY8
 grtZOutJyhBATYRyrhPWG+AzhpKxA2kEo0nzBdFN+ygAlHvKBdAAPE52j6/4LubNlSzdKbRyo
 Y5KKLXWuKGucfEEol/7QGMvQFBxui02I1L41pSYK9DAVUBbuOPXm13YYSBsjMQ5NfHGW1dMPp
 zS67CT326T/yjDN406qRaOv3jR54VZ6OMWXoRuoWvGIahVtsI48YONE2g8k6E386Cyc3nk1HG
 4Lv+UOIKtbuSb9Z3p+UpRDA4appztRNShTLStAVZA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_033156_634236_78A6ED74 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v6] ramips: add support for Asus RT-AC85P
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
Content-Type: multipart/mixed; boundary="===============6404762833724300458=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6404762833724300458==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=akUOxF+pV4GqEW=-="

This is a multipart message in MIME format.

--=-=akUOxF+pV4GqEW=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

see additions to the newer-ending-story below.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Birger Koblitz
> Sent: Samstag, 14. September 2019 10:52
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH v6] ramips: add support for Asus RT-
> AC85P
>=20
> ramips: add support for Asus RT-AC85P
>=20
> SoC:	MediaTek MT7621AT dual-core @ 880MHz
> RAM:	256M (Winbond W632GG6KB-1)
> FLASH:	128MB (Macronix MX30LF1G18AC-TI)
> WiFi:	- 2.4GHz MediaTek MT7615N bgn
> 	- 5GHz MediaTek MT7615N nac
> Switch: SoC integrated Gigabit Switch (4 x LAN, 1 x WAN)
> USB:	1 x USB 3.1 (Gen 1)
> BTN:	Reset, WPS
> LED:	- Power (blue)
> 	- 5Ghz (blue)
> 	- 2.4GHz (blue)
> 	- Internet (blue)
> 	- 4x LAN (blue)
> 	(LAN/WAN leds are not controllable by GPIOs)
> UART: 	UART is present as Pads marked J4 on the PCB.
> 	3.3V - TX - RX - GND / 57600-8N1
> 	3.3V is the square pad
> MAC:	The MAC address on the router-label matches the MAC of
> 	the 2.4 GHz WiFi.
> 	LAN and WAN MAC are identical: MAC_LABEL+4
> 	5 GHz WiFi MAC: also MAC_LABEL+4
>=20
>=20
> Installation
> ------------
> Via U-Boot tftpd:
> Switch on device, within 2s press reset button and keep pressed until pow=
er
> LED starts blinking slowly.
> Upload factory image via tftp put, the router's ip is 192.168.1.1 and exp=
ects
> the client on 192.168.1.75.
>=20
> The images also work on the Asus RT-AC65P models as tested by Gabor.
>=20
> Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>
> Tested-by: Gabor Varga <vargagab@gmail.com>
>=20
> ---
>=20
> v2: Corrected sorting of entries in 02_network
>     Model name corrected in .dts
>     Whitespace fixes in .dts
>     wifi0/1 labels added to wifi nodes in .dts
>     Device name capitalized in mt7621.mk
>=20
> v3: Added firmware backup to firmware2 partition before sysupgrade
>     Corrected modules included in image
>=20
> v4: Corrected MT7615N PCI IDs
>=20
> v5: Fixed indentation in platform.sh
>=20
> v6: Rebased to latest master
>=20
>=20
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> b/target/linux/ramips/base-files/etc/board.d/02_network
> index b4634e0928..80e6a91c88 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -230,6 +230,18 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0:lan" "1:wan" "6@eth0"
>  		;;
> +	asus,rt-ac85p|\
> +	dlink,dir-860l-b1|\
> +	elecom,wrc-1167ghbk2-s|\
> +	elecom,wrc-1900gst|\
> +	elecom,wrc-2533gst|\
> +	huawei,hg255d|\
> +	iodata,wn-ax1167gr|\
> +	iodata,wn-gx300gr|\
> +	iptime,a604m)
> +		ucidef_add_switch "switch0" \
> +			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan"
> "6@eth0"
> +		;;
>  	asus,rt-n15|\
>  	belkin,f9k1109v1|\
>  	sitecom,wl-351)
> @@ -297,17 +309,6 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5"
> "6@eth0"
>  		;;
> -	dlink,dir-860l-b1|\
> -	elecom,wrc-1167ghbk2-s|\
> -	elecom,wrc-1900gst|\
> -	elecom,wrc-2533gst|\
> -	huawei,hg255d|\
> -	iodata,wn-ax1167gr|\
> -	iodata,wn-gx300gr|\
> -	iptime,a604m)
> -		ucidef_add_switch "switch0" \
> -			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan"
> "6@eth0"
> -		;;
>  	dlink,dwr-118-a1)
>  		ucidef_add_switch "switch0" \
>  			"1:lan:2" "2:lan:3" "3:lan:1" "4:lan:0" "5:wan"
> "6@eth0"
> @@ -551,6 +552,9 @@ ramips_setup_macs()
>  	zbtlink,zbt-we3526)
>  		wan_mac=3D$(mtd_get_mac_binary factory 0xe006)
>  		;;
> +	asus,rt-ac85p)
> +		wan_mac=3D$(mtd_get_mac_ascii u-boot-env et1macaddr)
> +		;;
>  	asus,rt-n56u)
>  		lan_mac=3D$(macaddr_setbit_la "$(cat
> /sys/class/net/eth0/address)")
>  		wan_mac=3D$(mtd_get_mac_binary factory 0x8004) diff --git
> a/target/linux/ramips/base-files/lib/upgrade/platform.sh
> b/target/linux/ramips/base-files/lib/upgrade/platform.sh
> index 9889079db9..a62ded4b9d 100755
> --- a/target/linux/ramips/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ramips/base-files/lib/upgrade/platform.sh
> @@ -18,9 +18,16 @@ platform_do_upgrade() {
>  	mikrotik,rbm33g)
>  		[ -z "$(rootfs_type)" ] && mtd erase firmware
>  		;;
> +	asus,rt-ac85p)
> +		echo "Backing up firmware"
> +		dd if=3D/dev/mtd4 bs=3D1024 count=3D4096  >
> /tmp/backup_firmware.bin
> +		dd if=3D/dev/mtd5 bs=3D1024 count=3D52224 >>
> /tmp/backup_firmware.bin
> +		mtd -e firmware2 write /tmp/backup_firmware.bin
> firmware2
> +		;;
>  	esac
>=20
>  	case "$board" in
> +	asus,rt-ac85p|\
>  	hiwifi,hc5962|\
>  	netgear,r6220|\
>  	netgear,r6260|\
> diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
> b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
> new file mode 100644
> index 0000000000..94e26ea408
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
> @@ -0,0 +1,164 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible =3D "asus,rt-ac85p", "mediatek,mt7621-soc";
> +	model =3D "Asus RT-AC85P";
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
> +	palmbus: palmbus@1E000000 {
> +		i2c@900 {
> +			status =3D "okay";
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&gpio0 3 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_RESTART>;
> +		};
> +
> +		wps {
> +			label =3D "wps";
> +			gpios =3D <&gpio0 6 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_WPS_BUTTON>;
> +		};
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_power: power {
> +			label =3D "rt-ac85p:blue:power";
> +			gpios =3D <&gpio0 4 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};
> +		wlan2g {
> +			label =3D "rt-ac85p:blue:wlan2g";
> +			gpios =3D <&gpio0 10 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0radio";
> +		};
> +
> +		wlan5g {
> +			label =3D "rt-ac85p:blue:wlan5g";
> +			gpios =3D <&gpio0 8 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy1radio";
> +		};
> +	};
> +};
> +
> +&sdhci {
> +	status =3D "okay";
> +};
> +
> +&nand {
> +	status =3D "okay";
> +
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +
> +		partition@0 {
> +			label =3D "u-boot";
> +			reg =3D <0x0 0xe0000>;
> +			read-only;
> +		};
> +
> +		partition@e0000 {
> +			label =3D "u-boot-env";
> +			reg =3D <0xe0000 0x100000>;
> +			read-only;
> +		};
> +
> +		factory: partition@1e0000 {
> +			label =3D "factory";
> +			reg =3D <0x1e0000 0x100000>;
> +			read-only;
> +		};
> +
> +		factory2: partition@2e0000 {
> +			label =3D "factory2";
> +			reg =3D <0x2e0000 0x100000>;
> +			read-only;
> +		};
> +
> +		partition@3e0000 {
> +			label =3D "kernel";
> +			reg =3D <0x3e0000 0x400000>;
> +		};
> +
> +		partition@7e0000 {
> +			label =3D "ubi";
> +			reg =3D <0x7e0000 0x2e00000>;
> +		};
> +
> +		partition@35e0000 {
> +			label =3D "firmware2";
> +			reg =3D <0x35e0000 0x3200000>;
> +		};
> +	};
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +};
> +
> +&pcie0 {
> +	wifi0: wifi@0,0 {
> +		compatible =3D "pci14c3,7615";
> +		reg =3D <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x0000>;
> +		ieee80211-freq-limit =3D <2400000 2500000>;
> +		mtd-mac-address =3D <&factory 0x4>;

With mtd-eeprom reading from 0x0, the MAC address at 0x4 should be read by =
default. So, you should get the same result with the mtd-mac-address line r=
emoved.

> +	};
> +};
> +
> +&pcie1 {
> +	wifi1: wifi@0,0 {
> +		compatible =3D "pci14c3,7615";
> +		reg =3D <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x8000>;
> +		ieee80211-freq-limit =3D <5000000 6000000>;
> +		mtd-mac-address =3D <&factory 0x8004>;

See above: address is mtd-eeprom +4, so try to remove it.

> +	};
> +};
> +
> +&ethernet {
> +	mtd-mac-address =3D <&factory 0xe000>;
> +	mediatek,portmap =3D "wllll";
> +	port@5 {
> +		status =3D "disabled";
> +	};
> +};
> +
> +&i2c {
> +    status =3D "disabled";

Indent is wrong here.

Best

Adrian

> +};
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group =3D "uart2", "uart3", "i2c";
> +			ralink,function =3D "gpio";
> +		};
> +	};
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index 986fe5e2f8..79d14a5954 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -115,6 +115,22 @@ define Device/asus_rt-ac57u  endef
> TARGET_DEVICES +=3D asus_rt-ac57u
>=20
> +define Device/asus_rt-ac85p
> +  MTK_SOC :=3D mt7621
> +  DEVICE_VENDOR :=3D ASUS
> +  DEVICE_MODEL :=3D RT-AC85P
> +  IMAGE_SIZE :=3D 51200k
> +  UBINIZE_OPTS :=3D -E 5
> +  BLOCKSIZE :=3D 128k
> +  PAGESIZE :=3D 2048
> +  KERNEL_SIZE :=3D 4096k
> +  IMAGES +=3D factory.bin
> +  IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
> +  IMAGE/factory.bin :=3D append-kernel | pad-to $$(KERNEL_SIZE) |
> +append-ubi | check-size $$$$(IMAGE_SIZE)
> +  DEVICE_PACKAGES :=3D kmod-usb3 kmod-mt7615e wpad-basic uboot-
> envtools
> +endef TARGET_DEVICES +=3D asus_rt-ac85p
> +
>  define Device/buffalo_wsr-1166dhp
>    MTK_SOC :=3D mt7621
>    IMAGE/sysupgrade.bin :=3D trx | pad-rootfs | append-metadata diff --git
> a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-
> support.patch b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-
> nand-support.patch
> index 03b2b36db9..3c6a59b863 100644
> --- a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-
> support.patch
> +++ b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-
> support.
> +++ patch
> @@ -4256,7 +4256,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
> +#endif /* __NAND_DEF_H__ */
>  --- /dev/null
>  +++ b/drivers/mtd/nand/nand_device_list.h
> -@@ -0,0 +1,59 @@
> +@@ -0,0 +1,60 @@
>  +/* Copyright Statement:
>  + *
>  + * This software/firmware and related documentation ("MediaTek
> Software") are @@ -4308,6 +4308,7 @@ Signed-off-by: John Crispin
> <blogic@openwrt.org>
>  +	{0xC8DC, 0x909554, 5, 8, 512, 128, 2048, 64, 0x30C77fff, "F59L4G81A",
> 0},
>  +	{0xECD3, 0x519558, 5, 8, 1024, 128, 2048, 64, 0x44333, "K9K8G8000",
> 0},
>  +    {0xC2F1, 0x801DC2, 4, 8, 128, 128, 2048, 64, 0x30C77fff, "MX30LF1G0=
8AA",
> 0},
> ++    {0xC2F1, 0x809502, 4, 8, 128, 128, 2048, 64, 0x30C77fff,
> ++ "MX30LF1G18AC", 0},
>  +    {0x98D3, 0x902676, 5, 8, 1024, 256, 4096, 224, 0x00C25332,
> "TC58NVG3S0F", 0},
>  +    {0x01DA, 0x909546, 5, 8, 256, 128, 2048, 128, 0x30C77fff,
> "S34ML02G200TF", 0},
>  +    {0x01DC, 0x909556, 5, 8, 512, 128, 2048, 128, 0x30C77fff,
> "S34ML04G200TF", 0},
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=akUOxF+pV4GqEW=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1+Ew8ACgkQoNyKO7qx
AnAS1xAAvKrKXZen14q9i+ft97IM9h4IJWdGLiqiigaA34xVihmaBIVIdates4fU
RE+rJFyZrwEXfpScbmsHf+isenNIqEkjJjhJRJlJ8aaKmiwb1fSOiX9v18xiQaQ6
PfLEM4GN1qMKl4V8q+ssKafZCSmfcKE2MOt8YFMZgB8RmcuD9aqPa17el8KMIzJo
faNg2FUOoJjDpAb5KfgWNeM8ThDiXDKfO9BBJG/K1u00sol+fO9ydmWueoL6LbIb
o+CxwG7mIFKL2JoS/zFduz6qzJkYxEn3DG1hGVY4ibBcMQtQ9He/wxXHhy96LdTL
fSUezdfQMlnKmML7Oe1xnm9OZiBLFgocd/PFiC+ybeehaQTaJhxTfU0CkEXX6b9K
G81KXEPpo4oPmswvnKp/ojygmNUNkeaU96JiPvnwoKRDv8vBR+a795HP3EPgqneE
LaxJXINNdD91gsZSnhdjbejUJl94hhJqHt8kXH3lJkeI1uVfbogVFA3/z5qYoecs
Edr9LSy1bMzA67D3VsjIqQ4o4fQ+zjNzakHOsoQslowK1npi7ew/xGqPnT+bhd3P
QnK+axBU9vrIv4mAUif+uHTjcksPCAppr49P4INaE+gBTBqGMGTsioFYSRsMrZNQ
p71SPnWJ4C9via5JVEBZMUQrE7IzJbGDPpTU1tsmer+QKabXM00=
=RE4q
-----END PGP SIGNATURE-----


--=-=akUOxF+pV4GqEW=-=--



--===============6404762833724300458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6404762833724300458==--


