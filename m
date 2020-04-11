Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEAD1A53DA
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Apr 2020 00:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C8wrQpvxH28pweq0A3v02SaH8SemcKXogagAF4lGciI=; b=hrubnY/F82yDlGCEJ5ClOuP+w
	R26MKSxbIspfwKHIOPyPagoCDc9XS/eR4hUZVJ+2N5c4xWp2O0TFVPpCo3crlj9+HkMJiVWnKDg/8
	52+COasN7qucztI5BfiNf4lqGrFtPttsvlhqgl+toaS+mjP78tVW1YXifv1u34I7iCEMRvr1DHsrU
	WhjQ5J1fbEPWt2EqXkH2M6Ki3/VI0mtsHwZhjrw1zfi94fyWPad1Cy2+bznuu5DUBDLXP+jKgNWPk
	zcCoGPoKBb0rm05OPgXyCDdpKRztNJkWfqKVA1bT/rKWmvKQ1Jp1vAeTDvW1eQPSnSdif4khIbdeH
	YO47RrfZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNOBq-0004Rk-1r; Sat, 11 Apr 2020 22:01:26 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNOBi-0004RB-Ed
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 22:01:20 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MA88C-1jXnF11ZyU-00BZnw; Sun, 12 Apr 2020 00:01:09 +0200
From: <mail@adrianschmutzler.de>
To: <guilin.wang@gl-inet.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1586490257-31611-1-git-send-email-guilin.wang@gl-inet.com>
In-Reply-To: <1586490257-31611-1-git-send-email-guilin.wang@gl-inet.com>
Date: Sun, 12 Apr 2020 00:01:08 +0200
Message-ID: <016401d6104c$b4fa9bd0$1eefd370$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH5Vsv8tpfd//+AQmZgqAbDHUZRPagt61GA
MIME-Version: 1.0
Content-Language: de
X-Provags-ID: V03:K1:kjqB+FvdoqNvPgxDBsokR8lBmQ3aBcFiPLHtewxYLc7FU36lZLm
 yT2zxObXI7r7Lh8NENXsfAdzh70CaH7R+GDZBkwSjma4sM6Pg+R33iOfQxyUFb6jS2ol14m
 mzvCaZ/Us1py4BOiRoKuxWqKxd9FRhGYZbtAndm72h0gEqjRwObbhVGesf6/tJF9cnrqmm3
 tm4Q2Mj2hxLIT05tQ14aQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tjmMXUXU790=:zVLdgfPE8yoQpLg1RxOgrr
 fAs2nRcrhQqDRdflKivd2FU0zv/g9P/gE4XUHWAPzLk+JS9MTBGVAa3qF63OYA/2xm4/0lNw1
 eURWeYtgSl/GlVLuK2MKW5qF/YcmJ3KCERD0NacTsrzq768bKao3kSNvfurMBEzFN1AreRo66
 kw1El2RHJJ0kxfekmGMGGPk7rBQXA3CiK9FBs3sUPpEI/DRcjY3R0ha5MPFC/FOdEFlaifnq+
 cdeBqT0ZnBAc2ui7IipEFEf75aiiLN4spshU6GZ2mzjOXvSpfbtiqp4Tp4sE+S3L8ENM3RcWT
 B9eI7yZ8fhhNtaXvxEUt9B/bnLU7pc5Ka6uS+1dPxoeuMHhq6LEmsV5wbaY4Qcw3v3d68kell
 fSmyjWU0sq+upt8qEfwwAZThmJ3rqHH9GQ7KM/dF1B6aMGxF+2FQoehEsuelsXxDLVVxYIQN3
 6ZVe1suy7iUmjIVEnd+gaFfI0y9WDmYkCtptn2/Z/fhQGdzVF/wzKR1npf8qB7DiB5kSn++EK
 WfhADKctkY5NiIi3IgmKeZNkMdC0Qw6rKM36n+TXrGRaR9DJxB00EElFogd5Y0p12t1mdeM97
 DPedUTxX+psO9I+BmIAvCmdVPEGnLSdBsc9PjESgGxavX1/nENOZhm++yd9K++gV43jJEc0X1
 cDe+FnPFguh9J00KhtTi43V9Fdw9poJt26oSVixlvC14bpBL5olQ7NHIXO7ixmQRIiWSouCut
 OuQ6dktMxdXrPkRsWVZ6XRIEMjbOWUzwMS6OqZaIvXXcz7RHwIe4mZSWtSpxP3bxxo8ZXmIFU
 cwfwAcpuSBq7Dsh5rYtm93bEAEH8zoe3FUhcyoZDsHdw/KMeQHoJIAdFzOZimLM7UFtVzqR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_150118_793359_7E780A10 
X-CRM114-Status: GOOD (  28.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx: add support for GL.iNet GL-X1200
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
Content-Type: multipart/mixed; boundary="===============2496166881804423991=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2496166881804423991==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=guIax4slxYu9MX=-="

This is a multipart message in MIME format.

--=-=guIax4slxYu9MX=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of guilin.wang@gl-inet.com
> Sent: Freitag, 10. April 2020 05:44
> To: openwrt-devel@lists.openwrt.org
> Cc: guilin.wang@gl-inet.com
> Subject: [OpenWrt-Devel] [PATCH] ar71xx: add support for GL.iNet GL-X1200

The ar71xx target has been deprecated for a long time and will not be inclu=
ded in the next release branch.

Consequently, we do not accept any new devices there, but will focus on the=
 ath79 patch supplied in parallel.

Best

Adrian

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
>     glinet_gl-ar750s   OpenWrt NOR (prior builds)
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
> +			label =3D "gl-x1200:green:wlan2g";
> +			gpios =3D <&gpio 19 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy1tpt";
> +		};
> +
> +		led_wlan5g: wlan5g {
> +			label =3D "gl-x1200:green:wlan5g";
> +			gpios =3D <&gpio 20 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};
> +	};
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
> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	phy-handle =3D <&phy0>;
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
> +&wmac {
> +	status =3D "okay";
> +
> +	mtd-cal-data =3D <&art 0x1000>;
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

--=-=guIax4slxYu9MX=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6SPiQACgkQoNyKO7qx
AnCPnQ//VtyIDlTl+FO7xsB9n56TjgXIguejPy5+1IZpZqaFCENgYUBHO+o07qrS
P6JzIjccOD2qjcydqwrESm5yWysb1zOzZrErwe6IK6uxOiUg+62r3jKyCjH7Ssvy
gCQ0UtjbQUyeqdSE5d9ewI9ihTTgJzoLih8uGZy1DLLYl847+hiddynvXcCaGnxK
8I7VU7Y1cUFmXwMkPBS9vZiE6QSTu0e/zRdqo1OjN8gA/FgfYVNmHCwuLM1qnMwD
XfV5/Ry5NRft0hpBC2OUeXo49PmiF52pu/12r0TLNLf0ygNx/YvvLRNDPFMxOC5w
Q9VRG3p3AP3UjP3ItIBcDfF0IlbtAO2sGtWHTZzDWXZnB00rz5FMOmWOQ29/t5QI
6uIKwPk0F6yiRTuqL+jQzHG3ePHWzgYc28Z1p4vpMFNfTYtQn0DZwVQyM0GSqdRi
fne+LHm3NEkkOf4dB0ebejNzyT2XD3DelIfg8pntzX2JwDTOfhhQCz8jmqwJtBmA
BKNCthZiAp2KHe88jBCkhUhMcluKRTJI7QaCRAvnfguTiJ8APKedcwxO7OfOx2Fx
JPIqWdSFCDnZB1QdC2SK7NZhcZcp0lbJJneZnx31nQvBpkPdAy9kx/xsIf+0wwX4
zfYOrkhECQyecMN8576tnTDPAWk4PIr5ZUlA+RxSB4BE/PPhK74=
=V6ce
-----END PGP SIGNATURE-----


--=-=guIax4slxYu9MX=-=--



--===============2496166881804423991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2496166881804423991==--


