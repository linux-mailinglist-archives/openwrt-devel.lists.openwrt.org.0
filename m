Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96E0A9EA2
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 11:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dru0ntxJKtoy4s4ILuMfu3OdrLV78uO2VwNit4Ld960=; b=AxXeRAdX/3W3NCDwufM9hfdgg
	TR5s+LaAz7PD8YU+oVGiW0xduarDMwsRkccB074SlrVbDxsdWyaS8difRo62pj5k8uUO/mKXOaJEg
	6i2rs44gmfveFZ4bLZGQ6jtfo4dZZzQ77HpQbNO+bVz4OEp4wJ0ed8Ybp20fsrs7nNQbTLPuR8rIf
	hVmARPycqVYSOaQBygW5hPht9hBmw1uDmC1DdLdHmKkCrWpZj3wQcIi1keg7x9LX8CMLCnFx/KQ0i
	SBbucg2o5I66FJUMjWPBPzoP8Ib6TPxYst4ZRDv/uUpjXeMztLteuApBgQsW63utVpwkzFIqJuLwt
	Yr7632Xsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oHb-00080s-9a; Thu, 05 Sep 2019 09:42:27 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oHQ-00080W-Mv
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 09:42:18 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 0DCE31F5B1;
 Thu,  5 Sep 2019 09:42:13 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: "David Bauer" <mail@david-bauer.net>
In-Reply-To: <2b9d586f-66b2-07d4-29c0-40f8b47ce763@david-bauer.net>
References: <2b9d586f-66b2-07d4-29c0-40f8b47ce763@david-bauer.net>
User-Agent: Mailpile
Message-Id: <yqtHLS6ZYrBsCKEirkqVEIsdUcDYxjh4WR65RkyI236f@mailpile>
Date: Thu, 05 Sep 2019 09:41:35 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_024217_010726_842AF24B 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: eg200: enable status led usage
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>, karlp <karlp@etactica.com>
Content-Type: multipart/mixed; boundary="===============3801430010059929387=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3801430010059929387==
Content-Type: multipart/signed; boundary="==ttxp357NBShym6Chi6em4RrsHqswQY==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==ttxp357NBShym6Chi6em4RrsHqswQY==
Content-Type: multipart/mixed; boundary="==NQcwaztZtqR6iaFeLwPjk3EQ4nfjJ4=="
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: eg200: enable status led usage
From: Karl Palsson <karlp@tweak.net.au>
To: "David Bauer" <mail@david-bauer.net>
Cc: karlp <karlp@etactica.com>, openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <2b9d586f-66b2-07d4-29c0-40f8b47ce763@david-bauer.net>
References: <2b9d586f-66b2-07d4-29c0-40f8b47ce763@david-bauer.net>
User-Agent: Mailpile
Date: Thu, 05 Sep 2019 09:41:35 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==NQcwaztZtqR6iaFeLwPjk3EQ4nfjJ4==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGF2aWQgQmF1ZXIgPG1haWxAZGF2aWQtYmF1ZXIubmV0PiB3cm90ZToKPiAKPiBHaXQgd29uJ3Qg
bGV0IG1lIHB1c2ggdG8gbWFzdGVyIHdpdGhvdXQgYSBvbi1tYXRjaGluZyBTb0IuCj4gCj4gJCBn
aXQgcHVzaCB1cHN0cmVhbSB1cHN0cmVhbS1tYXN0ZXI6bWFzdGVyCj4gRW51bWVyYXRpbmcgb2Jq
ZWN0czogMjEsIGRvbmUuCj4gQ291bnRpbmcgb2JqZWN0czogMTAwJSAoMjEvMjEpLCBkb25lLgo+
IERlbHRhIGNvbXByZXNzaW9uIHVzaW5nIHVwIHRvIDQgdGhyZWFkcwo+IENvbXByZXNzaW5nIG9i
amVjdHM6IDEwMCUgKDExLzExKSwgZG9uZS4KPiBXcml0aW5nIG9iamVjdHM6IDEwMCUgKDExLzEx
KSwgMS4yMCBLaUIgfCA2MTYuMDAgS2lCL3MsIGRvbmUuCj4gVG90YWwgMTEgKGRlbHRhIDcpLCBy
ZXVzZWQgMCAoZGVsdGEgMCkgcmVtb3RlOiBObyBtYXRjaGluZyBTb0IKPiBsaW5lIGZvdW5kIGZv
ciBhdXRob3IgS2FybCBQw6Fsc3NvbiA8a2FybHBAZXRhY3RpY2EuY29tPiByZW1vdGU6Cj4gaW4g
Y29tbWl0IGExNTVhMTUzZTA5NDlhZWZkOTE0NzA2MWY5YTAwYTBkOTFkNDQwMGEgcmVtb3RlOiBU
bwo+IGdpdC5vcGVud3J0Lm9yZzpvcGVud3J0L29wZW53cnQuZ2l0Cj4gICEgW3JlbW90ZSByZWpl
Y3RlZF0gICAgICAgdXBzdHJlYW0tbWFzdGVyIC0+IG1hc3RlciAocHJlLXJlY2VpdmUgaG9vayBk
ZWNsaW5lZCkKPiBlcnJvcjogZmFpbGVkIHRvIHB1c2ggc29tZSByZWZzIHRvCj4gJ2dpdEBnaXQu
b3BlbndydC5vcmc6b3BlbndydC9vcGVud3J0LmdpdCcKClRoYW5rcyBmb3IgdHJ5aW5nLgoKSSds
bCBoYXZlIHRvIGZpbmQgYW5vdGhlciBtYWlsIHNlcnZlciB0byBzZW5kIHRocm91Z2guIEl0IHdh
cwpwcmV2aW91c2x5IHNlbmRpbmcgdGhyb3VnaCBteSBwcml2YXRlIG1haWwgc2VydmVyLCBidXQg
dGhhdAp3YXNuJ3QgcmVhbGx5IGFwcHJvcHJpYXRlIGZvciBtYWlsIGJlaW5nIHNlbnQgZm9yIHdv
cmsuIEkndmUgdGhlbgpmaW5hbGx5IG1hbmFnZWQgdG8gZ2V0IGdpdC1zZW5kLWVtYWlsIHRvIHdv
cmsgdmlhIHRoZSB3b3JrIGVtYWlsCnNlcnZlciwgYnV0IGdldCB0aGlzIHNvcnQgb2YgcHJvYmxl
bS4KClRoZSBjb21taXRzIHRoZW1zZWx2ZXMgX2RvXyBoYXZlIHRoZSBhdXRob3IuCgpJJ3ZlIGp1
c3QgYmVlbiBzdWdnZXN0ZWQgYSBtZXRob2Qgb2YgYWRkaW5nIGEgc2Vjb25kIEZyb206IGZpZWxk
CnRvIHRoZSBhbm5vdGF0ZWQgcGF0Y2ggd2hlbiBzZW5kaW5nLCB3aGljaCBtYXkgaGVscCwgb3Ro
ZXJ3aXNlCkknbGwgcmV2ZXJ0IHRvIHRoZSAoY2xlYXJseSBzZWNvbmQgdGllcikgbWV0aG9kIG9m
IHNlbmRpbmcgUFJzCnZpYSBnaXRodWIsIHdoZXJlIHRoZSBhY3R1YWwgZ2l0IGNvbW1pdHMgYXJl
IHByZXNlcnZlZCwgaW5zdGVhZApvZiB3aGF0ZXZlciB0aGUgd29ybGQgb2YgbWFpbCBkZWNpZGVz
IHRvIG1hbmdsZSBhbmQgcmV3cml0ZSBvbgp0aGUgd2F5LgoKU2luY2VyZWx5LApLYXJsIFBhbHNz
b24g

--==NQcwaztZtqR6iaFeLwPjk3EQ4nfjJ4==--

--==ttxp357NBShym6Chi6em4RrsHqswQY==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl1w2EIACgkQGai1D9TV
yva0cQ//TfmwZ5LlkdTeimMXRhb0j1ajJ/i23t6UU8FRvA9jSczCnIGi435qCfKs
R6E3OOF5PZLjJ1vzU/A+CLtqgEqQ6VXDk51N4UbXEzFM0M1AaF8wKIaojuB/aG5A
Ffb1A0drqoqNJhYpi+IVlXurnDFBX4QvE/+mBhazBM5O+Qk0i9tONoH4Xb15AfbI
qUO6i9++KVaI5dxY4LSkL/NnwMRlCyptqkKTUMaZ79up+Uunpv0YUyJlORsiKNX+
yuMBlkNHcWJtpgCTQM33y2w8a6MzOLdyVctt1FL95+PnTxyOrfZ4UAA0aPpOBhpp
tAIosFYHTZoL0pZVA7IH5Bgdu16FxnczIRglMF4SZA5YMR5dOKHc9xZoNV3UZomu
blNfhWqSWbVcJtyM9j+wyusAX2olSMNf4BDbSpXsgqMqjQxiKDV5XANNLf08kgbH
dYbK/ZJfDmkIFFIdan5nbz6YScz+/CfZX3Avqp8SnYKDZ0XDC8HWhXUJZVrFCLcv
SMKTz9s2wwyozqBV93UKELEDq+ec9YTZW30n09rqbDiKc4YaNiXurzIeArKtUkAc
kGyTUOJlNcciT2s2NjQ9+GSv/UYlG18rsXcuDjKUTNN3DD8BD24BzB+AZKuyQtq0
Jrpg6yZnpR8HGV1U3o1Je92wv6IXhcN0FGiUkjVWY8ThrJ4HlC4=
=4USO
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==ttxp357NBShym6Chi6em4RrsHqswQY==--



--===============3801430010059929387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3801430010059929387==--


