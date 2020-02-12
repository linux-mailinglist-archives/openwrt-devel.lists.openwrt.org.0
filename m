Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6471B15A98A
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 13:57:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZsutaYWy9QKbnStbQwtAvD2cE8YgEvkItBZEw2yxYtw=; b=cFBjM0IC5byPHDxaZtOKuTXKx
	Y0ec4znGbSvSNAdvGxLe+4aVKvEAdfed0N/s1cURgbSSsIKoLjC0Tu2lwsFzCUsdux3cBc09/kxkR
	AhapA/pV3auySnY9iqU5ReTBo4K7fa5bHrV9Z+Hys4TdqdEnBaxv1OzWMIRzYgqZCJEFg44SDVS2Q
	kxEZjamZPp4BoyxRFaNj/N/qaoROE5c4oRSXdD/2QNa9rDyFoq5X9oCKhgbDLXPxWtWBXg20AaOZR
	ZpRBcgK5DXlv2l3HRn0c7R+te4tm63DY4u9YnhLNJ9guAJ00+8cIUCPKKcQXGoCykyEFYQAVtStTY
	2k3ea5hMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1raB-0006iB-Na; Wed, 12 Feb 2020 12:57:35 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1rZz-0006gu-MP
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 12:57:25 +0000
Received: from mailpile.local (palmtree.beeroclock.net [178.79.160.154])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 51ECD1FC6E;
 Wed, 12 Feb 2020 12:57:21 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <20200212124335.GG38853@meh.true.cz>
References: <20200212124335.GG38853@meh.true.cz>
User-Agent: Mailpile
Message-Id: <XgSFD2uiYzmgwj4nQnyeXGeIyQs4ZoHeWou5o6hp23c0@mailpile>
Date: Wed, 12 Feb 2020 12:55:37 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_045723_991475_20B43B83 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH v4 1/2] serial: ar933x_uart: add rs485
 support
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
Cc: Chuanhong Guo <gch981213@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 Daniel Golle <daniel@makrotopia.org>, Piotr Dymacz <pepe2k@gmail.com>
Content-Type: multipart/mixed; boundary="===============5485590591293103476=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5485590591293103476==
Content-Type: multipart/signed; boundary="==FbXLm2NgWxATHNCRAkvvUdE5xeP39I==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==FbXLm2NgWxATHNCRAkvvUdE5xeP39I==
Content-Type: multipart/mixed; boundary="==RPUGAFigwMqFUpnIdHBGC2EPESLLkc=="
Subject: Re: [OpenWrt-Devel] [PATCH v4 1/2] serial: ar933x_uart: add rs485
 support
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: "Adrian Schmutzler" <mail@adrianschmutzler.de>,
 "Chuanhong Guo" <gch981213@gmail.com>, "Daniel Golle" <daniel@makrotopia.org>,
 "Piotr Dymacz" <pepe2k@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <20200212124335.GG38853@meh.true.cz>
References: <20200212124335.GG38853@meh.true.cz>
User-Agent: Mailpile
Date: Wed, 12 Feb 2020 12:55:37 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==RPUGAFigwMqFUpnIdHBGC2EPESLLkc==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ClBldHIgIMWgdGV0aWFyICA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cgo+IAo+IEkgcmVhbGx5IGRv
bnQgZ2V0IHRoaXMgcGFydCBhbmQgQlRXIGl0IHBvc3NpYmx5IGJyZWFrcwo+IGByczQ4NS1yeC1k
dXJpbmctdHhgIERUUyBiaW5kaW5nLgoKSnVzdCBhcyBhbiBhc2lkZSwgdGhhdCdzIG5vdCBhIHJl
cXVpcmVkIGJpbmRpbmcsIGFuZCBub3QgdXNlZCBhbGwKdGhhdCBvZnRlbiBlaXRoZXIuIE5vdCBh
bGwgaGFyZHdhcmUgZXZlbiBzdXBwb3J0cyB0aGlzLCBldmVuIGlmCnlvdSBtYWtlIHN1cmUgdGhl
IGRyaXZlciBoYW5kbGVzIGl0IHdlbGwuIFRoZSB0cmFuc2NlaXZlcnMKbm9ybWFsbHkgaGF2ZSBz
ZXBhcmF0ZSBwaW5zIGZvciBkcml2ZXIgZW5hYmxlIGFuZCAobm90KSByZWNlaXZlcgplbmFibGUs
IGJ1dCB0aGV5J3JlICh2ZXJ5KSBvZnRlbiB3aXJlZCB0b2dldGhlciwgc28geW91IF9jYW4ndF8K
cnggZHVyaW5nIHR4LiBJZiB5b3VyIGhhcmR3YXJlIGRvZXMgb2ZmZXIgaXQsIGl0IGNhbiBiZSB1
c2VkIHRvCmRvIGNvbGxpc2lvbiBkZXRlY3Rpb24sIGJ1dCBpdCdzIGRlZmluaXRlbHkgYW4gb3B0
aW9uYWwgYmluZGluZy4KSSdkIF9NVUNIXyByYXRoZXIgc2VlIHRoZSBiYXNpYyBiaW5kaW5ncyB3
b3JraW5nIF9hdCBhbGxfIHJhdGhlcgp0aGFuIGFza2luZyBmb3IgdGhpcyBvcHRpb25hbCBvbmUu
CgpTaW5jZXJlbHksCkthcmwgUGFsc3Nvbg==

--==RPUGAFigwMqFUpnIdHBGC2EPESLLkc==--

--==FbXLm2NgWxATHNCRAkvvUdE5xeP39I==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl5D9doACgkQGai1D9TV
yvbl4w/7BHxovAzdNZRM8dmq0+Ib+YYEtsUcy0e+bDeHCOKChoTq1rVn4itnrvH3
z3Kxi8pwrZBCy7Gl6ICvwig34oVljaFHjFfV3uurZQJ674xMtmNNpRZoic/j8jQM
CCUIGbkxss2fGcBFgsfIZFg3eU/48ye9ACBTJvzaHAAL0fShJ+uqtIzam3eNhiDs
VFrJQdm4kVtFec+mw4tdAguFnlOGODNGhSY5YwG/PKz9DC2IQTpTtbMyYRwq3gQH
Jw2kgz010m5JE2Qj5bBotQ8bb8hYiI3eNiujSpEjslMZ57bjs1tnIJtHxZ6Ud6Hy
WDP1+qcnbM3OSMVOFFfdkz1Yd5PAEFDhoWYu31z4sYnc8/GBjO9jBE4+Kll1XWUe
O7Gd6VUvXia0oTePeSZHL3xzT9meXd37nRrgJPzq2i7n7p7v50YMQ4yMolFEx/Tl
dTiw6PUnNSxP06A/RCYPeR0dZeieYnmZlTD04FGVQSAfF0KSnvdQITa42nlLWmb8
DmUCz6Yx471hFeMB8ucUQxI8kV6zoGZoLDSVr0oh3Xd2fVvbAHMg/pUAnfNFOBpn
V6r0May9fKbcOAMZbVb1essjBjB/OXx6t0gNdlTaKElaTBpiBOYAqsjfG+AC3Ndg
svOju3eKj9YF08X4KnPb6wxCc0o7QxRGx2ZXFkQxtaR5fdsa3c8=
=BUY3
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==FbXLm2NgWxATHNCRAkvvUdE5xeP39I==--



--===============5485590591293103476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5485590591293103476==--


