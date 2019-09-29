Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FBBC19A8
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Sep 2019 23:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wwdvdDy6TO+hjYPzqm46yvqAj4AefY8C/rytWEIx/Uc=; b=rAo
	gNoFQKR+LRkzxGFO1xK6M6RiFgj+w5k6p0FHfh/bUFf0qp+P/kBGuGJoYKwGu3jFD5sqe3gcMjEUG
	W/TCKNUYA9x0WykR3aOpaqGR9zk6CO4aKQda9aDjanqPZ0HnEL9RjPHWhqAbwGGGCGX0YDcc8CRYI
	JeIvGHSveWHbwT6fCa5Jjuvmuvmq01iQ+TRfDgOF6kgVDjdoyXGA17wVn+Bc7PqvudOJYC9sfTX7J
	ppqZuumNJWwruTBcZdPRk3qPRU/E2htO2ozOmSQp9lQ5nT1rXD9Twfkr46IdQq+EIh9483T4CYEl3
	uZIB114wr0tSszYQ1NA6tX4DnAT5S5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEhAE-0005EX-6v; Sun, 29 Sep 2019 21:55:34 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEhA7-0005DQ-J2
 for openwrt-devel@lists.openwrt.org; Sun, 29 Sep 2019 21:55:29 +0000
Received: from [2001:912:1800:0:6047:46ae:9b34:a5df] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1iEh9w-00040L-9j; Sun, 29 Sep 2019 23:55:16 +0200
Date: Sun, 29 Sep 2019 23:55:15 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: battlemesh@ml.ninux.org
Message-ID: <20190929215515.GB1681@lud.localdomain>
MIME-Version: 1.0
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_145527_816274_A31DBA94 
X-CRM114-Status: UNSURE (   5.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] ImageBuilder frontend projects,
 or how to generate custom OpenWrt images
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
Content-Type: multipart/mixed; boundary="===============0649829297055441673=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============0649829297055441673==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dTy3Mrz/UPE2dbVg"
Content-Disposition: inline


--dTy3Mrz/UPE2dbVg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

In my community network we are changing the way we generate OpenWrt
firmware images, and I took this opportunity to look at the existing
methods based on the OpenWrt ImageBuilder and/or SDK.

In the end, I found way more projects than I thought would exist!

I documented everything I found here: https://openwrt.org/docs/guide-developer/imagebuilder_frontends

Please add any project that I may have missed, and feel free to fix or add more
details if you don't like the description of your project.

As a side-note, does anybody use uci-defaults scripts? https://openwrt.org/docs/guide-developer/uci-defaults
It seems like the best way to implement customization without having to
update file templates with each OpenWrt release, but during my quick
overview tour I haven't noticed any project using this method.

Thanks,
Baptiste

--dTy3Mrz/UPE2dbVg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl2RKEIACgkQvgHsIqBO
LkaGixAAqJ7YhZhoJCunzl1bitovSY/7053daeFrH3r6eRwbFPmfoZkF0xdO3wYV
OZMunkeAk2/DRrA70lPEwd/g0DK+IXDzUVDXgJZZO3m9FcaSYxyUEJFSMe9LcQLp
EYJr6Rq17FzMPyOn4gr6k/KAMtm/XLcq8o8+Wew09XVt5CiBvO1HbHPzovkJUJeJ
LMKMT4V46hb4qXiLJ/HEy+vHJvcT78e8fWduYTs4PQoHJi0aSMcBbz/c9OxvnO1L
Nl/m6g2I7GaBAJcPlmZOFtPUPJa1ptimYGogmGKCU7hzIic4XeieLY9jGfqfVIjb
iuZsF1fA2cs/8Pgd7gEAoqhWQp47CZrMqa6AkNQkUZADDivLE9IefNWDkADSbrp7
7yV3ly6FTLxOyDZt7g/PMofm7QeF7z/omN4gPgmeIK8o5I7KhFWGhDmsrU/owLLQ
DJSVH6efqd6pv89ToHLgOxW7D9MHkpdNmQ68fWD/aWXdTdxPuPr/xfhlq5Y+pit5
qk8gdCkRLJ9HziU7eQc4boexJQKfyeocvm6XnHbJFzHn1qwpaL4NkzCQhA8bZdpI
eUYPDoV6DqRXWT1fLXNDm1IMGOKeLyVf5exO9TvovJIYjDVlQN7WJPVCXpuwfX/r
EezNQsJbW54xjeEmTp+0BcZRwSHc5pAlMcZ5CJnwWf/84ndSXzw=
=Ii/a
-----END PGP SIGNATURE-----

--dTy3Mrz/UPE2dbVg--


--===============0649829297055441673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0649829297055441673==--

