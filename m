Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CE21E879A
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 21:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s56QPGTkd5a0K4XblkxoDAhRXpQMg1ieR2zlLymXvUU=; b=YZ6XFPTiakYTzgcPotNeqzYab
	VQaKsd3QIgns6OafT13TENesiWZYJoNCWs7n/cQbs8KxFDVQO8wYUwKxSGozHUC1uiPWPojfDVckl
	RLDbiTC3nF2feSFBwxAk4D31Q30TCiM2ZQ75p7EEX1ke4AAridGgb6AbXspyiYxtMO7vrb1kAxvnp
	DihoVje8dhJsJDT49igU2sCHeBOnKUZ4l4tUr+V0j68pBAEJ03wiAPcZXrb9hHWEVYbfpSneRQpft
	a95d/wCgOOh+fd2dLiX92LYIjKOV4F7LfnFWpNuRy5kJJhg0ZJCwi+4G1jOns9UdASHUsZigYD/kC
	31KpD74Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekWv-0004Hm-6L; Fri, 29 May 2020 19:18:57 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekWo-0004HE-3p
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 19:18:52 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id EA3C327F67;
 Fri, 29 May 2020 21:18:43 +0200 (CEST)
To: Jo-Philipp Wich <jo@mein.io>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <79845b43-f39d-c215-e968-41b93eb00b65@universe-factory.net>
Date: Fri, 29 May 2020 21:18:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_121850_830317_9571D878 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2 4/4] build: use zstd for SDK and
 ImageBuilder tarballs
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
Content-Type: multipart/mixed; boundary="===============0725588957271239584=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0725588957271239584==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="s948jQwUjIb2i9oQ6M1nseLvi8skqVgE3"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--s948jQwUjIb2i9oQ6M1nseLvi8skqVgE3
Content-Type: multipart/mixed; boundary="3d6jo2xvr8uBMqKNMHGIIocESyaGx5av9";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Jo-Philipp Wich <jo@mein.io>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <79845b43-f39d-c215-e968-41b93eb00b65@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH v2 4/4] build: use zstd for SDK and
 ImageBuilder tarballs
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>
In-Reply-To: <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>

--3d6jo2xvr8uBMqKNMHGIIocESyaGx5av9
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/17/20 1:51 PM, Matthias Schiffer wrote:
> Comression level -19 was chosen as it provides a very good tradeoff
> between compression ratio and performance, especially in multithreaded
> operation.
>=20
> Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>

Jow, do you have any opinion on this? I assume this will also require
changes to the phase2 builtbot config - at least the SDK download pattern=
,
and installation of zstd in the build environment. Anything else?


> ---
>  target/imagebuilder/Makefile | 8 ++++----
>  target/sdk/Makefile          | 8 ++++----
>  2 files changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/target/imagebuilder/Makefile b/target/imagebuilder/Makefil=
e
> index b463feb456ee..5c09109150a8 100644
> --- a/target/imagebuilder/Makefile
> +++ b/target/imagebuilder/Makefile
> @@ -21,7 +21,7 @@ IB_IDIR:=3D$(patsubst $(TOPDIR)/%,$(PKG_BUILD_DIR)/%,=
$(STAGING_DIR_IMAGE))
> =20
>  all: compile
> =20
> -$(BIN_DIR)/$(IB_NAME).tar.xz: clean
> +$(BIN_DIR)/$(IB_NAME).tar.zst: clean
>  	rm -rf $(PKG_BUILD_DIR)
>  	mkdir -p $(IB_KDIR) $(IB_LDIR) $(PKG_BUILD_DIR)/staging_dir/host/lib =
\
>  		$(PKG_BUILD_DIR)/target $(PKG_BUILD_DIR)/scripts $(IB_DTSDIR)
> @@ -86,12 +86,12 @@ endif
>  	(cd $(PKG_BUILD_DIR); find staging_dir/host/bin/ $(IB_LDIR)/scripts/d=
tc/ -type f | \
>  		$(XARGS) $(SCRIPT_DIR)/bundle-libraries.sh $(PKG_BUILD_DIR)/staging_=
dir/host)
>  	STRIP=3Dsstrip $(SCRIPT_DIR)/rstrip.sh $(PKG_BUILD_DIR)/staging_dir/h=
ost/bin/
> -	$(TAR) -cf - -C $(BUILD_DIR) $(IB_NAME) | xz -T$(if $(filter 1,$(NPRO=
C)),2,0) -zc -7e > $@
> +	$(TAR) -cf - -C $(BUILD_DIR) $(IB_NAME) | zstd -T0 -19 -f -o $@
> =20
>  download:
>  prepare:
> -compile: $(BIN_DIR)/$(IB_NAME).tar.xz
> +compile: $(BIN_DIR)/$(IB_NAME).tar.zst
>  install: compile
> =20
>  clean: FORCE
> -	rm -rf $(PKG_BUILD_DIR) $(BIN_DIR)/$(IB_NAME).tar.xz
> +	rm -rf $(PKG_BUILD_DIR) $(BIN_DIR)/$(IB_NAME).tar.zst
> diff --git a/target/sdk/Makefile b/target/sdk/Makefile
> index 6d818347204a..13389c849958 100644
> --- a/target/sdk/Makefile
> +++ b/target/sdk/Makefile
> @@ -81,7 +81,7 @@ KERNEL_FILES :=3D $(patsubst $(TOPDIR)/%,%,$(wildcard=
 $(addprefix $(LINUX_DIR)/,$(
> =20
>  all: compile
> =20
> -$(BIN_DIR)/$(SDK_NAME).tar.xz: clean
> +$(BIN_DIR)/$(SDK_NAME).tar.zst: clean
>  	mkdir -p $(SDK_BUILD_DIR)/dl $(SDK_BUILD_DIR)/package
>  	$(CP) -L $(INCLUDE_DIR) $(SCRIPT_DIR) $(SDK_BUILD_DIR)/
>  	$(TAR) -cf - -C $(TOPDIR) \
> @@ -156,13 +156,13 @@ $(BIN_DIR)/$(SDK_NAME).tar.xz: clean
>  	find $(SDK_BUILD_DIR) -name CVS | $(XARGS) rm -rf
>  	-make -C $(SDK_BUILD_DIR)/scripts/config clean
>  	(cd $(BUILD_DIR); \
> -		tar -I 'xz -7e' -cf $@ $(SDK_NAME); \
> +		tar -I 'zstd -T0 -19' -cf $@ $(SDK_NAME); \
>  	)
> =20
>  download:
>  prepare:
> -compile: $(BIN_DIR)/$(SDK_NAME).tar.xz
> +compile: $(BIN_DIR)/$(SDK_NAME).tar.zst
>  install: compile
> =20
>  clean:
> -	rm -rf $(SDK_BUILD_DIR) $(BIN_DIR)/$(SDK_NAME).tar.xz
> +	rm -rf $(SDK_BUILD_DIR) $(BIN_DIR)/$(SDK_NAME).tar.zst
>=20



--3d6jo2xvr8uBMqKNMHGIIocESyaGx5av9--

--s948jQwUjIb2i9oQ6M1nseLvi8skqVgE3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7RYBIACgkQFu8/ZMsg
HZypRhAAx5mAptfIcWCyGA8PDe9K6zAR2R9uXCMCsl8ojnSpmMyw1O1TsHZKkgQh
c8YlKDeFDDVn/qw8OkI123WWo8omsjRkuP/tgOa03KehVVXHLzQuouJCJma1jSnn
SGFGhVLo+iOflq7v0pQ5CBdp824hZvQtfBcT9VaLR//+kHmVjTsSDZj7nx8m3ACW
yIx1khw3vlVZdL8tbXUsl87jhzCweZy4QPNQ7BdLmFqoqIhSyxLVRHOkVB9JR28A
KJGdJFWfK7Xt1ZzDJiq7oQVVt4eedoz3QIvNFCbYIk0Ohqwk6qwFoyAhEj3mY4Fn
fo+MNhY4WwXi1DmuqdVwGD0q/RHX4A28FWl238S2gUJ40Lj3hWH8RpI66lbTcdbs
+oxcfTh2ewoLORNDO+5qSNG6WZPK68KWolUBRpRzlixtpBcO3ey9YRt4TRBSFIO4
pq+PCQ3dXJPSrvd7uxO9dgOx9cXN6iHfaTj48rjTiMEz0kflUzW9dxvThYQ4WR7s
EsTElJFQVzf5lir8z2CZBM8QrCEOeGCkVR/0glL4GcEtFdqE1XF6UuYubazWjXML
lZ0jCiI4L9R143M3eOdty71FkQ6g+88oUsaMb43HmjxHzPuQLrnYCQxETiz0e8KP
DG71SInauUDsfFV46hTlH0dCAXx+Pxjn0YgId+JC2ACg3DtJZcI=
=1/jm
-----END PGP SIGNATURE-----

--s948jQwUjIb2i9oQ6M1nseLvi8skqVgE3--


--===============0725588957271239584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0725588957271239584==--

