Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CB91A2041
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 13:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FXL77e/Sg3mfs5d9kYJizffMyOGJor+nrjiyoZt3qyA=; b=tc9Txp3DdnUie8c6gc5st52qE
	iqpFeE1wWyDF8Gx8jkiSIyCXN4ZanHydpL0NXyGdUYxYpMXp21Qeg47vaR8eDdFdboJ0y5vc10jhg
	KUBaTYfjl0+/wYmXz0oyq9MlbLeFjQxgURINUvpWwt9nO3zYQycmw+nCWYin9GjR0YZLYhfqE/cO8
	fjkVes4NH1YJBM/XHXp4ozSyrjw7YqnccBoG0pUcZcbjLx6BTQ/qnoja94YnAqlEbw9hX6zzYb9QZ
	ChArlMb0FaVF1n2MQxsXd+CrX23wv/6xjf7LcFtjlAumHxqIXWaqBpjKZu0rCqo/vMtNRWLMsYlvy
	RnNHxmT1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9F1-0006j9-Di; Wed, 08 Apr 2020 11:51:35 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Eu-0006iT-HY
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 11:51:30 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mv3M8-1j4TpU2mjg-00r2WS; Wed, 08 Apr 2020 13:51:24 +0200
From: <mail@adrianschmutzler.de>
To: "'Tobias Schramm'" <t.schramm@manjaro.org>,
 "'Chuanhong Guo'" <gch981213@gmail.com>
References: <20200408104716.3644779-1-t.schramm@manjaro.org>
In-Reply-To: <20200408104716.3644779-1-t.schramm@manjaro.org>
Date: Wed, 8 Apr 2020 13:51:23 +0200
Message-ID: <013a01d60d9c$078feb60$16afc220$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQHkf13riykCMy8CQEUiyF1LlGSzzahSOQ6A
X-Provags-ID: V03:K1:fNv0BNIdCWLfP/s4AjRPbx5rjlbeKFDt4gQ6h1LNT8ohewnDHs4
 tM//VT7muicFPE+Kh1yWsPCD0bB0mFLx6B0xoJhnQheDkL95FZuMhsE1nUvvH5t8ita16Uq
 GPLsPV8Ch5dDhTRA3IW8CkHPmOeZpUWc0yHF8W9J6FX0mH5PsvAzmOrWBdwSBiSCkrUZPKd
 oRCWf7DOtdKslLUnuE00A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H5oBG75xG2c=:ct7pfeMl2FWJj4rcnqfSqU
 dRER6v3lVmD+r2un/dUTJwYKAH2KMP0whMcnA1Epb9H733glK5EYCjYqGHPNm4pyOmW+Z7O8c
 CvluAkFTxHgRFGdAnKEa+26FRpI/ERvSPehVmkXQwWDd65dvqARcr86Avn+0G/3XDnUhvTcWs
 Z5miF0X1oCnlKYZfY0A7Dp4sKjpLCKVFYPXoRHpmbJ385QkK8l1wQ2Dyc067Xd7t9qFRgIqbZ
 hSxGGDYSVY1MAXY4PfgJe0ns8Lqpu/el21RUM/PvzZ8Wj4KLeQ4rJMKX510ojkhJ+uNm8tI6h
 aThVXfdZX9u59ZkDfSAud8hDPjR5KxQ9uJYOo0vUbhggSr/HmC3nakX0V2ZX3MUZeyljyCDX0
 dnzUPeEWKeZak4FzlMqHBlWLNVciK45E+2PPN06/2hzVEwPCCDmE/pDxgAbETNOkAuNgnhbjc
 RU560T97hf5VEMj0o6FEnWgiCpjypSaNZYtUJ9Pnd8xk2zkqsDX1E/E3an05CbhLjYwtAMpTx
 m2rs9iFuhxuOaguB2YtI7bdPPJxBClF9hn+tcKK2aQ+juhxjYEzxsspljiSh83skfELaDN5oV
 lFOg00TZ5XbqmKHIG+bMH2ENL4bulNlvob6kelq3r7UdRbRRxC2cJK5hktIwKRVMaNDOqn31A
 vYajgYITh9LaOGZaooNv5hW+I6x4u4xO4qF8jUwAS0KwR7bRyz8zelIP9lfKu2txsC7F2YQJo
 reHMb22EIGC2ex1fcALEeSrshUSxqPPZ4hLTkRWhouk3tG3FbkS25iW0DudTsrw29nrqxC5H9
 Hp7OtE/ESlZYCJc1uffEIiCj0BojU4e2jQ2aEc+QxEpXjKyiZ43D5p+jbspZIk/VGo/Mnxx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_045128_871709_30D0EBA8 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 0/3] Clean up and reenable Mikrotik
 rbm11g
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
Cc: 'Thibaut' <hacks@slashdirt.org>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============5478748016572214740=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5478748016572214740==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=7ybhAEGDxnwKQu=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=7ybhAEGDxnwKQu=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Tobias,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Tobias Schramm
> Sent: Mittwoch, 8. April 2020 12:47
> To: Chuanhong Guo <gch981213@gmail.com>
> Cc: Thibaut <hacks@slashdirt.org>; openwrt-devel@lists.openwrt.org; Tobias
> Schramm <t.schramm@manjaro.org>
> Subject: [OpenWrt-Devel] [PATCH 0/3] Clean up and reenable Mikrotik
> rbm11g
>=20
> This patchset reenables building of images for the Mikrotik rbm11g.
>=20
> The Mikrotik rbm11g was disabled in
> 838f1fbb50e9 ("ramips: mt7621: disable image for mikrotik_rbm11g") due to
> confusion on which switch port is the LAN port.
>=20
> I own a rbm11g and can confirm that switch port 0 is the LAN port.

I've applied patches 2 and 3.

Patch 1 doesn't seem right to me, I've answered in more detail directly the=
re.

Best

Adrian

>=20
> Additionally the first two patches remove some differences between the
> rbm33g and rbm11g.
>=20
> Feel free to apply partially if you don't agree with one or both of the f=
irst two
> patches.
>=20
> Tobias
>=20
>=20
> Tobias Schramm (3):
>   ramips: mt7621: add LAN port mac address to rbm11g dts
>   ramips: mt7621: add label mac address to rbm11g
>   ramips: mt7621: reenable rbm11g
>=20
>  target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts           | 3 ++-
>  target/linux/ramips/image/mt7621.mk                          | 1 -
>  target/linux/ramips/mt7621/base-files/etc/board.d/02_network | 1 +
>  3 files changed, 3 insertions(+), 2 deletions(-)
>=20
> --
> 2.26.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=7ybhAEGDxnwKQu=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6NurgACgkQoNyKO7qx
AnDWZxAAoohovgRcFRTuDC2yaxg1ykiyMPlk06LBu/81mpHr/tjl6cIh3M5ko9/v
4msmUigp6Xb6A+46GCPnRRlmvfblsSHJ7WXOXA0G/BkhMw7Uo4KBDEnnerMSzRvg
VDYFpcQbb209m7Nhh06m7uEvEjATIVxjaHtWbgO7ndxzh243J5ci6pW20t4j4fBr
kMJ3jePR1TWSJh9OF65/kt0lQ+GW/AS40qYIwDoSxaYGjnTeUxy8yqJHEf8rZrKa
JuL599LJ1NyYHGbUIbQtbSC2hiv98g2IpsNGyGWjx4oUbmkPriIAaqH5boVnmZT1
LRCAOg9+Ek+pSJlfSi9idlGWQmBjtey7WehpvF262JlWHJVYQfhZ3YDCnvxAHQQp
W3OSDIW6G/gHbexrn2TojMaCFuyrbojgOEJ/Ws+d0HQ0hZ3hEn+yuzOPxT1zkKyC
RcG0L7uJ3WS9vv6yfP7FU0gHAdHUcUlVyJ7YLt5HJylMDzushE5jVeVBXjhZcr16
WOoNjWTlqHnrKq1F6Nm8hKD+uKXkVKrBCpxKFwk2sbUjNg2CvEbvf6gYyJL+Is8n
cUIEoQKIyZm16iFBkXMCwv2uu1rtpi5lSl55+0kDIMcLYa9kHlvre/2MhMpZMN0N
/WkP+HywiuPutPzFYc8+zZoNJQ6W4GbUEsW4XRiKu4nyTMKaKnU=
=IbhO
-----END PGP SIGNATURE-----


--=-=7ybhAEGDxnwKQu=-=--



--===============5478748016572214740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5478748016572214740==--


