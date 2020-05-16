Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F171D5FA2
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 10:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z5cYFTOKhWgA3gh9kQ6s4fHiwpIdqh2YRZN1fbdHGPs=; b=THUuY7taiZ0mkB/TNGBkougKn
	2MHJj7wXc3PCM4N6LLmDFITBXHeS1co8fI12VVFIIYx7aN3eSgRk4TyxfNewDTlmJdhAEfna16JRz
	y8ATYdpZsNCL6ke05O+zn9MLclComUK+Ibo1CSEIGfoYG2ES+sUlrqs3/HE0HG3NCccdnYEob72BP
	CZhfFVFi82c6mWh7YrWg8H+ebHyKSBJ28X7Z/b2ipPcdDOdbSLfyOKXysXJZIosV/p7BQ/StoOEGD
	vx3VCv5HyWpla4UDNUiYH5sWjIAjgNt1p1NOML/U4RmVUj1ORZJV9xKGWj314zeMQ7SCKPzhyhvPu
	3RfrPpXTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZsB6-0006p5-Ab; Sat, 16 May 2020 08:28:16 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZsB0-0006oS-7M
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 08:28:12 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 182A8256D8;
 Sat, 16 May 2020 10:28:04 +0200 (CEST)
To: Paul Spooren <mail@aparcar.org>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <d9a8cdcbfe046467dcb5e19e2bedcc773092333d.1589396871.git.mschiffer@universe-factory.net>
 <bd072f76-3f0b-4948-97df-ae8681e7dec9@localhost>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <743858f7-23e0-48ff-3453-26c69c70b92e@universe-factory.net>
Date: Sat, 16 May 2020 10:28:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <bd072f76-3f0b-4948-97df-ae8681e7dec9@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_012810_566536_04B3D7D4 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] build: compress kernel debuginfo
 using zstd
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
Content-Type: multipart/mixed; boundary="===============6708984930789984145=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6708984930789984145==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="h73ESe71zppUyxaemQrTsiiAXpekClVE1"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--h73ESe71zppUyxaemQrTsiiAXpekClVE1
Content-Type: multipart/mixed; boundary="KGf6qpkrcaCNA4jsd9KIhNQE6oz8a7EYr";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Paul Spooren <mail@aparcar.org>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <743858f7-23e0-48ff-3453-26c69c70b92e@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] build: compress kernel debuginfo
 using zstd
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <d9a8cdcbfe046467dcb5e19e2bedcc773092333d.1589396871.git.mschiffer@universe-factory.net>
 <bd072f76-3f0b-4948-97df-ae8681e7dec9@localhost>
In-Reply-To: <bd072f76-3f0b-4948-97df-ae8681e7dec9@localhost>

--KGf6qpkrcaCNA4jsd9KIhNQE6oz8a7EYr
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/16/20 3:38 AM, Paul Spooren wrote:
> Could we use that for the SDK/ImageBuilder as well?
>=20
> Best,
> Paul

Sure, have some benchmark results with the current ath79 snapshot IB:

* openwrt-imagebuilder-ath79-generic.Linux-x86_64.tar: 515M
* xz -7e (current implementation): 96M, ~100s
* zstd -3 (default setting): 248M, ~1s
* zstd -19: 112M, ~73s
* zstd --ultra -20: 93M, ~97s
* zstd --ultra -22: 78M, ~136s

So it seems at --ultra -20 we have a sweet spot where we surpass xz -7e i=
n
both compression ratio and speed. --ultra just unlocks the highest
compression levels >19, at the cost of addional memory use for both
compression and decompression.

All of the above measurements were made without multithreading. The
multithreaded mode of xz (as used in OpenWrt master) makes compression
worse, while zstd produces an idential file with and without multithreadi=
ng:

* xz -7e -T32: 113M, ~17s
* zstd -19 -T32: 112M: ~12s
* zstd --ultra -20 -T32: 93M, ~30s

IMO the fact that xz compresses differently depending on the number of
threads used is also a big problem, as it makes it harder to make builds
fully reproducible.

If we switch to zstd for SDK/IB, I would go for level -19: it's
significantly faster than --ultra -20, especially in multithreaded mode,
and the size difference seems acceptable to me (in fact, our current
snapshot builds use xz in multithreaded mode, so the current IB tar.xz on=

the download server is 113M, not 96M.

Matthias


--KGf6qpkrcaCNA4jsd9KIhNQE6oz8a7EYr--

--h73ESe71zppUyxaemQrTsiiAXpekClVE1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl6/pBMACgkQFu8/ZMsg
HZzGZBAA4arNIJW0nuiG2XjmWSXklqIHmrekqwWaLwwIS1AjNsG2/VDE6Fei7dW8
fcM7YQSr3LL7Jk3TN/ngTsB44wycS8xP26WFiT4fOmcvA5uFBVnmicy3lYuxjh4v
r76uqpnTIY2rAepD1EKidQ4wEtibRQUM6WrNKZqcqudP2KnLpEwOStPcKmCByBwi
xcen4SSaWTSN7u0dxBSpK8pw9Jk/kLFawOpxOiR9dC4JtzXMAkDdH5wrT33lrxgY
0V1428114KOh9VIpcrKb5LXU1sRBJ6s4kuCfqMl79GUvoxXaQfEeLUIib+rXTcPF
4459cEfHIjdUOLxicpLVgevfl2paB3NWdcFGi5auIMH5docPDtq6iNTW+BcRv4X/
ex4it6qj2mXuxtUpUTguB7ee2wFUMAN2u7NHsbSb56Y4tUGhzthgNjzNCHx7xncH
oIWKO6bw9KnZdXdEOqO0dcU4UZI5bC7cYtZMlYVl0pxIOVlNv81C+ve9rczTUk0t
hJK6z077nQAUxsmiTo9wVyn2qQNHxMJu7gwwAkAXb7LzTfhrUTdABKD9Q2VWNwhF
HuGInF0LCaWsESDu/tx6e9GxmkQLTasgboND0Jcv83TG1EAuIh3aeFUsX75VNo+4
aIBD2lJJDh+y3mQ3LOOapUav7jCk7E4lAh3LAaL/nz8aFzeIU1s=
=2T7D
-----END PGP SIGNATURE-----

--h73ESe71zppUyxaemQrTsiiAXpekClVE1--


--===============6708984930789984145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6708984930789984145==--

