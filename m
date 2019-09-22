Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA918BA395
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 20:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4cLAP6kZU17xFtGVpicU0DmHdtE4bSgTEhXfx9uNqtU=; b=c0KgVPTktup4meYmX7qj9ghb3
	LftPXzc8WAAnZDPsHjG5mS0Zqy1cK6n+TeFlnCz9o/C10fKv2fG6LNQCCHWKmRmwNTjdPahGvVHXF
	lPrwySutiYmMBuhLg1DkihrpgiagpNBscjRuSqPMmxR4HlMY4+tNY6Mfa6p8cVvUPFk1UDsurLN3j
	b5PllGKyiZmP0Dfip693FB0Gvy/nyxjAvAdCGq1pClf95JmdRzs35Fnzzr95P0SpnQ33kYJhPuxFN
	kUXlNvBwmoNS7nixrRwoOCNAW1CalLsBELxRhZg5g2wm79kN2e0z5ejW3cTWiPgAusLIqzyYUYtXe
	qxcGxX17g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC6Gx-0003OY-NT; Sun, 22 Sep 2019 18:07:47 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC6Gm-0003OF-VX
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 18:07:38 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 7DC1B56D0A; Sun, 22 Sep 2019 20:07:32 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 6047B56D07
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Sep 2019 20:07:32 +0200 (CEST)
Received: (qmail 84220 invoked from network); 22 Sep 2019 20:07:32 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.41.79)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 22 Sep 2019 20:07:32 +0200
To: Andre Valentin <avalentin@marcant.net>, openwrt-devel@lists.openwrt.org
References: <6e8a1f4d-7649-e80e-64f0-83a5b0e9d8a1@marcant.net>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 yxsOKc06fSVm
Message-ID: <f1ce9b03-f421-7a65-227a-405c6557f5f3@wwsnet.net>
Date: Sun, 22 Sep 2019 20:07:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6e8a1f4d-7649-e80e-64f0-83a5b0e9d8a1@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_110737_177682_ECCAE213 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] rpcd: file: add path based read/write/exec ACL
 checks
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
Content-Type: multipart/mixed; boundary="===============2623545819551786156=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2623545819551786156==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lNJmvsQeA299lXBFy995LNu1BFoxIeCCY"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--lNJmvsQeA299lXBFy995LNu1BFoxIeCCY
Content-Type: multipart/mixed; boundary="mfuHt9Hgua31BAwzvlHo9BYml69SzBIQ3";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: Andre Valentin <avalentin@marcant.net>, openwrt-devel@lists.openwrt.org
Message-ID: <f1ce9b03-f421-7a65-227a-405c6557f5f3@wwsnet.net>
Subject: Re: rpcd: file: add path based read/write/exec ACL checks
References: <6e8a1f4d-7649-e80e-64f0-83a5b0e9d8a1@marcant.net>
In-Reply-To: <6e8a1f4d-7649-e80e-64f0-83a5b0e9d8a1@marcant.net>

--mfuHt9Hgua31BAwzvlHo9BYml69SzBIQ3
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

> What do I have to do to enable access again, without calling ubus
> session grant like in the commit? Thank you!

you need to add the following sections:

"superuser": {
    ...
    "read": {
        "file": {
            "/": [ "stat", "read" ],
            "/*": [ "stat", "read" ]
        }
    },
    "write": {
        "file": {
            "/": [ "write" ],
            "/*": [ "write", "exec" ]
        }
    }
}

Depending on your use case, you might not need the "write" and "exec"
permissions at all.

The "exec" entry will allow invoking commands matching the path "/*"
(so, everything) and the "write" permission will allow (over)writing and
removing files matching the wildcard path.

Regards,
Jo


--mfuHt9Hgua31BAwzvlHo9BYml69SzBIQ3--

--lNJmvsQeA299lXBFy995LNu1BFoxIeCCY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl2HuGMACgkQQuLLvzou
ZtPZhhAAm7z7kXh39nnFn3ZDHmeBt/KekazbzvOyy5N8zTYZY6IDYjd9lAfdfIEM
uk2OIAdkcmmj2RqN5JLUmzC4F4xOwJi3tRxsQCSLDJFjfSGsvaff1PjayFs6VMuq
G7bLddoTPKpfd8p3XzIJCTX0+js7XU8i0Y7qGvgarLRhjQfsXyuvRv8p8XGPh/7C
MqvJqIiwSx3YuG3iJl5KD1xG5gh2Fn8DBoemSKmOqSkXDGC9VJt2L3mcoNXqC7DD
OnbJabVviuYmCp1gVoT3ywj9SbGbOjqfoh/Ax4FRNfgdMTjfpDdPdW48BPoN5DRP
lQsf9dkSTe80iTy97+a4rDQpAZVPU7geV5QoDmo3UZy+EJY8CklLBVXu6TsbPaZN
VVSDgOrA5W2K2zN1Eb2gpZfQ6EBKJbQAIEkPFcms5wJNGsf9o0A/wprnbLjyuwg8
iYeU5KXQIITlrnJNwEUTvyTRDRRkUhSqkTNsU0Uz3WeJEEr3p9Gx0AqMW2i2PMIm
dzfPCEZHkYPHYIn7Upv25lA4VywH883bRfjbed5413qCqXGhPGeCEd778AncHktK
8KZvz8FzBsZ+ziqCw/j6hXj82FyL6XEg2mvfSa8FbpuYmfyEcY6Phde+V/0Dwe81
ULsuztJ6z3ZN6UDtwQMDC8cHHjrNAKplmDjtD9vAVa8NOEtZwtc=
=6SxY
-----END PGP SIGNATURE-----

--lNJmvsQeA299lXBFy995LNu1BFoxIeCCY--


--===============2623545819551786156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2623545819551786156==--

