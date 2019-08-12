Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000EB89E0D
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 14:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=868TQC/rCdBN/3r22Cd1IaYi5EHsSCD+d064vYNexo0=; b=MrpWk6lcty1oTAlkoqG38QqU2
	3J4oXBzB8tHIbAPwr9rTPFFUBw83k7980tgV4SV3XIajTMV0QwCoSMipFixzRosJK3NHvNbJQvqPF
	3P7N2pab7HgMgm2tPni0ldeFChpUwt79OzAlhVI/hLCuidIRLCREa9NTb5HEmclS+3pgWWFvjBqcL
	P4t80UwMhAI/ZueIsmOroZROYs36e/mI7TxS0rLAdiBd1ifPCLnK9UXwXDd7zl+o93MyWP8wce4Uy
	COYlU7TwllzLS4J6K9OZKuw3l5NIBGqt5Qjtw3018vT+kCxxHodRUGAtVLEm1FLwI6g3cciU4DP2N
	xuYNcaQKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9NY-0007yn-GI; Mon, 12 Aug 2019 12:24:48 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9NJ-0007xn-Bt
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 12:24:34 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mwfeu-1iD8ke2AiQ-00yAle; Mon, 12
 Aug 2019 14:24:30 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224622.0ddaa7f0@kosmio.komorska>
In-Reply-To: <20190811224622.0ddaa7f0@kosmio.komorska>
Date: Mon, 12 Aug 2019 14:24:30 +0200
Message-ID: <001601d55108$e411aed0$ac350c70$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQECHRWgK9NZjHBUix22RzISCgT6OAGHKLF/qJGeNpA=
Content-Language: de
X-Provags-ID: V03:K1:gyVKuCm4NxlqkNuh7KEhP82MYzFWh5HfB8inZp6n5VgybmM5fEc
 ukdXprH7zJctwfzFprthoPV9XVBQeJ7HjLIYRiLFSYSfN7poCCdJoCLQZ7QiR/KzbHmXDO6
 1Su1qTzcoppAmeIYpuNzexApApFtuwZiw2JRb+ZbGbAgfMDf7HzZFep6kuUduL4/9j5gGoM
 fT2PkzGdnxx5UVlU9fftA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bHJaKnHGHnA=:F+sbcG5diMKmQz3e8lU6pn
 rVP+LDLvKPd8mJF/EncTNWAgPneuwEWaArgtlqenIiGiqQ2y10CD7c1DzwI/cK84VDD0s2QdS
 LCJz/geQxu4b7UIIFh3BcUHrLFPmHsYe9MzD16OmknYXBBoJ90bngG8+7u3cKfUIBuCgEEM+A
 NWoP1zK4JWaxp/4/V4UWcl7AF5inxePtYbZftzP070x3Hvzb6gk2Vzsma/t1llNK9cVkAzS4X
 ndIIlXGT8WbL2C6ndesHm68fUfWZmtV739szVVjXxNbvZE7Q/SIrsBpxVGWXL+rip12I5LiSF
 Yr33opzj5qx4u2IR/3zzmUXEZk2ABsgk0yw0YcxERiPpU6D3CY5sN/d4MvIo89g7HpWVGsFqT
 j3o7SVliit9Yqqo7HD3y+vZ4BwFg6p4vhUNMVKxmMI396ZrAd21VQp5wzYHbxNmJ4s3XRC8Sd
 7lPhUk6NZ0rrBrbhGrdBoM0i9rJrpTj/S63gze199uz15AntOyKRokXMjnUS3Vqke0dZQtrxk
 seoMSSDpKhfmPjM+KppK0BO2pErcB+QURswctYpLO+ggQthxxqWIit0mRi/SZnQzcaKvbQHgj
 a2C+2Zh620dagjBwMkta2DW528ACW2S1U9MZTxjKPXcEbcoFXlJjijaea4bs+vGZoceIR8T0F
 riFfdGwNS51V7jcf5BtzbbLK1qxpuf1tD6HhqacmvPr9N9UEE0MtPhTdfzBpYWusV6UJfAbRe
 j2oSZWE5ygntRFz+FnolzlH3VnKtGV3pTEk7TNCz9Ft8nFToFr2xynwaUJo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_052433_699208_DD89F858 
X-CRM114-Status: UNSURE (   7.95  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v3 4/5] ath79: add support for Netgear
 WNR1000 v2
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
Content-Type: multipart/mixed; boundary="===============2759670864514713610=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2759670864514713610==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=pPhNRedcWyymdw=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=pPhNRedcWyymdw=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Michal Cieslakiewicz
> Sent: Sonntag, 11. August 2019 22:46
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
> Subject: [OpenWrt-Devel] [PATCH v3 4/5] ath79: add support for Netgear WN=
R1000 v2
>=20
> This patch adds ath79 support for Netgear WNR1000v2.
> Router was previously supported by ar71xx target only.
> Note: this is a 4_32 device with limited upgrade capabilities.
>=20

Hi, same comments here as for patch 3/5.

Best

Adrian

--=-=pPhNRedcWyymdw=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1RWn0ACgkQoNyKO7qx
AnDQ8xAAxdKnMS2nPC/fzxuuKHf7bcay/cK2qJBJQpmD5v9Ep5+Rod95hDkJrVt+
CM75fm+0537e7TwL2nYuTE5nKRg8WBYy7X+hOGkLxbwb8VBfN4GGCetRNvJomjbd
alhGL4vG3F8ZpEKtIMI4DyveKDku40LEkI0RgJ7CPmQdjtRy0cgnZnVjNj2k8RxJ
ndCVJB5G3FRKyJ0bZ/5sFkqsvRgSfCALsA2m/yHnt86fW1UIpuZSepVdN43y8PMO
iQI+UqMwGifSB+mrC9kI4TmlfndISIepiSEJvvtti4Gx2QgFL/DETK7LiGGy/R+/
F64tLSbhNfm/LgR8ja4AWFB+0MTSPBlQhtbAbU7Gpa+0MGMcKJFEFczvbGmy0lhi
xf/RGjINKRBuYgpF9qEg6/EqoI+Df0lSkhp+eZQlWUIxZ/jgjDSS8dqAP2b3I9lt
EDIe/JV7adlJrUmShQyVqDj2ouJOsrqIFwN/l89c3q9+v5llkJFuGjAegBagC+jx
cVHLUJ9dfHVC3MY4dNM5bqpvxuGAlDXhRMTLn4AbBS9SIRZNUve80YWN+LH/X1oX
CNIyib9X+tR/Dlgfy2N3KtgSFr/loqGSkZ5P5IMcwK8RsnLEkJIFqAtXqoYKcD8/
dUZRfIZbsW0u32Wi9lbWJtr8lMJM4TUXpNTCBA5npadcucO5Nck=
=8i9n
-----END PGP SIGNATURE-----


--=-=pPhNRedcWyymdw=-=--



--===============2759670864514713610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2759670864514713610==--


