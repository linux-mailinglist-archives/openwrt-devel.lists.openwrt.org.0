Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C47F7870
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 17:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gj1VXwuuOTmWTDEZN33xACSfbZaop17dl5bI3xIe6bo=; b=qkmUqEyEOBx+LFHhsktTGUbFw
	EXABlDemYgTYvgXHKkiMDHhx/6Aub9rZcAfHIZoddTtdbT79zpFF7hmI+Vuk2OZ9RPw/3BUDkF9zR
	quaGoJ8yxJe/XOFqqqzpyRP1foyymQpaZtURiOPxhuPPfSpv/5kISS27wuISPXSphcA8Ks25WYcsq
	slxJWqWWQePmN7e8x5dmygQ7YNCSfjiVyeUG016DykhNw4F9JB7eD2a1sNtx0w+VutoNPF22zXX/A
	/rPwFZ4NSUw5HJdaxAOkWmjsCLSDhIse/p9eNAqb4evCtsg/giPZBh5WI4GO/SmrNcNKBgXNRWlrh
	4kzy0imyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUCFj-0004Hn-7b; Mon, 11 Nov 2019 16:09:19 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUCFd-0004HP-6O
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 16:09:14 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MIcqp-1iiGbR3ykv-00EeZw; Mon, 11
 Nov 2019 17:09:09 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <admin@kryma.net>,
	<openwrt-devel@lists.openwrt.org>
References: <20191111154224.1476-1-admin@kryma.net>
In-Reply-To: <20191111154224.1476-1-admin@kryma.net>
Date: Mon, 11 Nov 2019 17:09:08 +0100
Message-ID: <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQDYsPDVGtk9m46CJtJ5e+pqP6kaLKl/79Tw
X-Provags-ID: V03:K1:PHJjSRzN8JJ+SRbw9dnQ6Ybg1Cl7ABjKFxZMJ2JCFw/raMyfP7W
 eYpIFgyaw4Rh9ivU6x3IwV33hKj72M55wE52553Pj3h6SfPt1J6tOctbUmVdDEmLHlBpDS7
 3ANmbSKQCFR0tNX5M7KlySvHmAHNMDSykPW323hqe0FZVE6CoXwneQ+RMjaW2lHhrkCFuTR
 YDnIQ1wXDQYpEt+WMt1WA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ckYuhIlTZbM=:0wALtblZHf+PuwjRVh4hR/
 gep6uTO6iv5+wacYzOs5h1AMLCiqd+NcU0hyGquXr1iOOaOfifLXzXuVk4fmqIgQq7VZ1W11s
 zvOE8Lp4VnMJ6TZqpRq+DgnGBM1B6xmvJH7LehCLNh2bFF0dJgyKdfU9D1gA6RIaAtjOLJA72
 QbuzhutH9iJlf+kub79hoc8adaWT1D2HmRNdmMQoeNavCEBET1lNqRHd74dYa02PWSCNEZnJy
 Dpw7SOT5dTtf4TPIsKAOcMMNOtd7BOt5jVpLcfpIAMQ9EY8/zizRKKTgh5Z7S4rBWFEynC1D6
 W7JLobNcezWnjJaagXWOT5VHkLSVmcuxyaV5C2+Wgi31yGerCtyQT+yN5wt/6eLy5/e803G1r
 1XDagUQhO84HdJXS1oSa/XaqdoaCEQOH83vWTZkCDIQo2BhVA4jbu2BJYkSW0ATgcPH7hGVwX
 Q82KZAC6wRaJ9Ul7z3iOs0tvHAlYhW+4Qw4yNbSfJ8YrVlX/9SSwsFCm1u7GNtsgGbQYN+4hB
 Ycv0MXMkBHsuL7Fp7qigLuOjRfxW+COPEiHsidfdUztBqvlaIQb4PDuK786bDqP36KRnHdnK3
 xgXxiDQxqasjadHEuBUlBcyu6nuG5V+27Z++MQqyT6IhwgjhtahLFqyoRHmy7gZF2kfRjOyaP
 Pk+FctU8JMEIbkJIrH47sWf4xP+nM0koPmPKe/9wY5FoeqFprpIfRDFCMld1WzazcBdVkI6Dw
 GtkHEEivhftIH/6F8HPo9GNyuawWkr7pHGr9F8s/HdTCktdRMmteg/jSUSz5vs5LvdYqCPWR9
 Xv+0X1r7MrB8PkeRdX3mBXh50Ewz739eAI1jExC3hMEqaVxhYK+xeY7qjqrdJLgm0HwHkIjwx
 hIhpq62+R0pag7G6m+3q8RT1lVAHnZAVMrUR5SL/A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_080913_528398_9A6C88A5 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for COMFAST CF-E130N
 v2
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
Content-Type: multipart/mixed; boundary="===============1913459292633538379=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1913459292633538379==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=6d2S0ej2E5sOpE=-="

This is a multipart message in MIME format.

--=-=6d2S0ej2E5sOpE=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> +	aliases {
> +		serial0 =3D &uart;
> +		led-boot =3D &lan;
> +		led-failsafe =3D &lan;
> +		led-upgrade =3D &lan;

Please don't use LAN here, as it will be ambiguous.
For TP-Link CPE devices, we relied on rssi_high for this task, so either us=
e this one or choose "unused".
Please prefix the led label (but not the node name) with "led_", so either =
led_rssihigh or led_unused ...

> +		label-mac-device =3D &eth0;
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&led_rssimediumhigh_pin>;
> +
> +		wlan {
> +			label =3D "cf-e130n-v2:green:wlan";
> +			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};
> +
> +		lan: lan {
> +			label =3D "cf-e130n-v2:green:lan";
> +			gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		unused {
> +			label =3D "cf-e130n-v2:green:unused";
> +			gpios =3D <&gpio 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		rssilow {
> +			label =3D "cf-e130n-v2:red:rssilow";
> +			gpios =3D <&gpio 11 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		rssimediumlow {
> +			label =3D "cf-e130n-v2:red:rssimediumlow";
> +			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		rssimediumhigh {
> +			label =3D "cf-e130n-v2:green:rssimediumhigh";
> +                        // No individual GPIOs matched this LED!
> +		};
> +
> +		rssihigh {
> +			label =3D "cf-e130n-v2:green:rssihigh";
> +			gpios =3D <&gpio 16 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		reset {
> +			label =3D "reset";
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 17 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +	};
> +};
> +
> +&pinmux {
> +		led_rssimediumhigh_pin: pinmux_rssimediumhigh_pin {
> +			pinctrl-single,bits =3D <0x10 0x0 0xff>;
> +		};

Single tab indent.

> +};
> +
> +&spi {
> +	status =3D "okay";
> +	num-cs =3D <1>;

Add empty line after status.

> +
> +	flash@0 {
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <25000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			uboot:	partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x000000 0x010000>;
> +				read-only;
> +			};
> +
> +			art: partition@10000 {
> +				label =3D "art";
> +				reg =3D <0x010000 0x010000>;
> +				read-only;
> +			};
> +
> +			firmware: partition@20000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x020000 0x7d0000>;
> +			};
> +
> +			nvram: partition@7f0000 {
> +				label =3D "nvram";
> +				reg =3D <0x7f0000 0x010000>;
> +				read-only;
> +			};

We typically only add node labels when they are required, so here we would =
only need "art:". Keep the label properties, though ...

> +		};
> +	};
> +};
> +
> +&uart {
> +	status =3D "okay";
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +	phy-handle =3D <&swphy0>;
> +	mtd-mac-address =3D <&art 0x0>;

Add empty lines after status and after phy-handle.

> +
> +	gmac-config {
> +		device =3D <&gmac>;
> +		switch-phy-swap =3D <1>;
> +	};
> +};
> +
> +&wmac {
> +	status =3D "okay";

Add empty line after status.

> +	mtd-cal-data =3D <&art 0x1000>;
> +};
> +
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index fbb0d0ea03..3046d34605 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -47,6 +47,14 @@ comfast,cf-e120a-v3)
>  	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
>  	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh"
> "wlan0" "76" "100"
>  	;;
> +comfast,cf-e130n-v2)
> +	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
> +	ucidef_set_rssimon "wlan0" "200000" "1"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow"
> "wlan0" "1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW"
> "$boardname:red:rssimediumlow" "wlan0" "26" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"

Will this work without a defined gpio?

> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh"
> "wlan0" "76" "100"
> +	;;
>  comfast,cf-e313ac)
>  	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0"
> "0x02"
>  	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
> diff --git a/target/linux/ath79/image/generic.mk
> b/target/linux/ath79/image/generic.mk
> index 70631c20d0..48d6864ecb 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -258,6 +258,16 @@ define Device/comfast_cf-e120a-v3
>  endef
>  TARGET_DEVICES +=3D comfast_cf-e120a-v3
>=20
> +define Device/comfast_cf-e130n-v2
> +  ATH_SOC :=3D qca9531
> +  DEVICE_VENDOR :=3D COMFAST
> +  DEVICE_MODEL :=3D CF-E130N
> +  DEVICE_VARIANT :=3D v2
> +  DEVICE_PACKAGES :=3D rssileds kmod-leds-gpio -swconfig -uboot-envtools
> +  IMAGE_SIZE :=3D 16192k

That's wrong. You have 0x7d0000, not 0xfd0000 ...

Best

Adrian=20

--=-=6d2S0ej2E5sOpE=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3Jh6EACgkQoNyKO7qx
AnDH8Q//V++a6+alYWJ6TnSXSqFa3VwkqmStN+SBA0iYPVjNWWcT2T1l/MVvsAGF
nntZcEn1fw0RD9QQnEF1wB1gHegaTC4jWiEXePSngTaoHkRZqRQ1QgsveDBnLG1m
oe2Hk3J1zAg10yzL1aScVlyWfq9XAH1Yk1gcU0YmTedaDkf2vsttPLqlMHx6d+x0
yNB5ghmbV7cs4gRuL6giy2owr/BDs0+Kh7uZI/YTUNpmZwF/LhPFs23Y37fnD+gu
pY5LLodvQEwQNLvkhfScPcBt/K2XItSQiPjRB47CpyIwF/dIC0mhxMHHDNUbxRMW
bVOh6nt142ir7i/iMN9sv+nNEmdlztXnGMFh6TlqaI8omikIm4Nsz1Yat++onCyx
E/ySATr49qptMjcBINEAasthEwgX0Kc+4eyEmdl/6aETUx3iidlYkJyyGqkR++vr
TF+jokR9IYolGM6xPkNcgNbcHl+80t9cvNv/hoFVvwdYRvIG750nbq2Otc4+RI+o
LgzYFwGkQDQ5d7JgpsqAtXb/szec8/0/fCx79jYNtF0Xq9uZrCEsPY8NT/wbXDYs
tbFLYZ6vqL//aASovO5hc3TgxaxZptCovoLIu4A6njcTjqfRmzFkonV1MU05TQD1
DGV+UTvrEhHVxN53vrMQA5PzIm11t23pigvFV/rIYFsmjSeoW+A=
=gIAz
-----END PGP SIGNATURE-----


--=-=6d2S0ej2E5sOpE=-=--



--===============1913459292633538379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1913459292633538379==--


