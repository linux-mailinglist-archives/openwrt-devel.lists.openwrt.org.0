Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC1835A61
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 12:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sXMRoe4dIQwyGw2RTKGqwRNkWQGC6jYFZjxfZjrOOls=; b=lvWhzrukPKCxOIaTRgvX5Ugko
	z2IOhmiZ5wPRdMUMoIA0cMaef7DrwmOYJaIJN/ZPP9mq53kjTx6+YozRGrHaXQc+hd91nFgFoSyqS
	OYI47lJKZ1WWCZWQNRbn9FVP9sig6kJwnoJ039/6H7VBOtLjbcKjAKKoAkJZiCOHW5aIl8J47uRc6
	1r2f96E/QXBAJlMC7VBQA7jeVa2iMq0rbL04tgWSWqEg7SHgrKgiPYuAd2wieTJloxXdWLd24vihB
	MEhP4NXHWRpWRcp9fd1XupRLF8q1UcnBTlp38vGolj0Yq6bOrxmWudkPiltjJzvkBOuBiiQi07acj
	YEPmk4bNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYT2s-0004EC-5x; Wed, 05 Jun 2019 10:21:26 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYT2j-0004Dp-A8
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 10:21:18 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id CD6F41FAD8;
 Wed,  5 Jun 2019 10:21:13 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: "John Crispin" <john@phrozen.org>
In-Reply-To: <20190605063239.27540-1-john@phrozen.org>
References: <20190605063239.27540-1-john@phrozen.org>
User-Agent: Mailpile
Message-Id: <5bRvPoXRrZ3JQiZPd9vjGQBAPHjbioBNK8MNYnwV2342@mailpile>
Date: Wed, 05 Jun 2019 10:20:57 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_032117_489439_3A81F044 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH V2 1/2] image: make the folder that gets
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============3873407481782382990=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3873407481782382990==
Content-Type: multipart/signed; boundary="==mmvmGChIuZzQ7qANtDpNBMPAsGqV2c==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==mmvmGChIuZzQ7qANtDpNBMPAsGqV2c==
Content-Type: multipart/mixed; boundary="==4bIcBkPVTfj3FUyya7bE8umWEI8PTc=="
Subject: Re: [OpenWrt-Devel] [PATCH V2 1/2] image: make the folder that gets
 included intot he RootFS configurable
From: Karl Palsson <karlp@tweak.net.au>
To: "John Crispin" <john@phrozen.org>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <20190605063239.27540-1-john@phrozen.org>
References: <20190605063239.27540-1-john@phrozen.org>
User-Agent: Mailpile
Date: Wed, 05 Jun 2019 10:20:57 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==4bIcBkPVTfj3FUyya7bE8umWEI8PTc==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


John Crispin <john@phrozen.org> wrote:
> This allows managing several different folder for varying env
> profiles.

This is neat, very cool! Thanks for this, I hadn't even thought
it could be done so simply.

Cheers,
Karl Palsson

--==4bIcBkPVTfj3FUyya7bE8umWEI8PTc==--

--==mmvmGChIuZzQ7qANtDpNBMPAsGqV2c==
Content-Type: application/pgp-signature; name="OpenPGP-digital-signature.html"
Content-Description: OpenPGP Digital Signature
Content-Disposition: attachment; filename="OpenPGP-digital-signature.html"

<html><body><h1>Digital Signature</h1><p>

This is a digital signature, which can be used to verify
the authenticity of this message. You can safely discard
or ignore this file if your e-mail software does not
support digital signatures.

</p><pre>
-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAlz3l38ACgkQGai1D9TV
yvZIERAApJuuyz5wKyLuz/zoKtYs18hpt+4tSJf991zkFu2gWAlvCXVo2U5117PN
dNfGXBn3VLF7sXwSyv0G56lHyrle3aBtkT2RC0cVromocn0ykhUhUdVPJzQjaKoC
9LpHIq7oawVrkO4sElY1otoxnsHvzmowuVAzde5xpUphezyKOjzJEW67Qkew5DIs
mjfWtWN3iT9VfL2BY1I2v9NY774KhTQzIPD/+jHTGeS34S6wcNRBxwmYNSfKyPoK
VjpccFZ0S8VI63PqU+jwP7Ex7xXFfdRwskZNhc++SvFypUFIkDzpXJYfFEWqlgyg
Fe3ioC4kUADmgZHeYkSlBHxgLPufr94dp7A/7YEGv8vVU0UcYdjcBfbdpbKUIdYu
WXM3tcjStjz7OMiIJ/3ALFKYxrNRv9sbba39ZbnK732+gWYtiwag81n93TZ7Je89
bVh3Vo91MreYym4T/Gfv4XIIuR+5E1hlMFG/8Dt55QIqrF+66u/KqCphoKAEnYJv
1Go9qmh70IUy1NJyLBFZeGKjyoSz4KQDBE95IvgIKRMcHQJo4hVye8agYCc/V5cX
N9AvCVcnxlglrK4qy6z5F4+O6PLWfuLpe68C3chDf+O3vk9LzTVWCKzoQ2RJew/D
9yTdIp/0rV/AZOPiKGIfn9KT9jHUvVemZ3V8n7tdXeGN7fpxQK8=
=/E90
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==mmvmGChIuZzQ7qANtDpNBMPAsGqV2c==--



--===============3873407481782382990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3873407481782382990==--


