Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FC81C2D7E
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 17:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AC0HoZVuQvkVCBHWolIVcVQY4oi02iJBIGvCyJnOKes=; b=TH+J/2rJbRnf9jbFKbJn523qo
	KPgvrdxMZlCsa85coBqx5EDYGCMXIyi7FxD95HPBb8q8rnA6v6MZEPlMhePx2g91QaSqEMmYikAdL
	NpNhhK8Q8qQa+Hu7A8lOBRCPWzxzeBwsjXLKZlR+Oq+gx0Zxnha/BSWcDeTnL8RoWKfe95qnvDabP
	NfjIr9MPDbZPosn4vlFnbf7X1VvzOCG5iaLzKWNX1VhR6axCyitXaKZ0tjFb3VNQ11YScSyU03l9k
	k6bHAv1yHkTRfwA2UWlJ1PI+9/JrKN8kVOCTzeFQFVDkZZf2Bf7Pivc4pWFfJdiXkUTekwyek0rjo
	Rj1S2AcYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGgc-0007HT-Ip; Sun, 03 May 2020 15:37:46 +0000
Received: from mout-p-103.mailbox.org ([80.241.56.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGgV-0007GY-BE; Sun, 03 May 2020 15:37:41 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 49FVVH27Z8zKmWf;
 Sun,  3 May 2020 17:37:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id keUVn5uUG9TW; Sun,  3 May 2020 17:37:23 +0200 (CEST)
To: Paul Spooren <mail@aparcar.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <6b2b45c20e5426dfff07953155845da6e8d74f6e.camel@aparcar.org>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <35d32365-dc67-f76f-c95c-a47ab6f04617@hauke-m.de>
Date: Sun, 3 May 2020 17:37:04 +0200
MIME-Version: 1.0
In-Reply-To: <6b2b45c20e5426dfff07953155845da6e8d74f6e.camel@aparcar.org>
X-Rspamd-Queue-Id: 30504187D
X-Rspamd-Score: -5.84 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_083739_687529_C3A13A89 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.56.161 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Applying to Season of Docs
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
Cc: baptiste@bitsofnetworks.org,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8635677457388061948=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8635677457388061948==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="YxaJJ5ERZUHTEGlkBOYQgSDK0ScIHGR83"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--YxaJJ5ERZUHTEGlkBOYQgSDK0ScIHGR83
Content-Type: multipart/mixed; boundary="IICcEnI80pm6nPl3cb8V7LEqMiNcO1Oot"

--IICcEnI80pm6nPl3cb8V7LEqMiNcO1Oot
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 5/1/20 11:07 PM, Paul Spooren wrote:
> Hi all,
>=20
> Google offers a program[0] to stipend people writing technical document=
ation for
> open source projects. The stipend is possible for anyone 18+ and not li=
ving in a
> US embargoed country, so unlike the Google Summer of Code project not o=
nly for
> students. Successful writers get a stipend of about $6000, mentors $500=
, from my
> understanding these stipends are at least in some parts of the world ta=
x free.
>=20
> So much about the program, question is how OpenWrt could benefit from i=
t.=20
>=20
> * Some time ago there where some ideas on IRC to add development inform=
ation to
> OpenWrt specific tools instead of managing it in the MediaWiki. Article=
s from
> docs/techref[1] could be updated, cleaned and ported to the project
> repositories. For example, move the ubus network docs[2] directly to th=
e netifd
> repository[3] so developers can update it conveniently when adding new =
features.
> The existing wiki would then point to an online rendered version of suc=
h docs.
> Using a tool like mkdocs(.org) allows to create documentation websites =
based on
> Markdown with minimal dependencies (Python3, pip3, venv).
>=20
> * Device pages, important for users, are often very similar but still v=
ary in
> steps and formulation, increasing the work of maintaining them. Also th=
e varying
> structure complicates the user. Personally I really like the template b=
ased
> LineageOS device wiki[4] as it's the same structure for every device bu=
t still
> covers corner cases or important notes. Some time ago I created a proof=
-of-
> concept which could be an inspiration for further work[5]. For prioriti=
zation a
> a ranking of popular wiki pages could be used, which devices are most c=
ommonly
> searched?
>=20
> * The wiki offers guides on how to use the LuCI for common use cases, w=
hich is
> great because it's the most likely way for basic users to interact with=
 OpenWrt.
> However this could get some extra love: Partly pictures are missing[6],=
 pictures
> are outdated[7] and/or missing from the web interface overview[8]. This=
 could be
> refreshed and put in nice overview, maybe even even create click-throug=
h videos.
> There must be tools that automatically click things in UIs and make scr=
eenshots,
> this could make the documentation easily future proof and translatable.=

> A prioritization and general collaboration could happen with the partic=
ipants of
> the '"simplified" interface for LuCI'[9] thread.=20
>=20
> I'd be happy to either be a mentor or writer. Hopefully some more peopl=
e are
> interested in this efforts!
>=20
> A first step is the application to make OpenWrt a SoD project. If appro=
ved I can
> (try to) handle the paperwork. The deadline is 4th of May, sorry for th=
e short
> notice.

Hi Paul,

I just noticed the deadline is today at 8PM UTC (in about 4 hours)

This Season of  Docs is a nice project, but I think it is about actually
writing documentation instead of creating new infrastructure for writing
documentation. I also think that we need someone actual writing
documentation more then new infrastructure for it, so this is a good thin=
g.

It would be nice if OpenWrt would apply, but I do not have the time to
manage this project or act as a mentor.

@Paul do you want to manage this?

Hauke


--IICcEnI80pm6nPl3cb8V7LEqMiNcO1Oot--

--YxaJJ5ERZUHTEGlkBOYQgSDK0ScIHGR83
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl6u5S4ACgkQ8bdnhZyy
68d7JAf/bb9FQ7VQjvhWAs+A9JazOxnKfl3MxyhluD+ejkIo1plrR+SFvUy7WvjR
lbgGweQb9USfAzOn93hZTxVgQXs5Y60lMZaXXdNVem7d4g1RFLpPT/Kvjo7hTvXj
18wVV+3W5soJXDRAciQpcMg6YcU6tezoka2MbQrkob/fRZX2MGI4Cu3muCA3kU7R
axvTFdlZvhwv25n1xi8nFix8P9AcjjGx+DAauxoI/xGrW+0rZ4mAj56/fyuMscUH
2Vrek1Z9EiFlFcJq24kfVx0Fn1P0BIEv7/HnBHsqEWZ6FMCaa6noNJ05A17ryX+o
NpPWo9rW3umeHVpgvTU8sCGxoOeiKg==
=rEd+
-----END PGP SIGNATURE-----

--YxaJJ5ERZUHTEGlkBOYQgSDK0ScIHGR83--


--===============8635677457388061948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8635677457388061948==--

