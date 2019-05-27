Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3352B93C
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 18:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c51aFJh//fCqSGV+lnc8UUXljfIX8Sk6BVmGIS7hL+0=; b=GiWfK0fB71yO8Y00SVahDDV3j
	Eba5VHyW4iZ1n3v1oqRbDNZtvO32eEP7w8lLZDooIy82I7xInufkcohUQFt5PnOpIZb3DE3rhzFZV
	pbc5ed//Gr3umd79fcqzrTVbRH7F8wBhFGwp5eon2w4vJkstnvraqwZiirN8QzzNo9dQpgzjhpFRc
	l05RTBbYtBUSa74srMxeHNgp+SSnSUxy3LqPyN8AdSuFu4g0d8SIY1sNWh5qaD/qVS0CdRFruS7IJ
	RAsNRqnrKRR1zREOYPfkSqXMxcZmhWvWMf1JaEed7w00ZtC9Eb25qs1M21jEh0LoclDA8JQlLUr/Q
	kI+wwKNSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVInK-0005eP-Mi; Mon, 27 May 2019 16:48:18 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVInB-0005dj-Gg
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 16:48:12 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N3sye-1gVwiC1xfE-00zr9S; Mon, 27
 May 2019 18:48:04 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'camden lindsay'" <camden.lindsay+lede@gmail.com>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <20190417134552.9294-1-freifunk@adrianschmutzler.de>
 <3153692.KaT8f5YDfS@debian64>
 <8a272c0b-4f75-df8a-f2a4-f9197ee9f7c4@david-bauer.net>
 <2243041.a4oj9KbRke@debian64>
 <912fd259-fe71-3446-bd05-838bea125163@david-bauer.net>
 <005601d4f900$da3d1760$8eb74620$@adrianschmutzler.de>
 <CABkW7JNC7uNqx+BgH80WAywsXymxEfwzFA+YRSmsYfDiRZDLpg@mail.gmail.com>
 <007201d4ff4e$c6820a10$53861e30$@adrianschmutzler.de>
 <CABkW7JNc+GeMHKna-fWLDDCWND=BhcT7fCgC+NRLkzQLL2gb4A@mail.gmail.com>
In-Reply-To: <CABkW7JNc+GeMHKna-fWLDDCWND=BhcT7fCgC+NRLkzQLL2gb4A@mail.gmail.com>
Date: Mon, 27 May 2019 18:48:04 +0200
Message-ID: <026501d514ab$f4197590$dc4c60b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKjPi7u5lBoryOgLv3WXCS/yUXMzgJSngsKAeflfosB7OewiQG/UGe2AjQDHuUC9id5OAJO5LEFAkeRmZykVZ/bgA==
X-Provags-ID: V03:K1:8W3nJ5msE0QzmDXckPTwMG5PtaTKIWY+SP4ZD2PGsfx99MO+SOz
 zRd76476hl8UQoiVbLIUDMHl0AUBHwEQa8ukd7XdQhCpWANSULv0L530JJ1sow2rNgOjXCC
 XA2KBKhgqzpQhwr/Kh8WXv394q7fmVJbI0fX2sXMcomdaMa21TwVBpc1efAXjdQKwF1Cbro
 KUMWiEtiK/njXc2WXiIgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3Ix7ZSOgsJM=:QsIWKogNLh7OFjMPl/2vt1
 8NlYmvLaaOrqJRf7MfVZeaMQUaC1gWaa26uQzY4aT9oS3WyE4wjAFJrh0PcWJo2AES1GML/HT
 vLXRIUn5wtdvNHXlN5iF0GytaolqW8aU6ffOSLp5xqOivwH1pl8/7c7cI+1hJGFIj8/Qc27vv
 Ofk/KHSRaoRNwtdbuuPUPh1Y7TRvRqnecZ99uRWOPEGNPsgEAGm2G3sf40WFeDRvS4VFXt9eb
 xXfD7NLd0rHK94tRDa6ZAU3PVfMxg/CRCsQGYb2ohOF7pVzhHfai3u9Dp1HESMNCtVowfJN9C
 ERxkTCkwQ9jcg3hw6oqYRlllzos9SgXMeXl9uPOfYiOgny4Wdhh1Ztfs/4UIGY2dtzNDL+K6O
 bjpy1ZrYpHE/SrElt4U83g/NRHpyxp/+LsBIa+tIhoFFnDqU2iqnTa3vaft13sBhIKcn+viXP
 7o0N3ofIMeRkge7I8Z0T28oWZRN++SioHd7QOj38OmzBHvBx+bBGRiBYdHtiDFaf36gdr5iSe
 kElG8n7nobhDAi/acnJp3SlgdjRzLIxTimd2MR3yHZgN38Fw2cd65615oCF/fLXO9xWOqU5v5
 EtHkseuo+V/CweE1VKBY/XaaSImfSohPzmrgc/y5/iL3S/FeIuSAnp80nIBk6N55Nu5lpwNxE
 FBcXWE9qq0/3twgLiGR/AnSVLt+F6G/XzmIEA8pWc41HjRduvRoxZPvLLCuknVrIYwOmhWivB
 BqYRblgIkLbGskuJkEXl/uyn66zjaA5vebNNUYDR0M+U6/Zb6oGsIavEUOk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_094809_851892_600436AF 
X-CRM114-Status: UNSURE (   5.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for Archer
 C7 v1/v2
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6126836704102844925=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6126836704102844925==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=qVyydKlacp3dr1=-="

This is a multipart message in MIME format.

--=-=qVyydKlacp3dr1=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of camden lindsay
> Sent: Donnerstag, 2. Mai 2019 05:38
> To: mail@adrianschmutzler.de
> Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>; OpenWrt Development=
 List <openwrt-devel@lists.openwrt.org>; Tomasz Maciej Nowak <tomek_n@o2.pl=
>; David Bauer <mail@david-bauer.net>; Christian Lamparter <chunkeey@gmail.=
com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for Arc=
her C7 v1/v2
>
> Hmmm; well, i've got this; Fresh 'firstboot' on an archer c7 V2, followin=
g version info:

Thanks for all the testing!

Looks like there is a pull-request addressing the WiFi fix:

https://github.com/openwrt/openwrt/pull/2082

Best

Adrian

--=-=qVyydKlacp3dr1=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAlzsFMAACgkQoNyKO7qx
AnCTDA/9EC8MyFMW06nYwpc9N9aF5bS/GvgktgPlLraT2zdZBFoyfro5k6nSi93C
FJgmNwFmfeBcbXPubZ4bqC8JS8DFK/i4QHbWpYbI6QTiU6igtP0dDzNWG/sjXTfw
Conx5wDC45d+PgyXTo2bDVJwMR2UVPK7wzyXS6sy3cGBxLJBTNNTuDukQWvIV9PS
inisBTRrX1aIskooTPW+rmVhXl+9irV5lkDXD6kKMDEW+ObHAjyd2mCrT5DyBFrQ
zVXmgQlHzp1xKVLYTnKbUDvCuhVW+9aooI66mIll2UFHgM8BUlSQu81OcO++cfJV
YcWYBoz63SfvTcljnl9gi5V3bs2Y4EIbPkwtxn1iPw5Zv+WPtiqVPcyMOP2adUun
AkmyRSeN1j6v3+niatX8FqEaRli8DBnXmJlqcoxOADrxt1SfEuBFGPQzhOZd1bCF
ZOKxx10aZUp1YiQEfUQT4kw7fPLNY+U7c6xBjnuzggLbMSPxrK6ebLgPY8F/UXDG
frHNVgTFpkmm+dAkVBlTbRdCA+1YQZRtWWhulhs4bZelDF6GQxqMAHQFFCaGglpQ
6co0BtkG+718VFpkdEFZ6jxbapXBaLjTDWLg5M+WKgC2FQIEtXRbmAO7mgveouak
kVGmX9cxwhI7sFvZ7/Ans5VMLJDRNCcFAmIJz7ZiXr9LobyFI70=
=TnsY
-----END PGP SIGNATURE-----


--=-=qVyydKlacp3dr1=-=--



--===============6126836704102844925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6126836704102844925==--


