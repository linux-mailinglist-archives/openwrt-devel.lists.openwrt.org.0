Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E8A64BCB
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 19:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rCmySDEkxUzAiU2fHMwR1AIVNcrtEJDx50rW3MyeRNM=; b=WZ8KNC/ZPoyempB2U7w8F7LTj
	zA7EdFNWofsbROdOmPUZku6uwqhdDOPGKzFJWQaA/NVafOFSgVUTVEchcRk2hm0TlyDwKYx2Fr+UB
	E1owW5KflhorGmD9v0E/M9ZKc2EyIzk7ck2nX2me93IkZzIrgsaN09AedvoZmLoDbcpc7YF0y00jc
	ohhkCzx20d3oSk6PSf/4mgfw997BEC8JWhpvXjs8darnhLMyn43SHZfHmBZr1xmpEknxZ4CbWmbGx
	lyJ5aXSjigoD/mhNqj7l32qpe1mJczzUP/0KZuXafXO8oSaJaquwS0JXwzumuT8USLT2+7PcHx0Ze
	E7zjCpNLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlGsk-0002b6-Ra; Wed, 10 Jul 2019 17:59:55 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlGsZ-0002WN-Lu
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jul 2019 17:59:45 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MyvFC-1ig8f01jsI-00vuIG; Wed, 10
 Jul 2019 19:59:40 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20190710174410.9397-1-mail@david-bauer.net>
In-Reply-To: <20190710174410.9397-1-mail@david-bauer.net>
Date: Wed, 10 Jul 2019 19:59:39 +0200
Message-ID: <012001d53749$3ee78c00$bcb6a400$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGXT80tUm3HMTuUCez1MwBec5b13Kc/8hZA
Content-Language: de
X-Provags-ID: V03:K1:cGDMKA6ZV23/L0379xi1q5vrRA6tBuiST8eQXgFDvjoeSeOshWx
 3LnoS8cCdcH75rwmpR7yPmfy6rkGIOtJFmUlKfdNG7rRVm1L3LJ/aUkbcleXrJAgsREeNCG
 utmbEMGMnCjaNiplf9oJSOexEz34cTp++ANDmj9KPL+Lb/g7NgvDoxSy/RMMSSjjTFk4+v3
 glpc2WpVSYN5x/xQDzCnA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wJtUDEvrKqM=:yZbstK7Zv5p8vYNa//QF/K
 bre8ZHJ6D4cheaEoPsSrPmQX5Ep1/ddXHUQG+n2B4D+5m7THC2Dab1nZ0jC5HfFfnARAm6bU6
 YmG9B46wpnUOG9J6waqDodnkG8zedYtl9XmNsfiXGYhmR/+gq8uo8XHJYFD68vTaWyusTkxar
 XadrRgcRinnvvdm3dLlGp4HsKl9tCTeBfuRTuVTrVWLsQm1vheefSzntO1Ro2SK8cCpTQrso6
 jXPJZqEDW9ZmL5ciYedX8gL/ioWyRAcY4Bv6kgcoJBTp/LBgh6G1HZNoFtbhJT+yikxyUz3K/
 K4lKFylY+FR1Do8IFpLdZKvHZMv2rbcyfMEvwtB9FSdwpH22NwEbFN0jToq24dCU4+nohDRUc
 DvsqvATgLhkiwanEHs/XWyVkEazNQJyNG5KAIl01hPPXT4ZpRYNo4kw1IpMfKawP9yr/lRHgc
 JCTR1mEPEOO5XCGTN5/xrV2/SHqjxFh6A+qWRx20w9ZjpRrw7sjlNKstBsV8xuLnztrfaHUtd
 mH3U5kEnXA+dGxPGAnDyYWCZEee9XZQt7dOd3t/92nxRWwSjzueklBOLlUUHGrOOn/5A6MctW
 8Yb7Iis3PQxqa0UKk1ZGlIZ8+Ab+B82ZpX4wJKaoXSueANrqX9eJs4FbKchOiwMZS638aG0RH
 MRbo/wmsXcJTp97usPx2fnOAjOsMNBKaW3JRsyt/cl0sZZuonF/Ae13nYDC6Dd6zA5lY+27yg
 dVvVNbnkiaowADqYYpboSR6kb9437Xlpppb9lICou+NB6LEQ1mWcVqw0TAc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_105944_021430_43583B46 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for ASUS RT-AC57U
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
Content-Type: multipart/mixed; boundary="===============8527701748620335577=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8527701748620335577==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=VqboTLm81K+9fJ=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=VqboTLm81K+9fJ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of David Bauer
> Sent: Mittwoch, 10. Juli 2019 19:44
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH v3] ramips: add support for ASUS RT-AC57U
>=20
> SoC:   MediaTek MT7621AT
> RAM:   128M (Winbond W631GG6KB-15)
> FLASH: 16MB (Spansion S25FL128SA)
> WiFi:  MediaTek MT7603EN bgn 2SS
> WiFi:  MediaTek MT7612EN nac 2SS
> BTN:   Reset - WPS
> LED:    - Power
>         - LAN {1-4}
>         - WAN
>         - WiFi 2.4 GHz
>         - WiFi 5 GHz
>         - USB
> UART:  UART is present next to the Power LED.
>        TX - RX - GND - 3V3 / 57600-8N1
>        3V3 is the nearest one to the Power LED.
>=20
> Installation
> ------------
> Via TFTP:
> 1. Set your computers IP-Address to 192.168.1.75.
> 2. Power up the Router with the Reset button pressed.
> 3. Release the Reset button after 5 seconds.
> 4. Upload OpenWRT sysupgrade image via TFTP:
>  > tftp -4 -v -m binary 192.168.1.1 -c put <IMAGE>
>=20
> Via SSH:
> Note: User/password for SSH is identical with the one used in the
> Web-interface.
> 1. Complete the initial setup wizard.
> 2. Activate SSH under "Administration" -> "System".
> 3. Transfer the OpenWrt sysupgrade image via scp:
>  > scp owrt.bin admin@192.168.1.1:/tmp
> 4. Connect via SSH to the router.
>  > ssh admin@192.168.1.1
> 5. Write the OpenWrt image to flash.
>  > mtd-write -i /tmp/owrt.bin -d linux
> 6. Reboot the router
>  > reboot
>=20
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
> v2:
>  - Fixed SoC compatible
>  - Switch to using interrupt-based gpio-keys
> v3:
>  - Rebased on current master
>=20
>  .../ramips/base-files/etc/board.d/02_network  |   2 +
>  .../linux/ramips/dts/mt7621_asus_rt-ac57u.dts | 153 ++++++++++++++++++
>  target/linux/ramips/image/mt7621.mk           |   9 ++
>  3 files changed, 164 insertions(+)
>  create mode 100644 target/linux/ramips/dts/mt7621_asus_rt-ac57u.dts
>=20
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> b/target/linux/ramips/base-files/etc/board.d/02_network
> index 090749e1ba..82d2b234e3 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -187,6 +187,7 @@ ramips_setup_interfaces()
>  	argus,atp-52b|\
>  	asiarf,awm002-evb-4m|\
>  	asiarf,awm002-evb-8m|\
> +	asus,rt-ac57u|\
>  	asus,rt-n14u|\
>  	bdcom,wap2100-sk|\
>  	dlink,dir-645|\
> @@ -642,6 +643,7 @@ ramips_setup_macs()
>  		wan_mac=3D$(mtd_get_mac_binary factory 4)
>  		lan_mac=3D$(mtd_get_mac_binary factory 46)
>  		;;
> +	asus,rt-ac57u|\
>  	planex,vr500)
>  		lan_mac=3D$(mtd_get_mac_binary factory 57344)
>  		wan_mac=3D$(mtd_get_mac_binary factory 57350)

Please move that block so alphabetical order is maintained.

> diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac57u.dts
> b/target/linux/ramips/dts/mt7621_asus_rt-ac57u.dts
> new file mode 100644
> index 0000000000..e757716ffb
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_asus_rt-ac57u.dts
> @@ -0,0 +1,153 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible =3D "asus,rt-ac57u", "mediatek,mt7621-soc";
> +	model =3D "ASUS RT-AC57U";
> +
> +	aliases {
> +		led-boot =3D &led_power;
> +		led-failsafe =3D &led_power;
> +		led-running =3D &led_power;
> +		led-upgrade =3D &led_power;
> +	};
> +
> +	memory@0 {
> +		device_type =3D "memory";
> +		reg =3D <0x0 0x8000000>;
> +	};

If you not already had, have a look at https://github.com/openwrt/openwrt/p=
ull/2220

Best

Adrian

> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,57600";
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_power: power {
> +			label =3D "rt-ac57u:blue:power";
> +			gpios =3D <&gpio1 16 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		usb {
> +			label =3D "rt-ac57u:blue:usb";
> +			gpios =3D <&gpio1 15 GPIO_ACTIVE_LOW>;
> +			trigger-sources =3D <&ehci_port2>;
> +			linux,default-trigger =3D "usbport";
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		wps {
> +			label =3D "wps";
> +			gpios =3D <&gpio1 11 GPIO_ACTIVE_HIGH>;
> +			linux,code =3D <KEY_WPS_BUTTON>;
> +			debounce-interval =3D <60>;
> +		};
> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&gpio1 9 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_RESTART>;
> +			debounce-interval =3D <60>;
> +		};
> +	};
> +
> +	led-regulator {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "LED-Power";
> +		gpio =3D <&gpio1 14 GPIO_ACTIVE_LOW>;
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-always-on;
> +	};
> +};
> +
> +&spi0 {
> +	status =3D "okay";
> +
> +	flash@0 {
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
> +				label =3D "config";
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
> +				reg =3D <0x50000 0xfb0000>;
> +			};
> +		};
> +	};
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +};
> +
> +&pcie0 {
> +	wifi@0,0 {
> +		compatible =3D "mediatek,mt76";
> +		reg =3D <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x8000>;
> +
> +		led {
> +			led-sources =3D <2>;
> +			led-active-low;
> +		};
> +	};
> +};
> +
> +&pcie1 {
> +	wifi@0,0 {
> +		compatible =3D "mediatek,mt76";
> +		reg =3D <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x0000>;
> +
> +		led {
> +			led-active-low;
> +		};
> +	};
> +};
> +
> +&ethernet {
> +	mtd-mac-address =3D <&factory 0x4e000>;
> +};
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group =3D "sdhci";
> +			ralink,function =3D "gpio";
> +		};
> +	};
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index 1b3b132b36..66184b8366 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -106,6 +106,15 @@ define Device/asiarf_ap7621-001
>  endef
>  TARGET_DEVICES +=3D asiarf_ap7621-001
>=20
> +define Device/asus_rt-ac57u
> +  MTK_SOC :=3D mt7621
> +  DEVICE_VENDOR :=3D ASUS
> +  DEVICE_MODEL :=3D RT-AC57U
> +  IMAGE_SIZE :=3D 16064k
> +  DEVICE_PACKAGES :=3D kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-usb-
> ledtrig-usbport wpad-basic
> +endef
> +TARGET_DEVICES +=3D asus_rt-ac57u
> +
>  define Device/buffalo_wsr-1166dhp
>    MTK_SOC :=3D mt7621
>    IMAGE/sysupgrade.bin :=3D trx | pad-rootfs | append-metadata
> --
> 2.22.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=VqboTLm81K+9fJ=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0mJ4cACgkQoNyKO7qx
AnCe7g/+NpxNC9xsIucoNO+7agSGlCLR3wtwQKhOaTnApPo2RkwnxCGVhSbcMmIn
xpS5UXujKkxlFwBcOmFFZbzVFeAnEp/tF4bGYVmxDB6BcuW7izUoRNlQsp5JBPZQ
+U+Rbvx2UBfr4qw8chLblRQ6NeKIIqcGyUQSDNObb2b70RnaT/EjqahJuMyKBfxE
dY+6HUjYcD2qdoW23bj2kaxzj2pFtRZylbiTgat9c5i2ENR+ZL3eCEIzA46GL/9+
bJgxqwjL3Tq3mSE6t1QPoVIBJuTN3heImAucczaTD9FXV5G1SaA9Nv91VRakdkNh
JLKojUcis1001hhQcDQZJznFJKvIn7+x3qVLARTg1ipiLaXWxnFI1o4kde2bvZ3U
UOzKYm1j4fzNj7hiQou7CJL3m64iLGQsBLMddF2KVc/lKDutvax04mXD8aMlBpjp
+NfA9VSHZGHoNm1LD1HN70EGEgdtPo1d3S4kPwPkjWR2berDOA1sMfffJ0mHhy+v
J4j9lBMbYmU6xKdOkxho8y6uo61ldrD7KdeRlpTs1idRuWJW4oDqxUob6VF+nPmv
MakCqfG/nuKOt4qTGn7cepJCn6b+WUh52A0sY3cBn2G0LGIKsod3TSbxTcomkmnV
Zf2mLCzDr8zrwgaC+HCgadSHf0Euc/WjNcfJ93mGt/PLfmEPpDg=
=Snhg
-----END PGP SIGNATURE-----


--=-=VqboTLm81K+9fJ=-=--



--===============8527701748620335577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8527701748620335577==--


