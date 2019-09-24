Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C98EBC6D0
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 13:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rgHbyGO3AroNnYfmoXEyWJ8N/SfKz2thq31xgJ4YejQ=; b=BN48kkrmarCx5cUeZnuFSDs/N
	Zg1KjXvtAeiZlBjAIL3ZtwnrFbi8ZebK673yYGTa+EOME0LEyl6YFi28OjRU4Zdsr3EPX7+7U9pWl
	epyQQ08XLkHB2NI5xU58qghGJvDZUuqnEoKvTBqhxmQ7QJBJJeLHH4RljC1TX+Sb5g8WpX276+pg0
	RML62Q+dlfhj9WlCOAdnGPlybblyIq3NaXXQqw5uBuX3ndgKHquEJIFqV6sJQfoISgaFkAThdrj6B
	LRjJ4XmUEPFpiK0ed8NsBC0IM0O+uPb8t/F02w3Q3vrTwZ2OUbQ7mmhg+7HvFVdhwJHBehPEGG9Wq
	f0R3/18Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCj0B-00089k-2s; Tue, 24 Sep 2019 11:29:03 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCizZ-000892-Iw
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 11:28:28 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MDQmW-1iN8ae0OFa-00AZyL; Tue, 24
 Sep 2019 13:28:14 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Kristian Evensen'" <kristian.evensen@gmail.com>,
 <openwrt-devel@lists.openwrt.org>, <dev@kresin.me>, <monkeh@monkeh.net>,
 <musashino.open@gmail.com>, <ynezz@true.cz>
References: <20190924104712.19812-1-kristian.evensen@gmail.com>
 <20190924104712.19812-3-kristian.evensen@gmail.com>
In-Reply-To: <20190924104712.19812-3-kristian.evensen@gmail.com>
Date: Tue, 24 Sep 2019 13:28:13 +0200
Message-ID: <00b801d572cb$2755f550$7601dff0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQE48aeUHmlhzGInI3E9EeTxZNIyBQFrV36IqGhR1xA=
Content-Language: de
X-Provags-ID: V03:K1:OTX9RLooOHV1Aiarn275QT5ojdMwvS5ndta0d85NxB0aT+/MBhi
 98gffnoAPc3xn29OT9uMUM72ePPsfOnF03HWv+6xSYPpsmGuF7i78SbTgIu+2RDDnAjtqkH
 BKHSjtiqN8Txj5t/zg6TAXZbavG875QUj2AbOEmlsYsQ0yQTNpoQACER4Tt9HIsNDLlHu5N
 U1e6HbpFy7pjQxaOvkSUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8HkFjv0gR0k=:mdujGe28Iip5lqu9uKwUgS
 PcvnvtGF2C3IMyu6jiQ/6nHgWU9Hk4/0CxSXB6lPA6wOmSt68/BnTxwtU4Zi3lpxrb0Yl4rZ7
 QHNwtsi+fEMQn+jcOEpQA3OUdeEJY0HG1NLY7oAO8byARMnabUyZGoP2ZN5vj0S25eLP8apvF
 /PPdQjIr1dkNMDCJln0cbmnexuprPzjGAJfdstZhuxxRF7EUg8v6qt9GeF+0I1RspuUMrtLCm
 kgA9Ycq97gXzJDytQf7SyzB+8tAeYhuIu/i7uzAAfDgUPXTYJP3E5yYMpxNQFBJ9GAah507/1
 PU4HphTFIzKs+7dTWeUJMT7bjsYtH769ZJrT044PgzIe82xlwE6h3Z40r0wVaJJypsXMxa3sU
 KP9wmeCpbmwOtAOGEKjqmxso1yKTtdGl0mxTgi7Y2s/LfI8wGtNoHxqtyKvhLOw+z6noKB0t9
 z9IvxRKyT2fMfra0eihV5G+oyLs5WrD5ZzgCDXWJLq65AMekSnctocwcOsMcdOHJieNrtqjU/
 E74yybTGbJanMye7ocUub/iIPQK9gXKQMFQBkK6KuSfXUbON6/ryFe+wCocw4m5LuFasmZHuc
 dx53owRjiPSjXeY3hDIfHKGBaDUzZOM0x3WgGSVRrIMPN/HSGfNhpjB41/GJkrTmU94rHYjqB
 Xh7CRhz/c+1vYqXLN1ddukmUJY1sMnaGDzL5yNa/IEuT8mTTX65AJ1zF35+H4QCNQLHcq3+m6
 0Pw9G6YptAVszrd6zTjupy4SoSLYS2BUA7VsuSCm5VD3BsvaOPZ1L2pKwntcQ1EaPwbS9JhvG
 e/JB8o8vce8VEHMwaG+24SrLEV2PpfIJHbFZrcDxgHEFT6zkTIA3O8R708GL1m3elXxrDKBBS
 OXyl7inRyPccGSvcQBWNHJaI4dbYs7176ZW3/7Ubs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_042826_441402_C521AA99 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ramips: Add support for ZBT
 WE1026-H
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
Content-Type: multipart/mixed; boundary="===============1333414259928725425=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1333414259928725425==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=WS0/5m/JextOjs=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=WS0/5m/JextOjs=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

first of all:
Naming scheme for ZBT devices is mixed in ramips. Some include the ZBT in m=
odel name, some don't. In your case, this means the following options:
zbtlink,zbt-we1026-h    corresponding to model    ZBT-WE1026-H
or
zbtlink,we1026-h    corresponding to model    WE1026-H

I do not know what's correct here (if there is right/wrong for this at all)=
, but just want you to decide about this intentionally. Even if the existin=
g WE1026-5G proves to have the wrong scheme then, I'd use the correct one f=
or the WE1026-H.

Find some comments below.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Kristian Evensen
> Sent: Dienstag, 24. September 2019 12:47
> To: openwrt-devel@lists.openwrt.org; dev@kresin.me; monkeh@monkeh.net; mu=
sashino.open@gmail.com; ynezz@true.cz
> Cc: Kristian Evensen <kristian.evensen@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH v2 2/2] ramips: Add support for ZBT WE102=
6-H
>=20
> This commit adds support for the ZBT WE1026-H, an outdoor AP with
> support for adding an internal LTE modem. The detailed specs are:
>=20
> * CPU: MT7620A
> * 2x 10/100Mbps Ethernet (LAN port has passive PoE support).
> * 16/32 MB Flash.
> * 128/256 MB RAM.
> * 1x USB 2.0 port.
> * 1x mini-PCIe slot (only USB2.0 bus).
> * 1x SIM slot (standard size).
> * 1x 2.4Ghz WIFI (rt2800).
> * 1x button.
> * 6x LEDS (4 GPIO-controlled).
> * 1x micro-SD reader.
>=20
> The following have been tested and working:
> - Ethernet switch
> - Wifi
> - Mini-PCIe slot + SIM slot
> - USB port
> - microSD slot
> - sysupgrade
> - reset button
>=20
> Installation and recovery:
>=20
> In order to install OpenWRT the first time or ito recover the router,
> you can use the web-based recovery system. Keep the reset button pressed
> during boot and access 192.168.1.1 in your browser when your machine
> obtains an IP address. Upload the firmware to start the recovery
> process.
>=20
> Notes:
>=20
> * The LED labeled "USB" is used as the power LED. When binding this LED
> to a usbport, the LED is switched on all the time due to the presence of
> an internal hub. Thus, it does not really signal any USB-information.
>=20
> * I only have the 32MB version and have only added support for this
> device. However, the files are structured so that adding support for the
> 16MB version should be easy.
>=20
> * Only the LAN port is accessible from the outside of the casing and LEDs
> are not visible.
>=20
> v1->v2:
> * Rebased on top of master.
> * Read correct WAN address from flash (thanks Adrian Schmutzler).
>=20
> Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
> ---
>  .../ramips/base-files/etc/board.d/01_leds     |  5 +++
>  .../ramips/base-files/etc/board.d/02_network  |  6 ++-
>  .../dts/mt7620a_zbtlink_we1026-h-32m.dts      | 14 +++++++
>  .../ramips/dts/mt7620a_zbtlink_we1026-h.dtsi  | 42 +++++++++++++++++++
>  target/linux/ramips/image/mt7620.mk           | 12 ++++++
>  5 files changed, 78 insertions(+), 1 deletion(-)
>  create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.=
dts
>  create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi
>=20
> diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/=
linux/ramips/base-files/etc/board.d/01_leds
> index 46202b4117..3e12c2a947 100755
> --- a/target/linux/ramips/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/base-files/etc/board.d/01_leds
> @@ -461,6 +461,11 @@ zbtlink,zbt-we826-16m|\
>  zbtlink,zbt-we826-32m)
>  	set_wifi_led "zbt-we826:green:wifi"
>  	;;
> +zbtlink,we1026-h-32m)

If you keep this name (without zbt), then you should sort it appropriately,=
 i.e. "we" before "zbt" ...

> +	set_wifi_led "we1026-h:green:wifi"
> +	ucidef_set_led_switch "lan" "lan" "we1026-h:green:lan" "switch0" "0x8"
> +	ucidef_set_led_switch "wan" "wan" "we1026-h:green:wan" "switch0" "0x10"
> +	;;
>  zbtlink,zbt-we1226)
>  	set_wifi_led "$boardname:green:wlan"
>  	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "=
0x01"
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/targ=
et/linux/ramips/base-files/etc/board.d/02_network
> index 63644331e5..d94cd5fa98 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -272,7 +272,8 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5@eth0"
>  		;;
> -	buffalo,wcr-1166ds)
> +	buffalo,wcr-1166ds|\
> +	zbtlink,we1026-h-32m)
>  		ucidef_add_switch "switch0" \
>  			"3:lan" "4:wan" "6@eth0"
>  		;;
> @@ -721,6 +722,9 @@ ramips_setup_macs()
>  		wan_mac=3D$(mtd_get_mac_binary factory 0xe006)
>  		label_mac=3D$(cat /sys/class/ieee80211/phy0/macaddress)
>  		;;
> +	zbtlink,we1026-h-32m)
> +		wan_mac=3D$(mtd_get_mac_binary factory 0x2e)
> +		;;

Depending on how the label MAC address discussion below ends, you might mer=
ge this with the node for cudy,wr1000.

>  	*)
>  		wan_mac=3D$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
>  		;;
> diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.dts b/t=
arget/linux/ramips/dts/mt7620a_zbtlink_we1026-h-
> 32m.dts
> new file mode 100644
> index 0000000000..ca62ccfc84
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.dts
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7620a_zbtlink_we1026-h.dtsi"
> +
> +/ {
> +	compatible =3D "zbtlink,we1026-h-32m", "zbtlink,we1026-h",
> +		     "zbtlink,we1026","ralink,mt7620a-soc";
> +	model =3D "ZBT WE1026-H (32M)";
> +};
> +
> +&firmware {
> +	reg =3D <0x50000 0x1fb0000>;
> +};
> diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi b/targ=
et/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi
> new file mode 100644
> index 0000000000..fed79c2809
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7620a_zbtlink_we1026.dtsi"
> +
> +/ {
> +	compatible =3D "zbtlink,we1026-h", "zbtlink,we1026",
> +		     "ralink,mt7620a-soc";
> +
> +	aliases {
> +		led-boot =3D &led_power;
> +		led-failsafe =3D &led_power;
> +		led-running =3D &led_power;
> +		led-upgrade =3D &led_power;
> +		label-mac-device =3D &wmac;

This won't work, as wmac uses ralink,mtd-eeprom without mtd-mac-address (so=
 you do not have access to the mac address via /proc/device-tree).

Current policy is to keep label-mac-device here anyway (for future use), bu=
t to include a line like the following in the mac setup section of 02_netwo=
rk to actually have label MAC address set:
label_mac=3D$(cat /sys/class/ieee80211/phy0/macaddress)
You have to evaluate whether phy0 or phy1 is correct for your device.
If phy0 is, you can just add the device(s) to the cudy,wr1000 case.

If you have access to the WE1026-5G, too, the cleanest way would be to chec=
k label MAC address on it and then add label MAC address for all WE1026-* i=
n 02_network, and move the label_mac_device alias to the parent DTSI where =
wmac is set up.

> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_power: usb {
> +			label =3D "we1026-h:green:usb";
> +			gpios =3D <&gpio2 2 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan {
> +			label =3D "we1026-h:green:lan";
> +			gpios =3D <&gpio2 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wan {
> +			label =3D "we1026-h:green:wan";
> +			gpios =3D <&gpio2 4 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wifi {
> +			label =3D "we1026-h:green:wifi";
> +			gpios =3D <&gpio3 0 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +

Remove this empty line.

> +};
> diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/im=
age/mt7620.mk
> index 320d4abd1f..3011e08af7 100644
> --- a/target/linux/ramips/image/mt7620.mk
> +++ b/target/linux/ramips/image/mt7620.mk
> @@ -973,6 +973,18 @@ define Device/zbtlink_we1026-5g-16m
>  endef
>  TARGET_DEVICES +=3D zbtlink_we1026-5g-16m
>=20
> +define Device/zbtlink_we1026-h-32m
> +  MTK_SOC :=3D mt7620a
> +  DTS :=3D WE1026-H-32M

This line (DTS) can be dropped. DTS name is constructed automatically from =
node name and mtk_soc ...

> +  IMAGE_SIZE :=3D 32448k
> +  DEVICE_VENDOR :=3D Zbtlink
> +  DEVICE_MODEL :=3D ZBT-WE1026-H

If you choose that name, then you have to use zbtlink_zbt-we1026-h-32m.
Otherwise, put "WE1026-H" here.

Best

Adrian

> +  DEVICE_VARIANT :=3D 32M
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ohci kmod-sdhci-mt7620 \
> +		     kmod-ledtrig-netdev
> +endef
> +TARGET_DEVICES +=3D zbtlink_we1026-h-32m
> +
>  define Device/zbtlink_zbt-ape522ii
>    MTK_SOC :=3D mt7620a
>    IMAGE_SIZE :=3D 15872k
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=WS0/5m/JextOjs=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2J/ckACgkQoNyKO7qx
AnBZXA/+LNvVVzfaIuEizIfpTIUZvt08LB8FOJvxaM9nZTFfDZY+yYxMPKiF9rTB
pOueCNs+nF5HH+kQwZ8/uPbzN8yAHeEVMYzIusb01g9Swi8qk13cTIiLHmmYjqvp
NgGOofKYH5z9syYEGBAA8ZDvRHK36wRr5iU14T41x+0dMkXRVdY996WtafOXMZqt
FkHWJ7qtZvnSAOtiPzul591zNkG9KlTWZrj3CNGbH6boaNiHSwS+QCCIQwwqCtQm
wLI6PneIDnC1yHzgfi0cE3IvZXUiASBcgekyK/zDbcOvmbWJS2f22vRL3jaZosnk
AsykNMAD7wGOgmTs4w26mOQqf+145xi7yUuRpiWlvvOFsLq6wd+nLTU5JNxXA82y
3nRfuJIfdVsDSxlZGo96MVrUJLSEyS+VFL1PBbUPhqjoMS32EZsCE86fmKP/36AM
/+tuK6Ro9ym4AbfT2Dl5G7s6q8/LuCBRS+waX8+Do7rghfwa2FHH9tQND1aoYyCl
imQXKE3SgZSwi+FuEQ8OuXeTHD7zXiVsCYneCwytZF+GEjzsr6XDeLGpnYFPXylG
6mh/YGj3AgXSl2cXVkdGR9fGPSjylOISdG9XJgq5Ht6nD8kAnVViHNYxEE4qGLaJ
3nl71RTdRREcTz34IdrcI9xwiwV7EH53R00wDSXnD1qAl8Hx2zo=
=fHIA
-----END PGP SIGNATURE-----


--=-=WS0/5m/JextOjs=-=--



--===============1333414259928725425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1333414259928725425==--


