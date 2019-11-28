Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFB710CE5C
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 19:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lytpuFZzQsdnKm18XG6jO8pr/wasINOaJV/UiGbrHEg=; b=ndjNnwI/iempUR98U/vSSjuf0
	la2IAlI25Rnz44Wg+kILgSWiFjMc50bYguSQAeITL8UvJ2jLUWFQRldQvZbu9RWgc+lPQVQvV6VJa
	0LgYXjpGSEGfKz4YA+2vFoZqwfxt1QwVrMTW0ZT6+8E+qIBcnoiqD2A9RQPNvvwt1xFfscCyn6K//
	bpWx3AZr6RTLYxMQOzSeSFUPDfSiGDCSt1iMahfZ+JpPokca1+BPsS1+zlWAJGR5uLCwp2Viv5Jvb
	/dmHn9uhEO4AHTaF0/9m209cqehJ3NYiVH1Dmlmm70Y1mSc/BtjPNnOM1RJvI2HSFWcODNF8FTPed
	hiK7BJEgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaOGy-0006sy-TY; Thu, 28 Nov 2019 18:12:12 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaOGp-0006sZ-Tr
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 18:12:05 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MEFnR-1iSzjm3t9p-00ABq6; Thu, 28
 Nov 2019 19:11:59 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
In-Reply-To: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
Date: Thu, 28 Nov 2019 19:11:59 +0100
Message-ID: <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKHHZl+c6tYe6NxV90oTdPoalDB0qY98d3A
X-Provags-ID: V03:K1:9Me+g8BDVyKYq6bg2yUnDDM4grS4lBH2SsXKDM5sXj5YfC7kFza
 6Bo5WeHeQmfaAUTDq3ZHmJ0bZu8kIjmCNxVc2GOWW+VD4gt6YsmFftVoT17ZBKE78pLp4xn
 IhKWuyObn9ZEywVVTSDHrNtjdOZtyEsrsKZaHGA+aGGaGo4IJtfy/lzo5PedrSaqU/+Phij
 9EAj8i/4A28TJm+arSmhg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3xVfhTU7Wpg=:wKl6TtobfNrUcUBb5ariul
 ewoepdAGnZLR0zdI0f87wnGqymKb3fk4kj1TjajCewS/LaJYudKf6cbZ2bG6BpNJ9K9XWXpIs
 UY6ugKOAgTF4GekdTrikkSY/eCccsNy767DXXWZgr4Ay4pBNh5W/8FKrP7Yp+m9gB4gAVIEsa
 FHVn5qk5NLdZVj9zWIIthuz+1eK12XpxZ8TQmb48IO0cMTMlHVqZYabs/QChOPGwJtiOVL4lC
 VGqymQq5AYGT+0fEEnCuI5ktkqE/9rSsSOjzH1MY9ghJlTEchOCo1XBcjkQp3bnEHrdkSKX4D
 p6YH6QGpmB4oirTjr14Q2udi3wnz+m/I6QYMx6lyeXuYzqbJFZCdOjUi/U20xErmaLXhaj6ed
 PZU7b8QCXR057uo4qfz8qujSrBYUEeU03jFj14WQjAFMuELl2w8m/uXiYje3Gwc8sW1ocUZq8
 ScojidxIrbq36wbTR4fsYPhsgq/nNPLi3rqWMTliX6KktCYfOhTUJxoKPsF0MQRLB0XvhQXFT
 oGWj8t5PmM1z3W1juzsMWSnhYhXTVdY59zFEwNqnHxj9tE5Dv7DHWkr0dnRrIZQ3dEbsuUcfQ
 MVB5QuvxXfUVgKTLzyNb1uvEFJs5s+N6yHsmxouMl5OTKu4b98/wb7onfDCsp2+7DOwiYRzd/
 JAtsMq0o4H/bbSq1GlxERO71XyIY1KOVyL4LPcHJ/0ZDePkuRp4HfobCTojP9FV0H+VNnBG98
 HqegTx1yri8VxM7fdTXeG0861tVQ1+Fu0N4IBp8mjApIoXjK0lTT7JcLrymdhRtEZS3hyF/64
 UY/dtbdc00cdNiC5BZPC9k5R7cUTmdQnRPq1rXAy8vBJTHfw0FBe0blyWHgl7vxG/Gc3sF9RA
 7Q4GSxC2v3m/WpFTar7etaI5Q1UY1yyanaAgOV5cQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_101204_255508_54E493CA 
X-CRM114-Status: UNSURE (   6.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============0345719394359777744=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0345719394359777744==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=/Z9kk4zLaZDAOG=-="

This is a multipart message in MIME format.

--=-=/Z9kk4zLaZDAOG=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Hauke,

> The following are still on kernel 4.9:
>  * ar7
>  * ixp4xx
>  * orion

There are patches (actually from you, May 2019) on the list which claim to =
bump ar7 and orion to 4.14:

https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337
https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339

I haven't looked closer, just in case you forgot about them ;-)

Best

Adrian

--=-=/Z9kk4zLaZDAOG=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3gDecACgkQoNyKO7qx
AnAfJA//Q6vf4mlP+7+saUiZaxNeAu5B5er9WvwYlc/SeXl8qvPDfhSdzkqQO9K6
cYJl3dgLfQHR4EKuWuVFl2UP9Q/Qa2y2Vf2K/WNUy4MUO379vaFig3BWGCrluspH
pHEnEhy3w5RpycFGqALJ69W5Vkvl5vFasKSwqHU3LVj7LgZnSgFsXJ3fD3hylr9o
bKaKD/VRXRZgh2ydrwkQLpBOANy1KT+DPrXalOQnJMiOYoHxpna+EPGJ7XvGQQtH
NbGN2hRLv5TQ5HxqWWA0Wl7tZbBxgnLWL3cSbynySBug2qakgA+fWKvs/RjXGTDU
i3mF0eyNGis+Tihs/p+c9ARmetxWJLkceutBSEjFSlB7XfjYQrXIrQsxjxJRY/Vx
v5CsE9wSQ54nfsLB4J9t+0dLZk94sPbBSyzxB38adargV0qCiHqjNxc++rjjrGzS
B/Fe7MZbN7k1XWMKR2hLbFgeOnC0mnRdoBdSdrzYkVg/9a4W2BIKG3K7CbT3gy/o
4JtkAico90kZ/cQM8d6dzhKNVY7h7V+RV5BmmpHIweXZ+XLL2eaR8rv7hrI7TybD
Oo+4gtS4sFpcDYME/C3LgQnQObSR/6GKjB9t7RmS3E+tItHQKwrlytJksmCEBBXj
Lk/lio+y5ECyAZPlZ1LGDSV5uOC2owvjUu70yVAkGieNYVoq+1Y=
=YKhm
-----END PGP SIGNATURE-----


--=-=/Z9kk4zLaZDAOG=-=--



--===============0345719394359777744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0345719394359777744==--


