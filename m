Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043D55D3D3
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 18:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3G4nc39PAsw9mDvcZn1iEMxnSpamekKgWCWgjhzQHkM=; b=hO8
	/cZ/1XlZ6HgnRUJntwVzdPUapY4lGdzYQgJb1ypZumRsrxdR+D5HX2dtoTOAFkUhDWzwdH+FAY4b+
	gIML5tyMVwh2SMzrDOAI5pGh0M76zxni1HhyFGXUXtAYAod0WENjZCLqvwVOzg2mlCuOXnJQPqHQU
	eWdvssIzC947KZb++/IXW0W2VIJk2ipeC9RIuWUx1YTqoBk7+0Uh7ZUD9FYczw/7vUhoGFQwpJT5m
	93bD473v64nbXMNaE/ZNyD8ar0SwOaihETpmCSGqvC/+zbczvDIub84kEzFNx2mFP5rKuzveF4fqI
	+a/eM6oNOKNClxP8CwYq0leVVCnz+gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiLFL-0000BT-Ci; Tue, 02 Jul 2019 16:03:07 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiLF1-0000As-Us
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 16:02:49 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MCska-1hrAvb44sS-008qXJ
 for
 <openwrt-devel@lists.openwrt.org>; Tue, 02 Jul 2019 18:02:44 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
Date: Tue, 2 Jul 2019 18:02:43 +0200
Message-ID: <017001d530ef$9572e6b0$c058b410$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdUw7oxoc1Ah/Om0TQC0XfMKgrz05A==
X-Provags-ID: V03:K1:BI7QPEYoXYr3nTAg7orkXu09R4coO1qTp4fiSYMErRIKDkO4UkN
 CV++N0c+/JsnfmBc6Pm5jR3ekzjQ5YX9q3HEp/qghqXN7hAPO4EsnyTDyrccwgj/bvuPK0g
 56+YVsMhNKEBpMkwR7E8Hi62TVmr8iuskRLgDvKTFwobPXfzkP+/TCs8dtnKSDW2tgWFufC
 RUPr7NQVv3bsmQwoG99KQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fGf8wAnATNQ=:uJLGw0MAVvKDhSCUli4xTu
 lvhbgkVaP9DmLPjWpiRyr5Nmlr6iZ9J/CRTmnfoKZqzMdwYYALL66k0cPXaw83HMZY32YgPR0
 epkDboI51FQcqHcd4SWoJPzkYnU6s+u52NbYFUvnmBX0d90PSE/B6DAP2sWUO+p6noMCEE0Lq
 nYwUAh28avbQaj6wDJkCzeQDxOZAlZ2aEbYT83Hdpg61D+u5JjZFsBtxuIGX5VtNQAqJxx4Bd
 19L+kvYE4lOWHYRpTb0PIbWbDPP5aJ5Xa8vtMXayJ/P1MQGGIGhGs1UuLIc084v3nTUoERZOI
 QE9Bp7xhwZK9sMgK1fgrIqU/O2kz8MArbajJRAntf6FeUD+YKZxogBXi+Nq8eyZa3hEBEAbu0
 cfJyDaGSMDCrTDIaGq9IIhn6rLvNnlzjbKCIRl3kzX9ZUAWWqLOpsm0wzMliR+5vaHMKUSHjs
 EoQUI7/xISwiA4DXkwCAjjk3ohtkkpQ5ASpBOL3X+c256sZ3x1pPni8hK9Vn9y7EoCQpgV+6y
 cXbhG021xUeQ2u3kFI9gCBkFYsMJQDrz3aEcahYNv0z91vk1ae9zwhUyoBM5sgS9hzKh0zyMq
 FYpxSQLbqET85WONnKKP7Xo8BVEx4EWvnoayZlwJ27eawa8EyyLLV/QFbvPrItaKm+VWd95of
 qpYZDHKi0T3hLfnB/dkfZUdw0yg9O8lcYphJKsQz6BUjZXZkOzz01LSCMJx6ateevrlqlv/I6
 s1Ia071QpLOije9pv6kyIkiEIAkIDV2K860aOzPqC2NBRAcWeukkwK9lxTE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_090248_294215_91DFCCA2 
X-CRM114-Status: UNSURE (   5.42  )
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
Subject: [OpenWrt-Devel] ramips target reorganization (harmonized device and
 DTS names)
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
Content-Type: multipart/mixed; boundary="===============0566032664936654127=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0566032664936654127==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=YLIB4hroSi5UQn=-="

This is a multipart message in MIME format.

--=-=YLIB4hroSi5UQn=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

since the ramips target mixes old and new syntax for device names and also =
has room for improvement with DTS file names, I decided to clean it up.

I have been putting together a PR for this and just wanted to communicate i=
ts existence to those people not visiting GitHub frequently:

https://github.com/openwrt/openwrt/pull/2171

A clean and rebased version of the changes is available at:
https://github.com/adrianschmutzler/openwrt/commits/ramipsfinal

It essentially renames all devices (where necessary) so they match the DTS =
compatible (getting rid of ramips.sh) and renames DTS files with the soc_ve=
ndor_model scheme (removing explicit "DTS :=3D" in Makefiles).

Best

Adrian




--=-=YLIB4hroSi5UQn=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0bgB8ACgkQoNyKO7qx
AnCCphAAvOU8F2qNd1+e3pbtmONXITaXG9+bxn/T8vyemV7FjUj90RQjO95sSmbi
sEOnRk4SWGM3ff3viTrq2TltxnhTL1zp9UHbMmpYv2igOEXPWX8l3B3YfFR8y7Rc
EGfC5OT/XpaTBvGxYWU03Ku5fEBElWdyuDpZ7nEDHX2Adl4jMceU3MI1JpvvRsGK
vlxigCd64Npxw1tdi+pwUjTgbeLwWqKcU+P0eVKElV7kqqhn26AYdbTwle5Cd9gy
0GKHRmsjjmjaG9JwgVWIu5k1nEtsoESWdIE1Vy01bN0P7TyEXC5t+xb+vSwfMt5s
ZGGnkSOM3uymox18yrO6Vp8+gTrPyuN3jC30IlcxRu7RLdM9U1IDH9Qu5Fu75stB
hfb+EGlG23rgkaTeeZctZaSDn/mQtQkk/uOU7sMqwa+UXVdECCcm085kJmUChVkw
dA8prFdD7dSCA6FBKvUpsgyS5aqvWzPl79irUEfiZ9bvm5YPdQwJhgthRwro8nPF
HmSYR0mmBCBskOxD9vcZASPmlwXtrYRGGIOzsyQPtq2IlAxm1oWRZ/VuzLDTNeoM
G/eAvZn4tYQhe/VcCZJbVkEMvBd3MzKZOeLe6Ki9N6KKJKh4xnqtgMvdd9l5DNnr
8lGJnQz0T0uKywkfcNUJrSj4dvQvgh784d0twFI/NxpPB52ZOxE=
=J7A2
-----END PGP SIGNATURE-----


--=-=YLIB4hroSi5UQn=-=--



--===============0566032664936654127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0566032664936654127==--


