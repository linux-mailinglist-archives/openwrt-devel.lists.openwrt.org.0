Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B60DD936
	for <lists+openwrt-devel@lfdr.de>; Sat, 19 Oct 2019 16:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O2ezazJ9b0bVjlomqwZQONZG4ABtzNyKGMQ4u/1KL8s=; b=TSz0SvJOYij6UcW0m8WOs82EN
	jIIu4G7FhAr1IkkeY82Tf+bB0PoN1Q1u4RdLk3AWMmvLGDU3TPR3KiVkQilvVAkiCoNLp9YK27Ohf
	OEY3OMz6E9pHQw1kfJB+hy6vyamfF1QLCXokl3siHXh9duYdgXilsZxSnt/dk40bfBx/F/QRPOyLS
	DGqkWYxJWtyZ+mGIssMkZ9WRV6asR0HWKdG7/9iVUbz6rwpXNrShz+0u7UPFjeCgXRXKD68Q2DFZ/
	P7QjeakJuw5p2TzVaDE95sJc6EScvTkW74jzQnTrxZ/YqAbUhsrP8+IGATfwnWUKXeB/a36xgaVr5
	BXy+3DRyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLpzV-0003FW-4k; Sat, 19 Oct 2019 14:46:01 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLpzO-0003ED-83
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 14:45:56 +0000
Received: from [2001:912:1800:0:2bb9:b551:caa7:dfa9] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1iLpzB-0007BL-6W; Sat, 19 Oct 2019 16:45:41 +0200
Date: Sat, 19 Oct 2019 16:45:40 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: Battle of the Mesh Mailing List <battlemesh@ml.ninux.org>
Message-ID: <20191019144540.GC30614@lud.localdomain>
References: <20190929215515.GB1681@lud.localdomain>
 <20190930081512.GC72052@mi.fu-berlin.de>
MIME-Version: 1.0
In-Reply-To: <20190930081512.GC72052@mi.fu-berlin.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_074554_482363_38AD4A47 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [Battlemesh] ImageBuilder frontend projects,
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
Content-Type: multipart/mixed; boundary="===============2827540180391216154=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============2827540180391216154==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p2kqVDKq5asng8Dg"
Content-Disposition: inline


--p2kqVDKq5asng8Dg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On 30-09-19, Philipp Borgers wrote:
> you should take look at the Freifunk Berlin firmware and the Gluon projec=
t:
>=20
> https://github.com/freifunk-berlin/firmware
>=20
> https://gluon.readthedocs.io/en/v2019.1.x/
>=20
> The Freifunk Berlin firmware uses uci-defaults scripts quite a lot for se=
tting
> default configuration or changing configuration on upgrades:
>=20
> https://github.com/freifunk-berlin/firmware-packages/tree/master/defaults
>=20
> Both projects are under active development and used by a lot of Freifunk
> communities in Germany.

Thanks Philipp, I didn't know Freifunk Berlin had its own firmware
generation utility!  Looking at it, it seems a bit heavyweight (it builds
OpenWrt from scratch instead of using the ImageBuilder) but it's probably
necessary if you want to patch some packages.

I have added this information to the relevant documentation:

  https://openwrt.org/docs/guide-developer/imagebuilder_frontends
  https://openwrt.org/docs/guide-developer/uci-defaults

Now there are 10 different projects that we could use for our community
network, https://xkcd.com/927/ is already starting to apply :)

Baptiste

--p2kqVDKq5asng8Dg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl2rIZMACgkQvgHsIqBO
LkaI5g/9G0+oqFII3QHYthegHg26+f6ZvGHCsRKJuvQb+9OHET/4XmsDW9bTWb+9
U9mWgoflj4nWMCwnUCTd/2GXGSJfMS0JsD5Cr9D3p04SkGzYoFuKDU3M+NPg3sNI
4TL3zHw/NARKWQ6tVX0hir3uwc8i3WbtQB9cZjgeJuMk8hLgXtaoPs5pCUfnQDNn
gkJONvpGiOkYoYAY3lwmuaXiYq3nV+3vCu4OgxRZHK884hJLk63oYn6DEbPoJY9G
/hDpVzwpq+aaRZ15apFtwKsLJnsROLx46TrLgJIdH0YyiPMFIFI3lzdSdUzTSH1n
U1oycggcTUxBjocswNJJI3cGKb8okg/Oje0XqCU7V3KMuh2co76yS0DPtmeluef0
wqeOGDon0/ZPXpc4u3PiR2NsDXeEmhejKahbju0+TdH7Lq369wBsAnP/Io99+CjD
lE1lQ/T5XMJ50Zjtu5ULO4TjSxuL4B5jv9f/g9BnBvMeQ85v+ArsHu0HQea0kpsA
1Pb4a8McTSNu0QH+2RhzZ2My0na7421bDh5SZHhSeyqRWpm/BwKAyVrVXeA7W4Y9
kju71OU7Wlw4sLdmoGvKngYsZnofkckXzI8K9SyyPATlWfzPtMhxqIJsCfmqHCen
oqg449SQQoqJF6cFIQIPbu7OYCeqN5V0aWQ8GupTZvMlOGXLWu8=
=hSMK
-----END PGP SIGNATURE-----

--p2kqVDKq5asng8Dg--


--===============2827540180391216154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2827540180391216154==--

