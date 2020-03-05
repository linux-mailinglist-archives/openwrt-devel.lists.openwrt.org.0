Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD85A17A40F
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 12:20:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eGer/F0wbmp2+Ruv44J7OyDE68U7wFXMHGbCPokq0wY=; b=hgGvUOMCXevdDXB287O3mFiHS
	3Z0C3DeProyhln0/m2+rv+c+BMeS0+XgdK44zago/+CXfBzAeHg+hfyb2Tz3VrSbJ++1GyAkaMObT
	8AF1qCKIy4f9dK6xW0gC9VS+Qn9UDrF4/obuWm+QFB8UhIwD9VP9CwDdR+FqyC6x34X7XpCBR+AIO
	cAZ0koFjHtkhDQfDUYhmzUeBElamdqi2cfhq72iZaax3WoOkNjUqrCg9BUaycoNZVZN36R+RszWZl
	NZIMswHTEzSYsNJ9AD25nyifA2efNBEwUGvyfqLBvmGOihjfK8e3Nz4vlS84nFI5UwgSIdOJ5Gs+3
	V28OOkVog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9oY4-0007Iv-4a; Thu, 05 Mar 2020 11:20:16 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9oXq-0006hc-Af
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 11:20:04 +0000
Received: from mailpile.local (palmtree.beeroclock.net [178.79.160.154])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id EAD442098E;
 Thu,  5 Mar 2020 11:19:54 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <20200305084912.14659-1-ynezz@true.cz>
References: <20200305084912.14659-1-ynezz@true.cz>
User-Agent: Mailpile
Message-Id: <px9v7VGUzQWVsQG8LA985yU7sHqErVFNEMj8VRtq23cb@mailpile>
Date: Thu, 05 Mar 2020 11:18:02 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_032002_647359_DF7BA716 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH] rpcd: fix respawn settings
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, Jo-Philip Wich <jow@mein.io>,
 Florian Eckert <fe@dev.tdt.de>
Content-Type: multipart/mixed; boundary="===============5997845466662140528=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5997845466662140528==
Content-Type: multipart/signed; boundary="==BWhxX6o8UrZaMNMUs3KV5X4xk9HWsQ==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==BWhxX6o8UrZaMNMUs3KV5X4xk9HWsQ==
Content-Type: multipart/mixed; boundary="==TiHs6kTUkXLZdki4vs8KqW35GQIGD6=="
Subject: Re: [OpenWrt-Devel] [PATCH] rpcd: fix respawn settings
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: "Florian Eckert" <fe@dev.tdt.de>, "Hauke Mehrtens" <hauke@hauke-m.de>,
 "Jo-Philip Wich" <jow@mein.io>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <20200305084912.14659-1-ynezz@true.cz>
References: <20200305084912.14659-1-ynezz@true.cz>
User-Agent: Mailpile
Date: Thu, 05 Mar 2020 11:18:02 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==TiHs6kTUkXLZdki4vs8KqW35GQIGD6==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CgpQZXRyIMWgdGV0aWFyICA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gQ29tbWl0IDQzMmVjMjky
Y2NjOCAoInJwY2Q6IGFkZCByZXNwYXduIHBhcmFtIikgaGFzIGludHJvZHVjZWQKPiBpbmZpbml0
ZSByZXN0YXJ0aW5nIG9mIHRoZSBzZXJ2aWNlIHdoaWNoIGNvdWxkIGJlIHJlYWNoZWQgb3Zlcgo+
IG5ldHdvcmsuIAoKRGlkbid0IHdlIGFscmVhZHkgZGVjaWRlIHRoYXQgdGhpcyB3YXNuJ3QgdGhl
IGNhc2U/CgpUaGlzIGlzIG5vdCByZWNvbW1lbmRlZCBzZWN1cml0eSBwcmFjdGljZSBhcyBpdCBt
aWdodAo+IGdpdmUgcG90ZW50aWFsIGFkdmVyc2FyeSBpbmZpbml0ZSBudW1iZXIgb2YgdHJpZXMg
aW4gY2FzZSB0aGVyZQo+IG1pZ2h0IGJlIHNvbWUgaXNzdWUgaW4gdGhlIHJwY2Qgb3IgaXRzIHN1
cnJvdW5kaW5nIHN0YWNrLgoKU3VyZSwgbm93IGl0J3MgYSBEb1MgaW5zdGVhZCA6KSBJdCdzIGFs
d2F5cyBhIHRyYWRlb2ZmLCBidXQgSQp0aGluayB5b3UncmUgZ2xvc3Npbmcgb3ZlciB0aGUgdHJh
ZGVvZmYgaGVyZS4KCj4gCj4gU28gbGV0cyByZW1vdmUgdGhlIGN1cnJlbnRseSBib2d1cyBgcmVz
cGF3bl9yZXRyeWAgdmFyaWFibGUgKGl0Cj4gd2Fzbid0IHBvc3NpYmxlIHRvIG92ZXJyaWRlIGl0
IGFueXdheSksIHJldmVydGluZyB0byB0aGUKPiBwcmV2aW91cyBkZWZhdWx0IG1heC4gb2YgNSBz
ZXJ2aWNlIHJlc3RhcnRzIHdoaWNoIGNvdWxkIGJlIG5vdwo+IG92ZXJyaWRlbiB2aWEgc3lzdGVt
J3MgVUNJIHNldHRpbmdzIGlmIGRlc2lyZWQuCj4gCj4gQ2M6IEpvLVBoaWxpcCBXaWNoIDxqb3dA
bWVpbi5pbz4KPiBDYzogRmxvcmlhbiBFY2tlcnQgPGZlQGRldi50ZHQuZGU+Cj4gQ2M6IEhhdWtl
IE1laHJ0ZW5zIDxoYXVrZUBoYXVrZS1tLmRlPgo+IEZpeGVzOiA0MzJlYzI5MmNjYzggKCJycGNk
OiBhZGQgcmVzcGF3biBwYXJhbSIpCj4gU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5l
enpAdHJ1ZS5jej4KPiAtLS0KPiAgcGFja2FnZS9zeXN0ZW0vcnBjZC9maWxlcy9ycGNkLmluaXQg
fCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9wYWNrYWdlL3N5c3RlbS9ycGNkL2ZpbGVzL3JwY2QuaW5pdAo+IGIv
cGFja2FnZS9zeXN0ZW0vcnBjZC9maWxlcy9ycGNkLmluaXQgaW5kZXgKPiAzZTllYTViYmYzMjku
LmY3NWQwZTBmMGVlYSAxMDA3NTUKPiAtLS0gYS9wYWNrYWdlL3N5c3RlbS9ycGNkL2ZpbGVzL3Jw
Y2QuaW5pdAo+ICsrKyBiL3BhY2thZ2Uvc3lzdGVtL3JwY2QvZmlsZXMvcnBjZC5pbml0Cj4gQEAg
LTEyLDcgKzEyLDcgQEAgc3RhcnRfc2VydmljZSgpIHsKPiAgCj4gIAlwcm9jZF9vcGVuX2luc3Rh
bmNlCj4gIAlwcm9jZF9zZXRfcGFyYW0gY29tbWFuZCAiJFBST0ciICR7c29ja2V0OistcyAiJHNv
Y2tldCJ9ICR7dGltZW91dDorLXQgIiR0aW1lb3V0In0KPiAtCXByb2NkX3NldF9wYXJhbSByZXNw
YXduICR7cmVzcGF3bl9yZXRyeTotMH0KPiArCXByb2NkX3NldF9wYXJhbSByZXNwYXduCj4gIAlw
cm9jZF9jbG9zZV9pbnN0YW5jZQo+ICB9Cj4gIAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWw=

--==TiHs6kTUkXLZdki4vs8KqW35GQIGD6==--

--==BWhxX6o8UrZaMNMUs3KV5X4xk9HWsQ==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl5g4AEACgkQGai1D9TV
yvY7LA/9Er+YJEBSigiP9zabclxlMTPvBbKDv0Goqi45RibirJpbO5vr/rpsTT2c
viIlHRY14dgmez6g87Hkk8UKc4/zUslDHY4qfkOnQYFiI52cKm/LUIC1PDdf8jHL
V2Q65JL6osNNFwBcBW4nYtocZB8sWEKhq3sKK8CLGQgCtWNRSjRsvRzURZ3hcXdI
qOQ+w2AHeLTSJsmQxc4H2EPBKcRYjSocLBl8hd4w+pzH8nn6V14AqTIzK4fRe9N1
7eMlm3EPNyoSnCNBYbHCW6nLchvgq5+PPeo9ViPO3xWJ5xCKey7i07qlveuUoybE
6qQlgif2b9B6yo1rhfG5/3b+S5l7vODhREMmU5sqQDpXNI54EsovXQ42Bip4AYpJ
HXtEhSlkyTSZu+YW+P002bmcrA5EjsM84ktU5+05BSpFtsAUdTGPNC28T+zMDF6b
sI2DNeEjxFjj/Q2e40geeP+FTmDY8KJW7avm339gJkZoALng4dhPWA+YMOjL1pEH
tW0tPzhbpm7cBXpQJ1muw5BtTF68CDg/84dGi2e/Ic/66P/87ccT0lcjO9qmqSA3
qksr/4Hub+7bx2vCsbsSOlru2Fb9egKTjRYHF5pga3LVrHGtqEXxC0CqTMBUcDzi
6eFeCUIBiBp2ioUl/zz+87O5sIw/BFtGz3+e5rz6V/ZhJEmmrhc=
=oJHa
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==BWhxX6o8UrZaMNMUs3KV5X4xk9HWsQ==--



--===============5997845466662140528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5997845466662140528==--


