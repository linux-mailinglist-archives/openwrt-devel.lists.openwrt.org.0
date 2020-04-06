Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AF419FE8E
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 21:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=meJ9ogb5ybPH2dC/W55rrL2+3WmNZ0CY2O4cWIEXVWw=; b=peZ70axw5Psd/6IR6ErzcJ2hJ
	Xi3GR6U6zExpikcxOCwC2E/VKBXJdqqzJ+1Qrp9zoEA51PCrbngBfUsnPwjKd8fEuKfUPAjGqzFlz
	6vUpiWJEGPSmPi8EMy1Sy3a6gvnpuSYMrljtE/7CHVBGg+QBx+UJmxvC8YQtZXYaW7GpED5/A2qw6
	TLUAoYU+BCkZR+FM6kx9NGpUrjInY7R/z+9MWM6IbCaQJNcwSpB3IlQLsZr7JlF4PmVAfmvaXJ3Fk
	+tCOqqFyb9c28lqIHovGnzi7vEWP//VchJE4ctaYSX/hMbqXTV/HXdtOmY3JqRCeP5QwgAo7fU9RZ
	kdNNUZ33g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLXsx-0003Il-Qa; Mon, 06 Apr 2020 19:58:19 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLXsp-0003II-Oe
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 19:58:13 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MWRi7-1jnQo81anL-00Xwg2; Mon, 06 Apr 2020 21:58:07 +0200
From: <mail@adrianschmutzler.de>
To: "'Alexey Dobrovolsky'" <dobrovolskiy.alexey@gmail.com>
References: <012501d600a4$5c819100$1584b300$@adrianschmutzler.de>
 <20200326191041.2179-1-dobrovolskiy.alexey@gmail.com>
In-Reply-To: <20200326191041.2179-1-dobrovolskiy.alexey@gmail.com>
Date: Mon, 6 Apr 2020 21:58:06 +0200
Message-ID: <041401d60c4d$b0e96830$12bc3890$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQN2+tZX2orZXKTtwQiDP1HmixgW9QIZei7xpRnYL0A=
Content-Language: de
X-Provags-ID: V03:K1:S2172uyijZt01D8szu8QA+MmJbp4Dww3fhoTVBuNudokLGzfPWT
 NcofqD+8Ft6e7AAJ1rir9FZlx2zxEUA5rpLcAFks6rlMJ1N67n9GD2rbi/1Q4fsE+8Hr5og
 irPNBUtBx6rnNlHUz9kcRBCLB2F76VMdYjprEfhkfoeJXO7HksEc+xHkPp0kq8QN0Bf3Mk2
 ywXYU8Qc6J0lKolVZOmgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YTss/iyZ8B4=:lf0+hOSzb1UnQwdeXsWH7n
 59p+mMVc34z4eyGX/xyPt2ecaz26x7+Mu1gmyO8rfCLImLYnfMPECV5fz1owNePMqis1CWJ/f
 F0CPLqeT+9Lz/zkH4fCdbIMPM5FXgkrgb7wEbxJyVxACeSejYlKE1c5IfBe1mB32nmgXbKwDq
 wH4r9PMILKBJj7vLbCB1tlNhhjpuhPE1oQAWZLegPbPZyUMKxf8/AcjyBcEcw6//I6JyJSmUS
 t6Utd89oMp5paFBn+axEMzjWwZnIE0CwRmsiMwwIfBz/w0Gvlg4aygtNOaznUNWx/idVJQsWD
 tPoRInsFnFlWqZPq80n+poNPdvCZjEj0eXSBPyDKI+p/gBLuf2EYnA2phEEq1Rx8OUQLefFDh
 svtk1bH4YE5udhx4zqCSGehW4PGmcjSfTuM2Fdq8ERiRxyaHaAuqMKB3JafvP+WrT4qrGzIDk
 RX/ErIMOO3sMT2uPtYCIMTsZTPvfcpC7xgFkZe5CzhmRyrM88TJuzHQzWadxpA3+pc3aF+bp3
 fbhYKvKAvWieRb807L3SVRYudYHQOaznuetufz3rDT9AEIz2A3XoF9wIK/4X5M6/1hOwYIJrJ
 df+9MU42ckEcQBcHgxoZNpBCiRgg3dB4/I9pwc4QrzCiLMtiOHbtLuEhx6ju7d7za8/Y+023y
 CGNXyBb5Y80sFD9FaAIJjPvLJpElOVZkZt5iebFK9UqCBxAb1M4LC3GY0F6XaAZsBUpneqSHB
 Lz2fCTAMDdOKlMn9AWjT7YfALJix3uYpQFBHr+Wr5DFJH8YGV+U1YT2cNJosvE4m6b8s0Zirm
 Fbt7Y8fTT/SMMua6gc12x3vMvXunXsUAK8goRu5gfPs8ppLwvHxpfHnYSDnahdGm+Qbu3zM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_125812_100719_22EE1BEE 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use full 8MB flash on ZyXEL
 Keenetic
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============9060219069735087118=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9060219069735087118==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=cDV7pzFuHrmxL/=-="

This is a multipart message in MIME format.

--=-=cDV7pzFuHrmxL/=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexey,

this patch is obviously correct in its implementation.

But I still wonder how this device is now supported for almost three years =
now and nobody mentioned that so far?

Do you have further evidence?

Interestingly, I just found that the initial support commit even mentions "=
Flash: 8 MiB". But this could also be an error in the commit message.

Despite, if this is merged, somebody should add

Fixes: a7cbf59e0e04 ("ramips: add new device ZyXEL Keenetic as kn")

Best

Adrian

> -----Original Message-----
> From: Alexey Dobrovolsky [mailto:dobrovolskiy.alexey@gmail.com]
> Sent: Donnerstag, 26. M=C3=A4rz 2020 20:11
> To: mail@adrianschmutzler.de
> Cc: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>; openwrt-
> devel@lists.openwrt.org
> Subject: [PATCH] ramips: use full 8MB flash on ZyXEL Keenetic
>=20
> ZyXEL Keenetic has 8MB flash, but OpenWrt uses only 4MB.
> This commit fixes the problem.
>=20
> Signed-off-by: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
> ---
>  target/linux/ramips/dts/rt3052_zyxel_keenetic.dts | 2 +-
>  target/linux/ramips/image/rt305x.mk               | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> b/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> index ad641f47e4..436743cff3 100644
> --- a/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> +++ b/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> @@ -48,7 +48,7 @@
>  			partition@50000 {
>  				compatible =3D "denx,uimage";
>  				label =3D "firmware";
> -				reg =3D <0x50000 0x3b0000>;
> +				reg =3D <0x50000 0x7b0000>;
>  			};
>  		};
>  	};
> diff --git a/target/linux/ramips/image/rt305x.mk
> b/target/linux/ramips/image/rt305x.mk
> index 33f94edf3f..313c3fa315 100644
> --- a/target/linux/ramips/image/rt305x.mk
> +++ b/target/linux/ramips/image/rt305x.mk
> @@ -1149,7 +1149,7 @@ TARGET_DEVICES +=3D zorlik_zl5900v2  define
> Device/zyxel_keenetic
>    SOC :=3D rt3052
>    BLOCKSIZE :=3D 64k
> -  IMAGE_SIZE :=3D 3776k
> +  IMAGE_SIZE :=3D 7872k
>    DEVICE_VENDOR :=3D ZyXEL
>    DEVICE_MODEL :=3D Keenetic
>    DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ehci kmod-usb-ledtrig-
> usbport
> --
> 2.17.1

--=-=cDV7pzFuHrmxL/=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6LickACgkQoNyKO7qx
AnCpixAAxVw6LdQtr0NflEd2PrO5KfqJPJ9skyAKQ3INwp0mlPzeBhzlkhhtvmip
+5q+lZNVtmVBDQ98SgLRs7HbEJ2kdnCYKo9YwU4TG6lqkcoFuJDLze6oP7hoHgim
mCwjRM6+0mY2cQZAR9bkdKq25Kezm2Z/f3RbjqT+xQyefjLYDsEE/tExtsQqNM3c
pzeqe/mKMLS+qFzSZXI395hzmpAzXXfJyl3+2t3XNtcPHYmaHP7YbK/ylgbBiMnc
NrcWW9Pr5DRNvlI20M7XgrN+MrwdlA8bNM1AdCgBctynOxCEz38hpwqhLKnIS4Kx
HzFN+sPviNCIhrMfNf6uADkUuuvOVaOM97JcUHkADDIBualqadlYiIanknjDFVkd
ek1Sjc6vZf2V2iRwQJBc1QIbURnoSegbqcvlkqpEsUEpvQcfyPjxyKHi0I7ZxyAx
cfKA+Ks0DnMVf7kzyTG9DskzDbeAe/kRCt1yrNR3+a0WG2N33ZsticT0ddB/BtD6
qzNVekjz4r3dN6C633c4jkWGzP1cdsK7+s47LNGyHq/gRvHaqy6y7BP29OHIHVBO
3WPmjFdwGuEOnqzmMp2vgld5FMAAzWwmyXLnRIYpoHnqjz2q/nEK6XSXAAKlnPS3
8xAVLAqjiMAsyuuXcXLpwRxLuGrrJgqhxcw+GcI4ZCL/YK+tq6Y=
=JTMw
-----END PGP SIGNATURE-----


--=-=cDV7pzFuHrmxL/=-=--



--===============9060219069735087118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9060219069735087118==--


