Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F1F136EE9
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 15:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=owH6Pc3xX+r33oX/K05YLCQg1UgXqPctmJTbhmlFuLs=; b=OE1P4HQgujTZeVPCfJahVq9Pp
	oCH/V5hIm3MDxglndALAMRV/J7HR2Bxeg2ji4+hUA3xvHSvHJj0XXDT3gzst+LTnqfEpjqwq2/KsF
	LoMKKNkB9KY2JQQyzxuQXLAyO22l6ixY2MLip9r39Qvkkv3idI3goNMhpfWN9sFBPKDORV5FbXUNj
	dcmlnB+p5wt1ZpEmbXYbOjaVeZBShL8okirG7XlRQ0LWmCT5BQQEOqWuvKeaZ7kl3LlYQy9UlIhL/
	eRbHjb5LTWHKqvGka1p6sjTTljjEM6z3w0mHZToc+EyGOEaUrkUwhqmw8DpccFtb8/JPAtpJkH/GG
	nKlUvyBhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipus9-0003jP-Ow; Fri, 10 Jan 2020 14:02:45 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipus3-0003iM-7n
 for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 14:02:41 +0000
Received: from [2001:912:1800:0:2bb9:b551:caa7:dfa9] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1ipurt-0004cd-Ec; Fri, 10 Jan 2020 15:02:29 +0100
Date: Fri, 10 Jan 2020 15:02:24 +0100
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: "Pumr, Ondrej (EEK)" <Ondrej.Pumr@skoda-auto.cz>
Message-ID: <20200110140224.GA209673@lud.localdomain>
References: <C02EF912F243ED4F9D4C4104F769FA4869CC52A2@SKDAMBXM02.mb.skoda.vwg>
MIME-Version: 1.0
In-Reply-To: <C02EF912F243ED4F9D4C4104F769FA4869CC52A2@SKDAMBXM02.mb.skoda.vwg>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_060239_494869_24DF8F58 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Question:  Migration from ar71xx to ath79
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Thomas Endt <tmo26@gmx.de>
Content-Type: multipart/mixed; boundary="===============7976890404960548380=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7976890404960548380==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline


--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Good point, the ar71xx - ath79 migration needs more documentation.

I have just created https://openwrt.org/docs/guide-user/installation/ar71xx=
=2Eto.ath79
but it needs some work: is sysupgrade supposed to work in some cases?
With/without saving the configuration? Is there any danger when forcing
upgrade with "sysupgrade -F"?

@Thomas: I saw that there are auto-generated pages listing ath79 devices,
it's very helpful:

  https://openwrt.org/docs/techref/targets/ath79
  https://openwrt.org/docs/techref/targets/ar71xx-ath79

What is the source used to generate them?  Where could people add
important information about upgrading for a specific device?  Would it be
better on the device pages themselves, or in a column of this table?

Thanks!
Baptiste

On 10-01-20, Pumr, Ondrej (EEK) wrote:
> Hello,
>=20
>=20
>=20
> I have TP-LINK TL-WR842N-V3 running OpenWrt 18.06 with ar71xx and I want =
to migrate to  OpenWrt 19.07 with ath79.
>=20
>=20
>=20
> In the list of known issues it is written, that "Sysupgrade from ar71xx t=
o ath79 and vice versa is not officially supported, a full manual reinstall=
 is recommended...".
>=20
>=20
>=20
> I don't understand the meaning of "full manual reinstall", but I thing, t=
hat instead of upgrading the firmware via web interface with image "openwrt=
-19.07.0-ath79-generic-tplink_tl-wr842n-v3-squashfs-sysupgrade.bin" (size a=
bout 4 MB), it is recommended the upgrading via bootloader + TFTP with imag=
e "openwrt-19.07.0-ath79-generic-tplink_tl-wr842n-v3-squashfs-factory.bin" =
(size about 16 MB).
>=20
>=20
>=20
> I am right or does the "full manual reinstall" means another special proc=
edure?
>=20
>=20
>=20
> Thank you
>=20
>=20
>=20
> Best regards
>=20
>=20
>=20
> Ond=C5=99ej Pumr
>=20

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--IJpNTDwzlM2Ie8A6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl4Yg+sACgkQvgHsIqBO
LkYDKA//drzDJtaoa+xUWKX+rk87rivgJ/nsXBo0q8Tjpzj2QdZlkJPCADR0i5zz
mLTbNxQyiAhzUo1sIVbKceTltt9OE3Ucnsl5SIs9MUzEpwDViC9pdEnMwxxBuGh+
zvq5670DbV4QIj4+HrQVlFVtQUg//8UFWUx/m6FPtRgNRnPxA7ZS0dvRb+CYwKUD
kTYL8u5MVETABMhgSCIKptYrgo6OGJsE/995wnLRyNLIMlVdqPh73xmJ8gOKwsVh
e/CqBPaWyyKn9btN7CnHJe/juJsiOH6vpdDUdKhJW71TbPrrMd6pfi+6gluL5fOT
LxFq9haPUyB/Gn1AQo1OsZnGHWVfqhAz+7qNd5aZ1kzFSf4mRH8igXKQa44AnKFF
velQaJA3WixViWJ3i7THAR/iJx+slU7fg0LdS+IX2tdmQDIxtztgk9SaUe4aRarL
I5Fo7jqi2p85OXa3MtlpZwD23cxx1tuMDv+r4IHF5DF1FE9JyVi9+kTrvI8nHrwM
1xJxsuiS3dV8HmkmGVQ/+l4oYJbAVFtvGgbqwa4KHT0niFdLc43ww8GgPN1c9+dN
skVVE3/4RAvqCowkJ9Q+VximSQBrRbT/oMqD50NydNsGV+wPrCobGnew5gIOl10Z
sC0ss1bV982rjhilMkALkIXG1K4Ku/nsch+uC+ohaOBsFEL9WTg=
=+r8T
-----END PGP SIGNATURE-----

--IJpNTDwzlM2Ie8A6--


--===============7976890404960548380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7976890404960548380==--

