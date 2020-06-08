Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537A01F1E3C
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 19:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KsxeaAlXukVx1lP2b+op+UXS+GjpARzrllXId3jGkW0=; b=XQ2Y93/GMoYvOL0LDB0nn2E/0
	zuDZ+zPyr7fMSM2XnG0SJqAr9RsajRhhMkALcW+CmZtulfKATpLwA73tHSVNrqptyyG2Gt9BKvgmJ
	8iY/XsVu6XpRU3bZLYiCjSMXRY0rlrMGVWzrD8iaN7evD6hNAtQkLmYxG5fwIeG7qkmtsJZvKq6lW
	iFPq/5NFE2CxchA5AxPOlMZeGGqB9IeGrIAQnAPX51Y5mXITouDRNA7+4OzgUkgZecb1aXiyndjb+
	CfEQbKwrUTt61eGoYzLFhgTCHT7x2NSjw4W4EONI7lsIVu54q2e6Hst0AhfPA6l+5lZPT4JVr9pVz
	89O1ovh6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiLOV-0000Cm-VX; Mon, 08 Jun 2020 17:17:07 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiLON-0000CE-Sq
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 17:17:02 +0000
Received: from [2001:912:1800::249] (helo=tuxmachine.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1jiLOK-0001M2-E9; Mon, 08 Jun 2020 19:16:56 +0200
Date: Mon, 8 Jun 2020 19:16:54 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: Stan Grishin <stangri@melmac.net>
Message-ID: <20200608171654.GA117902@tuxmachine.localdomain>
References: <20200608101405.GA102675@tuxmachine.localdomain>
 <CALu2O0Rie__3FVfT_Z99KNoYPvQqB-kc89UVcv3AASZM6=Fu2Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALu2O0Rie__3FVfT_Z99KNoYPvQqB-kc89UVcv3AASZM6=Fu2Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_101700_102060_7E30C2E0 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Google Season of Docs projects for OpenWrt
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============3410155962719730775=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============3410155962719730775==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On 08-06-20, Stan Grishin wrote:
> I've had a look at the project ideas posted, and I'd like to put my
> name forward for a few areas where I'd like to contribute:
>=20
> 1. There is a great documentation for creating lua-based luci
> applications and model/cbi which allowed me to start creating WebUI
> applications without knowing much about Lua. I believe it would be
> beneficial to have similar documentation for the new javascript UI. I
> don't have much experience with javascript, but I can read and with
> some supervision I hope I can document things.

I think what you're looking for already exists? https://openwrt.github.io/l=
uci/jsapi/

The links on https://github.com/openwrt/luci/wiki/Documentation were
broken, I have just fixed them.

LuCI is quite different from the other components (and as you said already
has extensive documentation).  Project 1 is mostly about the other core
components at https://git.openwrt.org/?a=3Dproject_list;pf=3Dproject

> 2. The showcase project -- as someone who pushed for the "why use
> LEDE" page when the site was redesigned, I'm glad the importance of
> this is recognized by core developers. In addition or instead of #1, I
> can help out with some DNS or VPN-related articles.
>=20
> I have contributed to some wiki pages (sadly changes since
> overwritten), LEDE showcase and READMEs on my own packages
> (simple-adblock and vpn-policy-routing).

I guess you are referring to https://openwrt.org/#why_use_openwrt and
https://openwrt.org/reasons_to_use_openwrt ?

This is a good start: while these pages are mostly general, I'm thinking
of Project 4 as a way to showcase specific setups and use-cases.  In other
words, it's complementary.

Most of the project is about producing content, but there is a first part
about thinking how to organize/publish things.  Do you have ideas about
this?  Wiki pages, blog posts, videos, something else?

> Let me know if/how I should proceed.

For details on the process if you want to apply, please see https://develop=
ers.google.com/season-of-docs/docs/tech-writer-guide

The deadline to apply is in one month, so you still have time.

> PS. I'm glad you brought up the LineageOS wiki, I wish we could
> supplement the ToH with something like the search at
> https://wiki.lineageos.org/, where when you start typing some letters
> from your devices it lists supported ones matching what you typed.
> With a variety of platforms/devices supported by OpenWrt it may be a
> daunting task for a new user just trying to figure out how to find the
> OpenWrt binaries for a specific device.

I'll let Paul answer, as I think he was the one proposing this.

Thanks,
Baptiste

PS: please keep discussion in the same email thread.

> On Mon, Jun 8, 2020 at 3:32 AM <openwrt-devel-request@lists.openwrt.org> =
wrote:
> >
> > ---------- Forwarded message ----------
> > From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
> > To: openwrt-devel@lists.openwrt.org
> > Cc:
> > Bcc:
> > Date: Mon, 8 Jun 2020 12:14:05 +0200
> > Subject: [OpenWrt-Devel] Google Season of Docs projects for OpenWrt
> > Hi,
> >
> > As discussed previously, OpenWrt has applied and been accepted for the
> > Season of Docs.  We have three mentors (me, Jow, Thomas H=FChn), while =
Hauke
> > and Paul are "project administrators".
> >
> > We started proposing projects here: https://openwrt.org/google-season-o=
f-docs
> >
> > Feel free to discuss the proposed projects here, especially if you plan=
 to
> > apply as a technical writer.  The goal is to clarify the projects if
> > needed, and make sure that we provide a good match between projects and
> > technical writer applications.
> >
> > The deadline for applying as a technical writer is July 9, see
> > https://developers.google.com/season-of-docs/docs/timeline
> >
> > More information about being a technical writer (requirements, stipend
> > amount, etc) is here: https://developers.google.com/season-of-docs/docs=
/tech-writer-guide
> >
> > Baptiste
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl7ecoIACgkQvgHsIqBO
LkaLOw//Q6bYQanXRWP5WjBi5CDAa14TAo/k8AQMxqeMUtAF8luazHcDOEMrjmJw
IDvZX5n2erqLa8cnM+1TTQvD9dz/8cYGHrMXAKPXVk8dzxvZZD6yBtjEQFIdjWkT
ACmcoUqGT90uR9gRINF3It4PbGEL8/rJOQvp3wpfNTkerIgh8C0wHoPmoqhqqFfC
IJ3wv1iaek3st4m3WIJC+bnyUX+9AdzJNeh0SyR4IqxG7aiN8RNtR+b1B54NNK7a
xNQRjJhE2uuyVGK5Z06n6pOcADHZFjNwszgZhCi2pFQerr03ppr/g8clW9kmZSaj
YyilDD3XtYmaDqNlNAOh4Z4zFon8Tuv4GUGfauy6UHy4C/gvLqnsNWRZ4xp3UYlK
TfGCUndtYXRDhIK7RJQdmn541dBm6mfJIbUco92bHXtZQb1Kmwg/OG/XdAUYatJ6
/QpLO108HAz19/+BVKYwL7ouC6idCmX1qGUd189BV5UgwNAoHwSBKbtdyl8ZPCu/
j0hHLHDOhg51z098hMWkQGKZ8MLrCGKfZ3ebzr/+9FxODz3+AbKcu2rJBi5aPffQ
nSMejYNAshpdFsxg0+q0doFljNNb/rDmd/RE96W/NPbxHD/7wkqQsKcFDpfDQxTx
r1c1DYr0zsPzPRDRGYaI8Yn1r25SIs5MADggkep9oLbKE4wWLFk=
=nPrj
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--


--===============3410155962719730775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3410155962719730775==--

