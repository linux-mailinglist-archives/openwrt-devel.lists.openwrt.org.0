Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B7D12EA8D
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 20:36:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/XqGYvQ2TlUd/RIrX8WPQq50tNOB0g4QlwZNQ42BajY=; b=VcD2MANEBXVZn2mqFEm3fM7Kx
	AXP6W9YUPRYAsFWG0b7QvDe0uax+LVfES4L50Vli5PRe1ZWufu6TsKy9myr3wi9rCBDvmyxhe8NJm
	xne4VKE0RGVnrRGgcROG9iwfnpRHx7e8O2gF896bZm8YG3RvqvsMAJVI/4sjcKpEzchhF7AHoDX5k
	SCxkQuRihI9S8AEfMMGqHtzDJQZIsg7f38MDXg5D2S6gyTdqGkY/tQBHARMJFYueX/Q00Vh176k24
	DBYk+IOZoLY5PUdTL866s7XBD60iK6Z70YyAiBDy3GHxnXyxL/r5hXTbTrQxjh7fFqJGM92i+u9Lc
	Rg5SHEP9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in6GW-00077E-MH; Thu, 02 Jan 2020 19:36:16 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in6GN-00076t-MH
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 19:36:09 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MUXd0-1jDSqh0TOS-00QWEq; Thu, 02 Jan 2020 20:35:55 +0100
From: <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>
References: <20191228140048.GO11377@home.paul.comp>
 <9f716d9b-4230-b3e0-7e38-78c4c4781a78@wwsnet.net>
 <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
 <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
 <20191231141559.GP11377@home.paul.comp>
In-Reply-To: <20191231141559.GP11377@home.paul.comp>
Date: Thu, 2 Jan 2020 20:35:54 +0100
Message-ID: <02d201d5c1a3$d9924710$8cb6d530$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQJ9ewwWgke1ASdIn9YTZ8hjusiU9wHB7fFZAnZSPWkCmL5gQQI0ueM0pkAhjJA=
X-Provags-ID: V03:K1:w0WyoWZL+UtIFV6Z4+a2wdzYbMIwAptkR1hWYM+67lCT0s3PZGV
 cVWaRHyud18ffb2kTpcjiEmJ3TN1eaWPJX9OMKuo0oxjGNCclRYjosIcoARsJdgUJl0iOLM
 0MXBYH+qG9cs/qZnZBh6CWQ2mAPidm6s4Xl5oNrzdz2DsxParUzo+i0dYJ5ztcLIcCU8z1M
 yvFmGEUng+3GQKHhtHMhg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z05boxkwaQ0=:sy/1pdjDLFPsJ3uIwxJtR1
 ZGN/qepQPBBdQ15WXDdSSScSdTBMSGjgnhxc7KFWqIjenCxT3ZFIYJ4WB7S2dMuDaL1O6e9jj
 hVPjyNuhipFo/q1ntIkTZTKcJpkvnMr9KS/7Q3za3lkh6PJn7FPChix4mVnUXBSG+InEfFdrZ
 RdrXh3kQox1Z1lZ1RmI9SyOqULdrfm3/0u+yyvjGRz1kAxz+z9mk+KBZVfIdU8mx5Wrsvz7rl
 2ktH/IZ4mQQhS50b3o0oA6ANghjl7ENi9gxnbDXhdUxxcw4FaemfPD0+2wlphVedPRmtOoy2z
 QIN8z5sNtx4ZI7+W1eswRUF7lVTPHAKH/zo2f0hyYzBAEREnmla6pDFzJRW9sE/VDVqy34924
 ZX40fUPYoqGUAM5qDaO5eSsAUpFh3U4zDq5z4GJEtEF0FqIEH/XHTPA9rgNbU33aeuJvPnA8a
 i0EY0SwF0dLa/E9wV43ynlHxgzEix2oolwImZrpuMl/cEvbVOKJWi/VzSY336cvMS8l1sGA8A
 vK7E3gV1ujT+pkudEZi3bJu598kxd6tAcchIIn3R1xALvwuCQm5cR9gyUnakNUEx0VO2vHc8g
 rL+8BoY3JJlZyhs9VXse/Yrjnud/kxx2f0iGWGQMNZQnFwYit0LCkUNqZYCSZmJqtA4B6eRlF
 VUB7d1whTw0a7OyDHlEBcUBxX+iaPnyPCA0Pq5byxiSY5lvC2IbMKKWHLHJZ/avfOtHlhXTlz
 6gVmiNjC3qG6fzb8Nm38LVwI6u+9zvUIfqtoh9pf4pofa54gpvMQj7mCl2zbA3uLRykuJIHdf
 WV8xc8NIG6vk6OqMg2NPkvhI87iUzUuUGXaXJmFQv1SynuC/jCt1MNsnT18oPsuFX9LCg3gYH
 Xttnh79j+iYMg1p8fzUlDIKquggsfEvn6fIbxf/Ss=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_113608_020127_B35CA886 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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
Cc: openwrt-devel@lists.openwrt.org, 'Jo-Philipp Wich' <jo@mein.io>,
 'Piotr Dymacz' <pepe2k@gmail.com>, 'David Bauer' <mail@david-bauer.net>
Content-Type: multipart/mixed; boundary="===============1700522566843630572=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1700522566843630572==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=peGmqlP0H2hrdL=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=peGmqlP0H2hrdL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> Are any of you using the affected TP-Link boards or ath79/tiny or
> 4 MiB devices in general? What features do you actually pack in them?
> Do you plan to continue doing so past 19.XX release?
>=20
> If no users speak up probably it's better to remove all the support code
> altogether to avoid wasting maintainers' time on it?

I'm involved in a downstream project that still uses 4/32 devices and will =
try to have them running as long as possible (since they otherwise would ju=
st become waste after all). Having them removed from OpenWrt would surely r=
esult in additional work to support them there.

=46rom the OpenWrt point of view, we still can build tiny devices and run t=
he default setup (without GUI) even in master (at least on many of the devi=
ces). So, with this level of support, I do not see a _benefit_ in removing =
them now. Maintenance is not much of a problem (as discussed by others), it=
's not like we have multiple pending patches for those devices. I'm also wi=
lling to spend some time on keeping them supported (as I've done so far).

So, until we have some kind of a "maintenance gap" for 4/32 devices, I'd ju=
st keep them.

Best

Adrian

>=20
> --
> Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
> mailto:fercerpav@gmail.com
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=peGmqlP0H2hrdL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4ORhIACgkQoNyKO7qx
AnA/+BAA0CPXgiMGERgETxrMfmxebxOaFNgbBa8IL8F4pSt82HGJgxuow8NKw1In
9E+T+uf4gnIO/HGLolJEVJlcE84otE5h0uPyDRQKe/wbNq95cMWcWV3K9D7Wy/OG
zaAcFCNkgP8/BY6bPOzyUaxbt3bzf+RuZlY+6ANYXAHsRd08zNlcBC5GpSTjGC2F
ws6g5rET8ukvipWJkPO0OyPA1C7+TZM08M7YHyICvn7kYNZ09rSRgZQi/F3PXWYC
xs78KZG5h+rR8pw3o4nZSCNHgM3ZyH39zs6fhbFnHtQEgFmYoXbkMnuRxzPJBFsx
gc+pTS60WJ69sNXIs1tnVrjx+NnMw7LXOncZeVFycKH5HsYQoQpEkw9D22N2kTjS
hVtKBJpihMib4MksHhAbvq8QpqhiACfu645heMhlqtHRYtiGgeNNCoukF+LdWubN
RLJQyY8CMp+ja0ZOyC+THQjSRKzIbPk48wt3FfOQF7kLmhmEZ3pafk5UnSnBXZks
fmVp1+T1Z7BNvE0ts7lXYgxtJFgmRm0aEGBF3qLWtAdVxD0hxw+uCurf8zcP9WMm
DSfo6t6Y/VWioIXgNbZTbkF+xzolSwJglJQy3qCfWKog9QJpmqT2JtADhFQBx70H
bXz/K2A34/eNbI1Dabg8HOhVNzvE7hl9aSTdAKWHIuF17bJ+mPA=
=Dt52
-----END PGP SIGNATURE-----


--=-=peGmqlP0H2hrdL=-=--



--===============1700522566843630572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1700522566843630572==--


