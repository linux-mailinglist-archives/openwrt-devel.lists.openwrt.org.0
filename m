Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EEC1E8819
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 21:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/DDm9PPnlsrvX4VHuJYyrjGABPPWnUg3E8fBtQ5lDDE=; b=Kn1CCHoy18dSau/sizDmNVkEn
	y/rHrmP0a1rc07QZVR/HoJqZQBwGHSuzqaYoo677DZuInzzW3hscXsEo41vNGWDZfjWqgROkOGCVd
	BtjCFR9N2Oj7Yu3RK6rCi7URiMd0+pkSXOtAytuNTBJHGBjknCp97gvC6UTqHD+ZCSU75q/aV+btX
	RGErvQAW1yBww/CaqqcAksESae2E15gxPNwN+Xi3DbSulIDFcKeeAeXSsrdpEAFSPyiI7JmAsOCQn
	JM2W4fymEwnEtEgS7DYNazdtRBq9QWvLYHpjwdJJlcmM/PNSCCSol/V4xhA3gy9nR8yKAWOnICXGP
	P6KVv6mCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekx8-00086p-UI; Fri, 29 May 2020 19:46:02 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekx2-00086F-Kn
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 19:45:58 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 5701127F67;
 Fri, 29 May 2020 21:45:54 +0200 (CEST)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-4-freifunk@adrianschmutzler.de>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net>
Date: Fri, 29 May 2020 21:45:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529172238.43399-4-freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_124557_009001_DC50513F 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
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
Cc: Linus Walleij <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============2504115635599519973=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2504115635599519973==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="TfBwqQDQPTgyRAa1IWVSqUBgMirY3txVa"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--TfBwqQDQPTgyRAa1IWVSqUBgMirY3txVa
Content-Type: multipart/mixed; boundary="2CTEk4JU95J4OcHfuVBGH7bnqqMwATh0F";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Cc: openwrt-devel@lists.openwrt.org, Linus Walleij <linus.walleij@linaro.org>
Message-ID: <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-4-freifunk@adrianschmutzler.de>
In-Reply-To: <20200529172238.43399-4-freifunk@adrianschmutzler.de>

--2CTEk4JU95J4OcHfuVBGH7bnqqMwATh0F
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/29/20 7:22 PM, Adrian Schmutzler wrote:
> The prefix "DEVICE_" for Make variables is only used for per-device
> variables with the only exception of DEVICE_TYPE. This is misleading
> as it leads people to incorrectly assume it can be set per device like
> all the other DEVICE_* variables, as has been observed in the past.
>=20
> This renames this (rarely used) variable to clearly indicate that
> it's not a device-dependent variable, and stays in line with the
> DEFAULT_PACKAGES variable.
>=20
> Note that there is also a (single) package in the packages feed that
> needs to be updated.
>=20
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---

Default type of what? IMO "DEFAULT_TYPE" is significantly worse than
"DEVICE_TYPE": "DEVICE_TYPE" may be slightly misleading, but at least it'=
s
somehow conveying the information that we're talking about types of
devices. The part "DEFAULT" is also misleading in a different way, as I
would expect to be able to override a default value (for example in a
device definiton).

The variable is used rarely enough that we could well make this a bit mor=
e
verbose. "TARGET_DEVICE_TYPE"? If it weren't for the busybox config chang=
e
(which seems hacky to me at best*), we could also go with something like
TARGET_PACKAGEGROUP, as the package selection would be the only thing
controlled by this variable...

[*] Busybox is missing the "nonshared" flag, so opkg updates of busybox
would gain or lose the CONFIG_HDPARM setting, depending one the target us=
ed
to build the busybox package for a given architecture...

Matthias



>  include/target.mk              | 4 ++--
>  package/utils/busybox/Makefile | 2 +-
>  target/linux/arc770/Makefile   | 2 +-
>  target/linux/archs38/Makefile  | 2 +-
>  target/linux/oxnas/Makefile    | 2 +-
>  5 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/include/target.mk b/include/target.mk
> index a2ceb7f783..8374de2ebd 100644
> --- a/include/target.mk
> +++ b/include/target.mk
> @@ -10,7 +10,7 @@ ifneq ($(__target_inc),1)
>  __target_inc=3D1
> =20
>  # default device type
> -DEVICE_TYPE?=3Drouter
> +DEFAULT_TYPE?=3Drouter
> =20
>  # Default packages - the really basic set
>  DEFAULT_PACKAGES:=3Dbase-files libc libgcc busybox dropbear mtd uci op=
kg netifd fstools uclient-fetch logd urandom-seed urngd
> @@ -53,7 +53,7 @@ else
>  endif
> =20
>  # Add device specific packages (here below to allow device type set fr=
om subtarget)
> -DEFAULT_PACKAGES +=3D $(DEFAULT_PACKAGES.$(DEVICE_TYPE))
> +DEFAULT_PACKAGES +=3D $(DEFAULT_PACKAGES.$(DEFAULT_TYPE))
> =20
>  filter_packages =3D $(filter-out -% $(patsubst -%,%,$(filter -%,$(1)))=
,$(1))
>  extra_packages =3D $(if $(filter wpad-mini wpad-basic wpad nas,$(1)),i=
winfo)
> diff --git a/package/utils/busybox/Makefile b/package/utils/busybox/Mak=
efile
> index 01441d1e87..81dde74d0b 100644
> --- a/package/utils/busybox/Makefile
> +++ b/package/utils/busybox/Makefile
> @@ -94,7 +94,7 @@ endif
>  define Build/Configure
>  	rm -f $(PKG_BUILD_DIR)/.config
>  	touch $(PKG_BUILD_DIR)/.config
> -ifeq ($(DEVICE_TYPE),nas)
> +ifeq ($(DEFAULT_TYPE),nas)
>  	echo "CONFIG_HDPARM=3Dy" >> $(PKG_BUILD_DIR)/.config
>  endif
>  	grep 'CONFIG_BUSYBOX_$(BUSYBOX_SYM)' $(TOPDIR)/.config | sed -e "s,\\=
(# \)\\?CONFIG_BUSYBOX_$(BUSYBOX_SYM)_\\(.*\\),\\1CONFIG_\\2,g" >> $(PKG_=
BUILD_DIR)/.config
> diff --git a/target/linux/arc770/Makefile b/target/linux/arc770/Makefil=
e
> index 018d6e5448..d1f3e2dc82 100644
> --- a/target/linux/arc770/Makefile
> +++ b/target/linux/arc770/Makefile
> @@ -13,7 +13,7 @@ SUBTARGETS:=3Dgeneric
> =20
>  KERNEL_PATCHVER:=3D4.14
> =20
> -DEVICE_TYPE:=3Dbasic
> +DEFAULT_TYPE:=3Dbasic
> =20
>  define Target/Description
>  	Synopsys DesignWare boards
> diff --git a/target/linux/archs38/Makefile b/target/linux/archs38/Makef=
ile
> index 5b3650ef8d..891583b2d2 100644
> --- a/target/linux/archs38/Makefile
> +++ b/target/linux/archs38/Makefile
> @@ -14,7 +14,7 @@ SUBTARGETS:=3Dgeneric
> =20
>  KERNEL_PATCHVER:=3D5.4
> =20
> -DEVICE_TYPE:=3Dbasic
> +DEFAULT_TYPE:=3Dbasic
> =20
>  define Target/Description
>  	Synopsys DesignWare boards
> diff --git a/target/linux/oxnas/Makefile b/target/linux/oxnas/Makefile
> index 750eddbcbb..10d05e914f 100644
> --- a/target/linux/oxnas/Makefile
> +++ b/target/linux/oxnas/Makefile
> @@ -5,7 +5,7 @@ BOARD:=3Doxnas
>  BOARDNAME:=3DPLXTECH/Oxford NAS782x/OX8xx
>  SUBTARGETS:=3Dox810se ox820
>  FEATURES:=3Dgpio ramdisk rtc squashfs
> -DEVICE_TYPE:=3Dnas
> +DEFAULT_TYPE:=3Dnas
> =20
>  KERNEL_PATCHVER:=3D5.4
> =20
>=20



--2CTEk4JU95J4OcHfuVBGH7bnqqMwATh0F--

--TfBwqQDQPTgyRAa1IWVSqUBgMirY3txVa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7RZnEACgkQFu8/ZMsg
HZxhrBAA1Ceyb1IGkz95EPIJbClAz8AwFBpSIsQMfnwnjdARWFFI4JnddVid/LHT
rO3jog9XLbgScCSho20JSwUvjtrDFM4S4ZO2cLreGNEemwyPgu+1kfc4yxQ20cRU
to0CnBZiXTmpDiorYetThhJW3pXiPeIB9R2HjjW4ip2zS5rxk21LKN5X91HTKifV
Io9XNDroErATcgT1ryuV/B1m4JyIyJqSEJ04w5vO1YnDAp5BLuCvaHRsbXxtWJi4
D2KkC8W+PpI27g03QoFNjqqcYzbZtK67ZGVyjJPbHAm3lcugwPh9yzN8jDDsKf33
H87Ka4fyk2XHA1fZ/9/Bgqbo2sum5iD/P+h0KRoBX+Qw0WhgjtGi+LWqgK45o+4o
Up0H8an6AND5eIFQJFQWfLRHhBRcNBXF/RaKleS8qii0lxTF8ZdmqNbtI3h4fg2A
nnXemdQ0JdeKzmaEGZUoNkD3YzY2MQ9Wn1o/xEH0IujGonJxG/rWKMUtDZrA/zJ8
NHCluPBCi3V13AUD6Pcd7iSkVBYvElONM6hvRbWtUKfg5evUK9PWYofW8YPUrkQg
CaEttCH+NhcQtRSIOQ+JC4zebl5/PFB9Nnwi400JY2uhHSKZay2GW8PPIcjsDBSP
SSkNU2rWbPljn78OzwTzmbNvvB9LpFgmyymYglErBq/7XE3soUM=
=033E
-----END PGP SIGNATURE-----

--TfBwqQDQPTgyRAa1IWVSqUBgMirY3txVa--


--===============2504115635599519973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2504115635599519973==--

