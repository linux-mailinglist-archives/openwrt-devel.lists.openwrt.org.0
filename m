Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83801FF620
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 00:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rREV6CmG02w9GsS1hwCxYVmbaOQU6Dn+1T555mAc4Oo=; b=llqpThQH11SyVQdn7KVGzCjLC
	113WTDj3REAq1DN28w5oH/ZgFqnqvJY0vH2L5ZJFUGfQeF/arDoGoyw6vNL4jfa7LuUucqcHC4nH+
	zlaWE5xbE/a68rgPuN1cHvCGpPDvzCWGWC8WHJwzW2nbZXwEGXiVVOZVrt4cPXfM4Ik0G01+nN3Om
	2CRaFBjVaOzUypTbRN31XGasGnNQsXQdhUOwcfDBmk3Jk1UJMmOvWOso8+D2YFYmXHFmqc3pQdIT+
	PyNSsb8qd42GmmGkTtuq7FIvdkcze4lwE6BXpv4AdWMunyURoI53HsFbFXNcEUTQL+AGN0AirbOto
	B+HC2ABRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW7YL-0005LV-Er; Sat, 16 Nov 2019 23:32:29 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW7YE-0005L8-DK
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 23:32:24 +0000
Received: from desktop ([188.193.230.49]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MCska-1iexFo1Sym-008tTj; Sun, 17 Nov 2019 00:32:16 +0100
From: <mail@adrianschmutzler.de>
To: "'Jo-Philipp Wich'" <jo@mein.io>,
	<openwrt-devel@lists.openwrt.org>
References: <20191116202346.31885-1-jo@mein.io>
 <20191116202346.31885-18-jo@mein.io>
In-Reply-To: <20191116202346.31885-18-jo@mein.io>
Date: Sun, 17 Nov 2019 00:32:14 +0100
Message-ID: <008301d59cd6$14d2a060$3e77e120$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGG8lkgcAkgDkv0Oa0oCE0J9uTu0wGPa5iTqB9LsUA=
X-Provags-ID: V03:K1:SAyRnzYodCgEDBWksrSd8Mw1nXaNQzmW3Zlc6XK2p6QNBtfZtfd
 EoBfWqfJzJ2+R0/1JYqTNlcqevANLabABCpxxBUx4MMXywdKo7xkxgJfBzEYh2oUnsKOd6t
 Mi/eOqTPeAmwkLb1Xw8nKjYPnQ+IEIVvg4ZTgMkrXGP3pXG8kAwv+IWh4j/6zyqclp/yDou
 3Z8pFM9QYeieYilvyTPmQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+oN/bb7bGnk=:eoLSaz4gH3oG5LmY48Ns39
 AZOQjabkb9SpKvOy/Kr+twslr2VMGuUUmds8hzgjQchXe/gz2dtH3xqJMiP2KjoOObTAsxYpJ
 +9ggnuQCKOo75CpYzgCnJZIylcl6D5EcBkRjOf/+P1mBwdjishcO06oSB2gQGlr2CFqOQ/pVx
 617cY8nUdYFwFDojDQ/zoYdcG65eOVrJ7beIJ3+zDGtDBmzLvFrJb8r6+7h2ay5oZ//xS7UOu
 2WbfmGpLYp+tfhbGWsQD2AFsCf50Vt7ZPo2ySSZPObDiPUUpPDDztnykMIu7JWVwL/10tPRp6
 /VXK4iNqnp55y+GPjl1VjvVfW5xN3xK2cfXcWmM4t4+TCn2Q3q0ZrSk5oTSdKdgKdnloKupBd
 XC0S4WDxwbx6iE76YmfHQyZ24YElr5P3w5ZhDNxuWLYaxCGXG2qamhtUIBTdQvrvzVjw7DRrR
 V7r6AhZ7hUlhd1T6k9weJaywa2wBaKsqrMC4E/MrNjBudkXXNzCTj4n+xRmkm3Jfkn0et1JnO
 xQPZiX6YkxsQPTuFX/BEUUdOZDO99djgRnqPFSgKcNbW9GiX3XxKgu329FNWS+OGneps7xTYW
 RrxUZ6DJXnDfYfsrRHLqLIpRUMJU6sDpqSniumMc2LLMpSoPTA5ROeTYxH/M2SYSBKL6SmHNm
 8NOl+rJIpz7IFJujgZJpHUPP+GlH0AnQDOZLqL0lxCyExmHKGiExQ2CiN687xQT5QV/vyBO3m
 qfaVL9OKBamqA4/vN2ep+LtHblO/NtjzLGcF4DU0AA9i+1of1fgqXpQ3IigpkZlVjX3oFAYgH
 LBFfAyEfz+MGEuk2tPRPTRScdBQ15gIrDQqKcQtB/SdIDZlm9Hgr3iRj3ReX1evoHcCU8M+6T
 hN1AoKJ8DD4Et/oGY3DpMe9bPgDNCISTzQG5UW/t8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_153222_744424_E77C9F7A 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 17/17] ramips: disable ZyXel Keenetic by
 default
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
Content-Type: multipart/mixed; boundary="===============1052453066504245691=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1052453066504245691==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=H4zNQ+C+bCGBrM=-="

This is a multipart message in MIME format.

--=-=H4zNQ+C+bCGBrM=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

this disables "Keenetic" and "Keenetic Start".

As there are so many keenetic variants flying around, I'd consider it helpf=
ul to mention both in the commit message/title.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Jo-Philipp Wich
> Sent: Samstag, 16. November 2019 21:24
> To: openwrt-devel@lists.openwrt.org
> Cc: Jo-Philipp Wich <jo@mein.io>
> Subject: [OpenWrt-Devel] [PATCH 17/17] ramips: disable ZyXel Keenetic by
> default
>=20
> Disable the ZyXel Keenetic images by default as the device has insufficie=
nt
> flash space for release build images.
>=20
> Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/72
> Signed-off-by: Jo-Philipp Wich <jo@mein.io>
> ---
>  target/linux/ramips/image/rt305x.mk | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/target/linux/ramips/image/rt305x.mk
> b/target/linux/ramips/image/rt305x.mk
> index 9e599b4125..38fd1747a3 100644
> --- a/target/linux/ramips/image/rt305x.mk
> +++ b/target/linux/ramips/image/rt305x.mk
> @@ -908,6 +908,7 @@ define Device/kn
>    IMAGE_SIZE :=3D $(ralink_default_fw_size_4M)
>    DEVICE_TITLE :=3D ZyXEL Keenetic
>    DEVICE_PACKAGES :=3D kmod-usb-core kmod-usb2 kmod-usb-ehci kmod-
> usb-ledtrig-usbport
> +  DEFAULT :=3D n
>  endef
>  TARGET_DEVICES +=3D kn
>=20
> @@ -915,6 +916,7 @@ define Device/zyxel_keenetic-start
>    DTS :=3D kn_st
>    IMAGE_SIZE :=3D $(ralink_default_fw_size_4M)
>    DEVICE_TITLE :=3D ZyXEL Keenetic Start
> +  DEFAULT :=3D n
>  endef
>  TARGET_DEVICES +=3D zyxel_keenetic-start
>=20
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=H4zNQ+C+bCGBrM=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3Qhv4ACgkQoNyKO7qx
AnDa6hAAu4D8sJJRSUqF/hvAq4icxeV+hRgND3J34HrjIQLv9+NFw0rXFGtJkMgE
Nk7YHUvJxOxCK47N44h5vqZz8XnNkHZmZvcJ/5lMYJpc+Kpfx44otlih9lGK+ZPm
bLF2bqa2hgJEzvyMWvKvq98rKjl4UKHwrRrpLYgjWtoaACBbnFfBB0czAK8yPsLa
KyHHuBB6Wkr4D4YvDzZMmWAsJH/SdTZsDdigmSGQNbjadJ7ieAQBpQghYFhZCkZf
pGq88Q3lLugTpfT1Vi4hCMLwqZDipj6G3EnW3LQIhoM8PkXSvhR6KH3d03iUijTM
SUI3p6ACa5E+crvULJsrEpLK+HEy88Q55VQ9MQM0xayEzLBwmHFPd8ogotIhP5Ap
9Q27dOyYfQs/k3K7gYHfdqPbIKze3PAg3X6R3511yijLoU8W8f8Bt8Z4w1NJsU/Y
tjfwgio9uWS+rnFsft4XLSd0RW82ZVZ87Wn4zd4daJ0RJjuKrVX466cXpHh1iNZq
v7dF+1J5GTogy0TH6/M4hXOfqcMGBgR3Emao9NZKFU7S/yu/ioi5QEf/UO3hj5MU
Jy7ZfTsehItMJafiVQ+TebzF3t9MXBzWUDwuBxKiDEZUIowG1laSpPIDQ7UXsqiW
ZpbM+50ssVF+vBlWvcZQW3wdS4hNQaeUcMKRnkHKSj3mLZg8VI8=
=caaM
-----END PGP SIGNATURE-----


--=-=H4zNQ+C+bCGBrM=-=--



--===============1052453066504245691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1052453066504245691==--


