Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616E21DFFB4
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 17:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=///PJnSAI2gHC1eSeBN0B0mxOvDENKy7Z9f+XrwIdho=; b=REXs8dH7AdgJd87gIQhNWFEyO
	n5wkoxIMW2OhBxoTL5FjsrMpCooTOi8SpR+yf++xC7LF65TiOr2ymCURHixTpJHj4nuAhbESbfbyK
	YQAXTD0wVfjgHv7xzBHfB5I6xOpfQgN1BGq3gkj8Q42FgzWyOVXDYL4HggkHUo0yHnopZBqFlpF40
	JW+XwDpe/xxwd+kpMP48RrnYlCHxAjNh46Au0W3l5O03gdlqKytGhVgmvyaWgf1wukm1tKbvK7HCF
	VAEKoSoL+JUpI69jUXeowhAy1w0+tSCKxUJu0Yp+fU2noPK4GdCa6Z0oJCUPzdRRtR15jeQvdxSYX
	lknsCw91Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcsGX-0002w7-Q5; Sun, 24 May 2020 15:10:17 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcsGJ-0001jM-GK
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 15:10:06 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <mail@adrianschmutzler.de>) id 1jcsGH-0003bM-46
 for openwrt-devel@openwrt.org; Sun, 24 May 2020 11:10:01 -0400
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M28O9-1jaw7a0toH-002U70; Sun, 24 May 2020 16:57:11 +0200
From: <mail@adrianschmutzler.de>
To: "'Heppler, J. Scott'" <shep971@centurylink.net>,
 <openwrt-devel@openwrt.org>
References: <20200507160314.GA2941@centurylink.net>
In-Reply-To: <20200507160314.GA2941@centurylink.net>
Date: Sun, 24 May 2020 16:57:10 +0200
Message-ID: <00c701d631db$9a6e3140$cf4a93c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQF05BgT8fyTrC08N9oxuawL+p1gP6l56tvQ
X-Provags-ID: V03:K1:Tp3CparPgv9TWnXufT+KnkANK9YdPDnTa5bUVF7quErjgsVoVP0
 AZKpkvf7nV0AK94Y0saQf9E1G6HfcsQNdn3Z0Sth5Rq3b2L7SNje31+kREbZd6gXeCb2KGm
 91trQgeqRT51t52/fTRSx9eteL8Ki29C4do8i/9etCAxmOMB9fGcwEWoXNFk0JxgZX0T6II
 AcN6lugJt0XWNmyfSRArg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AzA+it1nutA=:zeaXYSQfFPqWaAlkiy0s43
 6PzirJ1TJSSwNCNyH6b6ZG/XHljMuADVnB7KQsFmiVO2sDxxBjVfh6lOIDvS943ySIRYjikPx
 OOqieik3000Z8Ubl/JZ9LPEALc7WLkpRzUKSViHGZPy6wBV4wQP21Pnjc+deN3bkGLNW59t6Z
 UFChET1TaKRCjIaOp591YaxvGrQPP/f2uWYPxDgoupCkc4gS0gLT4NWaDbtcwsHsGj9/V7O1A
 ZFr6wxLWCT1JncvrQAGQhjDAKGniRdkc1wfpL9FgfV2En+uAlIrP26zzfA7b8yyFyfW0qJf8M
 VAGZlVoAB6/SGAje7QgpIHwNKqpImPhHXlNlebn37iOxs6ghW6rjJR/6jE5PveXjD6kj6Pvmd
 iCvSljTLIFI+Szgtsylg/E8eUaFbUldVRsWTiulmF76EPthLgQw2X5WbyGm8tJgJHCitbCyWI
 UudzsDBPzWK7ZDG8n/EGkXyLSUhuyIYWcuHrO+iJz2nOceFMvWHUqygaPDNGXSJt3ffb//eoA
 aqk/7wQMDppgd0UMg+bG6UnjMhB0MwvMeB+V5jxzvctkrHYGQWm/EgHcyMiYlFnbAbIxXm2ne
 NpAsJaP9ycq5QKoF1IV6sVcmi8f+uaHZ+OF1PPxn1+qMY5j47tMYL5b4LdRVw8jbwo+/DFmkE
 mUZc/U8rUct3M6M2k+1Okjkiux2Gb30ZLuFkRvtyAcnHdwV11TJERYr6lCpTwz4lWMlKa6/rV
 PhqgVDU8OWSS/cmDMR92VikCMiQ0QaHI5gSkl+QgEkQ1AdmwKG25clL0IjeDCD6JjQwllQefq
 KbgSjbChb4rS+GJlMntmQeySDnpER+7kSxb5xEK+RvqGEFt2om+xcpBsQAgA+1NZNDKDqfm
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details. Content preview:  Hi, > 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: openwrt.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_081003_848874_E0CD6201 
X-CRM114-Status: GOOD (  27.86  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
Subject: Re: [OpenWrt-Devel] [PATCH v4] ramips: add support for TRENDnet
 TEW-810DR
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
Content-Type: multipart/mixed; boundary="===============1189823279968074527=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1189823279968074527==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=MzmF0xOqtPVwKn=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=MzmF0xOqtPVwKn=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Heppler, J. Scott
> Sent: Donnerstag, 7. Mai 2020 18:03
> To: openwrt-devel@openwrt.org
> Subject: [OpenWrt-Devel] [PATCH v4] ramips: add support for TRENDnet
> TEW-810DR
>=20
> Information for reviewers:
> By report, FCCid and board photos, this device shares a Cameo manufactured
> board with the D-Link DIR-810L.  The DIR-810L dts does not enable GPIO40 =
for
> the Green Internet/Globe lan led. The TEW-810DR dts should be applicable
> to the DIR-810L and would provide improved Green Internet/Globe lan led
> configurability.  I believe that it would be efficient to test the potent=
ial DIR-
> 810L changes prior to generating a *.dtsi.  I do not have a DIR-810L to t=
est.  I
> also reverted the spi-max-frequency to <10000000> based on a forum report
> of instability.  Forum links detailing development:
> https://forum.openwrt.org/t/trendnet-tew-810dr-leds/56601
> https://forum.openwrt.org/t/trendnet-tew-810dr-mtd-partition/59676
>=20
> Changes to be committed:
> 	new file:   target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> 	modified:   target/linux/ramips/image/mt7620.mk
> 	modified:   target/linux/ramips/mt7620/base-
> files/etc/board.d/01_leds
> 	modified:   target/linux/ramips/mt7620/base-
> files/etc/board.d/02_network

These comments should be added after the body of the commit message, separa=
ted by a line containing "---", so the patchwork will cut it off automatica=
lly when the patch is added to the repository.

>=20
> Specification:
>=20
> * MediaTek MT7620A (580 Mhz)
> * 8 MB of FLASH
> * 64 MB of RAM
> * 2.4Ghz and 5.0Ghz radios functional
> * 5x 10/100 Mbps Ethernet (1 WAN and 4 LAN)
> * UART header on PCB (57600 8n1)
> * Green/Orange Power LEDs illuminating a Power-Button Lens
>   Green/Orange Internet LEDs GPIO controlled illuminating a Globe/Internet
> Lens
> * 3x button - wps, power and reset
> * U-boot bootloader
>=20
> Installation:
>=20
> The sysupgrade.bin image is reported to be OEM web flashed with an
> ncc_att_hwid appended.  ncc_att_hwid is available in the GPL Source
> download for either the TEW-810DR or DIR-810L and is located at
> source/user/wolf/cameo/ncc/hostTools.
> In Debian 10 amd64, 32bit libs are needed.  The invocation is:
> ncc_att_hwid -f tew-810-squashfs-factory.bin -a -m =E2=80=9CTEW-810DR=E2=
=80=9D -H =E2=80=9C1.0R=E2=80=9D -r
> =E2=80=9CWW=E2=80=9D -c =E2=80=9C1.0=E2=80=9D.  This may need to be alter=
ed if your hardware version is
> "1.1R".
> More information is available in the device page for TEW-810DR.  See the
> device pages for the DIR-810L and TEW-810DR for more information.  The
> image can also be reliable flashed via tftpboot as described in this Open=
Wrt
> forum
> thread:
> https://forum.openwrt.org/t/trendnet-tew-810dr-mtd-partition/59676.

I don't think a forum thread is a good source for a manual (it might be if =
you want to document discussion).

Please just add the additional information to the commit message, or add it=
 to the device Wiki page if it's too long (I prefer the former).

Please also try to structure the installation comments so they are easier t=
o read.

You are also missing a Signed-off-by for this patch.

> ---
>  .../ramips/dts/mt7620a_trendnet_tew-810dr.dts | 166
> ++++++++++++++++++
>  target/linux/ramips/image/mt7620.mk           |  10 ++
>  .../mt7620/base-files/etc/board.d/01_leds     |   3 +
>  .../mt7620/base-files/etc/board.d/02_network  |   4 +-
>  4 files changed, 182 insertions(+), 1 deletion(-)  create mode 100644
> target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
>=20
> diff --git a/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> b/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> new file mode 100644
> index 0000000000..cba646f76e
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> @@ -0,0 +1,166 @@
> +/dts-v1/;

Please add an SPDX license identifier.

> +
> +#include "mt7620a.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible =3D "trendnet,tew-810dr", "ralink,mt7620a-soc";
> +	model =3D "TRENDnet TEW-810DR";
> +
> +	aliases {
> +		led-boot =3D &led_power_green;
> +		led-failsafe =3D &led_power_green;
> +		led-running =3D &led_power_green;
> +		led-upgrade =3D &led_power_green;
> +		label-mac-device =3D &ethernet;
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys-polled";
> +		poll-interval =3D <20>;

Please try with gpio-keys instead (poll-interval can be dropped then).

> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&gpio0 1 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_RESTART>;
> +		};
> +
> +		wps {
> +			label =3D "wps";
> +			gpios =3D <&gpio0 2 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_WPS_BUTTON>;
> +		};
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_power_green: power_green {
> +			label =3D "tew-810dr:green:power";
> +			gpios =3D <&gpio0 9 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		wan {
> +			label =3D "tew-810dr:orange:wan";
> +			gpios =3D <&gpio0 12 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		lan {
> +			label =3D "tew-810dr:green:lan";
> +			gpios =3D <&gpio2 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		power_orange {
> +			label =3D "tew-810dr:orange:power";
> +			gpios =3D <&gpio0 13 GPIO_ACTIVE_HIGH>;
> +		};
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

I don't believe this cannot be increased at all.

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
> +			factory5g: partition@50000 {
> +				label =3D "factory5g";
> +				reg =3D <0x50000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@60000 {
> +				label =3D "Wolf_Config";
> +				reg =3D <0x60000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@70000 {
> +				label =3D "MyDlink";
> +				reg =3D <0x70000 0x80000>;
> +				read-only;
> +			};
> +
> +			partition@e0000 {

Still wrong.

> +				label =3D "Jffs2";
> +				reg =3D <0xf0000 0x80000>;
> +				read-only;
> +			};
> +
> +			partition@170000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x170000 0x690000>;
> +			};
> +		};
> +	};
> +};
> +
> +&state_default {
> +	gpio {
> +		groups =3D "mdio", "rgmii1", "i2c", "wled", "uartf", "ephy";

I only see i2c, uartf, phy. Any reason for the rest?

> +		function =3D "gpio";
> +	};
> +};
> +
> +&ethernet {
> +	mtd-mac-address =3D <&factory 0x28>;
> +	mediatek,portmap =3D "llllw";
> +};
> +
> +&gsw {
> +	mediatek,port4 =3D "ephy";
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +};
> +
> +&wmac {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pa_pins>;
> +
> +        ralink,mtd-eeprom =3D <&factory 0x0>;
> +	mtd-mac-address =3D <&factory 0x28>;

Please have a look at my comments on v2 again. They haven't been addressed =
or commented at all:

https://patchwork.ozlabs.org/project/openwrt/patch/20200227023902.GA31471@c=
enturylink.net/

> +};
> +
> +&pcie0 {
> +	wifi@0,0 {
> +		reg =3D <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x8000>;

see above

> +		ieee80211-freq-limit =3D <5000000 6000000>;
> +		mtd-mac-address =3D <&factory 0x28>;
> +		mtd-mac-address-increment =3D <2>;

see above

> +	};
> +};
> +
> +&gpio2 {
> +	status =3D "okay";
> +};
> diff --git a/target/linux/ramips/image/mt7620.mk
> b/target/linux/ramips/image/mt7620.mk
> index 69b9b7d7fd..74acc5ae2d 100644
> --- a/target/linux/ramips/image/mt7620.mk
> +++ b/target/linux/ramips/image/mt7620.mk
> @@ -981,6 +981,16 @@ define Device/tplink_re210-v1  endef
> TARGET_DEVICES +=3D tplink_re210-v1
>=20
> +define Device/trendnet_tew-810dr
> +  SOC :=3D mt7620a
> +  DEVICE_PACKAGES :=3D kmod-mt76x0e
> +  DEVICE_VENDOR :=3D TRENDnet
> +  DEVICE_MODEL :=3D TEW-810DR
> +  IMAGE_SIZE :=3D 6720k
> +  SUPPORTED_DEVICES +=3D tew-810dr

Drop this line.

> +endef
> +TARGET_DEVICES +=3D trendnet_tew-810dr
> +
>  define Device/vonets_var11n-300
>    SOC :=3D mt7620n
>    IMAGE_SIZE :=3D 3776k
> diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> index d332e02bbd..cfe5ed4418 100755
> --- a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> @@ -192,6 +192,9 @@ tplink,archer-mr200)
>  tplink,re200-v1)
>  	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
>  	;;
> +trendnet,tew-810dr)
> +        ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "br-lan"
> "link tx rx"

Please find the correct ucidef_set_led_switch setup instead.

Best

Adrian

> +        ;;
>  youku,yk1)
>  	set_wifi_led "$boardname:blue:air"
>  	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan"
> "switch0" "0x10"
> diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> index 8ae50b3df5..19f02be438 100755
> --- a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> @@ -22,6 +22,7 @@ ramips_setup_interfaces()
>  	planex,db-wrt01|\
>  	planex,mzk-750dhp|\
>  	sanlinking,d240|\
> +	trendnet,tew-810dr|\
>  	youku,yk1|\
>  	zbtlink,zbt-ape522ii|\
>  	zbtlink,zbt-we826-16m|\
> @@ -261,7 +262,8 @@ ramips_setup_macs()
>  	alfa-network,ac1200rm|\
>  	dlink,dir-810l|\
>  	phicomm,psg1218a|\
> -	phicomm,psg1218b)
> +	phicomm,psg1218b|\
> +	trendnet,tew-810dr)
>  		wan_mac=3D$(macaddr_add "$(mtd_get_mac_binary factory
> 0x28)" 1)
>  		;;
>  	alfa-network,r36m-e4g|\
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=MzmF0xOqtPVwKn=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7Ki0MACgkQoNyKO7qx
AnBupQ//bWztjrutIY+PgiGamd9/yn/PFiaDOMuiabzbuEVnBBqCyheOb6CgdSYB
ffJ2Mu0X1P6qZwU/dQ+PF3ffhMC/Hz19r/q9rCIq8uMBFY3pzxcV3/ZFghO4+CCr
hbWvG1sZPy2EtORJvf01rYtQKFfqplQl8coJn6Z//XrSl+uDVofSUVZhqctQwbDW
3fGQqIokYBRF4KntS/Ndaol5dalqOII95kdHcwX1vafRhaidrgHy179DmkjE6JHa
R+4Vs4SMkq1nlp/XMtfNkF4pf1eyPSLe5sRSXe0ljf6Qj136szOz1053oGSHdwHy
WGgPbb6h1zFHcgY7fW4dd7i4LX57gGHg6PqY7PiVO1T5DotYx/mnH1AAFC8R8ZNQ
7eo4ePLRCikeD0hjgauuYZ+n8bRGTTaZRtzar7384cB7Lp9SAQYqpOWMpjdZKKHP
00MtnxHoxljeL+f+ZT19B0UAYFOHcgTB3DOnk8z12lSK+CCZOhzOSm2pWYfhg3M5
uIfS0rLNceTjLPpcImL6kHylFWfgguWrGhHhbCVDwl5lGUKF4v1jxJzhI2O8U6i1
yccE3Xs/uC+2+9CSA7UyhZ08EkjNOyggfGLVlYYuIvxNuyOQ6PMbRvKgikOqwelO
QwsKtgGQ7ZN6/VkLtAyqeh3lMEkJj8c3hXpous0jfe0FtDMKHRk=
=mVdS
-----END PGP SIGNATURE-----


--=-=MzmF0xOqtPVwKn=-=--



--===============1189823279968074527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1189823279968074527==--


