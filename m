Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D87ED5DD
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 22:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uUM0MD6xl8FqSo2PCCz7DHIpg5O7raQmXN4gXr3sZjA=; b=BU8FCdM5ReTi7FUbVWzs2aWxf
	KBWFFAJXgkytSzpkgmDVj0lAezaTTQCfZtI75y9TUib0KUr1oGE6XBlbltbhPvkQZxz3CFHmLCqKH
	HuZr4SUHBw4OsLOn7ircu1kQXSlFGYayVrT+/rxZHSgV3PfqK3iNbV50pFv4IEmQQ0WpDf74CPU51
	hhJi9E8PRUqASZ2Ce/+kMYwv0x5AaYukLfhLsn5XdV2qgEDEaJyLo6hPLhgtrmo+8q7x0GAxLPhmd
	LH1KaiLth2O6UaGyQ2Jj7+H4WWcHpUhfjHs3APu1VdbZx+8eUYC6AxDP6Wgs8MlNWb3c124poLr/v
	NqRBbiMAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRNON-0005mQ-4q; Sun, 03 Nov 2019 21:26:35 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRNOG-0005lg-Ak
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 21:26:30 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 678CE5534B; Sun,  3 Nov 2019 22:26:24 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 2B02055349
 for <openwrt-devel@lists.openwrt.org>; Sun,  3 Nov 2019 22:26:22 +0100 (CET)
Received: (qmail 66974 invoked from network); 3 Nov 2019 22:26:22 +0100
Received: from unknown (HELO ?10.11.12.240?) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 3 Nov 2019 22:26:22 +0100
To: openwrt-devel@lists.openwrt.org
References: <14171177.3R80v4PZ6z@strike>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; keydata=
 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
 y9XZa9+U/SZJW40nBzM3hUy+EVkvFg==
Message-ID: <6479cf6f-8d11-5a98-0892-e6db506b0fc1@wwsnet.net>
Date: Sun, 3 Nov 2019 22:26:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <14171177.3R80v4PZ6z@strike>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_132628_683079_B37AE7A7 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [19.07] cherry-pick ipqx0xx-generic profile
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
Content-Type: multipart/mixed; boundary="===============0672452338852318858=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0672452338852318858==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="MTCxNyPBBMJ49At4yxMD21eRAzJxnQJIQ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--MTCxNyPBBMJ49At4yxMD21eRAzJxnQJIQ
Content-Type: multipart/mixed; boundary="3G1WxD3Tx6t9OA2aA05MdF7TQmwFF6jxS";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <6479cf6f-8d11-5a98-0892-e6db506b0fc1@wwsnet.net>
Subject: Re: [OpenWrt-Devel] [19.07] cherry-pick ipqx0xx-generic profile
References: <14171177.3R80v4PZ6z@strike>
In-Reply-To: <14171177.3R80v4PZ6z@strike>

--3G1WxD3Tx6t9OA2aA05MdF7TQmwFF6jxS
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Sven,

done.

~ Jo


--3G1WxD3Tx6t9OA2aA05MdF7TQmwFF6jxS--

--MTCxNyPBBMJ49At4yxMD21eRAzJxnQJIQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl2/Rf4ACgkQQuLLvzou
ZtMtUQ/+KZ79rLE4aM3PeySIs9tQ9mYWG4pOoRSU1vtMPOjwk7tMCLNSJ6KH90hR
5F9IGMOvhZy8MXplQ6Cy6sH+Y5Eb88x2NS3qdMDUEAav3Pmko3alQ/20H2rk+J1E
UGcdkoHoi0yqTYJkhEKNowu/q455gBIgLvGheecENw4xxsN+PDB/rlZ+lPfZyLD4
68k6TQnlYA5KpROhIljQvBo7fqz0YrfOvwtUbBvNgoNiX/8xCfuwQ5o0x5jTcfhu
3XAOaCtvmP9BWHCK3/nTOksrXtpN/QIxT1lZUXJGggRb7hjXwSOBdiLbngMaVqsW
b/nCUzUdV/NjKYm6sECdnaUSR4XZ4fmN86pnrQNA13JoMOhe6hrujEpDdE98VKJf
HOHU/wyLJrijUFcicr8bk1DFiynbATfTvTBYelVjKrFgyGg0sIwNti7suqOb0DR5
5dHPA+6rJYB+tV2Y005m10ZjxCVKHEysJ4TtWEf2V4YpOKGNiLoAK2LjLXy3mYEB
0s7WbOqYsnyjWZL4bmPqBJvhE1b7VY8GhOxcXyIOVRAgODg02VMfYwMMW8dJBteU
a0iuMEPGdxNo8RhjPzS0BfebyOEJfvHTYZcqa5EffDbHy5rGa4DSQh//aY9v+jCY
cegPtlYsAh1XtMrTvLCYh50ihxkh9MS0xZCiSVXh2ABYKJ4B3Cg=
=+vCo
-----END PGP SIGNATURE-----

--MTCxNyPBBMJ49At4yxMD21eRAzJxnQJIQ--


--===============0672452338852318858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0672452338852318858==--

