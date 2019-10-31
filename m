Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0005CEB09F
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 13:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2mrGvGcHnlhcomnPCWE+oskjJWvzZl9Mr4TZ02EN+1k=; b=GKV
	1h+7hMGao9I408drHOhytjLNKWJ9XB2SOjvp5GVIQhvO7cx8LA6n2+YuxVF8WUtSzfzVgyy6Ak9yG
	85JMHGNJeZsc9okCpxXLSbEB12PrzXsYDec87D9/E5pbm9vqRXVNi4Q6KL7GCYuqqSSnZvlPMhHWd
	gY2L3CF/NECq/vO3ShlB48/QaEQM+olRjnH6w20cmKIPGbZRkrTfLiwNitsE4+OJfn328MIrrzPuS
	uHQjkAC4Ln6fthw/kgk11nD2uaofRNYQH3zqazAH4jMyHx1Hw2FV6fdwnspUct2XzP4/vYY3Vblur
	lpSo7Z+LWXrC+PElIY2adZZ7/j7aPZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9yN-0007f3-0p; Thu, 31 Oct 2019 12:54:43 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9yB-0007eA-LL
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 12:54:33 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MeCYx-1hredB1AE3-00bIr1
 for
 <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 13:54:26 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
Date: Thu, 31 Oct 2019 13:54:26 +0100
Message-ID: <004901d58fea$537910e0$fa6b32a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdWP6TtADDq996arTFOhuk7JqfVbug==
Content-Language: de
X-Provags-ID: V03:K1:hEqOGlR0U5WjKne3r6s3LCTHHMKopQJtvwiHtNZSZlBF6eFjkah
 xtSVQVvga2tEeUncF95KoNyDeZ06hc6rRdpbuYXHoDlwt/rdIReur39cBvM9vUcM92zFnrS
 F1xxiVZf2gOTLUIuyiwEjzpWLpoIcIMlFWrK26lzVOIuJN7fflBlWmRLvJAE5tpiMWXBjpM
 z9whliyxl8uANVSOJ4yag==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ws+5w/0n4rk=:NO7JW9142D5zSExD5YFAVe
 bGSnnaKR7BWz9NBT0DgtIyUjHxy4W1YORs2r2xRexwa1koRLZJSk18e7h7xl0gKtMEryX4a+D
 supRHJ5Hb5bDK3yCj7jLhr/0S5N1ZmGE35a4e79YJAiRTKXj5CHW4gD2MMWr0RBRGa9mMRDxG
 YK9p/sqqfyqVYClfqtTXqhbS6Ub7WA2JmzluxCAJ8tAl8VBE9b7aJhOA+zytn4G+NNk7rujjr
 MI81b4tQPGe07QCShzNpyGnkCrYAXOlbhL1NUS7KeLKhJ7UJL4zPdtaVrj+0VN+X2iGh6hcSW
 ozJQ96AoZFK4xwKiPG4AR0Ctjs29BB6gSxIsMJhGFBpUUDYgarQGOIAlKXOYpRfGF1BL3RRtP
 YWI2+LGKsF8l200b1axw5saU1Sb5Y5cfCFJD77YjeuiWnV3SoPX0W074I5BCNqjlTrYeGeAEs
 sMk5DUh4CMOlljjBSjFFvdQxfYQ0lUrldbnSHFUoVoS2yLJirrDoudT8CbySngXm902Hcr66u
 20SCSMjydXYiJpssLShr/UfQ78BDApuOAp6Ml88ggKjcYoTfNM4OhCOBA+67qJFTcMBLMNLtO
 ScYuesvweGQyVEEFfsBEHYLtN7bT1ktP9u64s1OUbLIE000MPlYzkJcXET5d7bS9WICZnO1fy
 p5tZRyJgAt57XoRC9ZjQ7axzgUqPf38yaBVmM1jqEdgDNEjYpSThJh1dpqNHoMpprdPDw7DTZ
 YmlIBVa0iDBAZ9WopIDDSyykQjsptgEECj30yY5prnPpqOd/gURLSqoTxb+cKzl8K1PmboXMA
 xVm1JuCECbnLM2oPrtArth7dTuxhWi/sD9O/zyAJNKsf1Buek1WccCpgmQU+nlyh/AAmSllsy
 4ndq4tSrjZO9/s9yf/SMLHsq2pD93tvq8p2dvED7E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_055431_988930_8CE6FCD5 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] Merge Pull Request in GitHub
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
Content-Type: multipart/mixed; boundary="===============4031380272322505658=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4031380272322505658==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=lDl80FTYoOL1Fg=-="

This is a multipart message in MIME format.

--=-=lDl80FTYoOL1Fg=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

GitHub features the "Merge Pull Request" button, which will add a Pull Requ=
est to master with Merge commit.
OpenWrt master does not seem to use Merge commits (which I'm glad about).

I'd like to disable this option in the projects GitHub options, so if someo=
ne clicks on that button (by accident), he will do a Rebase commit that doe=
s not spoil previous common use (even if reverted).

In case that a merge via GitHub won't be accepted at all (as it's just a mi=
rror), I'd like to disable the merge button at all by the same set of optio=
ns.

Opinions?

Best

Adrian

--=-=lDl80FTYoOL1Fg=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl262XwACgkQoNyKO7qx
AnAEDw/+JG/c77YDc/rfTAwZf9fbTIxAa3Wa+to948O3yExUHGH1Mf0/DXzdCvil
Hi3bnPLQEX54TZ+vjR2UAleKS47dBSoEKHLm9X3zQ6u4+97AaT3HDsAc4uIf4H2R
ddQwQq7LHC02/Fo7r54JEhvSfY4xqJwSAP31kn/fadEOVy/vQEiAxZo1bP375yKi
MJp7DPw8QwsknLki/s1xjbUhG8wDge25hwaUnWggbzACm/uUCVhkhTwwDwLpSBf7
gG7Z7CmY5URPphq+FsATesckTTO+U3Hv2tlhu8Olyx4XQV0Xosgg3tqWEB9WuZxi
wR9Eu3KRunrhHrEuGT3sE3l/M/uEGg0loQw5tIQZ/sOBkWlLF5Ohp/qRyMG/RI3g
PlEkLCgWpyXCxKDnTjQaLjkrZSW2y08ywGkfOHyz1yo170zXAq1aVz0JJaky/4K+
gBX+WOyjHD2khb69cWVWlxjp1k4ks7dZ1/+6/ABqpn1eyToC4vURfyhS7v5HRJMV
acCjiM2xG5ogkeyUAXCPTIZlnxfvcYybZPfkXSs2fSeUoDbd+dmi22lTDlLy01mi
o0S4LEQ6QWC+UxbmOYCQBvNbk5dan2x/CRxf5FwxNIDJAE/NG3Cf1xGyWBtGxrsD
wIzjExC48fD2AUjyhBLSuNbVc8vgri3EccCzLvBpNf+sZZTmByo=
=WKhR
-----END PGP SIGNATURE-----


--=-=lDl80FTYoOL1Fg=-=--



--===============4031380272322505658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4031380272322505658==--


