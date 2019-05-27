Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FD52B939
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 18:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ps/skARCkPYhX0T0BXKccSiofMYNtrRtjyuTRhdzYZM=; b=uYjIKuE7OuXYxZ
	250u7a79BshBtGrUJwpVmK3ctNWs8xl8xijLveBDOs4GqdWVujPPAX8FVw9ughXaY37LrKYSKiGTo
	iVBGFvD5mUH2rQ+SUTae+q/BLeAvxLdqRYyNQ4hmJz94suwCP6dc42iU9yuc3SV9wtS75tPuxnFmQ
	tggqVWzYq4DsLmWhGdsWXnBBAshpI/vourAsI1uqjRHVPtUrAQXVw+D9ikHBnXdnxkPX2HaMaH+P2
	KPS6iRbjhshzU+E1m8eqqLQU415IOWcznd1qsR62r0ISgh089GKJJM/uFAmdoesfHZ2Nb3MVfnP+q
	YhDQXMVEA7FLA4yxhKzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIjB-0003jv-Jy; Mon, 27 May 2019 16:44:01 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIj2-0003jX-6O
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 16:43:55 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <daniel@makrotopia.org>)
 id 1hVIiz-0004e1-O7; Mon, 27 May 2019 18:43:49 +0200
Date: Mon, 27 May 2019 18:43:46 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <20190527164340.GC1737@makrotopia.org>
References: <8f1759e6-6921-8831-fc42-da0b34d4f611@birger-koblitz.de>
 <20190527163530.GB1737@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527163530.GB1737@makrotopia.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_094352_561918_5F294108 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] Support for Edimax EW-7476RPC /
 EW-7478AC
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, May 27, 2019 at 06:35:30PM +0200, Daniel Golle wrote:
> Hi Birger,
> =

> thanks for submitting your work. In order to support the external
> switch, existing generic features should be used in order to
> implement the phy-reset via GPIO#39.
> See my comments in the code (I commented the first device only, same
> applies to the 2nd device as well).
> =

> On Mon, May 27, 2019 at 05:55:24PM +0200, Birger Koblitz wrote:
> > ramips: add Netgear EW-7476RPC
> > =

> > SoC:=A0=A0 MediaTek MT7620a @ 580MHz
> > RAM:=A0=A0 64M (Winbond W9751G6KB-25)
> > FLASH: 8MB (Macronix)
> > WiFi:=A0 SoC-integrated: MediaTek MT76620a bgn
> =

> Typo, I supposed. MT7620a (or RT6352 to name the embedded WiFi IP)
> =

> > WiFi:=A0 MediaTek MT7612EN nac
> > GBE:=A0=A0 RTL8211E
> =

> Please mention how many phyical ports the device got and if all of
> them support GbE.

Sorry, that was stupid of me. I just realized we are talking about a
wall-wart:
https://fccid.io/NDD9574761501/Internal-Photos/Internal-Photos-2706172

So it's a simple PHY with 1x GbE obviously ;)

> =

> > BTN:=A0=A0 WPS - RFKILL/RF 50%/RF 100% toggle
> > LED:=A0=A0=A0 - Wifi 5g (blue)
> > =A0=A0=A0=A0=A0=A0=A0 - Wifi 2g (blue)
> > =A0=A0=A0=A0=A0=A0=A0 - Crossband (green)
> > =A0=A0=A0=A0=A0=A0=A0 - Power (green)
> > =A0=A0=A0=A0=A0=A0=A0 - WPS (green)
> > =A0=A0=A0=A0=A0=A0=A0 - LAN (Green)
> > UART:=A0 UART is present as Pads with throughholes on the PCB. They are
> > =A0=A0=A0=A0=A0=A0 located next to the switch for the wifi configuration
> > =A0=A0=A0=A0=A0=A0 3.3V - RX - GND - TX / 57600-8N1
> > =A0=A0=A0=A0=A0=A0 3.3V is the square pad
> > =

> > Installation
> > ------------
> > Update the factory image via the web-interfaces (by default:
> > 192.168.9.2/24).
> > http://192.168.9.2/index.asp
> > =

> > ramips: add Netgear EW-7478AC
> > =

> > SoC:=A0=A0 MediaTek MT7620a @ 580MHz
> > RAM:=A0=A0 64M (Winbond W9751G6KB-25)
> > FLASH: 8MB (Macronix)
> > WiFi:=A0 SoC-integrated: MediaTek MT76620a bgn
> Same here
> =

> > WiFi:=A0 MediaTek MT7612EN nac
> > GBE:=A0=A0 RTL8211E
> > BTN:=A0=A0 WPS - RFKILL/RF 50%/RF 100% toggle
> > LED:=A0=A0=A0 - Wifi 5g (blue)
> > =A0=A0=A0=A0=A0=A0=A0 - Wifi 2g (blue)
> > =A0=A0=A0=A0=A0=A0=A0 - Crossband (green)
> > =A0=A0=A0=A0=A0=A0=A0 - Power (green)
> > =A0=A0=A0=A0=A0=A0=A0 - WPS (green)
> > =A0=A0=A0=A0=A0=A0=A0 - LAN (Green)
> > UART:=A0 UART is present as Pads with throughholes on the PCB. They are
> > =A0=A0=A0=A0=A0=A0 located next to the switch for the wifi configuration
> > =A0=A0=A0=A0=A0=A0 3.3V - RX - GND - TX / 57600-8N1
> > =A0=A0=A0=A0=A0=A0 3.3V is the square pad
> > =

> > Installation
> > ------------
> > Update the factory image via the web-interfaces (by default:
> > http://edimaxext.setup)
> > Or push wpa button on power on and send firmware via tftp to 192.168.1.6
> > =

> > The EW-7478AC is identical to the EW-7476RPC, except instead of 2 inter=
nal
> > antennas it has 2 external ones.
> > =

> > =

> > diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds
> > b/target/linux/ramips/base-files/etc/board.d/01_leds
> > index b55ca0413e..78e93b557b 100755
> > --- a/target/linux/ramips/base-files/etc/board.d/01_leds
> > +++ b/target/linux/ramips/base-files/etc/board.d/01_leds
> > @@ -146,6 +146,10 @@ dir-860l-b1)
> > =A0edimax,br-6478ac-v2)
> > =A0=A0=A0=A0=A0=A0=A0 set_wifi_led "$boardname:blue:wlan"
> > =A0=A0=A0=A0=A0=A0=A0 ;;
> > +edimax,ew-7476rpc|\
> > +edimax,ew-7478ac)
> > +=A0=A0=A0=A0=A0=A0=A0 ucidef_set_led_switch "lan" "lan" "$boardname:gr=
een:lan"=A0
> > "switch0" "0x20"
> > +=A0=A0=A0=A0=A0=A0=A0 ;;
> > =A0ex2700|\
> > =A0wn3000rpv3)
> > =A0=A0=A0=A0=A0=A0=A0 set_wifi_led "$boardname:green:router"
> > diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> > b/target/linux/ramips/base-files/etc/board.d/02_network
> > index 2e56678cf5..bbdfe9b128 100755
> > --- a/target/linux/ramips/base-files/etc/board.d/02_network
> > +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> > @@ -50,6 +50,8 @@ ramips_setup_interfaces()
> > =A0=A0=A0=A0=A0=A0=A0 broadway|\
> > =A0=A0=A0=A0=A0=A0=A0 dcs-930|\
> > =A0=A0=A0=A0=A0=A0=A0 dcs-930l-b1|\
> > +=A0=A0=A0=A0=A0=A0 edimax,ew-7476rpc|\
> > +=A0=A0=A0=A0=A0=A0 edimax,ew-7478ac|\
> > =A0=A0=A0=A0=A0=A0=A0 ht-tm02|\
> > =A0=A0=A0=A0=A0=A0=A0 kimax,u35wf|\
> > =A0=A0=A0=A0=A0=A0=A0 linkits7688 | \
> > diff --git a/target/linux/ramips/dts/EW-7476RPC.dts
> > b/target/linux/ramips/dts/EW-7476RPC.dts
> > new file mode 100644
> > index 0000000000..7a1edf3e4d
> > --- /dev/null
> > +++ b/target/linux/ramips/dts/EW-7476RPC.dts
> > @@ -0,0 +1,238 @@
> > +/*
> > + * Device Tree file for the Edimax EW-7476RPC
> > + * based on Edimax BR-6478AC V2
> > + *
> > + * Copyright (C) 2016 Rohan Murch <rohan.murch@gmail.com>
> > + * Copyright (C) 2016 Hans Ulli Kroll <ulli.kroll@googlemail.com>
> > + * Copyright (C) 2017 James McKenzie <openwrt@madingley.org>
> > + *
> > + * This file is licensed under the terms of the GNU General Public
> > + * License version 2.=A0 This program is licensed "as is" without any
> > + * warranty of any kind, whether express or implied.
> > +
> > + The following definitions were found in the orignal GPL firmware sour=
ce
> > + HW_LED_WIRELESS_ABAND_=3D"71"
> > + HW_LED_WIRELESS_GBAND_=3D"70"
> > + HW_LED_WIRELES_=3D"69"
> > + HW_LED_POWER_=3D"67"
> > + HW_LED_WPS_=3D"68"
> > + HW_LED_LAN_=3D"66"
> > + HW_BUTTON_APSWITCH_BUT_1_=3D"62"
> > + HW_BUTTON_APSWITCH_BUT_2_=3D"63"
> > + HW_BUTTON_RESET_=3D"60"
> > +
> > + The device does not have a reset button (but there are solder pads for
> > a button), WPS and reset are swapped.
> > +
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "mt7620a.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +
> > +/ {
> > +=A0=A0=A0=A0=A0=A0 compatible =3D "edimax,ew-7476rpc", "ralink,mt7620a=
-soc";
> > +=A0=A0=A0=A0=A0=A0 model =3D "Edimax EW-7476RPC";
> > +
> > +=A0=A0=A0=A0=A0=A0 aliases {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led-boot =3D &led_power;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led-failsafe =3D &led_power;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led-running =3D &led_power;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led-upgrade =3D &led_power;
> > +=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0 chosen {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bootargs =3D "console=3Dtty=
S0,57600";
> > +=A0=A0=A0=A0=A0=A0 };
> > +
> > +
> > +=A0=A0=A0=A0=A0=A0 keys {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "gpio-key=
s";
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reset_wps {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
label =3D "reset_wps";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
gpios =3D <&gpio2 20 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
linux,code =3D <KEY_RESTART>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 switch_high {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "switch high";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 22 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,code =3D <BTN_0>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,input-type =3D <EV_SW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 switch_off {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "switch off";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 23 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,code =3D <BTN_1>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,input-type =3D <EV_SW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0 leds {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "gpio-leds";
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led_power: power {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7476rpc:green:power";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 27 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lan {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7476rpc:green:lan";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 26 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 wlan2g {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7476rpc:blue:wlan2g";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 30 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,default-trigger =3D "phy1radio";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 wlan5g {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7476rpc:blue:wlan5g";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 31 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,default-trigger =3D "phy0radio";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 wps {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7476rpc:green:wps";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 28 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 crossband {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7476rpc:green:crossband";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 29 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> > +
> > +
> > +&gpio2 {
> > +=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +};
> > +
> > +&spi0 {
> > +=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +
> > +=A0=A0=A0=A0=A0=A0 flash@0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "jedec,spi-n=
or";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0 0>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 spi-max-frequency =3D <1000=
0000>;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 partitions {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 com=
patible =3D "fixed-partitions";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #ad=
dress-cells =3D <1>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #si=
ze-cells =3D <1>;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 par=
tition@0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "u-boot";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x0 0x30000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 read-only;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 par=
tition@30000 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "u-boot-env";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x30000 0x10000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 read-only;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fac=
tory: partition@40000 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "factory";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x40000 0x10000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 read-only;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 par=
tition@50000 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "cimage";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x50000 0x20000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 read-only;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 par=
tition@70000 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 compatible =3D "edimax,uimage";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "firmware";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x00070000 0x00790000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> > +
> > +&pinctrl {
> > +=A0=A0=A0=A0=A0=A0 state_default: pinctrl0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpio {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 // might need pin 39: ;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ral=
ink,group =3D "i2c", "uartf", "nd_sd",
> > "rgmii2", "spi refclk";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ral=
ink,function =3D "gpio";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> =

> A pinctrl group for the switch reset would be appropriate:
> GPIO 39 is p4led_an, hence add:
> 	phy_reset_pins: phy-reset {
> 		gpio {
> 			ralink,group =3D "p4led_an";
> 			ralink,function =3D "gpio";
> 		};
> 	};
> =

> > +
> > +
> > +&ethernet {
> > +
> > +=A0=A0=A0 status =3D "okay";
> > +=A0=A0=A0=A0=A0=A0 mtd-mac-address =3D <&factory 0x4>;
> > +=A0=A0=A0=A0=A0=A0 pinctrl-names =3D "default";
> > +=A0=A0=A0=A0=A0=A0 pinctrl-0 =3D <&rgmii1_pins &mdio_pins>;
> =

> Now use it here
> 	pinctrl-0 =3D <&rgmii1_pins &mdio_pins &phy_reset_pins>;
> =

> > +=A0=A0=A0=A0=A0=A0 mediatek,portmap =3D "l";
> > +=A0=A0=A0 mediatek,mdio-mode =3D <1>;
> > +=A0=A0=A0
> > +=A0=A0=A0=A0=A0=A0 port@5 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 mediatek,fixed-link =3D <10=
00 1 1 1>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy-mode =3D "rgmii";
> =

> And why not use something like
> 	phy-reset-gpios =3D <&gpio1 15 GPIO_ACTIVE_LOW>;
> here and make sure it's taken care of, because this is imho where it
> would belong.
> =

> > +=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0 mdio-bus {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy0: ethernet-phy@0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D"disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <0>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy1: ethernet-phy@1 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D "disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <1>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy2: ethernet-phy@2 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D "disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <2>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy3: ethernet-phy@3 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D "disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <3>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy4: ethernet-phy@4 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D "disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <4>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> > +
> > +
> > +&gsw {
> > +=A0=A0=A0=A0=A0=A0 mediatek,port5 =3D "gmac";
> > +=A0=A0=A0=A0=A0=A0 mediatek,rtl8211e-reset =3D "yes";
> No need to add a new property specific for that switch. There are
> existing generic types for that.
> =

> > +};
> > +
> > +
> > +&wmac {
> > +=A0=A0=A0=A0=A0=A0 ralink,mtd-eeprom =3D <&factory 0>;
> > +};
> > +
> > +&pcie {
> > +=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +};
> > +
> > +&pcie0 {
> > +=A0=A0=A0=A0=A0=A0 wifi@0,0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x0000 0 0 0 0>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 mediatek,mtd-eeprom =3D <&f=
actory 0x8000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 mediatek,2ghz =3D <0>;
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> > diff --git a/target/linux/ramips/dts/EW-7478AC.dts
> > b/target/linux/ramips/dts/EW-7478AC.dts
> > new file mode 100644
> > index 0000000000..ab1b284280
> > --- /dev/null
> > +++ b/target/linux/ramips/dts/EW-7478AC.dts
> > @@ -0,0 +1,241 @@
> > +/*
> > + * Device Tree file for the Edimax EW-7478AC
> > + * based on Edimax BR-6478AC V2
> > + *
> > + * Copyright (C) 2016 Rohan Murch <rohan.murch@gmail.com>
> > + * Copyright (C) 2016 Hans Ulli Kroll <ulli.kroll@googlemail.com>
> > + * Copyright (C) 2017 James McKenzie <openwrt@madingley.org>
> > + *
> > + * This file is licensed under the terms of the GNU General Public
> > + * License version 2.=A0 This program is licensed "as is" without any
> > + * warranty of any kind, whether express or implied.
> > +
> > + The following definitions were found in the orignal GPL firmware sour=
ce
> > + HW_LED_WIRELESS_ABAND_=3D"71"
> > + HW_LED_WIRELESS_GBAND_=3D"70"
> > + HW_LED_WIRELES_=3D"69"
> > + HW_LED_POWER_=3D"67"
> > + HW_LED_WPS_=3D"68"
> > + HW_LED_LAN_=3D"66"
> > + HW_BUTTON_APSWITCH_BUT_1_=3D"62"
> > + HW_BUTTON_APSWITCH_BUT_2_=3D"63"
> > + HW_BUTTON_RESET_=3D"60"
> > +
> > + The device does not have a reset button (but there are solder pads for
> > a button), WPS and reset are swapped.
> > +
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "mt7620a.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +
> > +/ {
> > +=A0=A0=A0=A0=A0=A0 compatible =3D "edimax,ew-7478ac", "ralink,mt7620a-=
soc";
> > +=A0=A0=A0=A0=A0=A0 model =3D "Edimax EW-7478ac";
> > +
> > +=A0=A0=A0=A0=A0=A0 aliases {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led-boot =3D &led_power;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led-failsafe =3D &led_power;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led-running =3D &led_power;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led-upgrade =3D &led_power;
> > +=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0 chosen {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bootargs =3D "console=3Dtty=
S0,57600";
> > +=A0=A0=A0=A0=A0=A0 };
> > +
> > +
> > +=A0=A0=A0=A0=A0=A0 keys {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "gpio-key=
s";
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reset_wps {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
label =3D "reset_wps";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
gpios =3D <&gpio2 20 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
linux,code =3D <KEY_RESTART>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 switch_high {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "switch high";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 22 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,code =3D <BTN_0>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,input-type =3D <EV_SW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 switch_off {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "switch off";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 23 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,code =3D <BTN_1>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,input-type =3D <EV_SW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0 leds {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "gpio-leds";
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 led_power: power {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7478ac:green:power";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 27 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lan {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7478ac:green:lan";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 26 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 wlan2g {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7478ac:blue:wlan2g";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 30 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,default-trigger =3D "phy1radio";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 wlan5g {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7478ac:blue:wlan5g";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 31 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lin=
ux,default-trigger =3D "phy0radio";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 wps {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7478ac:green:wps";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 28 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 crossband {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lab=
el =3D "ew-7478ac:green:crossband";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpi=
os =3D <&gpio2 29 GPIO_ACTIVE_LOW>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> > +
> > +
> > +&gpio2 {
> > +=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +};
> > +
> > +&spi0 {
> > +=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +
> > +=A0=A0=A0=A0=A0=A0 flash@0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "jedec,spi-n=
or";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0 0>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 spi-max-frequency =3D <1000=
0000>;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 partitions {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 com=
patible =3D "fixed-partitions";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #ad=
dress-cells =3D <1>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #si=
ze-cells =3D <1>;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 par=
tition@0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "u-boot";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x0 0x30000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 read-only;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 par=
tition@30000 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "u-boot-env";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x30000 0x10000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 read-only;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fac=
tory: partition@40000 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "factory";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x40000 0x10000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 read-only;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 par=
tition@50000 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "cimage";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x50000 0x20000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 read-only;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 par=
tition@70000 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 compatible =3D "edimax,uimage";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 label =3D "firmware";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x00070000 0x00790000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> > +
> > +&pinctrl {
> > +=A0=A0=A0=A0=A0=A0 state_default: pinctrl0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gpio {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 // might need pin 39: ;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ral=
ink,group =3D "i2c", "uartf", "nd_sd",
> > "rgmii2", "spi refclk";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ral=
ink,function =3D "gpio";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> > +
> > +
> > +&ethernet {
> > +
> > +=A0=A0=A0 status =3D "okay";
> > +=A0=A0=A0=A0=A0=A0 mtd-mac-address =3D <&factory 0x4>;
> > +=A0=A0=A0=A0=A0=A0 pinctrl-names =3D "default";
> > +=A0=A0=A0=A0=A0=A0 pinctrl-0 =3D <&rgmii1_pins &mdio_pins>;
> > +=A0=A0=A0=A0=A0=A0 mediatek,portmap =3D "l";
> > +=A0=A0=A0 mediatek,mdio-mode =3D <1>;
> > +=A0=A0=A0
> > +=A0=A0=A0=A0=A0=A0 port@5 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 mediatek,fixed-link =3D <10=
00 1 1 1>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0 mdio-bus {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy0: ethernet-phy@0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D"disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <0>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy1: ethernet-phy@1 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D "disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <1>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy2: ethernet-phy@2 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D "disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <2>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy3: ethernet-phy@3 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D "disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <3>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy4: ethernet-phy@4 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sta=
tus =3D "disabled";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg=
 =3D <4>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy=
-mode =3D "rgmii";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> > +
> > +
> > +&gsw {
> > +=A0=A0=A0=A0=A0=A0 mediatek,port5 =3D "gmac";
> > +=A0=A0=A0=A0=A0=A0 mediatek,rtl8211e-reset =3D "yes";
> > +};
> > +
> > +
> > +&wmac {
> > +=A0=A0=A0=A0=A0=A0 ralink,mtd-eeprom =3D <&factory 0>;
> > +};
> > +
> > +&pcie {
> > +=A0=A0=A0=A0=A0=A0 status =3D "okay";
> > +};
> > +
> > +&pcie0 {
> > +=A0=A0=A0=A0=A0=A0 wifi@0,0 {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x0000 0 0 0 0>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 mediatek,mtd-eeprom =3D <&f=
actory 0x8000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 mediatek,2ghz =3D <0>;
> > +=A0=A0=A0=A0=A0=A0 };
> > +};
> > diff --git
> > a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt76=
20.c
> > b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt76=
20.c
> > index 5fc5080aaf..305ce18037 100644
> > ---
> > a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt76=
20.c
> > +++
> > b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt76=
20.c
> > @@ -84,6 +84,32 @@ static int mt7620_mdio_mode(struct device_node *eth_=
node)
> > =A0=A0=A0=A0=A0=A0=A0 return ret;
> > =A0}
> > =A0
> > +void reset_realtek_phy(void){
> > +#define RALINK_GPIO_DIR=A0=A0=A0=A0=A0=A0=A0 0xB0000600+0x4C
> > +#define RALINK_GPIO_DATA=A0=A0=A0=A0=A0=A0 0xB0000600+0x48
> > +#define RALINK_RESETPHY_GPIO=A0=A0=A0=A0=A0=A0 (39-24)
> > +=A0=A0=A0 u32 gpiodir;
> > +=A0=A0=A0 u32 piodata;
> > +=A0=A0=A0 u32 reset_pin=3D RALINK_RESETPHY_GPIO;
> > +=A0=A0=A0
> > +=A0=A0=A0 pr_info("gsw: Resetting RTL8211e using gpio 39\n");
> > +=A0=A0=A0 gpiodir =3D=A0 le32_to_cpu(*(volatile u32 *)(RALINK_GPIO_DIR=
));
> > +=A0=A0=A0 /*set gpio1 to output*/
> > +=A0=A0=A0 gpiodir |=3D (1<<reset_pin);
> > +=A0=A0=A0 *(volatile u32 *)(RALINK_GPIO_DIR) =3D cpu_to_le32(gpiodir);
> > +
> > +=A0=A0=A0 piodata =3D le32_to_cpu(*(volatile u32 *)(RALINK_GPIO_DATA));
> > +=A0=A0=A0 /*set to low(0)*/
> > +=A0=A0=A0 piodata &=3D ~(1L << reset_pin);
> > +=A0=A0=A0 *(volatile u32 *)(RALINK_GPIO_DATA) =3D cpu_to_le32(piodata);
> > +=A0=A0=A0 /*delay 30ms*/
> > +=A0=A0=A0 mdelay(30);
> > +=A0=A0=A0 /*set to high(1)*/
> > +=A0=A0=A0 piodata |=3D (1L << reset_pin);
> > +=A0=A0=A0 *(volatile u32 *)(RALINK_GPIO_DATA) =3D cpu_to_le32(piodata);
> > +}
> > +
> > +
> > =A0static void mt7620_hw_init(struct mt7620_gsw *gsw, int mdio_mode)
> > =A0{
> > =A0=A0=A0=A0=A0=A0=A0 u32 i;
> > @@ -220,6 +246,7 @@ int mtk_gsw_init(struct fe_priv *priv)
> > =A0=A0=A0=A0=A0=A0=A0 struct device_node *np =3D priv->switch_np;
> > =A0=A0=A0=A0=A0=A0=A0 struct platform_device *pdev =3D of_find_device_b=
y_node(np);
> > =A0=A0=A0=A0=A0=A0=A0 struct mt7620_gsw *gsw;
> > +=A0=A0=A0 const char *rtl8211e_reset =3D NULL;
> > =A0
> > =A0=A0=A0=A0=A0=A0=A0 if (!pdev)
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
> > @@ -231,6 +258,9 @@ int mtk_gsw_init(struct fe_priv *priv)
> > =A0=A0=A0=A0=A0=A0=A0 priv->soc->swpriv =3D gsw;
> > =A0
> > =A0=A0=A0=A0=A0=A0=A0 mt7620_hw_init(gsw, mt7620_mdio_mode(priv->dev->o=
f_node));
> > +=A0=A0=A0 of_property_read_string(np, "mediatek,rtl8211e-reset",
> > &rtl8211e_reset);
> > +=A0=A0=A0 if (rtl8211e_reset && !strcmp(rtl8211e_reset, "yes"))
> > +=A0=A0=A0=A0=A0=A0=A0 reset_realtek_phy();
> > =A0
> > =A0=A0=A0=A0=A0=A0=A0 if (gsw->irq) {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 request_irq(gsw->irq, gsw=
_interrupt_mt7620, 0,
> > diff --git a/target/linux/ramips/image/mt7620.mk
> > b/target/linux/ramips/image/mt7620.mk
> > index cf38aa2cb1..a7b14593c2 100644
> > --- a/target/linux/ramips/image/mt7620.mk
> > +++ b/target/linux/ramips/image/mt7620.mk
> > @@ -617,6 +617,32 @@ define Device/edimax_br-6478ac-v2
> > =A0endef
> > =A0TARGET_DEVICES +=3D edimax_br-6478ac-v2
> > =A0
> > +define Device/edimax_ew-7476rpc
> > +=A0 DTS :=3D EW-7476RPC
> > +=A0 DEVICE_TITLE :=3D Edimax EW-7476RPC
> > +=A0 BLOCKSIZE :=3D 4k
> > +=A0 IMAGE_SIZE :=3D 7616k
> > +=A0 IMAGE/sysupgrade.bin :=3D append-kernel | append-rootfs | \
> > +=A0=A0=A0=A0=A0=A0=A0 edimax-header -s CSYS -m RN79 -f 0x70000 -S 0x01=
100000 |
> > pad-rootfs | \
> > +=A0=A0=A0=A0=A0=A0=A0 append-metadata | check-size $$$$(IMAGE_SIZE)
> > +=A0 DEVICE_PACKAGES :=3D kmod-mt76x2 kmod-phy-realtek
> > +endef
> > +TARGET_DEVICES +=3D edimax_ew-7476rpc
> > +
> > +
> > +define Device/edimax_ew-7478ac
> > +=A0 DTS :=3D EW-7478AC
> > +=A0 DEVICE_TITLE :=3D Edimax EW-7478AC
> > +=A0 BLOCKSIZE :=3D 4k
> > +=A0 IMAGE_SIZE :=3D 7616k
> > +=A0 IMAGE/sysupgrade.bin :=3D append-kernel | append-rootfs | \
> > +=A0=A0=A0=A0=A0=A0=A0 edimax-header -s CSYS -m RN70 -f 0x70000 -S 0x01=
100000 |
> > pad-rootfs | \
> > +=A0=A0=A0=A0=A0=A0=A0 append-metadata | check-size $$$$(IMAGE_SIZE)
> > +=A0 DEVICE_PACKAGES :=3D kmod-mt76x2 kmod-phy-realtek
> > +endef
> > +TARGET_DEVICES +=3D edimax_ew-7478ac
> > +
> > +
> > =A0define Device/tplink_c2-v1
> > =A0=A0 $(Device/Archer)
> > =A0=A0 DTS :=3D ArcherC2-v1
> > =

> > =

> > =

> > =

> > =

> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
