Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 206A4964B0
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 17:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sgwxqt3rlrIEVZ7c/mSobUl8a9tHBY0ALbtgJSO9y6M=; b=q6vMmIyS8uOLYWkd3bkDlIuor
	8+w7e5NHRXot89uj8/8yPfJtWynKOGjNEkc5gRi0bz5sa7xgY7B0f89jSOsVU+R44iFAkps5LWn2l
	BMHcFwGcuabL/5A3jKEeF1dQRIgzjvLak3LVomgkhrCZqnPFaf3EWMiyQxOyOqXpi4rJVl62NM+bW
	q8bXFyaxW4B9zdXCR+ENqdUxM9sFFNg+BrAxd1xJu7+iCG+ibFqiMVJncrY+fVGdC/OA2RMvvo3Z5
	LIK+uyYI2ieKmV7dYtESg9Pe2P2kkthj4FTVg6xKTky549fi9A0MVY2+ElIfWJT6pkpfEry58av0G
	u/JB1Zxeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06Dg-0003VA-7j; Tue, 20 Aug 2019 15:38:48 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06DX-0003Un-Ep
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 15:38:41 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M4b5s-1hzYFV2ico-001eLR; Tue, 20 Aug 2019 17:38:31 +0200
From: <mail@adrianschmutzler.de>
To: "'Yousong Zhou'" <yszhou4tech@gmail.com>,
	<john@phrozen.org>
References: <20190820135159.15632-1-yszhou4tech@gmail.com>
In-Reply-To: <20190820135159.15632-1-yszhou4tech@gmail.com>
Date: Tue, 20 Aug 2019 17:38:30 +0200
Message-ID: <000201d5576d$520b4620$f621d260$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJg86Vi2Iww5m93bzeKrIxye1ijpqXs8VeA
Content-Language: de
X-Provags-ID: V03:K1:7qJXqm+jvR2C2UhxZB9h8uLH9Qhlf5ySR+kKOBNQzY7oRG9p6YQ
 rkjypKvBjD5R0OL4sSAZMZ02kxB/WqAPAma05DnT3ROIlMZ3iRUByjhTJeVnSkD8Whctvvm
 Zps1+o4uiuc8cndsbaHjRVu9lZnIgXnO0gySnJx/FPXH8CKSu7zurfp4eC9TIAM3iGxmqr+
 fm/KkNrNTqBm4QR363Sng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:S3C7EUQsdaA=:BkYXc4JxcWWpKRPLAMSfkP
 rSGPwbh21SSbTGZXrIuQLpdp/HHno4ZkK6EHEqi/oc6eioeqNs1zkrZ4H9UMxPNexWYB2csJ5
 m3ooC0aqZ08yn+ez0WkYgi9X8JQJIGeePSVLU7lXAb6pVkQVoE/2/IULqJbEhhKOtHmlThmM7
 evbyTX/wBJ/f+CoidlsadhFeM8BdYnuNg5k+A5sACy4S5sF9FEEOugwuINdfW3aFQFUIIjQxk
 VJ1M0lxVi+BGJRuSD7/NH6uK25oilzNaCZq5PtayYMGAXtCgAnGNmlG30nKpIKU7RhUR3ucrX
 5LpzlKYu6ZUhzlixnIIfEB0ECm7X23L2Lbb+gkCx/rf9X3rNwtgf9FVX6kZweGZ6c5fXeUsHN
 riM7p6uBblGSCvbsZmsvmOwREElgZlHdyIbNotx6JVNL30ZSiYmA8eZd4Xm1npuufaVq4VN8v
 b8X5nYTPYshHDvDk+dgnmshwqXnzo9zNTmn5PGVpompJaQwwz8FJII2PAZkn79KkwyBI6xYzg
 q2HJBshABcOzUnhxFViLm8DVdcPRuLynuLNsBT0ZA4NXEP/VDX92gnG63ILOovf+QFNqBrIs2
 XVYm37Zv2zkmvGfm17TMY3yXzNeNKMQObX4u/yKdest9GHMPFdTSIjGpUvrpXDOBOWHn76822
 sG725gFyK/Rnd0TGFFNy0BrMFSjz+USbVSdxR55EeoFdue1FvIGr3M0oT6y6MXGZYUeY+BGFk
 oEnluXhIj9As7NoqguDK8wdE2c1WXK3tHG8ZrLZOL8Up4erEpDPy23fQg8A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_083839_794992_415B5139 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound
 Networks Zodiac GX
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
Cc: openwrt-devel@lists.openwrt.org, paul@northboundnetworks.com
Content-Type: multipart/mixed; boundary="===============7539792578371479135=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7539792578371479135==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=awKZC5ydJsA+FZ=-="

This is a multipart message in MIME format.

--=-=awKZC5ydJsA+FZ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Yousong Zhou
> Sent: Dienstag, 20. August 2019 15:52
> To: john@phrozen.org
> Cc: Yousong Zhou <yszhou4tech@gmail.com>; openwrt-
> devel@lists.openwrt.org; paul@northboundnetworks.com
> Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound
> Networks Zodiac GX
>=20
> Hardware spec
>=20
>  - MT7621A dual-core 880MHz
>  - 16MB Flash
>  - 256MB RAM
>  - 5 GbE ports
>=20
> Vendor device page: https://northboundnetworks.com/products/zodiac-gx
>=20
> Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
> ---
>  .../ramips/base-files/etc/board.d/02_network  |  1 +
>  .../dts/mt7621_northbound_zodiac-gx.dts       | 97 +++++++++++++++++++
>  target/linux/ramips/image/mt7621.mk           |  9 ++
>  3 files changed, 107 insertions(+)
>  create mode 100644 target/linux/ramips/dts/mt7621_northbound_zodiac-
> gx.dts
>=20
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> b/target/linux/ramips/base-files/etc/board.d/02_network
> index c0de9d4e50..2e3e5fbba7 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -392,6 +392,7 @@ ramips_setup_interfaces()
>  			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
>  		;;
>  	linksys,re6500)

should be "|\" instead of ")" here?

> +	northbound,zodiac-gx)
>  		ucidef_add_switch "switch0" \
>  			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "6@eth0"
>  		;;

Above you say "5 ports", these are only four ...?

> diff --git a/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> new file mode 100644
> index 0000000000..51f2298d06
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
> @@ -0,0 +1,97 @@
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible =3D "northbound,zodiac-gx", "mediatek,mt7621-soc";
> +	model =3D "Zodiac GX";

Maybe include "Northbound" here, too.

> +
> +	aliases {
> +		led-boot =3D &led_status;
> +		led-failsafe =3D &led_status;
> +		led-running =3D &led_status;
> +		led-upgrade =3D &led_status;
> +	};
> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,57600";
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_status: status {
> +			label =3D "zodiac:green:status";
> +			gpios =3D <&gpio0 15 1>;
> +		};
> +	};
> +
> +	gpio-keys-polled {
> +		compatible =3D "gpio-keys-polled";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		poll-interval =3D <20>;

Maybe try "gpio-keys" here, or is there a reason for the polled keys?

> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&gpio0 18 1>;
> +			linux,code =3D <KEY_RESTART>;
> +		};
> +	};
> +};
> +
> +&spi0 {
> +	status =3D "okay";
> +
> +	m25p80@0 {
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <10000000>;

Maybe try to increase frequency here.

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
> +				label =3D "u-boot-env";
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
> +&ethernet {
> +	mtd-mac-address =3D <&factory 0xe000>;

If this really is a five port device, it would be nice to check for a WAN M=
AC address in 0xe006 and then read it from flash in 02_network (there shoul=
d a node for that already).

> +};
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group =3D "wdt", "rgmii2", "jtag", "mdio";
> +			ralink,function =3D "gpio";
> +		};
> +	};
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index d32feb7eab..e52b1eba19 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -464,6 +464,15 @@ define Device/netis_wf-2881  endef
> TARGET_DEVICES +=3D netis_wf-2881
>=20
> +define Device/northbound_zodiac-gx
> +  MTK_SOC :=3D mt7621
> +  IMAGE_SIZE :=3D 16064k
> +  DEVICE_VENDOR :=3D Northbound Networks
> +  DEVICE_MODEL :=3D Zodiac GX
> +  SUPPORTED_DEVICES +=3D zodiac-gx

SUPPORTED_DEVICES can be dropped.

Best

Adrian

> +endef
> +TARGET_DEVICES +=3D northbound_zodiac-gx
> +
>  define Device/phicomm_k2p
>    MTK_SOC :=3D mt7621
>    IMAGE_SIZE :=3D 15744k
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=awKZC5ydJsA+FZ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1cE/IACgkQoNyKO7qx
AnCy9g//cq6ZdZ6lt1fzJHJ9PuIDlVCR1CpgGXd8zmTupCNA8LM4BJHrt2rb5IYd
mOCl+F2RZQGz8lmvULKhCSrHeDd8CxI/3TTFMS/sgX6+dro8/pOj9OSnbBM9HSap
ZNYUb1pheZVn22LIMZpYS2hAqhVLaDerNLIzfX6BJKr6dQZADaXRr+OHuNDi7LFH
XKhvDGHduNOtH6RrqFFEALcdskp+SEu1cfEaEdMuYg59klvfhvL85ivZldi8PJKM
FAVbdJAs5R30qRGN3JSmuyPCx72rZgExtz7q+RR+c5wbclFXpCZ5q/SGd4gb9rhK
rH0qqw2ZVk/zbH9HznWqT0ECnHWNYYqwd+fyNng1qiHP7z0o1p1Bqa9wN0iAnc6h
kJtBALjKuIl1H+5T6/kRhWV275Delv2hP/j2MM2gO105ZPe66NC1PkQdbQEtOpwE
SujyUXTe24OKtpflSMXnggw7ZvZILPK0RCXdcsJdr8tub/uW3vq8gJjy+mfpDjlv
A0AbVDMCW2zVPNr+llXK9ay2NTVitRdnxoTCsve0WICyu2/PPwEnLeAWdC4D07TI
tZxzKvojKit2skUrt6bvNX3Dz+jECRqbpM/0pFxf0kJKuMZrZ9jb7ddaV3tM8ou2
aknsh1ih2/eDfsK/yKzWxspicmpzsvlwjsJ2artKV7pCiH1ay+Q=
=JUET
-----END PGP SIGNATURE-----


--=-=awKZC5ydJsA+FZ=-=--



--===============7539792578371479135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7539792578371479135==--


