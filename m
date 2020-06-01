Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 461391EA410
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 14:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3PBWCQ75t4H7r1Bpg5FjIpFMJeJ6SD6F2V0Tm5cyJy4=; b=nbe5Wo/8KrWgC17zjRyDNYzlG
	0NO/I8TCI/y6llZA0d+ebGf4O+zLhc0tXSb7KMtT/ZCRCkubzZiJDpOXbStKmNDPh9hqIzW/bFctb
	Lq9cotAUr0JQ4V4lQE0u3f4XigUXY3Emw6ZIPkimKTaVkc5SavSKtjeYpcXw11EsdDCAmx9A62Dof
	e2KAU9vu7h3T2oQKl8j8EDqrALywWy6g7fDw8v1QYilwAaYZuiiYFZlA/0Z9a4R4Np8szoFFepnYH
	BTM6fdDOZBUT4tL2PqJj4GMNUgaSXZfIrnGZ1WaBpatghnJrKHQmRT3CVC39AMSZK4K4gWj4LERRd
	LfCWdbhCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfji0-0003Jj-Sg; Mon, 01 Jun 2020 12:38:28 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfjht-0003IV-Sy
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 12:38:23 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id EF0F41F418;
 Mon,  1 Jun 2020 14:38:17 +0200 (CEST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>
 <79845b43-f39d-c215-e968-41b93eb00b65@universe-factory.net>
 <0890d3e5-a989-5b8d-f29a-54e62707715b@universe-factory.net>
 <20200601102121.GE58206@meh.true.cz>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <459b72d9-4e6d-65f3-afd0-c0287bd15c62@universe-factory.net>
Date: Mon, 1 Jun 2020 14:38:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200601102121.GE58206@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_053822_238214_490A6400 
X-CRM114-Status: GOOD (  12.69  )
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
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>
Content-Type: multipart/mixed; boundary="===============2863361193545500274=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2863361193545500274==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="2Ls6f4Gu2BzvOkOjshBOZAsTwvoaFih5B"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--2Ls6f4Gu2BzvOkOjshBOZAsTwvoaFih5B
Content-Type: multipart/mixed; boundary="Rg0P6XRaeC6Wc5HKO71vLBtK6PEzvySuE";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Cc: Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
Message-ID: <459b72d9-4e6d-65f3-afd0-c0287bd15c62@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH v2 4/4] build: use zstd for SDK and
 ImageBuilder tarballs
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>
 <79845b43-f39d-c215-e968-41b93eb00b65@universe-factory.net>
 <0890d3e5-a989-5b8d-f29a-54e62707715b@universe-factory.net>
 <20200601102121.GE58206@meh.true.cz>
In-Reply-To: <20200601102121.GE58206@meh.true.cz>

--Rg0P6XRaeC6Wc5HKO71vLBtK6PEzvySuE
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 6/1/20 12:21 PM, Petr =C5=A0tetiar wrote:
> Matthias Schiffer <mschiffer@universe-factory.net> [2020-05-31 11:08:47=
]:
>=20
> Hi,
>=20
>> For patch 4, I'd like to have an ACK from someone familiar with the bu=
ildbot
>> setup.
>=20
> Disclaimer: I'm Buildbot setup noob, just helping occasionally with the=

> maintenance burden, but from my limited understanding it's not just abo=
ut ACK,
> some additional work is needed:
>=20
>  1. Someone has to provide patches against Buildbot[1] repo with the zs=
td
>     naming changes

I can write the patch, but it seems this is only a default value, and the=

config file defines the actual value - which makes sense, as only master
snapshots would use the new value, while 19.07 and older would still use
=2Exz. Where are these per-instances variables defined?

Matthias



>  2. Someone has to build and publish updated Docker images for buildbot=
 master/slave
>  3. Someone has to deploy this on machines under our control (having ro=
ot
>     access), we need to notify owners of the buildslave machines to upg=
rade their
>     buildslaves to the updated Docker images built/published in step 2.=
=20
>=20
> I can probably help with 2. and 3., I would ideally done this with Buil=
dbot
> version bump which is in the works[1], so we don't bother people with
> buildslaves upgrades that often.
>=20
> 1. https://git.openwrt.org/?p=3Dbuildbot.git
> 2. https://git.openwrt.org/?p=3Dbuildbot.git;a=3Dshortlog;h=3Drefs/head=
s/buildbot-2.4.1
>=20
> -- ynezz
>=20



--Rg0P6XRaeC6Wc5HKO71vLBtK6PEzvySuE--

--2Ls6f4Gu2BzvOkOjshBOZAsTwvoaFih5B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7U9rgACgkQFu8/ZMsg
HZwzuhAAvn2BEtWdFEHjCUDc1ZBsBGSle8SKz+uA5wpETi78QwyK/0uV350ppRg3
jXQMW/TTgB6YWGn5TOBmqaqwzmTeq3ZSNib75GsZ0K/BL9A2W2G5l/OaqqiN5trb
LYCSFAt0hWbRlB/9leJquGVjYm2ar9V2EB847gcKt1PMVFbDaXMMd4Yz2hfgoPuf
N7ny6vkP1f4o1WsN+d0Kc1n2w4pgFrzELm3zrb/fUeTSxr4YsyGuu/+3bHxwhQrb
x9gHL2Sn5AAc2862sGdQFdDQUZaRe4HY2H0BWvHlBcbaR9Hx4oYEFGMOV0NQLupI
T47bIYn3h4UjY1eY4aJKmZ73jgO87+/0Si3HCEa7LUYJWAgN3AtWTI6a4aZPKxPv
mOB6EmBSUfz2DegCl7TDiUWT9CmXHEAgcsnnSeMmHNYkdyp+yi4cquilmuYnzLVE
ggRssOVpdjs2/1XDzqKRtlMgY0GI6fY9vdKQm0VSmFCZKUM9eTsHtpn0dgWY86su
d7BXtOpaIrBcC3dUXSDWRKFLhBKu7a75iDRG4Q99Si65RF5pj9F6jz3J5kRq5NVz
5PQmIibeA2/jzxIPAoP6OHeL+T+duS56PmXvQWRINrJmfwWEl/lYIm+whbrLr9RQ
g/Q8TyevAT8Hs1pCg2A4ywcY70BB6/5hLM25iEoMWkgJPkXnUtA=
=VdnD
-----END PGP SIGNATURE-----

--2Ls6f4Gu2BzvOkOjshBOZAsTwvoaFih5B--


--===============2863361193545500274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2863361193545500274==--

