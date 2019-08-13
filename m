Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0469E8B023
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 08:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=r0ZqXdldJ0arjf0qq4PFGraJz2OKchjvOV1d0L29eNs=; b=kFNsudPqnfkGg3
	5/YVLyt3s8YwNsOnfOISsn3Ygot4eq6To8RjlCOGDpB7fw6l8N/MLwWP36kHyOenGvo5dFjzgjo2r
	Iv50SCDAea+cxnzB9Hkb9QO2auImVVukLAYbHLFws2LcLpOxA5C854lDrUVZON9ta3am19ijTKFLK
	bXIMmp2TtUVGwhbHzl6e20xJpF9eTbpujrM91l6ond5TcS+lz4UIr0Rh5/q242bZNLgTWGZfOiSDm
	zguFuz+k0RODV7xz5/JqFxaQ2Fr1nO6//k8hlewDF862qjVVRYb6m/ySq615jN+K4sQFW/kSfzxrf
	kYSe75UQSqFbV3Zo1gIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQeM-0003Nl-44; Tue, 13 Aug 2019 06:51:18 +0000
Received: from smtpbg359.qq.com ([183.61.51.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQe0-0003Ml-GY
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 06:50:59 +0000
X-QQ-mid: bizesmtp24t1565679021t78k0y27
Received: from luo-PC (unknown [113.116.56.172])
 by esmtp10.qq.com (ESMTP) with 
 id ; Tue, 13 Aug 2019 14:50:20 +0800 (CST)
X-QQ-SSF: 00400000002000L0ZG40000A0000000
X-QQ-FEAT: D8iNkgpwlC9EOakzTDUczNrI0BskB0A/3ATUQlHz5lum1QygdT9wlr3Sdibtq
 RFw/hUKi68m/ieNr22Mu7l4gKe3gbE3PONOmqkCkGT6w7v5iSw9SJYBJK7v78D/HpT0keGh
 mM7+4uXBrVnMysbyytScGxdnx8+DKzT+qdrb2Yh7ij83zBvHSltCvI78+kvc0r/ixGZg0C/
 zJ7QIKliGY8zrpVTxzcd+rhlbhE/X5gMfExW2bV1t3wANzvCGUomee3LTASeT8aAyz333pk
 iQzxjyYsjFIOskjAEVeFPTex5VltGFl7fPejw7jxQmSomtmsVEjQ+ntgZSqrPQuuA2AowPC
 /ofAklpa4KmHLt0bsfPOVEkZ5pwwcD+tsqqZSam
X-QQ-GoodBg: 2
Date: Tue, 13 Aug 2019 14:50:21 +0800
From: Chongjun.Luo <luochongjun@gl-inet.com>
To: "Chuanhong Guo" <gch981213@gmail.com>
References: <1564110675-20960-1-git-send-email-luochongjun@gl-inet.com>, 
 <CAJsYDVLpM3O4yK3Q=41nvi0mJ7zUrAd-Rouhig0ZFASF8sdNoA@mail.gmail.com>
X-Priority: 3
X-GUID: E5D5F5B4-CE05-4453-8977-ED47480E51F2
X-Has-Attach: no
X-Mailer: Foxmail 7, 2, 7, 174[cn]
Mime-Version: 1.0
Message-ID: <2019081314502124839485@gl-inet.com>+66281AC58720F3F1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgweb:qybgweb9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_235057_214498_9E4892DB 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [183.61.51.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5366169217708311599=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============5366169217708311599==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart331430420102_=----"

This is a multi-part message in MIME format.

------=_001_NextPart331430420102_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

SGksDQoNClRoYW5rcyBmb3IgeW91ciBhZHZpY2UuIEkgd2lsbCBmaXggdGhlc2UgcHJvYmxlbXMg
YW5kIHJlc3VibWl0IHRoZSBwYXRjaA0KDQpCZXN0IHJlZ2FyZHMNCkx1b2Nob25nanVuDQogDQpG
cm9tOiBDaHVhbmhvbmcgR3VvDQpEYXRlOiAyMDE5LTA4LTEzIDE0OjM4DQpUbzogTHVvY2hvbmdq
dW4NCkNDOiBvcGVud3J0LWRldmVsDQpTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtQQVRD
SF0gYXRoNzk6IGFkZCBzdXBwb3J0IGZvciBnbC1hcjc1MA0KSGkhIFNvcnJ5IGZvciB0aGUgbGF0
ZSByZXBseS4NCkhlcmUgYXJlIDMgbW9yZSBuaXRwaWNraW5ncyBiZWxvdzoNCiANCk9uIEZyaSwg
SnVsIDI2LCAyMDE5IGF0IDExOjE0IEFNIEx1b2Nob25nanVuIDxsdW9jaG9uZ2p1bkBnbC1pbmV0
LmNvbT4gd3JvdGU6DQo+DQo+IFRoaXMgcGF0Y2ggc3VwcG9ydHMgZ2wtYXI3NTAsIHdoaWNoIHdh
cyBwcmV2aW91c2x5IHN1cHBvcnRlZCBieSBhcjcxeHguDQo+DQo+IFNwZWNpZmljYXRpb246DQo+
IC0gU09DOiBRQ0E5NTMxICg2NTBNSHopDQo+IC0gRmxhc2g6IDE2IE1pQiAoVzI1UTEyOEZWU0cp
DQo+IC0gUkFNOiAxMjggTWlCIEREUjINCj4gLSBFdGhlcm5ldDogMTAvMTAwOiAyeExBTiArIDEw
LzEwMDogMXhXQU4NCiANCkEgcHJvcGVyIFZMQU4gc2V0dXAgZm9yIHRoZSB0d28gTEFOIHBvcnRz
IHNob3VsZCBiZSBhZGRlZCBpbg0KdGFyZ2V0L2xpbnV4L2F0aDc5L2Jhc2UtZmlsZXMvZXRjL2Jv
YXJkLmQvMDJfbmV0d29yay4NCiANCj4gLSBXaXJlbGVzczogMi40R0h6IChiZ24pIGFuZCA1R0h6
IChhYykNCj4gLSBVU0I6IDF4IFVTQiAyLjAgcG9ydA0KPiAtIFN3aXRjaDogMXggc3dpdGNoDQo+
IC0gQnV0dG9uOiAxeCByZXNldCBidXR0b24NCj4gLSBMRUQ6IDN4IExFRFMgKHdoaXRlKQ0KPg0K
PiBGbGFzaCBpbnN0cnVjdGlvbjoNCj4gU3VwcG9ydCBmb3Igc3lzdXBncmFkZSBkaXJlY3RpdmUg
dXBncmFkZXMsIGFzIHdlbGwgYXMgbHVjaSB1cGdyYWRlcy4NCj4NCj4gU2lnbmVkLW9mZi1ieTog
THVvY2hvbmdqdW4gPGx1b2Nob25nanVuQGdsLWluZXQuY29tPg0KPiAtLS0NCj4gIC4uLi9ldGMv
aG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhICAgICAgIHwgICAxICsNCj4gIHRh
cmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTUzMV9nbGluZXRfZ2wtYXI3NTAuZHRzIHwgMTQ5ICsr
KysrKysrKysrKysrKysrKysrKw0KPiAgdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2dlbmVyaWMu
bWsgICAgICAgICAgICAgICAgfCAgMTAgKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTYwIGluc2Vy
dGlvbnMoKykNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXRoNzkvZHRzL3Fj
YTk1MzFfZ2xpbmV0X2dsLWFyNzUwLmR0cw0KPg0KPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4
L2F0aDc5L2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMS1hdGgxMGstY2FsZGF0
YSBiL3RhcmdldC9saW51eC9hdGg3OS9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUv
MTEtYXRoMTBrLWNhbGRhdGENCj4gaW5kZXggNDExODY4NS4uNWM5ZmEyZiAxMDA2NDQNCj4gLS0t
IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8x
MS1hdGgxMGstY2FsZGF0YQ0KPiArKysgYi90YXJnZXQvbGludXgvYXRoNzkvYmFzZS1maWxlcy9l
dGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhDQo+IEBAIC0xMTcsNiArMTE3
LDcgQEAgY2FzZSAiJEZJUk1XQVJFIiBpbg0KPiAgICAgICAgICAgICAgICAgYXRoMTBrY2FsX2V4
dHJhY3QgImFydCIgMjA0ODAgMjExNg0KPiAgICAgICAgICAgICAgICAgYXRoMTBrY2FsX3BhdGNo
X21hYyAkKG1hY2FkZHJfYWRkICQoY2F0IC9zeXMvY2xhc3MvbmV0L2V0aDAvYWRkcmVzcykgKzEp
DQo+ICAgICAgICAgICAgICAgICA7Ow0KPiArICAgICAgIGdsaW5ldCxnbC1hcjc1MHxcDQo+ICAg
ICAgICAgZ2xpbmV0LGdsLWFyNzUwcykNCj4gICAgICAgICAgICAgICAgIGF0aDEwa2NhbF9leHRy
YWN0ICJhcnQiIDIwNDgwIDIxMTYNCj4gICAgICAgICAgICAgICAgIGF0aDEwa2NhbF9wYXRjaF9t
YWMgJChtYWNhZGRyX2FkZCAkKG10ZF9nZXRfbWFjX2JpbmFyeSBhcnQgMCkgKzEpDQo+IGRpZmYg
LS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1MzFfZ2xpbmV0X2dsLWFyNzUwLmR0
cyBiL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTUzMV9nbGluZXRfZ2wtYXI3NTAuZHRzDQo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAuLmI4Zjk3MzUNCj4gLS0tIC9k
ZXYvbnVsbA0KPiArKysgYi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1MzFfZ2xpbmV0X2ds
LWFyNzUwLmR0cw0KPiBAQCAtMCwwICsxLDE0OSBAQA0KPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIgT1IgTUlUDQo+ICsvZHRzLXYxLzsNCj4gKw0KPiArI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPg0KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2lucHV0L2lucHV0Lmg+DQo+ICsNCj4gKyNpbmNsdWRlICJxY2E5NTN4LmR0c2kiDQo+ICsNCj4g
Ky8gew0KPiArICAgICAgIGNvbXBhdGlibGUgPSAiZ2xpbmV0LGdsLWFyNzUwIiwgInFjYSxxY2E5
NTMxIjsNCj4gKyAgICAgICBtb2RlbCA9ICJHTC5pTmV0IEdMLUFSNzUwIjsNCj4gKw0KPiArICAg
ICAgIGtleXMgew0KPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJncGlvLWtleXMiOw0K
PiArDQo+ICsgICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPiArICAg
ICAgICAgICAgICAgcGluY3RybC0wID0gPCZqdGFnX2Rpc2FibGVfcGlucz47DQo+ICsNCj4gKyAg
ICAgICAgICAgICAgIHJlc2V0IHsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAi
cmVzZXQiOw0KPiArICAgICAgICAgICAgICAgICAgICAgICBsaW51eCxjb2RlID0gPEtFWV9SRVNU
QVJUPjsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8gMyBHUElPX0FD
VElWRV9MT1c+Ow0KPiArICAgICAgICAgICAgICAgfTsNCj4gKw0KPiArICAgICAgICAgICAgICAg
bW9kZSB7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gIm1vZGUiOw0KPiArICAg
ICAgICAgICAgICAgICAgICAgICBsaW51eCxjb2RlID0gPEJUTl8wPjsNCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8gMCBHUElPX0FDVElWRV9MT1c+Ow0KPiArICAgICAg
ICAgICAgICAgfTsNCj4gKyAgICAgICB9Ow0KPiArDQo+ICsgICAgICAgbGVkcyB7DQo+ICsgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gImdwaW8tbGVkcyI7DQo+ICsNCj4gKyAgICAgICAgICAg
ICAgIHBvd2VyIHsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiZ2wtYXI3NTA6
d2hpdGU6cG93ZXIiOw0KPiArICAgICAgICAgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbyAx
MiBHUElPX0FDVElWRV9MT1c+Ow0KPiArICAgICAgICAgICAgICAgICAgICAgICBkZWZhdWx0LXN0
YXRlID0gIm9uIjsNCj4gKyAgICAgICAgICAgICAgIH07DQo+ICsNCj4gKyAgICAgICAgICAgICAg
IHdsYW4yZyB7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gImdsLWFyNzUwOndo
aXRlOndsYW4yZyI7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvIDE0
IEdQSU9fQUNUSVZFX0xPVz47DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGxpbnV4LGRlZmF1
bHQtdHJpZ2dlciA9ICJwaHkxdHB0IjsNCj4gKyAgICAgICAgICAgICAgIH07DQo+ICsNCj4gKyAg
ICAgICAgICAgICAgIHdsYW41ZyB7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0g
ImdsLWFyNzUwOndoaXRlOndsYW41ZyI7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdwaW9z
ID0gPCZncGlvIDEzIEdQSU9fQUNUSVZFX0xPVz47DQo+ICsgICAgICAgICAgICAgICAgICAgICAg
IGxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJwaHkwdHB0IjsNCj4gKyAgICAgICAgICAgICAgIH07
DQo+ICsNCj4gKyAgICAgICB9Ow0KPiArDQo+ICsgICAgICAgaTJjIHsNCj4gKyAgICAgICAgICAg
ICAgIGNvbXBhdGlibGUgPSAiaTJjLWdwaW8iOw0KPiArDQo+ICsgICAgICAgICAgICAgICBzZGEt
Z3Bpb3MgPSA8JmdwaW8gMTcgR1BJT19BQ1RJVkVfTE9XPjsNCj4gKyAgICAgICAgICAgICAgIHNj
bC1ncGlvcyA9IDwmZ3BpbyAxNiBHUElPX0FDVElWRV9MT1c+Ow0KPiArICAgICAgIH07DQo+ICsN
Cj4gKw0KPiArfTsNCj4gKw0KPiArJnBjaWUwIHsNCj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7
DQo+ICsNCj4gKyAgICAgICB3aWZpQDAsMCB7DQo+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInFjb20sYXRoMTBrIjsNCj4gKyAgICAgICAgICAgICAgIHJlZyA9IDwwIDAgMCAwIDA+Ow0K
PiArICAgICAgICAgICAgICAgZGV2aWNlX3R5cGUgPSAicGNpIjsNCj4gKyAgICAgICB9Ow0KPiAr
fTsNCj4gKw0KPiArJnVhcnQgew0KPiArICAgICAgIHN0YXR1cyA9ICJva2F5IjsNCj4gK307DQo+
ICsNCj4gKyZ1c2IwIHsNCj4gKyAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4gKyAgICAg
ICAjc2l6ZS1jZWxscyA9IDwwPjsNCj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7DQo+ICsNCj4g
KyAgICAgICBodWJfcG9ydDogcG9ydEAxIHsNCj4gKyAgICAgICAgICAgICAgIHJlZyA9IDwxPjsN
Cj4gKyAgICAgICAgICAgICAgICN0cmlnZ2VyLXNvdXJjZS1jZWxscyA9IDwwPjsNCj4gKyAgICAg
ICB9Ow0KIA0KVGhpcyBodWJfcG9ydCBub2RlIGlzIG9ubHkgdXNlZCBmb3IgYSB1c2ItcG9ydCBM
RUQgdHJpZ2dlci4gSXQgY2FuIGJlDQpkcm9wcGVkIGlmIHlvdSBkb24ndCBoYXZlIGEgVVNCIExF
RC4NCiANCj4gK307DQo+ICsNCj4gKyZ1c2JfcGh5IHsNCj4gKyAgICAgICBzdGF0dXMgPSAib2th
eSI7DQo+ICt9Ow0KPiArDQo+ICsmc3BpIHsNCj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7DQo+
ICsgICAgICAgbnVtLWNzID0gPDA+Ow0KPiArDQo+ICsgICAgICAgZmxhc2hAMCB7DQo+ICsgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gImplZGVjLHNwaS1ub3IiOw0KPiArICAgICAgICAgICAg
ICAgcmVnID0gPDA+Ow0KPiArICAgICAgICAgICAgICAgc3BpLW1heC1mcmVxdWVuY3kgPSA8MjUw
MDAwMDA+Ow0KPiArDQo+ICsgICAgICAgICAgICAgICBwYXJ0aXRpb25zIHsNCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsNCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICNzaXplLWNlbGxzID0gPDE+Ow0KPiArDQo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHBhcnRpdGlvbkAwIHsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJl
bCA9ICJ1LWJvb3QiOw0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDww
eDAwMDAwMCAweDA0MDAwMD47DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVh
ZC1vbmx5Ow0KPiArICAgICAgICAgICAgICAgICAgICAgICB9Ow0KPiArDQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHBhcnRpdGlvbkA0MDAwMCB7DQo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgbGFiZWwgPSAidS1ib290LWVudiI7DQo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmVnID0gPDB4MDQwMDAwIDB4MDEwMDAwPjsNCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWFkLW9ubHk7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIH07DQo+
ICsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgYXJ0OiBwYXJ0aXRpb25ANTAwMDAgew0KPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gImFydCI7DQo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MDUwMDAwIDB4MDEwMDAwPjsNCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWFkLW9ubHk7DQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIH07DQo+ICsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGFydGl0aW9uQDYw
MDAwIHsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImRl
bngsdWltYWdlIjsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJm
aXJtd2FyZSI7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MDYw
MDAwIDB4ZmEwMDAwPjsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsNCj4gKyAgICAgICAg
ICAgICAgIH07DQo+ICsgICAgICAgfTsNCj4gK307DQo+ICsNCj4gKyZldGgwIHsNCj4gKyAgICAg
ICBzdGF0dXMgPSAib2theSI7DQo+ICsgICAgICAgbXRkLW1hYy1hZGRyZXNzID0gPCZhcnQgMHgw
PjsNCj4gKyAgICAgICBwaHktaGFuZGxlID0gPCZzd3BoeTQ+Ow0KPiArfTsNCj4gKw0KPiArJmV0
aDEgew0KPiArICAgICAgIG10ZC1tYWMtYWRkcmVzcyA9IDwmYXJ0IDB4MD47DQo+ICsgICAgICAg
bXRkLW1hYy1hZGRyZXNzLWluY3JlbWVudCA9IDwxPjsNCj4gK307DQo+ICsNCj4gKyZ3bWFjIHsN
Cj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7DQo+ICsgICAgICAgbXRkLWNhbC1kYXRhID0gPCZh
cnQgMHgxMDAwPjsNCj4gK307DQo+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkvaW1h
Z2UvZ2VuZXJpYy5tayBiL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9nZW5lcmljLm1rDQo+IGlu
ZGV4IGM1ODA3ZjIuLjI2YjcwMGQgMTAwNjQ0DQo+IC0tLSBhL3RhcmdldC9saW51eC9hdGg3OS9p
bWFnZS9nZW5lcmljLm1rDQo+ICsrKyBiL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9nZW5lcmlj
Lm1rDQo+IEBAIC00ODYsNiArNDg2LDE2IEBAIGRlZmluZSBEZXZpY2UvZ2xpbmV0X2dsLWFyMzAw
bS1ub3INCj4gIGVuZGVmDQo+ICBUQVJHRVRfREVWSUNFUyArPSBnbGluZXRfZ2wtYXIzMDBtLW5v
cg0KPg0KPiArZGVmaW5lIERldmljZS9nbGluZXRfZ2wtYXI3NTANCj4gKyAgQVRIX1NPQyA6PSBx
Y2E5NTMxDQo+ICsgIERFVklDRV9WRU5ET1IgOj0gR0wuaU5ldA0KPiArICBERVZJQ0VfTU9ERUwg
Oj0gR0wtQVI3NTANCj4gKyAgREVWSUNFX1BBQ0tBR0VTIDo9IGttb2QtdXNiMiBrbW9kLWF0aDEw
ay1jdCBhdGgxMGstZmlybXdhcmUtcWNhOTg4Ny1jdCBibG9jay1tb3VudA0KIA0KYmxvY2stbW91
bnQgc2hvdWxkbid0IGJlIGluY2x1ZGVkIGluIERFVklDRV9QQUNLQUdFUy4NCiANCj4gKyAgSU1B
R0VfU0laRSA6PSAxNjAwMGsNCj4gKyAgU1VQUE9SVEVEX0RFVklDRVMgKz0gZ2wtYXI3NTANCj4g
K2VuZGVmDQo+ICtUQVJHRVRfREVWSUNFUyArPSBnbGluZXRfZ2wtYXI3NTANCj4gKw0KPiAgZGVm
aW5lIERldmljZS9nbGluZXRfZ2wtYXI3NTBzDQo+ICAgIEFUSF9TT0MgOj0gcWNhOTU2Mw0KPiAg
ICBERVZJQ0VfVkVORE9SIDo9IEdMLmlOZXQNCj4gLS0NCj4gMi43LjQNCj4NCiANClJlZ2FyZHMs
DQpDaHVhbmhvbmcgR3VvDQogDQo=

------=_001_NextPart331430420102_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-fa=
mily: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, 0); line-heig=
ht: 1.5; }</style></head><body>=0A<div><span></span>Hi,</div><div><br></di=
v><div><span style=3D"color: rgb(0, 0, 0); background-color: rgba(0, 0, 0,=
 0);">Thanks&nbsp;for&nbsp;your&nbsp;advice.&nbsp;I&nbsp;will&nbsp;fix&nbs=
p;these&nbsp;problems&nbsp;and&nbsp;resubmit&nbsp;the&nbsp;patch</span></d=
iv><div><span style=3D"color: rgb(0, 0, 0); background-color: rgba(0, 0, 0=
, 0);"><br></span></div><div><span style=3D"color: rgb(0, 0, 0); backgroun=
d-color: rgba(0, 0, 0, 0);">Best regards</span></div><div><span style=3D"c=
olor: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);">Luochongjun</span=
></div><div><span>=0A</span></div>=0A<blockquote style=3D"margin-top: 0px;=
 margin-bottom: 0px; margin-left: 0.5em;"><div>&nbsp;</div><div style=3D"b=
order:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm"><div =
style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: 8px; FONT-SIZE: 12px;FONT-FAMIL=
Y:tahoma;COLOR:#000000; BACKGROUND: #efefef; PADDING-BOTTOM: 8px; PADDING-=
TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D"mailto:gch981213@gmail.com">Ch=
uanhong Guo</a></div><div><b>Date:</b>&nbsp;2019-08-13&nbsp;14:38</div><di=
v><b>To:</b>&nbsp;<a href=3D"mailto:luochongjun@gl-inet.com">Luochongjun</=
a></div><div><b>CC:</b>&nbsp;<a href=3D"mailto:openwrt-devel@lists.openwrt=
.org">openwrt-devel</a></div><div><b>Subject:</b>&nbsp;Re: [OpenWrt-Devel]=
 [PATCH] ath79: add support for gl-ar750</div></div></div><div><div>Hi! So=
rry for the late reply.</div>=0A<div>Here are 3 more nitpickings below:</d=
iv>=0A<div>&nbsp;</div>=0A<div>On Fri, Jul 26, 2019 at 11:14 AM Luochongju=
n &lt;luochongjun@gl-inet.com&gt; wrote:</div>=0A<div>&gt;</div>=0A<div>&g=
t; This patch supports gl-ar750, which was previously supported by ar71xx.=
</div>=0A<div>&gt;</div>=0A<div>&gt; Specification:</div>=0A<div>&gt; - SO=
C: QCA9531 (650MHz)</div>=0A<div>&gt; - Flash: 16 MiB (W25Q128FVSG)</div>=
=0A<div>&gt; - RAM: 128 MiB DDR2</div>=0A<div>&gt; - Ethernet: 10/100: 2xL=
AN + 10/100: 1xWAN</div>=0A<div>&nbsp;</div>=0A<div>A proper VLAN setup fo=
r the two LAN ports should be added in</div>=0A<div>target/linux/ath79/bas=
e-files/etc/board.d/02_network.</div>=0A<div>&nbsp;</div>=0A<div>&gt; - Wi=
reless: 2.4GHz (bgn) and 5GHz (ac)</div>=0A<div>&gt; - USB: 1x USB 2.0 por=
t</div>=0A<div>&gt; - Switch: 1x switch</div>=0A<div>&gt; - Button: 1x res=
et button</div>=0A<div>&gt; - LED: 3x LEDS (white)</div>=0A<div>&gt;</div>=
=0A<div>&gt; Flash instruction:</div>=0A<div>&gt; Support for sysupgrade d=
irective upgrades, as well as luci upgrades.</div>=0A<div>&gt;</div>=0A<di=
v>&gt; Signed-off-by: Luochongjun &lt;luochongjun@gl-inet.com&gt;</div>=0A=
<div>&gt; ---</div>=0A<div>&gt;&nbsp; .../etc/hotplug.d/firmware/11-ath10k=
-caldata&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 1 +</div>=0A<di=
v>&gt;&nbsp; target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts | 149 ++++=
+++++++++++++++++</div>=0A<div>&gt;&nbsp; target/linux/ath79/image/generic=
.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; |&nbsp; 10 ++</div>=0A<div>&gt;&nbsp; 3 files changed,=
 160 insertions(+)</div>=0A<div>&gt;&nbsp; create mode 100644 target/linux=
/ath79/dts/qca9531_glinet_gl-ar750.dts</div>=0A<div>&gt;</div>=0A<div>&gt;=
 diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath1=
0k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10=
k-caldata</div>=0A<div>&gt; index 4118685..5c9fa2f 100644</div>=0A<div>&gt=
; --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cal=
data</div>=0A<div>&gt; +++ b/target/linux/ath79/base-files/etc/hotplug.d/f=
irmware/11-ath10k-caldata</div>=0A<div>&gt; @@ -117,6 +117,7 @@ case "$FIR=
MWARE" in</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ath10kcal_extract "art" =
20480 2116</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ath10kcal_patch_mac $(m=
acaddr_add $(cat /sys/class/net/eth0/address) +1)</div>=0A<div>&gt;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; ;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 glinet,gl-ar750|\</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; glinet,gl-ar750s)</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ath10=
kcal_extract "art" 20480 2116</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ath1=
0kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0) +1)</div>=0A<div=
>&gt; diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts b/ta=
rget/linux/ath79/dts/qca9531_glinet_gl-ar750.dts</div>=0A<div>&gt; new fil=
e mode 100644</div>=0A<div>&gt; index 0000000..b8f9735</div>=0A<div>&gt; -=
-- /dev/null</div>=0A<div>&gt; +++ b/target/linux/ath79/dts/qca9531_glinet=
_gl-ar750.dts</div>=0A<div>&gt; @@ -0,0 +1,149 @@</div>=0A<div>&gt; +// SP=
DX-License-Identifier: GPL-2.0-or-later OR MIT</div>=0A<div>&gt; +/dts-v1/=
;</div>=0A<div>&gt; +</div>=0A<div>&gt; +#include &lt;dt-bindings/gpio/gpi=
o.h&gt;</div>=0A<div>&gt; +#include &lt;dt-bindings/input/input.h&gt;</div=
>=0A<div>&gt; +</div>=0A<div>&gt; +#include "qca953x.dtsi"</div>=0A<div>&g=
t; +</div>=0A<div>&gt; +/ {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; compatible =3D "glinet,gl-ar750", "qca,qca9531";</div>=0A<div>&g=
t; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; model =3D "GL.iNet GL-AR750";</di=
v>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; k=
eys {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compatible =3D "gpio-keys";</div>=0A<d=
iv>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pinctrl-names =3D "default";</div>=
=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; pinctrl-0 =3D &lt;&amp;jtag_disable_pins&gt;;</di=
v>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reset {</div>=0A<div>&gt; +=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "rese=
t";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; linux,code =3D &lt;KEY_RESTART&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gpios =3D &lt;&amp;gpio 3 =
GPIO_ACTIVE_LOW&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt; +<=
/div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mode {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "mode";</div>=0A<div>&g=
t; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; linux,code =
=3D &lt;BTN_0&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; gpios =3D &lt;&amp;gpio 0 GPIO_ACTIVE_LOW&gt;;</div=
>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; };</div>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; leds {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compatible =3D "gpio-=
leds";</div>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; power {</div>=0A<=
div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label=
 =3D "gl-ar750:white:power";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gpios =3D &lt;&amp;gpio 12 GPIO_ACTIVE_LO=
W&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; default-state =3D "on";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=
=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wlan2g {</div>=0A<div>&gt; +&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "gl-ar=
750:white:wlan2g";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; gpios =3D &lt;&amp;gpio 14 GPIO_ACTIVE_LOW&gt;;</di=
v>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 linux,default-trigger =3D "phy1tpt";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</di=
v>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wlan5g {</div>=0A<div>&gt; =
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "gl-=
ar750:white:wlan5g";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; gpios =3D &lt;&amp;gpio 13 GPIO_ACTIVE_LOW&gt;;</=
div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; linux,default-trigger =3D "phy0tpt";</div>=0A<div>&gt; +&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</=
div>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 };</div>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; i2c {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compatible =3D "i2c-gpio";</div>=
=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sda-gpios =3D &lt;&amp;gpio 1=
7 GPIO_ACTIVE_LOW&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scl-gpios =3D &lt;&am=
p;gpio 16 GPIO_ACTIVE_LOW&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; };</div>=0A<div>&gt; +</div>=0A<div>&gt; +</div>=0A<div>&gt; =
+};</div>=0A<div>&gt; +</div>=0A<div>&gt; +&amp;pcie0 {</div>=0A<div>&gt; =
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D "okay";</div>=0A<div>&gt;=
 +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wifi@0,0 {</div=
>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; compatible =3D "qcom,ath10k";</div>=0A<div>&gt; =
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; reg =3D &lt;0 0 0 0 0&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; devic=
e_type =3D "pci";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
};</div>=0A<div>&gt; +};</div>=0A<div>&gt; +</div>=0A<div>&gt; +&amp;uart =
{</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D "okay=
";</div>=0A<div>&gt; +};</div>=0A<div>&gt; +</div>=0A<div>&gt; +&amp;usb0 =
{</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #address-cells =
=3D &lt;1&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #si=
ze-cells =3D &lt;0&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; status =3D "okay";</div>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; hub_port: port@1 {</div>=0A<div>&gt; +&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; reg =3D &lt;1&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #trigger-source-cells =
=3D &lt;0&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };<=
/div>=0A<div>&nbsp;</div>=0A<div>This hub_port node is only used for a usb=
-port LED trigger. It can be</div>=0A<div>dropped if you don't have a USB =
LED.</div>=0A<div>&nbsp;</div>=0A<div>&gt; +};</div>=0A<div>&gt; +</div>=
=0A<div>&gt; +&amp;usb_phy {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; status =3D "okay";</div>=0A<div>&gt; +};</div>=0A<div>&gt; +</d=
iv>=0A<div>&gt; +&amp;spi {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; status =3D "okay";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; num-cs =3D &lt;0&gt;;</div>=0A<div>&gt; +</div>=0A<div>&gt; +&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; flash@0 {</div>=0A<div>&gt; +&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 compatible =3D "jedec,spi-nor";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt=
;0&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; spi-max-frequency =3D &lt;25000000&g=
t;;</div>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partitions {</div>=
=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c=
ompatible =3D "fixed-partitions";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #address-cells =3D &lt;1&gt;;</div>=
=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #=
size-cells =3D &lt;1&gt;;</div>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partition@0 {</div>=0A<d=
iv>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "u-boot";</div>=0A<div=
>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0x000000 0x040000&gt;;=
</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; read-only;</div>=0A<d=
iv>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</di=
v>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; partition@40000 {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; label =3D "u-boot-env";</div>=0A<div>&gt; +&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; reg =3D &lt;0x040000 0x010000&gt;;</div>=0A<div>&gt; +&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; read-only;</div>=0A<div>&gt; +&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt; +</div=
>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
art: partition@50000 {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 label =3D "art";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =
=3D &lt;0x050000 0x010000&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; read-only;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partition@60000 {</div>=
=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compatible =3D "denx,uimage=
";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "firmware=
";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0x06000=
0 0xfa0000&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt; =
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt; +};</div>=0A<di=
v>&gt; +</div>=0A<div>&gt; +&amp;eth0 {</div>=0A<div>&gt; +&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; status =3D "okay";</div>=0A<div>&gt; +&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; mtd-mac-address =3D &lt;&amp;art 0x0&gt;;</div>=0A<=
div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; phy-handle =3D &lt;&amp;swp=
hy4&gt;;</div>=0A<div>&gt; +};</div>=0A<div>&gt; +</div>=0A<div>&gt; +&amp=
;eth1 {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mtd-mac-ad=
dress =3D &lt;&amp;art 0x0&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; mtd-mac-address-increment =3D &lt;1&gt;;</div>=0A<div>&gt; +=
};</div>=0A<div>&gt; +</div>=0A<div>&gt; +&amp;wmac {</div>=0A<div>&gt; +&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D "okay";</div>=0A<div>&gt; +=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mtd-cal-data =3D &lt;&amp;art 0x1000&=
gt;;</div>=0A<div>&gt; +};</div>=0A<div>&gt; diff --git a/target/linux/ath=
79/image/generic.mk b/target/linux/ath79/image/generic.mk</div>=0A<div>&gt=
; index c5807f2..26b700d 100644</div>=0A<div>&gt; --- a/target/linux/ath79=
/image/generic.mk</div>=0A<div>&gt; +++ b/target/linux/ath79/image/generic=
.mk</div>=0A<div>&gt; @@ -486,6 +486,16 @@ define Device/glinet_gl-ar300m-=
nor</div>=0A<div>&gt;&nbsp; endef</div>=0A<div>&gt;&nbsp; TARGET_DEVICES +=
=3D glinet_gl-ar300m-nor</div>=0A<div>&gt;</div>=0A<div>&gt; +define Devic=
e/glinet_gl-ar750</div>=0A<div>&gt; +&nbsp; ATH_SOC :=3D qca9531</div>=0A<=
div>&gt; +&nbsp; DEVICE_VENDOR :=3D GL.iNet</div>=0A<div>&gt; +&nbsp; DEVI=
CE_MODEL :=3D GL-AR750</div>=0A<div>&gt; +&nbsp; DEVICE_PACKAGES :=3D kmod=
-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct block-mount</div>=0A<div>&=
nbsp;</div>=0A<div>block-mount shouldn't be included in DEVICE_PACKAGES.</=
div>=0A<div>&nbsp;</div>=0A<div>&gt; +&nbsp; IMAGE_SIZE :=3D 16000k</div>=
=0A<div>&gt; +&nbsp; SUPPORTED_DEVICES +=3D gl-ar750</div>=0A<div>&gt; +en=
def</div>=0A<div>&gt; +TARGET_DEVICES +=3D glinet_gl-ar750</div>=0A<div>&g=
t; +</div>=0A<div>&gt;&nbsp; define Device/glinet_gl-ar750s</div>=0A<div>&=
gt;&nbsp;&nbsp;&nbsp; ATH_SOC :=3D qca9563</div>=0A<div>&gt;&nbsp;&nbsp;&n=
bsp; DEVICE_VENDOR :=3D GL.iNet</div>=0A<div>&gt; --</div>=0A<div>&gt; 2.7=
.4</div>=0A<div>&gt;</div>=0A<div>&nbsp;</div>=0A<div>Regards,</div>=0A<di=
v>Chuanhong Guo</div>=0A<div>&nbsp;</div>=0A</div></blockquote>=0A</body><=
/html>
------=_001_NextPart331430420102_=------



--===============5366169217708311599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5366169217708311599==--


