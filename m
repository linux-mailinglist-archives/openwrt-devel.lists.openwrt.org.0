Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59544E0DAF
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 23:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mXoBlNim2WLKbfV3RJsJqWadZZJVJ7yEpvZd6QlPYvY=; b=SFIMnWHfX6Ix/jfUrsCf3V6pD
	5NTPkxFaFvcRIHsZNOEW3Y/Kb4ZPakaE5s61tujsnM0EgF0oauCaR1xzni6RDMb1nK5gAVUO+ZjTr
	vtaJxNiocABRvj6LOpPrxDhKyVHgdyg2DZpmO/lxO1UoepI8KpUXYh5DzPxUw5X5/iWj+MCTh9vS2
	HdpIYUOODZPS8qgaM7ULb6DrdPO4z0dguFeosgpLFGGutIViykuagN6+qdeEO2j+QILYfE1p+oiPn
	GcRBNurDPJMvUYg+WHZeZSTzDde7s0tG8r1MXWHtHduywYHRrvVBpqbuRCnRjiB4gD1lJ/J3fZZpw
	CKeKKKp8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN1Sn-00079c-IQ; Tue, 22 Oct 2019 21:13:09 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN1Sf-00078P-2l
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 21:13:02 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MbizQ-1hk7wJ2ZXK-00dFis; Tue, 22
 Oct 2019 23:12:53 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Andreas Ziegler'" <dev@andreas-ziegler.de>,
 <openwrt-devel@lists.openwrt.org>
References: <20191022204429.608380-1-dev@andreas-ziegler.de>
 <002e01d5891c$14b5b540$3e211fc0$@adrianschmutzler.de>
 <ad3c46d8-2322-14f5-9b3d-7355a57d3aa6@andreas-ziegler.de>
In-Reply-To: <ad3c46d8-2322-14f5-9b3d-7355a57d3aa6@andreas-ziegler.de>
Date: Tue, 22 Oct 2019 23:12:53 +0200
Message-ID: <003e01d5891d$77ee23d0$67ca6b70$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQLLNwpautkagm05UpEM0GzGk7Jf9wK19eQ5AQpPyaOlXcnYsA==
X-Provags-ID: V03:K1:aSg182NgyZXt7ICypF8KGq7Q4ocXnQYLTr5co2ap7VvKeWtQ1ZR
 EDo8bsSt3TJFER97OO92JVX7r1OnPH+/3uFd2Q4Duvw/ZaWye8YVVjoDs+NmmDwnXgMAqdD
 miRDwJDiIsqPZ+0n9OdfM+rC8cchz8rSdmqVWG9k/st9xn2ATIQ5HiluyeOtc3gya5tuDfC
 Pg1y3Gg918Fo7fHT55x0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CPdbmboMBNY=:qRmsJH74xjoC2fTnhhj2Lm
 kngo7jljy7FZFhsolJhRlvXGZFZxyAnj7eM+mkABdNoPsuR1TEGOcgrPlti9vLibQg6QRHwW3
 1GsZx9Nzm1taK512rYi96f6Lh9EDYzk9msIcBrTfXRMB+UA8nPsyyioSxZAvsSEJF4iyCFKmL
 0C6Ua9PQXz1wAWIs54tpjxNhtMlWquN3ri+tDE7Q5Z+wbq3Xg5kO4yAiWIeAaQAINJsPvXhoC
 j1OmLwRRTwMejZXVoml+tEUgTlIXu2+3YYJcewISLGkXfAt432hPAzhnUgwEeSrqnsZVcPvS6
 D1rPvCKKoXeVOSgitdDaIaIj8QpoC56845lqi85ZQ4QOHNp1IdL+ar8h84F4irqivvd01osU6
 OwAyz+iDxfJXXyFtzuTAEA64vgOyaWUJUUrt5DB+GXXU3vLzBMls1KE2RwTf6s5b0lJn+Vnbz
 wEvH8v0/YhF1HLBQftmpWC2YLilUuyorbbuq9+z2K6SstCw1FVkkHZ8nEg0NzQZHRwTgKhwN8
 MvsUgmPMgnAho6GBS/leRZeNckX7b4lmlpbG0Q+N2zeKUBLGl/v4ReeYh/DbNh/FWcq3L+fYH
 Rxh3Lm2ellAPPUZajwmB9k/6dYx8RMmGt8wYI6P66NzAiIDNuFE4RjnwZ2aJjGOQUqcJoAKWt
 7VqpdI975PAaUYQrqsk7ZCGDpSyDYZEo/ELpz80uqt8y44E61ZB99E/jJt84eUVj8P/182AP7
 5gxAmb8phEs2OWPRFJtG8FLIOrhVNtgqLvDdUTBNYSi/inmtIhvBamUy+XE0D72le8gFNUMHE
 qVRba/lrid+pObmRXK1P/p3pCoM/Ol4QgiZbFyMvjoSLFlZPp04UEzqsqK6f8XLWwj+VxWa3q
 6L5Sm1lOLAB9Psz5wLzIE+3ighMSeMoMh++jzcxEo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_141301_420539_B34BBB65 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx: add model detection for UniFi
 AC-LR
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
Content-Type: multipart/mixed; boundary="===============3776406543348135473=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3776406543348135473==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=C1U/anZjRVQ4oR=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=C1U/anZjRVQ4oR=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

> -----Original Message-----
> From: Andreas Ziegler [mailto:dev@andreas-ziegler.de]
> Sent: Dienstag, 22. Oktober 2019 23:10
> To: Adrian Schmutzler <mail@adrianschmutzler.de>; openwrt-devel@lists.ope=
nwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx: add model detection for UniF=
i AC-LR
>=20
> Hi Adrian,
>=20
> > Since this is ar71xx, where vendor_model scheme is not used at all, I w=
ould prefer using "ubnt-unifiac-lr" for consistency.
>=20
> i don't mind.
> Do i need to send a V2 for such a small change? Maybe this can be done
> if it gets merged?

that depends on who will merge it.

But since this is ar71xx, I would make it as easy as possible for committer=
s, so you increase the chances for the patch to be picked at all.

=3D> Send a v2. :-)

Best

Adrian

--=-=C1U/anZjRVQ4oR=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2vcNQACgkQoNyKO7qx
AnDBOw/+IHY0iNVF/OiBc60A/3Iyro3UpuUYjgU26GVV6gdW3P92tpd39muLgad0
C5RPdOKxP28tdq5/TRqHssg2LpPlbJMVFY1/TPk9UnoUVXA+1FXj/2CIvAAcAroe
LX4RT+wHIEWYy3PZXG1/xjGEGlJEKFw73UnlzrtWL5P8/nr8qd1cOfu3hElpGMHP
arhLhEYUaOJSbbhIhAPn0W6XA4TvBdUG03Df8X6v11Tuv2V3QrvxYhrcStVvNE9j
wTZbnO46QWE9GkFPJ/ANefqsizZA+J6VUHhjR2pSWIBT+4hDwOLmS2bvHK7yzjjM
0OviV4iwtRH3Qakv6KnymMljbIQ4hPxGI2JB/K45li+PtnxOVBGYvsGOeDCaZ78A
f8EdEwrAywbe66iWcWC1H/4/0dXTr2CTcmqALIlT/jLON8cCQzzGdcaKrV6QufHw
XbS1ACpWY/q+atLgR8j5VYddPh4SgoP2ehpqC+BgoekcwLfFjOguxmIxmM7OUoC6
MjpssRWh7j+k21hvi9WNh98OxiN3eZkns4w0SwKn59RjOi2NhBSM18mo/KIjs8Km
cAPiEVPxQ1xEQEJN0noNmhU+TlYLxfRVG65cqnVysOO6fRmCMZJJZjW4+5hxY0y9
6xaeY0lmw0dHOA0V1V2TqW7msGfrhljnh+d86/PBccOb6egOxbU=
=CuiH
-----END PGP SIGNATURE-----


--=-=C1U/anZjRVQ4oR=-=--



--===============3776406543348135473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3776406543348135473==--


