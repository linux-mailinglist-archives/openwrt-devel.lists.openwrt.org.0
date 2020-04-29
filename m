Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3552D1BE3C8
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 18:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/JGlp76btWn5GQeG1MZ4QTKgB9DX6jC1NC7z3i3VkPU=; b=akwb0BzLpTNW8g90dEPnso0iw
	yjlFadu93z6Y+WAdCFmwGt2ldVOHGGfpFstKcdm/bK1N85v9sB47i6hsdaDA/SYcv5Cukts38iGyb
	aruQ4gx5K6oZbIk8whw9qiNAcOfxd3RdGexe6P9ewAJJg5pzHmeNtckip4q6rIUjyemiTGrOtoZSJ
	yj0q6YekKSslbPIBAho486sNFozG+aUL1ITitmFsyHxq/vfQI4oHECTh12SY30vPJQT/GoTJhCu2U
	mff5zIqk+kgPRSh6rKjV5N9R/1texgy+IUfk7L6VIq1zi4M5VBJF4r+72yg8bxrSk7R+ZSqWzdU89
	sYa13/qTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpXY-0005Y6-HK; Wed, 29 Apr 2020 16:26:28 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpWw-00052c-QL
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 16:25:53 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MiakT-1j0I0T0qW7-00fhW4; Wed, 29 Apr 2020 18:25:38 +0200
From: <mail@adrianschmutzler.de>
To: "'Luochongjun'" <luochongjun@gl-inet.com>,
 <openwrt-devel@lists.openwrt.org>
References: <1588135106-26552-1-git-send-email-luochongjun@gl-inet.com>
In-Reply-To: <1588135106-26552-1-git-send-email-luochongjun@gl-inet.com>
Date: Wed, 29 Apr 2020 18:25:37 +0200
Message-ID: <014b01d61e42$d14e1b00$73ea5100$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQF5Wf4tH3MdktApcCq7aHDct6dLDalJzlcw
X-Provags-ID: V03:K1:Rc3+opoQOBC3CSsiHqGtKKhLw6UEdCXsX2LADQdFOcaUZFOy0Il
 SVxZOIryc5FS+GALATNAx4tGixX0Tq1eBmbYxLDHwR0zeYJbrbaBBrRHnPyz2Z82mnAaJ8n
 b2IG7Nx3YeRQ+5FdnqaeTOJbLGvD3HPxAptHjjMwRb6Qmxbk81R0RNzwPBCkJIInICa2Wei
 G9eKYhcCrB69r+/LHzkzw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7le0iHgiHEk=:ss3gTJziZetchuDgH7xit7
 usNPjcKCngryfb9alotWQ9+n03pRA8Sl9UKk8sbMP9P3QdoyemrbsFpoKEuGyofylByjrs/39
 xpeThJan+bsz9st5sGjVNg9x5LtqZKelTBUcS1Hh60oTRrI8aQ2LvmYty2p8lLXJl3OAu1AyA
 KbqYCnH+0dvlXGVhIzeLaI0O8mjCE7J9oNCeGUk0WcQaRM52WTccl1ChFRgG64RVHZCVOMCCb
 1xdF6Q10Pea4OdNhrNIxpEJF5D3vPx5ah0jbOFEAoyoKzJcGcS5kWZndeVVpHC47PsbYIGQXX
 r4H5Mf+4Ug8exAWjuDDfZvsWMuu4hZs69cWNb0Y3afooVITy9Y7qEfFcaeJlWDlUnCpEbwpEt
 LRQOZfN/Hnh8HGvSCzq+N8ViCBnOeJFr+qKzzf0R+ILGeNsoAnOOCM68sCKlGxew+OjMSe9m6
 LuD83sdCWLxwuUAAMiM06odb10mC0acHNvBbaGwhoYzWs3CneLyAc7sLYyJXYBw6DATnBQGyJ
 HybQ3AvG8d7O3E+wOin8xRAvt9tED4g05vDC984rKKYUxIuXhNfHui/H0E+P9UMZ56qtGSF45
 2rDtCQqnU437ugPpFQAZKzcIwa4DoJKH23ZnGaPDQaYZBDz1AgQ9p0t+9c8VjQ4y9fBevYRPi
 uEP7sdxjVSPPJ2YrVrmgFmQsp3Z2O9XLZQp8ZhOTOB961izJMZfP1CLHDBHmE6a2fdhLqKHtI
 SrF+DBA9lnL+C1m1sNGVIJGdLi8ZURCCkbFp1T0VbnEclEW46OPye2Ck1TLPsQLmOhJ64LwkT
 kTuIeQClGVQFjdbYHgl7H3ZvaF0610/0t0U+6wjo/jVfh/TYlURT6yxizjJnihRQVbFWtTC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_092551_168938_CBFED013 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Content-Type: multipart/mixed; boundary="===============0797478273531136102=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0797478273531136102==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=9McnEn8vy/JMPT=-="

This is a multipart message in MIME format.

--=-=9McnEn8vy/JMPT=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Luochongjun
> Sent: Mittwoch, 29. April 2020 06:38
> To: openwrt-devel@lists.openwrt.org
> Cc: Luochongjun <luochongjun@gl-inet.com>
> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
>=20
> The gl-e750 is a portable travel router that gives you safe access to the
> internet while traveling.
>=20
> Specifications:
>  - SoC: Qualcomm Atheros AR9531 (650MHz)
>  - RAM: 128 MB DDR2
>  - Flash: 16 MB SPI NOR (W25Q128FVSG) + 128 MB SPI NAND
> (GD5F1GQ4UFYIG)
>  - Ethernet: 10/100: 1xLAN
>  - Wireless: QCA9531 2.4GHz (bgn) + QCA9887 5GHz (ac)
>  - USB: 1x USB 2.0 port
>  - Switch: 1x switch
>  - Button: 1x reset button
>  - OLED Screen: 128*64 px
>=20
> Flash instruction:
> Support for sysupgrade directive upgrades, as well as luci upgrades.
>=20
> OLED screen control:
> OLED controller is connected to QCA9531 through serial port, and can send
> instructions to OLED controller directly through serial port.
> Refer to the links below for a list of supported instructions:
> https://github.com/gl-inet/GL-E750-MCU-instruction
>=20
> Signed-off-by: Luochongjun <luochongjun@gl-inet.com>
> ---
>  target/linux/ath79/dts/qca9531_glinet_gl-e750.dts  | 146
> +++++++++++++++++++++
>  .../generic/base-files/etc/board.d/02_network      |   3 +
>  target/linux/ath79/image/nand.mk                   |  21 +++
>  3 files changed, 170 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
>=20
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
> b/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
> new file mode 100644
> index 0000000..36ba376
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
> @@ -0,0 +1,146 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca953x.dtsi"
> +
> +/ {
> +	compatible =3D "glinet,gl-e750", "qca,qca9531";
> +	model =3D "GL.iNet GL-E750";
> +
> +	keys {
> +		compatible =3D "gpio-keys-polled";

Please use gpio-keys and drop poll-interval.

> +
> +		poll-interval =3D <20>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&jtag_disable_pins>;
> +
> +		button0 {

Please name buttons according to their function, i.e. "reset" instead of bu=
tton0, also below.

> +			label =3D "reset";
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		button1 {
> +			label =3D "right";

What's that?

> +			linux,code =3D <BTN_0>;
> +			gpios =3D <&gpio 1 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +        gpio-export {
> +                compatible =3D "gpio-export";
> +                #size-cells =3D <0>;
> +
> +                gpio_lte_power {
> +                        gpio-export,name =3D "4G POWER";

Not really important, but either use "4g" or "lte" for the name consistentl=
y.

> +                        gpio-export,output =3D <1>;
> +                        gpios =3D <&gpio 0 GPIO_ACTIVE_HIGH>;
> +                };
> +        };
> +
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
> +
> +&spi {
> +	status =3D "okay";
> +	num-cs =3D <2>;
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
> +			partition@60000 {
> +				label =3D "kernel";
> +				reg =3D <0x060000 0x400000>;
> +			};
> +
> +			partition@460000 {
> +				label =3D "reserved";
> +				reg =3D <0x460000 0xba0000>;
> +			};

Are you using these partitions or should they be read-only as well (at leas=
t the second one)?

> +
> +		};
> +	};
> +
> +	flash@1 {
> +		compatible =3D "spi-nand";
> +		reg =3D <1>;
> +		spi-max-frequency =3D <25000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "ubi";
> +				reg =3D <0x000000 0x8000000>;

Please match the number of digits, so either seven zeros (0x0000000) for th=
e position, or just use one (0x0).

> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";

Add empty line after status.

> +	mtd-mac-address =3D <&art 0x0>;
> +	phy-handle =3D <&swphy4>;
> +};
> +
> +&eth1 {
> +	mtd-mac-address =3D <&art 0x0>;
> +	mtd-mac-address-increment =3D <1>;
> +};

This device is a one-port, according to the commit message. So, please set =
up only eth0 or eth1 here depending on which you need.

> +
> +&wmac {
> +	status =3D "okay";

Empty line after status.

> +	mtd-cal-data =3D <&art 0x1000>;
> +	mtd-mac-address =3D <&art 0x1002>;

mac-address can be dropped here, it's read from the caldata.

> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index d7f7eed..1e80c68 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -63,6 +63,9 @@ ath79_setup_interfaces()
>  	winchannel,wb2000)
>  		ucidef_set_interface_lan "eth0"
>  		;;
> +	glinet,gl-e750)
> +		ucidef_set_interface_lan "eth1"
> +		;;

One-port, so if set up correctly, there should only be eth0, and you can ad=
d this to the corresponding case here.
Despite, please watch for correct alphabetic sorting.

>  	avm,fritz4020|\
>  	pcs,cr3000|\
>  	tplink,archer-c58-v1|\
> diff --git a/target/linux/ath79/image/nand.mk
> b/target/linux/ath79/image/nand.mk
> index 3ccd199..6518f99 100644
> --- a/target/linux/ath79/image/nand.mk
> +++ b/target/linux/ath79/image/nand.mk
> @@ -130,6 +130,27 @@ define Device/glinet_gl-ar750s-nor  endef
> TARGET_DEVICES +=3D glinet_gl-ar750s-nor
>=20
> +define Device/glinet_gl-e750
> +  SOC :=3D qca9531
> +  DEVICE_VENDOR :=3D GL.iNet
> +  DEVICE_MODEL :=3D GL-E750
> +  DEVICE_PACKAGES :=3D kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-
> usb2 \
> +	kmod-usb-storage block-mount
> +  KERNEL_SIZE :=3D 2048k
> +  IMAGE_SIZE :=3D 16000k

131072k ?

> +  PAGESIZE :=3D 2048
> +  VID_HDR_OFFSET :=3D 2048
> +  DEVICE_VARIANT :=3D NOR/NAND

DEVICE_VARIANT is just used for naming the device.
So, it is only required if there are  (or will be) different variants of th=
at device.
If yes, you should also change the device name to glinet_gl-e750-nor-nand e=
verything.
If not, it can be dropped.
If kept, it should be put after DEVICE_MODEL.

> +  BLOCKSIZE :=3D 128k
> +  GL_UBOOT_UBI_OFFSET :=3D 2048k
> +  IMAGES +=3D factory.img
> +  IMAGE/factory.img :=3D append-kernel | pad-to
> $$$$(GL_UBOOT_UBI_OFFSET) | \
> +	append-ubi | check-kernel-size $$$$(GL_UBOOT_UBI_OFFSET)
> +  IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
> +  SUPPORTED_DEVICES +=3D glinet,gl-e750

That line can be dropped, it's the default.

Best

Adrian

> +endef
> +TARGET_DEVICES +=3D glinet_gl-e750
> +
>  # fake rootfs is mandatory, pad-offset 129 equals (2 * uimage_header +
> 0xff)  define Device/netgear_ath79_nand
>    DEVICE_VENDOR :=3D NETGEAR
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

--=-=9McnEn8vy/JMPT=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6pqn0ACgkQoNyKO7qx
AnA2LBAAk0cwv8VfaSiOX3dm7w219jW3Z+LtEw4Z84um0kblY+2ytXAceYTlhVxk
iLV/mkQy/7FJ4TGz2C+9lb07lJlhX/XJtRNEx9+s/8mq5OG4y4uFJpy+/x1J2D8P
UZ+lPqFO9JL7yPrl3uQUiigTBL2yB62FmkImyBj1TgPCMk2esx1teV2LVmMlb4s9
sfrIgKVL+z2fXViohB2gQdn6NnBTGpuILRED2/HWoVBzQzbQ8yotnT2szex5MIYt
NO78RWzXFjOVdU3/lRuz6M04TkaEVXPO9EzeNTMcWC+Tks9mDfvMSoYC6lREVUgD
SLn2Ods/7j100c7ngeLvYGNHmGLzvp+6tEcK2RdtIu1VZajILl43mR9kWJuk9Ibt
Dv094IHeW6Isy03EZbEkqpoFmBz16ztm2z30AowwAo0fMAlqZUCb4/eMjyBHvanU
pqJA7arW78vaXc0DeaX9ZjzBhENci06fAZ0+5J1qeVZiGG48jntfSy0JIY/Y4hwA
AePIT6X/Q5U3MvrD1a/jzg/+apH5V14tIbXp1Tr9FS2h+l3PODnuWX3hdbXX+eNu
MO3bdletAcGoZi3J27wRzShXnYXc8lEhV8dD10OZqTwbktjxiiwVi9VvtD7+U4Xv
PvhZi4nwuzJkOHUAC3yz0H+EeabAVm8DTkSn0ZSVI0zLZugRrDo=
=oA8F
-----END PGP SIGNATURE-----


--=-=9McnEn8vy/JMPT=-=--



--===============0797478273531136102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0797478273531136102==--


