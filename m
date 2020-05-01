Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED0A1C1095
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 12:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0ZT/19pjsMrK1e+QrbXQkzlljplD0QZyszmSCwaDz5k=; b=hZcVbaQTlNQGzHuma0GSGbiUb
	xnmeh3Q4aXmNnsR5y/6BJXrSMImNvHkvs+Dwsumge6nIYZnO7Qm7yuspnmWGeXjDLKMASRvCDGS/0
	Shs0kjnfFYM2QaEHdpq4yPEBuvW4HAI/XMD7tvASwzsYMV7nS7SYKy8Z8U0cW/hTRiehw2oK+bFAx
	2/Jb5/QE+ATYx7CJ1Up9JdYMBBfsbydF3QyOj+jHUFuuDpNgGntzq5KeaUXjbIwgl0Yp2rPI0mDPX
	aUlGQGw6Gx5asYxHEQYZwkHJm1bNXt58+XeFDv0gVtf8YPvY0AX+grOBKHYwm/TmWst8EQcVweUJR
	NMipbccdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSTB-0004me-3U; Fri, 01 May 2020 10:00:33 +0000
Received: from lists.nic.cz ([2001:1488:800:400::400] helo=mail.nic.cz)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUST2-0004PL-Fl
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 10:00:28 +0000
Received: from localhost (unknown [IPv6:2001:1488:fffe:6:8cba:a9ff:fe11:be49])
 by mail.nic.cz (Postfix) with ESMTPSA id 34428141DC0;
 Fri,  1 May 2020 12:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1588327220; bh=gqCbn7WfFK/mxoRRQ+UHNj+ErJlFHER9n6skblAPsY4=;
 h=Date:From:To;
 b=VrLCE3bp5hv4YJyQ5zHeTxL1m3I3r0CIYG7vToTMedhFnxHu4deDuswInAJTeR4xR
 7KkDv6q4l+TtmtYbyDlcRMsUFIMIt2G1Baeg3PfN2RXMD8LnXsXx/7tG3HSAjlVbNN
 OfJrRAz2RXWuE5G2EMh0ZcyYxhb+GvirZ5DjV0u8=
Date: Fri, 1 May 2020 12:00:12 +0200
From: Karel =?utf-8?B?S2/EjcOt?= <karel.koci@nic.cz>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200501100012.m5ym4oeag3zkrcbi@albert>
References: <20200429104758.25425-1-karel.koci@nic.cz>
 <20200501072236.GA87115@meh.true.cz>
MIME-Version: 1.0
In-Reply-To: <20200501072236.GA87115@meh.true.cz>
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
 USER_IN_WHITELIST shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Virus-Scanned: clamav-milter 0.101.4 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_030024_987141_D0406BF4 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] tools: add autoconf-archive
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
Content-Type: multipart/mixed; boundary="===============0652626911137490094=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============0652626911137490094==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ysznms4ki66l4lty"
Content-Disposition: inline


--ysznms4ki66l4lty
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi

On Fri, May 01, 2020 at 09:22:36AM +0200, Petr =C5=A0tetiar wrote:
> Karel Ko=C4=8D=C3=AD <citrisin@gmail.com> [2020-04-29 12:47:58]:
>=20
> Hi,
>=20
> > Some autotools based build systems are using autoconf-archive scripts
> > and are expecting them to almost always be available.
>=20
> like for example? I fail to see, why this should be included. Stating "so=
me
> build systems" is not enough.

Any configure.ac with AX_* macro.
My reason is Turris updater-ng but that is part of downstream project so it=
 might
not be relevant.

I can do grep trough build_dir to see all uses of AX_* macros in configure.=
ac
files. I suspect that they are few. There is at least a copy of files found=
 in
packages repository in packages mpc and libmpdclient.

> > Including this adds little to no overhead in terms of build time as
> > those are just m4 scripts copied to an appropriate location.
>=20
> Any new package adds maintenance/support overhead.
This is not package but tool and can be considered as core component of GNU=
 tools.
It is set of extension macros for autoconf.
It is also updated/released just once or twice a year.

I am not saying that I am aware of imminent need (over ours) to include it.=
 It is
just simple enough tool that is I think pretty much "include and forget" ty=
pe of
thing.

It would also make possible to not have to hack build systems (such as for
mpc) and would instead provide these files in consistent manner to all pack=
ages.

Other consideration can be that it is required for one of the core componen=
ts of
Turris so there is company and payed developers behind this to maintain.

With regards
Karel

--ysznms4ki66l4lty
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERtcVoO0ODEM8v1lj2DvXMqwr2CgFAl6r8ywACgkQ2DvXMqwr
2CgYxg/5AXkbj1Cvy2wqguK6yFH12Q7v5JCohOz1rD2VNj78wnqiZMFWT+tXSVW1
8PozChVLGnXnIQzuQ98pHip7Epy2LEdnpOFHdFkqvaxUeX8v1g+RwPrFnVRpxtFn
HoWrl9LCn7w4orwh2xlUfaQekVhTzGVse9cFCBXI9nrmvWwprsVr8nDlWpPCDObV
aiSz0YnwiWIx6ToeUoFilymwILuXNrl/8u5RxV15UELvwDUZmXwXDUAF66Fk4o7R
xkaQsoIWg9/5GirL4r5J0IlA6P/foTX6zH5u3Cm3g98iJeOXoE27j9wgXEgRyQMY
3Fj5FBEtW6eRBt7WGoL2pEHwAWpwIuYWLXHstRlN9xmOLaWTF/q8pRvMPkXX7MBQ
gm6V8Qw9TLw5lE2+sUqtChv4QeIKzFvOhUIlb+1gscJxkg8qQ3z+SJ8VHWpEEMGS
Rft8WMV/PommB61mVr8IN+XhU6DT2ZKPJ+KN7bktxHifZCKcY9NBJKPUhcXpebxO
AUK5ZWDL92u6E8ZB/LoEq8ngp/1ee2yXZBe/XjEHe2bLXC6SWR7nf3GSnzpfGy1D
JDSWp4h895f0hNG9mmLi7pPmwl7bHDn2zIIdcE+8z7Mx4Tvac4JLajoXslBjwz6X
LlGetL7UXh72EdusYaEPR8MGIJ9AKE/Keao9ROJ5VFm+IUMjJk0=
=xWuL
-----END PGP SIGNATURE-----

--ysznms4ki66l4lty--


--===============0652626911137490094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0652626911137490094==--

