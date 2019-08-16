Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C4E9044D
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 17:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JTn27iN2iIG6kbtURjJymSzu5B6kBOgQgr/2hnn44hg=; b=AffAIMf1EexgSB2Xn8Y6hmRhh
	vpKePFf13ZjG07BXBTPWnZ4BlULfNPgf73RR3xrawbt9rBkqumyfFKrR8rKsmOm6v1bn3+MVCatTR
	B8qmlrzzGXqDPsv/T87se2PFiHT/RxauGJ4cj2SmLrFP8Ipqx4VkwD9p7LsK/nmUD+68qvWYkpO9c
	XHu9tIZBrZINrHnS6UUg54VYtS3gMVZb9cWqfN+N2V0JHqghEW8YAUoqDcAUr4HjtCcIIL6rsHEKc
	eKRL6+1iK0Av665xf3nBWvZbPRMWq7v2XyjMJPCXUDYqRgf6NYHqEBDQkXUersr5qdN1MzHDjE0VV
	kHc0sc3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hydjU-0007JZ-Qw; Fri, 16 Aug 2019 15:01:36 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hydjL-0007Iq-RL
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 15:01:29 +0000
Received: from pd95fd441.dip0.t-ipconnect.de ([217.95.212.65]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hydjA-0005kS-Q9; Fri, 16 Aug 2019 17:01:16 +0200
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <20190816142848.14412-1-zajec5@gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <e684cf3e-12fb-ef97-1f9d-cf780bf7d775@phrozen.org>
Date: Fri, 16 Aug 2019 17:01:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190816142848.14412-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_080128_046962_14C2A304 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: support passing "options"
 to the "sysupgrade" ubus method
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Jo-Philipp Wich <jo@mein.io>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDE2LzA4LzIwMTkgMTY6MjgsIFJhZmHFgiBNacWCZWNraSB3cm90ZToKPiBGcm9tOiBSYWZh
xYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4KPiBPYmplY3QgcGFzc2VkIGFzICJvcHRp
b25zIiBnZXRzIHRyYW5zbGF0ZWQgaW50byBlbnZpcm9ubWVudCB2YXJpYWJsZXMKPiBVUEdSQURF
X09QVF8qLiBFLmcuCj4gIm9wdGlvbnMiOiB7ICJmb28iOiA1IH0KPiB3aWxsIHJlc3VsdCBpbiBz
ZXR0aW5nIFVQR1JBREVfT1BUX0ZPTz01Lgo+Cj4gVGhpcyBhbGxvd3Mgc3RhZ2UyIHN5c3VwZ3Jh
ZGUgdG8gZ2V0IG9wdGlvbnMgZXhwbGljaXRseS4gU28gZmFyIGl0IHdhcwo+IGd1ZXNzaW5nIHdo
YXQgdG8gZG8gYnkgY2hlY2tpbmcgZm9yIGV4aXN0ZW5jZSBvZiBzb21lIGZpbGVzIChlLmcuCj4g
c3lzdXBncmFkZS50Z3opLgo+Cj4gU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZh
bEBtaWxlY2tpLnBsPgo+IC0tLQo+ICAgaW5pdGQvcHJlaW5pdC5jIHwgIDIgKy0KPiAgIHN5c3Rl
bS5jICAgICAgICB8ICA1ICsrKystCj4gICBzeXN1cGdyYWRlLmMgICAgfCA0NiArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gICBzeXN1cGdyYWRlLmggICAg
fCAgNCArKystCj4gICA0IGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvaW5pdGQvcHJlaW5pdC5jIGIvaW5pdGQvcHJlaW5pdC5j
Cj4gaW5kZXggZmJiMzZkZi4uMmI0ZGY0YiAxMDA2NDQKPiAtLS0gYS9pbml0ZC9wcmVpbml0LmMK
PiArKysgYi9pbml0ZC9wcmVpbml0LmMKPiBAQCAtNzUsNyArNzUsNyBAQCBjaGVja19zeXN1cGdy
YWRlKHZvaWQpCj4gICAKPiAgIAlmY2xvc2Uoc3lzdXBncmFkZSk7Cj4gICAKPiAtCXN5c3VwZ3Jh
ZGVfZXhlY191cGdyYWRlZChwcmVmaXgsIHBhdGgsIGNvbW1hbmQpOwo+ICsJc3lzdXBncmFkZV9l
eGVjX3VwZ3JhZGVkKHByZWZpeCwgcGF0aCwgY29tbWFuZCwgTlVMTCk7Cj4gICAKPiAgIAl3aGls
ZSAodHJ1ZSkKPiAgIAkJc2xlZXAoMSk7Cj4gZGlmZiAtLWdpdCBhL3N5c3RlbS5jIGIvc3lzdGVt
LmMKPiBpbmRleCA4ZWQzZjkzLi43MzhmMzI3IDEwMDY0NAo+IC0tLSBhL3N5c3RlbS5jCj4gKysr
IGIvc3lzdGVtLmMKPiBAQCAtMzgwLDYgKzM4MCw3IEBAIGVudW0gewo+ICAgCVNZU1VQR1JBREVf
UEFUSCwKPiAgIAlTWVNVUEdSQURFX1BSRUZJWCwKPiAgIAlTWVNVUEdSQURFX0NPTU1BTkQsCj4g
KwlTWVNVUEdSQURFX09QVElPTlMsCj4gICAJX19TWVNVUEdSQURFX01BWAo+ICAgfTsKPiAgIAo+
IEBAIC0zODcsNiArMzg4LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBibG9ibXNnX3BvbGljeSBz
eXN1cGdyYWRlX3BvbGljeVtfX1NZU1VQR1JBREVfTUFYXSA9IHsKPiAgIAlbU1lTVVBHUkFERV9Q
QVRIXSA9IHsgLm5hbWUgPSAicGF0aCIsIC50eXBlID0gQkxPQk1TR19UWVBFX1NUUklORyB9LAo+
ICAgCVtTWVNVUEdSQURFX1BSRUZJWF0gPSB7IC5uYW1lID0gInByZWZpeCIsIC50eXBlID0gQkxP
Qk1TR19UWVBFX1NUUklORyB9LAo+ICAgCVtTWVNVUEdSQURFX0NPTU1BTkRdID0geyAubmFtZSA9
ICJjb21tYW5kIiwgLnR5cGUgPSBCTE9CTVNHX1RZUEVfU1RSSU5HIH0sCj4gKwlbU1lTVVBHUkFE
RV9PUFRJT05TXSA9IHsgLm5hbWUgPSAib3B0aW9ucyIsIC50eXBlID0gQkxPQk1TR19UWVBFX1RB
QkxFIH0sCj4gICB9Owo+ICAgCj4gICBzdGF0aWMgaW50IHN5c3VwZ3JhZGUoc3RydWN0IHVidXNf
Y29udGV4dCAqY3R4LCBzdHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKPiBAQCAtNDA0LDcgKzQwNiw4
IEBAIHN0YXRpYyBpbnQgc3lzdXBncmFkZShzdHJ1Y3QgdWJ1c19jb250ZXh0ICpjdHgsIHN0cnVj
dCB1YnVzX29iamVjdCAqb2JqLAo+ICAgCj4gICAJc3lzdXBncmFkZV9leGVjX3VwZ3JhZGVkKGJs
b2Jtc2dfZ2V0X3N0cmluZyh0YltTWVNVUEdSQURFX1BSRUZJWF0pLAo+ICAgCQkJCSBibG9ibXNn
X2dldF9zdHJpbmcodGJbU1lTVVBHUkFERV9QQVRIXSksCj4gLQkJCQkgdGJbU1lTVVBHUkFERV9D
T01NQU5EXSA/IGJsb2Jtc2dfZ2V0X3N0cmluZyh0YltTWVNVUEdSQURFX0NPTU1BTkRdKSA6IE5V
TEwpOwo+ICsJCQkJIHRiW1NZU1VQR1JBREVfQ09NTUFORF0gPyBibG9ibXNnX2dldF9zdHJpbmco
dGJbU1lTVVBHUkFERV9DT01NQU5EXSkgOiBOVUxMLAo+ICsJCQkJIHRiW1NZU1VQR1JBREVfT1BU
SU9OU10pOwo+ICAgCj4gICAJLyogc3lzdXBncmFkZV9leGVjX3VwZ3JhZGVkKCkgd2lsbCBuZXZl
ciByZXR1cm4gdW5sZXNzIHNvbWV0aGluZyBoYXMgZ29uZSB3cm9uZyAqLwo+ICAgCXJldHVybiBV
QlVTX1NUQVRVU19VTktOT1dOX0VSUk9SOwo+IGRpZmYgLS1naXQgYS9zeXN1cGdyYWRlLmMgYi9z
eXN1cGdyYWRlLmMKPiBpbmRleCAwN2UzM2Y3Li45OWEwOThlIDEwMDY0NAo+IC0tLSBhL3N5c3Vw
Z3JhZGUuYwo+ICsrKyBiL3N5c3VwZ3JhZGUuYwo+IEBAIC0xNywxNSArMTcsMjAgQEAKPiAgICNp
bmNsdWRlICJ3YXRjaGRvZy5oIgo+ICAgI2luY2x1ZGUgInN5c3VwZ3JhZGUuaCIKPiAgIAo+ICsj
aW5jbHVkZSA8Y3R5cGUuaD4KPiAgICNpbmNsdWRlIDxzdGRpby5oPgo+ICAgI2luY2x1ZGUgPHN0
ZGxpYi5oPgo+ICAgI2luY2x1ZGUgPHVuaXN0ZC5oPgo+ICAgCj4gKyNpbmNsdWRlIDxsaWJ1Ym94
L2Jsb2Jtc2cuaD4KPiAgIAo+IC12b2lkIHN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChjb25zdCBj
aGFyICpwcmVmaXgsIGNoYXIgKnBhdGgsIGNoYXIgKmNvbW1hbmQpCj4gK3ZvaWQgc3lzdXBncmFk
ZV9leGVjX3VwZ3JhZGVkKGNvbnN0IGNoYXIgKnByZWZpeCwgY2hhciAqcGF0aCwgY2hhciAqY29t
bWFuZCwKPiArCQkJICAgICAgc3RydWN0IGJsb2JfYXR0ciAqb3B0aW9ucykKPiAgIHsKPiAgIAlj
aGFyICp3ZHRfZmQgPSB3YXRjaGRvZ19mZCgpOwo+ICAgCWNoYXIgKmFyZ3ZbXSA9IHsgIi9zYmlu
L3VwZ3JhZGVkIiwgTlVMTCwgTlVMTCwgTlVMTH07Cj4gKwlzdHJ1Y3QgYmxvYl9hdHRyICpvcHRp
b247Cj4gKwlpbnQgcmVtOwo+ICAgCWludCByZXQ7Cj4gICAKPiAgIAlyZXQgPSBjaHJvb3QocHJl
Zml4KTsKPiBAQCAtNDEsNiArNDYsNDUgQEAgdm9pZCBzeXN1cGdyYWRlX2V4ZWNfdXBncmFkZWQo
Y29uc3QgY2hhciAqcHJlZml4LCBjaGFyICpwYXRoLCBjaGFyICpjb21tYW5kKQo+ICAgCQl3YXRj
aGRvZ19zZXRfY2xvZXhlYyhmYWxzZSk7Cj4gICAJCXNldGVudigiV0RURkQiLCB3ZHRfZmQsIDEp
Owo+ICAgCX0KPiArCj4gKwlibG9ibXNnX2Zvcl9lYWNoX2F0dHIob3B0aW9uLCBvcHRpb25zLCBy
ZW0pIHsKPiArCQljb25zdCBjaGFyICpwcmVmaXggPSAiVVBHUkFERV9PUFRfIjsKPiArCQljaGFy
ICpuYW1lID0gbWFsbG9jKHN0cmxlbihwcmVmaXgpICsgc3RybGVuKGJsb2Jtc2dfbmFtZShvcHRp
b24pKSk7CgogwqDCoCB5b3UgY291bGQgcG9zc2libHkgdXNlIGFzcHJpbnRmKCkgaGVyZSA/CgoK
PiArCQljaGFyIHZhbHVlWzExXTsKPiArCQljaGFyICpjOwo+ICsJCWludCB0bXA7Cj4gKwo+ICsJ
CWlmICghbmFtZSkgewo+ICsJCQljb250aW51ZTsKPiArCQl9Cj4gKwkJc3ByaW50ZihuYW1lLCAi
JXMlcyIsIHByZWZpeCwgYmxvYm1zZ19uYW1lKG9wdGlvbikpOwo+ICsJCWZvciAoYyA9IG5hbWUg
KyBzdHJsZW4ocHJlZml4KTsgKmM7IGMrKykgewo+ICsJCQkqYyA9IHRvdXBwZXIoKmMpOwo+ICsJ
CX0KPiArCgphbmQsIG1hdHRlciBvZiB0YXRzZSwgYnV0IGknZCBkcm9wIHRoZSB0cmF2b2x0YSBi
cmFja2V0cyBvbiBzaW5nbGUgbGluZSAKY2xhdXNlcwoKIMKgwqDCoCBKb2huCgo+ICsJCXN3aXRj
aCAoYmxvYm1zZ190eXBlKG9wdGlvbikpIHsKPiArCQljYXNlIEJMT0JNU0dfVFlQRV9JTlQzMjoK
PiArCQkJdG1wID0gYmxvYm1zZ19nZXRfdTMyKG9wdGlvbik7Cj4gKwkJCWJyZWFrOwo+ICsJCWNh
c2UgQkxPQk1TR19UWVBFX0lOVDE2Ogo+ICsJCQl0bXAgPSBibG9ibXNnX2dldF91MTYob3B0aW9u
KTsKPiArCQkJYnJlYWs7Cj4gKwkJY2FzZSBCTE9CTVNHX1RZUEVfSU5UODoKPiArCQkJdG1wID0g
YmxvYm1zZ19nZXRfdTgob3B0aW9uKTsKPiArCQkJYnJlYWs7Cj4gKwkJZGVmYXVsdDoKPiArCQkJ
ZnByaW50ZihzdGRlcnIsICJPcHRpb24gXCIlc1wiIGhhcyB1bnN1cHBvcnRlZCB0eXBlOiAlZFxu
IiwKPiArCQkJCWJsb2Jtc2dfbmFtZShvcHRpb24pLCBibG9ibXNnX3R5cGUob3B0aW9uKSk7Cj4g
KwkJCWZyZWUobmFtZSk7Cj4gKwkJCWNvbnRpbnVlOwo+ICsJCX0KPiArCQlzbnByaW50Zih2YWx1
ZSwgc2l6ZW9mKHZhbHVlKSwgIiV1IiwgdG1wKTsKPiArCj4gKwkJc2V0ZW52KG5hbWUsIHZhbHVl
LCAxKTsKPiArCj4gKwkJZnJlZShuYW1lKTsKPiArCX0KPiArCj4gICAJZXhlY3ZwKGFyZ3ZbMF0s
IGFyZ3YpOwo+ICAgCj4gICAJLyogQ2xlYW51cCBvbiBmYWlsdXJlICovCj4gZGlmZiAtLWdpdCBh
L3N5c3VwZ3JhZGUuaCBiL3N5c3VwZ3JhZGUuaAo+IGluZGV4IDhjMDlmYzkuLmM4NGU0OTQgMTAw
NjQ0Cj4gLS0tIGEvc3lzdXBncmFkZS5oCj4gKysrIGIvc3lzdXBncmFkZS5oCj4gQEAgLTE0LDgg
KzE0LDEwIEBACj4gICAjaWZuZGVmIF9fUFJPQ0RfU1lTVVBHUkFERV9ICj4gICAjZGVmaW5lIF9f
UFJPQ0RfU1lTVVBHUkFERV9ICj4gICAKPiArc3RydWN0IGJsb2JfYXR0cjsKPiAgIAo+IC12b2lk
IHN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChjb25zdCBjaGFyICpwcmVmaXgsIGNoYXIgKnBhdGgs
IGNoYXIgKmNvbW1hbmQpOwo+ICt2b2lkIHN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChjb25zdCBj
aGFyICpwcmVmaXgsIGNoYXIgKnBhdGgsIGNoYXIgKmNvbW1hbmQsCj4gKwkJCSAgICAgIHN0cnVj
dCBibG9iX2F0dHIgKm9wdGlvbnMpOwo+ICAgCj4gICAKPiAgICNlbmRpZgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
