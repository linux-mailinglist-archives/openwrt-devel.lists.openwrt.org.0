Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5241E8883
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 22:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vdtfm49seM6GITyaUd9ignW0OAH3TC82pBe7Ji82fb0=; b=ZPwgBB373Assojn/vHuZlmkBz
	8sy8hwzZY5paAtq7+C7PPnyqq9kfbUhZTKR86vTWVwl709Mkvz1q5nqD7LmHQ5v+WSMsxGtQwf+ZR
	l9bTCsqqau6veBPLIxt75Iy57XE+Rlj5nFkdGyULAS2sudrQATTe9t+FKZwzSBhEOgdU/Aw8rrL93
	HStG1BXJom0r8UT1vUARFeGt7P81Lrqd0aGb7bEnVTexE+ANzhBUCvGxGhe/7ML7mKSTJ9vE9KufS
	DN8lhsnt0/C4MUGmlPeT6gw6sA/3QZppE0/UVsTaX6lZiOTig4RdMAVgyR/rUH7aX3WyYFuDkqomd
	ijokmFjMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jelGc-0003GD-Jb; Fri, 29 May 2020 20:06:10 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jelGU-0003FV-2I
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 20:06:06 +0000
Received: from desktop ([188.192.133.27]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MG9Pg-1jmRIZ0oMW-00GacO; Fri, 29 May 2020 22:05:59 +0200
From: <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>,
 "'Adrian Schmutzler'" <freifunk@adrianschmutzler.de>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-4-freifunk@adrianschmutzler.de>
 <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net>
In-Reply-To: <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net>
Date: Fri, 29 May 2020 22:05:58 +0200
Message-ID: <019e01d635f4$92065830$b6130890$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQExd1SFNnzajrRSninYrjkPzRaXTQGNh+MSAgy4bU6p7CMuoA==
Content-Language: de
X-Provags-ID: V03:K1:XX19MJdm+8YTDfruKp9ZKusS8FiZQ1IbnXkJBRMVEMIkS1hEmT1
 gYd1a8Ni7gBbBnf/1V9TEEyj8JpInjB1QGoEOb9xdY9XpdMLY5bG3z2hbYjN8MiWmHKoJcf
 UUM1ysa6oW2eCa29xOgmMAHyHsSOXO3VDHlzHzq+Dh4gyuwJ3xIMYPRjfmgw9Nbdu/Vp64y
 xhDOMwujG65bXoPTNIwHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vEkRQ1FzTAE=:dLVcgUWdQtRV7/y9UShRmD
 3sHLzM4kbtS8r5F5D658sKBxjz8YWMJfVg/P3Ux8a5TkxMKmAZlZgh9eo4VVp3e/Bpm/9u/wC
 Azt0oexFrSuO/Ys+DPOc7kp2X4T+IWiQnioj9o9UD7MexVeVbp2BC7I8H9Obf+sIIljtWW9jK
 ckvPP4UCVU/9fyFveNZfcvT0g+K3y7T3EoXrbiCNBd2q3E+qJdn6W7kfXtSTO+tcXTJBByK3Q
 heNROAAQEbMHesmOjupU3u5BNG6XBq40MqLTUJgUt2eveBR320COzhyscGWailBjSujKuAxA7
 Cewusjl+ncgGkysdyOe8UN/AGTw+scgToTqspqGFioDT6Kya2A7PqN9nca7k0ByoomxcSPdXT
 6NlQjSCwS11EaQr6kzMP4JP5v8J1v4Dc0YblPPR6FlBAwAdHeUYA2jxNeKzx1KzjN5kxNNCYK
 UHTBaGn/4/XYhqFtrmQt4/Y4lkg+xXa1NNFQAbYcDzRs1E3m++r1iQyt8tOn3BDvst5d0yAxP
 WfKhcEtFsIYOGR73hXZvs800KAlP8a4y1gOKsWsW3UhqeF7pyOCI2bB8yiF5OU36dRRtKEf1X
 EgY5AgTB91R/VPmnjDip1MUhGL+HZ4Slkvl+w8/65oCTEsM2NP79xOkSt0YGsKtG2QoRyXGuQ
 xSYeH1DIsa1/SHp7yBM9+pLs3/t1Eacs1DlVz3F3QWpMdUNnncnWEl/6r5rDB8GD1Z1xv20A3
 /s7tT2lcWeZ0XLx9FS07v5NIXit17UuV8++HEtYaEcRTWnMQrBDhjqQGGXS0R5s2KQ2RknXFM
 lKYay7BZhg7udbOo57AmM6iVXwRRx2tPyVk+DFVRpD/j54s9jauQ76uopDN8AwY0rJLlAMj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_130602_401872_559A4397 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
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
Cc: 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============8536946673343875190=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8536946673343875190==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=qIPBIQUjRozQvg=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=qIPBIQUjRozQvg=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> > The prefix "DEVICE_" for Make variables is only used for per-device=20
> > variables with the only exception of DEVICE_TYPE. This is misleading=20
> > as it leads people to incorrectly assume it can be set per device like=
=20
> > all the other DEVICE_* variables, as has been observed in the past.=20
> >=20
> > This renames this (rarely used) variable to clearly indicate that=20
> > it's not a device-dependent variable, and stays in line with the=20
> > DEFAULT_PACKAGES variable.=20
> >=20
> > Note that there is also a (single) package in the packages feed that=20
> > needs to be updated.=20
> >=20
> > Cc: Linus Walleij <linus.walleij@linaro.org>=20
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>=20
> > ---=20
> Default type of what? IMO "DEFAULT_TYPE" is significantly worse than=20
> "DEVICE_TYPE": "DEVICE_TYPE" may be slightly misleading, but at least it'=
s=20
> somehow conveying the information that we're talking about types of=20
> devices. The part "DEFAULT" is also misleading in a different way, as I=20
> would expect to be able to override a default value (for example in a=20
> device definiton).=20
> The variable is used rarely enough that we could well make this a bit mor=
e=20
> verbose. "TARGET_DEVICE_TYPE"? If it weren't for the busybox config chang=
e=20

TARGET_DEVICE_TYPE also was my "second-best" idea, and in contrast to our r=
ecent similar discussion I can well live with this alternative :-)

> (which seems hacky to me at best*), we could also go with something like=
=20
> TARGET_PACKAGEGROUP, as the package selection would be the only thing=20
> controlled by this variable...=20

After all, I personally think that this DEVICE_TYPE/TARGET_DEVICE_TYPE vari=
able should be removed entirely.
What remains would be the concept of different predefined sets of DEFAULT_P=
ACKAGES, which could be indeed solved by something like
TARGET_PACKAGEGROUP :=3D nas

Or we just drop the variable at all, and do
DEFAULT_PACKAGES :=3D DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.router

at the beginning (!) of target.mk, so targets (effectively just 3 of them) =
can just overwrite it with

DEFAULT_PACKAGES :=3D DEFAULT_PACKAGES.basic DEFAULT_PACKAGES.nas

directly in the few cases where that is necessary (I'd rather use DEFAULT_P=
ACKAGES_BASIC etc. as names then).

The switch of busybox could then be implemented separately, which would mos=
t probably follow a simpler attempt of Linus' separate patch or something c=
ompletely different ...
If I understood Linus' commit message correctly, the current solution there=
 doesn't work properly anyway.

Personally, I'd prefer one of the latter options, with DEFAULT_PACKAGES sel=
ection separated from any config symbols.

Best

Adrian

--=-=qIPBIQUjRozQvg=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7RayQACgkQoNyKO7qx
AnA7mg//RWKNcUDtWk09DWxhFiBMHSXKzOqr7JQoiqW/wp5LDxHgdJ+2WmkPdIk9
40C6QLqH5uY28Zn1NVjtbnaKaoFM5YZEhBCejWa9bYfmCvHiCrxTHCpSprFOwAhG
1oqnNro3LZvZjJSUd3/qVG8NCJ//LLIMIoXmGqAG9BfVS5pVn2YAsmUGndxCG7tw
KrK/iVJ6NUBnYQI8/JvXaqi8u3gmOLZy0k/x4LKbeoi4W045qae4AZSfaKVzmw2+
qeM2J6ClrEfwlxDmr8VhJfB8VDse9Pd1hLYA4aV/1L50zICW8yMKQrshCcgMatWP
Uw5Dm1oMcJuEruwC2bZI06+Wj0G3xXq+MI1G103XZYe7x2Mh3QZXC5Gs0P6sBCLi
qO7P/+5DFjq5nk9CDVixGGT4imVHfxMB99lkZMBiU3V0phRpW2BcpK4/U1XdpJcY
NuoT8xjviaJ/doEgYbTZHy5kek6sXfV/xzOps+Nd2p7kQJQsgaAuTRNxDmdkAjGh
fSj970XNFSOJCjIG1zlmcasPw2cCShGumG+E+qnoa9fpcMcy3oNRka/kbThpbELL
QCrNftQRp2tqqLJlGCe2rkcGgmnR0mVoFUqDaln0TMsW0tAYXtN8FaJ8fvTqem4t
yJx7nYQO6CLL7iRDYmzDVXSBSLp4PMFWyQbDAOe7Rt9EIm9VkYE=
=2f/p
-----END PGP SIGNATURE-----


--=-=qIPBIQUjRozQvg=-=--



--===============8536946673343875190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8536946673343875190==--


