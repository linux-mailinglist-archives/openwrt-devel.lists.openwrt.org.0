Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB17D143EF6
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 15:11:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S2kLooVZt1Qcsl5QgKFc6B/w/FtpQnKSDAszAZyP/Ec=; b=hudFf4Ajx7wZknbIe2z6lwmIP
	GBTBPYNB7vRUg44StBMFvPEFzLuTb7/9vTRvyvkzi3ZwAD9hT1IdgBSNaZksblmFivqHy0blIbz+W
	S8/1rq/MajBW0cQKl7V1UHGqh8118RzlFJLpu22BPGhJXK5FvYlGJquBVP6EUHkw/WvUeLvs4Di7h
	Z40J6zP12mswsHLsSBNJAJmnibp9H8iZzG9bIgqUtR51w2LP9m+lv07RpmHAbikv6B51e4g1lUf6p
	WZHKHpLPShyO2eUBS35F9KfHy6rCdRUeqwUOnex1G/e9Rn2rOFlV+e2ZZ0JCl3DuWLYZUqkeo46NV
	PYW3Rg6Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituF9-0003lB-D5; Tue, 21 Jan 2020 14:10:59 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituEu-0003kN-Te
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 14:10:50 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MWzXd-1j99yI3IDZ-00XOUr; Tue, 21
 Jan 2020 15:10:39 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
 "'David Bauer'" <mail@david-bauer.net>, <gch981213@gmail.com>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
In-Reply-To: <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
Date: Tue, 21 Jan 2020 15:10:39 +0100
Message-ID: <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGe0uH3YMoujDnAXodp5C7FQpVSGgH5MCOhAdXATn4CkcEaiqgwFSwQ
X-Provags-ID: V03:K1:zHVEMMOcVBN7IjEKlJGmSC+4m9tyHHZndkhsVfnGtIH6L/38Jw8
 7QUz6VUbjtBWciXtLuMLO0xBhSjJ2vU4q8+2e9R8000ILJSHBW3SKjtydeoAHLA/6H3JCnN
 NDcvedetX1It2yiy5NwiuNE0YmZuWI9TC7RpFvP8KQzM4GBNwuspSULM/QcS6NAVK6uudvm
 rPNEiQguM+YTEMDaJKIeg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zlnB6pMJSqw=:ezexfKrEugfIbJRP9MMM+a
 a8YpFUMTR2AhJnbwtcHBSp/bYP4p8RG1Ai39iC0ylAIvs1BFk6lwjTz1UqYTChiu2gMKrII04
 QjZdHm6mmMXF1LnFMQAqolQuqnECShKspxHgEDWVCaSoulCuCGDTH/nltJIeyXBewYv0Zifpk
 DKqSwuA9HQ6mZnlftMI16A73ci4qCSXuhvgbajzz43rzNROq8pNiRVIbFxXjPv/DztvHSIGTD
 TCmuQUXiTwFo6CHkjasv9TTUxK/e4glZSaXOIItLUeO80XiWioUheY5SiJMkGT299xEwWUloL
 uMIzBddwrKkYFu/RRjHEdctxEEb57QQPrVaGs2zMkSjr9gK1egClEzQ0ZspZOJ+YKZ4fWonlQ
 LPLBhstEOevyFeFYwx7iA52beTM33FXjHqfSTFRLe+n6DnChQEpeSYycTaAtL6dhrCAob2pVN
 EDdHJA0vJlVcloa1FpQIdNbQa+CzCKesU3VAXaR4vEM+4d9wrPwwUU8vPcoLlgiPyLhhP1L/R
 unlh78smdvvZL94D10r34wElPgS7ytBWKbG7+xj178y2bvJ66M/MCHi7WOIvfBS6FRJYo6xtd
 n/USivvwM6pwU1k+lmBqBWfET5eE3Nhgj+MEjh6BqOHEq99VqB/oFmjfZFHjIf3L9j5RruEDn
 0hEzXPPzz+5ZbqOvzeBtje5we3f7urqPmt1YEd4PW3kPKrl7bwsvZWkq6cYHkD1UPThRb0ESD
 PJoCiSPO0bMDj/nEgl39PW0E3+jTL4XPkWa/5jGsed4a3QRhpKksC2aDu8EdG9qMhzS+O6U2U
 ZFZT33luHqP/YLI44qO5Q50Vk+eKC7XGkKxjTrmjQb843xiveW7CC+8rWTDt0huVxOvrKlRgQ
 IRUgMPoOrPuLOOh0pMQ72vJu4/K9k/6x564mPgEuA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_061045_263693_7BA3B8D0 
X-CRM114-Status: GOOD (  36.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============2818897083197298676=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2818897083197298676==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ThVOa+lnq2Hth+=-="

This is a multipart message in MIME format.

--=-=ThVOa+lnq2Hth+=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Piotr Dymacz
> Sent: Dienstag, 21. Januar 2020 00:34
> To: mail@adrianschmutzler.de; 'David Bauer' <mail@david-bauer.net>;
> gch981213@gmail.com
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
>=20
> Hi Adrian, David, Chuanhong,
>=20
> On 07.09.2019 12:15, mail@adrianschmutzler.de wrote:
> > Hi,
> >
> >> > However, this will obviously swap eth0/eth1 on EVERY upgrade, not ju=
st
> >> when coming from ar71xx.
> >> > So, does anyone have an idea how to limit this to run only when upda=
ted
> >> from ar71xx?
> >>
> >> I was thinking about the same. As we have no information about the
> >> previously installed platform, i was thinking about abusing the wmac p=
ath we
> >> already use to migrate the WiFi configuration.
> >> However, i think this is not the most elegant way to solve this issue.
> >
> > I have to think about that. I recently thought one could just check whe=
ther the
> lan/wan assignment matches the one expected for ar71xx, but that would
> obviously also catch cases were the user modified it to be like this.
> >
> >>
> >> > Despite, while having the abstraction of "rename_all_eth", I wonder
> >> whether it would be possible and desirable to do all renames in one st=
ep:
> >> > sed -i -e 's/eth0/ethX/' -e 's/eth1/eth0/' -e 's/ethX/eth1/' $file or
> >> > even sed -i -e 's/eth0/eth1/' -e  's/eth0/eth1/' $file depending on
> >> > how sed handles this internally. These options would mean less flash=
 writes
> >> (although this might not be too important here).
> >>
> >> A rewrite with sed is not sufficient, as we will possible rewrite uci =
section
> >> names, possibly referenced elsewhere. We have to loop thru all interfa=
ce
> >> values and lists, rewriting each occurrence.
> >
> > Actually, I could well live with that. What kind of references are you =
referring
> to?
> > If just someone really named a section with ethX, it will be renamed
> consistently throught all uci files (unless they are stored in another lo=
cation).
> > Only in case someone uses a section name with ethX and refers to it e.g=
. in a
> custom script, this will be a problem.
> > And this is where I think we do not have to account for every tiny poss=
ibility. If
> someone upgrades to another architecture, I think it's fair to expect him=
 to check
> whether his custom scripts still work. We do not have to overdo it.
> > But that's just my point of view at the moment.
>=20
> I'm in the middle of migrating some devices from soon-to-be-obsolete
> ar71xx to ath79 target and was wondering about status of the eth0/eth1
> vs. LAN/WAN assignment issue.

To start with the end: I've decided to stop working on this.

The two major problems are obvious:
1. How to make sure we find every possible location of eth0/eth1 in user co=
de

This is a problem which can be solved, and if it does not cover every singl=
e special case I could live with it.

2. How to find out whether we are updating from ar71xx or not.

This is a hard one: We cannot rely on the ethernet setup itself, as the use=
r might have changed it for whatever reason. We could rely on some other pa=
rameters as suggested (wmac path etc.), but that would not be generally app=
licable and still would impose some boundary conditions (e.g. start before =
the wmac migration, as then config would be "old" and paths on the device w=
ould already be "new", making identification of the update possible).

An alternative way would be to exploit /etc/board.json for that, given that=
 it is not updated during sysupgrade (I'm not sure what's happening here). =
If it is not updated, it would give us access to the configuration when the=
 user installed the device, and without the changes the user would have mad=
e to /etc/config/network. One could then parse and compare /etc/board.json =
to some (device-specific) reference (e.g. wan=3Deth0) and base the decision=
 to apply migration on that. Afterwards, a new /etc/board.json is generated=
, so the condition is not met anymore. Despite for the device-specific cond=
ition, this would also be a generally applicable concept.

All in all, this second problem (when to migrate) is the bigger problem. We=
 also have a similar case in https://github.com/openwrt/openwrt/pull/2649=20

So far for the technical aspects. From the organizational point of view, fo=
r a long time I thought I'm the only one caring about this topic. Since the=
re was not much interest in bringing this to 19.07 before the release, I do=
 not see much use of adding it afterwards now.

In any case, the migration script will be a complicated task and will certa=
inly introduce cornercases as well. All in all, I do not think it's worth i=
t, and we should keep to advise people to flash with "-n" that single time =
when upgrading from ar71xx to ath79. For the pros that will change their Et=
hernet setup by hand later without using "-n", I'd still provide the "easy"=
 migrations like e.g. LED names.

>=20
> I'm aware of the 8dde11d521 ("ath79: dts: drop "simple-mfd" for gmacs in
> SoC dtsi") [0] and following changes but that "fixed" the problem only
> for devices which were following already reversed (I wouldn't call it
> wrong or incorrect, I also prefer to have LAN on eth0 interface) SOC's
> GMACx <> ethx assignment/register under ar71xx target - e.g. LAN on eth0
> which is in fact SOC's GMAC1 and WAN on eth1 which is SOC's GMAC0. Good
> explanation of that inverted assignment can be found in Jeff's patch
> here: [1].

Well, effectively a lot of devices match ar71xx order again, but also sever=
al do not match anymore after that.

For the underlying logic, I think Chuanhong will be the best person to disc=
uss with.

I've tried to start a list of devices where eth0/eth1 are swapped compared =
to ar71xx _now_ here:
https://openwrt.org/docs/guide-user/installation/ar71xx.to.ath79#devices_wi=
th_known_config_changes_without_migration_available

>=20
> I have a feeling that the idea with migration script got abandoned
> (Adrian?), so I was wondering if there is any other way we could
> preserve ar71xx LAN/WAN <> ethX assignment in ath79?

See above, yes, I effectively abandoned that.

>=20
> For example, I have a QCA9531 based device with PHY4 (connected directly
> to GMAC0) labeled as LAN (and registered as eth0 in kernel) and PHY3
> (connected to GMAC1 over internal switch) labeled as WAN. On ath79, due
> to change introduced in 8dde11d521, LAN and WAN order gets swapped (as
> expected) but partially reverting above change (adding back "simple-mfd"
> to eth1 in device's DTS, see below) brings back the "old" order of
> interfaces.
>=20
> &eth1 {
> 	compatible =3D "qca,ar9330-eth", "syscon", "simple-mfd";
> 	mtd-mac-address =3D <&art 0x6>;
> };
>=20
> But it doesn't seem as a proper fix to me (maybe I'm wrong?) thus the
> question about any other, better approach?

That's how I feel. For me, this always looked like a hack to me (based on m=
y shallow level of understanding, though).
There might be special cases where this is necessary (e.g. force a device t=
o be eth0 due to failsafe), but I still do not like it.

With the first device where I observed the swapped eth0/eth1, the GLinet AR=
150, Chuanhong explained me that the setup in ath79 would be more correct t=
han the one in ar71xx.
After all, if we advise to flash with -n anyway, I would prefer to have the=
 "more correct" setup in ath79 compared to having to stick to the setup fro=
m ar71xx where that applies.

So, no matter what we do, there is no easy way forward.

Best

Adrian

>=20
> [0] https://github.com/openwrt/openwrt/commit/8dde11d521
> [1]
> https://www.mail-archive.com/openwrt-
> devel@lists.openwrt.org/msg48526.html
>=20
> --
> Cheers,
> Piotr
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=ThVOa+lnq2Hth+=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4nBlwACgkQoNyKO7qx
AnA+iA/+JVN4XoRvGG/TeSWIgbyAe36XpkF0CzXJv7qkLYarULqdKx/OYylKD2Bi
73kPZEk3sTeDxRJ02zW5IBXeRSVJIszr40OyPJeTCeQ9hljcv75rVlBTscRc5Rf6
12p4Ex+ZSHZBois4Jh/Hk2Q0dvBb4WK1oByGSjcaCTqERmTrzPBvSeq5JVcCC1JU
jJHlLvmt529JCZvIzPY9QIj9cdU9iE8di2TuQ8rMDc8CQpbTdGX9bvONbERv5Mcc
V9C/ZVMQI5nCLoPPTrILo9qP5uYJFlDMJF7NnwzgdoxJiHUfRCC+mzSXyZk+ehUj
L+/EX72evJt3ivJ2Y3phF8kvRjmd2cqMD1LP8x0pG9hyMcvKZoo8fcYBTPX5bKID
Tcp1apshfKlsCH4YXv4j2RjBKYsFv4EvzhxaWt2QRCiablzpTu4c/VNFjBe6pVP0
tSea8TUaEL3qGqbGIoJaIePdSLUB+7IV5tjAuSLGB0ES9mj1KgfeEGLA0/GdVVR+
5OYtLmveVnQcSYyqqwNJ9lgcAETrjZ3vHLgrclizAzBuQwVWCBmtT4v+jrgWxRgO
hnkD3JlGvf9Gd5xMJYM9w3rpLYbZcxD+4y1wyPy3V5xQzqbeJMAqfnksyG8p2oRA
rbWIeGhz1I67uPA0w7FRcXYmQnDf98RSmD3p7Wka2q2WNVuj8uU=
=b9/2
-----END PGP SIGNATURE-----


--=-=ThVOa+lnq2Hth+=-=--



--===============2818897083197298676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2818897083197298676==--


