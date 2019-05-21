Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D97C24C1F
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 12:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qO4wWxE4VOaqC+2GeLR841M5fDKBmFDkzESRpLyxROA=; b=VUkv7Qa4cpJkByk7LiKNZZJdp
	ln9t41okuGYExRm/7QVz9j3c6OXbjSRZCDGGAyc9lw5oT9CwoTbTFnZULfq7Kvt28SqZpAqmhkpbE
	XQhxswErtMjxdF+NT6UcO2C2HJv11uRungPfXVEni3fqW24bF5XEjQ3DdlpDkdUSXUspSow+t5Y1P
	sc15aizg+AEuaavUaVobzcgTsyuNrvGydv79hEdnmZwINqYoqjvNOlNijwY7vXj/5D0SsRCnhkDLY
	tNvb/2AMjgM5ipxaeQ/JM82nia2uPMEeKZ9DscHlqkWFIHjJGGeMzpdlXx0w/NCK2qCAvj9Hps8Mk
	56oeNtB8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1bc-0002YD-P5; Tue, 21 May 2019 10:02:48 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1bU-0002Xm-Vw
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 10:02:43 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 63BB41F792;
 Tue, 21 May 2019 10:02:37 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <1558043563-10184-1-git-send-email-ynezz@true.cz>
References: <1558043563-10184-1-git-send-email-ynezz@true.cz>
User-Agent: Mailpile
Message-Id: <fo2I92GxRv6QgGZ8f9dPJRd9VpQNUdvFdsfAovFH233a@mailpile>
Date: Tue, 21 May 2019 10:01:38 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_030241_300662_98B54080 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH] lua: lnum: fix strtoul based number
 parsing
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Liangbin Lian <jjm2473@gmail.com>
Content-Type: multipart/mixed; boundary="===============4549798481148919402=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4549798481148919402==
Content-Type: multipart/signed; boundary="==K58UXAtz9EPKAToms4BLPqvHqtYNdq==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==K58UXAtz9EPKAToms4BLPqvHqtYNdq==
Content-Type: multipart/mixed; boundary="==ZXh7BGRor5HzoLicEyu59Dsxf74rt4=="
Subject: Re: [OpenWrt-Devel] [PATCH] lua: lnum: fix strtoul based number
 parsing
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: "Liangbin Lian" <jjm2473@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <1558043563-10184-1-git-send-email-ynezz@true.cz>
References: <1558043563-10184-1-git-send-email-ynezz@true.cz>
User-Agent: Mailpile
Date: Tue, 21 May 2019 10:01:38 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==ZXh7BGRor5HzoLicEyu59Dsxf74rt4==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ClBldHIgxaB0ZXRpYXIgIDx5bmV6ekB0cnVlLmN6PiB3cm90ZToKPiBGcm9tOiBMaWFuZ2JpbiBM
aWFuIDxqam0yNDczQGdtYWlsLmNvbT4KPiAKPiBMdWEncyBMTlVNIHBhdGNoIGN1cnJlbnRseSBk
b2Vzbid0IHBhcnNlIHByb3Blcmx5IGNlcnRhaW4KPiBudW1iZXJzIGFzIGl0J3MgdmlzaWJsZSBm
cm9tIHRoZSBmb2xsb3dpbmcgc2ltcGxlIHRlc3RzLgo+IAoKClRlc3RlZC1ieTogS2FybCBQYWxz
c29uIDxrYXJscEBldGFjdGljYS5jb20+CgpUaGlzIG1ha2VzIHNvbWUgYnVzdGVkIHVuaXQgdGVz
dHMgb2Ygb3VycyBwYXNzIGZvciB0aGUgZmlyc3QgdGltZQpvbiB0aGUgb3BlbndydCB0YXJnZXQg
aXRzZWxmIDopIEl0IHdpbGwgYWxzbyBtZWFuIHdlIGNhbiBkcm9wCnNvbWUgcGxhY2VzIHdoZXJl
IHdlIHVzZSAiMHg0MDAwMDAwMCAqIDIiIGluc3RlYWQgb2YgdGhlIG1vcmUKdW5kZXJzdGFuZGFi
bGUgMHg4MDAwMDAwMCBmb3JtIDopIChXZSd2ZSBoYWQgcHJvYmxlbXMgd2l0aCBsbnVtCmFuZCBy
ZWFkaW5nIGFycmF5cyBvZiAxNmJpdCBudW1iZXJzIGludG8gdmFyaW91cyAzMmJpdApzaW5nZWQv
dW5zaWduZWQgZmxvYXRpbmcgcG9pbnQgZm9ybXMgaW4gdGhlIHBhc3QpCgpTaW5jZXJlbHksCkth
cmwgUGFsc3Nvbg==

--==ZXh7BGRor5HzoLicEyu59Dsxf74rt4==--

--==K58UXAtz9EPKAToms4BLPqvHqtYNdq==
Content-Type: application/pgp-signature; name="OpenPGP-digital-signature.html"
Content-Description: OpenPGP Digital Signature
Content-Disposition: attachment; filename="OpenPGP-digital-signature.html"

<html><body><h1>Digital Signature</h1><p>

This is a digital signature, which can be used to verify
the authenticity of this message. You can safely discard
or ignore this file if your e-mail software does not
support digital signatures.

</p><pre>
-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAlzjzJ0ACgkQGai1D9TV
yvbuGRAAhUiXQEQ0NcDq4sCw2g3weaN2nwxd7urhm8nNl997gYTi8rKq0NW1bDV3
jfwVP+2AvOGsgGp5dm0WC6G/dGY8a9h44dmNNnUgYlVBwMI8kt6afMfE0yI0mPfN
C314xP8LQ0H29ZDHcZdqx2rHOS9UQmk7gzIvrQj1JgKJjEojfDgGdapiOYvu8EzY
UVBQIq5YN4IHXyqcVEj1mkXwtjXLubObY8kcVZX2eRHWWsN9ffAXVDC2Wsagj+OI
0g5Ququ+lBGYKkRn7gyZzdZ03R2iURcsYw4tn3vDMQkQ8TlkLEit9HYbt9mvztmM
rbVS+zQa/tVTLegpSMWGK5kaK5aJbQBa/5GvLVKiP6ox7wOn9qVBcvk1fGaOHYFT
5SNIIkKRHR2Bq1goPrWjalQ5j9U0FAJ61XP02Q9R0T3kutMGvLFcFsOMnMprfeTg
9bLoNoUtWxzeo13qm3Xa/4xXeHy/8f3iG2WWqwW9Qe2w3y3WBjbc8SojLG0at2oc
9X+HJ1uo1gMJfUwNBbwj1a4JtooOGYul0984BEC2uZZDLzvg40E6TH1vGFgmd18X
c/9Vrcwqkovd13a33yPEJ48U7JyEbT9BxT19ZvjMCSYRNGe1gOqiNvYl9V4YmDQB
QBPo9J3An+f7UuVdV0PN1UMT+gElwjLpvzm1mUQuOpEesOKE39c=
=JPoZ
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==K58UXAtz9EPKAToms4BLPqvHqtYNdq==--



--===============4549798481148919402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4549798481148919402==--


