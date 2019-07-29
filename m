Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028DB78E41
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 16:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I7viXKd5xM3cp1e8GHuAbXD70r+3uZz2XhV6tUCDW+8=; b=kqnbT5txSGQUPjM/tv9JRed4x
	rDnM0d3cZkfSSZvbNDzfN/VtlFdmgU0M/KR8LSHKUFiH7RymG7HAq+Y/WZbO0TmU8MsSEDYE6DGkk
	ib8MIFkWpCNj6O36PW5NeQTayAdT0gR+fofBVDtGUv9V+S9lLXPFyKwrzkBtZ5GSsLHSozldLFVko
	5GSuqBquV14zdHMFgQJ1bOuXb0VYKRug5sM7HJMd5ASmJJ5TTGGODWMlFWbNItOHNAvDBS3LZYTl/
	SzzSAP/TpLIaMRaH+F4Su0p4w1moKfSZPsh6rpsjPdveAuo6KBZMdOA+WmW4S1G1y57h6kqsaaL98
	wxBYylqsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6r6-0003OJ-RA; Mon, 29 Jul 2019 14:42:28 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6qo-0003Nt-VM
 for openwrt-devel@lists.openwrt.org; Mon, 29 Jul 2019 14:42:12 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mrggc-1iDByY08ZQ-00nkvd; Mon, 29
 Jul 2019 16:42:02 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Robinson Wu'" <wurobinson@qq.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1564114882-63441-1-git-send-email-wurobinson@qq.com>
In-Reply-To: <1564114882-63441-1-git-send-email-wurobinson@qq.com>
Date: Mon, 29 Jul 2019 16:42:01 +0200
Message-ID: <00a901d5461b$c893d310$59bb7930$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQGmEYIKNlPSkHsokS68AJ07ljPyoqdAEtFA
MIME-Version: 1.0
Content-Language: de
X-Provags-ID: V03:K1:QQ+1njWbPbb0N8Yr6iV6QI7Ky5HcOuBDKOzDptGvjtJuf455dVH
 hh7nWsUtMK38gHuPpaowcD108cdZKLFj+ENVJvC4EhxinS5fCa+t9/9QAV1LxpPQ27xB121
 p9loylfgh1VdQ2kXD3i1ZSOePVzwoZWfYnN4MxY3+7M9TCprJ1x9G9BjZVuL8adHKLIX8XD
 +TNBU31aAB1aKICnETyhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GhUr7aIR22M=:w/ZlCOXXdUBRjf7kRsG0O2
 4LHeZ0NWKZ7SH/tbGoAyaVDZamKjLje3u7FNGMDxRA5E8f+frFkoLsLOP6HsOVzIY5jNYZhRi
 Fb7AwEOyNDH5vJXzv2cDxkckUxl3U+wqOirXFrq3p4gU1zZKZp2PZ1wNOJpgDsqXbNRsqcgxs
 0cJ3wFtsULU9+gp05kcs2jmxWP4bo+DL28gwKQmcP4EJlA+qUIZ9K38qd0tbg1RQ5N8yA60rO
 ZRD3tzxLbS4L96o3u1kH6eI/6t14JdPAg0w3rhetuhzuM5k6A+gsiHpU1BOo3lTfaQKqjxicF
 1sBeKeO3Q+AuUs2oa4qKJbxmh43stOBWP6CqqBNPwjvzMVlCqQKR8vAodGCn9u82bkT4Mby1p
 M3N/mzFnqTAhXZ3S99bMhhrN8fzPo8yecxC+hXmh6fqdvVNGOr15Rh4lVdYsqGKjm7Wb34UV4
 UEN6Gw1ToULA9HtyxU1YQuFJGQ164EpVmm49c7bh8pqdceFDOgXACdUlioexbLC0oW1x/Q4AG
 h+kJ4F6Hb+Nw/xTxn+Mo0v8AxDAdqK+LYHVV7CDtYIO75tUKPZrFnJ0r83SXzJ6wd1f+nAf6Y
 rAQVwfR1qynp5sHjPwFTTHwlWepBmcACPP82nUd88IzXGNRJtMuB07YqEzhIvlyfYrxWxMsRD
 ZDI37zr4dH1ciPkQcv18lILkD97l02UZ72lbEoeqVjyEIG/wbbH3zUy9QcaKDuM+WxtOTR/m4
 X7YvkQTVDVcEgpHjS5K/3uReUassOTdDB2IIOqn5SmYDIPTkmOUcI7ZwC8s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_074211_298407_0A125BA9 
X-CRM114-Status: UNSURE (   4.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support to JS7628
 development board
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
Content-Type: multipart/mixed; boundary="===============7885270027610549257=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7885270027610549257==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=GM+H4zNQ+C+bCG=-="

This is a multipart message in MIME format.

--=-=GM+H4zNQ+C+bCG=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

> +	compatible =3D "zhuotk,js7628-16m-128m", "zhuotk,js76x8",
> "mediatek,mt7628an-soc";
> +	model =3D "ZhuoTK JS7628 (16M flash/128M RAM)";

Is memory auto-detected on this target (to me it looks that)?

If yes, I'd remove all information concerning RAM size (except from hardwar=
e specs in commit description), meaning
- compatible
- model
- device definition in mt76x8.mk
- DEVICE_VARIANT
- (name adjustments in other files)

Best

Adrian Schmutzler=20

--=-=GM+H4zNQ+C+bCG=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0/BbYACgkQoNyKO7qx
AnBzjA/+K02kneYsMYw5QZfkv715rErJSeoczsHuiYwHXB1471TX/I0zQms1/Gh6
WGNu3FeZy8B3g7w0HTdZWrOTpb8eNrGCOmrsz5bJzGIW3UCezjlWnsfal31dh43h
Gz619UYLo+BN/CPvCxHg7Tu+iBfHZQGdTAJbMmd2at2g1rbzm50Fh9DdHnLXSRL7
T/HY2SqTxUQ7jHzaP5NykTCU/WcYP/JN01zYGc45q/t4c5ed9YPgpM6YYhbEY4Z9
O7P9Tw2jBeXNgNZaU4gUYEz/KmFQalsSVQJUb2IUMZ3QyylQBEAZaxYxIpxqU2Up
hN26uabzbyDvaZO/jCmdphbfwjLwyP3EYLYbdwxFg6nvowcRFwOnLrQIBNqOzdpz
91FKpUpUXlI7FNa5yWMTptlfdTF2sO2c0YDeFnkNPPxnh8UwGMrZNk9sgT1ghC7c
5YDMopmTHVUs0M8zOTNw69SBGpgHWy8CbNy3rzlzxyhHyzZShzYfD/W5NxofLvzH
Y9Dy+IB6wiQParrs5itotIpOfkiZCy+ljFiRSqP7BYMmHL9xG7ArOms5j8ay65/U
o1LBJEAFL2SQmYcVBsER2eLytAfgyiCbxOKP29Dzlpyt5xgGZWGlwQBsztlen5VP
SXPJI83+n+6alX5tK79QEKxd/C1oMQdndG5e0TYR8eBWvRNmcQE=
=KpMO
-----END PGP SIGNATURE-----


--=-=GM+H4zNQ+C+bCG=-=--



--===============7885270027610549257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7885270027610549257==--


