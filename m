Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C1B89E42
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 14:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y9ZDEHyF38poHikVIO9jx5xILbJ+UPgp2LCpSZMymRU=; b=NnELHM9X3TeaJAIFHohKOLug0
	4cS0lOzRpYH4XMLgaPt3/39neYut4w2xO/9UfyS2mizsbc2QGWRtDgSmYpdbUVOuPBG/6LsxItn31
	12wLye6s+ojKx0M+MDPWH+f78xM10F7DkG51mPo1O/fpvM546fwVmQJrC9tfeG7y8ynnmiOpqqCgl
	zTrBI4rIUkrsfi6z1w3ygbS6UTtGg3k3zapMa6kq2HSficWJSFRYpOqBVyXYTCRab0lQPFuc4hYtI
	5p11hFqD4WYU52McTV3jEThkbhKkEpxygIbe4Dxkx9yU6VluWtps7U+r2aSRCj4MO8IwwmMmnmrTt
	5cAuzrtzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9Qw-0001FR-Px; Mon, 12 Aug 2019 12:28:18 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9Qm-0001F2-8e
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 12:28:09 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MDQmW-1i7dYm0EGE-00AU4x; Mon, 12
 Aug 2019 14:28:06 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224828.70d51721@kosmio.komorska>
In-Reply-To: <20190811224828.70d51721@kosmio.komorska>
Date: Mon, 12 Aug 2019 14:28:05 +0200
Message-ID: <002101d55109$648a04e0$2d9e0ea0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQECHRWgK9NZjHBUix22RzISCgT6OAIpBlasqIyQCeA=
Content-Language: de
X-Provags-ID: V03:K1:6QrrObriXo5nXSiGaHLDfo6lFS0gcjb3HDsHhegZvAIFDKATK43
 RwK5U8yHygyyGakm8ALaQQegA9bg/s0jPFdSdRAH7xU9UmjNX2qk0//gARk1w4A1/qmasLz
 qo0KhjQ+36lFb4ML9S5le45zXhGgJp6EMPlGS52JwtNTQWxOC8pLwYMsGmsVIbHC+qAigO0
 TISF0NkrgjQD1c8ON970Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nIupT5xJEis=:Yb2EfpxBtM4bOCIcBLEAN2
 kSHJZIGQYIi1VWE9FRQmW3ojsJFEwlJE+YDLloCTy0OS+lISe1q0TPv5Lze1ErvYxt66oT7kh
 o3ZgErDmsiD3aqQoMIIxCmdlhhYXmieFr2jk6UlHiqo5ovlW9D9ZJf/Vd5Hu26E0aRzMclVJi
 wbVM9YOfJh3vsTGjip0+CXv4clfTOJ0V3beXOJhbFXfQaEFRsgdOUawvG6anwqiGBvjMQlrkC
 XeeGWqcNcSdLTR96JD/7G55oRIaTYiZ3dUuTQW8YQlrRJWG0aGFI51fwEkJnAJJsg29WCROjQ
 +Z2OuwE84HKP2VX6GLkVHehyWHNEuUpjlRJRF5oJG7h1qo7xjEpy1sx/nLKlLxcCM9zQFXTdD
 wD5+wRCccuXLn1znrPuZ4IoM4YjH4DdOIHOba0FHE6wi4OEb7X2ctBpjlWMQ9c/fdKKj9Q1MC
 q2BRW+kJ1Ft44HUsOnL9AQNieBmC74Tp14DwCNNBIB4ZNYVmZAGrHMddxykgEzyQHgWwP4QP9
 vM2EAauUDW/kRsqrniQcX9skNtkhDcMPWGfkbFjWN1VUEpRkW5dikzRssM7MxZOPGRkRpB5X2
 IuywTKnbUdrLpzyTaDdv9b+F2JgvWT20J/DX/g1AFL3bILSP2F2DacfvjkO/4jTBGO9k/ejqX
 CdIotQHzFL2mp7h1bP8PLdpoHeRzqlZ10nIhFh3hfua/sfV5QoWl76+DIuUmvW9mCKolpi77U
 D2iCsaaTwM1kr0iX3s9faftNWKX3bbROCSXbjBLo9TQBPY4oxSuwIDfuye8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_052808_604075_A523A60B 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3 5/5] ath79: add support for Netgear
 WNR2200
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
Content-Type: multipart/mixed; boundary="===============0236125130872540749=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0236125130872540749==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=TP1mZdqlA3r4BH=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=TP1mZdqlA3r4BH=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Michal Cieslakiewicz
> Sent: Sonntag, 11. August 2019 22:48
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
> Subject: [OpenWrt-Devel] [PATCH v3 5/5] ath79: add support for Netgear WN=
R2200
>=20
> This patch adds ath79 support for Netgear WNR2200.
> Router was previously supported by ar71xx target only.
>=20

Same comments as before, and an additional one below.

> +&eth1 {
> +	status =3D "okay";
> +
> +	compatible =3D "qca,ar7241-eth", "syscon", "simple-mfd";

Doesn't that disable &eth1?

Thanks for your work and the updates.

No chance to create additional DTSIs?

Best

Adrian

--=-=TP1mZdqlA3r4BH=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1RW1UACgkQoNyKO7qx
AnCzLBAAwWsp9T0wHADUCNiu6EPae82UhFfn4xWXAGoe208dcJrJw6N+YpdYmTx+
nRIcFur4NVEryJZFmZmofhEqYIOtY+Jzb+3to+v0cP+5gBR+r2HCxJlH8o3aAzkB
kCUjR1yZBvDwdvg4Qspb6VgwCKIn4iCaUCfNDeukmi+EDUqGOQfKl71GE1zI86rS
5vbkuu9mvrDJIMq8JO6jO7h4fFYyUu1zi1NfBNlhqJ5u3dtW1RhkVr0X8mlxuYiC
v4MZu5pVRtI91ma2yqKJsLy8ixp2RijU2LfG5xWuNi4acfBlxX3DS4yI94uCucsT
0wefoEXsQ0GJMCPbo9EvjwmI1ssga+yS9teFjJVgIbZNM5bIr9UbQgXGmJrzoB80
MOf9jRufmzrzHm/fFQUuYQBmvKBDAy8eC1vdCQiXfiZyDNlP49xPGk4QIdhlbG4y
hYIt7LG1viT+ZG1kPjYn1UVsmHBdm49mo31S+v5flHf8E3zO5Pl9J1G6vWkB9VNv
SYRAKbydgWAoNHlORaDKr2Gzq6apghIqvjKNFfgzNOwyLwVPTZ9ts7uoJDCVQ+Q5
l3noUh3XNT+TdOITcW7hRgE8N+0co50ftllWqbEZ6S4Cuoc1lWleHIFCZCuRbJIf
epw5ljALpzSwCLMwpocTPN6jq6sn7eznV5KaHlJ+sCup5fHz+9g=
=vgKc
-----END PGP SIGNATURE-----


--=-=TP1mZdqlA3r4BH=-=--



--===============0236125130872540749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0236125130872540749==--


