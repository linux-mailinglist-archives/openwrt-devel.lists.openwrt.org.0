Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEBD33F7B
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Jun 2019 09:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y5bN/4lOERIia6csDsIrUWYALP4NOoaO2RrWHZ+PuPU=; b=itj2UyR2waT0k5cVXjZdCY//9
	oipLI7tdRNiDbbNBKsSSRKz2zF2YBhTE8xns/CG18nLoxZHYWFwsklKER2juFLsIR0uVxD6MSjXuy
	ab+VPvi2VngqdfQeU/kYgSmEvTgIzfGgDWIsW/KzvMJMuuOPtI3SD2X9eR40deuxvRVdRh9iqwlsH
	2wcZ+gD5dmwD6NXScn6DhwQcgYc8Rfpn9RXiJeoX/PAufIaBHLe7r0uuybOhlvgmQf+fQU9fZxlB4
	D4P6qLPoxSejzAQbpnJigGyVkzwjaaAH4/wdy67daiOnjGQEkD6ox9oou4WgtuCkcK7ADLgHr8BhV
	fqSWeYLuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3Uf-0007Y0-7f; Tue, 04 Jun 2019 07:04:25 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3UZ-0007Xc-0D
 for openwrt-devel@lists.openwrt.org; Tue, 04 Jun 2019 07:04:20 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 48CA0544C9; Tue,  4 Jun 2019 09:04:14 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 1033F544C7
 for <openwrt-devel@lists.openwrt.org>; Tue,  4 Jun 2019 09:04:13 +0200 (CEST)
Received: (qmail 25565 invoked from network); 4 Jun 2019 09:04:13 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 4 Jun 2019 09:04:13 +0200
To: openwrt-devel@lists.openwrt.org
References: <20190604055552.17850-1-john@phrozen.org>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 Xx5IapIyoA==
Message-ID: <a52f7d86-3360-1f60-228b-828abbdc37ca@wwsnet.net>
Date: Tue, 4 Jun 2019 09:04:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604055552.17850-1-john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_000419_197513_6F2A3AE1 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] image: make the folder that gets
 included intot he RootFS configurable
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8934827355780312686=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8934827355780312686==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="3BPrzumGhCxquU26TldXW6VvmjQnJb3jv"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--3BPrzumGhCxquU26TldXW6VvmjQnJb3jv
Content-Type: multipart/mixed; boundary="KU3R8Ng6nzv6Bc8u4ZirpM9FcjMRxqLoM";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <a52f7d86-3360-1f60-228b-828abbdc37ca@wwsnet.net>
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] image: make the folder that gets
 included intot he RootFS configurable
References: <20190604055552.17850-1-john@phrozen.org>
In-Reply-To: <20190604055552.17850-1-john@phrozen.org>

--KU3R8Ng6nzv6Bc8u4ZirpM9FcjMRxqLoM
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

comments inline.

~ Jo

On 6/4/19 7:55 AM, John Crispin wrote:
> This allows managing several different folder for varying env profiles.=

>=20
> Signed-off-by: John Crispin <john@phrozen.org>
> ---
>  config/Config-images.in | 6 ++++++
>  package/Makefile        | 2 +-
>  2 files changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/config/Config-images.in b/config/Config-images.in
> index 8548c7cd24..a618da1b6c 100644
> --- a/config/Config-images.in
> +++ b/config/Config-images.in
> @@ -286,4 +286,10 @@ menu "Target Images"
>  		  it will be mounted by PARTUUID which makes the kernel find the
>  		  appropriate disk automatically.
> =20
> +	config TARGET_ROOTFS_INCLUDE_FOLDER
> +		string "RootFS include folder"
> +		default "files"
> +		help
> +		  Override the folder that is included into the RootFS by default.
> +
>  endmenu
> diff --git a/package/Makefile b/package/Makefile
> index abbf5f91f2..054e5b5820 100644
> --- a/package/Makefile
> +++ b/package/Makefile
> @@ -76,7 +76,7 @@ $(curdir)/install: $(TMP_DIR)/.build $(curdir)/merge =
$(if $(CONFIG_TARGET_PER_DE
> =20
>  	$(CP) $(TARGET_DIR) $(TARGET_DIR_ORIG)
> =20
> -	$(call prepare_rootfs,$(TARGET_DIR),$(TOPDIR)/files)
> +	$(call prepare_rootfs,$(TARGET_DIR),$(TOPDIR)/$(if ifeq "$(CONFIG_TAR=
GET_ROOTFS_INCLUDE_FOLDER)" "",files,$(CONFIG_TARGET_ROOTFS_INCLUDE_FOLDE=
R)))

I don't think that $(if ifeq ...) is a valid Make construct, to me it loo=
ks
as if it'll simply always evaluate to $(CONFIG_TARGET_ROOTFS_INCLUDE_FOLD=
ER).
Also don't we need to filter this through the "qstrip" macro? The .config=

symbol will contain leading and trailing quotes for string value options.=


> =20
>  $(curdir)/index: FORCE
>  	@echo Generating package index...
>=20


--KU3R8Ng6nzv6Bc8u4ZirpM9FcjMRxqLoM--

--3BPrzumGhCxquU26TldXW6VvmjQnJb3jv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAlz2F+0ACgkQQuLLvzou
ZtNCMQ/+Ob/HGwSE3mnVpN7SKhQwzDGfeZ7HjC1WGxjpaDV8doasdnrYUfD10nGA
BaCUp2gOwoSgxGMaSVEvNHTg30jgkU9R6ktabKzBnCFfOoWXpLZ4hL+ygqDseheJ
WZEZb15Rs+GRDODhJDp7Qu8H9W/0gmrmPcGY73MpI6vjxStjCfZMBJH3JZ2nVt8D
ICZCBMX4iFkPkv0txIePRHV1dQVyKPIJuoBomTW6FPSpWJL3wH9Wips2oCRURZet
RFlTgf4A0TBaCYWgnT3msymM3KPaTAqRdhv0d13+r5yPUjanXODJzKyyrC41CNml
kLhkKZaXmRLGf0AZPgCTMp/K4qksTK5NJo3WuE7VAZq1VB9Uf8nPkh4hHaD0xAHV
NcyD69sofAE3A3FLzWviajt+IipnFklhNfkX5CLHvmXZvXiM4imTL3cYO3jdILBz
PgVJL+01NUw3wYwl/tXPPq55UEatLqo+a/b3FTwByi87UQ1eIkmkIHIpPqypwjyk
k6c5DBKfdwUlvqaqe+KrhhE9DTQS3l3vcocH7s9iwuusEu5DDDDOcJFVHQVKVwEs
/L12iAl94zs46vbIwOw51F6kqEVnxSC8Mwhq5bYZjuk6TrSPNeubN6K4VLIBJYf+
thVXQKukQ+AAQHJhI5WVMFSqY9JgNzV4RErkwN+lkeCRnFiTcpM=
=l4s4
-----END PGP SIGNATURE-----

--3BPrzumGhCxquU26TldXW6VvmjQnJb3jv--


--===============8934827355780312686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8934827355780312686==--

