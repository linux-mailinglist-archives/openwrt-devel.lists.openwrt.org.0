Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408D2130923
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 17:38:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XKd9jNptonAGAMUc0D1s2O8MK38f4n2VdCVrcwQisvI=; b=WgH/uu2AIyZAqeCqJ/HTbVBw+
	sPGDC/yYaeZQLSHRzZvuOwlSMWBFFRDjqCtOgSZGNJd7tBFxzIUHqlmm4HWZ+XrnVofWGpt41ygMC
	+zslbL7wE7+hRfhB/gSE7bF9/tIedqJ0ELp/PG1kD1Jl7KFVafHBGxAy+ULqte2llvcYedFixzkuM
	ybW88ETb02afXTwPwYxUt80OwE/wWOMgz5HbJQDzHmcTpMDqakbG5yIVtK7AvxSn4WY0GQyNPcqgW
	CjOBv9AG3c11N0A6GnKTa1eksk8mlzJx/Ai+xrkmY6d+o6aOafaeyBQyYO6Z7q3vEASV78KaFXMYX
	Pg2TnsyfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io8uf-0000tC-38; Sun, 05 Jan 2020 16:38:01 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io8uT-0000rV-Iy
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 16:37:51 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MwQCb-1jgWc93FAr-00sQHc; Sun, 05 Jan 2020 17:37:44 +0100
From: <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
	<openwrt-devel@lists.openwrt.org>
References: <20200105141756.23473-1-hauke@hauke-m.de>
In-Reply-To: <20200105141756.23473-1-hauke@hauke-m.de>
Date: Sun, 5 Jan 2020 17:37:44 +0100
Message-ID: <00b701d5c3e6$74e07860$5ea16920$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIuF+HeIBVU/ZlJzrne0jxHuiAM+Kcrm33A
X-Provags-ID: V03:K1:rlWc+BjQga0X7bubqGmNZIfvfsxDu56JlXrmSXMKYhPe1Agb8ZV
 mX015ZBUGmcUZP1ubKQKZIutzvoBjJKbUrgaUIBoYkqpPWrMG66uVBIlMUEEhSpe4hY2qgF
 aIGO9K1muRW9J1BS6dPv/8IKj0rwAZP1R8muk62iKVqL79aYzXy/vn6NlWY0tV5fW773YHU
 BYXeMq2nbEbiraQkcazgw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:16Z1VSYT+4g=:lHGywSSBnpII6Pl+HFzVMD
 3BvQLtpD/z6wBUBiwbA7Zx19X3n/2iaddGzrcdVnEt2KMF1qZU54PPG5oFKHhth3xxkdm6LOa
 t8VxXrJXIG+a8jmlNHfuJU2zr1jAMoalBB+mxYhb9OOWv7tWExxbYZN9YW0Naq98++QDN2sFw
 EvGYTtTtSLlRtByaC99SI+VNK9vOMcMJ8NcURBqHjlpYO0DGRINewr+wB5yc9rt0Tn9QMeph9
 b921CbEN8fp9uWqTLakqYx1erftkWNxplivH9gLHDhYMCJhIwI+5OyLZaVvXYf1nrziHFVMsa
 16ZMUdn+q/LWwn2kFJLSauLhlrZ8cOb7Kk3cIQG6WE7adZhq4mQpW5gZzpDVUePzVzlgssDxX
 LJNY5E6YG94KUHItGPAGCO2v8tL0uXlea76uLMcHwA2z3ZniPhcSr9lCrLoqI7m8J3rQncVMl
 oKCbEyHr0zkio7LkQbqWaMygkeQ3L2naFsAaE3bsZhtuWF5LtTjuKYSCMXgzGlSWi9INQm7ld
 QuANyMb0TE6KEhp5CUx9ZvaAbYOpnZijbGMyOwUIewxP1NHKx+elMj98a+wkEVFOz39UXcMpZ
 WzTFrQjd9gipBxqeKcXybclSvu+zaUmb7mrhuEhl3orMZ37OswZ2dz0YWxK+UaggOqvKc9ORE
 WGp3F3zesByKG+aOCDa4MwBQ1t4Sox1KFSgqEc8h8viG/dCjClWVjmUaxGfdBXWXY00kIqh8c
 03djCQvNjerM9hlBy0uc7G097GjwNWhfjd4Zb8bWhyVKsR37HR6HCPGQGJQUlrgKpcZmML4oz
 emRzETSo5UNumpc0yeYSMABGaf4DmCxM2MeMFFTws38nxMSqKPOCqwK86G7sQuZzleS8ljQHS
 3FUUMCssch7grP7J4Cd6vsQ2p4KLbI0L+15X85MuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_083749_918317_92B3D56F 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Fix sysupgrade for Xiaomi mir3g
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
Cc: dev@kresin.me
Content-Type: multipart/mixed; boundary="===============3616465480157256933=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3616465480157256933==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=JApy0JsNBPXWGb=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=JApy0JsNBPXWGb=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Hauke,

> -----Original Message-----
> From: Hauke Mehrtens [mailto:hauke@hauke-m.de]
> Sent: Sonntag, 5. Januar 2020 15:18
> To: openwrt-devel@lists.openwrt.org
> Cc: mail@adrianschmutzler.de; dev@kresin.me; Hauke Mehrtens
> <hauke@hauke-m.de>
> Subject: [PATCH] ramips: Fix sysupgrade for Xiaomi mir3g
>=20
> Without this change sysupgrade from 18.06 to 19.07 is only possible with =
the -
> F option.
> In OpenWrt 18.06 the nand_do_platform_check() function is called with the
> board name mir3g only, if the tar does not use mir3g it will fail.
> OpenWrt 19.07 and later support the metadata with the supported_devices
> attribute to allow renaming. Do the renaming of the target between 19.07
> and master like it is done for some other boards.
>=20
> I tested the following sysupgrades successfully without -F
> 18.06 -> 19.07
> 19.07 -> master
> master -> 19.07
>=20
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>  target/linux/ramips/image/mt7621.mk | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index 7eb59188fb..39017a48e1 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -269,7 +269,7 @@ define Device/xiaomi_mir3p  endef  TARGET_DEVICES
> +=3D xiaomi_mir3p
>=20
> -define Device/xiaomi_mir3g
> +define Device/mir3g
>    DTS :=3D MIR3G
>    BLOCKSIZE :=3D 128k
>    PAGESIZE :=3D 2048
> @@ -282,12 +282,12 @@ define Device/xiaomi_mir3g
>    IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
>    DEVICE_TITLE :=3D Xiaomi Mi Router 3G
>    SUPPORTED_DEVICES +=3D R3G
> -  SUPPORTED_DEVICES +=3D mir3g
> +  SUPPORTED_DEVICES +=3D xiaomi,mir3g

I do not really understand this patch, as still the names will be the same,=
 but just the order will change. If you really rely on the first name to be=
 mir3g, you could achieve this much easier by just using:

SUPPORTED_DEVICES :=3D mir3g R3G xiaomi,mir3g

With that, you would not have to change the device node name at all.

Best

Adrian

>    DEVICE_PACKAGES :=3D \
>  	kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport
> wpad-basic \
>  	uboot-envtools
>  endef
> -TARGET_DEVICES +=3D xiaomi_mir3g
> +TARGET_DEVICES +=3D mir3g
>=20
>  define Device/mt7621
>    DTS :=3D MT7621
> --
> 2.20.1

--=-=JApy0JsNBPXWGb=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4SENEACgkQoNyKO7qx
AnB6ow/+LxwcuNZUL+KAhzz4/bM6cu22mgO9UwSFLYTx8wPCfaZGUrNqOwyst4yf
52dOD45V4f8R898ItgjZgfcWoZ3PMLHpAbZMl6vUsbnVEJXukQ3ewkRCpa6tZKY/
Hz46ByTUxdeVR9SH7fb96V+8MT5vVoxaXNprFQmVYKI5/g179DwEX5Q7p5XetP2J
RFyNEY8IeiQkj0WiWTuiv9WiI65uhIGwfQT9SHPEak4nHN+0FqmU8O9UIHdTVymU
QYxvR9lWi9KcRilRLHA5NBLnS1DvyX5bjR/YOsVEEiHENxcnk/2/2770u/Xr6PTq
6tWrwmDsl2hryw49heogGnMrC8VLPIg/HEmjAA8j2Z/MydfAPJ9roLrs4Oez874m
mn5XL0SjjOuUBoZQOxsrhtBWRAR/4sYnND9drEvA62itRoy++iSKDLwe0uogZ2Pj
pcXmXa8ISal09LFjwVRieqg4EBkmYgyIr3LzdghtGK4+bBuvhhN8nd/oEW56dDou
F8vAPKNzV/XKaR1KemxV7NmTQ0un+ylWM8p/B11FNiuoyyLl927tDuw1PbBrgO7u
n+vI3VGrOxsfGFjZkgv9H64psMK6rQ9omr8poWMpP9ePuI0uv0kundZmrIni/HBx
fiUBW9bo3vdNAM2YaW81BVhsg63JmO5J28p+mLQpM3/02xvSlw4=
=aXbn
-----END PGP SIGNATURE-----


--=-=JApy0JsNBPXWGb=-=--



--===============3616465480157256933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3616465480157256933==--


