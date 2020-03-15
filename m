Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1841D185C3E
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 13:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t6mIDyEdA0rbHWQdx0DzX4xZe4yB7HolnUYAOJAlWdA=; b=AsXNlqbxDAfMph34gpLad+JWs
	HJydafbdxkr+rbbPB0t6ZBo4Re9ojQXIm1clmcGNllAuMWgw8ow/Ni+v07QSIrQyB00iacfOVdTA+
	5FvirF6fDffWzwLL4/UhqYnMzM0XEmPRutqAdoyuAEYYjZZueMmd9Cgy1A2pDw6kIedacjEGfM2o/
	h/f8CoqZrOUqH/tlXBl1ib0INF0i2Qx9bp96P/5U83bxErkVYACQsgFKe9SOIstIQzmDSk0wQ3+uw
	7y/D23oMbo9dwNjbWJh90hApX5RD8oUyApZaZESl4qfOoD1mRxOGp5BND/8Q4cOojiS3HCKZNOvic
	EeHdO5BVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDS1X-00041Z-Nc; Sun, 15 Mar 2020 12:05:43 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDS1Q-000411-Ih
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 12:05:38 +0000
Received: from desktop ([188.193.174.43]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M58vU-1jCM5g1Wtw-0019mm; Sun, 15 Mar 2020 13:05:32 +0100
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Thibaut_VAR=C3=88NE'?= <hacks@slashdirt.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200314212303.29701-1-hacks@slashdirt.org>
 <20200315103451.34439-1-hacks@slashdirt.org>
In-Reply-To: <20200315103451.34439-1-hacks@slashdirt.org>
Date: Sun, 15 Mar 2020 13:05:31 +0100
Message-ID: <005101d5fac2$06e7c670$14b75350$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGdlcAgW4/Bj4GeSWq+IYgKNVsT7gHdsPHWqKtqWRA=
Content-Language: de
X-Provags-ID: V03:K1:adWNUu7cFM/70KS+Gx/otZ7D0bZE1MyCTRvuX7GZ72Ar62PuUNI
 gAsdDPIZMtX4PiIhTfXeL9c157HGtj0KQ++M0DFQVCau64HjijrHgCyW4HAGezzCHl8SZa2
 ypm7tEA6bvBGZ39CoZ3Utmu4NevFua9Ywv8TzXPQ3KRy6w2apAL2ioBbPitEEvgDKq8B7O6
 5WF0/I23T/Pq5Jti0hf8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LXF67FhAKAQ=:uoyg5t74xvUjZVsjlYET81
 qqbUOW/bkW7mXKK+UxT9N/eNmCTREQg/LDDijYqQnaMeek0jfid/su6FQuWKQ1TbUEgOSscFm
 RlRKqFNFq2L6beBb/o9EpiIQB3igEDCadErEfoURrXXGLSC9FgA+memwtI5SQGZkHwOKRxYi6
 UNJ42dwl/8HMzRvsu77dA2Ur90tOzjCsA/kL/3cQwytJYcM7fJpBeHsk+bRP967I9ZpgtPOmB
 RieYt8euGf74PhXsiWITCNViHKijG/Bz7esPu+1amv78RDKiXuNsOIUX0qXPlWo2Ihfx6g43e
 B1LoAMT4vxxxvKwS9bviO3Lgx+xTSw0KJAMNa/1Rr8xPNS9227XKufNrK76ZN2ia1BKOk+M1Q
 2yL/oSdD7u6GhpbjhH8Huv38oxkv84JRhJGD/Nt/br+kM0OjrJJwzgxpJvt2JOLN3G1ZwWVGe
 EwHGlgSly2zZiWUpFdEFYp5l8RYNQOkKdse3ZMp25osxGKCrRkBxsMu8Om+c7kqCqX62YCE1N
 KLrOW+UnukhBU/UW3AXmOzYmvQ3qnVMEEZqD9+K1M9MMNvCxvk1eicBsHolxKHF9kHWpUtrag
 BUITeMOPORL1YiFV9rU4qfcfxWZWYua33TOQXFNw86E3mFzONbJycC9YNOgi5sqPnFTqe5xOa
 OIcnSPxBDt935yFODIjf81x9ORyHq8eN1hO+mGQV+moJ/6Tm6BB+qvGalFwPLLsCOLBoqIL7d
 3FHOqadj4dmJHYgNuFkjqVz5X2X7xWnrupU65j1HtIkeO3bTMuLKo9ykfKNylFTRaUYXi4CJk
 2qq0WN9gmDV4zkD+S2MERsvpetIwjnfwfZgxReYgBGbu6ca5kyb61Y4K04eBFluMUsQEs9P
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_050536_910629_6859A7D5 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq 2nD
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
Content-Type: multipart/mixed; boundary="===============5622096443149839903=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5622096443149839903==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=9JctPUyEAmQrEw=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=9JctPUyEAmQrEw=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Thibaut VAR=C3=88NE
> Sent: Sonntag, 15. M=C3=A4rz 2020 11:35
> To: openwrt-devel@lists.openwrt.org
> Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> Subject: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq 2nD

the ar71xx target will only be supported in already released 19.07 branch a=
nd be removed afterwards.

Consequently, we do not accept any device support for this target anymore.

Please work with the ath79 target instead, which is meant to replace ar71xx=
 and is also already included in 19.07.x (though Mikrotik devices have only=
 been added in master).

Best

Adrian=20

--=-=9JctPUyEAmQrEw=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5uGggACgkQoNyKO7qx
AnANCBAAr/cwCUpmDoDPxvdwaLVteAYithWDr6ilCsa91+vpHnBCyubPeV+A2Ywa
xnnmdjs/xzHg1GZlRsMjLfYX3vg/KxS41flfL9Qz/kbX2mdUiYxndFV16G2/gC2z
tpGnDbvZzZNvfPjLEKUCizYwJiMpBTJSbcxIbAS+7cIUNXfbDSWje9mtDNBLFRoQ
WoWuo47ZmL5KHl1MSl4I9cjmk/kv+7XbPVQYb9x9fkzqJHQAPS6rAirVEiRUepWg
ELVrwvT1vcDdsLGICVCaNT4cmfyFwohl4zgjVB/6UaHGxSRa+PPffumRTdPYLaqa
O2pxht6IjvQXypBTMZJpZpr8ApWqGcULBG8y4dPVPvj6Aj4A/isBp+JS0WxrxGPx
UOHsyp3yJG6pTMBFPITvSpTfWJoYAJ2M3Iu9ENQyF98JmiSwQYeL6GoO5Ac7QGqK
f5DLewwaRH2oHNLhX6vwCHB6kZCQtJPOuZ1XRrWthuOf1uliPCu9vcUHfLeA2xfH
sY5PGpSwSJXLkvKS1abEfYxEerKh6ahQ0TWYSsXwqCegkx0qmB/qJddUfUp8bXAA
IjG/hXwa2suNXWHB7yvOIr4tpL4RdQtz5x7DBOlugPldhx9Okcpa0yIu7WD/d6ee
ewao3jxyIPjoF47ouCMzg5E3BuFGuJAvzNrhFtzgPHJnPj9szmc=
=em0M
-----END PGP SIGNATURE-----


--=-=9JctPUyEAmQrEw=-=--



--===============5622096443149839903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5622096443149839903==--


