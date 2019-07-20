Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF946F095
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jul 2019 22:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hJnPEN/vOLGzC+4/P5fKZnJqHvqEstEyiEj2O1YaxrY=; b=iMjoabWaGcWOchVRT/d75cxMM
	RVDQu/LjSV8uDnRo9XJue81BQO2eCZCRJyJXZ3vjsURitHvrxVhfL45n2ZCHB8AZoHZYGNB6Z6033
	Rmvx7FPFu/cMuMQUsEtZNtvgJZI6IzmtXmtBmWfuaH0hFnx3WukFyhoZhvZeJRvsZxBWQEWf19izM
	K/upKoVsWt/eb3hFKro5Jzvyr5BEuDtPHMOcmT46fAPQhvlvJz4UktnSvLj9WO/Wtuv6ISq0u4R8W
	Hw6KFVqxLQTdLJ9XtrXN/1yd51OgNjxOkFqii8CxCrHVKZSGFNhfV3bL6D5PVgZ3F9MjvFGA68aou
	nXwuT3+nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hovlx-0005ir-Lk; Sat, 20 Jul 2019 20:16:01 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hovlj-0005iO-7K
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jul 2019 20:15:49 +0000
Received: from desktop ([188.194.32.21]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MKuGD-1i9UUC14Pt-00LBjk; Sat, 20
 Jul 2019 22:15:41 +0200
From: <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>,
 <openwrt-devel@lists.openwrt.org>
References: <32dabb5c-00ec-8793-17e1-9f946ff4f6a0@birger-koblitz.de>
In-Reply-To: <32dabb5c-00ec-8793-17e1-9f946ff4f6a0@birger-koblitz.de>
Date: Sat, 20 Jul 2019 22:15:40 +0200
Message-ID: <007e01d53f37$e7407510$b5c15f30$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIZjipF4endZsRPYgt7/qFrFYr2aaZLToew
Content-Language: de
X-Provags-ID: V03:K1:09eoceNpWHZmDKkPggw+ukg7cRx5p7hh0l/g5qN4D3lrb6slShq
 eZJBNfqGn1/K+QnjPDMuohLpndkne1N7Rm0OD5uzADgcyCzQXfxJG5kTx5LDRmtVSdnMsd0
 zHvlTKjqMHSsH00PK9aiMwe+Vbl2V138h8aCxKCMobZ69r4jUyt9eEmujEjxceXvqjV6f2u
 iEbkek+hTwEgdSdSwY55g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2Ojb/HCZ/Z4=:SuUuCukOt6L8hYgNrmnDLt
 e4a7YMR0jUJ7mpEGnDtUaXH11aKNFLQ9eS68H01iNh5yrVzo8vS/jFKu3Th4SRXz4amR0sOtx
 Qa3zkvBu6ISIw6mfcMafTL7TZ1NnZdYoPMvomZZNoxEbKhVJQpDJSZi5shRvL5NmkRvyFhEcf
 Y89wfV4Yr5SzAnmVguNAkND9Du/42Fw/BCP2JI3JwazHoaDwSSyjec8hRRlGvfbpZozRDpz3U
 65Y3kz2L9lcLMk0TtyPlZUJZSWDg8Oq/prl/7/y0ISa+5Ek7eriNAfBdQ0TVFwsPH+5GvNlYz
 sTd6WTNhKK9waSwj1Bq9V2HIihEl48FEAYizQTI5mB31KNEISz243yWpKgwX9sja3BizK5TDe
 9YRvcmt19AlZvv8XHuRZptzqOqxpIwQ+ZWunXHS8jNWVtqHbN8Bgr8uPVIxwkcZeT+565lwZW
 2qD50Ft2ZsT6IaUEBMuops5MO9072oPrWZKLAHh6+VaI0eK1jAHtJOH5s2y2Vc9AsqjxsiaWK
 ioTqRetjw/h6+FDYe/Q9UTrPN+uSmAMsCrhW4pY0Uk4fiSlOOvBOUpCY3M4Gr7PzVJKh/nmzO
 mRCFjDLEU4kMch8BPxdCqVnE28J1EkQ4zbzfTClThkTIsvyDqXL0Jb0IFzP5LT7EmMEejNsvk
 iwwPwa03mvPHBp4KRFIO58+7QOr4gkLd6eLUJUGKVJhg3FIbsZky0rlHav/3fy4Mi+xfNzAi0
 f27cZjYI8jXnrdSjYCllLT8rrQ+HPXYUZv2KxrRkzGEn8v4Ip/KLwsGcn0w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_131547_564360_2C0AAA61 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Asus RT-AC85P
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
Content-Type: multipart/mixed; boundary="===============6721890714063317690=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6721890714063317690==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=Si5UQnxXI4NSpd=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=Si5UQnxXI4NSpd=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Birger Koblitz
> Sent: Samstag, 20. Juli 2019 19:36
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Asus RT-AC85P
>=20
> ramips: add Asus RT-AC85P
>=20
> SoC:	MediaTek MT7621AT dual-core @ 880MHz
> RAM:	256M (Winbond W632GG6KB-1)
> FLASH:	128MB (Macronix MX30LF1G18AC-TI)
> WiFi:	- 2.4GHz MediaTek MT7615N bgn
> 	- 5GHz MediaTek MT7615N nac
> Switch: SoC integrated Gigabit Switch (4 x LAN, 1 x WAN)
> USB:	1 x USB 3.1 (Gen 1)
> BTN:	Reset, WPS
> LED:	- Power (blue)
> 	- 5Ghz (blue)
> 	- 2.4GHz (blue)
> 	- Internet (blue)
> 	- 4x LAN (blue)
> 	(LAN/WAN leds are not controllable by GPIOs)
> UART: 	UART is present as Pads marked J4 on the PCB.
> 	3.3V - TX - RX - GND / 57600-8N1
> 	3.3V is the square pad
> MAC:	The MAC address on the router-label matches the MAC of
> 	the 2.4 GHz WiFi.
> 	LAN and WAN MAC are identical: MAC_LABEL+4
> 	5 GHz WiFi MAC: also MAC_LABEL+4

That's a nice idea. We should encourage adding similar description for othe=
r device support commits, too.

Question: So, LAN MAC, WAN MAC AND 5 GHz MAC are the same?

> +	asus,rt-ac85p|\
>  	dlink,dir-860l-b1|\
>  	elecom,wrc-1167ghbk2-s|\
>  	elecom,wrc-1900gst|\

Please move the block so sorting of blocks keep correct.

> @@ -532,6 +533,9 @@ ramips_setup_macs()
>  		lan_mac=3D$(macaddr_setbit_la "$lan_mac")
>  		wan_mac=3D$(mtd_get_mac_binary factory 32772)
>  		;;
> +	asus,rt-ac85p)
> +		wan_mac=3D$(mtd_get_mac_ascii u-boot-env et1macaddr)
> +		;;

This should be before asus,rt-n56u.

Despite, if WAN_MAC and ethernet MAC address are really the same, you techn=
ically would not need to set eth0.2 (wan) MAC address again.
However, if you completely remove the case here, you will fall into default=
 and set wrong addresses.
So, one could just set the wan_mac anyway or just add an "empty" case:
> +	asus,rt-ac85p)
> +		;;

...

> +	compatible =3D "asus,rt-ac85p", "mediatek,mt7621-soc";
> +	model =3D "Asus RC-AC85P";

RT instead of RC?

> +	leds {
> +		compatible =3D "gpio-leds";

Add an empty line here.

> +		led_power: power {
> +			label =3D "rt-ac85p:blue:power";
> +			gpios =3D <&gpio0 4 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};
> +		wlan2g {
> +			label =3D "rt-ac85p:blue:wlan2g";
> +			gpios =3D <&gpio0 10 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0radio";
> +		};
> +
> +		wlan5g {
> +			label =3D "rt-ac85p:blue:wlan5g";
> +			gpios =3D <&gpio0 8 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy1radio";
> +		};
> +	};
> +};
> +
> +&sdhci {
> +	status =3D "okay";
> +};
> +
> +&nand {
> +	status =3D "okay";
> +
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +
> +		partition@0 {
> +			label =3D "u-boot";
> +			reg =3D <0x0 0xe0000>;
> +			read-only;
> +		};
> +
> +		partition@e0000 {
> +			label =3D "u-boot-env";
> +			reg =3D <0xe0000 0x100000>;
> +			read-only;
> +		};
> +
> +		factory: partition@1e0000 {
> +			label =3D "factory";
> +			reg =3D <0x1e0000 0x100000>;
> +			read-only;
> +		};
> +
> +		factory2: partition@2e0000 {
> +			label =3D "factory2";
> +			reg =3D <0x2e0000 0x100000>;
> +			read-only;
> +		};
> +
> +		partition@3e0000 {
> +			label =3D "kernel";
> +			reg =3D <0x3e0000 0x400000>;
> +		};
> +
> +		partition@7e0000 {
> +			label =3D "ubi";
> +			reg =3D <0x7e0000 0x2e00000>;
> +		};
> +
> +		partition@35e0000 {
> +			label =3D "firmware2";

Where is firmware1? kernel+ubi?

> +			reg =3D <0x35e0000 0x3200000>;
> +		};
> +	};
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +};
> +
> +&pcie0 {
> +	wifi@0,0 {

Maybe add "wifi0:" here.

> +		compatible =3D "pci14c3,7603";
> +		reg =3D <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x0000>;
> +		ieee80211-freq-limit =3D <2400000 2500000>;
> +		mtd-mac-address =3D <&factory 0x4>;
> +	};
> +};
> +
> +&pcie1 {
> +	wifi@0,0 {

Maybe add "wifi1:" here.

> +		compatible =3D "pci14c3,7662";
> +		reg =3D <0x0000 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x8000>;
> +		ieee80211-freq-limit =3D <5000000 6000000>;
> +		mtd-mac-address =3D <&factory 0x8004>;
> +	};
> +};
> +
> +&ethernet {
> +	mtd-mac-address =3D <&factory 0xe000>;

So, this is the same as <&factory 0x8004>, but stored twice?

> +	mediatek,portmap =3D "wllll";
> +	port@5 {
> +		status =3D "disabled";
> +	};
> +};
> +
> +&i2c {
> +    status =3D "disabled";
> +};
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group =3D "uart2", "uart3", "i2c";
> +			ralink,function =3D "gpio";
> +		};
> +	};
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index 73ded64e74..c1f07ca746 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -115,6 +115,22 @@ define Device/asus_rt-ac57u  endef
> TARGET_DEVICES +=3D asus_rt-ac57u
>=20
> +define Device/asus_rt-ac85p
> +  MTK_SOC :=3D mt7621
> +  DEVICE_VENDOR :=3D Asus

Use all caps as for the rt-ac57u.

Best

Adrian=20

--=-=Si5UQnxXI4NSpd=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0zdmkACgkQoNyKO7qx
AnBDOg/+NOwTbgjusG6qL281aopGvoQDTzuvC8c3AwSfNDRlgYZSvO3AQurnO1Vs
Y4WTJ5yS305sUx4clA3MzVUb9OSh8OFYxP/OSLSD/Wf1i+8DzLpQWnMvoU4o7Jxt
qU0vFilafZHUInhZ/oKeT+4A1O5ZcEquxBPNHKeRRQtWr6HrnAM4n8JeDRxy1iQW
s9PCdqtnpTD7p9ZTRPyaY7Ow5VSVs9KlQFAmC/1wPeZwX5YLkrmRRgJj0nOsqyad
JVtBsiq5Vr4Q0fq+K4JBGutgMHhUkJfOUSgNPXHg7QKSO4RAcLFIxrl0D6IW5DKG
lFjz1+GNfsssJ5TO15FGboDjCzG3SADpGGIjBUDITzb7q3fA+jiqtDeSMUAnkTt/
iu3OIGTJJNaQ4v1VzSeIHgnxML5ifYhHAakz68mQATNfJ0+QDxiN+THbNO4bCPOf
vDoKIhY1yITgh6306b4k/bETGCI1G7jQeUcND/KpqhmomctGXDtmYGfHPI8Z7cVO
ADmAP6JD7aHGpwxJ0DvzDiwuTdz3rYQYIURCuERuZ6PoUljbJd+UuKP4JN/mrakB
KGBLiwBJVJvP1QvIt2m6Nuxwa3G17dZXNmRPVkwCkHrHZaEtN2AIY981rcJanFVE
UYwE/X4JCbqStw1jrgE15TZ4kfQWLMeoTaSiDYb2iuolp1XIWaU=
=jlcS
-----END PGP SIGNATURE-----


--=-=Si5UQnxXI4NSpd=-=--



--===============6721890714063317690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6721890714063317690==--


