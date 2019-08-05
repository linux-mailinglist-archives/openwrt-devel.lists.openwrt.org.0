Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E593B826C7
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 23:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Msolcj84BDBmvfE0Un8/mGnSpEBJCNhPZ+5MtM3zjH4=; b=lzyeKbrY7c1pDXAXPpmBwubiJ
	t5U88lHrj0WShnw2RiX084a4wXtzoU95Y09GT4V+VLSTMRZGuzHzMsTgAnpdbGzQcc9kRRau5cN5W
	4oO7ni4V/2/2gI8N4vTW9K7X+Mo1cUtSS7Aqp8DSSZ0uE2p3nicSNdrRHcFrjMCrHpL+XwYKCxo7y
	4Jo7OIJYiYbehLmLJM9tX0j0MWorhUbRfVeSDgCDXbM7gnlak6xqDn+f3CxjtWUBF1sCLrVH9ZuqZ
	hS/uf5cCVRSmsWT2l/XWrMCeWdMwz5/uj808AlyCSqu2BaqyzhTgLcSAwfvDp9LBb48Xlun2ohc5P
	Vx2iOUQ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukSo-0005ed-Kv; Mon, 05 Aug 2019 21:24:18 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukSe-0005dV-QS
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 21:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sokl9g9mkZSuJUtibCH5nXiu3NWT95c7ufr3mC/aWzc=; b=Y2oPIJW+wFz/eZCm1jSFXJvt41
 27RF/RNRK2qlWorXY2ZABMBwX+rIHS3xkHhWQ1s/wjChcOHf4XF8SgyUM/CO70Mj0luDmPJM9Xm+x
 jylgcL1CeYMDegK0XyKgy6StzRGyNGazvhZdXc0xMETi6XT2zbWr+MlHXeXmFlCY6uFCxaPnx64tv
 MR93Kd7jNTPNUVGbbFPTk7iOCTExfYxUkOALNLihIrRP8pmibkoTSkxhPqGD9ZNC9tnFRETPnmdpc
 GcHjPKJhrbuGhZDThe/e/aYR02cY681BSN0mgjYbRTV3SzLlVNTUu0QE0XwxOJWrG3cL20VQsxpec
 lWe7FTtg==;
Received: from static.214.155.40.188.clients.your-server.de ([188.40.155.214]
 helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <lynxis@fe80.eu>)
 id 1hukSd-0001xO-E1; Mon, 05 Aug 2019 21:24:07 +0000
Date: Mon, 5 Aug 2019 23:24:06 +0200
From: Alexander Couzens <lynxis@fe80.eu>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20190805232406.133c9e64@lazus.yip>
In-Reply-To: <20190805134817.1942-2-freifunk@adrianschmutzler.de>
References: <20190805134817.1942-1-freifunk@adrianschmutzler.de>
 <20190805134817.1942-2-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_142409_015979_664EE081 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] treewide: convert WiFi caldata size
 and offset to hexadecimal
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7808220101276292706=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7808220101276292706==
Content-Type: multipart/signed; boundary="Sig_/PuPaTV8msYXvZc6fWUFnNoh";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/PuPaTV8msYXvZc6fWUFnNoh
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon,  5 Aug 2019 15:48:17 +0200
Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:

> This changes size and offset set for WiFi caldata extraction and
> MAC address adjustment to hexadecimal notation.
>=20
> This will be much clearer for the reader when numbers are big, and
> will also match the style used for mtd-cal-data in DTS files.
>=20
> Since dd cannot deal with hexadecimal notation, one has to convert
> back to decimal by simple $(($hexnum)).
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Acked-by: Alexander Couzens <lynxis@fe80.eu>

--Sig_/PuPaTV8msYXvZc6fWUFnNoh
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl1InnYACgkQwp6dpqDf
hgS8dg/9Hps+qkovrWKTT3qLchD/7sCnD8PofqXjZ1bRgy+e+N4jbgganuZUtXgZ
Ob/uW9/kVxba/WNu6Jjs406JOUEUGduKjpOjTUA/GQrGMWciZXPl+t54e7DKnMOx
JzI1N8I89eeEVE3Rc5mNwEmw6PRLGNEKChn6CtuW3DEleYR9bbyef2yDVxlBX6r5
c3gX1zHEeijQWVWfQc35Ck+9aEEERUJwTJus2xq8HcvS89WvAnNyTwIOCTiUxR5z
qmEC69U54uRmExFI1sEBef53iyHaqzHEXo1cm2n/NL3ljsEK1BRbUmc1EIhL7M3u
HPbZF71dZ95rKVWuBzfk2NQmHjS/O/c899/YxNzOnhcLruonuvMX8eGMOv7Hq34M
Kl3/ag2aTlYHCOmBZE7vnlmO5PvpwVWFMs+e9+hbba8Afh+cMGXesz3upH4NJz1d
NJiQYA9GDZimzCEXMOhxhVenqSQiVehNUIrF5nD43HFeVluWV3T4C53m5tdexWPD
5cadAilOUs7sFjQxANZabi3pyb9xX9MKxuanlYAW046Qd5XXOzKtpkiCOp+5kQhI
K62Nd0MJ1y5Ye5f/pybWXyIvc5lHFTt30ucFkF7QtGpWgajkBQd/z8zFNdJa7YiG
FvPZsBwJ9xsmpt9UVkm0pg/bp/I+7ED1NyFCoW/vf3GTTXtr+Tw=
=2MCN
-----END PGP SIGNATURE-----

--Sig_/PuPaTV8msYXvZc6fWUFnNoh--


--===============7808220101276292706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7808220101276292706==--

