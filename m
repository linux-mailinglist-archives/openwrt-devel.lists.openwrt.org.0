Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9952ED6638
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 17:37:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ng+utOOMtaNacL1ciqIsAno6Qno97rFofSOMBcQzR6g=; b=n6dnaO81N8yKHCPcmSn7RWPfV
	u3M04M4MCm5RXbBpgGYZGbfBE2UwnxjTWlPJGZarVta62/2xmqDYTB8vWXDbAoverUfhnTGqZHRcY
	iO+aebfwzP0+p9f7G5cfB1EICK2ZJ938bClQecDpy6Ml4W/db+JcG9sLc6jnJtC5AgiW9zj1JPASs
	QTEpCFYgYbgEBML0PyiR6YqqRo46N5gssVJ45VFr51g1O8/80cn1nrkMMU49wMwSv/DCT/c+2wPBv
	g80ZsG/jP7tnMXPt/aiGXCMsw1hZWOIaXDDZHxFpvA4Yv/XLdIZflpJyq25GvuvrrmtjEeVe9Afm8
	L8D7J2zGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK2Pd-00045A-Ly; Mon, 14 Oct 2019 15:37:33 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2PU-00044p-54
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 15:37:25 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MQusJ-1ifo9h13UF-00Nypm; Mon, 14
 Oct 2019 17:37:18 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Enrico Mioso'" <mrkiko.rs@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
In-Reply-To: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
Date: Mon, 14 Oct 2019 17:37:17 +0200
Message-ID: <01c401d582a5$42ff9b00$c8fed100$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJPfRHoBS5s4jhu9uUuLKJkakDH7qZmR/Zw
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:7/IMoGTx0AckFWddA/8F0p0p8nBanyk7M00QmlgAQs4cQ5bCQ7h
 YxB+KMqQb05Ny1QZ/S84/bAokUKiX+r+5G9iM+YWEf29njFAjYJ25Pw1f0qQgraSsIB75bR
 ZDDkzwwVq0ESgzcHGe+7Qm84VD6JSeCvKyDgovMQdl/u2gsjy7PkWls/V9bLN0BnpTxM1Ad
 iyZdfsPPg2qzP2K5jhOlQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tF0ZLErznVo=:tmDeN+IcVuOSe1wjH7XXmu
 5vWVPTdi5v+JA5/wybOQN7WKU5BymtYmt76jwcKZ6xZLZURdYNDEyS5tcJrQCAGNrHyZuDiBb
 FsOH1kA8g8O3IhbvAYLC+6/i4A963lNDfDoMjT+t0lunWyMyRgSWS84R8iZcDTF4Yd/HDVZ2a
 YhsaLPFzurK0Bjz7OBLS3woI+9hXFfdbSYRGIqeXBYQm6RRgn0VgF61h3J+BuyyevRuPt+KT7
 /CIZK9iTeVrZuOJn2uBrRcqM6YO6YsfYkYuD1GB+VVYng/J+PuuZ74kMBdLdZjm7MqH3RHXLS
 sTPtX9Lmgj7odInRgIVrRn9RoK4BUZY+Pcvm4k6Q9RUTwsUTgAVNWAMKpy/MmuwI/atVkX816
 C9labINfq+8rPtbpQk5n0ujMzwheC29M9n7lezNDe/NpkgD9TzdChFppnUBZrL7WQeZvtI+Db
 MeyLWqRuoTKUTdz7xkc2TbDV0C4IfPX0bCAdTqI5MQn9C1h9YXIz0KuCLY0PJaSCFIX759xlE
 uHOL05owl600TYnT1qFkQVOXe0Vj8gPL2zCLgn06KLpaiqU50/zY6MrQm29gK/lnmgPkJCkUg
 eXD2BVz40XEWDfjpUyR5dvuP1PowVORyAhek1tqRuSCu0QIgwc5et0gtPP8NdFp6zsM6Zr534
 bZbkqFuyEFkzZdtfr8ZgKADVxUtrdevG+bygiSLO1V19XekC2XkAWmvguHPFkesTcS4V7JsL3
 sOLkWIiU71aBYXHAXr6qkwzhsOQMJxez60Zh3h3fVsL9bNTu/lowW4MOi5BcT3yjHPNkNzCtd
 xAxgpJXw52DJ9+Z20LIePCmuKzaXYPTBI/kM+pIAJ51ArsxGveBZKpPnC01UQl+qDFTM348d1
 yLnunmjIQTUDUvuqTOCZSmF2EOpS4Q67F5GVCYr4U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_083724_490139_6BD0211E 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link
 TL-MR6400
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
Content-Type: multipart/mixed; boundary="===============2664119603869576142=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2664119603869576142==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=rpa4/3VacTqg+Z=-="

This is a multipart message in MIME format.

--=-=rpa4/3VacTqg+Z=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I had a look into ar71xx mach files. Find some additional comments below.

> diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds
> b/target/linux/ath79/base-files/etc/board.d/01_leds
> index 778316e450..385ac8d9ca 100755
> --- a/target/linux/ath79/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/base-files/etc/board.d/01_leds
> @@ -130,6 +130,11 @@ tplink,archer-c7-v5)
>  	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0"
> "0x10"
>  	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0"
> "0x20"
>  	;;
> +tplink,tl-mr6400-v1)
> +	ucidef_set_led_netdev "lan" "LAN" "tp-link:white:lan" "eth0"
> +	ucidef_set_led_netdev "wan" "WAN" "tp-link:white:wan" "eth1"

netdev triggers won't work for LAN and WAN. You will need to change one of =
them to ucidef_set_led_switch (have a look at other ath79 devices in 01_led=
s for reference).
Unfortunately, I can never recall which of them it is. You will know when t=
he LED is on although no cable is connected ...

> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> @@ -0,0 +1,172 @@
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
> +	model =3D "TP-Link TL-MR6400 v1";
> +
> +	aliases {
> +		led-boot =3D &led_power;
> +		led-failsafe =3D &led_power;
> +		led-running =3D &led_power;
> +		led-upgrade =3D &led_power;
> +	};
> +
> +	gpio_leds: leds {

Do you need the gpio_leds label somewhere? If not, remove it.

[...]

> +&eth0 {
> +	status =3D "okay";
> +	phy-mode =3D "mii";

Those two lines can be removed. eth0 is not disabled before, and phy-mode i=
s already set in parent DTSI.

> +	phy-handle =3D <&swphy0>;
> +
> +	mtd-mac-address =3D <&uboot 0x1fc00>;
> +	mtd-mac-address-increment =3D <1>;
> +
> +	gmac-config {
> +		device =3D <&gmac>;
> +		switch-phy-swap =3D <1>;
> +		switch-phy-addr-swap =3D <1>;
> +	};

Hmm, I do not see a phy-swap in mr6400 mach files. But if all ports are wor=
king, it might still be okay ...

> +};
> +
> +&eth1 {
> +	status =3D "okay";

Remove status, it's already set in parent dtsi.

> +	mtd-mac-address =3D <&uboot 0x1fc00>;
> +	mtd-mac-address-increment =3D <(-1)>;
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
> +
> +&gpio {
> +	lte_power {
> +		gpio-hog;
> +		gpios =3D <4 GPIO_ACTIVE_HIGH>;

Is GPIO_ACTIVE_HIGH correct here?

ar71xx mach files have:

gpio_request_one(TL_MR6400_GPIO_LTE_POWER,
			 GPIOF_OUT_INIT_LOW | GPIOF_EXPORT_DIR_FIXED | GPIOF_ACTIVE_LOW,
			 "LTE power");

> +		output-low;
> +		line-name =3D "tp-link:power:LTE";
> +	};
> +};
> diff --git a/target/linux/ath79/image/generic-tp-link.mk
> b/target/linux/ath79/image/generic-tp-link.mk
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

You need to add

SUPPORTED_DEVICES :=3D tl-mr6400

here.

> +  DEVICE_PACKAGES :=3D kmod-usb-core kmod-usb2 kmod-usb-net
> kmod-usb-net-rndis kmod-usb-serial kmod-usb-serial-option adb

You can remove the following, as those are inherited by the others:
kmod-usb-core kmod-usb-net kmod-usb-serial

Best

Adrian

--=-=rpa4/3VacTqg+Z=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2klioACgkQoNyKO7qx
AnD33BAAjOLaHetnwiOckkOHSu5aqppwxHaUO9fpqE922cxm1esZ4lCttmUidF6F
iwPbGy6659/Ucnpi7JCAe/ln/UKZA5vz0K6kiCx3qN4swlRt22o5Qw8qvHVsWG1+
0pwaZu5v4WnmFE/e9F1CcXrjZcXRw6dOVHLoqOKfHO6/ldjVhJfGl0yFqbMNoCfp
FLfjKhHyOx5wVTAilxYB0AvMMpebubkazmAOPRYGeE0QUexuqUA2/BLb/3f59G9F
WaZnkzaUXvNXYj8DE0LQqOZF0TtMyrVh6U/zeJs38PWBoDI5W37mItjCsASCUzXu
9sa4mtnrwgDVwocZNV4FyC5V+xi00sfJlugL1RCEp1VJmGPhNqcROh2QbJLirh4p
Gz9fK7zdRrOpt6L/L5nsfGsgs2Sk3mduJcLHn8hMRNORnpEVZ7P36Me9MT53QIJA
CEW54eXrjxvHz+MfZFlJYlm1zWcgPhJSG4qOKdpCrGHzGF7xarhXN8dOuX2tG2C9
Ia8WQ7qnImT0d9bsTul12WlQH+71xN8zUFpLvaGqSg5EtmsKAPOw+iSaYFlenVI7
+jwQPVUKY5uUmN28dcfWBFrLmq/HIJKx3PT+Xpo2JSuPMAdtBuUETNUY/LolCOsX
DRKcRRzNoWE5p4oqSyKol2CecL3A1rcKXTPJXHflcVORhynwOeY=
=sy//
-----END PGP SIGNATURE-----


--=-=rpa4/3VacTqg+Z=-=--



--===============2664119603869576142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2664119603869576142==--


