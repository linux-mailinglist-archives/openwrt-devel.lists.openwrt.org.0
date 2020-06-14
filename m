Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CD21F8A75
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 22:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4KA+PR6ORCvclqvNzhzGd/jDDmQDavG/r2lvT0MLUCU=; b=Pz8+LX3DYyiF/seejOB0cEuqt
	r8Tu4l9EnqkWgvehAVrF2AO/XwmU5uNBDxAD9/j/mTLQ6KpGx/0cUI7DAuZ0bl8lDL/SyGjXs/2xK
	7E7AjU9dgCVz8MB+AhXWY7ZRovl/S161/b8LeTFveXvaqZ4Bj3vTmFH3lA7ZjZ5mcDqsf2D3FbIEw
	48tq2ILHhsJyQrEJmpaV7krYfnN2Y66ZI1M0bgBDMnik+CHFdjLKnODGX2ioEOqU8L3YMGcOajT11
	CFSg/Tb27syBuY51+ZkUuMbWeGgPq2YsrQCbPmMBQD5PQF5T3ETkObQP269bxkDSzGQUZv8ib7e5s
	fd8/ZprAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkYoQ-0003NF-F0; Sun, 14 Jun 2020 20:01:02 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkYoH-0003Md-Uq
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 20:00:56 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MFspV-1jh3E60Jvb-00HNcf; Sun, 14 Jun 2020 22:00:49 +0200
From: <mail@adrianschmutzler.de>
To: "'Paul Spooren'" <mail@aparcar.org>,
	<openwrt-devel@lists.openwrt.org>
References: <20200614093330.17516-1-mail@aparcar.org>
In-Reply-To: <20200614093330.17516-1-mail@aparcar.org>
Date: Sun, 14 Jun 2020 22:00:48 +0200
Message-ID: <002a01d64286$7fc90660$7f5b1320$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQK6LKEy9IobiLOQxW20GP4lZrk22qcQsO4g
Content-Language: de
X-Provags-ID: V03:K1:Ei6guzb97bWTpuOsnDsIZXJ3KcTb16wKA0Yt3sbDEOhULpd6VYF
 dldgNeDhTvVQAZcJg8Sguu9v8ehTXC6s653mBCFJcfloTO2RAkxaIS0oNy0hmwUfWksVirg
 W0EL83IcKExVUyrM2i/Lac6ZHsBMn4lo2sZY1q0hBaxA+Et8ve+AgQZ0BHp9iBpX3WWwx0n
 yopaHbX8+coOKx7f6QWvw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GX1X7bCvaSQ=:9b7y6qxkIliW2NIkuma3ZZ
 yIyjH4gx2cT/dezd5juWWyts0Q1Hq57E5iFKUdY4fLMJgqwRrn6g591mUx6QOwiIK1vSoUoiy
 hntDzVBHFiDEuwZvg0vfhFoLVu2ZyV241O9iSjoUaPcaEg5Kuz8Pe9oFpbav3OOyEZ96AS6rl
 t49bD87hKeKVeP6iTZHz5pMWYPK+9sq8QHdE/kXJQHJh5zMk2F5PDezWZviLYn8NADXKmohLk
 IEdZ+cWCY3pwFM6gdc4d08AtWkndnp8Gie8uPn6leldtZWJfZnDXhY/BJTt0fn5zbK6UFPb31
 1g8OfZOCp4ae+ETWYhluNacmtLYJODZ9qScJOev5GFnBdgogN3hjBYNZS2vj/uHyWt2DiTbuG
 7cY8j4mzYnfnw6sJfT/y6TZUS+zqDBQbg50ylpAHLf82JcbAJHLTZxyMHvFFINKVzr3gyr4QC
 0pjvr5ttMgUHkp2+7t5YCdSnHdi4XZn2GQgZPRlXNr4O+6312ePED3njYKSbDBTQ/kd8kFu2P
 QzdoOklPb3bpLFI8eMCdi6wKq7RICAhYQP4k5nGIPIUHlTPyfLCceUOCJK+omavybqRaZsDno
 hQ3g8ZEHlq7q/SrYKq8oXEMchKrLp6nUCio6Mr6Ea5tWhFDqzGfB/+qZIchU2kFGuaGWv3R9/
 DpeVV0uYUm/QT+m2JFTx9vc1b4iRd8VOMY+MuQnVotT+acRZzTA5ZeylmIbxOScMtmo2W76nM
 /nfSw/i93Jjt3RLhvfbBLCpcXkY2DvTetHX3GxAwQxrmJPxQJe2jGuwunBbOLOKopStHMjbCD
 QXX5hmoHKf+7Kolek/pi2YTlyrtA2agEO9kAgucaP0furiC/UBnODRbCkyX+aEQWt5XMmP6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_130054_289023_EE1B6232 
X-CRM114-Status: GOOD (  23.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in
 image filename
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
Content-Type: multipart/mixed; boundary="===============4668807426687475281=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4668807426687475281==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=F+pV4GqEWzOZWv=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=F+pV4GqEWzOZWv=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Paul Spooren
> Sent: Sonntag, 14. Juni 2020 11:34
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in image
> filename
>=20
> The target/subtarget information in image filenames is barely of any use =
for
> developers or end users.
>=20
> A developer reads the profile name and the target is either obvious due to
> previous work or `cd targets/ && grep -r <profile>` tells the target with=
in
> 3ms. If no buildroot is available `cat <image> | tail -c 200` allows a lo=
ok at the
> attached metadata which includes the target/subtarget.
>=20
> For users the information is entirely useless and maybe even harmful.
> Target names like `cortexa9` could easily be mistaken as an actual device
> name while the only relevant information would be `linksys_wrt3200acm`.
> Images are more realistically downloaded via a Wiki entry or a firmware
> wizard.
>=20
> This commit therefore adds the new image option called
> CONFIG_TARGET_FILENAMES to make the target/subtarget filename part
> optional. It is disabled by default.
>=20
> As the profile name `generic` appears multiple times in the x86 target as=
 well
> as in oceton and ath25, the proposed patch on GitHub should be merged
> first:
> * treewide: use unique profile names #3082
> https://github.com/openwrt/openwrt/pull/3082
>=20
> Newly produced files would look like the following:
> * openwrt-linksys_wrt3200acm-initramfs-kernel.bin
> * openwrt-linksys_wrt3200acm.manifest
> * openwrt-linksys_wrt3200acm-squashfs-factory.img
> * openwrt-linksys_wrt3200acm-squashfs-sysupgrade.bin

I just think of ar71xx and ath79, where we have the same device but differe=
nt targets. Of course, the name won't be exactly equal, as ath79 will have =
e.g. tplink_ prefix and ar71xx won't.
For bcm63xx, we have two subtargets that build the same devices.
If we look at PR#2957, we might have a now bmips target at some point that =
features the same devices as bcm63xx.

This won't necessarily break anything, as images will still be in different=
 folders (at least in /bin).

However, we couldn't tell the difference between ar71xx/ath79 or similar fr=
om the image name (easily) after this change, or whether it's generic or sm=
p for bcm63xx. For my personal taste, this drawback is bigger that the gain=
 we will get from removing the target/subtarget part.

So, unless there is overwhelming support, I tend to NAK this.

Best

Adrian

>=20
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
> It's been a while since I made a controversial patch[0] so it feels about=
 time.
>=20
> [0]: https://github.com/openwrt/openwrt/pull/2107
>=20
>  include/image.mk                   | 9 +++++----
>  package/base-files/image-config.in | 9 +++++++++
>  2 files changed, 14 insertions(+), 4 deletions(-)
>=20
> diff --git a/include/image.mk b/include/image.mk index
> 984b64fb9c..c6fc467c9e 100644
> --- a/include/image.mk
> +++ b/include/image.mk
> @@ -37,11 +37,12 @@ KDIR=3D$(KERNEL_BUILD_DIR)
> KDIR_TMP=3D$(KDIR)/tmp
> DTS_DIR:=3D$(LINUX_DIR)/arch/$(LINUX_KARCH)/boot/dts
>=20
> +IMG_PREFIX_TARGET:=3D$(if $(CONFIG_TARGET_FILENAMES),$(BOARD)$(if
> +$(SUBTARGET),-$(SUBTARGET))-)
>  IMG_PREFIX_EXTRA:=3D$(if $(EXTRA_IMAGE_NAME),$(call
> sanitize,$(EXTRA_IMAGE_NAME))-)  IMG_PREFIX_VERNUM:=3D$(if
> $(CONFIG_VERSION_FILENAMES),$(call sanitize,$(VERSION_NUMBER))-)
> IMG_PREFIX_VERCODE:=3D$(if $(CONFIG_VERSION_CODE_FILENAMES),$(call
> sanitize,$(VERSION_CODE))-)
>=20
> -IMG_PREFIX:=3D$(VERSION_DIST_SANITIZED)-
> $(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$
> (BOARD)$(if $(SUBTARGET),-$(SUBTARGET))
> +IMG_PREFIX:=3D$(VERSION_DIST_SANITIZED)-
> $(IMG_PREFIX_VERNUM)$(IMG_PREFIX_
> +VERCODE)$(IMG_PREFIX_EXTRA)$(IMG_PREFIX_TARGET)
>  IMG_ROOTFS:=3D$(IMG_PREFIX)-rootfs
>  IMG_COMBINED:=3D$(IMG_PREFIX)-combined
>  IMG_PART_SIGNATURE:=3D$(shell echo
> $(SOURCE_DATE_EPOCH)$(LINUX_VERMAGIC) | mkhash md5 | cut -b1-8)
> @@ -293,7 +294,7 @@ endef
>=20
>  define Image/Manifest
>  	$(call opkg,$(TARGET_DIR_ORIG)) list-installed > \
> -		$(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-
> $(PROFILE_SANITIZED)).manifest
> +		$(BIN_DIR)/$(IMG_PREFIX)$(if
> +$(PROFILE_SANITIZED),$(PROFILE_SANITIZED)).manifest
>  endef
>=20
>  define Image/gzip-ext4-padded-squashfs
> @@ -317,7 +318,7 @@ ifdef CONFIG_TARGET_ROOTFS_TARGZ
>    define Image/Build/targz
>  	$(TAR) -cp --numeric-owner --owner=3D0 --group=3D0 --mode=3Da-s --
> sort=3Dname \
>  		$(if $(SOURCE_DATE_EPOCH),--
> mtime=3D"@$(SOURCE_DATE_EPOCH)") \
> -		-C $(TARGET_DIR)/ . | gzip -9n >
> $(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-
> $(PROFILE_SANITIZED))-rootfs.tar.gz
> +		-C $(TARGET_DIR)/ . | gzip -9n >
> $(BIN_DIR)/$(IMG_PREFIX)$(if
> +$(PROFILE_SANITIZED),$(PROFILE_SANITIZED))-rootfs.tar.gz
>    endef
>  endif
>=20
> @@ -385,7 +386,7 @@ define Device/Init
>=20
>    IMAGES :=3D
>    ARTIFACTS :=3D
> -  IMAGE_PREFIX :=3D $(IMG_PREFIX)-$(1)
> +  IMAGE_PREFIX :=3D $(IMG_PREFIX)$(1)
>    IMAGE_NAME =3D $$(IMAGE_PREFIX)-$$(1)-$$(2)
>    IMAGE_SIZE :=3D
>    KERNEL_PREFIX =3D $$(IMAGE_PREFIX)
> diff --git a/package/base-files/image-config.in b/package/base-files/imag=
e-
> config.in
> index 3432db525a..5a70d51a7a 100644
> --- a/package/base-files/image-config.in
> +++ b/package/base-files/image-config.in
> @@ -264,6 +264,15 @@ if VERSIONOPT
>  			Enable this to include the revision identifier or the
> configured
>  			version code into the firmware image, SDK- and
> Image Builder archive
>  			file names
> +
> +	config TARGET_FILENAMES
> +		bool
> +		prompt "Target and subtarget in filenames"
> +		default n
> +		help
> +			Enable this to include the target (and subtarget) in
> +			firmware image, SDK- and Image Builder archive file
> names
> +
>  endif
>=20
>=20
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=F+pV4GqEWzOZWv=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7mgekACgkQoNyKO7qx
AnBX4BAAlII3U/v8pYypHFO91aDZ29kuMaPeLXBO1QXbEvHULPa6pLOWU5MHkFVM
W8M99sl32CecknAn/fnvMfNljj6+bhG1EB1HWDLsasuHzbyHPaoN4um9RF/f0FbU
KauwbqWO7HstBmRR4skLEDKd09idbAoJZTlec0f+60e9YRJTSd1+4kiyybTzJpV3
e645WKpEXbcoHXg3Q+WH/LiXkgZ9oVP73WQLT2XMh+bAVF4dV1bWvAS3neN2yReR
9CDLlQhwim3NT/ghvU1ZH+UAoGHCf9We8PcxlsatB3/k2CmE0ShyKqkhBxQWaXDk
lgtRmbNM8gb3Kmpiu2Y3hM3anovLWw8ofQn5xMNMVdujzuqQV9BiUln5eXSN/6Sv
0ML7H+GSpkO4pWYEffWZS8awzEpgBdygjWOlf2dcliAkhii5kj3nEz9ub3E6/68z
MFY52ABcHxy6kxNVXQtqTrBW1afXNkNpUQv1FfNqsQ2z15D/4/mbEaQPey3KNeWa
FVJxssWS704FjBYr9mYAceGPkoqrsCiTQqKYK+po+ah2VqNTSJMS1c4KbyxAKjMw
z9b4BJRSnhu8gx6vdtBMq5T5vyE49KTKk3GU5BHr7XeLlXXl5eQBaU3Ld6TvMWLc
+CwtFrFKmWzSSCYZeqgiW3bXeaDXOzpMwud0dzgYB3ykYBjNPUw=
=BiMi
-----END PGP SIGNATURE-----


--=-=F+pV4GqEWzOZWv=-=--



--===============4668807426687475281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4668807426687475281==--


