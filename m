Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF11E1AAB2D
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 17:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rOO2fMslECpSQ+FZOwsTf+PtS3nyg7ZKWb7+zG/uQ9k=; b=g5pN9f/e8iRdzq+1ONWwHc/qF
	KPZM1cDwkg3pQemiz4j+b25xk36SLZ0zEbX5FUdpfPfxlaPhpTFiGgVPedh3bfD3YQgwlea4k87Lw
	LKIDNXVQcOAxUzsjSGmq5ejj63PiydDYLFfMoEUL0Wvs71WM64g1P3FIcF2pGVJ96PPLNsycUxOrJ
	BdUrW+F5+qMNCkjd/m5qER1ly0TfP2lCq3YPW0yWFhCVLvyDBNhKK18cTHocwNM+v7TXPRK7A9hgJ
	N4wmuRiJ6YZv3MOXcZmFlWW6yhXBp0tk+l6TycTFYO5S19s59gxaGcczKVyJ0k1iptsKm0kAwAhQr
	BBO4CRy2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOjXn-0005wH-1N; Wed, 15 Apr 2020 15:01:39 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOjXf-0005vS-4w
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 15:01:33 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MAP77-1jYspP1GGJ-00BqiV; Wed, 15 Apr 2020 17:01:20 +0200
From: <mail@adrianschmutzler.de>
To: <guilin.wang@gl-inet.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1586494213-34463-1-git-send-email-guilin.wang@gl-inet.com>
In-Reply-To: <1586494213-34463-1-git-send-email-guilin.wang@gl-inet.com>
Date: Wed, 15 Apr 2020 17:01:19 +0200
Message-ID: <009201d61336$b8c72930$2a557b90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHCFFa+WUup71jVXlMEscks9qKr3aiiQQ3Q
X-Provags-ID: V03:K1:0vWhwLT1Mro/jmLH+ohDYRefyxRgpV/XzhMxM7BSFC9CNg0LN/l
 ZaoxrTKkI7uptTo7QncPEAHrB8MRJXnQNTGz8mbG9Ncgye/o9IFQlrvian4KN0y8A7T5L88
 XsQViJ42uFmisCLWy8uC3r+CINTIss/lG3U0X3cEFhdV/ngwMFonVi9oDRfviEwqkgU18Gz
 NaTyAPa9NmJ7Am9Vu/g+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EMuPsKQ1Akg=:QXm6vf3PlXKHZ66vEA7bKz
 S3sIPOBPPdDJYI19Dz0halY2mL0gfv1aaRI33lwnik6ajEPFbAIyzggA8XRHzmfvGw2SXa69v
 a6ujXR/wiy9una2oWg+gLuyFXZ48Tag05Tv012Y8JFCyyja9E8jGYo2v7xUyFYxji/gUJoSMd
 HaqQysd5xgid0GLiiiErtnJnvsYd8KQJai9nmefBe3FEAvRiVD3I/W4aAZNot9b1Azosn34tj
 VtCWuAwJF8foNCmUK9OL21sYiN9inqke8XW53erAD4QaytMjiDvV7EOfnRoMD75SmoUGX71AK
 0+oTNIW1UVBVIN0wUsSFoLwn7pFRnzzTWJwQMQHfY4NbeQhfa+yC1qsXc2lsMlvGzMC1ExBU3
 8OKrVMWu07VOX0E/9TF71adfzbGX4gTqUn7aNZRI28fJIMr54H8M+qZUDfAKVijf4ltyES/2/
 g1NxVnvPSHYXagvpBVl/SPpl4PYaai0E2xyjKuPmCwPmqpgghRi+MvlQMmElH5bxKtOwXFR5+
 zWDnNqtVCGh6TTr9flSGucZ+823Llp4+gvmpXp6vJD1Vw2+7rkgEVMjwziUMoJP4EDOs9+miy
 HI0/BX764BbEp1ixncFwhPRYF5xA2LYw6Jj5uFF3q/XiTg9r2K/hH7AhHs1thDbGVW9MtXIDC
 sg5SS+eDOn3CBof3MOcY2a1R01canOo5oiimjpCy/lU1+hUfezDtpi5zjO3zpmHV0KldSqaq5
 lR+0EYWrscjVMxLZVOuSQAfiU9gU6JR+DIXScQcaSEoiAQc1fsuWPMWFFDhanAbiQIVOy4wAu
 xfnQRrftpdgVz7yNHVX1HdVDB3lN3RpPM+0HcWCyQDDnVPt0dkUvlahjQgeRYNiRE2O4byM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_080131_492507_27928A22 
X-CRM114-Status: GOOD (  29.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for GL.iNet GL-X1200
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
Content-Type: multipart/mixed; boundary="===============8260922157653363144=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8260922157653363144==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=hAEGDxnwKQu1vD=-="

This is a multipart message in MIME format.

--=-=hAEGDxnwKQu1vD=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of guilin.wang@gl-inet.com
> Sent: Freitag, 10. April 2020 06:50
> To: openwrt-devel@lists.openwrt.org
> Cc: guilin.wang@gl-inet.com
> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for GL.iNet GL-X1200
>=20
> This patch adds supports for GL-X1200.
>=20
> Specification:
> 	- SOC: QCA9563 (775MHz)
> 	- Flash: 16 MiB
> 	- RAM: 128 MiB DDR2
> 	- Ethernet: 4x 1Gbps LAN + 1x 1Gbps WAN
> 	- Wireless: QCA9563(2.4GHz) and QCA9886(5GHz)
> 	- SIM: 2x SIM card slots
> 	- MicroSD: 1x microSD slot
> 	- Antenna: 2x external 5dBi antennas
> 	- USB: 1x USB 2.0 port
> 	- Button: 1x reset button
> 	- LED: 16x LEDs (3x GPIO controllable)
> 	- UART: 1x UART on PCB (JP1: 3.3V, RX, TX, GND)
> 	- OEM U-Boot supplies HTTP/GUI access
>=20
> Implementation Notes
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Both the NOR and NAND variants boot off a NOR-based kernel, consistent
> with the OEM's firmware.
>=20
> The mode LEDs are
>     * Boot, Running   system
>     * Failsafe        2G
>     * Upgrade         5G
>=20
> Installation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Using sysupgrade
> ----------------
>=20
> sysupgrade may be used to install a NAND image on a device running a NAND
> image or a NOR image on a device running a NOR image. It is recommended
> to *not* preserve config when upgrading from OEM firmware or previous
> versions of OpenWrt. No supported sysupgrade path should require "force".
> Transitioning from NOR to NAND can be accomplished
>=20
> using U-Boot.
>=20
> To glinet_gl-x1200-nand:
>=20
>     gl-x1200          OEM NAND, Self-built from OEM source NAND
>=20
> To glinet_gl-x1200-nor:
>=20
>     gl-x1200          Self-built from OEM source NOR
>     glinet_gl-x1200   OpenWrt NOR (prior builds)
>=20
> Using U-Boot
> ------------
>=20
> The OEM U-Boot can be put into a graphical, firmware-upload mode by
> holding down the button on the side of the router while applying power and
> for a bit more than five seconds following with the current OEM U-Boot. T=
he
> power LED will come on, then the 5G LED will flash five times, about once=
 a
> second.  When the 5G LED stops flashing and the 2G LED lights solid, the
> router's U-Boot will provide an upload page at http://192.168.1.1/ Either=
 a
> browser may be used to upload an image, or a utility such as curl may be
> used:
>=20
>     curl -X POST -F gl_firmware=3D\@*-nand-squashfs-factory.img \
>          http://192.168.1.1/index.html
> or
>     curl -X POST -F gl_firmware=3D\@*-nor-squashfs-sysupgrade.bin \
>          http://192.168.1.1/index.html
>=20
> Note that NOR vs. NAND is based on the file name extension.
>=20
> Signed-off-by: guilin.wang@gl-inet.com <guilin.wang@gl-inet.com>
> ---
>  .../ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts |  18 ++
>  .../ath79/dts/qca9563_glinet_gl-x1200-nor.dts      |  18 ++
>  .../linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi   | 199
> +++++++++++++++++++++
>  target/linux/ath79/image/nand.mk                   |  34 ++++
>  .../ath79/nand/base-files/etc/board.d/02_network   |   5 +
>  .../etc/hotplug.d/firmware/11-ath10k-caldata       |  10 ++
>  .../ath79/nand/base-files/lib/upgrade/platform.sh  |   4 +-
>  7 files changed, 287 insertions(+), 1 deletion(-)  create mode 100644
> target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts
>  create mode 100644 target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor.dts
>  create mode 100644 target/linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi
>=20
> diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts
> b/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts
> new file mode 100644
> index 0000000..1fefd4f
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +/dts-v1/;
> +
> +#include "qca9563_glinet_gl-x1200.dtsi"
> +
> +/ {
> +	compatible =3D "glinet,gl-x1200-nor-nand", "qca,qca9563";
> +	model =3D "GL.iNet GL-X1200 (NOR/NAND)"; };
> +
> +&nor_kernel {
> +	label =3D "kernel";
> +};
> +
> +&nand_ubi {
> +	label =3D "ubi";
> +};
> diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor.dts
> b/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor.dts
> new file mode 100644
> index 0000000..4eded21
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor.dts
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +/dts-v1/;
> +
> +#include "qca9563_glinet_gl-x1200.dtsi"
> +
> +/ {
> +	compatible =3D "glinet,gl-x1200-nor", "qca,qca9563";
> +	model =3D "GL.iNet GL-X1200 (NOR)";
> +};
> +
> +/delete-node/ &nor_kernel;
> +/delete-node/ &nor_reserved;
> +
> +&nor_firmware {
> +	compatible =3D "denx,uimage";
> +	label =3D "firmware";
> +};
> diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi
> b/target/linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi
> new file mode 100644
> index 0000000..60e3dba
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi
> @@ -0,0 +1,199 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca956x.dtsi"
> +
> +/ {
> +	compatible =3D "glinet,gl-x1200", "qca,qca9563";
> +	model =3D "GL.iNet GL-X1200";

I would remove those two lines from the DTSI, as we require them in the DTS=
 anyway, and the DTSI is not describing an actual device.

> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,115200n8";
> +	};
> +
> +	aliases {
> +		led-boot =3D &led_system;
> +		led-failsafe =3D &led_system;
> +		led-running =3D &led_system;
> +		led-upgrade =3D &led_system;
> +		label-mac-device =3D &eth0;
> +	};
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
> +			gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_system: system {
> +			label =3D "gl-x1200:red:system";
> +			gpios =3D <&gpio 8 GPIO_ACTIVE_LOW>;
> +			default-state =3D "keep";
> +		};
> +
> +		led_wlan2g: wlan2g {

Typically, we don't add DT labels when they are not used.

> +			label =3D "gl-x1200:green:wlan2g";
> +			gpios =3D <&gpio 19 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy1tpt";
> +		};
> +
> +		led_wlan5g: wlan5g {
> +			label =3D "gl-x1200:green:wlan5g";
> +			gpios =3D <&gpio 20 GPIO_ACTIVE_HIGH>;

ACTIVE_HIGH used by intention?

> +			linux,default-trigger =3D "phy0tpt";
> +		};
> +	};

Add empty line between nodes.

> +	gpio-export {
> +		compatible =3D "gpio-export";
> +
> +		gpio_modem1_power {
> +			gpio-export,name =3D "gl-x1200:4g1:power";
> +			gpio-export,output =3D <1>;
> +			gpios =3D <&gpio 5 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		gpio_usb_power {
> +			gpio-export,name =3D "gl-x1200:usb:power";
> +			gpio-export,output =3D <1>;
> +			gpios =3D <&gpio 7 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		gpio_modem2_power {
> +			gpio-export,name =3D "gl-x1200:4g2:power";
> +			gpio-export,output =3D <1>;
> +			gpios =3D <&gpio 15 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&spi {
> +	status =3D "okay";
> +
> +	num-cs =3D <2>;
> +
> +	flash_nor: flash@0 {
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <25000000>;
> +
> +		nor_partitions: partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x000000 0x040000>;
> +				read-only;
> +			};
> +
> +			partition@40000 {
> +				label =3D "u-boot-env";
> +				reg =3D <0x040000 0x010000>;
> +			};
> +
> +			art: partition@50000 {
> +				label =3D "art";
> +				reg =3D <0x050000 0x010000>;
> +				read-only;
> +			};
> +
> +			nor_firmware: partition@60000 {
> +				label =3D "nor_firmware";
> +				reg =3D <0x060000 0xfa0000>;
> +			};
> +
> +			nor_kernel: partition_alt@60000 {
> +				label =3D "nor_kernel";
> +				reg =3D <0x060000 0x400000>;
> +			};
> +
> +			nor_reserved: parition_alt@460000 {

Typo partition_alt

> +				label =3D "nor_reserved";
> +				reg =3D <0x460000 0xba0000>;
> +			};
> +		};
> +	};
> +
> +	flash_nand: flash@1 {
> +		compatible =3D "spi-nand";
> +		reg =3D <1>;
> +		spi-max-frequency =3D <25000000>;
> +
> +		nand_partitions: partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			nand_ubi: partition@0 {
> +				label =3D "nand_ubi";
> +				reg =3D <0x000000 0x8000000>;

Either use 0x0 or 0x0000000 here, please.

> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	phy-handle =3D <&phy0>;

I'd prefer an empty line after phy-handle.

> +	mtd-mac-address =3D <&art 0x0>;
> +};
> +
> +&mdio0 {
> +	status =3D "okay";
> +
> +	phy-mask =3D <0>;
> +
> +	phy0: ethernet-phy@0 {
> +		reg =3D <0>;
> +		phy-mode =3D "sgmii";
> +		qca,ar8327-initvals =3D <
> +			0x04 0x00080080 /* PORT0 PAD MODE CTRL */
> +			0x7c 0x0000007e /* PORT0_STATUS */
> +		>;
> +	};
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +};
> +
> +&uart {
> +	status =3D "okay";
> +};
> +
> +&usb0 {
> +	status =3D "okay";
> +};
> +
> +&usb1 {
> +	status =3D "okay";
> +};
> +
> +&usb_phy0 {
> +	status =3D "okay";
> +};
> +
> +&usb_phy1 {
> +	status =3D "okay";
> +};
> +
> +

Remove second empty line.

> +&wmac {
> +	status =3D "okay";
> +
> +	mtd-cal-data =3D <&art 0x1000>;

Correct MAC address reliably set in caldata?

> +};
> diff --git a/target/linux/ath79/image/nand.mk
> b/target/linux/ath79/image/nand.mk
> index 3ccd199..712e90d 100644
> --- a/target/linux/ath79/image/nand.mk
> +++ b/target/linux/ath79/image/nand.mk
> @@ -130,6 +130,40 @@ define Device/glinet_gl-ar750s-nor  endef
> TARGET_DEVICES +=3D glinet_gl-ar750s-nor
>=20
> +define Device/glinet_gl-x1200-common
> +  SOC :=3D qca9563
> +  DEVICE_VENDOR :=3D GL.iNet
> +  DEVICE_MODEL :=3D GL-X1200
> +  DEVICE_PACKAGES :=3D kmod-ath10k-ct ath10k-firmware-qca9888-ct kmod-
> usb2 kmod-leds-gpio\
> +	kmod-usb-storage block-mount kmod-usb-net-qmi-wwan
> +  KERNEL_SIZE :=3D 2048k
> +  IMAGE_SIZE :=3D 16000k
> +  PAGESIZE :=3D 2048
> +  VID_HDR_OFFSET :=3D 2048
> +endef
> +
> +# NB: The kernel size is intentionally restricted at this time; see
> +commit message define Device/glinet_gl-x1200-nor-nand
> +  $(Device/glinet_gl-x1200-common)
> +  DEVICE_VARIANT :=3D NOR/NAND
> +  BLOCKSIZE :=3D 128k
> +  GL_UBOOT_UBI_OFFSET :=3D 2048k
> +  IMAGES +=3D factory.img
> +  IMAGE/factory.img :=3D append-kernel | pad-to
> $$$$(GL_UBOOT_UBI_OFFSET) | \
> +	append-ubi | check-kernel-size $$$$(GL_UBOOT_UBI_OFFSET)
> +  IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
> +  SUPPORTED_DEVICES +=3D glinet,gl-x1200-nor endef TARGET_DEVICES +=3D
> +glinet_gl-x1200-nor-nand
> +
> +define Device/glinet_gl-x1200-nor
> +  $(Device/glinet_gl-x1200-common)
> +  DEVICE_VARIANT :=3D NOR
> +  BLOCKSIZE :=3D 64k
> +  SUPPORTED_DEVICES +=3D gl-x1200 glinet,gl-x1200

Why "gl-x1200" and "glinet,gl-x1200"?

Is one of those used in vendor firmware?

> +glinet,gl-x1200-nor-nand endef TARGET_DEVICES +=3D glinet_gl-x1200-nor
> +
>  # fake rootfs is mandatory, pad-offset 129 equals (2 * uimage_header +
> 0xff)  define Device/netgear_ath79_nand
>    DEVICE_VENDOR :=3D NETGEAR
> diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network
> b/target/linux/ath79/nand/base-files/etc/board.d/02_network
> index b2191ee..cd1e0a7 100755
> --- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
> @@ -20,6 +20,11 @@ ath79_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "2:lan:2" "3:lan:1" "1:wan"
>  		;;
> +	glinet,gl-x1200-nor|\
> +	glinet,gl-x1200-nor-nand)
> +		ucidef_add_switch "switch0" \
> +			"0@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
> "5:wan"

WAN and LAN are supposed to have the same MAC address?

> +		;;
>  	netgear,wndr3700-v4|\
>  	netgear,wndr4300|\
>  	netgear,wndr4300-v2|\
> diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-
> ath10k-caldata b/target/linux/ath79/nand/base-
> files/etc/hotplug.d/firmware/11-ath10k-caldata
> index d5fd3db..02f226c 100644
> --- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-
> caldata
> +++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10
> +++ k-caldata
> @@ -24,6 +24,16 @@ case "$FIRMWARE" in
>  		;;
>  	esac
>  	;;
> +"ath10k/pre-cal-pci-0000:00:00.0.bin")
> +	case $board in
> +	glinet,gl-x1200-nor|\
> +	glinet,gl-x1200-nor-nand)
> +		caldata_extract "art" 0x5000 0x2f20
> +		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
> +			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin

Correct MAC address reliably set in caldata?

> +		;;
> +	esac
> +	;;
>  *)
>  	exit 1
>  	;;
> diff --git a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
> b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
> index ea77345..4ea2287 100644
> --- a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
> @@ -19,7 +19,9 @@ platform_do_upgrade() {
>  		glinet_nand_nor_do_upgrade "$1"
>  		;;
>  	glinet,gl-ar750s-nor|\
> -	glinet,gl-ar750s-nor-nand)
> +	glinet,gl-ar750s-nor-nand |\

Nitpick: No space before the pipe symbol.

Best

Adrian

> +	glinet,gl-x1200-nor|\
> +	glinet,gl-x1200-nor-nand)
>  		nand_nor_do_upgrade "$1"
>  		;;
>  	*)
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

--=-=hAEGDxnwKQu1vD=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6XIbwACgkQoNyKO7qx
AnAH8g//dWw8ngFgjShR9MUu4//dwHBRALSIrsAHl+TdD/G0Y5XqHyit/V1armnQ
Nj7e/S5eSAgY5G1ilYsmKHajG3s++G/hwglkQIDbYEuPWYwqlCibIciyYQeFSWbQ
DPReHz0qN1BiwP/pNI1vrOWaumHST1QWlyVZAym/GaJ1/frjpakLWxH63R6Y9/Qa
7FDOUBjFUQjSqZiQkYLDZIjCiMqYBA7PcHP7iHVyt2hBykBkGDkFwRSzHePATf80
culbFSzQoyJuFOWWVnkoBTaKsXqOKt6rGXz1L+Ugv/W8OU2BIC1pchklFqQ8OLbG
OBYMTxYHvZ+yAQIrjeUH3dsUSmUdL1bZRaAiwargCTbFuzUPNsVxD1IOZOU4RGCo
8TTzWochkn5JPjgAZ1FBW5i3dljWNBDx4pVs9A60KM7R5r3hTRcNgEyTn7HonjRB
N/5pVl1qGNy4pIxRTObqLhGa61VuOx4Tuao/FjvQCC+CXOBjPp7N52HxO1Xk25X8
sSelhhZTEWL703uq/hjDDo4WwNy/FYzu1sGQlBo6iCMDd9wdxFRRrpabL8FqcN+0
jj7lvtGOhD9UTGchJIzp90pBE87iHhbSeTCKO1HtyL7AEe5M1qodj8QNMHCoGNlr
nEnoy4O3uSjbxiNfBD+a1cc6SAp0ohU3jbEvcZSOWc7WGN5sQOs=
=EMg2
-----END PGP SIGNATURE-----


--=-=hAEGDxnwKQu1vD=-=--



--===============8260922157653363144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8260922157653363144==--


