Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E766FBC151
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 07:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Jsuuewo14Opvr3De8Ygd3kgoc/PtZCmrUN/gquhweqk=; b=Dn/
	QAXQhd3R6PSnNnlBpSq5eFBnJvpgfQEoRoLUQQUXEgDjwj9VSRKQLerGHBPRL8h8TLNS6opaUjgE3
	cyGXA9W9EZ/tTcWRL75kSpSGzpnmKtgw1vzoGC1TAT5Itv+BvkCAHxId0lYFqs67PxxS3H9VaCTIx
	V8TPBFkymgRK9982nHIIZp7Ne11SFw60zcF+LWsKDmf7Xqs4Lre5DZi1YFCZ1NAmIP0nSZlUO0BIF
	8MIvdk1P+Y02oOyL9uTJ9UfTap18SxSTrtpbReiN6ML9B86Gu6hwPiEXK/CmW3P5AqYVSkkRj6m91
	bgdiBOpeKTSghXmmp4JB+R3y/Bvf/nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCdGS-0002RE-5s; Tue, 24 Sep 2019 05:21:28 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCdGL-0002Qc-Ow
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 05:21:23 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MDhpf-1iMlTt0SqV-00Aloj; Tue, 24 Sep 2019 07:21:18 +0200
From: <mail@adrianschmutzler.de>
To: "'Karl Palsson'" <karlp@tweak.net.au>
Date: Tue, 24 Sep 2019 07:21:17 +0200
Message-ID: <002101d57297$e4c98d60$ae5ca820$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdVyl0kwFPSu4l86TwG9NjRGfHMl6gAADIbg
Content-Language: de
X-Provags-ID: V03:K1:aCpW78blU6ZwJtdgeabN0g+vDZDUj2Lqm7U6u2TLtoda2nv930D
 dWM4avKp0qVXEDXKvLMeJqpBUB/yNhipJoSBJGrz9iqq+2GghrOHBOyR0UTkeOhsA/UG4IH
 I2UbHcc+Y37iC0jdIsC0ly3THNRaf7StwCRnuPgLuOSPpNVr88OGe/E7lCdnqyQMUkG5IhJ
 gVsVVx9O6QQoAGen/gbag==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YlupeZK4wNU=:t+qBKtOn6Xkhh+UXdQAgU+
 itBrPjm2hCAWrqkgju/Yo5G/CwU/29XF+czIz3GABlHeRJKwxC1/Mj5jupbiylKG7wk/bdkTf
 LSkc3oqUDJR3fNWQa2iMlaZrnIxVQlnWAI68orsGn7NSXUxAHWg2+xEbeC7ubNEkRzffMLPmt
 IY1ufgB3aT9oa2AFgbEOsxP/w0+H6dBUer6MgJew1V+49Rh1jyJeV+RZHKYzX2w6qvOMF2/P3
 gl6uP+yo02U+3093DT53PrgHTzjEfHxhtqxEiOC0wLxzdwgHbaZDpe6xSdmBGqd263pFz6Dis
 bl+jcZlrGjaEJERn5p1DFQd4Eu+evxDz0QgZgX4T5SCR3TLu4DDvSulMyShNX/BTdQUtpx+oA
 72q9EqAC69lU7hlHpyXGjOln3rCQ5+SdHHdsQM1L40NS6qBS70Us5K2L/9WsZ9qxWCROd63Pq
 zgJJegaX8A/9y91C+xfxKBg2Lh2BXA0KkMvYx8P9PDu4emAINPq5bH8dI6Hoq4pI/eFLaeBtr
 x89P5xOekJnpR4+QnSzhIWEyAodSWXTobawv5EeFojMOe7GOuQNMU7uOTgZ+DFMVZ6DR8zV1u
 Cx2Tq10DtA3mMaHEhroPupAP4GHQ7vhQUZJOJ1z9kj7K9CzK+YJfaYTlohO/hpRm4tf3bePSr
 Wj0/OJNFiY4/aLNmG8Un5a/JXuJKATI8vekDTWMxiAZE91P1QNbsbVM8jjV9FycnGS8411jqz
 gZKMaemmgaYCOPmyuZMYksmIhIZNMln56dW4OE+/0fm3bPdZvlC27lF3b54z0kRkBq+FHtFAN
 DLcqYmamtSjbNE8JQ771NXsMt0vGz1apgw0iDQ5G9qTNTyc/YhQa5LFfep6qMLGIABXhnOX+o
 gIv16ylc/gbvPS/ZpxVlrVE76OM2AKX5zXfcUeI1Y=
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_222122_115502_A688B4AC 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 5/7] ath79: set checksum when
 patching MAC address on ath10k
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8243008026222824734=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8243008026222824734==
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

> From: Karl Palsson [mailto:karlp@tweak.net.au]=20
> Sent: Montag, 23. September 2019 16:50
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH v2 5/7] ath79: set checksum when patc=
hing MAC address on ath10k
>
>
> Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:=20
> > Several devices use ath10kcal_patch_mac, although all ath10k=20
> > eeproms have a checksum field and should use=20
> > ath10kcal_patch_mac_crc. This might be because the field is not=20
> > evaluated by the firmware at the moment.=20
> Are you sure it's not because some of them have broken CRC? Have=20
> you tested it on any of the devices in question?=20
> Sincerely,=20
> Karl Palsson=20

It does work on my TP-Link Archer C7 v5.

Best

Adrian Schmutzler

--=-=JctPUyEAmQrEw3=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2Jp8gACgkQoNyKO7qx
AnCTChAAq3/PJgOX0DUr9c5YA/npyFQ8V2giq4nnM4TqDjPHlu5v0mz335lsYdE9
AXTNJm5dAOyCrPrJuUwXa6fwp1cGa1IwWERcR/Y9ADzuEY8tmxDHAOtStN1Z0Ssz
xuPE7PwZ2p13svprlJQzdOaiGdqcE4QJMWRLwwRCYCd7F2+f2VkstdBt1Uy98edc
Fvpj0JND5OLasAkN08JYdbGEmLAHKcxIiHOjRfq2AhrMzMYDVZNIQpS4t1szD53f
xO+Cl3ei8nAhJVGGBU8S0MFoFCX42RohIWg67/IPnABe5jnzWCULPACv5lVu8T+Q
PEv7M37aelzaVvu+8/ctihe8L5iuNkCWXI4+XsKTPaA03Eca4dug8OdnItCOY0b9
Xwup5uwVfQsfqO+vwQL0cHnHrWoQS6IdnklEAvZN0Df2D7Mm8SA4lzKk8K/8ZhuJ
/OVHzHd1mbGqJhh9vJxVuiCJDenP1uJ+c1gjzcubQFBZ7s6dWvmZFniwwhFkXSkj
n6/c+M9/6JWyNynDDQDo1QGz9bNaWYBg5pl50L/xjcPKFCs5ZLMw/O6JCcBUe6ok
XvnyHeYKkE1oUG5f3ePzYGzv8VNxKSn1WkU1RdBLtkjB+1yNZSBrzYM0K0BUPZGk
q+hDDaLvoGzTkAZOcvyEBfPgyJnoAVoHOWWJJvZlMXNaDkv6ohM=
=GKp3
-----END PGP SIGNATURE-----


--=-=JctPUyEAmQrEw3=-=--



--===============8243008026222824734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8243008026222824734==--


