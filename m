Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A89D01F0AF6
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 13:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iMjoXv+b6NBJv8xnt+8tiofcMZLvpme2btWHfPbfLqw=; b=WqFKW+You8NIGyeRN+sQJYEGQ
	s8e/H8ZLhYy3yJgP8bcTPEqzFkSdYyJQYuRJ6ALK28BWuBtz1nWuJUakaQAl/+jdtlF13u9UGebvy
	0/UKZH6qdzwp2J/zTLZpbvxQBkxTQLzukdIaPclogW1vpbn+iHMiRbOX2GVOos61FskbSxRoMNvNJ
	pC+5WeK0SvDiYVIV/kW6ndBeHzBB9uHnrOKwwumWJdVUnPnlOfTjpxm/QX1L4rvUWG+o2r3xtii9j
	YACvXzLhSDpFecKde0yS/YHtWUpf0wNUMIbWkIvqf5Gd8N9SRTjnIBQzlcY1Nrjpb/wWDJjQZkx8D
	ViGdlvyRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhtYO-0004xq-8n; Sun, 07 Jun 2020 11:33:28 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhtYH-0004x7-Hv
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 11:33:23 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 50E211F4BB;
 Sun,  7 Jun 2020 13:33:14 +0200 (CEST)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20200607111115.1958-1-freifunk@adrianschmutzler.de>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <0c450c30-e1c6-a592-8840-02232ae24dea@universe-factory.net>
Date: Sun, 7 Jun 2020 13:33:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200607111115.1958-1-freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_043321_891639_23F72195 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: simplify inclusion of
 subtarget image files
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
Content-Type: multipart/mixed; boundary="===============9092601466461320434=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============9092601466461320434==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="mgat9BVTowNBWKzZcMXwtotm05DjSGw1R"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--mgat9BVTowNBWKzZcMXwtotm05DjSGw1R
Content-Type: multipart/mixed; boundary="4CiQ7gl9NHZ1thfHvbGgkHwOFofNyaFWk";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <0c450c30-e1c6-a592-8840-02232ae24dea@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: simplify inclusion of subtarget
 image files
References: <20200607111115.1958-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200607111115.1958-1-freifunk@adrianschmutzler.de>

--4CiQ7gl9NHZ1thfHvbGgkHwOFofNyaFWk
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 6/7/20 1:11 PM, Adrian Schmutzler wrote:
> Many target use a repetitive if-include scheme for their subtarget
> image files, though their names are consistent with the subtarget
> names.
>=20
> This patch removes these redundant conditions and just uses the
> variable for the include where the target setup allows it.
>=20
> For sunxi, this includes a trivial rename of the subtarget image
> Makefiles.
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
[...]
> diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/ima=
ge/Makefile
> index 529baf8f57..a555cfc6d5 100644
> --- a/target/linux/ath79/image/Makefile
> +++ b/target/linux/ath79/image/Makefile
> @@ -68,20 +68,16 @@ define Device/Default
>  	append-rootfs | pad-rootfs | append-metadata | check-size
>  endef
> =20
> +include $(SUBTARGET).mk
> +
>  ifeq ($(SUBTARGET),generic)
> -include ./generic.mk
> -include ./generic-tp-link.mk
> -include ./generic-ubnt.mk
> -endif
> -ifeq ($(SUBTARGET),mikrotik)
> -include ./mikrotik.mk
> -endif
> -ifeq ($(SUBTARGET),nand)
> -include ./nand.mk
> +include generic-tp-link.mk
> +include generic-ubnt.mk

How about moving these lines into generic.mk, etc.? That way we could get=

rid of the ifeq ($(SUBTARGET),...) completely.

>  endif
> +
>  ifeq ($(SUBTARGET),tiny)
> -include ./tiny.mk
> -include ./tiny-netgear.mk
> -include ./tiny-tp-link.mk
> +include tiny-netgear.mk
> +include tiny-tp-link.mk
>  endif
> +
>  $(eval $(call BuildImage))
[...]


--4CiQ7gl9NHZ1thfHvbGgkHwOFofNyaFWk--

--mgat9BVTowNBWKzZcMXwtotm05DjSGw1R
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7c0HkACgkQFu8/ZMsg
HZwXlxAAkSTx1/GI2emWOD3M+U6HlI0tRmmLq+IqcM1oWYaIKcYerRF3ZCdZNF63
bxGhmszW93AiYOqgEQGBp4VLEk/ks8KjDPQvrDTMUIv0qiCNO6Hg5dtDnVziCpdF
dV1voM7sHsm+knwvJcwqyGaf5VYpHvaLGc0W00LR/6258/SZZuNgPEWvKS9YJaUT
FJJSpBh301AMBjzeETfDUdGsE2FyGFxhmpXOeQWho0GfFolVH3xuUmI0cXUGlIga
gSfjSD/G+C2Udec9kbCXI1xdnoQ058JCcQEJ8j1kRar9FOVYxKf0OzKUvr9bWT8s
4K89E/v1ekOSpxQnHYnrslJJmp3ZVfw+i8s7lzAsD7f5IG6QABYg6FUILyez2WI6
hT0H4s697YYaDIG3jCCJ0NBktAV9J3QqYneEz4lLrYW/PlPZtz5xnEeukFtBsahD
4vMYNt6gjciVv6mYDE8DC0NGmv1Jh602ZGMiBoaFMwiXKWK1Aev6YjV/CpYpUWAN
RHW8rD9lTmYofBSUbAOb6xPwP/s99q4pmuajp/xBp15XFY9LkWschIyW4Uyku3L3
aD/x5mxU2xAyJeDZImgnqhVGUiiDmPOk9tlwBFgeMZ/Nk63LuSLyhMBCYcLdiihb
yym7HE28skWGop3FsVA5F+wmGeGrN6cTKa2mOxkZzb2wtJ/8vBk=
=KKdZ
-----END PGP SIGNATURE-----

--mgat9BVTowNBWKzZcMXwtotm05DjSGw1R--


--===============9092601466461320434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9092601466461320434==--

