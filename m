Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC58C169039
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 17:18:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zu71/2eNlKBwzsI2g94qMh2oRUzEj1CRy/si38QybAE=; b=aonG8nLJYvytDSANl43KDZ7+4
	HPEd8JpWumjfoCy4d3Eu8P4cy5a1KnF5juxgobW0UI96/kp6Yfy0OuPkn9V+rMNPzHBenfl81DecY
	8doaObACPBiAKa+KEZpo7MOOR8+9m3N7P4MiGr+DAl8nzfBRwDkdCsQNLmiQPyHVsd+zyLxFLmSaK
	KE0Sm1+3QBfErBrC9j4daoaNjWXf/tkRMvUDQ+pzqLgjPbgOgt9FHKY+TImTIXY5ph0/EQ69dd7s2
	8znNEB0tU0YoJ3FuKbajYiwTla6zV+Bf5l1+CloDgNSEQKv9SvOHqFEMrc7ob1nobMpBGB+0YtCCG
	+9eU+w1PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5XUJ-0005wJ-Pj; Sat, 22 Feb 2020 16:18:43 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5XU4-0005uK-Iw; Sat, 22 Feb 2020 16:18:30 +0000
Received: from mailpile.local (palmtree.beeroclock.net [178.79.160.154])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id AC1E11FB78;
 Sat, 22 Feb 2020 16:18:24 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <20200222121615.GC99033@meh.true.cz>
References: <20200222121615.GC99033@meh.true.cz>
User-Agent: Mailpile
Message-Id: <tfD6cwMaJSibKt6gdBUXW6xKoryyGPipxwo8JTJe23c5@mailpile>
Date: Sat, 22 Feb 2020 16:18:28 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_081829_150370_BC943D96 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] Next maintenance releases
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
Cc: Chris Nisbet <nischris@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5682494786773226518=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5682494786773226518==
Content-Type: multipart/signed; boundary="==KqLywyMUID2Nxvw3gUEE4SJhbLZ9Nu==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==KqLywyMUID2Nxvw3gUEE4SJhbLZ9Nu==
Content-Type: multipart/mixed; boundary="==dYBbTzjwpPGodcWRUQGVjEPx7TuHzD=="
Subject: Re: [OpenWrt-Devel] Next maintenance releases
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <20200222121615.GC99033@meh.true.cz>
References: <20200222121615.GC99033@meh.true.cz>
User-Agent: Mailpile
Date: Sat, 22 Feb 2020 16:18:28 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
Cc: "Chris Nisbet" <nischris@gmail.com>, "Jo-Philipp Wich" <jo@mein.io>,
 "OpenWrt Development List" <openwrt-devel@lists.openwrt.org>,
 "OpenWrt Project Administration" <openwrt-adm@lists.openwrt.org>

--==dYBbTzjwpPGodcWRUQGVjEPx7TuHzD==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ClBldHIgIMWgdGV0aWFyICA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gS2FybCBQYWxzc29uIDxr
YXJscEB0d2Vhay5uZXQuYXU+IFsyMDIwLTAyLTIxIDEzOjE0OjI5XToKPiAKPiBIaSwKPiAKPiA+
IEkgd291bGQgdmVyeSBtdWNoIGxpa2UgdG8gc2VlCj4gPiBodHRwczovL2J1Z3Mub3BlbndydC5v
cmcvaW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19pZD0yODMzIG1lcmdlZAo+ID4gKGl0IGNvbnRh
aW5zIGEgZml4IGFuZCB0ZXN0cykgZm9yIDE5LjA3LCBhcyBpdCBmaXhlcyBhIHJlZ3Jlc3Npb24K
PiA+IGluIGJlaGF2aW91ciB0aGVyZS4gKHVtZG5zIHN0b3BwZWQgd29ya2luZykKPiAKPiBbcHV0
aW5nIGFzaWRlIHRoZSBmYWN0LCB0aGF0IHRoZSBwYXRjaGVzIHdlcmVuJ3Qgc2VuZCB2aWEgdGhl
Cj4gc3RhbmRhcmQgd2F5WzFdIHNvIHRoZXkgd2VyZW4ndCByZXZpZXdlZCB5ZXRdCj4gCj4gcGxl
YXNlIG5vdGUsIHRoYXQgdGhpcyBwcm9wb3NlZCBmaXggaXMgbm90IGluY2x1ZGVkIGluIHRoZQo+
IG1hc3RlciB5ZXQsIHRodXMgdW50ZXN0ZWQgYnkgdGhlIHdpZGVyIGF1ZGllbmNlIGFuZCB5b3Un
cmUKPiByZXF1ZXN0aW5nIGluY2x1c2lvbiBpbnRvIHN0YWJsZSByZWxlYXNlIDE5LjA3LgoKQ29y
cmVjdC4gQnJlYWtpbmcgdW1kbnMgaXMgYSByZWdyZXNzaW9uIHRoYXQgc2hvdWxkIGJlIGZpeGVk
LiBJJ20KaG9uZXN0bHkgbW9yZSBzdXJwcmlzZWQgdGhhdCB0aGlzIHN0aWxsIGlzbid0IGZpeGVk
IGluIG1hc3RlcgplaXRoZXIuCgo+IAo+IDEuIGh0dHBzOi8vb3BlbndydC5vcmcvc3VibWl0dGlu
Zy1wYXRjaGVzCgpOb3QgbXkgcGF0Y2gsIGp1c3QgYW5vdGhlciBwZXJzb24gd2l0aCB0aGUgc2Ft
ZSBicmVha2FnZSBzbyBJCmNhbid0IGNvbnRyb2wgaG93IHRoZXkgc3VibWl0dGVkIGl0LiBUaGV5
IGZpbGVkIGEgYnVnIHJlcG9ydCwKdXNpbmcgdGhlIGZvcm1hbCBidWcgdHJhY2tpbmcgdG9vbCwg
YW5kIGhhcHBlbmVkIHRvIGluY2x1ZGUgYQpwYXRjaCBhbmQgdGVzdC4KClNpbmNlcmVseSwKS2Fy
bCBQYWxzc29u

--==dYBbTzjwpPGodcWRUQGVjEPx7TuHzD==--

--==KqLywyMUID2Nxvw3gUEE4SJhbLZ9Nu==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl5RVEcACgkQGai1D9TV
yvYauxAAl38sw6rfMez20P0eDUfbcOREQVf8ZZk9b+zIubms2BPA6tZ7+Wwu2tUK
7q5pQJmoCT0YumMUTq96axePCCRuqx4LXOm6eqhRVNV+PKzE3YEgwcNDchGbhzjg
k92qWzNHZvSJAmyjWBXr85eDtkmWOUhUJ/y6+2XdWxgTLu4D7i+2HChNZMjBx2SP
6TM3+fBRbsgyalejkDDhFom+VI0RUvSqv3e5IEHpiGSNmdv98tsoyuzg3Pup+YnR
p7G2WWepagm8xzflrid039NETV17wUaUzKR9OMzj8bMgqOW0m0VFobFWDcuPj9LM
KgkC8oedQ0frtWIEwn2cQu7PXov+780BDE4McmIj4B12mkyoWG9lWdg0iUMY1acR
48XI86sp5J2ANM2JIeAznna5QqKXr+yp54xEKHUcKkDnwRB6rP/BiFyzLHw3yCHd
q6HqnmoP4EuGZwRBe6EZWjiPHCs+DV4kFcjQMtpK0n+9eUS+wQyMyqvLxvDrDwO7
IBECOV2ZsdEHDLJtqRIBAc5+FX3gzqN1GtgjXH/GDyS3pljYgaiMvmS6M6O5I5lu
wstFoyFC0MkTq9kQGw62KPLRR2dsjdxndydXtRngp98cdAhp0zHyUM1EHE2CEv25
xZVrxv2BZAFYIylRgmYxui13T6hhS1OU7PshDzI+IvwzuBi8t8M=
=vKpn
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==KqLywyMUID2Nxvw3gUEE4SJhbLZ9Nu==--



--===============5682494786773226518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5682494786773226518==--


