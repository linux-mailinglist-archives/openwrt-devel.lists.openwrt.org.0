Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5C11D7840
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 14:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cMRvwRuS3NlGtRwTmvacwlI9ARoWuNi/vIhn/ItLysI=; b=pvK7D6XtkLwtaNvKThJVAPJkp
	aBQv2JoznsYbXQnawx3WisZ0Ftka77wq8VGIOwuGp2+5yEQnUf+mchkZ5xxdl/OEFnff1r6Fj0JIo
	RdhtC6AU2B9r7t7mfgs/UosfKg/pS1SoFtEsUbolxfE1nod6kFzn5noBsj7iiTTffM/0PVAbssObL
	OaIEdqoamjDPZJg0Hqw5nKTvjaU8omkcUo3BWjt6KCaCLbCvk9w+/rRyUldc548p5qHABcAZT0j5b
	u1zdJyagQysmDs1g8NxVsYyvGzLvsmVREjVxzwUiTD6iGlkpiv9U8zn03rJBHyyHbKijcWPt65kOU
	GrAQ8W5jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaegD-0006C7-Fa; Mon, 18 May 2020 12:15:37 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaeg7-0006Ap-F4
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 12:15:33 +0000
Received: from mailpile.local (palmtree.beeroclock.net [178.79.160.154])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 4BDBD1F63B;
 Mon, 18 May 2020 12:15:28 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: "Michael Jones" <mike@meshplusplus.com>
In-Reply-To: <CAJQUmm4BD0a3yivVxwxQ25dpi+oBAntugtt1SCUnaPh2qzqbWA@mail.gmail.com>
References: <CAJQUmm4BD0a3yivVxwxQ25dpi+oBAntugtt1SCUnaPh2qzqbWA@mail.gmail.com>
User-Agent: Mailpile
Message-Id: <iHkCf82LcJ8tb2yXdwGyz3CXLCnkNhascryyhgQw23f0@mailpile>
Date: Mon, 18 May 2020 12:14:01 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_051531_777112_03497759 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] Ubus based service watchdog?
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
Cc: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8746965901368887552=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8746965901368887552==
Content-Type: multipart/signed; boundary="==Zyk6cwEECRIcj9eIaEENWZMcUqqRY2==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==Zyk6cwEECRIcj9eIaEENWZMcUqqRY2==
Content-Type: multipart/mixed; boundary="==oYxMuJgikNs3goczCxU8XL4Skz7ojz=="
Subject: Re: [OpenWrt-Devel] Ubus based service watchdog?
From: Karl Palsson <karlp@tweak.net.au>
To: "Michael Jones" <mike@meshplusplus.com>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <CAJQUmm4BD0a3yivVxwxQ25dpi+oBAntugtt1SCUnaPh2qzqbWA@mail.gmail.com>
References: <CAJQUmm4BD0a3yivVxwxQ25dpi+oBAntugtt1SCUnaPh2qzqbWA@mail.gmail.com>
User-Agent: Mailpile
Date: Mon, 18 May 2020 12:14:01 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==oYxMuJgikNs3goczCxU8XL4Skz7ojz==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Ck1pY2hhZWwgSm9uZXMgPG1pa2VAbWVzaHBsdXNwbHVzLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBN
YXkgMTUsIDIwMjAgYXQgNDozNSBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IHdy
b3RlOgo+IAo+ID4gTWljaGFlbCBKb25lcyA8bWlrZUBtZXNocGx1c3BsdXMuY29tPiBbMjAyMC0w
NS0xNSAwMjozOTo1Ml06Cj4gPgo+ID4gPiBXaGF0J3Mgd3Jvbmcgd2l0aCBtb25pdCBpcyB0aGF0
IGl0J3MgZG9jdW1lbnRhdGlvbiBpcyBnaWdhbnRpYwo+ID4KPiA+IEdvb2QgZG9jdW1lbnRhdGlv
biB3aXRoIGEgbG90IG9mIGV4YW1wbGVzIGlzIGhhcmRseSBhIHByb2JsZW0sIGl0cyBhIGJvbnVz
Cj4gPiBwb2ludCBmb3IgbWUuCj4gPgo+ID4KPiBJIHRoaW5rIHlvdSBtaXN1bmRlcnN0b29kLgo+
IAo+IE1vbml0IGhhcyBhIG1hc3NpdmUgZmVhdHVyZSBzdXJmYWNlLiBJJ20gbm90IGV2ZW4gZ29p
bmcgdG8KPiBjb25zaWRlciBpdCwgaXQgZ29lcyBmYXIgZmFyIGJleW9uZCB0aGUgbGV2ZWwgb2Yg
Y2FwYWJpbGl0eQo+IHRoYXQncyBhcHByb3ByaWF0ZSBmb3IgbXkgdXNlIGNhc2UuCgpmd2l3LCBJ
J3ZlIGJlZW4gdXNpbmcgbW9uaXQgZm9yIGV4YWN0bHkgdGhlIHNvcnQgb2YgIm15IHByb2Nlc3Nl
cwphcmUgaW1wb3J0YW50LCBteSBjb2RlIGlzIG5vdCBwZXJmZWN0LCBhbmQgdGhpbmdzIHNob3Vs
ZCBnZXQKcmVzdGFydGVkIiBzaW5jZSBiZWZvcmUgcHJvY2QgZXZlbiBoYWQgcHJvY2VzcyByZXN0
YXJ0aW5nLiBJdApfanVzdCB3b3Jrc18gYW5kIGhhcyBiZWVuIGEgbWFqb3IgaGVscC4gSSdtIHN1
cmUgcHJvY2QgY291bGQgYmUKZXhwYW5kZWQgd2l0aCBzb21lIGJhc2ljIHBpZWNlcywgc3VyZSwg
YnV0IHdoZXJlIGRvZXMgaXQgZW5kPwptb25pdCB3b3JrcyByaWdodCBub3csIGFuZCBoYXMgYmVl
biB0ZXN0ZWQgYW5kIHVzZWQgYnkgYSBsYXJnZQpjYXN0LgoKU2luY2VyZWx5LApLYXJsIFBhbHNz
b24=

--==oYxMuJgikNs3goczCxU8XL4Skz7ojz==--

--==Zyk6cwEECRIcj9eIaEENWZMcUqqRY2==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl7CfAsACgkQGai1D9TV
yvbhtw//dFNgo/+7NWklUyxTIasaAPlCsZ0y/1rsXESO26rrBYys83L2fAATvJ01
YoGqizJMLtm7LzuSIjd5BKf+1AFroYQckKoxpBPbn5qdHWXU3lK8IeIyV6SwYMU7
4avpcoflwbnC0x7xcK5/mHOWm0qs3OvWLJqvYEDkMZHK/olB4FQ2v6zCuEpC5IJM
ZAE0QxlueNsHvgr3jnQA2CfrSj/noQQFBkbDxrxkuiynwrtfvUyxeb5bWjCvLUor
K1dX1oZxpJepqPymnlgpfxuwdKPNwyaobFn35A/P3+gkYcBhfej89rQd0mDkSgzj
3mVGMOIpqXdjlN7IcX798yFKunnu/jOEK1HerRfmqjlWJ6gNjkHfwvZgT7+Dbo1i
0xVP+/3GUvYQUgNaMbRWOFyE0JmPOHxY2Gu98bbajilhCURB2GPO01Q1HkZQ6hg1
14N6Iz1xYiIxCBlX0BY/x17fJqIFQNOh9wlQcJBboW6BoDGnBhJPGTjXm1z5IST7
ou5nup38s4P6QiW7p84LMCldGjdPvXT7UHSPJ4tk+LfxtuNrrmrRruLrHXhRYu3A
1T2jrBXIDI6RNEJVaU6aGEnWs7KwJ/0bpNGp/AiXlI4kDFc61TU7r8cxQPrT1ucM
9P4NjRS0cKk44sMdsB7bFpLZIwR9/UsarRkw4n3ZdHhV7UgKyLU=
=4sZT
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==Zyk6cwEECRIcj9eIaEENWZMcUqqRY2==--



--===============8746965901368887552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8746965901368887552==--


