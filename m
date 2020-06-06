Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2411F084C
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 21:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KRKKgKT8s4p6OsUkhdzSsnw2RXiTEB2/ldlaIXkn1vI=; b=ouAEZi1AU5Um3FP7Y+hhntP2g
	xrZYAqI5blKndkVkBAJ70U+whHr1+5vQgxq7D3LWxKUktA/1p/NeVnC6BQP+WU5ANofxVI0Z3eUSM
	k+Fwah+ZT3W6r/b5R5w6l/iMBSfWpzlbbCAQmgBs619uzJuFwVDueH0iOlHLXIHCDAifjLHn28JQD
	NYgAfjuE5GcLwJQqqdJKDrzL5rgggrmzeoJDIfi3PQT5GJMy0IuuCQoFYkIRyn/0ln/wO3q9Txr01
	uYPTLFpatpdNytmPuFDlrZH/u8CzX4Hn0HoYsolzipCNl+zLOU2Uo/l4vaVT1U7O/qoBuoBx1TyuG
	vVx6s1rdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jheN3-0005zE-7Z; Sat, 06 Jun 2020 19:20:45 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jheMw-0005xz-MR
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 19:20:40 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M3VAI-1jh6P40CzC-000Y8q; Sat, 06 Jun 2020 21:20:32 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Daniel_Gonz=C3=A1lez_Cabanelas'?= <dgcbueu@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <35386960.F8KvOtZ52M@tool>
In-Reply-To: <35386960.F8KvOtZ52M@tool>
Date: Sat, 6 Jun 2020 21:20:31 +0200
Message-ID: <000101d63c37$8bd331b0$a3799510$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQFLyooMPeSkfL+IxfgIyNAuAF4cGang2OZA
Content-Language: de
X-Provags-ID: V03:K1:vdRvagosTWssBSBks9YrsbER+H6SvBngw3FTtldDRHf3EjOXFMl
 z2p5zYs9NGxmJyyndGYViOpqTZ9DEGphOEHjawmMQI5UCa3ujhlcrBBhmrWW3BTZv4SatVW
 IAIriIqSBGarJAfDRxlMnBO2LrY1n7Rzj18iWBdNsx/e/sXVaOgZ9110WYglbIydl8B/rKW
 6Xu8PRWVSL6NFIaNxOFUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+nmXzODxdkc=:Tu9mLyCuarBUs1B2AQLuAu
 avYHRo2PSIzngd7+PVRQ/ImA+IERhyam+9OjgkvpqZESqHa7nyt3nZhb6Xqq5YOzl10Lt+3wA
 7d1nzegNapKT5oo1ZZatuCMLwPT2iqjc2buooIGxRaEIbcYjtd3FkU86B+rwtEvWtZ1P8s4Rf
 VlBECLdDN2zZfa2B3BZ8aeanxbHiU3yv5ej57hshhP3Lw5olR9eR5ZqijSxiQq2HRt0tOXZUU
 MaJOcuC6FC01T81XUyR736IG2eb/o3bVVyjBzh78yNli3uFVRqyEexUpghJvlyGK380YLsPJC
 ts8PJCZapEsOHDsATl3x0yqhVVVt4Mgtdq+qyqVWhlQlIUQrusSvrckEjDstT3StlfJt8CZYU
 T83WDId40R6aYrENZScppunTXXXTfQQek022DH87oiRaRQ60i/fv5+Jj67Mlqq2FILSqZO21F
 yqGUK7SWvp/73zS3elue9qgB5NdMa8cwxmoPJ6T0wpXZ9BxhBlyqIRu2jcIzsg+5L64G4nZLr
 ltBEt/oc58TDxVCEVoh1NMm9WN9pf9+xrHC+zMSmOXXzhv7hVw4Qu0COzqKmbuKhzLNw6D6Qq
 DT6PMbg5OnsPM1kFPdpPEFZ2nAXE+RZPzXkIj+MQ9M85DVJtQo9vTWUtGW7SKXnr02QJlNxld
 dwMzI4bILodQ9flbfHfxfnwQDDrstcRXUbPjVYxN6X8/RwudkyB7lKldHHbctSdlp0OUnOOEs
 Ty5Ay/+1U61Qhlt90qJP2TpKUw3vNRnaz7Z5ieb16y7gO0nx8yI0T8N34LJ136thhvkiNYK1y
 zQmYENVRGXhFbucrMwqOY3MTV5HufqWb4GmOEkr+B2btrBLSqRmbgBu17EqZbkjiZv7OyMy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_122039_022925_87FB0685 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 4/4 v3] bcm63xx: add support for the
 Sercomm H500-s
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
Cc: noltari@gmail.com
Content-Type: multipart/mixed; boundary="===============7091505573010052508=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7091505573010052508==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=FZVpAyqJMT/nW/=-="

This is a multipart message in MIME format.

--=-=FZVpAyqJMT/nW/=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

>=20
> Signed-off-by: Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>
> Reviewed-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Reviewed-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

This ("Reviewed-by") should only be added when explicitly "provided" by one=
 of us. I haven't done so so far, please send a new patchset with the Revie=
wed-by removed ASAP, so nobody picks them by accident.

Why did you put them in the first place? Is this suggested somewhere?
I never had a case like this earlier and now I had two in two weeks ...

Best

Adrian=20

--=-=FZVpAyqJMT/nW/=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7b7HsACgkQoNyKO7qx
AnDtTRAAr7IESGNbFoOiIhRSVyiDzLufF841DMsZ9QvQC1nhUY7YSfeUnBe4gI/L
0COSKkfB9hi2Vc1vjRwDMDObcrFNDM4jBp+fismpEq1CJRChGJyRiiZRWUwhUEA9
MKMiH5MMw6sBkM0vREVCajK2Dz2JRdlhgMhxgt8j/FcbHVkWoL0CjEm4nRI1a9vs
fc7+WeusJW4HMrnJ9kXaWlOOldnuhd2XChFOtvmEBeMIM8Y2v2b6CEDIB5fUeeIs
qseIh+j24RJgVSDJ1lbfyNFHf37TIrQDb/EPtMP3LGi+F6lOfaAlOF2z9E1KMmZz
kphYRMoZ0NvMmAQY2RBmOlKwuA0cvSeUxmAzRyWBjy/DjKisHgDjmCwzDVUda6Dk
/aWS3Y93E3fgGy1URSKVDc1lIqBNfyc8q41hcz0oLff8mjdvS3KdOzlr3N66r0C4
U8z3pGG4aDBiEuY8vpkPdvZHUyFOB1sDRfoPeJE+NemH7MsSN0bD8AtJv4jUsAIn
pZbzH4NMcVerYE7ZuTddL3JE1JglIk3OdDQ3IKl52xtNiHNZ7UYG94mV7m3lKlnA
mbDIox7IlfHn/r+7LZ3KLv1nK3g3pBcHzY1wDOyO8A6lyN4yP2xnk+bRS5DNmPGm
7J6KJaAmGLJz46BpZ6/jWZmNK4kEUc/FpqIXovzKqzZM7FxEwZI=
=A89q
-----END PGP SIGNATURE-----


--=-=FZVpAyqJMT/nW/=-=--



--===============7091505573010052508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7091505573010052508==--


