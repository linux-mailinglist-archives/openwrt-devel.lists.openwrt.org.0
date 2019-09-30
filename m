Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A77EC277A
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Sep 2019 22:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0YhwLCUka3waPVF4KWK5TKnGSCNZdYYeItvYvCZDdrc=; b=DujSz8RBmnRw6Q/NwS3kzdiit
	0mUdKrgJH3mw3Xcm5Zds3MnRLBbGcGAC3ilhrfMSQg+YfWCHhYAHlJ0bNK3/L1uLvE3IRSovuJx22
	flFZ/iLwzbJsxajOO1D2Z7JDIXDejChfo2uDgccSW0aYA5m342GCDsP2MueFZgVflYnoqBB+10WOu
	g4VjBPstSRXrz2OXcODjbnLUKpKMo2rEWCNBhljecJuaki+MyuQLZOc22nwooLEptTylQtyP2SvY8
	6g//W2bnKOg0t+pcW0hV8T3Xmut+3RbFhdXspuDki1NvXuS+wRYKGUVj1wsr1afgaKpKsJMtmLLGd
	yEXhjKqeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF2ki-00086r-3S; Mon, 30 Sep 2019 20:58:40 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF2kY-00086Y-A5
 for openwrt-devel@lists.openwrt.org; Mon, 30 Sep 2019 20:58:32 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N79q6-1i5BOO38zk-017TDc; Mon, 30 Sep 2019 22:58:24 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
References: <20190930195425.28617-1-ynezz@true.cz>
In-Reply-To: <20190930195425.28617-1-ynezz@true.cz>
Date: Mon, 30 Sep 2019 22:58:22 +0200
Message-ID: <002f01d577d1$ccf77fa0$66e67ee0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJ9fJfkzozzshFSdva/zMqLIcYurKX0qOig
Content-Language: de
X-Provags-ID: V03:K1:pdYpUqut4kzbsIrk8drI7/eGIZhCUtxRomH21MqwGooWjVxFNIY
 8QAsQVUQbo2V9VCKZAuG6XeYaWGyc0pF+OqjYQTAtwuFa6YZ5t5p9LXyN1Mycqt1ybD7jzu
 j8HLM0owxcSts5SuD1vkUsWjkswMgSTftosU8/sIKWK+V1RFoAa5dsQCu8l2I9WNrX+dxPN
 qYbG6/lE50B3V4uZd9qIA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:84fyVgozhXE=:PB041QFXEyiLyO4O5u0C5t
 M7+f+ZllDWIrPs9HqaOAnRpriAzIQ2FOiiu9pLPZEZ6CQ7Oscp/X/mRQAh0L/CVEt0D/9twRO
 +Fntj1Qko+VP0vu5U6+8k3QrbulzdFtnkpDJrmWGuWvOGNhm0/mxOnluGuhd64FnNpxIRznT2
 56JgYWwNW+2WlDLNcQE6GTTjdleMjAcH7wOjKbeBBKlyLHe/4rS7fwP2PYE4dtuVjnN3kqUSB
 fyycPttZnyoypNzTd9qTq48bySOzs2BMksPGKEHwAqJjNu8bokcLAohlAe6gCacAfgJ9yFZSx
 w8RcPT90z4LtCCZLxS+0zFVscN0gEPbBAyYiFNCng7859CpNiwd+X/LAUgKQAUX+u8Ih+zNaW
 1Z9sbp7wOcLXZYczxSQocRkYXJ8QQPAvii7p2CHk/4Fhgb0ccz5q9ZcF7WZw3cYlkck6PE8Oi
 07ab/0BtsTBlwI09p9hfmbtjZ0zVeVCL8cu79YehlRFLNASlx8ryhuMVqUNGPqQigaA/Wt9gG
 UqEvw0KEBAnYJ/XgEYI4X3dG8MArkvZ11i2/PDNpn81KxSaTaQ1/B+meAj3495uveUjTxzLRi
 M9OB/ab2PQEN3aQqP8bOcCdkYLnKDygwoTK4f8mFhkN/b0UjGRoAkFiQo1jioq+AYVfGzh5du
 cwfNlAuGgbeeuQz9lg7qJJL+eDd7DqNFjQReX2Gq8X6WxdHyX09df+iySJ13OEbOVs9zw7BoX
 EkbhtQygsUkoPS0f6ocd2aiSSU2v8bamEN6r1uY3ZeeKqSw9lo15QMlFg7XOdyduezkFKJjY8
 APbvIYWNLB8FSStA2YarZe6hQms1DNB0QAaS9IpnznHKvrqWi1RtNYKryhcldGdV4NwzitdNm
 lUtuxHJg7WYhXMAxfWXnlxEj6nw4gVW2HouZXuEzA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_135831_106116_CB6BBC49 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ar71xx: fix sysupgrade to ath79
 for wndr3700v2 and wndr3800
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
Content-Type: multipart/mixed; boundary="===============8288052709426266606=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8288052709426266606==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=M0VUfUkZ+1Pyi0=-="

This is a multipart message in MIME format.

--=-=M0VUfUkZ+1Pyi0=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Petr,


> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Petr =C5=A0tetiar
> Sent: Montag, 30. September 2019 21:54
> To: openwrt-devel@lists.openwrt.org
> Cc: Petr =C5=A0tetiar <ynezz@true.cz>
> Subject: [OpenWrt-Devel] [PATCH 19.07] ar71xx: fix sysupgrade to ath79 for
> wndr3700v2 and wndr3800
>=20
> ar71xx has just one board name wndr3700 for wndr 3700, 3700v2 and 3800
> which is causing issues with sysupgrades to ath79 as there are separate
> images for every board, so fix it by using proper board name on ar71xx as
> well.
>=20

no offense, but do you really want to start this?

ar71xx has so many similar cases like this, which nobody ever cared about, =
maybe it would be easier to just deal with this in ath79 by setting SUPPORT=
ED_DEVICES?

On the other hand, if you really think it's worth it, I could provide sever=
al patches for similar cases with TP-Link devices (TL-WR841, WDR3600/4300..=
.).

Best

Adrian

--=-=M0VUfUkZ+1Pyi0=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2SbG4ACgkQoNyKO7qx
AnCUFQ/8DGDkzbDPC8HPNbFPuNq0Ucs0PG9PygU/UvWkCnlzY32VJDNWhtFa0xDk
EvB2QGb9tDZrdHjyx/8+qrjbTqAhOIjLRJjKFP07NLmYVCVhy1p3hjZwWPETbp5g
Z/iFmIEKVUQc4ehmtvjeXTaLLu0jHkZuWlDHhRFWR+0RyyZF0LSAvf9dE5Ch0M/H
fWZGN+jEn2P5eF9z1ZwQ7/0BQw0mXC9AwLsePJK6ka39s75d0JpoxZ9OB8bCBse/
AlFEbS+FfxOp19MIkxz9M83i502kMsgRQELVD1mdM3HkFnJyrZHedke/BT13sGko
yEb1XOL1ppWAZ3OcFXwa3VCx7Y/THr1xbMVkbX8jC0l08KWgZZCkPhewxOxKRSS4
n4n0QhOxMpgAF1E9aEeIMpRSvx5I0RhSxec8clbdxCo0DsHIm0w/ZI5KwFmVDXr7
WScr8arV1/Su5oD2EBmVxQWPwE9DiEnXQE77um6b1FK/LQHGix7qWnh4vdoRZSuL
R3HxOWkXjx5nSUVxyP4DkwRUrw3TXiwOeKIylxNF+TlEauArGgTnAMDdDmZmV6+1
jKi0KDgcmZLRtGH9j9frE/FwRD0qA8z4SQNXjVlsW7jQlF3cQMq8YtQvpMyxdfm4
Wh/k4DF8ArvZnJrnpYRgFy7OjRBG6j/A6sh0TfYwnTK44mwZDwQ=
=s6V8
-----END PGP SIGNATURE-----


--=-=M0VUfUkZ+1Pyi0=-=--



--===============8288052709426266606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8288052709426266606==--


