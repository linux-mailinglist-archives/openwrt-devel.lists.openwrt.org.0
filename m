Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA70661859
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 01:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Copk0jGfMkKTef8JnkvAHvWEAol8/OemzOLrW0saKmo=; b=bNTeHc4RDk+sYXETvmR0hMmiU
	u6eRkn+FHzfSxMSjJhHXY9DMxqcSYtdjoM1jHPmb6i5SVHjZv2vxT0TcORsRfpcIy6PwOTMWr8CDd
	u+wKkN9UXHLQGQCKC10yVYhINUcmcA6dqIKDnIXG5j0Yu5/2cDmArWuGJ8WpiVGNbWnLBhV/opVdu
	RKjVtZAGNLcQkr+5yMVBa//PcvMc8f3oJi+GxqFDT3HIEeHb55e6Z7P0kSFIIA7X24XGJT48GzAJ+
	agcIjOENMO98/6OLhQWAx4qctisBOiHKORGgz8VDAwysYTeKgzuz7P5bHvWWd3IoDE6OBfBuDjUvg
	Fu6IBzXJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkGB2-0007Y4-Bl; Sun, 07 Jul 2019 23:02:36 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkGAr-0007X3-VG
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jul 2019 23:02:27 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id E94A71F41B;
 Mon,  8 Jul 2019 01:02:16 +0200 (CEST)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20190704212844.4733-1-freifunk@adrianschmutzler.de>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Openpgp: preference=signencrypt
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 mNagDQm6idBibmeHejD0zFE=
Message-ID: <73d6edd6-16cc-7bdd-7541-1ef24764df3e@universe-factory.net>
Date: Mon, 8 Jul 2019 01:02:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190704212844.4733-1-freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_160226_323453_9C7E1257 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: Really check path in
 get_mac_binary
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
Content-Type: multipart/mixed; boundary="===============4978952393554371185=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4978952393554371185==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="g5PrAHJD8R18lftN43xhW4KirxXGHJCml"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--g5PrAHJD8R18lftN43xhW4KirxXGHJCml
Content-Type: multipart/mixed; boundary="vjJKSO5RHyKUoGLsq8fjRH70oNgbY3NUp";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <73d6edd6-16cc-7bdd-7541-1ef24764df3e@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: Really check path in
 get_mac_binary
References: <20190704212844.4733-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190704212844.4733-1-freifunk@adrianschmutzler.de>

--vjJKSO5RHyKUoGLsq8fjRH70oNgbY3NUp
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 7/4/19 11:28 PM, Adrian Schmutzler wrote:
> Currently, path argument is only checked for being not empty.
>=20
> This changes behavior to actually check whether path exists.
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

This was applied already, but it seems the logic is reversed now?

Regards,
Matthias


> ---
>  package/base-files/files/lib/functions/system.sh | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/package/base-files/files/lib/functions/system.sh b/package=
/base-files/files/lib/functions/system.sh
> index 7ed62804a0..df671465be 100644
> --- a/package/base-files/files/lib/functions/system.sh
> +++ b/package/base-files/files/lib/functions/system.sh
> @@ -4,7 +4,7 @@ get_mac_binary() {
>  	local path=3D"$1"
>  	local offset=3D"$2"
> =20
> -	if [ -z "$path" ]; then
> +	if [ -e "$path" ]; then
>  		echo "get_mac_binary: file $path not found!" >&2
>  		return
>  	fi
>=20



--vjJKSO5RHyKUoGLsq8fjRH70oNgbY3NUp--

--g5PrAHJD8R18lftN43xhW4KirxXGHJCml
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl0iefgACgkQFu8/ZMsg
HZynvw//eoPu5pYqVKgz+m0rpbgQ38rZrvj2uyjcYqiXJH/YnrMDJmRaJ4HUo0IO
ZD9cPDH4+E0r/KnOhs9PJ8ODK/e1UUE0pYM3W/ZjQEZDXH0/2iMRtg64/vlux7vk
wbik88lGDyOBmgoeCNrJtG5Si8zNbpVDiW06QTdonY5Rou8YtDloUKSpvt+g3gh6
FX6PQv5mggkHTrzAXcvYjDikaMW6N+pu4C0ec5UqJjtVPUNcoGIf4j7/7Py71Qbh
zj7245qgL1m54cjJzpydNbVNAE7KN/3J0+6OSNexu34Jv8bMl4Rgjf5bX7iJEKaE
scaQJg/QVnQP5t5XIYOiZrNGGkR9hpB/d9YN1OSOoNtpTaOOlTJFhN/4HVRO8nyg
AOyBs/m06AhYuSXKtECGczzv8oK3gEkGwzUPXZZuzeeaY9H6F2BGsAtX4VSZXLgm
Wjq/ZDhpTLluca15YI1c7Fods2htT2f7JH9Q05n8+onHgjQQoUT46+IyWSYqt1s3
L3Bx4oilkm6N+SiBFc9W9W6/k55A66xD1w0Cd4Q76DQ8BzGkwRyo0gK3+DD2bOzx
Hh6Keb6rT4UtdcLJxtNJT6mmkZyYTORqozRMe3uUGKV7LD11eLQWOmS2hM918u+b
lG47CMXewzvlu37JKWO+wprorRZlCusKbfYty4h3Frchz9IK9EI=
=09RO
-----END PGP SIGNATURE-----

--g5PrAHJD8R18lftN43xhW4KirxXGHJCml--


--===============4978952393554371185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4978952393554371185==--

