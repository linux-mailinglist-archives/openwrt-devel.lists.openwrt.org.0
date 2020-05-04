Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66181C45FC
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 20:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k/Do2lNEmRMwsHg+JkzTWVfC7Xug5SjOT87SRkGSHMQ=; b=R4n81Pw+fu2kS8JIZtjTp3bJm
	1CuaWfWGouRzpcoX7GYFsDQgWgZnvv+EOf42Ke53FoEcWLVFX0bCV/crALF7g/HYufLLhEvPFwJf1
	avy/VCIyHX+2BGuZMbhU7kGot5ttRZCPFVZIewnpWILM4FLck9oq1cdSuGmQhlbCTSGsNs87bU3CH
	3shpH7wkotHX/0xUY3wpBUT33nY1Nm91dIUP1qX2d5FPnhxyUdk04Fi74Yl+gZuElWlscq4JBEvrb
	bHi1BsWvPw4RhYLFqpniiSUVnvJBeyDJvZqw+UNGBv0tgKEKgX8xZBo4S3N1Sk6k+J6J4CzQ9X0Ul
	NCnBJLxyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfsF-0002mF-2z; Mon, 04 May 2020 18:31:27 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfs8-0002kY-GU
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 18:31:22 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MSbp1-1jgu7e3jS5-00Suyg; Mon, 04 May 2020 20:31:15 +0200
From: <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200504174855.24934-1-tomek_n@o2.pl>
In-Reply-To: <20200504174855.24934-1-tomek_n@o2.pl>
Date: Mon, 4 May 2020 20:31:15 +0200
Message-ID: <002c01d62242$322f12a0$968d37e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQL3KaEh2VB94hNBXWN3nlXBh3Eg/6ZWMNdg
Content-Language: de
X-Provags-ID: V03:K1:a1wOxYoMBN0JJcfW8H7eFTdmWvfBmK15BM8wZzU7BmrCb+iDwo3
 obqDIY31YlQwT2bjmOi4bsR5tlYCEK8G7zSm6gHPpByrV7/Q0faeJ0zCSRCngUcvP/rYlha
 ae5jb7KXXz2bBM2pPB9xlFQU97DGTUdlDLGDLkpaZ274amvpVo76pr2ecSqx2wip/vCrxmk
 p1OyNTbUGnjVGrPW4O2+A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7oHnKmdG234=:h8MuPPXmlbc02hfb6ZZ9Gg
 uN/DhlSAuZkji1/b3tTmMLsDKBsL85LQ8IOy4VYPofwySFjUrP/PF7S3ZG9Cyw83LkaZPgtin
 267kaPmZ5hLRkdSdA3sFFGY+GZNiPhFom03wjPCaX/OfIBfNhA/DqhyRLkJuh0T7bioj2jddp
 ZxmfcfEXDGgaBjOu8cJ2CqWSALjSNUgVCH84otLGqC7JC1+GcnGAXA+R1f4UH5niMXxJ86zxi
 cbMeYuMjTLHZeXRthRLQa+0B1X0Df1qE+hHLaANIpuPTeCMVLxVm13sOY/pJLu/5f+vPqiaLi
 7XJT3xOUGzJ/eOGDzK0d0zi4LkNH9lf5k3m7IoHI1GgWfgmOiE5y1ikIHq7xLocUgmdcZVNbF
 qnwF8B54gWYrCC87hpx4cwxAs1VASqU9mgJuHzLevxqBf+8OKaa18zWCnT/MVHJJHnlbwdVe7
 /6+IMEALNHaUvr3irkX/ipHcTYFfKx8ZQWhQf2M7iir+Bix5XsaQD65gXs8Rs7puHZpo1ORev
 KWEyiqR/WfFl3npI9QSap02/7Jwk2kfyagbXchIEQwV9XtevOI868RB4oRgJY59vRs7hzvjjS
 FUstO7HVSnhhlG/NxT79F6+1ZdFkOD2WRFyOUPj3/vGXDaLnG/+LuF/1b51GwN5+Iw2U6EHQa
 1F/mOcqF6c7C0gHPbLHTfvzh9rQUNfJ+7FLuTjpth52Y70bXYk5ZzvlWi4HT1F24Emmw98ikn
 YFJT1kUCyhkBGXFCKp3So7cx5fw+HRrpkLcAmMHU68BrSsBuuyA12uqoKA164fXDMd6ysQcKc
 w9FyFcdAf01u0zW4BlYjdxRiJKAtAVpNRSiNf0DkET+4GA6/6GNy03xXGXMwHMgtZjFNA6e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_113120_851244_00DEC5BC 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [212.227.17.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [19.07] [PATCH] ath79: add support for Sitecom
 WLR-7100
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
Content-Type: multipart/mixed; boundary="===============8921047501444088568=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8921047501444088568==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=GqEWzOZWvnoU3K=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=GqEWzOZWvnoU3K=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Tomasz Maciej Nowak
> Sent: Montag, 4. Mai 2020 19:49
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [19.07] [PATCH] ath79: add support for Sitecom
> WLR-7100
>=20
> Backported from: 1bc921f419df508c57dc07cd3e43cdf0408c17dd

Device support is typically not backported to stable branches, unless you h=
ave a very good reason for it.

Best

Adrian

>=20
> Sitecom WLR-7100 v1 002 (marketed as X7 AC1200) is a dual band wireless
> router.
>=20
> Specification
> SoC: Atheros AR1022
> RAM: 64 MB DDR2
> Flash: 8 MB SPI NOR
> WIFI: 2.4 GHz 2T2R integrated
>       5 GHz 2T2R QCA9882 integrated (connected to PCIe lane)
> Ethernet: 5x 10/100/1000 Mbps QCA8337N
> USB: 1x 2.0
> LEDS: 4x GPIO controlled, 5x switch
> Buttons: 2x GPIO controlled
> UART: row of 4 unpopulated holes near USB port, starting count from
>       white triangle on PCB
>       1. VCC 3.3V, 2. GND, 3. TX, 4. RX
>       baud: 115200, parity: none, flow control: none
>=20
> Installation
> 1. Connect to one of LAN (yellow) ethernet ports, 2. Open router
> configuration interface, 3. Go to Toolbox > Firmware, 4. Browse for OpenW=
rt
> factory image with dlf extension and hit Apply, 5. Wait few minutes, afte=
r the
> Power LED will stop blinking, the router
>    is ready for configuration.
>=20
> Known issues
> 5GHz LED doesn't work
>=20
> Additional information
> When TX line on UART is connected, and board is switched on from power
> off state, the DDR memory training may fail.
> If connected to UART, when prompted for number on boot, one can enter
> number 4 to open bootloader (U-Boot) command line.
> OEM firmware shell password is: SitecomSenao useful for creating backup of
> original firmware.
> There is also another revision of this device (v1 001), which may or may =
not
> work with introduced images.
>=20
> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
> ---
>  .../ath79/base-files/etc/board.d/02_network   |   6 +
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   3 +-
>  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   3 +-
>  .../ath79/dts/ar1022_sitecom_wlr-7100.dts     | 171 ++++++++++++++++++
>  target/linux/ath79/image/generic.mk           |  12 ++
>  5 files changed, 193 insertions(+), 2 deletions(-)  create mode 100644
> target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts
>=20
> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network
> b/target/linux/ath79/base-files/etc/board.d/02_network
> index 1b0e76b1593b..d494c0144725 100755
> --- a/target/linux/ath79/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
> @@ -150,6 +150,7 @@ ath79_setup_interfaces()
>  	iodata,wn-ac1600dgr2|\
>  	iodata,wn-ag300dgr|\
>  	pcs,cr5000|\
> +	sitecom,wlr-7100|\
>  	wd,mynet-n750)
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan"
> @@ -349,6 +350,11 @@ ath79_setup_macs()
>  		wan_mac=3D$(mtd_get_mac_binary factory 0)
>  		lan_mac=3D$(macaddr_setbit_la "$wan_mac")
>  		;;
> +	sitecom,wlr-7100)
> +		lan_mac=3D$(mtd_get_mac_ascii u-boot-env ethaddr)
> +		wan_mac=3D$(mtd_get_mac_ascii u-boot-env wanaddr)
> +		label_mac=3D$lan_mac
> +		;;
>  	tplink,archer-a7-v5|\
>  	tplink,archer-c7-v4|\
>  	tplink,archer-c7-v5|\
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9=
k-
> eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom
> index d85e90f10683..69ffad1a99ef 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eepr
> +++ om
> @@ -119,7 +119,8 @@ case "$FIRMWARE" in
>  	iodata,wn-ac1167dgr|\
>  	iodata,wn-ac1600dgr|\
>  	iodata,wn-ac1600dgr2|\
> -	iodata,wn-ag300dgr)
> +	iodata,wn-ag300dgr|\
> +	sitecom,wlr-7100)
>  		ath9k_eeprom_extract "art" 4096 1088
>  		ath9k_patch_fw_mac $(mtd_get_mac_ascii u-boot-env
> ethaddr) 2
>  		;;
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath1=
0k-
> caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-
> caldata
> index d93e6dcd71ab..5b29ad0ce9fc 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-
> caldata
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cal
> +++ data
> @@ -109,7 +109,8 @@ case "$FIRMWARE" in
>  		;;
>  	engenius,epg5000|\
>  	iodata,wn-ac1167dgr|\
> -	iodata,wn-ac1600dgr2)
> +	iodata,wn-ac1600dgr2|\
> +	sitecom,wlr-7100)
>  		ath10kcal_extract "art" 20480 2116
>  		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii
> u-boot-env ethaddr) +1)
>  		;;
> diff --git a/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts
> b/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts
> new file mode 100644
> index 000000000000..8a70b597b0fe
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts
> @@ -0,0 +1,171 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "ar9344.dtsi"
> +
> +/ {
> +	model =3D "Sitecom WLR-7100 v1 002 (X7 AC1200)";
> +	compatible =3D "sitecom,wlr-7100", "qca,ar9344";
> +
> +	aliases {
> +		led-boot =3D &power;
> +		led-failsafe =3D &power;
> +		led-running =3D &power;
> +		led-upgrade =3D &power;
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		wlan2g {
> +			label =3D "2.4GHz";
> +			gpios =3D <&gpio 16 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_RESTART>;
> +		};
> +
> +		wlan5g {
> +			label =3D "5GHz";
> +			gpios =3D <&gpio 15 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_WPS_BUTTON>;
> +		};
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		ops {
> +			label =3D "wlr-7100:white:ops";
> +			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		power: power {
> +			label =3D "wlr-7100:amber:power";
> +			gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
> +			default-state =3D "on";
> +		};
> +
> +		wlan2g {
> +			label =3D "wlr-7100:blue:wlan2g";
> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy1tpt";
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	pll-data =3D <0x06000000 0x00000101 0x00001616>;
> +
> +	phy-mode =3D "rgmii";
> +	phy-handle =3D <&phy0>;
> +
> +	gmac-config {
> +		device =3D <&gmac>;
> +		rgmii-gmac0 =3D <1>;
> +	};
> +};
> +
> +&mdio0 {
> +	status =3D "okay";
> +
> +	phy0: ethernet-phy@0 {
> +		reg =3D <0>;
> +		phy-mode =3D "rgmii";
> +
> +		qca,ar8327-initvals =3D <
> +			0x04 0x87a00000 /* PORT0 PAD Mode */
> +			0x0c 0x01000000 /* PORT6 PAD Mode */
> +			0x10 0x80000000 /* PWS_REG_VALUE */
> +			0x7c 0x000000fe /* PORT0_STATUS */
> +			0x94 0x000000fe /* PORT6_STATUS */
> +		>;
> +	};
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +
> +	wifi@0,0 {
> +		compatible =3D "qcom,ath10k";
> +		reg =3D <0x0000 0 0 0 0>;
> +	};
> +};
> +
> +&ref {
> +	clock-frequency =3D <25000000>;
> +};
> +
> +&spi {
> +	num-cs =3D <1>;
> +	status =3D "okay";
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
> +				reg =3D <0x000000 0x030000>;
> +				read-only;
> +			};
> +
> +			uenv: partition@30000 {
> +				label =3D "u-boot-env";
> +				reg =3D <0x030000 0x010000>;
> +				read-only;
> +			};
> +
> +			partition@40000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x040000 0x750000>;
> +			};
> +
> +			partition@790000 {
> +				label =3D "backup";
> +				reg =3D <0x790000 0x010000>;
> +				read-only;
> +			};
> +
> +			partition@7a0000 {
> +				label =3D "storage";
> +				reg =3D <0x7a0000 0x050000>;
> +				read-only;
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
> +&uart {
> +	status =3D "okay";
> +};
> +
> +&usb {
> +	status =3D "okay";
> +};
> +
> +&usb_phy {
> +	status =3D "okay";
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +
> +	qca,no-eeprom;
> +};
> diff --git a/target/linux/ath79/image/generic.mk
> b/target/linux/ath79/image/generic.mk
> index 55053be34f11..550f24f45c8b 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -674,6 +674,18 @@ define Device/rosinson_wr818  endef
> TARGET_DEVICES +=3D rosinson_wr818
>=20
> +define Device/sitecom_wlr-7100
> +  ATH_SOC :=3D ar1022
> +  DEVICE_TITLE :=3D Sitecom WLR-7100 v1 002
> +  DEVICE_PACKAGES :=3D ath10k-firmware-qca988x-ct
> +kmod-ath10k-ct-smallbuffers kmod-usb2
> +  IMAGES +=3D factory.dlf
> +  IMAGE/factory.dlf :=3D append-kernel | pad-to $$$$(BLOCKSIZE) | \
> +	append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
> +	senao-header -r 0x222 -p 0x53 -t 2
> +  IMAGE_SIZE :=3D 7488k
> +endef
> +TARGET_DEVICES +=3D sitecom_wlr-7100
> +
>  define Device/wd_mynet-n750
>    $(Device/seama)
>    ATH_SOC :=3D ar9344
> --
> 2.26.2
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=GqEWzOZWvnoU3K=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6wX24ACgkQoNyKO7qx
AnBEDQ//ZBQki5Obs3/WQOVS054GACqJIzVAS5RRazlbpzYifx+JlvpV6e9rRrDB
BUzVrM1dgHqu+Ias9/i2Zqcaqtg2LKJB2eD6Shj4UffS9WvjGeEQTWhPPPRUPa94
HzjoZ57kow9HTBYUvfCz1+z2xVQf5z2zpxpkXqmYpQnoHnQADx0qeqx2381oh4zh
abKUqOtsb3AGPiuDQfokZs8YpDTiUDwJfeku9smk5YqlOvZSJM7Tg+ulluRw7mrI
B0fZJ4KRACfKIv/611XMx5f4JVfsVRETyZWNBH7nriEedW2Jip5JYlZrfYPebBZ+
idn7hgxDJuL+gsTK9NL9Ez+k4jERvUziV05biWB0Dc+/QkPzeQpDVgpzuAViPfgb
nmcBJUwT4kY1x3X6dcvXzT1FZ4Uu63ETTKm/xMh75C9EDdp07UGdoUGCwqxEnafi
HXBNNMUqAQFXuTDPCuUAHmCvhXrtht27r/J6d9lhH1E7IAlwkxmZPPNqAIGyHd6m
Ttwm6aCl0BAeDPWX5S5T4Rds2V0LalgWlddbCDVAmgAet/gg8pNfTiqk7BGqJidF
AU3ZEnkO/HBG8PNXQCjn2iVCLV4t4h6Z5JOt5CZVjQDa+0Gq0Xyv1p6w/CA7AyNA
Vuvn4TYX6uV8KsBCPdjaXoI8Kou3RP4w4sPy5gERVvOyjfTNF+U=
=Pv0Z
-----END PGP SIGNATURE-----


--=-=GqEWzOZWvnoU3K=-=--



--===============8921047501444088568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8921047501444088568==--


