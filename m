Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148A48B6EE
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 13:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HjSvwjFbPvgyOBBvAba4CtAZqpqDiPIYXziQvR4lkWs=; b=lv4wBjSoqYW7k+jQEL59O5k6O
	On0YKEkFHWYZY+pFxls4ku6ljKsvbm8tnuM4gmR/OnQYemPPuBZMnjIWLsztJDj3tn3U0N4EGN7TO
	v6lhUR9Ktz/v0kftj3BoPDaWi/g8VGbqYDv97HUIB5CtgbEUUEzs7DD+8NSkXfS+qH4eufRqc3rZ1
	SHRXPnl/9rTPhvPW0VMt9r/Sar3mdYkkunT2uLNx+CZ7k3D39G2VGKZVnWm8GrgcpA17HN9PgLMYM
	ZFlM5fzqiJR2g18m35p5zitkx2V4Rt7GFNiJpfOxXWaSfxMbPrRbArjTHbtNVYY7pJlDbo5+4A1GR
	60TZUh2Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxV26-0005XG-4I; Tue, 13 Aug 2019 11:32:06 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUyq-0001Ss-Q4
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 11:28:46 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MoNu2-1idANm1hbU-00onk4; Tue, 13
 Aug 2019 13:28:42 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <1565208453-17770-1-git-send-email-hanipouspilot@gmail.com>
In-Reply-To: <1565208453-17770-1-git-send-email-hanipouspilot@gmail.com>
Date: Tue, 13 Aug 2019 13:28:41 +0200
Message-ID: <00f101d551ca$42db9c70$c892d550$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQF6qyK9QgC4T+6EmBjPvauaG77lBaeuPXYA
Content-Language: de
X-Provags-ID: V03:K1:gmAGdrXsa2Lae21xnM5qDiALjDrAER4S9v3jeYs21V274EpZ4CF
 Eb1owQe33rcK0MlfSu1ermQVQhZdg4mG7ngZyVFTxJDPei00fFHojFURPubqFtZzggrJNmc
 brCKrL5jwL5dkl7UFcNFiCtasXupCGWE4sCeOeNretB6LE9Uyx9fvjx7PtAJ++Ac5LvTiUm
 RtTg2SOPaUPMdPnadbcSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3i1nDID5upc=:AldKDRMwKnuBTJDpG1u/AO
 TDmVHzYKYAn3QzzSubPSrR4h0Uod0NApE2lBKLWh5H3Y1ax5zaKaxHiA7+/FgiRXL2CZoRcQF
 GHCFvkEEIMICoVsg4QEDUWNPOy6xfeii4vMphztlnaXd5IdiHy9FrV150AheJ6wHCnb+gnQnq
 Y+0Zz8Ys/3SNQpN7/dNkf8cYhK33HCaxnfhQDq8LrbLyxY/EaP+xBS8+PWmpDpT2W6h6nSlZf
 cwPJ5gjEXYwWMAQ85pqEoPoRKjKz7jYT1d92fpVE+S0l/bW+HMzVjM1hJnFHeKlLzKh/zWjmo
 dRMZ0QvlP0hF0tvC5BpMoDcnI4/hdd+J0t6Z6chSM6M2kP2PQgSHNNK48n9w5VaBLPlVN6UW8
 fU67JSlgdXZjdQPWWAiVlaDBYgIrt1RGXNRqp9oDWPc1PqbYbdw1n8b7ACYdYWsD7WtJjKNPN
 +/etbN381S0wArhCpBLECSSCeVuSGifpue8eF0cdHYEISU4XX9btAUzcTAw2SpSeWtS+tDgCi
 PRstBBYxbbGiaHUc08G6yvCS/2UZmab88uelWdqyZdZ/1i6+PB4CJsmfSqpZxme5Qt9NSoSaL
 D4mQZaN5AxCXV4HkJyh/SnMZbwE9jdGO8P7Ds0c/9XiYhTMBr1cFD93XgPcxPgm9GSsFYYeIL
 LNbOnfmxVK1a7JeW5G2fC+AAXN1w/iUGExs35JF008/gQBJLqYSC+V9U4QTCcPH0iKd0tal98
 1jZxUGIVabt2OAtXwhvq8j+ZPf/k/pjauIgEUM1+F85B/8++j89Thcxadqg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_042845_166066_8F053751 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v6] ath79: add support of Netgear
 WNDR3800CH
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
Content-Type: multipart/mixed; boundary="===============1348165561193805474=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1348165561193805474==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=JApy0JsNBPXWGb=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=JApy0JsNBPXWGb=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Dmitry Tunin
> Sent: Mittwoch, 7. August 2019 22:08
> To: openwrt-devel@lists.openwrt.org
> Cc: Dmitry Tunin <hanipouspilot@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH v6] ath79: add support of Netgear WNDR380=
0CH
>=20
> Add support for the ar71xx supported Netgear WNDR3800CH to ath79.
> The device is identical to WNDR3800 except NETGEAR_BOARD_ID.
>=20
> Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>

Reviewed-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Simple patch, no need to have this lying around forever.

I cannot check SUPPORTED_DEVICES as the value is retrieved by wndr3700_boar=
d_detect in ar71xx.

Best

Adrian

--=-=JApy0JsNBPXWGb=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1SnugACgkQoNyKO7qx
AnCW+w/+LLgg+8K0r1RYoOteqQP9eS6BBAqVFOA8zcy3ty10bqUj+sXUI9XAMF+e
FZxYVaMyAPNZSJyvDRvu0WiKwqZDGirMQ7ZtdQm63kt1RT3ck/zCqMFS9xhLfC4C
UEReqFL4cWhbXQqqct2v/LFPhlHrnQVkHIb6B/TKxE4t1AiQ4Sz9zRoSb9SwIJe/
jwZFqyQbwNujn4eHCOK13aiOCyY/eQHirduaV7FnyYfAD0CkOCBh5Ihz8LDsAtgm
o3dZC2ycHSuXu9rqDwX+pzP0Wzjh8rPoTrYfUQs5j5IKp+jk9XMs2At9KIwmH5dr
aCVkaQ62Um+Gew5YtKCtIGKHDBV3eIHVv6/+6g9uorHxXNq+Epq0sUZwfj6tg27L
khwH0mIVH4M13WKv/0xlwXuFsQv5QIrOPibNS5PnOtWH6ZIxNsxGWo2u0k14V+bk
lr+qwMzoX9bdQNjRKkCtuaGPqt0txzWV7LYKvWT8uSddSvHH5HbX1br7aalWtVc0
vs9c6V0KGe5R6iSUCLkwXEU3JJlgjrx4wkEpzq5VKAMCs3NX7y83XOPtS/UokRT1
9P33Q3vVErUoGNzDt2H4+um+uhbLbvE6Kpeq2WB2cpGBOXgxJWmNpzqKQEgIJ3qL
zf4b1NthK05sLwTIhThFiqvLDk5YpOFy8zUng2swAWPZzbHABHc=
=if7n
-----END PGP SIGNATURE-----


--=-=JApy0JsNBPXWGb=-=--



--===============1348165561193805474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1348165561193805474==--


