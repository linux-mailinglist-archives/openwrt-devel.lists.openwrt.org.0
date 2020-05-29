Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5591E7A62
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 12:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HAaKmuQImjltvVsX7I8AIodE5dXVzYDOHjh0CUsfy4Y=; b=NUJ
	y4uj7aOLHT7VTIuSoFQT642KscCWlJmsG7zT5K7M4SqrmAwBLhC3G0IOkXdHEGNcXG2jRxY2h4+gX
	HWcfaan22XkBdphToGCtcYf0XG6+lkt+RdshDVW5V2rQ+MXUqmAYfzScimoDyROo+g837GrrT5T8w
	yjK8YvfPI7Q0dPl/2Zv0UH6s+Po2N70UpmwMSeJ6PWCzG0lGZTCMhXEwf9nNjPlRSe4t6Xscl4Wfl
	KS3UMbNgTjAJIbBUgD8qqkPsZGMuZz3KnKAdkT14L2XPmrAgmOynN0gxdzECWaBegFBxg9+Ee7Ocb
	WR/9b7hhF2O8qe3DuLVizh3Y6N+IODQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jec6o-0002E8-3v; Fri, 29 May 2020 10:19:26 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jec6i-0002Cz-BT
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 10:19:22 +0000
Received: from desktop ([188.192.133.27]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MX00X-1jToLs1Yb3-00XIKH for <openwrt-devel@lists.openwrt.org>; Fri, 29 May
 2020 12:19:17 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 29 May 2020 12:19:16 +0200
Message-ID: <00b401d635a2$9c1c1af0$d45450d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdY1okhisdYULx0lQCmyX3H8hrMmAg==
Content-Language: de
X-Provags-ID: V03:K1:0K61cjzfdgGGxCip7M6LqS5J8GBHFXEgVKPywo6cpwACWUVW2f3
 +bm+GqN5dAxjX7vJjarZWn74/3mrnMsFCHa93mhcMTi4yb2v8maho71hJmeD0vuVxWdieWQ
 QBPG7UusLU93TZYf1DgZs/8SqwssIs6K2fjLvCKKRlkgFSBihtOXu5XC+CwtMyKpCDn2Hw+
 gC9NrsVjByAz78PAaCV5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+fMdBipSuG8=:km+IUMjQqLpzFe3LzNCxa3
 jX1QN2XAJBRY4FDnRH+e2Xxf8nvDGUUotGu7b/PVS0rQwvv0O71PysVrFzZuEYA180zVp1AID
 fx3aSUX3zDoEnZ1/DCFDUYRk3BeaEpXSnTKcOgrR6opEgHBuSejXHSxPXK+wJ/zYAhCqbTbzD
 c76Lu+SzFXyHuSaOuOF7uwkEB5uVBh7JIU2xGwX/0iknEATpzDoo5cRM9IWD8URkA93DLJOUP
 6LymxZt4zjEvkegJhoM3iRvjpb2pgtxJUtcn5KnnKMrVimWOvtj5RpReXoB4JAQwncCBmfbh5
 EOA4UbhPzTvsdYAKSjh5al2Wlwqs/Epue0aRXybyLZWFlc+FsNAOwXNHlPaxqmJ8t6vqrRTQE
 55Kf5oexifiTixj+GOXwzStKT9nDb97AEd1Ea72uLWaKxRE0foSKcP/9/70CBzFyEXp69RRk3
 87X/FvFVsFWngZQIOkLv0H0tJ0k177hpXXnYq9ZCvrUWBUaetGGCOBr+DzlPnh9fBV6YY/HcZ
 SPcZ27Y7pduq9UnbwLxQ1YXEQt0/hFjOLZAc1RorNaXiPPDjLOtvfetj6qS/PE3R2WO8AKc8Y
 o9RUGWAiE5zo1j26MyR3fjp+6uE9Gq3dUdk2tGaejcOipl3tz+/blmMlb3zj6bkYLagceX4qc
 Y5G9eQGQ0F8I7GT9KURdUTFBJnsm30+ZLDv3kNCkv5fOO1Zx+hnKup8aaKt3BkI3qbDDwzvKL
 iR388APUw4xgnoJgTjCEX9eH4ChvT8k+7/6hoPB+eY8NcegJoNxKqFcYrQICHUB4OJWUXoDIw
 kwdQFeLZYIqaHEyX4OyCAeWebYNuDldMJYNbqvKsMzPJoP1W7Bk+XJm6N1mMMNM+Y02hepD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_031920_685471_60FC3CD1 
X-CRM114-Status: UNSURE (   5.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Reset button on TL-WR802N v1
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
Content-Type: multipart/mixed; boundary="===============1612334369261036268=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1612334369261036268==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=iliMb0Hl4qGJpC=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=iliMb0Hl4qGJpC=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we suspect that the Reset button on the old TL-WR802N v1 is configured to t=
he wrong GPIO [1].

If somebody owns this device, it would be helpful to report whether
1. reset works ouf the box
2. if not, it works with GPIO 12 active_low

[1] https://github.com/openwrt/openwrt/pull/3058

Best

Adrian

--=-=iliMb0Hl4qGJpC=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7Q4aEACgkQoNyKO7qx
AnBNuhAAgaNpay8mbGc2vKbDx9nus889HQpVx7Rh1YH16dbBQjiHKn52Hek3/TUW
MJvMlBmONizZ0Er0msFo9NRsU2exfMKF1jpjs2X6k9o4Ak9xm7iLF9gtbx1ylRSf
ZhZFum75otYfCXKjgdttZERHLErciyhEbKs2NyTbo4cO2u0hY4AtpH+RtmKnMS7h
V/okmWoRFbAPjfnOveQKpaJMVSYGcxoFHHOsYc1tiVjxckxvGzN09Qsh7AveE7FA
nM3XQRnxHbHf8BS8FmASqKP8oprVKMXX/j60KKwaVKMFXRh4bs0YTQ9y1JRpLeHn
KMTpPDW4V0MBnLAsYEPcVlH9eiMEX5/eYVeuxZKm3U4POo75qjlBKWO6TRVgSRua
oN0whBNwPiT8QqjZUEh/Zb+H+hxlZ52Q0AZtXDNHCyP7lIXjaYwBySf2sgFuedPl
jljg4yD15EFlbd/TPjoeSg4NSlhBUlkZ5O9wOG7FjXl4DmL4v/ZcWaBklalreCEM
hHH5ljayfrjxqnSh7pIVdeFc5P8pRyqL/Tv/keegi474+SNryzEPy8b69qFMlsNm
0zDrZw88iUcwa3sE49/Dinkwfy1QNSbXy52dM4MwDWPcT+9pNu35StF/M4e3lsqb
gtfiwOm/IWab2GdTPhmTj5DfRGQyhR8J/GDA2zTW3G51LtOduzM=
=OFR1
-----END PGP SIGNATURE-----


--=-=iliMb0Hl4qGJpC=-=--



--===============1612334369261036268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1612334369261036268==--


