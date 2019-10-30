Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F43FE9D9B
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 15:31:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QeWNvlpIjasig4gsx73JNRXcH9IAYSMWL9vOrnt1+2U=; b=KD6
	Azn219VHKlrHgnHuWKzcWeyP9Y+qFWqBIJwNRJKEcX/b1ycN8lVAU4YFc1ySF3LrMd821W1YX5FJp
	wxw2PSkHfIY7ZUXM6p47pjMHyLoJJa7zpfGtDjP6v2jzH1Ft8OnbfBgS0XvItG366UWmLaMgPRm6K
	RqyLvgPAa+DOI8DrH10j4IE6fI95Qek+FtBbjXdOscwPc2gB6lArtXVfLVG8D10O7A4LkNxdZhkCg
	VVNfbsn3/+atUe5MAzW6es49Dzx2KWFB1kQ4E0PHlSgbLqwzqhXyIj2TEVz7lYNzmyZo6vABQYrdH
	QnmqNC2xSl/RUM8fBAEjVGHglbDfCNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPp06-0006c4-MM; Wed, 30 Oct 2019 14:31:06 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPozw-0006b1-Nx
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 14:30:58 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MqrwN-1hd1v01eL3-00moZG
 for
 <openwrt-devel@lists.openwrt.org>; Wed, 30 Oct 2019 15:30:51 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Wed, 30 Oct 2019 15:30:50 +0100
Message-ID: <00b501d58f2e$a14292e0$e3c7b8a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdWPLosgMNYm9lCmR6iBaC73UxdXuQ==
Content-Language: de
X-Provags-ID: V03:K1:Qr9XgvSdJsuELJsazmkrRk8tOW2InjkuIS/ofaUqnAGAAfEP+9k
 708RPhUimknTev+8xxvNltq2+rW20DB0VHyxNKcKGrNxYx+wy9ZGOC3o8WgeXF+B6vkpZG6
 V0u2GXxql9DPJoIIaBytpKZL7XR4HWIZ4hlxxOMZftoB7+XniKfCxmBCfNq1hL3sG5DNmo1
 2fazXiUxKiRoaaxeumGmQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C0M2bG+45jc=:eMNqtQ8oFfnbGKLoRw38z/
 JgSiiXePRD3whaJGP5HrUxl3t7byCxSiK5tBd89xKcTd003MXzyu5M/EFRxZN9rUDb50UTSL7
 GnWVYN74V8ni2+EMTbNTCdRM+JVIsa5VpjkWxDKg2GMxHlov4IegKmg2H3Oewt7phJ5939HVS
 CseBgEdC7THlOOp3jCqZGWNecap7Y2DyRBSFspzboz6/vryPrGGwDlTyN5fqXg0ODUnoc/7Sr
 PgaSd8jWP/zFA/R6gqyj0gQ+a6gS1nH6igwC5zjjoLLb99tYXXoViZOCoza6Fcv24SkMQgJmq
 rQJki5AVLNSxXfYmodmBHTfmT5oVLBa865789FIG5vkUJ3qJWw60Jj24/Nkiv/OORT+qS/t8A
 BRGwNn+HuMibh1PdNIpyvIwmvUAwPa9oSZvLNbBriOCRibrWbprLcqPWrZfVeUD1AoKx6rBCm
 xvxBZsA/e2IRel3wm4olG0Ntoe/SP/4tid4Q6XOf4D2cQlgFby0olx4ddF5RWBvl5S7V8GCS8
 IMuU/MG8nF7pHYJnyq+EXmq1tlE8IxRt/KlSAK2dSv6wjLCKow+X34W/vvfU3emyCvU4rRqsP
 AgQLNG1yXzj/t5eOAgkcswTQyecixV9Ct+6EvO/IW4SK7Ws8yOPNE7JAU25u2WpBYcZPV7SAw
 s2ObyUlypcuakfZ3f8VVv2dRf0nMWldMsa7AnU4PlXm4OxGtGUTyJ2YgAJRpLM0Quto12Rql1
 SY1H5I5Ok0fZTmyWxny8FyEPw0ypLS/kMi+LziJ4uYH+mg0MJqDmFz550FD7MJcvx7FVSqqdQ
 0p9lqK/TL1b/Ajcet6ipGCNhEoJ8aPmdvPnHvpa5whUQ/w4eMxlKbPTOcVDsTDRR2rriVqERi
 DMxMak6dX8elTH15443+U+sGU94bFKGEuMyy5MvlQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_073057_079762_549AFD28 
X-CRM114-Status: UNSURE (   5.52  )
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
Subject: [OpenWrt-Devel] ath79/qca9533rev2: Help needed on missing GPIO on
 ath9k-phy0
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
Content-Type: multipart/mixed; boundary="===============6526071411006159626=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6526071411006159626==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=oK2peHhBIxsNke=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=oK2peHhBIxsNke=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we are still working on broken WiFi on CPE210v2/v3 (ath79, QCA9533 rev. 2) =
and have found that on ath79 a GPIO is missing compared to ar71xx (where WI=
FI is working):

GPIO Config on the ar71xx:

gpiochip0: GPIOs 0-31, parent: platform/ath79-gpio, ath79-gpio:
 gpio-11  (                    |tp-link:green:lan0  ) out hi   =20
 gpio-13  (                    |tp-link:green:link1 ) out hi   =20
 gpio-14  (                    |tp-link:green:link2 ) out hi   =20
 gpio-15  (                    |tp-link:green:link3 ) out hi   =20
 gpio-16  (                    |tp-link:green:link4 ) out hi   =20
 gpio-17  (                    |Reset button        ) in  hi   =20

gpiochip1: GPIOs 494-511, ath9k-phy0:
 gpio-495 (                    |ath9k-phy0          ) in  lo=20


On the ath79:

 gpio-11  (                    |tp-link:green:lan   ) out lo   =20
 gpio-13  (                    |tp-link:green:link1 ) out hi   =20
 gpio-14  (                    |tp-link:green:link2 ) out hi   =20
 gpio-15  (                    |tp-link:green:link3 ) out hi   =20
 gpio-16  (                    |tp-link:green:link4 ) out hi   =20
 gpio-17  (                    |Reset button        ) in  hi


Can somebody point out how we can introduce the ath9k gpio? Or may this be =
already the result of something broken at an earlier step?

Best

Adrian

--=-=oK2peHhBIxsNke=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl25npcACgkQoNyKO7qx
AnBEMg//XcNvaGoK3MvAaUpcTMyo+a4YLv9DKIGKl56QmkVlNTHm/1B8pYG2ypLC
Rdyeiw3gqmECh16ftiQIos15EI1is19Zk7aURxamY8yzqxhBFcYa6UQmvNsnjTtn
/B0KSsMfrs8uR4yLLwW5Nu1y12Qulis2cq7Bot/Htje+dw4nrEl44bphlyXkK2S7
Z9YSQCHm+lLwgaXWwKVOw5qm2KP5Zzzs7cjYZ2llo/FQzOXINfNuokAB4tW362dg
A9wzyRRZpk6wn4s/u14t9gzN3+8nRBtoiinmEUWg8+QzaYBzT4iHXBSWcQYXCZ9y
wwaWoZ3WC7tblcztcnCP2hspDM9bdJCzGwsMxwJZmTiElN0VKizeElFlangb6mre
FzzgIFeGlQE8ATlREqYMgojPB7HDTwt5xQJueSxnwukEkOI29VGtyGNhWekz00yk
DqUIyc9INwNlyCmLbJ2d/yT2xFEwjviHrQbjhOWg7GOKFJnGJ4HOkh8I9ORYTnWg
rrkTrCIN5Qkop2/xEozvCrip5JhA4+FFTbPNnIWHykgEd4JyjePBq6UjeWEy/eRQ
GVYZh+4RBeLwL44M4YvvbolSdfv5lnmWhbL4goF5dhfxM9jiVr4ibMcnvAcg7WcO
XJ5XB2Xele43ibw3XRySWy9y9TVRLqyseY5ceEASS/x/hcz65BE=
=eMQX
-----END PGP SIGNATURE-----


--=-=oK2peHhBIxsNke=-=--



--===============6526071411006159626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6526071411006159626==--


