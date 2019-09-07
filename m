Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA08AC603
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 12:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=azqeTxKn50yG6wyciGkpqsPvjw6kRABFG8qKV/Q4gvA=; b=WsBClpi9vM6TbCxRxP8FLqKSx
	lRCx6qZn5Y0pF0iG0lnp9wg3xlrsqJdaAWOEK07wEtbL0VQ8xut8xa80UjJDDRcG1PX337R8J7Azf
	i+mMj0BytYpkeffcuAf2u0di1K9dGvqdHjay/wF9cTdeuKEcuL4j1sOxEAHMjj37fm8jlvWr/kAuD
	H+0fWmOdeLH8ZRvDtIGr4FBsqaZzYZnLG7QRB6VIVZqD87KqfysN0ke1XQn/syeD9m3Rld+oHtbuW
	UeuQxaYkfZZReCRs1NC+lrL1XzqAgcm54aFNXRvUklWibPfgrhV5xTdcw0f9aNJ0fVIUo5oIKpC2i
	32GjS6lOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Xl4-0005ZU-Ef; Sat, 07 Sep 2019 10:15:54 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Xkv-0005Z8-Fc
 for openwrt-devel@lists.openwrt.org; Sat, 07 Sep 2019 10:15:47 +0000
Received: from desktop ([188.193.187.204]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N8GdE-1iAvV647Oa-014A1v; Sat, 07 Sep 2019 12:15:41 +0200
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
In-Reply-To: <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
Date: Sat, 7 Sep 2019 12:15:40 +0200
Message-ID: <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGe0uH3YMoujDnAXodp5C7FQpVSGgH5MCOhp31YW/A=
X-Provags-ID: V03:K1:C5G9o//qaXyQuYivcrBzTk4LeusldRqcSKeQTUwW/lCUoa+Nsib
 OerVS5ZW1Yr+HO5u+g9H8WpTr3RR9TedmiPsE/uXge2yGqXya8DOcr90klfBBgBCaldC0pg
 chql9/mPXo5o5mbpKnc72Jl+/VbkqWwZXHpDGXD3c9iSlABgX22bxI/PKein20eKngqEcg3
 NbaNRFvY9ZAigGS+hpxTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pxVJtrW85nU=:RIrUAGnaTmIes33r6atMQn
 JSnom4u+F00/R+o8UC0SjmK8LGgi0GzN6ifiYa2HGU/DGMylDI6qimxBOI3uEJhkMZXUocl+O
 ZH2j+iDsk4XbYnnSR4dSG/B4bfQFEyj5XUi/c55nCUgXKDXnvbGyc6YDsFrQ5Mledzr/zxYwU
 dUdYZPB6j+qn2Any4ANV6IUqL3w45O8fwtmwKOUlOzeZ5IgPLcm8yGK/FFXEo0Ymk1m7Ix45i
 QqbGQf9LfQPC8IOnxiKouFtvmi6QV0eQh7YCDdVQky4Vk8LGPDHnzWuJ64vX7u+UwLaLVsHdM
 2JBt/P7icaWM83vS0V+FX3aBBtIlVNp0LdJW5+iGM/8V8+PioQIceG8QiG3/VDlBs8gDPOBWI
 KS97IxOi/e2Lgq8/3l3jE9qEWvjfHt9wqXCyvc9sS9OW8Jnlgd6tP7c1/kXoIeMU5QzSA6UPh
 ks2yWHrpsoWBUfK6ohUGI5NLXIYcfUcKq/EnKDAOKQ272RtxwVsUKIeoRTvcht6FbwDcovYcs
 s9WThjGyr2HZGhdRGKskiXkerIZP0+EhiES1JJzAA9k9XO5CE0Egug/b3si8Yk7vmAs+4u+lB
 9NHxN5euGQPUBfIjqkBEWXVO0x/YEEKCZHJBUbcsGApiWDznhubmb3ojYZsr+AYL21ncVNwyi
 ER0j1bMNiDn3+4U77+Jw/vzbGeX93aLwV+lO1PgKkKXV7dDya4F0GwtYHjmiQxX9Pp0XSI9G4
 DP9M+kjw4+Kdg/FOKNLH50kNSvfGrUBUsL97wOLDoDmaTxvhTX4+HDDEI+GfVmnEB1CALet+M
 Tsn3XzjrAZHC0sPjuXLNvzXObBk82brlRHAvqLbpM1YFYCDaIc/oZ5skKecU7yNPg4oZO0D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_031545_817298_BE728DB0 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Content-Type: multipart/mixed; boundary="===============1531373110936848654=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1531373110936848654==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=W/UW+tcOmDvXJh=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=W/UW+tcOmDvXJh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > However, this will obviously swap eth0/eth1 on EVERY upgrade, not just
> when coming from ar71xx.
> > So, does anyone have an idea how to limit this to run only when updated
> from ar71xx?
>=20
> I was thinking about the same. As we have no information about the
> previously installed platform, i was thinking about abusing the wmac path=
 we
> already use to migrate the WiFi configuration.
> However, i think this is not the most elegant way to solve this issue.

I have to think about that. I recently thought one could just check whether=
 the lan/wan assignment matches the one expected for ar71xx, but that would=
 obviously also catch cases were the user modified it to be like this.

>=20
> > Despite, while having the abstraction of "rename_all_eth", I wonder
> whether it would be possible and desirable to do all renames in one step:
> > sed -i -e 's/eth0/ethX/' -e 's/eth1/eth0/' -e 's/ethX/eth1/' $file or
> > even sed -i -e 's/eth0/eth1/' -e  's/eth0/eth1/' $file depending on
> > how sed handles this internally. These options would mean less flash wr=
ites
> (although this might not be too important here).
>=20
> A rewrite with sed is not sufficient, as we will possible rewrite uci sec=
tion
> names, possibly referenced elsewhere. We have to loop thru all interface
> values and lists, rewriting each occurrence.

Actually, I could well live with that. What kind of references are you refe=
rring to?
If just someone really named a section with ethX, it will be renamed consis=
tently throught all uci files (unless they are stored in another location).
Only in case someone uses a section name with ethX and refers to it e.g. in=
 a custom script, this will be a problem.
And this is where I think we do not have to account for every tiny possibil=
ity. If someone upgrades to another architecture, I think it's fair to expe=
ct him to check whether his custom scripts still work. We do not have to ov=
erdo it.
But that's just my point of view at the moment.

Best

Adrian

--=-=W/UW+tcOmDvXJh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1zg0cACgkQoNyKO7qx
AnBuuBAApbsD5Ir+0lAqEjVAatxAaHfAyAKdmzybBiUU5IYO+qEm0Neqf2AOD9NK
G6HmvMVGB9BT7xCmEkll8xpaE5olglUucB0IzXT9VKuPjusai3CxwsKDeVckUxdc
6sRhupXkjVnVgfvjfS6mhnL0SBQBEu6izpr2npUQPBFUoBa6+P1HIK/azu8JJCAZ
xzzxnCtXoQTKW6jb+LRe2Wk5hvE4oyJuUZNffe2pi0gCftGqtgg8p6WWpiP+MidY
XgagP7CLdGDcnF2UrQLrcg4nCn1QA3phW949ofrsxoZLFybQgLuYPcoj+HYwZN0l
1PiBpwXvMnX2uiu/hbCdhT95NjSMOfYpYqCd5YASyqX3Ka5yVxrTUEVFZHTCQU2o
ReXXaEbskV4YbcAYPz6QrjMMzDjKm2UVDUcEe6oGh4pIDWLADS/MG/eUZVOC9bCo
z+n/B0aOp9tSyZirk1KGgVjhZSGNE79XmzPCUoR7ACHAAx4K2lMpSMA1gL39Jiz0
GMy3TYfaPxWlp1/pYkvV1A4M7zRmC1fsOYZ7euFsifiHnxdpMQdT97t979toOHsZ
v86tvoBGO8ZMFZM6aRQ+jQiAzUBpySFga2AaWDfsEgJkEyhzl2KbsO0bISvBizKQ
C5ydRAZjAGVDAgeVcQOYtxvOsDN6g5+NL4O7Y9kIWsQoZOGLb/A=
=hs1g
-----END PGP SIGNATURE-----


--=-=W/UW+tcOmDvXJh=-=--



--===============1531373110936848654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1531373110936848654==--


