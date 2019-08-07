Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6F78552E
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 23:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+M295gyraPd5+6dOCSkgi0+TCuZFrc4rmvB2RP9v2ZQ=; b=pYiQNFUegOC4GIwlwzlsrQ6kE
	rr+SprLJVtxvl43Fmud8e2KkkSghf41Dvhk24+0ZvAsWcwXL7JgLJO3ylKCUGbYcLK6dNZyN7WJsc
	QFIF+hxuaMyZpj+CYQTB3i5mtViqfugWa7h3w6RCEE6+Fn6UnQ9W6jsD20c5kqg0pUaVF/nubtN8N
	9cBksmZGeoIEvMKss0we8XJ3pMS5XYIjCgWESXKmtro2DxCruUnKzYXH8iIUiazK+DPRdeaXVLmPS
	Qu8idhda7jI2pAS+hJtlXTfy6xHw3A2rt4U8gU7blc1V9MSLOKAH8Zp5qdj7vXrUt7XRuA6A3ZNiG
	XXqENiGlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvTWY-0004aR-GL; Wed, 07 Aug 2019 21:31:10 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvTWO-0004a1-OF
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 21:31:02 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MmDVA-1ide2j1Gcq-00iDGM; Wed, 07 Aug 2019 23:30:57 +0200
From: <mail@adrianschmutzler.de>
To: "'Tom Psyborg'" <pozega.tomislav@gmail.com>
References: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
 <20190806131039.51484-2-freifunk@adrianschmutzler.de>
 <CAKR_QVJo-ooRvEi=ODftEsrr0avW3_5TUcMO9eSud5EpOTtfZA@mail.gmail.com>
 <022201d54d3b$90d19080$b274b180$@adrianschmutzler.de>
 <CAKR_QVJbDBvNhon0UgHLMO+SkG5zu5iFsLcY-iD=aaJcFme2Tg@mail.gmail.com>
In-Reply-To: <CAKR_QVJbDBvNhon0UgHLMO+SkG5zu5iFsLcY-iD=aaJcFme2Tg@mail.gmail.com>
Date: Wed, 7 Aug 2019 23:30:56 +0200
Message-ID: <016e01d54d67$667520a0$335f61e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQEB+24oOP0+hQ7HGqEJP9eZ0+GFFAFVG5ecAak0eYsCYVWdfQFjdvzRqGC98lA=
X-Provags-ID: V03:K1:kHFJLrbgtrFcLpsgvZXlNKNEMgFxlz3DTqC2ye45CgfFWOEUB90
 E7V2cFjGVEJKncme0XJNmGAoqr70D9ZwFNjPZlBNosQOWcWwfYKi7mHUxODustjc7KbepOp
 kRnaR8KJF4cZzfne6TAvF6vZedM+MfnmtQQYNf/OMRm8ZsWJt7nfwpTUh5esc03MTEeJwmL
 NeKyQxOttO5kWOarYnE7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZFLeB2t2WJs=:KM/+zOejlxMtxd0GFfKltI
 QfpXQ/+VtKYS1KbnQaQnAgonyAbh66gOZ8wnAgixcvRM2EQIjMU0NtCcDwq90wrnWEoFjR82f
 8oV6Ikf8KP5dGpYGBtu4JIME2oxdL4e3vYgJoqs4kHFL4MbLENXFsksVzIdL/T2MWxus2hbcn
 712vtYZ6CYXES+swzf0vou5rcS3w14CdPZ6oF0NVSY9VIRo1mBYYVLAASJqZRV1/Ci3rr2tu9
 VFjUX+HJ9xAC+HLx7CvrLMXqWjiRE9CI91ZLRj/532EswOYz4CujbuglfhhrSOx+hBHWg9Lne
 mVSA4UJJdqmJl4ySOWaqwFM6EEtO0c5q3QX8B4LXurgMo8DEMCTzlA+MaAx803dFXL/p4fpZA
 ZhySVSlAwY4GdJlaaksyJnqSmjj4k/dG2/awBI/R6dDmT/zAbDx9G9k0Efyzw3qTGLhtfw3fA
 n7eFM0GUn2h1cGHATuq3+bEHNUKxEwp/w65X1HrznLtTOmUWulxr6fU56HmwO5QezDNksSYDZ
 cgHJI+rg8Q77Vsmvb8vvbwLYF/RZLLMlO4Ccp+zKvt3KACyQBqiar1WXENh24jM771fsiCCe+
 L0vc+RwsHZmdxpJqpLJZ9UKu/EBQgRT2/zyl/FaYGxCzaxOYbGY1nbTOhSQ4WJBMSSI+hPb0n
 5KuPmrZPaEZilmi/GYT6ioLZ7hBmtQ2wAWnBlWwJspE+lLGtALBGuBKQF9w6b0BGKxyIHao9+
 Le39dYwF1Exfv645921Iu3/BgPBbzjHpyR77ZiExP/6BGf34CR2OsSZtMf8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_143101_081289_BCE383B1 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: fix IMAGE_SIZE for common
 TP-Link definitions
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
Content-Type: multipart/mixed; boundary="===============4788782102039681811=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4788782102039681811==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=TzLLhQeMsDMzmF=-="

This is a multipart message in MIME format.

--=-=TzLLhQeMsDMzmF=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Tom Psyborg [mailto:pozega.tomislav@gmail.com]
> Sent: Mittwoch, 7. August 2019 23:19
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: fix IMAGE_SIZE for
> common TP-Link definitions
>=20
> Correct me if I'm wrong but I thought all the data beyond IMAGE_SIZE
> remain intact by OpenWrt on firstboot. Experimenting with Archer C7 v1
> recently I was able to flash OpenWrt image (ar71xx) and after reflashing
> tplink fw previous settings were still valid indicating config partition =
hasn't
> been overwritten.
> At least TL-MR22U has config partition of 64KB and Archer C7 has 128KB
> - I've gone through GPL sources of Archer and it seems between two
> firmware versions this partition was increased from 64 to 128KB, actually=
 I
> discovered this by hexdiff-ing u-boot versions from each firmware version

Nevertheless, addressing this with IMAGE_SIZE would still be just a hack.

If there is config data to be preserved, one should add a partition for it.=
 Then IMAGE_SIZE would just shrink according to the (then correct) firmware=
 partition. Now that we have DTS files with individual partition schemes, t=
his would be even easier than for ar71xx.

Best

Adrian

--=-=TzLLhQeMsDMzmF=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1LQw0ACgkQoNyKO7qx
AnAcNw/9GCWDDp0bHTvp/QbifDl5iuXyOLl7IdwrIbt/ICqCxNu8hRqAcQClfFuf
27eprKJEzk+8PZHMEJNvhDLp5hHPIqyhAgMuG6O4ai4Jaxtvr9GiHESHA7d8YUZC
ds7vLftI8SS3BXy7kosqE8Sc56gPRPqMFtoM8Kkm6prfqQGwTHsIFGiddUKIvgMf
530rX5q+JlqVwSkGjU2ntTn0If1zfG5OHWuJ4CUN2KAwEIufb7a5nGMZmPFbb9ki
eL7Z51wjqalHgvbNIeuyxpN+OKbM3ItzYqWg95hoAjEYS4OPQfeyrQ+xOd8fGPlm
BxtqGlSHo3PN0t47DTUlxurcQg8CVBXSQ4qpiAyq7AaUgaIW3tfThD3VNrBl3czC
0KiA93mXOS77wfAC2nYfb0hdIB+x6CPipGEDANbmz5zUYVQFccfzxzwEwAX6E4AP
gl1NNdjUgpX5iqgu92Gap7umZjQAErKpS2HVoGwjIaQRY/UgmhaLR1+pptANH0V1
nSHrUwN2un3ZqybppuUho9tzrOGSo/YXmfPsJ83pYwzuXgH3tMIRl2Bhtzm47HLw
2W47z7aUv4Tu8X5eojRzv6V6P5XWxb9mJGTZ0uZb/5GQeDeCD49OIx/MxHOEt7dx
mJ74j7J2udOouBRz+pvjqRtfEQ5Lf+EuLRCvAMQqayddc0dLh9U=
=XLE1
-----END PGP SIGNATURE-----


--=-=TzLLhQeMsDMzmF=-=--



--===============4788782102039681811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4788782102039681811==--


