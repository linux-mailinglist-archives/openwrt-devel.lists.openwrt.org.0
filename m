Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7FAEB11F
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 14:24:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3eoPydjA1e2nTSFYtpopkrPqYho/LpeNt+DvsBHow94=; b=DPEUx+VqHPN+BdHeJGVM3FZIG
	PfX6XboGosvJogAsT1n2ky+7a4YYrLCeqUr4TXLxuJXV7PJg2rT5128VQGlj43ZM91z+V2wTYxAmd
	wpL/Eh7tyjNDPdpF+laZA9p6jPvydznMi/KdSLAjZR6ixr92Z5k4oqPTDXIDNBwyj60nuRGGa1Xuv
	//5Wxf0VcyD6qibwJ7sq1lgl1jTDv/sH9sVg/CtJZeSNJ52h376/54mJLT1AgBcBcBTneGdquMDwc
	0w3ST6VkA2VNczfYyyrPcakeeLGy9AnBxr5gmjS28Qpkn6YaV9rztLuLJBm/GNNoduNejIb8HUUHe
	4+9rOblYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAQv-0005Wo-RI; Thu, 31 Oct 2019 13:24:13 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAQa-0005NA-Kg
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 13:23:54 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N4R4o-1i05Js1icA-011TGI; Thu, 31
 Oct 2019 14:23:46 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?US-ASCII?Q?'Petr_Stetiar'?= <ynezz@true.cz>
References: <004901d58fea$537910e0$fa6b32a0$@adrianschmutzler.de>
 <20191031130921.GK22393@meh.true.cz>
In-Reply-To: <20191031130921.GK22393@meh.true.cz>
Date: Thu, 31 Oct 2019 14:23:46 +0100
Message-ID: <006101d58fee$6c9a0800$45ce1800$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIWij2yMPctwaQSaANB8SCCnnpu+wFB9Y46pui4XMA=
Content-Language: de
X-Provags-ID: V03:K1:GpPEIXPyL30bvD+cTKLloOGvI2tG1u3PkqCOyP94UfEAgnR2AwC
 P4iSzWfylUbUQypROHPa2u46TxrNsXsVfcJnMPuHEvRVcqnEIocC2p05w/yVeYKb3g17Snw
 QWtALdcy/xljyx3/bzZCh/FpfmQp6610EGcPEQwtl2C4AaTWfnSBVOScY31U58KkiLKQqBF
 ELrkRai2pxmOvk0KxMHpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2iY/V8rQ1ls=:UjnajffdnregjbgCacqk6Z
 +JiXilkcAKB+ijHitLDQbF8y+n0CXqy6/L5d7aHN38Uu3slgddAWzbY638bDXtDkwJ4GlofCw
 F++oIjxfDs//SCVj4BiG3Ak/DdVX5vrmW5hTyCC0A7YaO2dTspQhF+IMFC0cWjAMlh3FDMiV9
 bnkSqQ45CSxIs2HkSEVmaoHEsRU0EQ2Xbs+34zElUvs6dpkcq6alJTwqlPDzrq1j08/GtEiD4
 o/H0yTNMXgzefKtYEzVZ1/b8kQ0w9uPvn8utdXOzlJAXdlCmRSk7a4608nfP+O+7SOEs1CFXY
 uZ/RaIBNgo0uKwOhxy9UDtaX8gt1T9yq0XaORl3pC8ZMhM9kmaXzCLOWm9mVRSQLTdUsHsuVQ
 qtTJKuvh7BfeJ0zdEbFe4ajgkdW0krHzTdMMB6h2bofEOBFf1Ve6oIbFOVQ1x7jbkGhP7alJW
 O6vxVZSyB63EJ70vpmk01CZTcRsq2nDHsNDB65x5k1OqxzShX1oZSA6JevnaoICAm07DSGvTP
 BoedsCr0sf1YE6x5Eqn/1Xypr9Pfb4a+Ac01Ttgs7nojlPy6S0L7BTR3VNTonKnKkb48PUjHj
 GZcIEyPxpX3eEOeMvjJAksEMOcpv3axSF0G9euBNfU0ThCReIvHOpi72IOdoXaVFgeaiAMw5j
 8VthQx5rxsUR17QoP5JWVYKvormL2S4VIhvDtfK1rTyTlNx5VK4eFBc2Ft37b2yy3LglqM4gk
 W8Ky4G7Z3k9dwJctpb6xT7rK33UG84cKst9DnpF/mcrljkVQco9kF/jGsRHMjoffp4XTBeWqw
 s/5KYDN6rczcMaBGQcQp/VksDLukEY/ErgPanXBJ5nFfSDecs4BmjF7yK2hzrWkeiDocExYIh
 +hV1oad2RNTLRU7q+47vbHXdsIbAI02ybZgJSa0LU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_062353_072452_58D6EE75 
X-CRM114-Status: UNSURE (   4.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Merge Pull Request in GitHub
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
Content-Type: multipart/mixed; boundary="===============7750670887172413984=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7750670887172413984==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=qGJpC5624Cjxmf=-="

This is a multipart message in MIME format.

--=-=qGJpC5624Cjxmf=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> Indeed, GitHub is just a mirror, so it won't work and disabling it makes
> sense.

"You must select at least one option."

So, I left "Allow rebase merging". 

--=-=qGJpC5624Cjxmf=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl264FkACgkQoNyKO7qx
AnDTmhAAoMZfbRMCMZ1hJIeE3Ftj9Vllw5zWO+IrmjLj3xE4PLKEsSQ4zyU8Aif8
YF8KUkUq5Kkx628XomlDu2KpJJ7ZNspi7LX3lLlkC3g2NmjR5HbCCtvMPXtGqWCR
CNvCvIZT+0L9C9HatKDTn4btmw5SUuD9t3ratAAujObsH+nPbuZ7VZNNd7Vg3Hz7
tJVQQL7UY03FUB6G5Ig7tFHf/0VZNk2N1LihBivaFo9ee+AjSdc9dpRUGkva7I1J
Z72xNCBo+US6WID1XQmO7vJQlKXUKtK2Jz4vuX2aNa26o36IXliUDVY54swHIwjL
UoA+pLeXJ5ry4rtaqIEyUcSoF0d6McXgUbGWdlkBELHc29w5+rSBJp1Jt0K+YKu2
oA2OGqYrxynuFlNN3O9tfpgtUMAGZTWJs5OVTIeuMCaIG+9wOCZP79nx2RUHhu+x
rc1n0SfWYU5Epsg9IzlmCoE6Q83po/zbEdktdDLtJF6t44T5l+hhqi3ZNruYMNey
5qPdLnZEqErqjZFS/k/ZQAT9OzUuySfg9kvb+K4Lrgo9n0UydCLbRvQAacRSEKBx
X6JjwiiPDKITCnhRo5zAHiDVX++SOTT6y5t5fjwYnncGyrE4waHF+ZoTMkHC16lF
65ttZ8CF570oCoJVg1K6RZ1+wqJz6TzbFBSGZxZ/w30e88N0ku8=
=zJVe
-----END PGP SIGNATURE-----


--=-=qGJpC5624Cjxmf=-=--



--===============7750670887172413984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7750670887172413984==--


