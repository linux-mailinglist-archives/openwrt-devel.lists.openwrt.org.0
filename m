Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDFFB5035
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 16:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=htA1yS83gJSrocJHXt63oTsSOBFVo+jSfT8cswGyM/s=; b=LCYnqGZr2gK37dstovsFSRKXX
	9mWU34wUuT/nZv/vkg+6fRJkR7Lm25iLcj5EB1GosPLhMe0RBku4RoTVMdIrlUtAvdXAlCHnMgWvx
	FCSMoBaVVETPfEl6NbnnfXI1o0VS9xvKdoVq9ozmtOjYI4fldK8QKrf52kEB9DLtpwz4PBRVvi/xr
	MddGpRlGndDGc10JRisIrTnbpj8ZoqeSeV9s91l5hIHvvSYSkhXhXhPxbFMDPR1ura3ut0me+a3ok
	nOiO6AoQci5pWqkrbf50DulUN9JWzTteifKnoRluvEJbcbiA1VEY/K7mgJhDJTq6ljw/XLeu/NL0b
	yDKOs+qmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEKQ-0006d7-Cw; Tue, 17 Sep 2019 14:19:38 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEKG-0006cl-3H
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 14:19:30 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MZTyi-1igash1JkE-00WY5d; Tue, 17
 Sep 2019 16:19:21 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Filip Moc'" <lede@moc6.cz>,
	"'Enrico Mioso'" <mrkiko.rs@gmail.com>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171243340.1098807@mStation.localdomain>
 <20190917135138.GA24389@moc6.cz>
In-Reply-To: <20190917135138.GA24389@moc6.cz>
Date: Tue, 17 Sep 2019 16:19:20 +0200
Message-ID: <00d001d56d62$e62e3c30$b28ab490$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHPCZHinJawK2ESMIjVbhdD0BHTvgENk/fbASrvpMwBQxqg/Kcg1X8g
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:K672XECvnIrxpRWWuk+P07UwkRIx2Xas6B8EO4sEeSeWXwmMJ4U
 zw0K0I9LHinwtDzwYqieodt3viZJc2akt0Ywvv9TBVGFNoCLIcWE/6Aj0u9Lo2rzzsOjcLI
 Y4JZv5k6D79sIvFhV0vMaIK1/o7Q2N7huhWOKkpideJ1pA7UZ7hRCah087kLwbZ+xqIi1ir
 HDLHQ89DQ71d8D0ILrIPQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O0oxfnaNqPI=:6svcuGKDgPQ5v5G/zPYZGy
 LHi+NUDnd7VVGEwtvVv3byCAkSSt1/rslJsq9MtAHYaV3pb/vs0ZA9ftNUAVSO4AAWkr/rKvI
 NHuF0ZFEic/jIELpev4sldC1iTmTp0KvEbqiGkUsC6DcyN7V1jYrE4wn9hQFumv6BwJrMCr+3
 Tgv/9A1BcN7TKo5WtFH95wVTHBj6PlZpSVfGiRvNAp/1PGH/nMYdgDXugPcM4/x2zHnDXbLXd
 yxXC+IVk5uOxCJAuJAw+orcFLaB+bxgh7jveNJuQHvOGzBOxFYdLINBuPQ0zaQdT/MNZOjBbQ
 5t1GJ/QQip+ld4+5xKD09vwQCsHxSRil2X3EKIeED6x3Ua3IIlDSjs7lEmuFUkzawvBABuxKd
 1tGr48jZi2V2jTCbB+im/pAkLTlwcx5tyW2fdgRPHMHj1AEoD2KIpOGmnNWQANAO4oWu791/Z
 An5oIYfXo9J+m1I6K/kJJCPsP3dO7ex7HT7MzbUzcfHt47ZgwHdN3CVBlfuZvSMVXsRKqnpQT
 44nWDPs3tOlHOiXLjIT20fPtFlgfPlHj7VqW8M/IWKNeXExjQ/qOZvxz1D9weeiP0wpaXAkmz
 pN5Ara7FnIC2waIBEbXogoau+69h4lqqEcUnHYD46V/U8oyCsnc4W5u3/TI40azvjnWWLqCoN
 bwRDyN6+kvG56AUhMH9biNtlBs0EYo6Qf9kpYIueVAcLB64xHm4JQ4y4iLXQ9VxpTi/pBVBTr
 eBceDY9IzmQ0rIT/MXVYCIMH8Vco6DH/Ns3HTrpuVP10H353H+IwXr9z4QlmST2gSLIlgUykZ
 aUtNNRMx3jmmnoyEwEfTIi/n8i4pZkFIX63++rBO5FNe1z8Q6ON4+sYQ5My/EF7uHlKqDA3z3
 gYFQ+PAZrLdQ6DDo9+JMDh0CHQhVvnAVdmuZWIta4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_071928_443410_18339140 
X-CRM114-Status: GOOD (  37.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: openwrt-devel@lists.openwrt.org, 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: multipart/mixed; boundary="===============1865378278466920887=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1865378278466920887==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=SpdGpZyb0c6P34=-="

This is a multipart message in MIME format.

--=-=SpdGpZyb0c6P34=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Filip Moc [mailto:lede@moc6.cz]
> Sent: Dienstag, 17. September 2019 15:52
> To: Enrico Mioso <mrkiko.rs@gmail.com>
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>; openwrt-devel@lists.ope=
nwrt.org; Piotr Dymacz <pepe2k@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR=
6400
>=20
> Hi,
>=20
> > Where - eth1 works correctly (e.g.: detects cable plugging / unplugging=
), eth0 does not.
> I faintly remember I had to tweak ethernet ports on MR6400 somehow. I thi=
nk it
> had to be somehow put into swap mode or something to separate the WAN por=
t,
> otherwise some other port (LAN1 I think) was separated. And I also rememb=
er I
> had to experiment a bit to group phys and miis right so that right port
> connection controls up status of the right ethernet interface.
> Check if you have this setup correctly.
> When you face MR6400's ethernet ports to you the port order is from left =
to right:
> - LAN1 (the one right next to power button)
> - LAN2
> - LAN3
> - LAN4/WAN (the one right next to reset button)
>=20
> I can check your code when I get near to my MR6400 which will be sometime=
 in next week.

Maybe you need phy-swap? I try to have a look later during the week.

Best

Adrian

>=20
> Filip
>=20
>=20
> On Tue, Sep 17, 2019 at 12:48:55PM +0200, Enrico Mioso wrote:
> > thank you very very much Adrian!! I'll address all of the comments hope=
fully, and send a new version. In the meantime I am trying
> to configure the switch correctly, which is not the case.
> > My current snippet is:
> > &eth0 {
> > 	status =3D "okay";
> > 	phy-handle =3D <&swphy0>;
> >
> > 	mtd-mac-address =3D <&uboot 0x1fc00>;
> > 	mtd-mac-address-increment =3D <1>;
> > };
> >
> > &eth1 {
> > 	mtd-mac-address =3D <&uboot 0x1fc00>;
> > 	mtd-mac-address-increment =3D <(-1)>;
> > };
> >
> > Where - eth1 works correctly (e.g.: detects cable plugging / unplugging=
), eth0 does not.
> > Can you help me translate the C code in the mach- file to the DTS equiv=
alent?
> > The most similar device is TP-Link 942N but it seems not supported.
> >
> > BTW - fixing eth1 issue helped mitigate LTE init problem...
> > As per leds, I was trying to keep things the ar71xx way, what do you th=
ink?
> >
> > Enrico
> >
> > On Tue, 17 Sep 2019, Adrian Schmutzler wrote:
> >
> > > Date: Tue, 17 Sep 2019 12:07:20
> > > From: Adrian Schmutzler <mail@adrianschmutzler.de>
> > > To: Enrico Mioso <mrkiko.rs@gmail.com>, openwrt-devel@lists.openwrt.o=
rg
> > > Cc: Filip Moc <lede@moc6.cz>, Piotr Dymacz <pepe2k@gmail.com>
> > > Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link T=
L-MR6400
> > >
> > > Hi,
> > >
> > > > -----Original Message-----
> > > > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org=
] On Behalf Of Enrico Mioso
> > > > Sent: Dienstag, 17. September 2019 02:21
> > > > To: openwrt-devel@lists.openwrt.org
> > > > Cc: Filip Moc <lede@moc6.cz>; Piotr Dymacz <pepe2k@gmail.com>; Enri=
co Mioso <mrkiko.rs@gmail.com>
> > > > Subject: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-=
MR6400
> > > >
> > > > This adds support to the ath79 target for the TP-Link MR6400 router.
> > > >
> > > > As per original commit, hardware specifications (v1.0 EU):
> > > > - SoC: QCA9531
> > > > - Flash: Winbond W25Q64FV (8MiB)
> > > > - RAM: EtronTech EM6AB160TSE-5G (64MiB)
> > > > - Wireless: SoC platform only (2.4GHz b/g/n, 2x internal antenna)
> > > > - Ethernet: 2NIC (3x100M + 1x100M)
> > > > - WWAN: TP-LINK LTE MODULE (2x external detachable antenna)
> > > > - Power: DC 12V 1A
> > > >
> > > > Flashing instructions:
> > > > You can flash via tftp recovery (serve factory image as /mr6400_tp_=
recovery.bin
> > > > on 192.168.0.66/24, connect to any ethernet port and power on devic=
e while
> > > > holding the reset button). Flashing via OEM web interface does not =
work.
> > > >
> > > > Working:
> > > > - Wi-Fi
> > > > - TP-Link LTE module does it's thing (but see Notes)
> > > > - reset/rfkill keys
> > > > Untested:
> > > > - recovery via factory
> > > > - leds
> > > >
> > > > Issues for which I need help:
> > > > eth1 detects link when infact it's not there, and occasionally caus=
es kernel traces due to tx timeouts.
> > > > I promise I'll test untested items as well in final version
> > > >
> > > > Note: as it happened occasionally in ar71xx, during bursty flash ac=
tivity, LTE module init will fail, with USB enumeration errors.
> > > >
> > > > Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
> > > > CC: Filip Moc <lede@moc6.cz>
> > > > CC: Piotr Dymacz <pepe2k@gmail.com>
> > > > ---
> > > >  .../ath79/base-files/etc/board.d/01_leds      |   6 +
> > > >  .../ath79/base-files/etc/board.d/02_network   |   5 +
> > > >  .../ath79/dts/qca9531_tplink_tl-mr6400-v1.dts | 165 ++++++++++++++=
++++
> > > >  target/linux/ath79/image/generic-tp-link.mk   |  10 ++
> > > >  4 files changed, 186 insertions(+)
> > > >  create mode 100644 target/linux/ath79/dts/qca9531_tplink_tl-mr6400=
-v1.dts
> > > >
> > > > diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/ta=
rget/linux/ath79/base-files/etc/board.d/01_leds
> > > > index 778316e450..5728aeb491 100755
> > > > --- a/target/linux/ath79/base-files/etc/board.d/01_leds
> > > > +++ b/target/linux/ath79/base-files/etc/board.d/01_leds
> > > > @@ -130,6 +130,12 @@ tplink,archer-c7-v5)
> > > >  	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0=
" "0x10"
> > > >  	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0=
" "0x20"
> > > >  	;;
> > > > +tplink,tl-mr6400-v1)
> > > > +	ucidef_set_led_netdev "lan" "LAN" "tp-link:white:lan" "eth0"
> > > > +	ucidef_set_led_netdev "wan" "WAN" "tp-link:white:wan" "eth1"
> > >
> > > Here, you assign eth1 to the "wan" LED, but in 02_network you assign =
eth1 to "lan".
> > > Either change 02_network or this LED shouldn't be called WAN.
> > >
> > > > +	ucidef_set_led_netdev "4g" "4G" "tp-link:white:4g" "usb0"
> > > > +	ucidef_set_led_wlan "wlan" "WLAN" "tp-link:white:wlan" "phy0tpt"
> > >
> > > phy0tpt trigger can be moved to DTS, just have a look at other device=
s recently added to ath79.
> > >
> > > > +	;;
> > > >  tplink,archer-c2-v3|\
> > > >  tplink,tl-wr1043nd-v4|\
> > > >  tplink,tl-wr1043n-v5)
> > > > diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b=
/target/linux/ath79/base-files/etc/board.d/02_network
> > > > index 5b47af8ef7..2b0e1ce400 100755
> > > > --- a/target/linux/ath79/base-files/etc/board.d/02_network
> > > > +++ b/target/linux/ath79/base-files/etc/board.d/02_network
> > > > @@ -56,6 +56,11 @@ ath79_setup_interfaces()
> > > >  	winchannel,wb2000)
> > > >  		ucidef_set_interface_lan "eth0"
> > > >  		;;
> > > > +	tplink,tl-mr6400-v1)
> > > > +		ucidef_set_interfaces_lan_wan "eth0.1 eth1" "usb0"
> > >
> > > As stated above, this will make eth1 part of "lan" ...
> > >
> > > > +		ucidef_add_switch "switch0" \
> > > > +			"0@eth0" "1:lan" "2:lan" "3:lan"
> > > > +		;;
> > > >  	avm,fritz4020|\
> > > >  	pcs,cr3000|\
> > > >  	tplink,archer-c58-v1|\
> > > > diff --git a/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts=
 b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> > > > new file mode 100644
> > > > index 0000000000..4acb1a02a4
> > > > --- /dev/null
> > > > +++ b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
> > > > @@ -0,0 +1,165 @@
> > > > +// SPDX-License-Identifier: GPL-2.0-or-later
> > > > +/dts-v1/;
> > > > +
> > > > +#include <dt-bindings/gpio/gpio.h>
> > > > +#include <dt-bindings/input/input.h>
> > > > +
> > > > +#include "qca953x.dtsi"
> > > > +
> > > > +/ {
> > > > +	compatible =3D "tplink,tl-mr6400-v1", "qca,qca9531";
> > > > +	model =3D "TP-Link TL-MR6400 v1.0";
> > >
> > > I would remove the ".0" here, as with TP-Link the sub-revisions typic=
ally refer only to their firmware. So just "v1" should be better.
> > >
> > > > +
> > > > +	aliases {
> > > > +		led-boot =3D &led_power;
> > > > +		led-failsafe =3D &led_power;
> > > > +		led-running =3D &led_power;
> > > > +		led-upgrade =3D &led_power;
> > > > +	};
> > > > +
> > > > +	gpio_leds: leds {
> > > > +		compatible =3D "gpio-leds";
> > > > +
> > > > +		/* D12 */
> > >
> > > What's that?
> > >
> > > > +		led_wan: wan {
> > > > +			label =3D "tp-link:white:wan";
> > > > +			gpios =3D <&gpio 0 GPIO_ACTIVE_HIGH>;
> > > > +		};
> > >
> > > IMO those labels only make sense if you use them, as for led_power. I=
 would remove all of the other ones, i.e. only "wan {" here
> instead of "led_wan: wan {" ...
> > >
> > > > +
> > > > +		/* D11 */
> > > > +		led_4g: 4g {
> > > > +			label =3D "tp-link:white:4g";
> > > > +			gpios =3D <&gpio 1 GPIO_ACTIVE_HIGH>;
> > > > +		};
> > > > +
> > > > +		/* D5 */
> > > > +		led_wps: wps {
> > > > +			label =3D "tp-link:white:wps";
> > > > +			gpios =3D <&gpio 3 GPIO_ACTIVE_HIGH>;
> > > > +		};
> > > > +
> > > > +		/* D3 */
> > > > +		led_wlan: wlan {
> > > > +			label =3D "tp-link:white:wlan";
> > > > +			gpios =3D <&gpio 11 GPIO_ACTIVE_HIGH>;
> > > > +		};
> > > > +
> > > > +		/* D2 */
> > > > +		led_power: power {
> > > > +			label =3D "tp-link:white:power";
> > > > +			gpios =3D <&gpio 13 GPIO_ACTIVE_HIGH>;
> > > > +		};
> > > > +
> > > > +		/* D4 */
> > > > +		led_lan: lan {
> > > > +			label =3D "tp-link:white:lan";
> > > > +			gpios =3D <&gpio 16 GPIO_ACTIVE_HIGH>;
> > > > +		};
> > > > +	};
> > > > +
> > > > +	gpio-export {
> > > > +		compatible =3D "gpio-export";
> > > > +		#size-cells =3D <0>;
> > > > +
> > > > +		gpio_usb_power {
> > > > +			gpio-export,name =3D "tp-link:power:LTE";
> > > > +			gpio-export,output =3D <0>;
> > >
> > > Sure about the 0?
> > >
> > > > +			gpios =3D <&gpio 4 GPIO_ACTIVE_LOW>;
> > > > +		};
> > > > +	};
> > >
> > > Please replace gpio-export by a gpio-hog. Either look at recently add=
ed devices or at https://patchwork.ozlabs.org/patch/1141057/
> > >
> > > Note that in this case I would call the node "lte_power" or "power_lt=
e" instead of referring to the USB, but that's a matter of taste.
> > >
> > > > +
> > > > +	keys {
> > > > +		compatible =3D "gpio-keys";
> > > > +
> > > > +		/* SW2 */
> > > > +		reset {
> > > > +			label =3D "Reset button";
> > > > +			linux,code =3D <KEY_RESTART>;
> > > > +			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
> > > > +			debounce-interval =3D <60>;
> > > > +		};
> > > > +
> > > > +		/* SW3 */
> > > > +		rfkill {
> > > > +			label =3D "RFKill button";
> > > > +			linux,code =3D <KEY_RFKILL>;
> > > > +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> > > > +			debounce-interval =3D <60>;
> > > > +		};
> > > > +	};
> > > > +};
> > > > +
> > > > +&uart {
> > > > +	status =3D "okay";
> > > > +};
> > > > +
> > > > +&spi {
> > > > +	status =3D "okay";
> > > > +	num-cs =3D <1>;
> > > > +
> > > > +	flash@0 {
> > > > +		#address-cells =3D <1>;
> > > > +		#size-cells =3D <1>;
> > > > +		compatible =3D "jedec,spi-nor";
> > > > +		reg =3D <0>;
> > > > +		spi-max-frequency =3D <10000000>;
> > > > +
> > > > +		partitions {
> > > > +			compatible =3D "fixed-partitions";
> > > > +			#address-cells =3D <1>;
> > > > +			#size-cells =3D <1>;
> > > > +
> > > > +			uboot:	partition@0 {
> > >
> > > There is a tab between uboot and partition. Replace by space ...
> > >
> > > > +				label =3D "u-boot";
> > > > +				reg =3D <0x000000 0x020000>;
> > > > +				read-only;
> > > > +			};
> > > > +
> > > > +			partition@20000 {
> > > > +				compatible =3D "tplink,firmware";
> > > > +				label =3D "firmware";
> > > > +				reg =3D <0x020000 0x7d0000>;
> > > > +			};
> > > > +
> > > > +			art: partition@7f0000 {
> > > > +				label =3D "art";
> > > > +				reg =3D <0x7f0000 0x010000>;
> > > > +				read-only;
> > > > +			};
> > > > +		};
> > > > +	};
> > > > +};
> > > > +
> > > > +&eth1 {
> > > > +	mtd-mac-address =3D <&uboot 0x1fc00>;
> > > > +	mtd-mac-address-increment =3D <(-1)>;
> > > > +};
> > > > +
> > > > +&eth0 {
> > > > +	status =3D "okay";
> > > > +	phy-handle =3D <&swphy4>;
> > > > +
> > > > +	mtd-mac-address =3D <&uboot 0x1fc00>;
> > > > +	mtd-mac-address-increment =3D <1>;
> > > > +};
> > > > +
> > > > +&wmac {
> > > > +	status =3D "okay";
> > > > +	mtd-cal-data =3D <&art 0x1000>;
> > > > +	mtd-mac-address =3D <&uboot 0x1fc00>;
> > > > +};
> > > > +
> > > > +&usb0 {
> > > > +	#address-cells =3D <1>;
> > > > +	#size-cells =3D <0>;
> > > > +	status =3D "okay";
> > > > +
> > > > +	hub_port: port@1 {
> > > > +		reg =3D <1>;
> > > > +		#trigger-source-cells =3D <0>;
> > > > +	};
> > > > +};
> > > > +
> > > > +&usb_phy {
> > > > +	status =3D "okay";
> > > > +};
> > > > diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/l=
inux/ath79/image/generic-tp-link.mk
> > > > index 5519e9c960..78d7810f29 100644
> > > > --- a/target/linux/ath79/image/generic-tp-link.mk
> > > > +++ b/target/linux/ath79/image/generic-tp-link.mk
> > > > @@ -393,6 +393,16 @@ define Device/tplink_tl-wr810n-v1
> > > >  endef
> > > >  TARGET_DEVICES +=3D tplink_tl-wr810n-v1
> > > >
> > > > +define Device/tplink_tl-mr6400-v1
> > > > +  $(Device/tplink-8mlzma)
> > > > +  ATH_SOC :=3D qca9531
> > > > +  DEVICE_MODEL :=3D TL-MR6400
> > > > +  DEVICE_VARIANT :=3D v1
> > > > +  TPLINK_HWID :=3D 0x64000001
> > > > +  DEVICE_PACKAGES :=3D kmod-usb-core kmod-usb2 kmod-usb-net kmod-u=
sb-net-rndis kmod-usb-serial kmod-usb-serial-option
> adb
> > >
> > > You can remove kmod-usb-core, kmod-usb-net and kmod-usb-serial, as th=
ose are dependencies of the other packages.
> > >
> > > Since this is a port from ar71xx, you should add a SUPPORTED_DEVICES =
entry.
> > >
> > > Best
> > >
> > > Adrian
> > >
> > > > +endef
> > > > +TARGET_DEVICES +=3D tplink_tl-mr6400-v1
> > > > +
> > > >  define Device/tplink_tl-wr810n-v2
> > > >    $(Device/tplink-8mlzma)
> > > >    ATH_SOC :=3D qca9533
> > > > --
> > > > 2.23.0
> > > >
> > > >
> > > > _______________________________________________
> > > > openwrt-devel mailing list
> > > > openwrt-devel@lists.openwrt.org
> > > > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> > >

--=-=SpdGpZyb0c6P34=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2A62UACgkQoNyKO7qx
AnASBRAAxIl+dpREW+jzocFeXLnkPCEGD9jFB3FEWyMNXvi2n9L0F7nFOgxnhFkS
Qb4mfYZpoHNqsSEDXgubh9+oQrBikb4KTMOIfuf4GQ+E7adfIvPWJ+dBh+ig5ADJ
CPAd77GABl/w3jibZP+HAfITbFUORW0aymh7Yc1V+/snP58wLQwQH7lWm5jSCAoK
g1+OAKwwDwYmjFlfY9H3of/gcfeCCNu7qDcuqAmtDqzk+NtBArvM4E7ho9ABohw0
SfG+e6LPmhgC6W39SzvxF5piUPoqSDFZP5MzGRh89WECw8VldMjDrnzKmdjT3/G3
Ap7YBRhUQJt61fW1Ed6bSpVTVtzCxjVcssLkucHDb5M0oJv9CGpdsBTsbSuxNinu
lzy978dgelSbKBPjTpI0CvENfs41j4MalrJi1yLUGcblwfKsO5SCrvO1BHyGJE9Z
32KU91ANNa0UGPqsaaRWkMMxNh2L2DLdidZhQiMnJUKbGtoBIOaiBUq8RugJGkyp
VHKY6MOlDXyuN2PzuIAVQm8bIlTaH/J/0JI/QXAT8toE2JY57huNALdZDX6cVm25
jg0j+/e5FPCO0I1EaVtnt6JCqROYF32zdVcQta4hdEZ/4rCHmlxLQqQ+L8lb3skp
8qUgFDAyYdDOdHjMlgJ2/vvrght0oDy3y3uY+EbR2CwgEGU3rZg=
=SH9A
-----END PGP SIGNATURE-----


--=-=SpdGpZyb0c6P34=-=--



--===============1865378278466920887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1865378278466920887==--


