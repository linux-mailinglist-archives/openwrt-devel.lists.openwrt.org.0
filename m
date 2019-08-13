Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3686A8B661
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 13:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/uTkfv13xmkb1harqcJJkObUf76SmYCrqPQHs1Mx+fw=; b=kdxpYP9DVIKwMbgntckFV0RNI
	y37hLI1Qjge5ZnSd2jz9fCjyeXJTxmPHPHn4kYY7y0ZDD+Qot4zXECjrZn91HKKpYE41SldVKRLB4
	TwypVkZGY+YYdoJ4FalGIWGCvGAG3ahilUGdZSxoJA/FcclyGhGIRW2wewji69Z+J3/xZCnVZ5gUn
	n08rGAtA8ib5CQQfjaMHWkbjjpTCq+9xrJeDOvhs8+H0KX3tc56Ydafq/VxILAlmzvc/tOsP4I6t2
	mYsI/5UbVCMO0QhrpfynfcSKketCJK439Fc25eUc8hPbY4WUxogwuaFWFGsHaopC0ISQZZ0tDRD8A
	2FMvqUIdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUgL-0001Zl-0p; Tue, 13 Aug 2019 11:09:37 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUgA-0001X3-C7
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 11:09:27 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mgvj1-1iVi2g0aXF-00hQr1; Tue, 13
 Aug 2019 13:09:23 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190813104658.17f88b71@kosmio.komorska>
 <20190813105247.2116784e@kosmio.komorska>
In-Reply-To: <20190813105247.2116784e@kosmio.komorska>
Date: Tue, 13 Aug 2019 13:09:22 +0200
Message-ID: <00cc01d551c7$8fe0e500$afa2af00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHo4xaCp5EgVPp7rD2F4MgzLhtLYQMVjTpKprkcTjA=
Content-Language: de
X-Provags-ID: V03:K1:Y1YfhlsSwh8cqdfyYxZH0j2QS8Qx9lDMvQ73noSNKCjVKFPEiLc
 Gj2sFz8fwAfE3v2nMozRd+ACDFK6tN/zLgj3ioakPzN3FC0AE1P1R5CZ9Dls42v+i6ZIMY0
 HzFFNdA/V52UjU4lZswhAvxsrmUFjCyryyDbCq1W/xsLr6zx+6ucpwzbxsK8/40enSndmUd
 rIjMf17VYP1d3ebcEy2wA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7nanUvasCw8=:hnq0XpKmZkQhgUdH8b7kF7
 z98DqnSzk6b8+ICNnW+BWz72E+eTrXLJ4J5tjW1bmt4946b3vLdgV5RRqkVdcueAopCMMTc06
 GHXyNlDt/s+SCAn5hInnChdW1skA0VkEtTM0scQAOcXUoQR7JqAg35aZi+/zJ1uKsXRSzB93C
 YxynF/xn5+sSz+8sbf5UvZDdf7R1clH7UTSEZku248YNloWO8IaGDPOR8VI7PHiZv8M5fTZGo
 U6qiQseWv0udm3n7+RtUC7IM93fd8IBD3LVYU6ZMtMvIKMRQDBMSFqYSIEY2Ky6LEXnxLXPuK
 M9jyHtLCUXFrV0skkAmh1F6eBKUZ1oy8ur5kLAa01wwp9lLG6jR2Pho+hCZbUejpK1DTCfvOl
 wx9Sh2n8QRe4NWr3Hzc1fMkV4vJb6pFNSE8WiIM4PgaFDtpJtgEK9R0AqldL2ebDSohMMJl/R
 DzCt1oD4cWeMZslECij3h4st6y3jARx/g9h2NWRMSx7VJadHtKklxvr2AuU+YOXh+Uvo1eq9a
 JZWig1UCqr5+ycp76BgjMh3CJQbEL4OjWtPGufBkfem0YYiSGHY+6n4u0gnCx6By269BXcRST
 MhPP63toFHAiAHGFFXYAP7/6dDRi8ijMs3/XquztmHt06DLbBnfWFm1Si59l7WlwLrYwDNSZh
 ynapTzLGVBlNV6SW3k7NoAKmMdvf0jIPw+vtBILvQg1F+037AglH3QuhKb9oXZlHciSkvf6pY
 G1yxaIpqlKciLNcyXO8J4CW9jtx2766LW+DMKk3aNaltW05W80TMA/9C65g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_040926_706331_D67C128C 
X-CRM114-Status: UNSURE (   6.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH v4 4/5] ath79: add support for Netgear
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
Content-Type: multipart/mixed; boundary="===============4539256309002751895=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4539256309002751895==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=gdLCD/BHEPUFlb=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=gdLCD/BHEPUFlb=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> +	keys {
> +		compatible = "gpio-keys-polled";
> +		poll-interval = <20>;
> +

I'd use "ath9k-keys" here and also in 5/5 ...

Best

Adrian

--=-=gdLCD/BHEPUFlb=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1SmmIACgkQoNyKO7qx
AnA73xAAmDqaIAN0vQ4eTcvtY1zdWt+/O8y7U4Gxbmqei/4VeTsHqMzxoQK4BSkS
C8c4QoujJwt4m9xErnAuL8QjiDlSjGXeSanxCSv35wMVXbUjH7hmpXoF7zuM7M3a
U+RmPgkw8BY2ZNGRU0v25HjULVdPEx6l87hIg7ykzhBuIlO2qMz/sETetIAKyO1g
vnMgqamj4qrYQda1bn27eTWP/55+i0TsljJeMVOmY2pCbf1hL9bpRGQDqIpTfUv4
m5W2P/uLUX5Wz3C7WXktQBMnRoqY+PlRchIcenLz/7Ke8bunfHfHIQw+p/+nWiBi
sAqv75CDjt0tlLt3GvdzZQddlOjNUVPxSIhoIFq4FpKqtCr+nzyOrr/3rxuNgu7z
57fIdyth+GF74NULgZhhJROe4ZmlYMkBbq9I8NcL9NrpHqM3eSHuBBLERqyKGuC2
mCKU0KHKfD+sWPbBY89BwtOGbqTph15mWc5A+uTIZDlI/ytSVMYFun2OZwTieMtI
8gkFKNRybt2BErQjT2TlMp9sP9U5eKXPp0dc75v/2o3XE9D2VgNE8Ob3YeJCSv67
zybsf6vBx6u4lFVD4L8ONxB+xy+tGmWF+9MPewYi3BpDr4cL+imJO7yoPaFoXy6S
HeUr4YgeJnPloYo//TydJa313mcYxheaISN1KKJHuVII+KZXxwk=
=SQPN
-----END PGP SIGNATURE-----


--=-=gdLCD/BHEPUFlb=-=--



--===============4539256309002751895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4539256309002751895==--


