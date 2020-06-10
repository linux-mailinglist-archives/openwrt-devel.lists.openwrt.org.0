Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6521F5ED3
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 01:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5GF1IG066dr05Fs4ZRmWT48kSch+eWqEki0oOe16vf8=; b=bDA7/3YYUp4bY7fLAjUP7L36b
	DQl9rCZLDrhJ4gOr8OSBl62UFDMyVAMEOpxchjMAwQ3alqG6RGoeOogt6l+Sv1u6N7REJxbWWnhiF
	OiE5O0ZxZj4o+4Li5ADE7R+fIemhS/d+04BzkSTtdrwisYCzp/rzSoxNBgtc8U/QoPYkqSyF1XvWU
	Y1+qeymx7iXq/0mDbypjWb0ZQxzsF+PRAN4au/p2YrUJZQpo+RxdZLufGAWoQGaVA13HSTGPCesj2
	CIXVg9SU4TDyfSesy53WjbL+xO3JG56rOq5gky1E9E4vVlUMIEJSdqMJvzPd4Q1bec+8iMe2yQK8V
	ywgRevsaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjAKt-0002YO-FH; Wed, 10 Jun 2020 23:40:47 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjAKm-0002Xg-7X
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 23:40:42 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N5mOZ-1iqU4Y3TAp-017FsX; Thu, 11 Jun 2020 01:40:25 +0200
From: <mail@adrianschmutzler.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>, <openwrt-devel@lists.openwrt.org>
References: <20200610201502.4175358-1-stijn@linux-ipv6.be>
 <20200610201502.4175358-4-stijn@linux-ipv6.be>
In-Reply-To: <20200610201502.4175358-4-stijn@linux-ipv6.be>
Date: Thu, 11 Jun 2020 01:40:25 +0200
Message-ID: <00e501d63f80$84194260$8c4bc720$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQLXTnYVyWoE0dZmwKhgHW3lfn3OZwLMkU0Hprn80KA=
X-Provags-ID: V03:K1:EDGoulAviF1EycCVtvEE4VCgQVQuuaBHCyy4GLnP2Y5S3ygVUSg
 R9XoY/YYsbC85fMuFdezPiI11DYeEyy8wYdk+tpEDy/GVqxtr0zxn+VXO51SeT9bZVq9+7R
 Widb9uWGvRvVz/03QjFbukiEybCERbOzfMME75sAOz+7+CQHl/vh6BEBy/ZnCvmOxADzXRy
 ADfX9i0AhD0GUc3f0gkqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iNe6wYeMEfo=:7WfA8nBkDLY7MEhiXsB/Kb
 6PxH6wWLaaSmlPMuB1BWUrjYc5FwF++AxcyQMTHjmDw7xEAaywNQwbqnbBAh/oSpDCNIcUrP3
 Ks4j6aLchRHbz1Vr8jtoX+3D1F6sigMckO2CpqcDd8e9AViYJJRi8NmZUCDe8nG0wXdOx4eYf
 dSEaNtYLirjaEHDRSzonSU8HHklIFoPCcZNx9zgYd/cdUY2gI+y6wZeNvQggIjR+b+qE0QKAf
 IM3L2DtuH+o+eJ9nF5+Eh1oZU5tLOaQMCcAy/BhmPeBsSy3xZUWK4QRgaczx4/wdXyWuu12OK
 yAeupTyjXdcYKyZD7hv03nnBA+hEofcenKyu/s2Golln6wChXCGeO5ssORNgRwyseRNcMRvDM
 rl11YYQ6/b8ZvDfDuY74XeRMFOR1EgnIq0aO3OLO4QdO8xkjqJoJi0G8U6ImzSzIp4t3Ka2v6
 gXEvSY4O6x7FS+nhTRVi3+0z7Jz3cIrHpYNv1EG6BzeFu8FjoFsKoLjt6srp/G+qWp0JP897L
 XyrBLeVgOhVuzTcaQELtt8exPvhoDeq671IY7VeBVbq58CknhMSmKw/wGaAL/Wvi/yL2hfYJn
 jSjiOY/9PDCVTv/h4OSbt9BW0z3kLX/G/ETAUkx1d8O3wJZpstZZczNMPgaI8yqAl8uQRxwJt
 mU8p8kwhh4NkofuluzwIQffr6tI8I0ZBl9DbA9Q2rbJSwuFrxupcBB0+feyi4VOlJNu5UK7Av
 M6ucY7lgDAnkIi5KoUlGcLysWTNdmZQu7olrsmki8RN1cMeG+E5uWjkBMIYuyzEX8hV7ZagVL
 7GNt0kWO4j3/Hya/ghdPRcH+xel+2n7urOnJGWcZ3/2qemMgdZWeO3F+lEEf33/OjTtbliu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_164040_561927_999CD18D 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: Re: [OpenWrt-Devel] [PATCH v2 3/3] ath79: add support for D-Link
 DAP-2695-A1
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
Content-Type: multipart/mixed; boundary="===============7147173262285648526=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7147173262285648526==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=HA8+CLi5O3xRz2=-="

This is a multipart message in MIME format.

--=-=HA8+CLi5O3xRz2=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

a few minor comments below.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Stijn Tintel
> Sent: Mittwoch, 10. Juni 2020 22:15
> To: openwrt-devel@lists.openwrt.org
> Cc: mail@adrianschmutzler.de
> Subject: [OpenWrt-Devel] [PATCH v2 3/3] ath79: add support for D-Link DAP-
> 2695-A1
>=20
> Hardware:
> * SoC: Qualcomm Atheros QCA9558
> * RAM: 256MB
> * Flash: 16MB SPI NOR
> * Ethernet: 2x 10/100/1000 (1x 802.3at PoE-PD)
> * WiFi 2.4GHz: Qualcomm Atheros QCA9558
> * WiFi 5GHz: Qualcomm Ahteros QCA9880-2R4E
> * LEDS: 1x 5GHz, 1x 2.4GHz, 1x LAN1(POE), 1x LAN2, 1x POWER
> * Buttons: 1x RESET
> * UART: 1x RJ45 RS-232 Console port
>=20
> Installation via stock firmware:
> * Install the factory image via the stock firmware web interface
>=20
> Installation via bootloader Emergency Web Server:
> * Connect your PC to the LAN1(PoE) port
> * Configure your PC with IP address 192.168.0.90
> * Open a serial console to the Console port (115200,8n1)
> * Press "q" within 2s when "press 'q' to stop autoboot" appears
> * Open http://192.168.0.50 in a browser
> * Upload either the factory or the sysupgrade image
> * Once you see "write image into flash...OK,dest addr=3D0x9f070000" you
>   can power-cycle the device. Ignore "checksum bad" messages.
>=20
> Setting the MAC addresses for the ethernet interfaces via
> /etc/board.d/02_network adds the following snippets to
> /etc/config/network:
>=20
> config device 'lan_eth0_1_dev'
>         option name 'eth0.1'
>         option macaddr 'xx:xx:xx:xx:xx:xx'
>=20
> config device 'wan_eth1_2_dev'
>         option name 'eth1.2'
>         option macaddr 'xx:xx:xx:xx:xx:xx'
>=20
> This would result in the proper MAC addresses being set for the VLAN
> subinterfaces, but the parent interfaces would still have a random MAC
> address. Using untagged VLANs could solve this, but would still leave tho=
se
> extra snippets in /etc/config/network, and then the device VLAN setup
> would differ from the one used in ar71xx. Therefore, the MAC addresses of
> the ethernet interfaces are being set via preinit instead.

I liked the comment about the MAC addresses that was in the commit message =
before. While I see that you have adjusted the addresses based on our discu=
ssion, the fact that three of them are the same is quite helpful for somebo=
dy looking things up, so I would add it back here, e.g.

"
The bdcfg partition contains 4 MAC address labels:
 - lanmac
 - wanmac
 - wlanmac
 - wlanmac_a
=20
The first 3 all contain the same MAC address, which is also the one on the =
label.
"

>=20
> Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
> ---
>  .../ath79/dts/qca9558_dlink_dap-2695-a1.dts   | 178 ++++++++++++++++++
>  .../generic/base-files/etc/board.d/02_network |   6 +
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
>  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
>  .../etc/uci-defaults/09_fix-checksum          |   8 +
>  .../base-files/lib/preinit/10_fix_eth_mac.sh  |   4 +
>  target/linux/ath79/image/generic.mk           |  33 ++++
>  7 files changed, 237 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
>=20
> diff --git a/target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
> b/target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
> new file mode 100644
> index 0000000000..8d8c796ed8
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
> @@ -0,0 +1,178 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca955x.dtsi"
> +
> +/ {
> +	compatible =3D "dlink,dap-2695-a1", "qca,qca9557";
> +	model =3D "D-link DAP-2695-A1";
> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,115200n8";
> +	};
> +
> +	aliases {
> +		led-boot =3D &led_power_red;
> +		led-failsafe =3D &led_power_red;
> +		led-running =3D &led_power_green;
> +		led-upgrade =3D &led_power_red;
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_power_green: power_green {
> +			label =3D "d-link:green:power";
> +			gpios =3D <&gpio 23 GPIO_ACTIVE_LOW>;
> +			default-state =3D "on";
> +		};
> +
> +		led_power_red: power_red {
> +			label =3D "d-link:red:power";
> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wifi2g {
> +			label =3D "d-link:green:wifi2g";
> +			gpios =3D <&gpio 13 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy1tpt";
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;

I think address-cells and size-cells can be just dropped here.

> +
> +		reset@0 {

Based on the common use in ath79, this would be just "reset" instead of res=
et@0 (like for the LEDs).

> +			label =3D "reset";
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 17 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&spi {
> +	status =3D "okay";
> +	num-cs =3D <1>;
> +
> +	flash@0 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "mx25l12805d";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <25000000>;
> +		partitions {
> +

The empty line was supposed to be _before_ "partitions {", not after, so th=
e block is visually separated. :-)

Best

Adrian=20

--=-=HA8+CLi5O3xRz2=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7hb2QACgkQoNyKO7qx
AnDV1BAAx98Ys9ss7wqmibg4/TpmxJbSb0rfd9AvhV6EeT4mKOiFheZ7Mg2RVxT4
AQki7v0j2LAXofW0LR/y+6bNnzDvjKtxLpaYIBodv37IDWelZl8EWOrfFLbiSW9q
FjGcpmTYT9JwUjQkYHcIYUu5KRf+0c6QMn/LbshbsPwAmLQ1XvXHr+eThuj4ao5Z
QLnGmc/bbjQG2axjcRVeE7QcMGIzb2sr0kBuWmD9j62l3xO9iwltfGOFJ4+Pikqf
SVscK6MwEEJOPvwd6qqA/FjALkLCasbObMQOKdorMLnquDGLiV81K3QqO3GUu20N
QEfaZNCSLcF2e/ld2tc5u4tdfPqkpx3Z3Y5CsviTmx1roZazVf++29r80inyBvDX
YHI+l9eavqP+kg1QA1SYldZK1iPsbaFqqRSoqdq1hD26oNWmHCN2V/Cbzps3DJ+G
XePtrnbAqz51jT7mDtov3jiPhzBt05Ix03ZxSJ8E7K9UwrakjuXdfVTxmSZDCxdI
sTxsIyK6OUYZqok/8PGUu4xyws4+CfaMUrROPXDJYFOJMqh6ye6TYjXf41D0hqle
2e2LIydPmjPcei/Pj5PnMRvZZxHvbMtj9qqSXmGsOo6i8vmEOd7rc1dYRwclEa4k
FhUjznsX/cSRSwDLTjgjuzLuzegJT0sa4bPcyDThkC95Q6eFog8=
=zKMB
-----END PGP SIGNATURE-----


--=-=HA8+CLi5O3xRz2=-=--



--===============7147173262285648526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7147173262285648526==--


