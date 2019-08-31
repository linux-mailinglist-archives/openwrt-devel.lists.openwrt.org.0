Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4FDA466E
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 00:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gQMsZFPPgk/Fh6e139Aku+zu5+9efSdu1fIbAaAgtt4=; b=H7H3dl+9ah47GpSadfHt/ViYF
	HOTlt7dpAGgWYXhh9kCboSRELQQEoiQAfQ8PRII29N1+BuZtiwDuTMwvd5gVIVc6reoBz0VGmtcNQ
	TM9M0k27LkY3OEBZDuuFeTHhi3GI1t1Q8VfXlSekCX3DsVaqwWKM2ckSHVMPX9I7wVV5Uxp/TKdH7
	Xas09yJ9u2IM/6Ecl2hKansGXSr882JSv1W/kID0pTCvtpb5VriJx7xqygb9VY/fd8BNQ8KEDgASh
	29RnCcvVCFAR96kRTyiNqb885e3GnMQq64biiUttXvuG+uI84Yx4LGgxX4Mq1ySYzxF6V/KTCan9F
	I7Cl1xb4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4BfH-0003vB-Ci; Sat, 31 Aug 2019 22:16:11 +0000
Received: from palmtree.beeroclock.net ([2a01:7e00::f03c:91ff:fe93:f66c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Bf7-0003ue-A1
 for openwrt-devel@lists.openwrt.org; Sat, 31 Aug 2019 22:16:03 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 749E91FBBD;
 Sat, 31 Aug 2019 22:15:56 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20190830154607.6463-1-zajec5@gmail.com>
References: <20190830154607.6463-1-zajec5@gmail.com>
User-Agent: Mailpile
Message-Id: <vg58MWhCCD22S7ItxInBzDdSa5ZSoM9zRuh5sFsP236d@mailpile>
Date: Sat, 31 Aug 2019 22:14:55 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_151601_610921_58F21B8A 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of
 broken firmware images
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
Cc: =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, Jo-Philipp Wich <jo@mein.io>,
 John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============3831109240743757701=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3831109240743757701==
Content-Type: multipart/signed; boundary="==7bA8s7AwqVfwzZcg3MxYMae4p8eZIT==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==7bA8s7AwqVfwzZcg3MxYMae4p8eZIT==
Content-Type: multipart/mixed; boundary="==JnN4HjVdt5F8Ms5A4t4f6HjjVQoiUM=="
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of broken
 firmware images
From: Karl Palsson <karlp@tweak.net.au>
To: =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "Jo-Philipp Wich" <jo@mein.io>, "John Crispin" <john@phrozen.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>,
 =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
In-Reply-To: <20190830154607.6463-1-zajec5@gmail.com>
References: <20190830154607.6463-1-zajec5@gmail.com>
User-Agent: Mailpile
Date: Sat, 31 Aug 2019 22:14:55 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==JnN4HjVdt5F8Ms5A4t4f6HjjVQoiUM==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CldoYXQncyB0aGUgcG9pbnQgb2YgImZvcmNlIiBpZiBpdCBkb2Vzbid0IGZvcmNlPyBBcmUgd2Ug
Z29pbmcgdG8KYWRkIGEgc2Vjb25kIC1GIHRvICJyZWFsbHkgZm9yY2UiID8gT3IgaXMgaXQgZ29p
bmcgdG8gYmUgIm9oLCAtRgpmYWlsZWQgZm9yIHNvbWUgbGFtZSByZWFzb24sIHNvIEknbGwgdXNl
IG10ZCB3cml0ZSwgYW5kIHN0aWxsCmNvbXBsYWluIGFueXdheSIKCkNoZWVycywKS2FybCBQCgpS
YWZhxYIgTWnFgmVja2kgIDx6YWplYzVAZ21haWwuY29tPiB3cm90ZToKPiBGcm9tOiBSYWZhxYIg
TWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gCj4gVGhpcyB1c2VzIHJlY2VudGx5IGFkZGVk
ICJ2YWxpZGF0ZV9maXJtd2FyZV9pbWFnZSIgdG8gdmFsaWRhdGUKPiBwYXNzZWQgZmlybXdhcmUu
IElmIGl0IGhhcHBlbnMgdG8gYmUgaW52YWxpZCBhbmQgbWFya2VkIGFzCj4gaW1wb3NzaWJsZSB0
byBmb3JjZSB0aGVuIHN5c3VwZ3JhZGUgc2ltcGx5IGV4aXRzIHdpdGggYW4gZXJyb3IuCj4gCj4g
VGhpcyBjaGFuZ2UgaXMgbmVlZGVkIHRvIGF2b2lkIGJyaWNraW5nIGRldmljZXMgd2l0aCBzb21l
Cj4gdG90YWxseSBicm9rZW4gaW1hZ2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWC
ZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAtLS0KPiBUaGlzIHBhdGNoIGRlcGVuZHMgb24gdGhl
Ogo+IFtQQVRDSCBwcm9jZF0gc3lzdGVtOiBhZGQgInZhbGlkYXRlX2Zpcm13YXJlX2ltYWdlIiB1
YnVzIG1ldGhvZAo+IC0tLQo+ICBzeXN0ZW0uYyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysr
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9z
eXN0ZW0uYyBiL3N5c3RlbS5jCj4gaW5kZXggMzVkNWEyMy4uN2Y0OTc1OCAxMDA2NDQKPiAtLS0g
YS9zeXN0ZW0uYwo+ICsrKyBiL3N5c3RlbS5jCj4gQEAgLTUwNyw3ICs1MDcsMTggQEAgc3RhdGlj
IGludCBzeXN1cGdyYWRlKHN0cnVjdCB1YnVzX2NvbnRleHQgKmN0eCwgc3RydWN0IHVidXNfb2Jq
ZWN0ICpvYmosCj4gIAkJICAgICAgc3RydWN0IHVidXNfcmVxdWVzdF9kYXRhICpyZXEsIGNvbnN0
IGNoYXIgKm1ldGhvZCwKPiAgCQkgICAgICBzdHJ1Y3QgYmxvYl9hdHRyICptc2cpCj4gIHsKPiAr
CWVudW0gewo+ICsJCVZBTElEQVRJT05fVkFMSUQsCj4gKwkJVkFMSURBVElPTl9GT1JDRUFCTEUs
Cj4gKwkJX19WQUxJREFUSU9OX01BWAo+ICsJfTsKPiArCXN0YXRpYyBjb25zdCBzdHJ1Y3QgYmxv
Ym1zZ19wb2xpY3kgdmFsaWRhdGlvbl9wb2xpY3lbX19WQUxJREFUSU9OX01BWF0gPSB7Cj4gKwkJ
W1ZBTElEQVRJT05fVkFMSURdID0geyAubmFtZSA9ICJ2YWxpZCIsIC50eXBlID0gQkxPQk1TR19U
WVBFX0JPT0wgfSwKPiArCQlbVkFMSURBVElPTl9GT1JDRUFCTEVdID0geyAubmFtZSA9ICJmb3Jj
ZWFibGUiLCAudHlwZSA9IEJMT0JNU0dfVFlQRV9CT09MIH0sCj4gKwl9Owo+ICsJc3RydWN0IGJs
b2JfYXR0ciAqdmFsaWRhdGlvbltfX1ZBTElEQVRJT05fTUFYXTsKPiAgCXN0cnVjdCBibG9iX2F0
dHIgKnRiW19fU1lTVVBHUkFERV9NQVhdOwo+ICsJYm9vbCB2YWxpZCwgZm9yY2VhYmxlOwo+ICAK
PiAgCWlmICghbXNnKQo+ICAJCXJldHVybiBVQlVTX1NUQVRVU19JTlZBTElEX0FSR1VNRU5UOwo+
IEBAIC01MTYsNiArNTI3LDE5IEBAIHN0YXRpYyBpbnQgc3lzdXBncmFkZShzdHJ1Y3QgdWJ1c19j
b250ZXh0ICpjdHgsIHN0cnVjdCB1YnVzX29iamVjdCAqb2JqLAo+ICAJaWYgKCF0YltTWVNVUEdS
QURFX1BBVEhdIHx8ICF0YltTWVNVUEdSQURFX1BSRUZJWF0pCj4gIAkJcmV0dXJuIFVCVVNfU1RB
VFVTX0lOVkFMSURfQVJHVU1FTlQ7Cj4gIAo+ICsJaWYgKHZhbGlkYXRlX2Zpcm13YXJlX2ltYWdl
X2NhbGwoYmxvYm1zZ19nZXRfc3RyaW5nKHRiW1NZU1VQR1JBREVfUEFUSF0pKSkKPiArCQlyZXR1
cm4gVUJVU19TVEFUVVNfVU5LTk9XTl9FUlJPUjsKPiArCj4gKwlibG9ibXNnX3BhcnNlKHZhbGlk
YXRpb25fcG9saWN5LCBfX1ZBTElEQVRJT05fTUFYLCB2YWxpZGF0aW9uLCBibG9iX2RhdGEoYi5o
ZWFkKSwgYmxvYl9sZW4oYi5oZWFkKSk7Cj4gKwo+ICsJdmFsaWQgPSB2YWxpZGF0aW9uW1ZBTElE
QVRJT05fVkFMSURdICYmIGJsb2Jtc2dfZ2V0X2Jvb2wodmFsaWRhdGlvbltWQUxJREFUSU9OX1ZB
TElEXSk7Cj4gKwlmb3JjZWFibGUgPSB2YWxpZGF0aW9uW1ZBTElEQVRJT05fRk9SQ0VBQkxFXSAm
JiBibG9ibXNnX2dldF9ib29sKHZhbGlkYXRpb25bVkFMSURBVElPTl9GT1JDRUFCTEVdKTsKPiAr
Cj4gKwlpZiAoIXZhbGlkICYmICFmb3JjZWFibGUpIHsKPiArCQlmcHJpbnRmKHN0ZGVyciwgIkZp
cm13YXJlIGltYWdlIGlzIGJyb2tlbiBhbmQgY2Fubm90IGJlIGluc3RhbGxlZFxuIik7Cj4gKwkJ
cmV0dXJuIFVCVVNfU1RBVFVTX1VOS05PV05fRVJST1I7Cj4gKwl9Cj4gKwo+ICAJc3lzdXBncmFk
ZV9leGVjX3VwZ3JhZGVkKGJsb2Jtc2dfZ2V0X3N0cmluZyh0YltTWVNVUEdSQURFX1BSRUZJWF0p
LAo+ICAJCQkJIGJsb2Jtc2dfZ2V0X3N0cmluZyh0YltTWVNVUEdSQURFX1BBVEhdKSwKPiAgCQkJ
CSB0YltTWVNVUEdSQURFX0NPTU1BTkRdID8gYmxvYm1zZ19nZXRfc3RyaW5nKHRiW1NZU1VQR1JB
REVfQ09NTUFORF0pIDogTlVMTCwKPiAtLSAKPiAyLjIxLjAKPiAKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs

--==JnN4HjVdt5F8Ms5A4t4f6HjjVQoiUM==--

--==7bA8s7AwqVfwzZcg3MxYMae4p8eZIT==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl1q8WwACgkQGai1D9TV
yva6BxAAgMnyQh3YwNC2aFYaFkYDJLZsR80PcpBP6v7cXBFi4ARLYPi7UzVllNBR
KthoacIRywmd8DwyMNthUQB9PCd6Cml8s/cPZkpAFfK2aTiPbnXBiJpJHO8JmM+p
YMn1yw5QUqWWvAgqabKMjQC+kwNUDmK7WxtXsVWsfPQhVUTXBKjIAJkeVSxyA7YS
py20Fel183G17fFGjPNntrPT16uoxFVxzFgH8D8zqvBAL0Rt9sa9QjETaSCQrHyx
bldR7FjzYynKZfb5vEw/0raFaaj1127sXVYESfaZYJIkMLO3NJ/ru/MT6gNaDrCT
LuIiGKzRyBNJDkFcHJzVihT0It8bmbxayJUHspdQJPFBG+KOW4nYNi6lwe3IiuC+
PUcx6EtXIoEFr767vMXB4Y6j3XP5kMXl1QPxOhMT0kTuBfSYno2zevBx3q3WY+AT
vt7HvROf8/b2n5FSNlVwPUY8Fk8Rs43muUmTESXQqRNdX34+x50T7Ia4Up82DvG+
3IyvBIv+gz0aM/28OLjQ4euaXfP5irChIRgA+6H7Pmc20I5zT9yysL1TJw+BZUB0
2VfQJl2vbVH9E6MDhkaMdt+EHImvT47+wgaVgkgG2pb1Qjpxw+EjdktWrkXOgQ0M
yllaSuLc6bcxRIzERbTmrZ4JEXCPBmDO4YFSFmKRdm6M8Ddmcb8=
=2NQl
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==7bA8s7AwqVfwzZcg3MxYMae4p8eZIT==--



--===============3831109240743757701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3831109240743757701==--


