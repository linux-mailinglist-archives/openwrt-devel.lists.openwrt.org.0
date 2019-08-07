Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE61985335
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 20:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=93BnTVHy7xB2Q1EqFYe8mVKZZgPwlHGbD1gFE52A4ps=; b=IW1lO3gqhPgHIUPV+hz8ueAzX
	fT4l/K/XkXBvEgI/SoQkWNtHoeJikBggSgzHps0j4t3hPuMTvfe2QdzaTImo8FMLe/2sMWMAamFfc
	Be3/yOrTf4XbD6Yk9UzymZCqKzqtnywbtT3yKTuCiDESRGJd2SDVVB2JpX6AucN8NpreyKNl/escJ
	MjsprdHStI2VWZ6/k7dO7RDKZEcArw/hSmgCAPahtX3VFtYHT4/3/z2F25I5ylcs2qMoNqDIakNOU
	nXkPHvpu08VtenIwmD9Zn8p5+Ejsh9hlkzKK8k8lmGozkzniT0uwBrQJMPeWfh8DXR+XdTi+3gDQW
	UeulIbmZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQys-0001C3-Dt; Wed, 07 Aug 2019 18:48:14 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQyg-0001Bi-Ed
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 18:48:03 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MY60L-1hpjWt48th-00YTYH; Wed, 07
 Aug 2019 20:47:59 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
In-Reply-To: <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
Date: Wed, 7 Aug 2019 20:47:58 +0200
Message-ID: <029701d54d50$a21e6100$e65b2300$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJfXR1+bkvErjfcpfU8tI79uGyNTQIaUNJQAh4I0tCluiJyUA==
Content-Language: de
X-Provags-ID: V03:K1:VTXDtNEfaY0xR3bcpIyWGxJYX2M78c7RT0jg/MiMXoE0cqYQsyj
 PZHxsudYe2EXM6pPSOje9UsTwKC4Jb+ovqT7gA2FAOq9fd8FCszDY81L6rYXkX+oopKUGEu
 YNOhDitfvAyk3nH9d2uro0N6wlPBK35j5TzHPJcPNZF++F6B0DFcmzhbr9E4JbRF9kk4ZiO
 XYKz42cZ1MCk2l3xNGXSQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dMTsVKSPlmo=:PRfGV1usBDQsZDuMXVKx3K
 MLRWeyVmFAprCqXNjZm8w3luePijujMDvI9VFexhqOUAUGQllvqs4UXKMJvgW33ogszPIJWw2
 bVBGnqY2536X74LFjV4TDWSJggc35Dgfdg9LUCF8VZiCErYkaXYAe0XpBxj1QbN3+jZEB3PQa
 DB9lvJZ+ed0XUvqRltW+64O4Gz58ePfDrUPC1xsDO6NMhv0qNNeBwG88FuUCR85MTrj2HLclo
 Fp3M0TSArX7DkCQlf7lhmEmLRiLbV+5SW/3wjKWLeYO1AZz35Rd9+YLTDhjoXu9c5z75Owo0a
 vCLR7Pb7q2J/QZLwj0mtUIvAQqyVTpAKYGKrqwK8EsjdZ3U2ncPRWMXxj/nWz5Wq+iszF8UMg
 fn2D1hI3DpYeq3AFXUcKJrOTtyjIorw3XbKaMnVrnr8sPKEJ/AFnt2yeWLyXrBFOtZ92FI6mN
 YKFVM8nDj15auJYfBrOZ+CRJ1XEDAwDddoLD9drGezUT6lpMZk8YlKHnCO1O9VS11KAvxNpQn
 Y4LsF3ZYlcPsZ7AP9LLrbKApWfXSk0kh1SsY+ilCQkguP1OOO9/cs4BKPJ3Lg1yDJ7PxluEqH
 cVLmMEJsKYPDyYQOxd+jQ+kmW4d52SnRFYiW61Dy3TK68pAi6dD26pmgDqznzWE89mIqaBt56
 333/LtDE+7/3vCHxwS+JYrTWJMQhZ9MFMIHTbIeX2IZWBHHPWT8K3h+4/crfVk5sex19vex7v
 Q8QkHN37WBSQV6INeDobujlR5Ya/jc0UhHsa8Yg9nD5+yRPIxzYGgbdXl4A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_114802_790588_E68335C2 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800
 (Ch)
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8543124704018971139=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8543124704018971139==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=NHKf0qaDLZwa7r=-="

This is a multipart message in MIME format.

--=-=NHKf0qaDLZwa7r=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> > Note that you also have to update to DEVICE_VENDOR/DEVICE_MODEL syntax =
...
> I don't quite get it. Where is this syntax?

Here:

> +define Device/netgear_wndr3800ch
> +  $(Device/netgear_wndr3800)
> +  DEVICE_TITLE :=3D NETGEAR WNDR3800 (Ch)
> +  NETGEAR_BOARD_ID :=3D WNDR3800CH
> +  SUPPORTED_DEVICES +=3D wndr3800ch
> +endef
> +TARGET_DEVICES +=3D netgear_wndr3800ch

Instead of DEVICE_TITLE, use DEVICE_VENDOR/DEVICE_MODEL.
In this particular case, DEVICE_VENDOR is already inherited from a parent d=
efinition, so you only need DEVICE_MODEL.

However, having looked at this another time:

Please do not inherit one device from another. Use common definitions to in=
herit from.
In this particular case, it will be easiest to just copy the definitions fr=
om wndr3800 (and thus inherit from wndr3x00). I don't think it's worth crea=
ting another shared definition because of the remaining 3 duplicate lines.

Best

Adrian

--=-=NHKf0qaDLZwa7r=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1LHNsACgkQoNyKO7qx
AnB2BBAAyed04NHy/sVtD7GM8d2EzEG0mIvaLGnhA1GbwwH7BROlwvoGFoiKiwMP
tJ+0zEtYtuSAXkwsNoToS6GDfe5d9vFxL/D8IdX6t3244SzT3VEMQpGB1ELhlNdO
H74zJYN9SipkGhHnjO3WTx+FkeSTsKLrVhwjH+bshV3tSHiPKRTotr+7IesRznMu
0K2ai7mqyTQS0um3yj54vY9FLJj/hRhklW+EI5Z25snjivPEaoKs4nRkNXZ4q29H
o46kfRQSAb6AsgzcbbM2llpJGNXeXvBKrIObJ9JuwZ+psL0ja0flmjOnat4LlVrw
ufs0bp7gC/MLoxXANG8z2uuazyfCUtJIFuQRniz2PnuU7We+zuJp7ftQOUdyuq8L
3asZvnbEbGRjxfbm4W8epaN65/gfjCK8ASSUD0oT7VaoPBeUgPSaXReFEdJuViFr
BXW9a4hZrCPNJ2KjZ/JFGYjq/zQF8ra94dIMlVcfRMTEfyVt3nc5sPRwwYXjgFit
7RUvFzb7zlg22dNdzJsOKhwkAjE6gc6aLRzaKuCK67aHGkWI9SHju4AlJGBaDsgd
TMr8EdiydsFz2PqQUlM9iMrFglm+8MIe9XSy73iXjpGyA9/TOf2I/uFemQ6J+Nuy
N0J0rMP6lwYVyFsFdEKTz1yi6P/ZHVx057cD1a7orLp+7CfDnQ8=
=WCji
-----END PGP SIGNATURE-----


--=-=NHKf0qaDLZwa7r=-=--



--===============8543124704018971139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8543124704018971139==--


