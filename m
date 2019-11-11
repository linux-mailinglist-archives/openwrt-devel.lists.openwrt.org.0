Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC496F72D8
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 12:13:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FHuXn6G8bSTTLkgi1fX6M+JjBHJGPy9uNq+onrcOYzY=; b=bw4NtrSNlNUFd14+HGFViQCW+
	1bKr+y73a5G5Mnt0/HgIay/U2/w/C1/tkxjAektlxDWuxoeMkTD3TanSmVtHTxdPiBAuCk9JYR7gy
	Gkc5I+wYmOl4tuZZ+M76rZzZylLJfjWzYVXlrPTQ8I3XIP/K3XmWVW5LAtzAGs+BnCZ7TWrP5JREH
	4wAQRyhoAqc1+styCrWFOBoFuf/mJtMiGZpbL0VimlEQT+Zcw6AgAwgpdKGn3I6rvGrbZEYcEw2Mq
	lzU+gDi80/3Fyen60is6FXO/baK+Tg4gK/ERIpgSTGtAaTPWZcxLTaRPMUOyXv426ufkfTOvwVjZ0
	Wn9sftagA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU7dG-0005x2-8O; Mon, 11 Nov 2019 11:13:18 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU7cp-0005wS-K5
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 11:12:54 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MCsDe-1icxJP1oxM-008ptf; Mon, 11
 Nov 2019 12:12:47 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
In-Reply-To: <20191109135320.25020-1-fercerpav@gmail.com>
Date: Mon, 11 Nov 2019 12:12:47 +0100
Message-ID: <010d01d59880$f2d30850$d87918f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFlRFxqn6fDMSD1VqGll6s+n+BPMAHHmw79qFg3sVA=
X-Provags-ID: V03:K1:BJFHlqOPknvmYjl/UDSz1Q6UiMomoIgK45Y5XsyScxrds53CeWw
 d/sNbp/mTbzJR37uq1T8f+InPWJ8dYEajSuZjaE//VNvXqGMZGDyldDUFvKmzcI6tggjOSu
 dsKI6ouYOo0YnnKQWDZon+BJXpKIjCebtPggrtdyHtlDbDmTZP4Z5v9Sc4/lBqKkPMtLenr
 o+L1kyNL5x0IL8RUaHW1Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6Tsb0fhP/bg=:mFM5F16Vay7HT6c3/UXVgR
 eTMaMDiz7fNkMrgFY1PuRV8AekfUnir4H0Y93MZvc3kWgEfz5OF02i58JgzuJwLbGofVmBlCa
 bDi0hVcrzvbpca+3Bv2azBVwax9ieHYPyeidtAzlmjryblfkwd6pb9T0dxpvzNdMcv94lGYsF
 SaWWWoB0wheP92aLWab43wX+WwHyYz6Ro4JM+6ydxn4giUuU3CznQ4nNdDHbeOA8tncsbZeyU
 H1OEwlX6pMisvjEMHlEtqaZRgXA3ScOyaw4OFH3coXv9jOym6jR3gYrRjkbJmsO+QUkKVDB66
 SsK+XbqkHmpq+2/ta9AO4zPPMQ8spvEpJmPym4R5Q3lIxLFC0pALzXd1XRDCHbfx983Kif30D
 9h2TBnwDU+XfYlBCWx2pgS3nz0MKWWEAovtYjSVH+9Mqn6CqlxyhIgyAICxVj2aJrSTE6WzBK
 IJ8IGTdziTDa+71PkagHXg7nQpK0UTgtVfZBSyV/vYWkKhZNnNzS8z4kXYzb+0jkwyuhaEzaN
 QO5kwSHCipnLwCmDRygGmAUskUxxAeIb0XjH4qx315/axTocAW/5R2OUxl0xDBegp2fUi4ah9
 y73qiybaOXPBTfqkHAgcBBAChosMRS6PVxJD0DAfEVZAFSz/dwFcg5ITEPELymi+qVvd0nQYl
 8gEHCXMYgzJQv9ZwTQrsdlQ3mQ/1RRI2gi2lxum5fGUDukbzBnZoKd+a8WTIcDRNJ7QDVsCxp
 najbOgMq5sh/p+9KBtKw6wVj+J80+oY8lLZNh26owa4AT2zkUJ+V3J+zZk4Yyd1qTghd6WuQY
 xV14pjGxeP1IS425ju8n49lz32S0PpshmdEFGhxGEbaaJC6aHTCHknNeLFlltu++j05pSprP2
 /AvCwZYDkBmMM/atAtyY7aY9yyr/MXn5BrbU+Dm8Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_031252_222627_D61DC16F 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Cc: tmo26@gmx.de
Content-Type: multipart/mixed; boundary="===============7003885114047686786=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7003885114047686786==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=z0eM0VUfUkZ+1P=-="

This is a multipart message in MIME format.

--=-=z0eM0VUfUkZ+1P=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

[...]

> +	aliases {
> +		led-boot =3D &power_amber;

Please include "led_" prefix for the labels, so &led_power_amber in this ca=
se.

> +		led-failsafe =3D &power_amber;
> +		led-running =3D &power_green;
> +		led-upgrade =3D &power_amber;
> +	};
> +

[...]

> +	leds {
> +		compatible =3D "gpio-leds";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&switch_led_pins>;
> +
> +		power_green: power_green {

As stated above, change the _label_ to include a "led_" prefix, so this bec=
omes "led_power_green: power_green {". Same for power_amber below.

> +			label =3D "dir-615-e4:green:power";

Sorry for causing confusion here. I have had a look into ar71xx mach files =
and they consistent use "d-link" as vendor for the led labels. Thus, I thin=
k it makes more sense to revert that to the previous version "d-link:green:=
power".

> +			gpios =3D <&gpio 6 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		power_amber: power_amber {
> +			label =3D "dir-615-e4:amber:power";
> +			gpios =3D <&gpio 1 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		wps {
> +			label =3D "dir-615-e4:blue:wps";
> +			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan1 {
> +			label =3D "dir-615-e4:green:lan1";
> +			gpios =3D <&gpio 13 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan2 {
> +			label =3D "dir-615-e4:green:lan2";
> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan3 {
> +			label =3D "dir-615-e4:green:lan3";
> +			gpios =3D <&gpio 15 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		lan4 {
> +			label =3D "dir-615-e4:green:lan4";
> +			gpios =3D <&gpio 16 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wan_amber {
> +			label =3D "dir-615-e4:amber:wan";
> +			gpios =3D <&gpio 7 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		wan_green {
> +			label =3D "dir-615-e4:green:wan";
> +			gpios =3D <&gpio 17 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wlan {
> +			label =3D "dir-615-e4:green:wlan";
> +			gpios =3D <&ath9k 1 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};

At some point, we started to put ath9k leds into a node of their own:

	ath9k-leds {
		wlan {
			label =3D "dir-615-e4:green:wlan";
			gpios =3D <&ath9k 1 GPIO_ACTIVE_LOW>;
			linux,default-trigger =3D "phy0tpt";
		};
	};

> +	};
> +};
> +
> +&spi {
> +	status =3D "okay";
> +	num-cs =3D <1>;

Please add empty line after status.

> +
> +	flash@0 {
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <33000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			uboot: partition@0 {
> +				reg =3D <0x0 0x30000>;
> +				label =3D "u-boot";
> +				read-only;
> +			};
> +
> +			nvram: partition@30000 {
> +				reg =3D <0x30000 0x10000>;
> +				label =3D "nvram";
> +				read-only;
> +			};

Remove the node labels for the two partitions above, as they are not used a=
nyway (but not the label properties).

> +
> +			firmware: partition@40000 {
> +				compatible =3D "denx,uimage";
> +				reg =3D <0x40000 0x3b0000>;
> +				label =3D "firmware";
> +			};
> +
> +			/*
> +			These two partitions are defined by CameoAP99 layout
> +			but not needed for vendor firmware: MAC address is
> taken
> +			from "nvram", language pack can be flashed separately.
> +
> +			mac: partition@3b0000 {
> +				reg =3D <0x3b0000 0x10000>;
> +				label =3D "mac";
> +				read-only;
> +			};
> +
> +			lp: partition@3c0000 {
> +				reg =3D <0x3c0000 0x30000>;
> +				label =3D "lp";
> +				read-only;
> +			};
> +			*/

Well, we still do not know whether they are present in vendor firmware. I'm=
 still skeptical about removing them.
Nevertheless, I won't prevent you from doing that, but please remove this c=
omment from the DTS then and put an extensive description into the commit m=
essage instead.

> +
> +			art: partition@3f0000 {
> +				reg =3D <0x3f0000 0x10000>;
> +				label =3D "art";
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	/* ethernet MAC is stored in nvram */

Remove those comments. You are setting up stuff in 02_network, which are re=
latively standard, so I think extra comments are not necessary.

> +};
> +
> +&eth1 {
> +	status =3D "okay";
> +
> +	/* ethernet MAC is stored in nvram */

Remove comment.

> +};
> +
> +&pcie {
> +	status =3D "okay";
> +
> +	ath9k: wifi@0,0 {
> +		compatible =3D "pci168c,002b";
> +		reg =3D <0x0000 0 0 0 0>;
> +		qca,no-eeprom;
> +		/* LAN MAC is supposed to be used for wifi */

Remove comment.

Don't forget to split the 01_leds definitions again ...

Best

Adrian=20

--=-=z0eM0VUfUkZ+1P=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3JQisACgkQoNyKO7qx
AnDWsxAAhXlG95j1ZFI42/f5UKZdaLEfVkM9bJZXb5ZzqE1cZ00dKtd+4E3AHbGs
FqwQ0TPA+oVyYHNuDr36TSRE0TMasmhrY8Okc4FExkasLxd+DzFrlJv2tN80sG4X
LGMO673pgrKoTfEeioVjgtfBmqRVzcF4M4ZnlYL8xkfLw9nJ/WWBwI2S6N9X8L48
RG1ZWPNtEuhmq+hU8+6feVnxku66pX26u4ZHEBSSoXi8fZUiVu6Gvt1XLQ15SRUJ
KC/wUO5wihmTNRlnCx4p26yEFcev+74suQXh98BCkXZp4ula76l0q0adWc6UaYx1
CTqPMyZUZJpFCFhW3zOnsiM5j3NxPdVDTkoDe8F4L5Fuoz6pWmvZPz8sR8Q2f5aM
K+ej8UfK0SMXVQhQwgSebq/DyM52Ow7Rl11Vepb3XsjK5aut6m2cetpW9Uwmr0cQ
8bUINdBYxnxv9GQR7VJC1YPL6bKCrxUkFS1XFyHhD7FA9TPxN7IrzNAF+ZPj2OsB
FLPwW7a6R12KD+C7QLRdIgnopFvYRI5srMRRDUvrok97n5KlUxGGZg9HqJyOY1im
N56QoYSloGTzw2Z6dOHej11UZ/OH33xV2LLBomQkCc/00mJWrHPZ1hdIqCfbU/hO
/+Wh7aAONtC800n9XhfpvvxPoo7izaaGBTvXUIBiq/v9psi1CwY=
=g+Ld
-----END PGP SIGNATURE-----


--=-=z0eM0VUfUkZ+1P=-=--



--===============7003885114047686786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7003885114047686786==--


