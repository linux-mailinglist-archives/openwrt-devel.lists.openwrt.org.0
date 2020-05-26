Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6F11E1F72
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 12:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q2JvJXKLh6mVkvfDUd1s2zrRCHQi6JEZNmntdIzBekI=; b=arOdqrjTPVppWtC1F8cuCXwli
	mmjk8lUI4Oyz49ATDcC5eZvd9ffqcPcjtA6JRKPdTOtGUU5yZTLFkk9SNkRkpinBdKo8PYpM9EqnA
	exRDRNbvOSfjNPFY1s8VUiIrJfllP0+4XtLRGsEKTsq71WpUKNkOsIpqvDi0NCTRFUIEhNjazQY1m
	Q0U7hk/QYghgaoCEG/8rfGg3+Tz3k2xQSSywjGupmMlxySHz7xD2j1mojg44dQ2yPCO3vj0mazOHF
	1tEW72hT4dBKENebHf5GNjT6vf8Z5YRZwftmFMNwKXnMLF3H4EXS+796dPqOJWDd+LlfILln8K/j2
	ZP1MkGcAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWaD-0003lY-1A; Tue, 26 May 2020 10:13:17 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWa5-0003kH-Dd
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 10:13:11 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mail@adrianschmutzler.de>) id 1jdWa1-0002ZW-IY
 for openwrt-devel@openwrt.org; Tue, 26 May 2020 06:13:06 -0400
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M9FSx-1jhewC2adb-006L5X; Tue, 26 May 2020 11:31:51 +0200
From: <mail@adrianschmutzler.de>
To: "'Heppler, J. Scott'" <shep971@centurylink.net>,
 <openwrt-devel@openwrt.org>
References: <20200526012440.GA48972@centurylink.net>
In-Reply-To: <20200526012440.GA48972@centurylink.net>
Date: Tue, 26 May 2020 11:31:50 +0200
Message-ID: <006b01d63340$7caacc20$76006460$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQCkDmulDKkk7Nt+QdGRWiUFqhBuUKseYFvA
Content-Language: de
X-Provags-ID: V03:K1:sW0LpqKMX8acHvzqyTc7AfIzMzUk3w1wxLdmjL75MobV4LdUNJx
 V2CmcColX0LYQcKAFsD8J3bXAr2+apyMFAJNo5SyPi1XcOZ7n7tGXQAhO3/hRVqHHrxWyOW
 /sIx/xnrZ9acRUSbb1O0/ZVjczuRPYtCSOIVp+rhlw9NLj7FSnW3MHczaCa7c/IKzKi8pv6
 jauC3OGzHZauPCH3SAuqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Nz4YI9PCIog=:/6D8+jMovPOIObZTSeXBm6
 +mCgGwnPVCOuTLBwAulsGwOkLnZRuRpDiC1twqkSi2cy3RTYZmkyfudCNa6IEUaYmsZlMqpdQ
 GTzbjHdiE8MI13g7Uw5hmJitOCIhHT2mfJydlxvBNJYZu5h8uNklCv88Q5JFTPyzPRLCvbBhO
 y6op+7iwkRMV8ReTI8J8sqkW7E8aR7LVbDSJAKM2gs/eE+wxENRDpJswxoUg77wPGDBeM9WM6
 vxzLzFlbMVZNJdQ3Jbhlv9QP8ZmKJI2hzGsgSs9adBo+PpFav9JQ/HASdBdnCmi5j4KgRTcbW
 +qF9CRFrMVWR10P7tIN4vO0TfWByGb4Vz5TEWoNLDLY6Cc9H3rQFV2W0DrKCI20E1Db7OPMP6
 TAPL36t9VAInFdI7OV7w4m6QjA27yhWrW6ufTIeYllZFotTwyYdxlKdVPVHiSMpWyYabWxNhi
 NThKpI/CEW2QrbQ4sASlMqH81ghfH+16LgdYDq7uDSTX80glpo/YlDopDEFvv4V23wAaUnwhR
 +j6PHYQ9NJ1UucV0hJkI7hYSAtpgxOYXFI9ES/2I7x7GMjz6rUpbeHQUgtCyxOLw4ITqO1HCm
 rgOQCb+pwEWbtV7mlpgIS+j5LypQhMFKyPTll6Hw2/dU+yLeSJ04yDnXcuMK3t8gHM9nxjDqX
 xhiFhUO0ZuK1EyJhygiieRbwWeWkT09RpZULPDEykY3gQV3YUeg1F/ZcE2H/UKEM0NtmGu43L
 tDL+I61v7fx9P159Ye6vMIm2qARx3sDlOssta2tkn1ZZMSibA5BSN2MA8m58m55HsRJUGzuPM
 UXZsBl+ZKP0rOEVoVeNGtDnSOhihqEQscVJMW3uD5iGU5YcsG2dcRV9X+2AUFK69hEHefnZ
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details. Content preview:  > 
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
X-CRM114-CacheID: sfid-20200526_031309_759869_D958B33F 
X-CRM114-Status: GOOD (  26.58  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v7] ramips: add support for TRENDnet
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
Content-Type: multipart/mixed; boundary="===============7590943583878521098=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7590943583878521098==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=cOmDvXJh/pPhNR=-="

This is a multipart message in MIME format.

--=-=cOmDvXJh/pPhNR=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Heppler, J. Scott
> Sent: Dienstag, 26. Mai 2020 03:25
> To: openwrt-devel@openwrt.org
> Subject: [OpenWrt-Devel] [PATCH v7] ramips: add support for TRENDnet
> TEW-810DR
>=20
> * MediaTek MT7620A (580 Mhz)
> * 8 MB of FLASH * 64 MB of RAM
> * 2.4Ghz and 5.0Ghz radios both now functional

Drop the "both now functional"

> * 5x 10/100 Mbps Ethernet (1 WAN and 4 LAN)
> * UART header on PCB (57600 8n1)
> * Green/Orange Power LEDs illuminating a Power-Button Lens
>    Green/Orange Internet LEDs GPIO controlled illuminating a Globe/Intern=
et
> Lens
> * 3x button - wps, power and reset
> * U-boot bootloader

I'd still like to know whether there are valid MAC addresses in other flash=
 locations, i.e. 0x4, 0x8004, 0x2e. The WiFi MAC addresses should only be s=
et up from a separate address if absolutely necessary, and I'm not convince=
d that's necessary yet.
I haven't found any information about that on a quick look into my mail his=
tory, and the fact that you just ignored it for your newer patches also doe=
sn't help.
Please provide that information, and if possible also the MAC address assig=
nment (lan,wan,2g,5g) on vendor OS and on a device label. If it's easier fo=
r you, you may also just send me a dump of the factory partition to my priv=
ate address.

Despite, while you have dropped lan LED now and added a wan LED, you still =
rely on ucidef_set_led_netdev instead of ucidef_set_led_switch. Please use =
the latter if you deal with ports on a switch.
You can also drop the "link tx rx" as this is default. Please support both =
LEDs, not just lan _or_ wan.

Finally, please note that I don't care about whether this matches any other=
 device's definition. It should be correct for the device at hand, and if t=
he other device deviates, then please either fix that one as well or just i=
gnore it. But making support worse just for consistency with an old support=
 isn't desirable IMO.

Best

Adrian

>=20
> Installation:
>=20
> The sysupgrade.bin image is reported to be OEM web flashed with an
> ncc_att_hwid appended.  ncc_att_hwid is a 32bit binary in the GPL Source
> download for either the TEW-810DR or DIR-810L and is located at
> source/user/wolf/cameo/ncc/hostTools.
> The invocation is: ncc_att_hwid
> -f tew-810dr-squashfs-factory.bin -a -m "TEW-810DR" -H "1.0R" -r "WW" -c
> "1.0"
> This may need to be altered if your hardware version is "1.1R".
> The image can also be directly flashed via serial tftp.
> 1.  Load *.sysupgrade.bin to your tftp server directory and rename for
> convenience.
> 2.  Set a static ip 192.168.10.100.
> 3.  NIC cable to a lan port.
> 4.  Serial connection parameters 57600,8N1 5.  Power on the TEW-810 and
> press 4 for a u-boot command line prompt.
> 6.  Verify IP's with U-Boot command "printenv".
> 7.  Adjust tftp settings if needed per the tftp documentation 8.  Boot th=
e tftp
> image to test the build.
> 9.  If the image loads, reset your server ip to 192.168.1.10 and restart
> network.
> 10. Log in to Luci, 192.168.1.1, and flash the *sysupgrade.bin image.
>=20
> Summary v4 -> v5 -> v6
> 1.  Enumerated installation steps and corrected grammar.
> 2.  Added SPDX License Identifier to *.dts.
> 3.  gpio-keys-polled -> gpio-keys in *.dts.
> 4.  gpio2 0 is actually behind a Globe/Internet lens - changed to wan.
> 5.  Increased spi-max-frequency 10000000 -> 50000000 6.  jffs2 partition
> 0xe0000 -> 0xf0000.
> 7.  &state_default groups dropped mdio, rgmii1, wled.
> 8.  MAC assignments mirror DIR-810L and verify in Luci.  Unchanged
> 02_network and *.dts.
> 9.  01_leds changed consistent with #4.
> 10. Removed SUPPORTED_DEVICES from image/mt7620.mk.  Note: the D-
> Link DIR-810L has the same SUPPORTED_DEVICES entry in image/mt7620.mk.
> 11. Builds/Runs on my test Device.
>=20
> Summary v6 -> v7
> 1.  White space issues in &wmac *.dts, image/mt7620.mk, 01_leds and
> 02_network;
>      spaces replaced with tabs
>=20
> Signed-off-by: J. Scott Heppler <shep971@centurylink.net>
> ---
>   .../ramips/dts/mt7620a_trendnet_tew-810dr.dts | 166
> ++++++++++++++++++
>   target/linux/ramips/image/mt7620.mk           |   9 +
>   .../mt7620/base-files/etc/board.d/01_leds     |   3 +
>   .../mt7620/base-files/etc/board.d/02_network  |   4 +-
>   4 files changed, 181 insertions(+), 1 deletion(-)
>   create mode 100644 target/linux/ramips/dts/mt7620a_trendnet_tew-
> 810dr.dts
>=20
> diff --git a/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> b/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> new file mode 100644
> index 0000000000..2873b5d780
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> @@ -0,0 +1,166 @@
> +//SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
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
> +		compatible =3D "gpio-keys";
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
> +		wan_orange: wan_orange {
> +			label =3D "tew-810dr:orange:wan";
> +			gpios =3D <&gpio0 12 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		wan_green: wan_green {
> +			label =3D "tew-810dr:green:wan";
> +			gpios =3D <&gpio2 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_power_orange {
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
> +		spi-max-frequency =3D <50000000>;
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
> +			partition@f0000 {
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
> +		groups =3D "i2c", "uartf", "ephy";
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
> +	ralink,mtd-eeprom =3D <&factory 0x0>;
> +	mtd-mac-address =3D <&factory 0x28>;
> +};
> +
> +&pcie0 {
> +	wifi@0,0 {
> +		reg =3D <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x8000>;
> +		ieee80211-freq-limit =3D <5000000 6000000>;
> +		mtd-mac-address =3D <&factory 0x28>;
> +		mtd-mac-address-increment =3D <2>;
> +	};
> +};
> +
> +&gpio2 {
> +	status =3D "okay";
> +};
> diff --git a/target/linux/ramips/image/mt7620.mk
> b/target/linux/ramips/image/mt7620.mk
> index e435b1d15f..386809e40f 100644
> --- a/target/linux/ramips/image/mt7620.mk
> +++ b/target/linux/ramips/image/mt7620.mk
> @@ -1005,6 +1005,15 @@ define Device/tplink_re210-v1
>   endef
>   TARGET_DEVICES +=3D tplink_re210-v1
>=20
> +define Device/trendnet_tew-810dr
> +  SOC :=3D mt7620a
> +  DEVICE_PACKAGES :=3D kmod-mt76x0e
> +  DEVICE_VENDOR :=3D TRENDnet
> +  DEVICE_MODEL :=3D TEW-810DR
> +  IMAGE_SIZE :=3D 6720k
> +endef
> +TARGET_DEVICES +=3D trendnet_tew-810dr
> +
>   define Device/vonets_var11n-300
>     SOC :=3D mt7620n
>     IMAGE_SIZE :=3D 3776k
> diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> index c1deae59e3..595f84f5d2 100755
> --- a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> @@ -191,6 +191,9 @@ tplink,archer-mr200)
>   tplink,re200-v1)
>   	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
>   	;;
> +trendnet,tew-810dr)
> +        ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan"
> "eth0.2" "link tx rx"
> +        ;;
>   youku,yk1)
>   	set_wifi_led "$boardname:blue:air"
>   	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan"
> "switch0" "0x10"
> diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> index d024674c10..2a54fa12e9 100755
> --- a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
> @@ -26,6 +26,7 @@ ramips_setup_interfaces()
>   	ralink,mt7620a-mt7610e-evb|\
>   	ralink,mt7620a-v22sg-evb|\
>   	sanlinking,d240|\
> +	trendnet,tew-810dr|\
>   	youku,yk1|\
>   	zbtlink,zbt-ape522ii|\
>   	zbtlink,zbt-we826-16m|\
> @@ -259,7 +260,8 @@ ramips_setup_macs()
>   	alfa-network,ac1200rm|\
>   	dlink,dir-810l|\
>   	phicomm,psg1218a|\
> -	phicomm,psg1218b)
> +	phicomm,psg1218b|\
> +	trendnet,tew-810dr)
>   		wan_mac=3D$(macaddr_add "$(mtd_get_mac_binary factory
> 0x28)" 1)
>   		;;
>   	alfa-network,r36m-e4g|\
> --
> 2.20.1
>=20
>=20
>=20
>=20
> --
> J. Scott Heppler
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=cOmDvXJh/pPhNR=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7M4gEACgkQoNyKO7qx
AnAzaA/8DYSPdj8/6oJMMybxkGFQGTPOKxZCImkHBqmmkzuPjG4I5i3Oz8pG1gOR
LwlQdMcsdcFXAHluNBs4vRhDyLrzesSCW4kCvFPyx3vyIW+UUBRSts8lOYyJdQCk
3w9MNpx5omUOQNqSgNcTLHw1w4lbsQYpZwsc73tpWPFRrrBi9mot0gXRPbyMo7+5
Ola8qMmwTJjuqgdWnmVVLqXQFlhpcQim1zP6M2m/4FpaCo6n80dYF1rQ18brkRQz
X5hOp5e1NOMQjLT8hl1hcIgzOB4bAFhV9DlZq0vF7bgqVT8bNayA5waXPWrvXh4G
GIuos7N7haAIMJbGQHDyfINW/1v1Dl2woM82bBqdRdZQMCWhdo/Ai7bIQzWGBb0Y
MRu+Csl+4DRaQjc2uYrrZz7leh7ocfuoZH5xUIUKDSAbnmOPJmvZxaFZf4mwp1ry
+kVsE6tycjlxkfbnEVJkwdH7Gz9qZaaaikD0NAqJzCYTSjh3N5pcOp6vycF2gA7o
1rQVOsTbL+mT9qVSEGlnqGqcVsEak351xXqWavcMfkEGx0Kf7hDuRq+Kj2n/LzRC
+Tiyh67Jr2sT6TPx45y2kJzojy3bqt0bj6YUtOvd0sM3OgrI6j8mqepCXYlmrKL0
Kv9IANM4PdnIj0u8JpgqSGbduSqG5IB+LXqC6pSXMmspn3aWhzs=
=4iUq
-----END PGP SIGNATURE-----


--=-=cOmDvXJh/pPhNR=-=--



--===============7590943583878521098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7590943583878521098==--


