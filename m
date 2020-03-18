Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A262189A2F
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 12:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kqtyNovwwZQBDrXEyn99Nb3561gjHEazrfTf6/72hPk=; b=DM0wjEiOrqeEoh17g/SqxHAtc
	3Rej2+6hep+R0yDaOjTtvQUOkNKe9RJhiV2Yh4ojfPfawQBZy7N8+SpMmNFKm4zJFsqf8xB04pON9
	LKvu8Y8m2bHi02rk4e0G/lZ5/+9yZ95rEgyZ23SGEshpnAah/BH0L9EShKX/9QBOsnoEJNj3WFifL
	UspSm349SQHyvKXFdpukwKyydwf7f+ebsqkwMl4l590PI2dSFWS7ginC4H/Ca/Xu/POBq2k1iSyoS
	P7lZbZwCJhbsWsjVymKDRWoubBzwR4u1UAUgWeh2rAshFGArmkJx5gGoU/3LHRJs9LPP1aj6m76R7
	DBcUfBnnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWTa-0001Vb-J0; Wed, 18 Mar 2020 11:03:06 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWTS-0001Tt-IW
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 11:03:01 +0000
Received: from desktop ([188.193.174.43]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MtwQm-1jZCYJ1Jts-00uLbg; Wed, 18 Mar 2020 12:02:51 +0100
From: <mail@adrianschmutzler.de>
To: "'Russell Senior'" <russell@personaltelco.net>,
 <openwrt-devel@lists.openwrt.org>
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <20200311010605.2818827-1-russell@personaltelco.net>
 <20200311010605.2818827-4-russell@personaltelco.net>
In-Reply-To: <20200311010605.2818827-4-russell@personaltelco.net>
Date: Wed, 18 Mar 2020 12:02:46 +0100
Message-ID: <007f01d5fd14$c4658b20$4d30a160$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQKyOHC2ZsrvrsN7wRnTorTWuhqfswIG4BymAZm8ZJSmeLHkUA==
Content-Language: de
X-Provags-ID: V03:K1:gzq+nsa0LrX1wUeOehn6xUe8DFwC0z5TPqPtXQ5N43lmtjeDWqb
 RlLH8b/NNo66ekJ5p9CjueIvfzfkITw1fx/T3gREBhiqPIDylv0NxyiikNaeBr8H4aCX1V5
 ifv9brYoSdw29YwjJQL9SuCDfBubDYtJnoFgsPDz8+27PIPZnXs5eC5CfCuYcNNbNxqisob
 DwW0Y7vGO1C5qIFEVbLBg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MhZKDXYQfvA=:kk9ymPYf3K/wrZkI7kXMXK
 hiExiMr2JvuGD0AWjc2MPXxlZlFKYvDeDG0g/DTMyEAuFGI3fUf9y/bxgVZyq43JOY30ClNPX
 nXkMpjeREVKDO4zepUmQBxBDHTSgG1GlYLNwX9U7Wa8RMqg9+z6gHhnBExPeKrNs0Zkzprjyh
 GUOHhokhBQ+wqNvOII7lYXyLd4fP3dWQOKKPP32zuP9wqHAT/g1SYCQY8Rd9bmXjF4wCHbZ0B
 omwYa5J3cwXl0Py+FL3P0ie7q0+47i53MgEo4BZOZgLMD5/wNUOXN4rfPYOxDrJCKIxzF3Mya
 Xl/dE6wX+C56koZ86k3Kp4izFOm03tSR6Aqp0ajGzCAh3BMiVjUwDsbkp44F9cNi0vIOE2m5Q
 TnKvTXJMFyglg1Itw7H7ej2eFc8eT0OR3d0LnU/TR+Oik6YtTQVLjuWREi3ox8u9cAR8Guwla
 Cwq0HYjoA5oSvWtVwo01S4qfWV59K0GpLKmRwwcaYsbNubkufWgb3l4u9VkUKs2mh7Xkqh1N+
 SPl2oHivu86ceAaZPmmj+faJ3StLOE/FFrUf1Mkcp9AGMD3MnJBB0psqEygNQphPYGXhbCAA4
 h6iNr5CWldaB7jJfXrmEOxndAgDQdomrKUCiplJgGvn3gXiYiQaHSY2JKfsrCLW/yITu3p0tg
 K20c2FdZCptK3nqdzhoUfk7+DXohqUnwyf7by+IphhPwn6BBcb1y9Gaokqn9JDyC1LbhG64RI
 J4HhQnxxwKcGBCZSYYbxI6jsoTZ/6p2DgqytYX32f0nV9GBLXg+uiN3gGYY7OkzLRJpuMRnM/
 tlQXCEybCNFhpeF4AiMgxKJYFCyme6V9kNbKoZwYfmJQhiBzGB0+kKPXDxFQkVFbibwumRB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_040258_903399_B4F865D8 
X-CRM114-Status: GOOD (  24.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v4 3/4] ath79: add support for
 ubnt_bullet-m-ar7240 variant
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
Content-Type: multipart/mixed; boundary="===============1941768401813662083=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1941768401813662083==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	boundary="=-=o5sTLJSez0eM0V=-=";
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=o5sTLJSez0eM0V=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I will merge patches 1 and 2 from this set in a minute (with minor fixes/ad=
justments).

While I still don't think the naming is solved nicely, I also still don't k=
now a better, so let's apply it way, names can still be changed later.

Some comments on this one below.

I do not see why patch 4 is necessary at all, because the variant will be i=
nherited from ubnt_xw.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Russell Senior
> Sent: Mittwoch, 11. M=C3=A4rz 2020 02:06
> To: openwrt-devel@lists.openwrt.org
> Cc: Russell Senior <russell@personaltelco.net>
> Subject: [OpenWrt-Devel] [PATCH v4 3/4] ath79: add support for
> ubnt_bullet-m-ar7240 variant
>=20
> This adds support for the Ubiquiti Bullet M (AR7240).
>=20
> Specifications:
> - AR7240 SoC @ 400 MHz
> - 32 MB RAM
> - 8 MB SPI flash
> - 1x 10/100 Mbps Ethernet, 24 Vdc PoE-in
> - External antenna
> - POWER/LAN green LEDs
> - 4x RSSI LEDs (red, orange, green, green)
> - UART (115200 8N1) on PCB
>=20
> Flashing via WebUI:
>   Upload the factory image via the stock firmware web UI.
>=20
>   Attention: airOS firmware versions >=3D 5.6 have a new bootloader with
>   an incompatible partition table!
>=20
>   Please downgrade to <=3D 5.5 _before_ flashing OpenWrt!
>   Refer to the device's Wiki page for further information.
>=20
> Flashing via TFTP:
>   Same procedure as other Ubiquiti M boards.
>=20
> - Use a pointy tool (e.g., pen cap, paper clip) and keep the reset
>   button on the device or on the PoE supply pressed
> - Power on the device via PoE (keep reset button pressed)
> - Keep pressing until LEDs flash alternatively LED1+LED3 =3D>
>   LED2+LED4 =3D> LED1+LED3, etc.
> - Release reset button
> - The device starts a TFTP server at 192.168.1.20
> - Set a static IP on the computer (e.g., 192.168.1.21/24)
> - Upload via tftp the factory image:
>   $ tftp 192.168.1.20
>   tftp> bin
>   tftp> trace
>   tftp> put openwrt-ath79-generic-xxxxx-ubnt_bullet-m-ar7240-squashfs-
> factory.bin
>=20
> Signed-off-by: Russell Senior <russell@personaltelco.net>
> ---
>  .../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 22
> +++++++++++++++++++
>  .../generic/base-files/etc/board.d/01_leds    |  1 +
>  .../generic/base-files/etc/board.d/02_network |  1 +
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  1 +
>  target/linux/ath79/image/generic-ubnt.mk      | 10 +++++++++
>  5 files changed, 35 insertions(+)
>  create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-
> ar7240.dts
>=20
> diff --git a/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
> b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
> new file mode 100644
> index 0000000000..99bf971eec
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include "ar7240.dtsi"
> +#include "ar724x_ubnt_xm.dtsi"
> +#include "ar724x_ubnt_xm_outdoor.dtsi"
> +
> +/ {
> +	compatible =3D "ubnt,bullet-m-ar7240", "ubnt,xm", "qca,ar7240";
> +	model =3D "Ubiquiti Bullet M AR7240";
> +};
> +
> +&eth0 {
> +	fixed-link {
> +		speed =3D <100>;
> +		full-duplex;
> +	};

Are you sure this is needed/correct? I haven't found something like that fo=
r any ar7240 device, and eth0 is connected via swphy4 in ar7240.dtsi ...

> +};
> +
> +&eth1 {
> +	compatible =3D "syscon", "simple-mfd";
> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index cf9dfd2b0d..98cdd6b7d4 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -245,6 +245,7 @@ tplink,tl-wr842n-v2)
>  trendnet,tew-823dru)
>  	ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet"
> "eth0"
>  	;;
> +ubnt,bullet-m-ar7240|\
>  ubnt,bullet-m-ar7241|\
>  ubnt,bullet-m-xw|\
>  ubnt,nanostation-loco-m|\
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index 24ba524c73..f0d96a1273 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -41,6 +41,7 @@ ath79_setup_interfaces()
>  	tplink,re450-v1|\
>  	tplink,re450-v2|\
>  	tplink,tl-wr902ac-v1|\
> +	ubnt,bullet-m-ar7240|\

There is/was a second occurrence of bullet-m in 02_network below, please al=
so add the new variant there.

>  	ubnt,bullet-m-ar7241|\
>  	ubnt,bullet-m-xw|\
>  	ubnt,lap-120|\
> diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware=
/10-
> ath9k-eeprom b/target/linux/ath79/generic/base-
> files/etc/hotplug.d/firmware/10-ath9k-eeprom
> index 225915ef3b..08d0e27acc 100644
> --- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-
> ath9k-eeprom
> +++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-at
> +++ h9k-eeprom
> @@ -90,6 +90,7 @@ case "$FIRMWARE" in
>  	tplink,tl-wr2543-v1|\
>  	tplink,tl-wr842n-v1|\
>  	ubnt,airrouter|\
> +	ubnt,bullet-m-ar7240|\
>  	ubnt,bullet-m-ar7241|\
>  	ubnt,nanostation-loco-m|\
>  	ubnt,nanostation-m|\
> diff --git a/target/linux/ath79/image/generic-ubnt.mk
> b/target/linux/ath79/image/generic-ubnt.mk
> index 9752319209..5808d8f424 100644
> --- a/target/linux/ath79/image/generic-ubnt.mk
> +++ b/target/linux/ath79/image/generic-ubnt.mk
> @@ -113,6 +113,16 @@ define Device/ubnt_airrouter  endef
> TARGET_DEVICES +=3D ubnt_airrouter
>=20
> +define Device/ubnt_bullet-m-ar7240
> +  $(Device/ubnt-xm)
> +  SOC :=3D ar7240
> +  DEVICE_MODEL :=3D Bullet-M
> +  DEVICE_VARIANT :=3D XM (AR7240)
> +  DEVICE_PACKAGES +=3D rssileds
> +  SUPPORTED_DEVICES +=3D bullet-m-ar7240

This should be

SUPPORTED_DEVICES +=3D bullet-m

I'm not sure whether we should enable sysupgrade from the previous undistin=
guished ar7241 ath79 version (ubnt,bullet-m) as well?

Best

Adrian

> +endef
> +TARGET_DEVICES +=3D ubnt_bullet-m-ar7240
> +
>  define Device/ubnt_bullet-m-ar7241
>    $(Device/ubnt-xm)
>    SOC :=3D ar7241
> --
> 2.25.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=o5sTLJSez0eM0V=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5x/9IACgkQoNyKO7qx
AnAObRAAt2inVGRPFaI4pJ8WpNbIDC9pt7YU0pJ+IwPCv1EsRKnLKig1Vk3US5b2
Ojk0jjAsEFENUSVWYB1DlCmEB4Py7IkzCiLA/dwZiBu5B83a/mTQ0rxIvP9XEGsQ
ArPPSWcElMFfVKQe9TRWQkQ0shBdR66MZMuY1sRcBSUfCy+hoEBHF/OiJDeX+la9
1XPFLh3oeyjJaATVIT151NKzO124Tv7e8U7pLOQeJPDv7cV80oOl+qJu/r+g7WOF
RRSSpe6Fsj5uqYimteh8IP+M/SCOvfpysx5A+EgXYC/ebLmLdP9871xssZhERkEz
9i6/8lQooL7R2IworYjMIydY8BKECOcnc2ShSKXFE+q8HjsBBXAvoZnb68FoQNZ4
NSxd+VrxRKp37zCKyfSfDQUkPEmL8XB0nGlA/kPXRknTCp3I37W+xg8vcSz3hyRk
fs7LX2AenP1FjJmSp2z9ABY2xsD0dRU0QxBZpbLhmz3lwqj+f5/SaviU0tVi51hC
7uJLwitFYKvzQBtp+oZGsU1gC0R6+iuJ8abjLICeNKoL4QNgFiLgB4xY/zWmbTna
+yKuaew79D/hw8oMnGEW4HE6WBMS7qNJBke7qR0S0K/OuBadjo4uXvENIh+Rj1Xa
6gMPUKhPIqTP6SAKs6jWyiQAgYHakpjvf4HxkI7xRWgo+Ue5XSA=
=BHp6
-----END PGP SIGNATURE-----


--=-=o5sTLJSez0eM0V=-=--



--===============1941768401813662083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1941768401813662083==--


