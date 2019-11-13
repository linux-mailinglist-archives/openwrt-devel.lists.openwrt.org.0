Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4431AFB684
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 18:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9tZrx9JlN7GT2Bn647zu1nSoB8lCdDTJxdSnZghjCEQ=; b=Qr8pa/YrG6uFeq80YNt3qiCHS
	qGDt4y78bKKhhVC5Nm4J50OwlalbP7go0L/nMcJ7fSMhLlbQ5Eu6udL0YwnLcm6dCDa58I7eGCKAn
	GDs/dk8MBVH/3ixUiqJ+6lvsKLP710CLO//JX3wxg2LcgUUKSnda82dvg/B+vhsS2rCgkL1eex3nC
	C7sPypAcarczCdIsDiunZ6owUbk5EerEDFlP9YbJNszIZb3m4E+noODnvtmI5y9rsTyEC+/wAKAbt
	AixlAkRRM7WaMisol/sZxlD+9ar7RxoLyNBFZmXIMOvMzcsJPcv7CQ8b73+v0ckLTe2DM++lGcCF5
	5Iy0YPoJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwcT-00050F-04; Wed, 13 Nov 2019 17:39:53 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwcL-0004zN-H3
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 17:39:47 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MaInF-1iPjPD0061-00WAmP; Wed, 13
 Nov 2019 18:39:30 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Blazejowski'" <paulb@blazebox.homeip.net>,
 <openwrt-devel@lists.openwrt.org>
References: <20191113173242.9037-1-paulb@blazebox.homeip.net>
 <20191113173242.9037-2-paulb@blazebox.homeip.net>
In-Reply-To: <20191113173242.9037-2-paulb@blazebox.homeip.net>
Date: Wed, 13 Nov 2019 18:39:29 +0100
Message-ID: <004f01d59a49$4d7549c0$e85fdd40$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHVjIjCcYQQHs1av2SxailAmUB6ZAJ1bKmBp3XNOqA=
Content-Language: de
X-Provags-ID: V03:K1:9iJFAvOQOnGM6C1UlCzz7mIlJUHqd7Q8r/PHuSwearGhSqlLXDR
 pvFK9Tcfx/Nndj9gSdOm4C9YwS+uJWfhk0SB5n+v87DCSvVatAh8PrvBNQ9nlPyIYYtaDEd
 jvyry/80d8w+N1tbuHJXqDz79DyeCpLVnSCkKELWqfcuyLWYUPz3aapMl02G6cvyglD4Tta
 BtLPmIL9CgoJbhiliAoBg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2KdiOcxKXqU=:cDUqiKBHc1rzgz41hzSB/u
 mdw46G7lsKieC79ESKT0KfsnUgHrc300Ygj1FaLhTn8029kf6wBPHZZq4XGtvlZ85IHyIF8g6
 OBMM2vlMvRmk78JVN6IKiviN+t93eGKSOXfFa160XEbzKWu1cysrR8zlUxhqqX7CQD+q0+O5y
 F+vW96jcWbFY7V59Ky9M4wWx37WQJnCm7HlRz4pcfPYKolNCkhAjif29NENl9qOoeT9KzFfAY
 f9NB+lRhDCM9ru9p6O21/8yH34ZItRio02N/X9j7l9354E/sLx8cLh5Sw/JYBBBRdcYZZfrAj
 Y9V8gfcedgNKl/6hXABYkX41mOPAvNAQEee801KvxAy8dzqKZWxnwQWMbxiTSbCdtdsFhmlGm
 jxjvqpC72Q30RprMt+x8OSCcQnfgltXEtG/BNp6Hef01Rsy4zQYPm1a9ULyiAGjFvgU1I3JA4
 Q0kxgCsRHPbxGFa3U7DMOVBSMuOGAm4tG7xcJGbqXW1sWBoiCKKFQfh5Z7UOPypPb350RM2gM
 vF58EuNmaHSaotrUQpBynpPrGVpOU1VGtybZaEre2N/pBqKxR3jxxh1CDiSV6ws2KXNqizXyv
 pkMoi2vbkgkz1aKKxU2WSq6vB1lzJoZoQEGQopVopmIwwTiRMERTFuNwR6/YnkMC4xMpPTGEC
 WnxOYwC5p775xrR3TWQspseGvg2J+l1xo5d69LMtsEkHwP4Q9xMuy0EKPQ7PgFmv6Dx+IFhX+
 DkCrIfo19W8NtegTw5f53VFmaUVumjZV0ZTLCrgyiPJ/ooy5O6SmQwALEVuK5II/6CgbSUAs0
 I2BMlk8I6sKbYbIb/MnYx6pbVzn2xu8tVlYlR5NwzZIxKC4r9EUxlioC9ekowT0/u3t5615j+
 LV5QJb+3jbvrF/m4QnUeE7lEwY5MhikoFZhgESQWI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_093945_855663_F9FF11A8 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ath79: add support for Netgear
 WNDR3700v4
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
Content-Type: multipart/mixed; boundary="===============6292415710882269500=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6292415710882269500==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=mF0xOqtPVwKn/Y=-="

This is a multipart message in MIME format.

--=-=mF0xOqtPVwKn/Y=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts
> b/target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts
> new file mode 100644
> index 0000000000..eb1ad731c3
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "ar9344_netgear_wndr.dtsi"
> +
> +/ {
> +    compatible =3D "netgear,wndr3700-v4", "qca,ar9344";
> +    model =3D "Netgear WNDR3700 v4";
> +};

Indent should be fixed here (-> tab).

One could also copy the flashing instructions to the commit message, so you=
 do not have to search for them.

Both could also be done by a willing dev during merge, unless there is more=
 to fix.

Best

Adrian

--=-=mF0xOqtPVwKn/Y=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3MP80ACgkQoNyKO7qx
AnBtcg//bO4YP2RMq0z9MqS8gQ6VikynRQoXwOWj868mOOSfqCyKkODsNGYe4kye
GatuHQXebXlH0stcal1ECrioKGyfTxxCl+DCqOTISOrgOxOcFKppSZaJNg/229rF
EeBX4YJfjAAw+Uz26DHqPIbbF2QNuqgB9jGr0Y4LrjumDJhkAdZqXUbStTIdjZ0Q
Ne2IMzNDRMGQU9Q95utq00w7j9DoADwTj+K8ayPtEtqW6oh8Q5WNsaCagxhYyikE
Uj6E3cFuprXwnR/iCStJrcalaJmthccSIYPXoxoqJXY50L0mXh2h7/hjWSMvSCDI
VKhnYn0xrU0ci7iGo9T2/AgZ3j9jTe4scIGXgpQ9tze/SIq+syNMvbSni3IIk79k
uayhRtj/tKS01wo3feVJeK35kyxI2lPh1SphYgL0rHmk4YGWm7vwDQeVNGCwmKJw
hjou/OpwuADs3Vw1tk0L1iuj8LcA/mZJCMdJhZ+lhhSNni9WnDIBPAwI/sgLQbfy
WpQZTZnURC1KN+eH2C3w4nbl8KG8bULZB5LqZqvuzB7qRs2AiJOohMI8GePCfbSL
qmoenBiqA7LdgJh12y6wh3+dhaIHJRcitFWffd/V6zrrCU/rQwKR4XjCaezWstuq
Hh+gRlBZVgdJYijgmPnRm57IG3jso5NYiOaSnvC9PTi/Hcb9jlI=
=l4lg
-----END PGP SIGNATURE-----


--=-=mF0xOqtPVwKn/Y=-=--



--===============6292415710882269500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6292415710882269500==--


