Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0D4CFA6E
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 14:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KmPBVvCCpHtsivSn5YncQbt2C2YtWOcueh5MXEb1D8g=; b=nn6P1IhyvlMtBdolZwdMXTqHy
	SVtPrYH6s3l+oePbG77fm3w4de5wu/362NQSyU+Xjv0efVe3eM4qf9qpzifVy5G+bO9u0mG2LDQGr
	P6OPeM4xLCWM8OYK7883pI500MwJc2WPsUIGmONdH6IllT7VoyH+rTiu8ebT0HAX2FCPTn0lrm1ZC
	woRNX8bG43HcLijVF4AC6xSzKTrNz9If/A7skWO7bB86xx39oX0fJSAU71sEnIsGkup+doT2aVhP7
	OJL9D5WuSnx1NWZNdF27eVLjtZXGMM78odedEonfXFnDSaduOTnlQWG2EK2HsWwAL2FjZAfs/sZyN
	mOxs5iogQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoyp-0002if-8i; Tue, 08 Oct 2019 12:52:43 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoyf-0002hV-2Q
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 12:52:34 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N8GhM-1i4bYg233w-0149Uc; Tue, 08
 Oct 2019 14:52:26 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Robinson Wu'" <wurobinson@qq.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1570526416-4180-1-git-send-email-wurobinson@qq.com>
In-Reply-To: <1570526416-4180-1-git-send-email-wurobinson@qq.com>
Date: Tue, 8 Oct 2019 14:52:25 +0200
Message-ID: <007b01d57dd7$3c9228f0$b5b67ad0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIor5UgF8SBG3V7TBwz+nbhV6RX46aqTvQA
X-Provags-ID: V03:K1:1AvpRhofzExipYtS/i8BI5fka7GZCyBBMmTVlY+qRAn6B5qiVWm
 hT269Q4h+pUVZzkvCLiZXeusxiAuNWDIkEcO/AlEe7hrNPLmd4Bso+LUbQcfj9CoMtR9BbY
 qIT/9nsXEg7WT8gabOhWjDBkC1NJDPR8ADD7wu1qxbXdOiiTp8bcfJpnIIHqCCFIjChfbyx
 jEABM2nDjJDUXmlUqqL5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K+BDec/ac7E=:voNfBbXhcg3orsSYYK1b7e
 gEQ5dMqLLq2ejfK0l8fA4s3lZ/QOLh+u8VCuz+hqXVmN3O7q8TyyrnqpxKYdghm2/03u4+Uz3
 rJSJnhJoLKRLO9OSQVo/c1FRAV7SCivr/MUvqcX7bFpRNGo7zlQ5Xil4cah9d8dgMh99HIgXv
 UQ5CPNdz1JuaZU79JJWShgJBQn+loNz1LMDM/VWLQYHvINKnF7u/Fj9Vb/RHkTcIo12WV3qHc
 lfvwYOjxU9rhaHh65jEuKj/mGea6qwUJWV2AJHoN7BmdE4Vg0q5v6xmT9SFb92sV76RW0IK+w
 jzee9k0GUx/06V+oAIA27PLR47GPs8weAW4vBs9HNtnqFdaSHO9plWhM6G8cPTGFcxfMCLrRT
 1ez1dbYSZKctaL0CaQf6Bo2O5yZ1QnGUSus3/TorOPpLXjp3Amoj/Xofgo23w1KQ5ELp9pweS
 jAZSPy4q5gzPAXtQJj3C0N8eZhMA42MQo2zpvmDdyEdYWoAc6+Pf94bNwFXwp/63H9kyqk7Ov
 sSZtMoWAH9yRdWBLB1HtITD+B+EEcKIFoRuu7RwhX5NY2vGMMhAmhBHtjhrPHsZP30D09pp1Z
 QByLwxEclFdppw+7e/a49hBE85f+y13mn/vohcE6te/TEUvf9bg7kj39A/mqt9RMqZSTJkvvw
 6a3JTFIBJnjou3xxynrdehru7+QSx3V2NrizSo5UyAYeVBDb3Kb5u4hILo9Y2+hmseq1Nhr+O
 4HSIaIGLVM/3HAx1ynQWfd0u6fGvqYdYYR9Efpi7+oQY0X28+g7XC/jhL1XFCxiNiRf45/y17
 n8TY/Zlb/e7XQEPmsCPAjBW6ttYdchuPeyub7yyL+pl0QeFWV+gWXitUTGAuG2SZYcXd2yKAt
 qVSyG4A+8PQ15g67ClsODUtDJo3tA5Qkm9LnQ3oT8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_055233_402264_5C780E9F 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v4 1/3] ramips: add support for JS7628
 development board
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
Content-Type: multipart/mixed; boundary="===============4124238475285391029=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4124238475285391029==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=gWS0/5m/JextOj=-="

This is a multipart message in MIME format.

--=-=gWS0/5m/JextOj=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

> +	m25p80@0 {

You should use a generic node name like "flash" here. https://github.com/de=
vicetree-org/devicetree-specification/blob/master/source/devicetree-basics.=
rst#generic-names-recommendation

Best

Adrian Schmutzler

--=-=gWS0/5m/JextOj=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2choYACgkQoNyKO7qx
AnB4KhAAw/zTZkqxgSr3oWk6Eaga/q4uHJDvUMpv1Una7yW7BMlhgK/4rR9Cnuub
dmF9GItuGn/hVoYjRv+Ii2wZtlxHwCtGxH1/N8Ce+t+LOMgT96FOAl6xTep2ArKk
tYSVRudXIxTPL8emIs9i9blGvEIUxHGquOLOphXHbAeRChy2eyOTTOMDOj6POHxp
F145VldjVrXSMdVXOed+/b3XNyK1OGYtT7nhGLwgUOwL9rOKOFp9R3pNEEuRRZlL
Kq44HqIWcpwN5l1LpwzgX/E1SSYT9iCEFr7To7BB16gXX1O3TMmn50J9Q+w8s56n
60cq5kNnbInxOOdsLktIuZ321Wc5b5ZeZ9DwLKxmK8wa07O639eg+gQXoh8dmucE
owETUZBEqZQtwVPhGCvKNKixWZqGRmD+fVHVLnmYcUcJenTuGvErpI3VKeyBhHsE
7Dz1k4C/27gNgop80E2igBMLXqDQM+PbDRvZaGWUmRFaAD/9ebbcbx733N5wMuIs
XM5BQ70dVkkH7JwSWfCJnYH0WdoWJ2AmGJr54hXNHe9BzH5w9JGA4N64SdhnYgHv
VwDg0jwcdcWg8MKVP0272Foi0b2wFYH7UqMWT+MKcu4NvTBx6N4KqU50VKkCglMP
hbYtwqJZ8rVdaIf4iWArwqj6KT7RmCshqpeKK637uU2Zo4kzGjQ=
=mttG
-----END PGP SIGNATURE-----


--=-=gWS0/5m/JextOj=-=--



--===============4124238475285391029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4124238475285391029==--


