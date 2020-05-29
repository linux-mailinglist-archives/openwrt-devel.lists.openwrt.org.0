Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F1D1E7D6E
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 14:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nFscGUIn1xUMZtIRSbMLOOt/nMniuC8OLvIe/JTinF8=; b=fhk2XAD/f7UOifylhVXswNpl3
	FI2dZzS55sMgCEddG9BzdREhIWQoqNZ2LrgP7TC07DwVsrwhzgdLKJmt/ZDqscjEpQVY+gzoC7Out
	6OiNw77J3PhJOxC/oILYvzdZVj/SFcGuGZNNb8NRFmY62XkZjUqPkLJMyj/xBnLr+NwZ/5H2DhTrY
	gpV3ywB74Mk0CuHxGvsnnLo+YAU1dpXY8zLWUWCTVgTBSFyKNyzNAowGP8d95MOeCJU6kAh1+WeyM
	tZBrBYcNh2pwxEN4Bgi0h4/cbFT2ZYt7y87z4pZROeTAJxyAOkxXhlhbxPljwWXlnmGzZf9OZtena
	gNUjFB+Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeeLs-0003Ag-56; Fri, 29 May 2020 12:43:08 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeeLl-0003A2-Gr
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 12:43:03 +0000
Received: from desktop ([188.192.133.27]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MqZE0-1jA2d62mzw-00maVm; Fri, 29 May 2020 14:42:56 +0200
From: <mail@adrianschmutzler.de>
To: "'Linus Walleij'" <linus.walleij@linaro.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200529122039.1246329-1-linus.walleij@linaro.org>
In-Reply-To: <20200529122039.1246329-1-linus.walleij@linaro.org>
Date: Fri, 29 May 2020 14:42:56 +0200
Message-ID: <00da01d635b6$ad9a5120$08cef360$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQFc5es1w/ItjLqEKpq6q4Jaa1fWE6mxn/xg
Content-Language: de
X-Provags-ID: V03:K1:KXeOoTFducgq5kqNN2LLiMEEI85OrsSXJr4b0gWqMdzpIkP4l7W
 TYyxyp3dpog5e+gOaUnUC6r8HayKTpP3JsQ19mvC1ksstokTj4JU6sU0djYqVXXa7GUfFE0
 4uLZ5QKSlC7PqtgaMlm9bwwTCUeeX6KLgpcP/hueaU+7ynm+Na6fwbTQOBX5bU2bipEak42
 mmvMAKZosnC0e1jQ24Q7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c76l4NCIDpI=:/hsgalYd6YIBJ8tYtzjOEW
 pAlyDUzhffi0BFXlbFLgqJDPqPtGwYOIIvvZG2aX9IuJoJfC4TRD6AW3AffCzx7VBG0eskdml
 wMc9LkH5aWxZkTrnZzOxhBEjz3upwHP+8wXA175SH1xJua7ky8vs0qk+R1yRVnrwa/EYJ7wlB
 88MHMtz5XRiMFgJKX1vIE2oZ3XPvomVJZLEfr55ALfWsMDGleMiESZdCm2E+OpaHOib3bdi3a
 D5qI18uArfQh2ZZA9ZoCZ8REnNiQZSfWZYJZBGYNTZxoR0OS+CLojAoqPWUXqCkb0L2nz3ZaN
 lSY4FFYqh2luKi0lBVgdDA7hyOKeIB1xlXnxiKQXA5LmtFJrM3iDZNwct4LQwSAx1NOgKMXwm
 1N+kiDhm3tDcsUSlwOBYTNFbN6J19Z7wWJgRNACE+C6IaCF6Zz7WwGD52pcbKoeHg4VRjzMx+
 We3BxRN7jNop1T/t8Ssag2Z/FW6QxcMTiv9vrKCpc6R4n1N6+MGswjd6erIKHpNiK3mpEjzrI
 sFoW0OpiDgge3ge4sj/5bkE9tW6zxP+v+vreTBhc4f3jcQUpV8jKrGRVn3nhH2MQl/JV7c/Ix
 84NEpzPHGF7FA4fRSJqa0USZ8pDOvqnU6vCsWZSnlsUSU2SN6unlwtQ0gXCF9RzARMwD2dV+x
 tbqXVEzLxvlggUmvYT0625sjryeJf+6zktk4tzt5mYgfCsrgV4Upzan1otrP+fM+IR2YMTmk/
 1q7RDXGkOpmVO/7ChJdaJtM8HHonk/tqB7ywGJvqQ5wpHUab1xNWt/Sq3ixoKYZUW88LdIlfT
 1nqEn8/ZzgdL8Fx8gJMIac+qN5XtWPJItOOvUFaShca3N9Tp3sgtqw86UXFX9EWESvdTULN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_054301_855544_6A9D8E9A 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============3034295639747252475=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3034295639747252475==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=DpoK2peHhBIxsN=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=DpoK2peHhBIxsN=-=
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

Hi,

that might be irrelevant for your patch in its current state, but note that=
 DEVICE_TYPE is not properly implemented at the moment.

A partial discussion about that can be found here:
http://lists.infradead.org/pipermail/openwrt-devel/2020-February/021809.html

Effectively, DEVICE_TYPE currently is a per-target variable, but for some d=
evices it's incorrectly used as if it was a per-device variable. (by that, =
effectively using the last value of the variable for the entire target.)

Therefore, the configuration for individual devices might be different than=
 what's expected from the unaware observer.

This should be fixed by properly setting up DEVICE_TYPE as a per-device var=
iable, which itself is not a problem. However, it might need some effort to=
 correctly adjust the current cases where it is used as per-target variable=
 by intention.

I will try to have another look at this myself soon.

Best

Adrian

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

--=-=DpoK2peHhBIxsN=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7RA0wACgkQoNyKO7qx
AnC0dRAAgjxpz2CL/zye12DlquGG4HjOSoPuS6Yu3k49QzcNWscA5iaKi5eK6+Gj
cI2dtDzyEizdCfceq7WFi0k/m0f28ViLijDWHfHNoODzrbf8yuyOMHIIaanOZLQs
k/S2WZJ7LCxnoPP4HsGSWgEPoNO5BYJ7sD1JHbzKyn2xo2fW8XiOJZRFQktsfyvf
EoeQ+wdeyBRgxu85zxluEKKi9e9IOAb4+YTQvQWdMkijLVnPXM9fPUQt2hlXW//f
i/1f00LhapLOz6u55lWXlQlCb1A046ba5kUJZxslOxXN5Jmv6qnnGHqfegpjMbEX
WMIISoK/4BRTZ6VI4tSGjMmcryhHwnfWhoD3WMNUVHlkBnJftCe8EVyCMDrYO5pS
3v0A1m4SgUVLR6oqqx6SIPG6n9s0yjaqGC3Ui67ojzTHoF/cNULyKiZCJ6NF81XR
X6ygRF4EHxh78fJaXSbLVY8fE1OJ5qhPpRnJnhNCyt2cWh1HckQiA8q6n6upMPke
KyDcCaBgV5jsbBsYZiXFPQ9a3fpdZtoAo5VFvtTLEj5LMdVf5V32ByhHQJ57l7NF
aFWOPmYNOetxbKgS+j1PitFNpFzk+CsUhD8LtVt6zZuFpJfwtFkjyyPTsZEtYbq+
yxJGrdiP8BLqveGb3ifsZu189efwPLWpquH0zZH51JTavtutZN4=
=03EF
-----END PGP SIGNATURE-----


--=-=DpoK2peHhBIxsN=-=--



--===============3034295639747252475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3034295639747252475==--


