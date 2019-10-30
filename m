Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8262E9E45
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 16:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K7Y7ATi+P/+idhmEhvbHCXw0ByW/I0BHwyGyFRgLG6E=; b=RBkqS108oiDY5Ihtiirx03j4l
	xkOssSfqHZz7O6oj7LFVCfJP+O/owB1CkaniLnbWAkuBWBZ6BCPoYGOibFgqnenNOOUJI6G/b8rEu
	niqMwHDg65DVzXAujEx7NfdEy/Lk565dGSSs0GdC9K48g4dfE3rGSt7FkpGkwyKOhbcbJW/6nIkSP
	gSQ43JApfAewRzSoOiodqRmrh3EmQnBiYA73elR33alDWe9OtGks3PhZIZFOSQEIdTdWyTcqzSdNN
	Nm7an0frIW1DUzsR9qnsNsQi0jyl0vzlwitenh8s2yu5CYN0yndsQHnIEvcZSH/lAOmV4lw5UCuIE
	CIO0/z7kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpVY-0002mT-TX; Wed, 30 Oct 2019 15:03:36 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpVL-0002jF-CK
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 15:03:25 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MxDck-1i1aaF2SlM-00xeL0; Wed, 30
 Oct 2019 16:03:19 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <00b501d58f2e$a14292e0$e3c7b8a0$@adrianschmutzler.de>
 <CANoib0G2ViuUjdkE_hWE4ETsLr4=XUF6sPoM_gFMEKOSw4Dccg@mail.gmail.com>
In-Reply-To: <CANoib0G2ViuUjdkE_hWE4ETsLr4=XUF6sPoM_gFMEKOSw4Dccg@mail.gmail.com>
Date: Wed, 30 Oct 2019 16:03:19 +0100
Message-ID: <00e001d58f33$2a793bf0$7f6bb3d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHzVpwJxYr2bWXfBB4U4lNUqV1Z1QGf8hagpyq2i2A=
Content-Language: de
X-Provags-ID: V03:K1:70TN+EML9ybVEOZrfyJ9/73XOXdIOSb1J/m0sRjKH4hd37lm6gc
 K1lt13F1lsAnZxxjG3BH6ptbaVzh4+ZDBIWgUb9Zxzx1I329eWK3LCiJwtP++6kUWh3BKGT
 eU4VB38WC3vH5Ie/zaELX3RGdOqUpOLknPef3hMgXdQfyCeLEDN1YfW2dj8IpkoPYu3Litg
 ySmp1ZKkw2/A2+mwutRZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pb7beI5iPoM=:lDSwisN+n/ENNdwilhR6WC
 3I5thiMfpv90QHy88y5RSNTz7diN8MbRLrmJjxX+fMuqUz12ljPoIZFQJgoDRF3qAo99g97Xa
 w50x5ETbcZywB840VlCiA5iIUEqg+bJe/HZZayXk4HIWWjnJfgeB+fmJBzB34BKROggcRfxo0
 9TckMs2onSGu4hTz7x5ycOh8IHLjED1jZaIgFY6pOqwFGzev/eGjWzA9DrCY7T2ZtKXViWjtn
 YtlOZ7yGQnF1f6mZmQd6Dmc6+j21CDOIdxCtED9zMSrT9tJ00/Xc+IZvQ4tQlgVN37CN5YLdF
 X171AgeooyW2pw5j5M8xSZlKO0VbiUIVtJOZSwJ5gCXoeSjxQSNQvEvJUyaQTFxA1zjxviLm2
 4bq8ey0EzcEmqZiWrnMG0i2SSxfresIwkKyT9P6gOSA+HbxWISU43CpUKcqr3nL0ZXe9tFLj7
 adK9SMadGKl8BTyv6xVg18A8MmxJWYHmpHb8nMYs4VVWDougpxY1+axXvTxkhwYT+RnkSiKbD
 invJAC0CH7+qovKIOQu80N91Fc9lbNOoBi+VuZ2ncI0FI/WiP4fsndXj47F5kuoIplIWUqe4J
 ylYTFYp6dA3FmFgwZ+MKiqxXune3d6KMMoJ0h6RvhJ0PJYv3YP731u5Q5JjgTp8Yh7W32XxPn
 zFkAj1+fUBvTbX5nj/fD2xjtzMbW6vPsG68bxZQo4cF5rX42sW9ODkvw9aYeEW5B8IdR240aI
 Kkbsd43Ko5qnr4Hljc57p/o4oxmr/LM2AhLz2/DU4b42C+d2pyy3TE8aKCKPp+SQ5q4IV4vrZ
 +6xownaDfVPDFm0PHznRJe4VYQ28ZtNAyV/ErbvEetGLCCts4Th7TVyFC/av18cF8VgodtJ3q
 TgTIc/ZzqIZD+2JpsJo3/Huc+p+ah0UyvmjQMe4Jw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_080323_741401_A63C89B8 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] ath79/qca9533rev2: Help needed on missing GPIO
 on ath9k-phy0
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
Content-Type: multipart/mixed; boundary="===============0269223976750786393=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0269223976750786393==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=3dr1pF6sTYNXrH=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=3dr1pF6sTYNXrH=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

> Where I can see the DTS? Generally ath9k gpio is added by
> gpio-controller property to the ath9k node. See dir825b1 as an example
> an many others.

ath79:
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/qca95=
33_tplink_cpe210.dtsi
https://github.com/openwrt/openwrt/commit/141698ce8fbc52d253c9207ef46b3630a=
0870567

ar71xx:
https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/files/ar=
ch/mips/ath79/mach-cpe510.c#L212

The actual problem is that we have broken WiFi for _some_ of the devices (w=
ith no error messages anywhere). Details on that may be found at:
https://github.com/openwrt/openwrt/pull/2514#issuecomment-547799576

Best

Adrian

--=-=3dr1pF6sTYNXrH=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl25pjQACgkQoNyKO7qx
AnAbNhAAxF01tHF54SfWtFrDwpS5kIRH/UiPCUAdg+f8qYQ/mDibyEzLEQCIzLcX
HDveZQXh6lIxvak7Hns6GsJ7+vwGFCVmLvEoho4YUg+e4nMRSvlJ5oTBHWVq2udu
8fL2ZcubDNCycBHsfMXnpQls89rNpHhtTcnJ2ZJclaluvAwzLDAKSKDBJTqT3Uo1
XC/AY9GauoVkHnJiojUJGjrwFOw7wXVkQHB9QXZJgYOzxo851J/jLGoXUPCAnTiT
4HpLJtAum2ThWLcYl51DEsZmnFPpv+12minLNeIp9I7KKEXVjEN+dKIREWdYQPqC
kB4PLY1mVmcv9Yu9rz7wWhnkJ3MvLkqAwQIKtYKz1cSNU13yAuxV19+/S7piHnza
7LjpMMXtDk1G5hvLd3yHxuDPYlNd7Z9zYfSE1oeRrHq6zOzaVHn02H5nfSS9Ypn0
D9r5TZ0Fd4q4u/Sr9Ypiqi1fbG368BD89hAuJLjTHcF0Dt2O3mSYPW6IbLpD8gdJ
2lgr46Bx32093+8P+Wxm6zb33WBSpZ42hr9G6c1g7nDKY4kLK5LULBpfaQ7eRJtF
Gi0Pradrco6n7Sf9j6a5VVq+iakKKIfA5+rrogWOLDrf5Qfm4jU+jcim5fJ8g5p0
+KOYbxVVjcEOnvj/9DVTAlNKIrT9GivdD8il9H6bo7+f7oBQFEo=
=5lxA
-----END PGP SIGNATURE-----


--=-=3dr1pF6sTYNXrH=-=--



--===============0269223976750786393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0269223976750786393==--


