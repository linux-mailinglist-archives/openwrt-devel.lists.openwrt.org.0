Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDD3F7A99
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 19:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hcG1e83qu01DVFREcJ/sDSzxkQovpQYatLsM3T6v1a0=; b=m5zaOkvIdiFJZU09s6iHpZLDc
	ImHjZUvksfPlTzbkSWFkROyOmaDfw7ZZHoeCLD1sZnpHUEaovG3UsgHOpQQqqNEqLrv3vuRpyAr22
	zu4WO7POqL+3HXpGNpxGsPClK4dIyBSA1tEEJOkyi1sSRdY634LvJQivXh8GjgY2er9J37lkpTCOZ
	fOmTN41I8oaP1vfufJGARTgPAG2EUoLk03f2sfrG4AqT+/ZX5SGYacGibqX2GImeht1YxLL7WgDdS
	eojU9cYBjK+83F7Ycns3+hgmzNMOXnxI4A1jrYly9Wfd3E+kLF9Ixzh4zRNUXxVAz5KLA9y5TBXfi
	y3P2bL11A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEEP-0001fo-MR; Mon, 11 Nov 2019 18:16:05 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEEI-0001fK-3J
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 18:15:59 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N6srB-1hpj4149zr-018K8t; Mon, 11
 Nov 2019 19:15:55 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Ivan Baktsheev'" <dot.and.thing@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <9146E54F-C4CD-4E4E-AFA0-180B36AFDE59@gmail.com>
In-Reply-To: <9146E54F-C4CD-4E4E-AFA0-180B36AFDE59@gmail.com>
Date: Mon, 11 Nov 2019 19:15:54 +0100
Message-ID: <02a601d598bc$0efec970$2cfc5c50$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQK7c0s9e3ESdEsq+UnK2xvt1RGdWaW6kRsA
X-Provags-ID: V03:K1:AM7WXvne6JAieBI7HhSpeA3/W+Yqp3PHP5z2GkQrYxmB0mPqOAZ
 GIfK0hLljD3ri6wfD8UaJVKh8DgRM5bmfc8ceP19QRr//Qb2NMYPSXTg4zMaCWpkMkq6cOL
 KnCQNSXs9gFTUb790okXMphKnosaPvRJ+ncOk05t9a50HJU3qkjQeCalb+j7VvXJd+4s9WP
 ODLIxetYae5JdsF6FrgQw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bpcuwLl0FJM=:LLlhNFCAqJ+dOJYxnCLTx+
 TDBVx/FM8Y+kG6Px5bgrpIUEWklvNvpEfMq4N2rpZGWopsVCT3iK0T7OHBzUm6mHZ2uR/9i9s
 r6zjv08gmwzd63pQEDj5BAyvMr/DtNJFEiYA5Vr7dgZyw28quHTexzJ8O3x0YRJurndCPRN5s
 mVrByOYNZHYTJXAICwdATnj2ZKpl4RjRZSmr2WSJ/MrSeNEy/VeDRCuj3FPFbsR9AG1a1b8wh
 jUd7Yo3j+N3wdR/Mbglvn0UF7IW4lolPvIfMaA3YAk2Qx2vVPqgYxv7UT4m2TMhD3zA886kCz
 sSjJG3YmWnOxLIZox2RaGpuhMWwgl+SXBH7qmXbY0r0vSYoAkKX8/XCffwpYaTKk0J27W7XYV
 y8p1hnX+oyQg+HjyOTdUOYMirZPTCC19YiO2sO310AIokM/YqMNpEEvxUCin+yM6+boz1oGn7
 r67B/GNDgYw6RqoZJuKandn7pdgQsTgVqS1LBHZg1hf/UjepvK+77Jag1rq5ZHY/qmtSiohFW
 5a6AF0qexEoRMqkDvZ7npkHDkrIrWb2SdsWOiJ7DuvZfpTCNbtV2DynnRuIFIQhWX9bxa3xbj
 OruLBuKkMGcYZQ6UQIinWSDYKLoXKfuk4dLlrRQf3PQ+IEyhM74lnHosnQQVBsv+2hiVgJicm
 VU49lhEEu9qGqCwdQw/n1JW258E+nH4iz9K6G0BGR4vPRbyR9bHRBydjIAVG7Jug+5BvA563B
 toTmQqnbdKsX7q4FSv8kgk6pf8oHW9fW+qvYDS78gfmRqEnkU54/2Yf/p2s59MQXnUv4L9vZE
 V7BYHDdjtKh6FM+jcNlCvgD9bTNicGRClApi8Mp0tg0UkOU5dCTnXoMNA6oizgDBlHL97xLCA
 dy1F2C5tG+evr+OwEuGlEjAjjCTTpX/j6jQPSGpN4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_101558_433857_09069469 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] wlan factory defaults
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
Content-Type: multipart/mixed; boundary="===============5688658605783767520=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5688658605783767520==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=/Cj1ODW1/aT9tI=-="

This is a multipart message in MIME format.

--=-=/Cj1ODW1/aT9tI=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Ivan Baktsheev
> Sent: Montag, 11. November 2019 19:10
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] wlan factory defaults
>=20
> Hi,
>=20
> I want to add new device, but as of now I can upload firmware wirelessly =
and
> then I need to connect using wired connection, because in stock OpenWrt i=
mage
> wireless is disabled.
>=20
> For my router (and probably many others) default WiFi SSID stored in fact=
ory
> partition and it=E2=80=99s quite easy to extract. Unfortunately, wireless=
 setup takes place
> in different time than wired/gpio/leds setup from /etc/board.d and defaul=
ts are
> hardcoded in /lib/wifi/mac80211.sh

Have a look at the following two Pull Requests in GitHub, dealing with the =
same problem for some time already:
https://github.com/openwrt/openwrt/pull/2408
https://github.com/openwrt/openwrt/pull/2445

Best

Adrian


--=-=/Cj1ODW1/aT9tI=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3JpVcACgkQoNyKO7qx
AnBWmBAAxNt50XXfrZKu8vzxrLCW6hX7xfciB9p1nxZGt0JxZwTHot+VIh6wFGAs
E6YNCfAL9fvIVXahMzqVlyGXiveWLtH4HwH5XzwuqVqlVw7YwDr2JB4wLpmiFxaP
J87bbKFak4lr61wThKTiil16g7My3mv6NTsCnGXdw2v2yYJW5rD6xXD13OSphiD5
WBJtTBRCt4fQaiK3/volemfEPEJDhYqOwgvdq45Nsq1V4h9M0/ZEx+w6AUJ3IxZE
RspJeJdfn9RimDyaiBuub2yizYa5hmr0QRJwv4tcp8ZhVsakLV5FjgqedbD/UuP+
UpQdwgVbaDrZniNunIOb0T3Mi9GR/tPfpO3j9Q2JcRkPX4rLzZZMvc4FMqJtWrWv
FH+rYRhtqX3Ktau4oazS/3r6Rb5PdH/KcE56JOJq9HimVdbQYukoXp5wkfXjRWhV
wLRsmtjAbLslfOguuYsvJntkht6emoDUVXejiArzV+RsMp5Etf42TXIx+h3WySl3
1D8gxgduRyEx78GHiWEeuNOEPqLnBEInYmgVE9nyWkUSrQR5chN+zFAyzq5F0kqa
MPEdsU+xQsFE54AVk+fjIfE3fvtT4KMSFPFgGZcfky/JADHBJRZT7tbAjBGT1Z6N
CeA78IwMuGo4Zx+naQu8XqjsWz0GQIf4LEvx4qt3NSx9vFZs8V4=
=xVgI
-----END PGP SIGNATURE-----


--=-=/Cj1ODW1/aT9tI=-=--



--===============5688658605783767520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5688658605783767520==--


