Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F02141F3A
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 18:44:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gp6BExq/qxwl9mgMmxWeMv5mB3oyoMthmxDj43ecbd4=; b=DFLZ/g/4KxqrZyONETTX0UAHo
	qn/ozgZFqpMY8Ib3PS2wKTO74VRoBWvVBETpUYRFbYjBZcXSxgaiAZx6r3kN5NEXwJ5rjq+kPdK0x
	bnIU6puwAejBotUnjkOMuF6DA8Zb/EIhnjrVl5SSFxzm4kfbqJz+VlpB/JUNUuDW2SejwxU/RzY/k
	HAJv6bdWnU2OZ+rRtqBFoUmo8F18uPfZxbjgzkmvJbNZ6DGG+dLii3nYgcSOkk5Cw5k2xuP+5sC4M
	i7x1OfFBbxNtX8FL38NURWldLesJaECngJ+p58dLQlYktEpQ9NNC4zhdn8kPCCbqnaqCR+Vrm/DVk
	oU0bLywdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itEcu-0003bn-QF; Sun, 19 Jan 2020 17:44:44 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itEcm-0003bG-Nb
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 17:44:38 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4812HP5JnJzQlC0;
 Sun, 19 Jan 2020 18:44:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id HVv-hr6jn11o; Sun, 19 Jan 2020 18:44:30 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Peter Geis <pgwipeout@gmail.com>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <CAMdYzYqL3-6s4vcjyT7=UDDQTN85RNQTRQ77ixvRnBk2EaBDHQ@mail.gmail.com>
 <20200116114813.GC84286@meh.true.cz>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <031151f7-c236-5aaf-9113-c7ebf1f8cc05@hauke-m.de>
Date: Sun, 19 Jan 2020 18:44:25 +0100
MIME-Version: 1.0
In-Reply-To: <20200116114813.GC84286@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_094437_085127_BB574651 
X-CRM114-Status: GOOD (  28.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.56.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============9052469780331538417=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============9052469780331538417==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="k66MWx8NtMuBSSJN13B9foIhoGPW15JJJ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--k66MWx8NtMuBSSJN13B9foIhoGPW15JJJ
Content-Type: multipart/mixed; boundary="JjKBADUSKI9FNmHwazSAlqrpYPLtdgl0T"

--JjKBADUSKI9FNmHwazSAlqrpYPLtdgl0T
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 1/16/20 12:48 PM, Petr =C5=A0tetiar wrote:
> Peter Geis <pgwipeout@gmail.com> [2020-01-15 21:15:41]:
>=20
> Hi,

Hi,

> tl;dr I'm going to vote in favor of skipping release with 4.19 and focu=
s on
> 5.4 kernel.
>=20
> The 19.07 release was delayed by a few months, so this has affected the=

> subsequent release as well. The plan is to have stable release every 6 =
months
> as it is easier to support, allows us iterating faster and breaking stu=
ff more
> often :-)

The biggest disadvantage of using kernel 5.4 is that we would do the
next release probably 3 months later compared to a release with kernel
4.19, but I am fine with that.

> It's clear, that this fast release cycle needs some time to settle, but=
 I
> believe, that in the end everybody is going to benefit from that. Users=
 by
> having modern kernel and userland, developers less backports to maintai=
n and
> everybody predictable releases (to some extent).

Yes especially when you want to get your kernel patches also into
upstream Linux it is much easier when OpenWrt uses a recent Linux kernel
as there is less stuff to backport. So this would reduce the workload.

> Once mastered, this faster release pace might be one more very good rea=
son for
> the vendors/companies to adopt (or at least strongly consider) "upstrea=
m
> first" workflow :-)

For my experience there are a lot of factors out of our control. A more
predictable release scheduled should help companies doing upstream work
to plan when they will see this in a production release.

The SoC vendors normally update the kernel major version only every few
years, so there is some patching to OpenWrt needed to add support for
more recent or older version anyway, like it is currently the case for
prplWrt using OpenWrt 19.07 with kernel 4.9.
If a company targets to get their stuff into upstream kernel, they
anyway have to support recent kernel versions.

> If that's not doable for various obstacles, then let's
> hope, that they will hopefully engage and consider sponsoring some kind=
 of
> OpenWrt (Long Term Support) LTS release effort.

Often the time to market for a product takes over a year, so if a
product uses OpenWrt it is normally shipped with a version which is end
of life already. I would support it, if some companies sponsor a long
term support of OpenWrt, I think the community can live with the current
support times.

>> I think it is wise to target 4.19 as it has been in the nightly
>> releases, and as such has been in testing.
>=20
> Yeah, we're all aware about that. If we decide to skip 4.19, we're part=
ialy
> throwing away a lot of work, but on the other hand there was a lot of s=
tuff
> upstreamed/fixed, so making the 5.4 better. It's more then clear, that =
staying
> closer to the upstream brings mostly only benefits.

I think most of this work will be reused for kernel 5.4, we just will
get more challenges with 5.4. ;-) I would not consider the integration
of kernel 4.19 a wast.

> So I'm going to support focus on 5.4 with my vote, thus suggest, that w=
e skip
> release with 4.19.  Even that I know, that we're going to violate our 6=
 month
> release cycle goal one more time, but hopefully for the last time :-) L=
ets
> bite the bullet and move forward in that 5.4 direction ASAP.
>=20
> BTW people doing the kernel development are essential element for this
> project, so we should try to make their work easier as much as possible=
=2E Or at
> least don't put any obstacles in their development direction.
>=20
> In other words, if I've to choose where to spend the finite and scarce =
amount
> of resources, whether it should go into the development of 5.4 or into =
the
> maintenance of 4.19, I'm wholeheartedly selecting 5.4.=20
>=20
>> It would be nice to have lxd support in the full release, instead of
>> needing to custom build to enable support.
>=20
> Feel free to follow https://openwrt.org/submitting-patches and make it =
reality
> :-) Thanks!

I think Daniel already did this:
https://git.openwrt.org/fcb41decf6c622482b20af45a77e62db8d95046e
https://git.openwrt.org/7cc22d72e96093c816292e1b640adff770c7fe77

Hauke


--JjKBADUSKI9FNmHwazSAlqrpYPLtdgl0T--

--k66MWx8NtMuBSSJN13B9foIhoGPW15JJJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl4klXkACgkQ8bdnhZyy
68cECgf9GLLcZpLyHg3Zg7b+uGWwXNW/Kr3ghe1WbpomBODDxwEFZmUGS23fGM9Y
z/f3ddOpLgGA0rkY4VjveqO/EF/7yFN70rZhUB/SriulbcxAjD7QaoWiyf9wkbrk
/RIEpP9Hdeq5OrxEcXgGpGUUcSJAj9H4tQLGyPTFO6Mpikg63AGxzwov942UCUlG
msV1i6dK+h0shRYM8Mstqe2bmReZpl8I95gl1+WIUv7rJ4zY4LolgVAhxz2WnMwP
Y+wmCCS0SmBAaiCc+/OlqJXxFGGtRlwEGajc9NnRmYs7LnSKOhOJaK0+07R56aGf
xpMPk+cPNYrJzxe0S2ITOXT71xY7rw==
=gxEk
-----END PGP SIGNATURE-----

--k66MWx8NtMuBSSJN13B9foIhoGPW15JJJ--


--===============9052469780331538417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9052469780331538417==--

