Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66317115FDA
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 00:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Qf0dcnHlptMRYagv9GXrhOZN8J51/N7ij96Bk587R8=; b=rb4a0L+N6V+XbFbVwrc6S8AGp
	LY3n5j4J7ZaKSGZid/qs2+c793HtyHkLiIjaluilANtAPenRimnL+7sXC92d9VdWgr0tjfe5i5ExU
	YB7RmaPR8s7/Gu/h/s1HdunDv8Cz5yPTRAWO4B/pvO7t91r4jb+B+y0+G8JoB0IIJwX6zfEWKMvv5
	lZBbq5rblcxxL6n+2cx5Z9bNtr+52QgwhBCRZB951NYk954emHtL9V12j+oAY+E3/8DsS3k/MBU0p
	OG+NCWHq18+1KQV2AkA0+AA5vAns5ffOuOIgC3l6/C5TZFXU3nPeQe+DU+b3cXcPeegzMRPwZt4Om
	T8Sf3MqfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idjej-0006UD-3c; Sat, 07 Dec 2019 23:38:33 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idjeZ-0006Te-5A
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 23:38:25 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MLhsE-1iMClW3vhA-00HeS8; Sun, 08 Dec 2019 00:38:11 +0100
From: <mail@adrianschmutzler.de>
To: "'DENG Qingfang'" <dengqf6@mail2.sysu.edu.cn>,
 <openwrt-devel@lists.openwrt.org>
References: <20191207163731.15028-1-dengqf6@mail2.sysu.edu.cn>
In-Reply-To: <20191207163731.15028-1-dengqf6@mail2.sysu.edu.cn>
Date: Sun, 8 Dec 2019 00:38:08 +0100
Message-ID: <00ae01d5ad57$62db0ae0$289120a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHVt7MwUWkpwUyZigkCtsds1IZ9jaevPlNA
X-Provags-ID: V03:K1:YjYUW9MsA/a+Ool8TfQQOFFAOGetiq7InJbNMlCZ6RcWctrtAlz
 +5uMyGejROTkunpCD62Wo+oG1lEkc7DK6oQqx+T+gBwIrWLY9Z01a3YrB/wHMe6JLH3/vuT
 1bSWMH5we/N2qW11LtbbrBx5qw6oLnnTjtuqonoI+0zqAcmNc3fxxfOmBIFTz2Hy/aNFxJ2
 1xUqGKfk+F8hVFm6l54YA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rjU5RKuMEh0=:3J58cLugwbBwuvM62Emm73
 pPAwoncRh+1K1OnDDUyrnHHYdt8dGnSXPQn/ffW2a6gQImucib2h8/oHF7tAhRYxSWZZKSFkY
 XFJkm0fiiXpI+k3SEdiEERBGSLOtgdTcqIfssMfW0gCkoSSw6a9S2iY8xnFzD9wLyayDIcI+I
 jAPd9eMcVJDzUczjA95wA8j8egXnZHLF2M6TfE5E9JuZs0CEsqgMVWenu2yl7mRmG0PFj+1wF
 zSQS8AmC7wFYxgQSLpxeu9fg86fKVMcBA3vm0Ot04RTZGR2Ec+zf01UnZGxSDWS6B4Qji6X7y
 w3zb1wYy5EOSrQRNfuBEh5VociCqV2ohqcVgDB3CL+8jrdqrLdmOifB8qhlNK7bbmVPQGF9W3
 3D7csAZNGGowg0AP0R8KaQZ4kiIxZzSoYzJhR8RKiVk+gWaxyms2rGHwSeB8NXm5uM1dKQwas
 o+E2ut/N25GNGPEVgWFUh5SiMbjPYeTjEwdFwFhhxdDd+hFYQVg7F28u40bT5ba4dhUVcp58H
 lEbOFAJAmHiw9IFoK8OgYe/tvd6CkL9FaHClFYuTZUmj/wkHX5ZXyRBtsojMP5y+nla+YAGj2
 2sfA8TX15YCkA0fmKz0kWERrS2cjHAHb8I/x2J9c7AXPB03jYSZQf3UC/sOTX6mopWo2Elf4j
 U3PX7FCPHizllQNW6c80ia/sOR+5ed3E0jdij6pcYZnLsOy+wcsJBZSHpedRyjxjm+LN1TvdH
 evutvlHbSkuhXNe0SepEpR44s7uM0lr70Xl7SkzDY98dKmIhdtVt0EqD7DOmVbOvSBu5neuGr
 d8LS1o/bwJU6qerEgi7HsAk9XiegtQKLaVPvlZf74uWYxzJNrrpSQR3jRoUDbfQppqNTyg60j
 TooDQHyeQWjE0nhSH+0tixEMmZZ6hyJ1/up6XGPFQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_153823_493545_D1BAEA9C 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: fix typos in DTS
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
Content-Type: multipart/mixed; boundary="===============2961507155032823161=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2961507155032823161==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=81K+9fJKBb94Po=-="

This is a multipart message in MIME format.

--=-=81K+9fJKBb94Po=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

please rephrase the "commit message" to be a sentence (or two ...).

Just send the text as reply to this e-mail, I will add it when merging the =
patch. (So I do not need to add my SOB)

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of DENG Qingfang
> Sent: Samstag, 7. Dezember 2019 17:38
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ath79: fix typos in DTS
>=20
> echi->ehci
> ochi->ohci
>=20
> Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
> ---
>  target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts | 6 +++---
>  target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts      | 6 +++---
>  target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi     | 6 +++---
>  target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi   | 4 ++--
>  4 files changed, 11 insertions(+), 11 deletions(-)
>=20
> diff --git a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
> b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
> index 2e00de8887..e87f422051 100644
> --- a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
> +++ b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
> @@ -47,7 +47,7 @@
>  		usb {
>  			label =3D "buffalo:green:usb";
>  			gpios =3D <&ath9k0 3 GPIO_ACTIVE_LOW>;
> -			trigger-sources =3D <&usb_ochi_port>,
> <&usb_echi_port>;
> +			trigger-sources =3D <&usb_ohci_port>,
> <&usb_ehci_port>;
>  			linux,default-trigger =3D "usbport";
>  		};
>=20
> @@ -180,7 +180,7 @@
>  	#size-cells =3D <0>;
>  	status =3D "okay";
>=20
> -	usb_ochi_port: port@1 {
> +	usb_ohci_port: port@1 {
>  		reg =3D <1>;
>  		#trigger-source-cells =3D <0>;
>  	};
> @@ -191,7 +191,7 @@
>  	#size-cells =3D <0>;
>  	status =3D "okay";
>=20
> -	usb_echi_port: port@1 {
> +	usb_ehci_port: port@1 {
>  		reg =3D <1>;
>  		#trigger-source-cells =3D <0>;
>  	};
> diff --git a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
> b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
> index 92de193aba..5e35dddd4b 100644
> --- a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
> +++ b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
> @@ -34,7 +34,7 @@
>  		usb {
>  			label =3D "d-link:blue:usb";
>  			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> -			trigger-sources =3D <&usb_ochi_port>,
> <&usb_echi_port>;
> +			trigger-sources =3D <&usb_ohci_port>,
> <&usb_ehci_port>;
>  			linux,default-trigger =3D "usbport";
>  		};
>=20
> @@ -123,7 +123,7 @@
>  	#size-cells =3D <0>;
>  	status =3D "okay";
>=20
> -	usb_ochi_port: port@1 {
> +	usb_ohci_port: port@1 {
>  		reg =3D <1>;
>  		#trigger-source-cells =3D <0>;
>  	};
> @@ -134,7 +134,7 @@
>  	#size-cells =3D <0>;
>  	status =3D "okay";
>=20
> -	usb_echi_port: port@1 {
> +	usb_ehci_port: port@1 {
>  		reg =3D <1>;
>  		#trigger-source-cells =3D <0>;
>  	};
> diff --git a/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
> b/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
> index 08b3c77b39..b6ae167024 100644
> --- a/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
> +++ b/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
> @@ -32,7 +32,7 @@
>  		usb_led {
>  			label =3D "netgear:green:usb";
>  			resets =3D <&rst 12>;
> -			trigger-sources =3D <&usb_ochi_port>,
> <&usb_echi_port>;
> +			trigger-sources =3D <&usb_ohci_port>,
> <&usb_ehci_port>;
>  			linux,default-trigger =3D "usbport";
>  		};
>  	};
> @@ -134,7 +134,7 @@
>  	#size-cells =3D <0>;
>  	status =3D "okay";
>=20
> -	usb_ochi_port: port@1 {
> +	usb_ohci_port: port@1 {
>  		reg =3D <1>;
>  		#trigger-source-cells =3D <0>;
>  	};
> @@ -145,7 +145,7 @@
>  	#size-cells =3D <0>;
>  	status =3D "okay";
>=20
> -	usb_echi_port: port@1 {
> +	usb_ehci_port: port@1 {
>  		reg =3D <1>;
>  		#trigger-source-cells =3D <0>;
>  	};
> diff --git a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
> b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
> index 4f52e3cc40..0ed9970813 100644
> --- a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
> +++ b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
> @@ -86,7 +86,7 @@
>  	#address-cells =3D <1>;
>  	#size-cells =3D <0>;
>=20
> -	usb_ochi_port: port@1 {
> +	usb_ohci_port: port@1 {
>  		reg =3D <1>;
>  		#trigger-source-cells =3D <0>;
>  	};
> @@ -97,7 +97,7 @@
>  	#address-cells =3D <1>;
>  	#size-cells =3D <0>;
>=20
> -	usb_echi_port: port@1 {
> +	usb_ehci_port: port@1 {
>  		reg =3D <1>;
>  		#trigger-source-cells =3D <0>;
>  	};
> --
> 2.24.0
>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=81K+9fJKBb94Po=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3sN9oACgkQoNyKO7qx
AnDmqg/9ESqWt7OANRJ1iSBUgnsCWoOUfeMfiVL8YwibMot/bg83vKpm0VsuT4N1
8EBOGJINsbideyM5/M8xJRM6UG3ffk3JJF+E1EIu1Do7kZnYEVWO3C99QAXhMrV8
xK5cQaqjDYKhDo1T1DtcYa/HNRzLHV3iqteLR83XQ8mXyERMmjsW2Ng5SOUa3VCL
K/ol6284BAGamBtI0WLHbjgDjicrRrIiBVcChY3LnUV2tHsCJ0TCg4be9kFroBI6
8utdc2dtVKbiTXwF6ZzBY7tSuCThhUJBx0eIsx4ZhQRpxv4cy5fBtKRoiTbKyPX6
yHXTpQTFvDkU56CzTASlznSlrQfqbhG5JslykVsngw4KU5aJwjBgsff94iuL5e+q
3KbOJe7dhiGm+C46nNBGCkxNJ+2PmuWHAAjNyU0kYgZkAaH+PKRcApT8WXUCpsw6
gsvmkGPz3WX3SYdEkoqATB21UQPwINMXrISvl27utofTR0L35NXZFbr3aVeMce9d
1C3MOZkupuUiKYj9QceuqAT0O9LD5lJvz2SQYJ7JgnodenJwysSbBPHoML9y8sC1
85XEt5JKkFB5T9T/h24vJaEf7M6JNYuExjkEbdfXgQAUjtLJlKT4VUsSUhyNH28U
eUmNe/eosD6MBSOe3ozeXq887mWZxlbPaX9UXuRWHX4Ziq0Pwj0=
=k1wG
-----END PGP SIGNATURE-----


--=-=81K+9fJKBb94Po=-=--



--===============2961507155032823161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2961507155032823161==--


