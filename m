Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D7B1E8589
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 19:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MKBaIt5dC0R34ub89n5Ma9pKkuZhIQnNWgGIesnk4xU=; b=BCVJ4omwGo9VNemjkpNKZf+w2
	7+UTJYbd0wEi/vu4cAS9m2k/0EF+3YNRupcWA6h/5vN2/CGTsfzyIDKoswzZaM5/bLOhKXS3yiu7M
	r35cLVVK/DQNl2b251T9tzoQi6F2Qta7myapvIeKmJK2rXJckmsOq1Vy6pmEUOcJX2FGEOyqeyq7U
	1t8lFyAf8Yf8YgfGtYooxlyA19i/Bxbg14u/eYkn1CdtWgCKKy6X/5MCKymLQH+xVdoK5r8ZrAFGq
	k4mq9OWdKSPTM4kRyf2oKRVuY92KzmJukWOTUkkqDWIGl+LIVPcc7MlfNn+gP6/9YxH4a66h7cY5s
	O+zqkburg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jej4q-0004Pk-Oj; Fri, 29 May 2020 17:45:52 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jej4k-0004PC-9t
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 17:45:48 +0000
Received: from desktop ([188.192.133.27]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mvs2R-1ipNPE2XcV-00su4V; Fri, 29 May 2020 19:45:43 +0200
From: <mail@adrianschmutzler.de>
To: "'Christian Lamparter'" <chunkeey@gmail.com>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-2-freifunk@adrianschmutzler.de>
 <3547903.KlJ2vqsxt8@debian64>
In-Reply-To: <3547903.KlJ2vqsxt8@debian64>
Date: Fri, 29 May 2020 19:45:42 +0200
Message-ID: <013d01d635e0$f9f72b40$ede581c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQExd1SFNnzajrRSninYrjkPzRaXTQBUI4ERAoWM7mCp8gRP4A==
Content-Language: de
X-Provags-ID: V03:K1:EDaWDwacnzucyLHqtBBFrXFmAZM0wsbgKYmX6//HTXnHYuGbt5t
 00Wp65vGUNu6FHUHyaCyUWJz0c7mqMmWN8nrfJC4QZYHfRrN3yM30FjtQa2WsqE5JfQdOo5
 yhWsw8wtKeTUyajDA8GtHKK7vyKW3G/asA+OUJXpJ98XjC4anuA96G5UH2d3hyp1d112B9o
 aMdKF/QHYP94Pojaf/wUA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d+2IUYxzngM=:9w9uczhjfrmTnrHrjLQSOU
 MSLDZH8kwCKGje7qL3ty6HHZJTBQ8kXIUfd6i/IxwF7btOzO4oKGFzageyNerpvLRJTq1x7LM
 BbxvEbm2OO2DUuZ98V5Ihsq5PW5TcZYyrWEav4fNXdJwWzM+m1TGNw0LMGF85nA4kFmXiJ6kw
 nrzZGtlQziD/14Bt5Hn6ihpe/VC8byXhbD+P+LyE86JSk2wxyeMqjp1R1rBVhZ25HjssV0BGT
 wVdDMea9axiLo6pokrI4hWaTIQjEC4FZLV1BZWjPygpH0Xkm/Y0ujCBJwg/PnMVCaof/oQY4V
 pyvlcF5kv8HMa0pmZm7yvmkEDDkH0uvNSshiGQ14a5J43Sr4vNDshTvOR8ek2gAtAsTdYMhhA
 obMsSkPvFGgQN/ctvMnizZGK9uOCSz2mvXOcx/PUQY0ryCjf9kgCENAVCKHPGxz2NS3fQOqFy
 B5rjL/czYLFJUuflAim5aIuxFz1to4IopZAMqIJCMzWFzIDjC4fpWgGqipCfFCMr6MUkPwlcR
 M7UepqdEQsm3o1A4YpSL0XZg1X2VTI7jX0hEMLWHKekGXLwIeLOufsC/TF2xQozkeoKlDrLJk
 KS48XwgMGhx5HebInkP0F1mTOlvRjN6BFEI7+GdOBQgbIbKHllaunyRVv0EU/tRRN5dyeWCTh
 qv+6Hwum+132d3sD7iUWe2vjyNCt9sQrFoEmI33EiPIiKPXd/NPdXR8rqk4/GNkdlsi+aUZBK
 MTn2TJ9ZT0wCEfhkQLklMKevB+vZkrZUVQzYjF2tMTd0VtdD5hZGxrvJY1OPZL7568ItE0IM4
 +620Wq4/kN/46HNwUzO8yX7nmPSkJXy6rsYv+D5rr7i71CPxdkbpyZ6ARbuFIRJpQvItiib
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_104546_640191_1EA3CDA4 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] treewide: drop DEVICE_TYPE when
 used as device variable
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
Cc: 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org,
 'Sungbo Eo' <mans0n@gorani.run>
Content-Type: multipart/mixed; boundary="===============1228841213726703994=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1228841213726703994==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=ckHYnoIuYzII9u=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=ckHYnoIuYzII9u=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> > Consequently, having it set anyway is misleading, so this drops all
> > cases.
>=20
> Well, I can tell you where it matters for devices.
>=20
> You'll have to look at this:
>=20
> <https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dblob;f=3Dinclude/ta=
rget.
> mk;h=3D9bd4c14936c1438df2be87e5697f5f5568699d2b;hb=3DHEAD#l54>
>=20
> |# Add device specific packages (here below to allow device type set
> |from subtarget) DEFAULT_PACKAGES +=3D
> $(DEFAULT_PACKAGES.$(DEVICE_TYPE))
>=20
> So, the MBL gets "DEFAULT_PACKAGES.nas" (block-mount fdisk lsblk
> mdadm) over "DEFAULT_PACKAGES.router" (dnsmasq iptables ip6tables ppp
> ppp-mod-pppoe firewall odhcpd-ipv6only odhcp6c kmod-ipt-offload) which
> makes much more sense for other devices as well.

Hi Christian,

that's exactly my point. Since this is target.mk as far as I can tell this =
selection does not work when DEVICE_TYPE is set within the device definitio=
n, but only when it's set in the (sub)target Makefile. As I understand it (=
and tested with make menuconfig), DEFAULT_PACKAGES is a per-target variable=
, and thus the DEVICE_TYPE from within the device definition will never be =
applied, and DEFAULT_PACKAGES.router will be used anyway for these devices.

Or am I completely misled here?

Best

Adrian

>=20
> If you want to revert these changes and make this transparent, you'll
> probably want to amend each device package list with the appropriate -
> package (i.e -ppp -firewall -dnsmasq ...) all around.
>=20
> Cheers,
> Christian
>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=ckHYnoIuYzII9u=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7RSkYACgkQoNyKO7qx
AnDkWQ//UBc7vXJYmfjvsqE7Tvnpnm8vwkLebD8tZfH99ZKmMPLmK4jZ4Ajb8QQm
GCNsPRhDZiV0lmW1FBTOiduwtDZVfrdtP9GLrvTrpA3reh79302KAE2fHqnVyz1X
LkbVwqsqQeWBlwhWTKhKV1k6ipZQx4E2qjhr/6Ir6ohaieadRRemFUnFTvqC1MCU
AXDzZvxLUwlvCfBLov7t6D/XnVqKimWoA4R63yNbrsS+Pe/TGUbpw5qjmkRlqRIN
P3PVah1dT7Y7XnQTDLolVosnu6wuWgYvvHAp3hb12t0oOx6CDEpbIrbcT2L3P7rr
iIv0texXr4goJ4nXHqXJlDqfRJxiDtcd/KlF0GIY2Vj2V44H0vZ/eBH71ff8aQJ3
okUtOVywZbgWw/NFe0wQ9qBv8skv6+AWYKg0qgx8bSlZADRY22t399EWeq4tNGFO
XKj+VxQKIiPZADqb1Bf7tJYp79HbYJpvDXTTZPV9nsLQdC0QkOekXQEczaXPaoEu
6ew56Uw56xN4wy/qDn0fgntKi2Hb/OUd+21aJyCG2TGjBV43g2h0CccKxku/7yXy
n9MO0w8xR08zTMLtBkHrzX1p8kR5XCSk7SdSBXYMD/pJqkOi6Elp6yWTskIH2W3c
DV3alNPw0Lp43/VCnHyDu5DwRZt6bu4c8ZS+MqGQO7gqNIHVFYA=
=eEW6
-----END PGP SIGNATURE-----


--=-=ckHYnoIuYzII9u=-=--



--===============1228841213726703994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1228841213726703994==--


