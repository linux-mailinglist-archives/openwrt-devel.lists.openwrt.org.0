Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705E21E8544
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 19:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PulgfIU2T4vB4+gnOH6zQz5E+IP/on/hQHzNxYGhBTk=; b=qmSDkxOWpZjI0KxcPOpQIn1Fq
	Rpv1TT69sqIs4vPvT6pQEsHdgtvLM0/5bkEpgWXVl5LgfkN76ml/+eT5Tsnvr2uPbD31rQOLby0Qk
	rCxTtWausuijLYX2pI5BTZuuEMlNaLcNNeYU5Bj91/Xlz+NuKXQE6c5Ihcd2CYiDUPOZns+DtRsE0
	ZFc7EX6I+LY8wMOHoBRJO04XDw9+I4qDsGo5K9zyVEn7UpwPLxgEgUXXcED4UTH2UyH1CuPCMZk3l
	NO90YKPBavmYuD828Bji71kM4DsZd8k8UWdPuobtdUVyK60Y6F6ZDIB14ouFHGZ01GRh+B6Q+r5bh
	4flE7WzAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeizP-0006as-Rd; Fri, 29 May 2020 17:40:15 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeiz9-0006T0-Ej
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 17:40:01 +0000
Received: from desktop ([188.192.133.27]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MeUPU-1j6lg746R2-00aRP8; Fri, 29 May 2020 19:39:56 +0200
From: <mail@adrianschmutzler.de>
To: "'Linus Walleij'" <linus.walleij@linaro.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200529122039.1246329-1-linus.walleij@linaro.org>
In-Reply-To: <20200529122039.1246329-1-linus.walleij@linaro.org>
Date: Fri, 29 May 2020 19:39:55 +0200
Message-ID: <013201d635e0$2abfaf00$803f0d00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQFc5es1w/ItjLqEKpq6q4Jaa1fWE6mx65Dg
Content-Language: de
X-Provags-ID: V03:K1:zczk8MBL+S9tHA2iQpnvutG5RVSsOug5NSdSLYhf2EvYarJT519
 WYqHoevYf08npSXnzb+crwQLNEIqkkRzsrCR6wgufvOy++jSpMenD+1jG5yKJq3Cfk2c1v2
 hn3RIvQ04n9QVdECGoxJSp3yUrWgzh26aRamvaB5yEV2ceO3In+GWl/l1cP7q8H9dXEltaY
 B61ZHZfqXXKV/mJpE21fQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PxJBUlmOCNw=:TvzTJ9QewX4vbGmBptTK7J
 Q0g6YqZ9uph+3UvWS0DiB1FC0I2dZgGm/OvfS90+TgEu2ucyH6NLRUoGxtyqZrparvDIZCSiK
 USlRIneTaQZ2GyS8be0YBqIfoyzDVYAYdf0PqmakcPmoKN86oPbK39PFWz5dVqBO37uNwgv7m
 zFuI6BYP4Q67CJGUCYx24hFy+llhrwFovNo6/hF2kEDEMzIVR/uyWXPFsBunra8V6fRfTxk7l
 /t3JW3uJytj3Pn8S7XOoaB/Hu9rCNBuYPa3RKwxTl+fsj4mZlZQk++cxtDFpwYIIY3ahSlwnG
 G1k07JtW/6HTVfAbPnYBcu2xUVywExVn8ZIVCZ1oUOZi82AqHVXwxdEXTnugzMf1/r89RXwlE
 ja+dd/Ts3Hu+cAq4XQ+xUb7wOM6PhT8sd3h5Zw/t5glNiOPE9q5zrd/AiFVOyC5CmXPqUIB9f
 Bxl7Ek6T6RQZKy0po1NNW3aSnCT1GRZykx8vMIl0c1igmKCJFsnXHhnV1ecYvy0pIC2iMlzD/
 +ZujAhAY5RVIgEIyiT1Pr2nEPuaP7PFgUKY8dKteRXfOb904AUPWk2dtiLj1lt2n0E4MEZefN
 q3hucmqCXhC8ez+WPo2SOMqX8x878r1evACSj0c+YMwIxBy14CmiLUlrFtFixunJwtROXkD7g
 BC+3RepOY5r+iNWdCFppNSsyih/cVlgFwpS0eQJd8vzT3eCbwLt3Cyhqzk5dByruD29MGCm3H
 KE43p1uEIanXxjEcfbRYa3NahCSe9LEZv25gDNFeOz+vAy4tSBxxggjrAoiU1gsevAkJOuJpX
 K5QfVh7DT2ZRTTlVXwgSUf42eHl6I1MlDIxXMShQXHiXalsUNI846U1izWsDpZz34eh8HtI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_103959_788916_58A32E7A 
X-CRM114-Status: GOOD (  27.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] build: reflect DEVICE_TYPE to top level
 config
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
Content-Type: multipart/mixed; boundary="===============8248546027097645255=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8248546027097645255==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=79JhU5CsO2KXC5=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=79JhU5CsO2KXC5=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Linus Walleij
> Sent: Freitag, 29. Mai 2020 14:21
> To: openwrt-devel@lists.openwrt.org
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Subject: [OpenWrt-Devel] [PATCH] build: reflect DEVICE_TYPE to top level
> config

Hi again,

sorry for intruding into this subject, but this has annoyed me for a long t=
ime already.

I've just sent a small patchset to tidy up the existing situation.

>=20
> I made a patch to select a tool inside busybox by default on NAS type box=
es,
> but this does not properly work because the package and image build
> processes are cleanly separate entities.
>=20
> I also noticed that this becomes a problem if you build multiple profiles:
> maybe one of them is NAS and one of them is a router. You still want the
> least common denominator to decide: if you selected both NAS:es and
> routers, build packages that will be suitable for both NAS and routers.
>=20
> To achieve this I reflect the DEVICE_TYPE up to the Kconfig level and def=
ine
> two Kconfig symbols:
>=20
> config DEVICE_TYPE_ROUTER
>        bool
>=20
> config DEVICE_TYPE_NAS
>        bool
>=20
> These will be set from the DEVICE_TYPE of each profile and it is possible=
 to
> select both.

Unfortunately, this doesn't seem to work like (at least) I would expect it =
to:

For the "Default Profile", the CONFIG_DEVICE_TYPE_* is set based on the tar=
get/subtarget Makefile.
If you select an individual device as target profile, the setting in the (s=
ub)target Makefile is ignored (!), and the default ("router") is used. If t=
he device has a DEVICE_TYPE in the device definition (which is wrong based =
on the initial concept, see my patch 1/3), then this value will be used.
If you select "Multiple devices", then CONFIG_DEVICE_TYPE_* won't be set at=
 all.

As you stated earlier, it's just not so easy to connect the target and devi=
ce scopes with each other. At the moment, I see two ways out of this:

1. We just live with the fact that the switch between router/nas/basic is p=
er subtarget and adjust the code based on that.
2. We make the DEVICE_TYPE a real device-dependent variable and move it fro=
m target.mk to image.mk. Then, we could still set default values per target=
, but would have to adjust DEVICE_PACKAGES instead of DEFAULT_PACKAGES, whi=
ch would lead to problems when building the Default Profile, but would make=
 it much easier to deal with the individual devices.

Anyway, thanks for stirring this topic up again. Unfortunately, I don't thi=
nk this will come cheap.

Best

Adrian

>=20
> I then modify the busybox config to take this into account and conditiona=
lly
> build hdparm for CONFIG_DEVICE_TYPE_NAS.
>=20
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  include/image.mk               |  1 +
>  include/target.mk              |  1 +
>  package/utils/busybox/Makefile |  2 +-
>  scripts/metadata.pm            |  2 ++
>  scripts/target-metadata.pl     | 12 ++++++++++++
>  5 files changed, 17 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/image.mk b/include/image.mk index
> 984b64fb9c73..8104c040a1f7 100644
> --- a/include/image.mk
> +++ b/include/image.mk
> @@ -634,6 +634,7 @@ endef
>  define Device/DumpInfo
>  Target-Profile: DEVICE_$(1)
>  Target-Profile-Name: $(DEVICE_DISPLAY)
> +Target-Profile-Devicetype: $(DEVICE_TYPE)
>  Target-Profile-Packages: $(DEVICE_PACKAGES)
>  Target-Profile-hasImageMetadata: $(if $(foreach
> image,$(IMAGES),$(findstring append-metadata,$(IMAGE/$(image)))),1,0)
>  Target-Profile-SupportedDevices: $(SUPPORTED_DEVICES) diff --git
> a/include/target.mk b/include/target.mk index 9bd4c14936c1..e6f26cbfdf3d
> 100644
> --- a/include/target.mk
> +++ b/include/target.mk
> @@ -73,6 +73,7 @@ define Profile
>  	echo "Target-Profile: $(1)"; \
>  	$(if $(PRIORITY), echo "Target-Profile-Priority: $(PRIORITY)"; ) \
>  	echo "Target-Profile-Name: $(NAME)"; \
> +	echo "Target-Profile-Devicetype: $(DEVICE_TYPE)"; \
>  	echo "Target-Profile-Packages: $(PACKAGES) $(call
> extra_packages,$(DEFAULT_PACKAGES) $(PACKAGES))"; \
>  	echo "Target-Profile-Description:"; \
>  	echo "$$$$$$$$$(call shvar,Profile/$(1)/Description)"; \ diff --git
> a/package/utils/busybox/Makefile b/package/utils/busybox/Makefile index
> 01441d1e87d1..f504117f60f3 100644
> --- a/package/utils/busybox/Makefile
> +++ b/package/utils/busybox/Makefile
> @@ -94,7 +94,7 @@ endif
>  define Build/Configure
>  	rm -f $(PKG_BUILD_DIR)/.config
>  	touch $(PKG_BUILD_DIR)/.config
> -ifeq ($(DEVICE_TYPE),nas)
> +ifeq ($(CONFIG_DEVICE_TYPE_NAS),y)
>  	echo "CONFIG_HDPARM=3Dy" >> $(PKG_BUILD_DIR)/.config  endif
>  	grep 'CONFIG_BUSYBOX_$(BUSYBOX_SYM)' $(TOPDIR)/.config | sed
> -e "s,\\(#
> \)\\?CONFIG_BUSYBOX_$(BUSYBOX_SYM)_\\(.*\\),\\1CONFIG_\\2,g" >>
> $(PKG_BUILD_DIR)/.config diff --git a/scripts/metadata.pm
> b/scripts/metadata.pm index 1826a040a116..5062dba37ec0 100644
> --- a/scripts/metadata.pm
> +++ b/scripts/metadata.pm
> @@ -140,6 +140,7 @@ sub parse_target_metadata($) {
>  			$profile =3D {
>  				id =3D> $1,
>  				name =3D> $1,
> +				device_type =3D> "router",
>  				has_image_metadata =3D> 0,
>  				supported_devices =3D> [],
>  				priority =3D> 999,
> @@ -150,6 +151,7 @@ sub parse_target_metadata($) {
>  			push @{$target->{profiles}}, $profile;
>  		};
>  		/^Target-Profile-Name:\s*(.+)\s*$/ and $profile->{name} =3D
> $1;
> +		/^Target-Profile-Devicetype:\s*(.+)\s*$/ and $profile-
> >{device_type}
> +=3D $1;
>  		/^Target-Profile-hasImageMetadata:\s*(\d+)\s*$/ and
> $profile->{has_image_metadata} =3D $1;
>  		/^Target-Profile-SupportedDevices:\s*(.+)\s*$/ and $profile-
> >{supported_devices} =3D [ split(/\s+/, $1) ];
>  		/^Target-Profile-Priority:\s*(\d+)\s*$/ and do { diff --git
> a/scripts/target-metadata.pl b/scripts/target-metadata.pl index
> ee0ab5a71811..fbd9fa70c08b 100755
> --- a/scripts/target-metadata.pl
> +++ b/scripts/target-metadata.pl
> @@ -244,6 +244,12 @@ EOF
>  				print "\tselect DEFAULT_$pkg\n";
>  				$defaults{$pkg} =3D 1;
>  			}
> +			if ($profile->{device_type} =3D~ "router") {
> +				print "\tselect DEVICE_TYPE_ROUTER\n";
> +			}
> +			if ($profile->{device_type} =3D~ "nas") {
> +				print "\tselect DEVICE_TYPE_NAS\n";
> +			}
>  			my $help =3D $profile->{desc};
>  			if ($help =3D~ /\w+/) {
>  				$help =3D~ s/^\s*/\t  /mg;
> @@ -328,6 +334,12 @@ config HAS_SUBTARGETS  config HAS_DEVICES
>  	bool
>=20
> +config DEVICE_TYPE_ROUTER
> +	bool
> +
> +config DEVICE_TYPE_NAS
> +	bool
> +
>  config TARGET_BOARD
>  	string
>=20
> --
> 2.26.2
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=79JhU5CsO2KXC5=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7RSOgACgkQoNyKO7qx
AnCb5RAAwzusqqDG3akcvUKnVP5S21qPS0QD7DWJE/7Q7zYbJH3EGmAJAcl+xs8k
b90X91oJJz9Y1Byd1D6RB4nopql3C8ZXPWr7Y80jCGf40qnQ8R9iHrE1FOJKxly5
B6jMrT/vHaTwU3GZL6Mr6l0Tr51GuXJ5NxA6v/syVT9IzZJWyU7bZnC3PBUfb93J
JPzlxQRAy4+fEHEIpyyQ1Kb2v46MsaRxYV5pjEzM3+NjCzH0IpOjwlDflJhO6pZt
nU0QwPyyGRBpKuu9zn17w3a4nU9CxS/7KAO1gHaSpSJz4MBblo0lSs8PchCSjN5U
/4kGaZLhMJIetXq/AcXlWxl0+uqIRu9Z99jewBDG/HK8v/5YrrgxpKo9LSpVmhdx
IKGhlSh/bgQ8NlhexSwxN1iuhOqF/zMqV176/a5ihi3TKSjarWEkBsuXm5laiJyA
bjqtCO0ktZw9l4QRo5+60qqrI5uCsYssCPqQaPNojDc0b/ytxW6w3X5vCHnP4Ho+
vCU4gsxzDpNLX3RAlxneXhYM4fY8GykeE3TopywatPBX2KYFceZJUS28WgoF8gz3
fyxUHa3Kd3YCanZS3FS8j0qXz7Yov6926HxkLjnsfgxftpyaokJhxuWWVWUweOj5
poxtfmybX80wjlKRT2jgEMBXvjQxd9UebfWJnl1vcNWRfotxleo=
=feoD
-----END PGP SIGNATURE-----


--=-=79JhU5CsO2KXC5=-=--



--===============8248546027097645255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8248546027097645255==--


