Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 580371C2909
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 01:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8pH0sf3zMhWDu46AvKQO2d0+VX9VIwZCwNup3/3rBag=; b=f9t+zVCpTY+UeZlkE0TbqoFwu
	+SnRo3Ud1giuan3NYV7opmxB+i6Jwob9atDYe0/eASh0dUpxzxKAtH7+tpeJcNsem3wtokI/itSuv
	O8Ny5PzJBsvthGykE7Wj9VJHi8sVsxB1K+joOROGV//FpsDetVgTTml5XU7XbUqYTLxH/wtcR94/7
	u9PZipvosbp+uy0DJpn/Ui+1T4M0qKamblQLd8tku9z1AoWLPR+tieYDRxnmr4WU1ZsFqmDbp9kPB
	3EKz9AqSme5Xc6q+lIDuD8yJ2kLL68cUx1y0gEUSuH/L9p+wjNKgxmR9MUNMb18MKg38KZk4UVGe4
	ekXvKJcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV1rs-0007sZ-CV; Sat, 02 May 2020 23:48:24 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV1rl-0007r0-TN
 for openwrt-devel@lists.openwrt.org; Sat, 02 May 2020 23:48:20 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MN5aF-1jlrvS3ztN-00J5KS; Sun, 03 May 2020 01:48:04 +0200
From: <mail@adrianschmutzler.de>
To: "'Philip Prindeville'" <philipp_subx@redfish-solutions.com>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <C69F94A6-C2A8-4836-B01F-C184013F9B30@redfish-solutions.com>
In-Reply-To: <C69F94A6-C2A8-4836-B01F-C184013F9B30@redfish-solutions.com>
Date: Sun, 3 May 2020 01:48:03 +0200
Message-ID: <001301d620dc$1f0ba880$5d22f980$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH3hXerU5gGKmafgf4E1apL3jVE1qhSqAgg
Content-Language: de
X-Provags-ID: V03:K1:gLcYgO6BVjRIDGkB7IrX9g8je1PZa2TCyUKTvM1sTGqkphwQAOc
 Ndde62GsS2YN6IiweWm3Z7GAj7pHWJQV7tdVY3E8K7tpRZrX7CiVYHSL/r7al+mCVD2BG46
 q9X11kBIV0j8FCAmo6URbY8U/7Lgnf7SMSTvucTp+JtXZOQAdsIUJGisOxl+xYpGZBYkAQL
 iF05hikLoVYZVk5wY8qMg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:A9pFoi7CVTo=:z9K4JaDwErknlx1AuGiFAI
 1/p2/3hU4O8uKyJLNHY5n1wthmKgBUTIHG1p52TCWErJJiL64ozEJ9HEAx+MaQgIgz52aGk7h
 R9b13orG1nEAFPfXPAbfDQ4vqI3ICgOc03Uql4h06sgz+VuYXmnZDZWy1Y8j6cCjdcpww7DeV
 +R6NvAkPzg6gxmaA6iGmZvRdjYPbY+LuEYE4tG4JnnrZPpFvd5CLRMlNHOceEg8Lnfb6Oj8ap
 0O+KNYs6FhlGujJrzbT1xiCItXQx3w6k5CsdCD8jgaB0y9Hue+RnCiZH63ZRO4yc/i4+N5vzL
 mDEc2LuXp+66e1zTMVuoBVH0jQ9scXk2Z9k6hcnOUFX7isyF434mn/GgtlctADm9eOphEpZ+M
 EzTJYHbciqyTv/QaKKnGwMdD97lT8fxbJ7+3awY/eRtPLx3tYxJDx1guRA4qEELUeIkKzXzj5
 FKrEBhESJlbJDYv4RugHzuD4BobGJnJXagJCxat6eFqNgQSCAUOCCQrEAgFLvJfAHzU0aG2fB
 A7c8GtrGjxo+Li6ZTaj3hTwy8OQMq16wGUoW/5YiRcidQ7herXlDYov7ZjAkwDmttDg/HIZwt
 KAS4py/aukLAG5+Ja1GoyyIdBar/gSIoMcEhqg0FpRjwOypfzYI23eSXXUYt5Ex/Z3+VRxkWW
 WJDT7b8Yw9ofLbhgsZH6uML+fnom10KAnjtDwT3XuuwY6RlHIXDz2WQaDT5bUzHpN2uIyyjRm
 DSC4ktu2sumV09Vn0BER+OYrGDl82lY9z5WlGBuyd70/jA7z8EKFqbcVCDgO8gjFsrRp9Xb/z
 LLltBtLn4DdkpdFTnElHOvoohPQJOcUmdyzh9xcDrV4mfH/fw2ie0Lt8OLhJUeSEZbfYQFz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_164818_236290_109A1B44 
X-CRM114-Status: GOOD (  27.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Proposal: Differentiating "skinny" platforms
 from others... (resending)
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
Content-Type: multipart/mixed; boundary="===============2444914704804759316=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2444914704804759316==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=JctPUyEAmQrEw3=-="

This is a multipart message in MIME format.

--=-=JctPUyEAmQrEw3=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

just a single thought on this:

For me, this quickly raised the question: What's normal and what's exceptio=
nal?

Your proposal assumes that "huge" devices are normal (default), and skinny =
devices are the exception which has to be "marked".

Why not the other way around? For standard, just keep the basic stuff, and =
then mark some targets/devices that have the capability to carry on extra w=
ork/duties...

While I intentionally raise this question for a _general_ discussion, in pr=
actice "my proposal" actually would have some benefits:
- While your proposal would mark all tiny devices/targets, I would just mar=
k the "excessive" devices. So, with "my" solution there is no chance a tiny=
 device is overlooked and broken by some package adding a lot of stuff to t=
he upgrade. If on the other hand an "excessive" device is overlooked, no da=
mage would be done.
- Since this is about "extra features", and you seem to think about differe=
nt categories, it makes more sense and would be easier to (specifically) ma=
rk the devices that would get those extra features, instead of marking a wh=
ole lot of other devices not getting them.
- Your whole idea for me sounds like it's about "nice-to-have" stuff. Since=
 the OpenWrt default is to provide the necessary minimum, the default confi=
g should also mirror this concept (again, thus marking the "extra").

So, while I'm not sure whether I really like your idea in general, I'd crea=
te something like

CONFIG_HUGE_FLASH
CONFIG_EXTRA_MEMORY

or whatever similar to mark the "big" devices if I had to.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Philip Prindeville
> Sent: Samstag, 2. Mai 2020 23:54
> To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: [OpenWrt-Devel] Proposal: Differentiating "skinny" platforms from
> others... (resending)
>=20
> Hi all,
>=20
> We sometimes get into debates about whether certain functionality should
> be allowed and oftentimes the gating factor is =E2=80=9Cwill this fit in =
a skinny
> platform=E2=80=9D (i.e. something highly constrained, like 32MB of DRAM)?=
  I suppose
> there=E2=80=99s a similar argument about what a =E2=80=9Csmall footprint=
=E2=80=9D machine has in
> terms of Flash, as well.
>=20
> Some of us work with more current machines that are also more capable,
> realizing that eventually machines with 32MB of DRAM and 128MB of Flash
> will =E2=80=9Cage out=E2=80=9D through failure and scarcity.
>=20
> By then we=E2=80=99ll have a new =E2=80=9Cnormal=E2=80=9D about what the =
minimum expectations
> are, and the conversation will continue, but with different parameters.
>=20
> Understanding that the definition of a =E2=80=9Cskinny=E2=80=9D machine i=
sn=E2=80=99t today what it
> was 5 years ago, and that it won=E2=80=99t be the same again in another 5=
 years, I=E2=80=99d
> like to proposal a CONFIG_ symbol that denotes that a platform is in a cl=
ass of
> constrained architectures.
>=20
> Or, conversely, that a platform doesn=E2=80=99t have to observe overly re=
strictive
> constraints on =E2=80=9Cwhat will fit=E2=80=9D.
>=20
> (The smallest router platform I own has 256MB of DRAM, an 2GB of Flash for
> instance, and it=E2=80=99s a 12 years old PC Engines Alix 2D=E2=80=A6 mos=
t of the =E2=80=9Ccurrent=E2=80=9D
> machines I have are AMD64 and have 64GB of DRAM and 32GB or more of
> Flash=E2=80=A6 with 256GB being the median=E2=80=A6)
>=20
> This would allow us to develop packaging that both fits into constrained
> architectures, as well as targeting further along the evolving curve of =
=E2=80=9Cmore
> RAM, more disk=E2=80=9D that newer and newer platforms inevitably follow.
>=20
> For instance, I was on IRC yesterday with Jo-Philipp talking about whether
> the xt_geoip database should be propagated across sysupgrades,
> understanding that:
>=20
> (1) some people might use it in their firewall rules (/etc/firewall.user)=
 to
> block certain country codes as part of their system coming up, and don=E2=
=80=99t
> want to be in the vulnerable position of just having performed a sysupgra=
de
> and reboot, but now finding themselves without the geo-location database
> and therefore not able to block certain countries, ISPs, etc. that are kn=
own to
> harbor APT=E2=80=99s;
>=20
> (2) the database takes slightly over 7MB today, and that might be more th=
an
> one can reasonable propagate during a sysupgrade, and some people might
> not want to risk a failed sysupgrade=E2=80=A6 understanding that they can=
 re-
> download and re-install the database without too much trouble (it takes a
> couple of minutes to download and unpack, even on a modest broadband
> connection);
>=20
> My proposal is the CONFIG_SKINNY parameter (and possibly others, if we
> need to triage in multiple dimensions; see below).  If this is set, then
> conservative decisions need to be made in packaging about disk and RAM
> consumption.  If this isn=E2=80=99t set, packaging might assume there=E2=
=80=99s =E2=80=9Croom to
> stretch one=E2=80=99s legs=E2=80=9D.
>=20
> In the prior scenario, the assumption would be that backing up the geo-
> location database is feasible on unconstrained platforms, and one could a=
dd:
>=20
> ifneq ($(CONFIG_SKINNY),y)
> define Package/iptgeoip/conffiles
> /usr/share/xt_geoip/
> endef
> endif
>=20
> to feeds/packages/net/xtables-addons/Makefile for example.
>=20
> Then we can move away from the argument about =E2=80=9Cshould X be allowe=
d=E2=80=9D to
> the more productive discussion =E2=80=9Cwhen is it acceptable to allow X=
=E2=80=9D instead?
>=20
> And hopefully, what=E2=80=99s =E2=80=9Callowed=E2=80=9D (or viable) will =
only increase over time,
> giving us more and more options to tailor OpenWRT into the optimal
> configuration for our needs.
>=20
> So, I put to you 4 questions:
>=20
> (1) should we include CONFIG_SKINNY?
> (2) what is the minimum DRAM that a platform should have to not be
> considered =E2=80=9Cskinny=E2=80=9D?
> (3) what is the minimum Flash (or other storage) that a platform should h=
ave
> to not be considered =E2=80=9Cskinny=E2=80=9D?
> (4) should clock speed figure into this?  or some =E2=80=9Cnormalized=E2=
=80=9D accounting of
> clock speed, that takes super-scalar and deep pipelining into considerati=
on,
> such as MIPS, be considered?  or should this be an orthogonal parameter,
> such as CONFIG_SLOW?
>=20
> I=E2=80=99ll kick off with my own initial empirically derived answers, wi=
th:
>=20
> (1) yes, it can=E2=80=99t really do any harm=E2=80=A6 people who don=E2=
=80=99t want to deal with it
> won=E2=80=99t, making everything effectively =E2=80=9Cskinny=E2=80=9D whi=
ch is the status quo;
> (2) 256MB is already fairly capable=E2=80=A6 we can use that as the initi=
al definition of
> =E2=80=9Cskinny=E2=80=9D and tweak it as experience dictates is reasonabl=
e;
> (3) 512MB is also a fair amount of space for image plus extended logging;
> (4) above 1000 MIPS, I=E2=80=99d not consider an embedded platform to be =
=E2=80=9Cslow=E2=80=9D=E2=80=A6 a
> 500MHz processor executing 2 instructions per cycle, or having 2 cores an=
d 1
> instruction per core per cycle, is fairly capable, easily able to handle =
traffic
> shaping on a 100Mb/s link;
>=20
> What does everyone else think?
>=20
> Thanks,
>=20
> -Philip
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=JctPUyEAmQrEw3=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6uBq4ACgkQoNyKO7qx
AnBudRAAjRwaCWkrDvXehf/twwl4HialZ7NQVpA+winWSpQOJZPONADsYGGGYXM3
PkH3IUrpypWHbsKSaMdNsERrg1wGMhTBoLfT1HygKGGB8DEP9TCjL2rAvsZa+EqK
V7/sYzEdMTWEpwa/UW+nopHsxo2ByydGKrAsR6+Xr3ecXId8uiqvHmnJa5H1B87k
XlTJoDwWM0FbMcHaOOveA6M5HQ6MnnDcoBHU+G4mTzBKGGNWw7ejv7AZHA/r5R2s
7Rb/SlyjhGFfGAZAX82eBIrS/TYNts+FIqyp97J57iJfqYaUXLq0t++N1tYC9c2z
0fZZUOESqGCvCGc5oJGzJ1Dl2t9kLQp6g0gwfPlT6kzlnzI/zWYD1XmxqcyUj7MW
kV2PTkQg6oGzi/WBzEMKoUd8RZ557W41GbFA0CyJHWxzpM90vE3xlaxafUxcqpBb
EPgEZhImxJxCezDFtxahkGnsqVrpVYMDMSrRQaPtTwqjDLknCJN3Y9yRw6lwEawI
hUFcWisAb1e70w0VxK6pyRBF5dFzolYMV3zcAHaRqu/n+t615gK9Yf2Rr7URzn10
eqPDB5nXyzzj8viDCE8byGSCcID+bozjRsaSTMxZW6q/MCDrjUePK50l/WLR2MQK
MPVi8FWl/o04d+1b9kg74GBlrncObpvmpkf96tzAJFz2/3K0cSo=
=Pj6N
-----END PGP SIGNATURE-----


--=-=JctPUyEAmQrEw3=-=--



--===============2444914704804759316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2444914704804759316==--


