Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73F311E8A2
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 17:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hluDm034pVQHB8YoVP83ItV8YdO1Du46IsVCO/zfmPA=; b=JYJ0IkxxnTtwePLbwi9Gkonx4
	Y6Ai2TTPYAe2uuNaNu2f259Nj4oEM+PeCiKxidaszAebwGNYeqBAkb2Y05OnryBEs7kZDtOPWjQNZ
	s6GqzdNSNaerhu+0lgL2Lq1gIb01P+W29PdwyX6q0jCKnw9DUZ+oKnsI4Q8gOyGBvFs8nLtxAl5Ed
	Pz9Iq/mnxWtq4uytCOcZmy2e7hSXMqTNjP+KNXLIAFje/14y73Ndp7YGQXRH668e6xJ7xzAc64I13
	usFIErm9O+5NsSf9pvRjnuKQZyp6e3sxFjM99S9+Mn09bf5Ps2MIg+HNzmYZqWjkvh95FYsWCREGO
	AYtIssf8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifo45-0005w2-KY; Fri, 13 Dec 2019 16:45:17 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifo3o-0005cT-I9
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 16:45:02 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MOzfO-1iN4MI3pJE-00PLxY; Fri, 13
 Dec 2019 17:44:50 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'DENG Qingfang'" <dengqf6@mail2.sysu.edu.cn>,
 <openwrt-devel@lists.openwrt.org>
References: <20191213162419.11469-1-dengqf6@mail2.sysu.edu.cn>
In-Reply-To: <20191213162419.11469-1-dengqf6@mail2.sysu.edu.cn>
Date: Fri, 13 Dec 2019 17:44:48 +0100
Message-ID: <019201d5b1d4$a35ef4b0$ea1cde10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIN39WAotaWWp78cET6ywH0MNTCBqdH6Nkg
MIME-Version: 1.0
Content-Language: de
X-Provags-ID: V03:K1:e3UkQjbKee6r1sfMHWWo3Gl/u5n7vHVEwKGb06hXoQ0AKm3t0fe
 6un25JmSxMMHeghGlPb7uSSS1jcSEZr352wk79tGHA7n1a0SpjOvKp1umTukr7/fK64uKFT
 X7CSZvQ+SE07tKDKeTNIyMkLmCW0Tyyz0hLhspQH/gUMJ2ZuvEa8njevlcvUgZ2gsKAm1Dp
 2edWGNl+9gfKworr145VQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ik4BDBNJcnU=:yrxjtgoGeZtLly1oTsDPRW
 YrdXTO/EhJgHvTgVlr/bPGlGqcTR+srJ3ENqP6zAsElGIiF3Ok8wtMChVLU422aKEAcnnj47z
 NkXtub5J9BWMsM9O9svERFHcr4Li8msEEqjxiJIPfSSL73DhZFiT7P/BaYp5gk2pHEVQWTyPn
 PuNNOl8VFNqdoPTSsvik+vfsRs8eMEgW+e40XVqh6YSOC6tXfBCNZeoy56cF8ZHJHY6RNgHZr
 LgBncZmxM6lqOcPqc7ibG2aPI9OYhV3cw2XpTA85AmHUnmxJTZnP9vXvMyMHXBcPGWxg2l5Tm
 3vm4ETdj7fGiIXMEjszK5xw3UoBdiMkRwpfS0qPgiT2XJ9eZMdQwPmBM9zX7BuWkOCbZUaqHB
 YBV9LdnzRwzZ777pZCkYiLofSG5HN2IGQMfsd3BNjmkZZIzbI2koQJdnKcKTZBP9U+L5OmAXS
 ggcZ5Zb3v+TUOktGxkUlq7aKBxmjcEPyONoSSGCJV3iZlVgUmE6GMmIClLpsYJvi4hv5yQwJk
 hTF+3qqJ41USmvEiP0H9N90GVU5t+u25gqXccVDnUpwRNOS/lqfXEG6HQG5c7n7W1Y+yVfeYO
 8pi8tZptqYNsT5RnSEN8fFmRI4eAJixpi4I8Kfp90ECgdIueIgticiH4uFul0d2hwGD96yHwh
 Gb71OlhL6Vu6VqxvTqKDgbRR1KOftGLBTm6Ja0gqWU222WsvdpLoViv0nKg/9Mc6ZNLmVASRw
 ihiJCytGEaQSX+L8mrq6mpOHMkslPQ0aqRrVQMDU0DfTlymHO79VX3szZUMCQA50hBVrLiNAk
 E4vBsel7CAsAJI9u4tTxm/YTrf4Y5e6EDA1X0dmF8Wa8+DZAhUnE0iq8+F8pTnebhvmWveUST
 /38fzyKND94c9RgAuN98pTRSLI3lSONYmKRpFCAUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_084500_889944_E559DFE0 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for JCG JHR-AC876M
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
Content-Type: multipart/mixed; boundary="===============5997844357429725252=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5997844357429725252==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=lKYstiMgcsiF8i=-="

This is a multipart message in MIME format.

--=-=lKYstiMgcsiF8i=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of DENG Qingfang
> Sent: Freitag, 13. Dezember 2019 17:24
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: add support for JCG JHR-AC876M
>=20
> JCG JHR-AC876M is an AC2600M router

I've added this to my staging tree [1] and will merge it as soon as @Davide=
Fioravanti has tested the jcg-header change for his Cudy WR1000 [2].

[1] https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=
=3Drefs/heads/staging
[2] https://github.com/openwrt/openwrt/pull/2062#issuecomment-565415609

Best

Adrian=20

--=-=lKYstiMgcsiF8i=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3zv/0ACgkQoNyKO7qx
AnB+lg//fjeuotZhvDs7LYJrjDo2xMmccHn8D28zQhf508+m3Vv8GJYjjmA5fUTd
7PpGQIJFjfmewWxR+DMgNKkAWmmdQOC6eTWYV7r1qtP9VAWfrVzB+9SKHsN79GiX
ZesbJXQK4bQxQmzdn49nLKn772YKcRqmox/usste4OkcCMmL3ovAnZMfj8eqfNdH
78fQRN1PKxkHGh0PTnMwm9lGrXjej6gqxu6bHMaGQqEBcomyV5gDWZ2QKLy6UrwK
CFu4Rt5bbICSH6HK4p65ccDAv0N25ITX6VlBR5dC72pJVi1yXNkammt+Acz+7amY
ZX/At5Fd1e9Dl6wo3EzCy5gw79OQ2Pv4IzAqInftag/mz+aTy+HGlcSH/0EJaZNX
dFZiL/FET/aH789GmgBv0tFU/7TEIrCgFFNNCVQW8KvokBTwGsUG4w5eQWKx0bqp
67yvqMpybwJC0n01wajdPIoVI8OtMxsSftvi3VsfZiSUaWgP/8DquLHRTj+J1SC/
mh1mb2vebizyB9R5HMNaDZgHtrnVDkwR7/AMk/gJ2Ah74SfUAsHXwyieeyUyjs4Q
Bp4/8/FiSgob9zC9xGyo02g2vBItxv9p8OawgipQlur+Kai1nlj1VSjwySLDrl5h
BKJ6uwQr0oMEOywjXlzsrM7VrmROuXS7WjMmIZ9AbDSdHOPDHIc=
=yvFh
-----END PGP SIGNATURE-----


--=-=lKYstiMgcsiF8i=-=--



--===============5997844357429725252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5997844357429725252==--


