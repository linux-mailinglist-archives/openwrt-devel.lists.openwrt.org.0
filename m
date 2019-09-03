Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2570CA6531
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 11:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TGg8kasMQEm9y2zCSuL5fHOKIgsAKZD/82Q6pdMChPU=; b=Gi/4+3aDSH/Lspe7OjIYKyML+
	lNyaalqdOeLrAcnO4vhkEBLFg6Tr5udsRSvAlcfgyxlaW8uPtjiSlvSicbXOhRF88g9ngtj/ev0tB
	5QmOtVxnrg6AFCVcbYNjAWNdKqJn5tHit3z/epyylZS69Q7ttXQAIjF7P08J80zeQ4M98oqYsJE5z
	4IrKg8K7+YaTrtoqadSlgR97PpuccxXBWyyFG+l1fNi6FRfSB30K5fx509R8Wa5o/rCni3KjWBHx6
	fytC/CO/8OoKjnk7sC1NO+PGEvhvyosWM0DiQEh2tFZzsPxyvtZEBNhHIGea9IBlMLJ//sDQRjjH5
	UOd0zsN/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i558i-0002AD-LY; Tue, 03 Sep 2019 09:30:16 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i558P-00029r-W7
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 09:29:59 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MLR9p-1hnHAO0OzT-00IVEq; Tue, 03
 Sep 2019 11:29:55 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <20190902091021.1083-1-freifunk@adrianschmutzler.de>
 <8c47337b-6bf4-55f2-a82c-0ddde517a1ed@david-bauer.net>
In-Reply-To: <8c47337b-6bf4-55f2-a82c-0ddde517a1ed@david-bauer.net>
Date: Tue, 3 Sep 2019 11:29:54 +0200
Message-ID: <004301d5623a$2552db70$6ff89250$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGJtGq8YkHx0GkkPLPCwFdyBk9neAH2Tawsp6FQf4A=
X-Provags-ID: V03:K1:laJVo0gZo2pG2pD15rGQ+isTEHRX5HdUMcgShtmq7XPsau4EoeM
 FCZTD6c5qDH5voYepppaNJFhuV3V0smeiAh2DxNioNwG/XfDgr1XPUnOajahKjSMvxuu8Zv
 lPHwIBqO10o+ccEqxt4V5NLVSQyN3za0+t8MVGZkZjAEmIltdDAcgR3DfspBFvmcONt+FQS
 dVsUQGWQboSu1soW17Bdw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pa6JT7YLd0k=:ONemkJPnpPn2fTSjjFkgVT
 9+KPA/w6Pw0hdp1qX08kupZCFHmRDOl2dYtyKle6UmPm8NGpGVxLr4fIYtT/IaZgkZn5WjBpj
 lDrI02KGovSwjXN/pkzjeiCFHJWQuuHolzu05ZbZ1aqiU7Xyn80EjC7Oq6P1zJ4ZWTIbA00ZJ
 GNXfPL5u1YsJ3cvX0Ygpq/8+sBn/IQrvth+Gsybmh0A4mBdfRwXP+hU+utsFRNe7Ij/M7wS86
 galgu6H/bl3JsRS+KjxPXHor4Eet7lachqTNZEyInsfBk07qiHMxm/j9XOyNFwpHuZP3ZQ3Dp
 I0cd8LLSMrsb0Hz8LYD3fDRhVyGQM4uSwC1jWrQMUyJRnaK9lJ21PyJ/Z/s5RNUEWWfM2xIDg
 rgliNpqyQjQjmMA1X8NGLGQTWwaPMsB91D1uSp5L98BW4Twonhap4EY9IfeKD0rfH7lAwK/sq
 u9HveXqBpdSThJjnqQkkmGHAXxJJxbvG68OkGHFQ9174hXkj+zxiAV12rpF5HYl7AYq2joRk2
 3WISJQfisMr0u0GdrADSo02PyoiFdCe564z+LP0jH7YVjmW8XIjNbOGOmBUAysA9W9MePvIHQ
 fUQMjsD4NYUnzcgQfVqmzmd+oliZJ21xWQIk24A5xr5Vg+eZtu7N+9KyphJRSJWQ+CUhCwNpR
 VfeeHQh9lBPGBdAPd054jyojstubLW8rqOE4ATy/QZFzt1+Q/xFGbfMnQzoylKKzc1yUl5Gcb
 4NpqCezAVgNvYljZ1jNPQmW0P60+Wc4xNi6MsTTC6H1Pw7N91zt9febyLWJ6MS8eRS+PMmV88
 6zRYRt/auTEeAkUDn5BxL8QV62ec2VOhOjCR+9M3h0MvvNxwao=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_022958_328099_3F3B7DFE 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add LED migration for several
 Archer Cxx devices
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
Content-Type: multipart/mixed; boundary="===============4581608607433030722=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4581608607433030722==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=aQuA429SJy2e9J=-="

This is a multipart message in MIME format.

--=-=aQuA429SJy2e9J=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

concerning LED migration:

I have _not_ run-tested this patch, as it's closely similar to what has bee=
n done for c7-v5, which has been tested.

I own C25 and both C60, though, so if you insist I can test (but not so soo=
n).

Concerning eth0/eth1 swap:

After https://github.com/openwrt/openwrt/pull/2066 , several devices were a=
ligned to the ar71xx order, but also several that were "correct" before are=
 wrong now.
This affects the TP-Link C58, C59, C60, Glint AR150, not sure about C25, an=
d most probably several others I have not encountered.

There was a brief discussion about migration somewhere, but I do not recall=
 how or whether it was resolved. I had a quick look into the code, and didn=
't find anything for eth migration (but might have overlooked it).

Technically, a migration script only would have to exchange eth0 and eth1 (=
with an intermediate step), so it shouldn't be too complicated, unless I ov=
erlooked something. One could do the same for board.json, although solving =
it like this leaves a little of a sour taste.

Maybe one should restart this discussion on the list ...

However, please note that I'm only dealing with this topic by accident, as =
I've found out about the missing LED migration (and with ramips LEDs, as I'=
ve destroyed them in the first place ;-) ). I'm mostly using OpenWrt to dev=
elop Freifunk firmware based on it, where we completely circumvent OpenWrt =
migration mechanism. So I'm definitely not an expert with this.

Best

Adrian



> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of David Bauer
> Sent: Dienstag, 3. September 2019 01:09
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add LED migration for several=
 Archer Cxx devices
>=20
> Hello Adrian
>=20
> On 9/2/19 11:10 AM, Adrian Schmutzler wrote:
> > Several Archer Cxx devices were using board-specific LED names in
> > ar71xx, which were changed to "tp-link:*" in ath79.
> >
> > This patch adds migration for them.
>=20
> Have you run-tested this patch? For me i ran into the issue of the device
> not being reachable via Ethernet, as the Ethernet MACs were swapped.
>=20
> Has anyone yet tried to find an migration approach for this? I assume this
> could be tricky, as we might need to update the board.json also in this r=
un.
>=20
> Regarding the actual patch: I assume the LEDs were migrated (as the WAN E=
thernet
> got illuminated), but i want to hear your opinion on how we should procee=
d with
> the Ethernet migration. :)
>=20
> Best wishes
> David
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=aQuA429SJy2e9J=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1uMo4ACgkQoNyKO7qx
AnBglw//Uzo2V8zWltGRv8poQyuJlZ6KvlSIQtOfafXzKzJAxPo1dAN2Q6kamzr2
HVgUnPxzvn4clntoX8UnrmR3TKoyG2Wv5aU0H7jQvghHyKhM3Yx2dixe7o/HePeK
O1zANrL4wHjA4e6lhyYS8UE52uMJM6Xl318uKtPxEzojH68pQxLdCBvV6G+nihSX
XUch0kTn94EYZtw2s3KhH8bziixzvE6E8vEX+XZoB/dq5ZfnNp3YLQV8BCyLKfiE
YDb9trfla0GMumdhLCcduFf/HDhV1wYxOgp7it2h8ZhjpVhjgGLyr7d3f2wKS0xR
9M2+bHtw8BxvwmbGJ/6R2gpzpTMyGDZgrY1BU8quUlN5/VUOUy3nocohCzevpYyf
DNmtWWU+Fyfri+3L2s8hpMkfeZl8Bi0s0XNiZd7FtenfFEyQ7XLiA6O2EAOQ6dck
ZUMcfAi+Y59D1MNMZONQj6llKWd1P/oqO45/rPGphiuZHTR0rBcuGlkXz4BGMTMQ
FDZk046rS4tNNZvvMHbKqMrgGcKaskuoOlPbPABb6bdAjBueWYVK85qs2U/V9ZVY
T5Op29J9azpmrAxBzd6zQ37EUXQ2BB/8a8wPhYHq5pbwBHLDVKYHllJPFWpUxMEr
vE7fuAylEGApRJ7/5NNW6lNk0OLma/frdB/pZaODMVPPq9F1/BE=
=cGZb
-----END PGP SIGNATURE-----


--=-=aQuA429SJy2e9J=-=--



--===============4581608607433030722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4581608607433030722==--


