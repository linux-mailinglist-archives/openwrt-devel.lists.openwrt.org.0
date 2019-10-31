Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F8FEA8F3
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 02:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=e6LMMo+IUZlWq8s992ohyGuDu5uHxDv8/B0+0tIlMhQ=; b=kTdGRC4YubO89/
	vXgpbKhY/Ts9OIGd28iTp5g76wqjERGxJRgGZuS/V5F6zhvciOxzchHs9H4MENXkW00pL8amsTwRb
	KyxLWs7zL6lte1QFReBdTd6h4cZk8oJN+SxM/7/9hDod8HPjynNjt7hP1I0c9m2C95zCumdwQn4BV
	2pK2PZREKnUZUKpEiB0IiNVoCvZNQAbYzN4fiuVLJ0LIdfwr3WzqDSfUwINMMT/3V9ZgvHA/QfxsB
	1PcV0isgUnscYbKDtZPaRZGGHHzAH03rR7fQHF1oQx/3cRo82VmVtnAFhL86lg0gz0IPfPZk6huJv
	yrWiUnCuPfLM+dSaE3+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPzZ4-00080y-KD; Thu, 31 Oct 2019 01:47:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPzYy-00080n-Uw
 for openwrt-devel@bombadil.infradead.org; Thu, 31 Oct 2019 01:47:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Message-ID:Mime-Version:
 References:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l6dDrkL33o20EaMA+L8MpSeFI/GlD3fuKP/UAVQQky8=; b=JbGe1+vrJ5WLJ4gKRG9ZuYCtmb
 YDwd41V5fnQeoQex5SumaaKOl/uh9MAzIg4dMmCIKpluSW4NUWdopZRuTihBcxU7MPhNWRGtTnoOR
 UrdtOxU1xwLHOFmM2v3jvaD3N1xp7QNAA7SRXcgtMMkdgdjsMdmKk7lADGhLf+j4aw+xuxGABnSTa
 pRWVQcw5RblyYnVETe/vEuvugpLxau/nZBZcUTVnsH6FPfJY6qxBLw6/K1zkpnDN6/bB1ZTbk9YDd
 +6xq9yAMyUfVl4+5FCo657RAZFsrDPzEALpTgUpCU00Tbo/3z+7cQLzPItdv43gwF7+x22s98fA3e
 EXfa09fA==;
Received: from smtpbg703.qq.com ([203.205.195.89] helo=smtpproxy21.qq.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPzYt-0004L6-PD
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 01:47:46 +0000
X-QQ-mid: bizesmtp20t1572486422txjkxjl7
Received: from PC-daxiong (unknown [124.64.164.69])
 by esmtp6.qq.com (ESMTP) with 
 id ; Thu, 31 Oct 2019 09:47:01 +0800 (CST)
X-QQ-SSF: 00400000002000S0II40B00A0000000
X-QQ-FEAT: 3ZJ6AZ1/83IbsJsLCo0YuHpMt/UIXhSxtHqpv/Tsy64KRjoPShaFiR7ZQ28PA
 Lw9Xq+igM3bYHuSQ3QD3NWWGMZwJJOGAWP484kJiy0Wwv9TRkEpkmdpwLXvSMGy+BUT8db/
 r4kY2NN31cMcIFRltq+wRir29UVI/MaeZMiU/vgBtVc75DpGN2rlcUWsLbI8G+ckZn0136g
 NM6IEYSnC6WxaLOcnj82Mu5PPOAK/fluIBk7AlUQtLusLDn0e5AMRhtIPKhULqpSuFZTZZw
 rLaKfS/O6GGsOD5weMM3v8ggo6/fGcHVjr4FwzaxVRf/NvMTGwmftzcKqNP/ay8ktql+6Xe
 o4MntNTtTibZkjmm/o=
X-QQ-GoodBg: 2
Date: Thu, 31 Oct 2019 09:46:58 +0800
From: =?UTF-8?B?5aSn6ZuE?= <lxliu@ikuai8.com>
To: "Hauke Mehrtens" <hauke@hauke-m.de>, 
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>, 
 <b41d9076-a20e-8ca3-e4b4-f5f2c39d0485@hauke-m.de>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.9.156[cn]
Mime-Version: 1.0
Message-ID: <2019103109465717351619@ikuai8.com>+ADE9415C65EC9923
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:ikuai8.com:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or
 Formatted Colors in HTML
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 FORGED_SPF_HELO        No description available.
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip invalid
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
Content-Type: multipart/mixed; boundary="===============1097696844700058541=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============1097696844700058541==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart078488205765_=----"

This is a multi-part message in MIME format.

------=_001_NextPart078488205765_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

QnVpbGQgZmlsZSBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZTEwMDBlLmtvIHNp
emUgYWJvdXQgOTIwS0IgZm9yIG9sZCBQQVRDSC4NCkFmdGVyIHRoZSBuZXcgcGF0Y2ggaXMgYWJv
dXQgMTc3S0INCg0KRnJvbTogSGF1a2UgTWVocnRlbnMNCkRhdGU6IDIwMTktMTAtMzAgMjM6NDcN
ClRvOiBkYXhpb25nOyBvcGVud3J0LWRldmVsDQpTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxd
IFtQQVRDSC0xOS4wN10gYnVpbGQ6IGZpeCBtb2R1bGUgc3RyaXAgaW52YWxpZA0KT24gMTAvMzAv
MTkgMTE6MTQgQU0sIGRheGlvbmcgd3JvdGU6DQo+IEN1cnJlbnQgbW9kcG9zdCBjYW5ub3QgcmVk
dWNlIHRoZSBtb2R1bGUgc2l6ZS4NCj4gDQo+IFVzZSAkKFNUUklQKSBjb21tYW5kIHRvIHJlcGxh
Y2UgdGhlIG1vZHBvc3QgcGF0Y2gsDQo+IEkgdGhpbmsgdG8gYmUgY29tcGF0aWJpbGl0eSB3aWxs
IGJlIGJldHRlci4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IGRheGlvbmcgPGx4bGl1QGlrdWFpOC5j
b20+DQogDQpQbGVhc2UgYmFzZSB0aGlzIGFnYWluc3QgbWFzdGVyLCB0aGVuIHdlIGNhbiBiYWNr
cG9ydCBpdCB0byAxOS4wNy4NCiANCkNvdWxkIHlvdSBwbGVhc2UgZWxhYm9yYXRlIGEgbGl0dGxl
IGJpdCBtb3JlIGhvdyBtb2R1bGUtc3RyaXAgcHJvdmlkZXMNCmJldHRlciByZXN1bHRzIHRoYW4g
dGhlIHByZXZpb3VzIHBhdGNoPyBJdCB3b3VsZCBiZSBuaWNlIGlmIHlvdSBjb3VsZA0KYWxzbyBw
cm92aWRlIHNvbWUgbnVtYmVycyB0byBjb21wYXJlIHRoZSBwcmV2aW91cyBzaXplIGFuZCB0aGUg
Y3VycmVudCBzaXplLg0KIA0KV291bGQgaXQgbWFrZSBzZW5zZSB0byBkbyBib3RoIHRvZ2V0aGVy
LCB3aGF0IHdhcyBkb25lIGluIHRoaXMgcGF0Y2gNCmJlZm9yZSBhbmQgYWZ0ZXIgeW91ciBjaGFu
Z2U/DQogDQpIYXVrZQ0KIA0KPiAtLS0NCj4gIC4uLi9saW51eC9nZW5lcmljL2hhY2stNC4xNC8y
MDQtbW9kdWxlX3N0cmlwLnBhdGNoIHwgMjE2ICsrKy0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDE5MiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS90YXJnZXQvbGludXgvZ2VuZXJpYy9oYWNrLTQuMTQvMjA0LW1vZHVsZV9zdHJp
cC5wYXRjaCBiL3RhcmdldC9saW51eC9nZW5lcmljL2hhY2stNC4xNC8yMDQtbW9kdWxlX3N0cmlw
LnBhdGNoDQo+IGluZGV4IGQ4NDdhZGYuLmMyMmE1MDcgMTAwNjQ0DQo+IC0tLSBhL3RhcmdldC9s
aW51eC9nZW5lcmljL2hhY2stNC4xNC8yMDQtbW9kdWxlX3N0cmlwLnBhdGNoDQo+ICsrKyBiL3Rh
cmdldC9saW51eC9nZW5lcmljL2hhY2stNC4xNC8yMDQtbW9kdWxlX3N0cmlwLnBhdGNoDQo+IEBA
IC0xLDEwNCArMSw4IEBADQo+IC1Gcm9tIGE3NzlhNDgyZmI5YjlmOGZjZGY4YjI1MTljNzg5YjRi
OWJiNWRkMDUgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxDQo+IC1Gcm9tOiBGZWxpeCBGaWV0a2F1
IDxuYmRAbmJkLm5hbWU+DQo+IC1EYXRlOiBGcmksIDcgSnVsIDIwMTcgMTY6NTY6NDggKzAyMDAN
Cj4gLVN1YmplY3Q6IGJ1aWxkOiBhZGQgYSBoYWNrIGZvciByZW1vdmluZyBub24tZXNzZW50aWFs
IG1vZHVsZSBpbmZvDQo+IC0NCj4gLVNpZ25lZC1vZmYtYnk6IEZlbGl4IEZpZXRrYXUgPG5iZEBu
YmQubmFtZT4NCj4gLS0tLQ0KPiAtIGluY2x1ZGUvbGludXgvbW9kdWxlLmggICAgICB8IDEzICsr
KysrKysrLS0tLS0NCj4gLSBpbmNsdWRlL2xpbnV4L21vZHVsZXBhcmFtLmggfCAxNSArKysrKysr
KysrKystLS0NCj4gLSBpbml0L0tjb25maWcgICAgICAgICAgICAgICAgfCAgNyArKysrKysrDQo+
IC0ga2VybmVsL21vZHVsZS5jICAgICAgICAgICAgIHwgIDUgKysrKy0NCj4gLSBzY3JpcHRzL21v
ZC9tb2Rwb3N0LmMgICAgICAgfCAxMiArKysrKysrKysrKysNCj4gLSA1IGZpbGVzIGNoYW5nZWQs
IDQzIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IC0NCj4gLS0tLSBhL2luY2x1ZGUv
bGludXgvbW9kdWxlLmgNCj4gLSsrKyBiL2luY2x1ZGUvbGludXgvbW9kdWxlLmgNCj4gLUBAIC0x
NTgsNiArMTU4LDcgQEAgZXh0ZXJuIHZvaWQgY2xlYW51cF9tb2R1bGUodm9pZCk7DQo+IC0gDQo+
IC0gLyogR2VuZXJpYyBpbmZvIG9mIGZvcm0gdGFnID0gImluZm8iICovDQo+IC0gI2RlZmluZSBN
T0RVTEVfSU5GTyh0YWcsIGluZm8pIF9fTU9EVUxFX0lORk8odGFnLCB0YWcsIGluZm8pDQo+IC0r
I2RlZmluZSBNT0RVTEVfSU5GT19TVFJJUCh0YWcsIGluZm8pIF9fTU9EVUxFX0lORk9fU1RSSVAo
dGFnLCB0YWcsIGluZm8pDQo+IC0gDQo+IC0gLyogRm9yIHVzZXJzcGFjZTogeW91IGNhbiBhbHNv
IGNhbGwgbWUuLi4gKi8NCj4gLSAjZGVmaW5lIE1PRFVMRV9BTElBUyhfYWxpYXMpIE1PRFVMRV9J
TkZPKGFsaWFzLCBfYWxpYXMpDQo+IC1AQCAtMjAxLDEyICsyMDIsMTIgQEAgZXh0ZXJuIHZvaWQg
Y2xlYW51cF9tb2R1bGUodm9pZCk7DQo+IC0gICogQXV0aG9yKHMpLCB1c2UgIk5hbWUgPGVtYWls
PiIgb3IganVzdCAiTmFtZSIsIGZvciBtdWx0aXBsZQ0KPiAtICAqIGF1dGhvcnMgdXNlIG11bHRp
cGxlIE1PRFVMRV9BVVRIT1IoKSBzdGF0ZW1lbnRzL2xpbmVzLg0KPiAtICAqLw0KPiAtLSNkZWZp
bmUgTU9EVUxFX0FVVEhPUihfYXV0aG9yKSBNT0RVTEVfSU5GTyhhdXRob3IsIF9hdXRob3IpDQo+
IC0rI2RlZmluZSBNT0RVTEVfQVVUSE9SKF9hdXRob3IpIE1PRFVMRV9JTkZPX1NUUklQKGF1dGhv
ciwgX2F1dGhvcikNCj4gLSANCj4gLSAvKiBXaGF0IHlvdXIgbW9kdWxlIGRvZXMuICovDQo+IC0t
I2RlZmluZSBNT0RVTEVfREVTQ1JJUFRJT04oX2Rlc2NyaXB0aW9uKSBNT0RVTEVfSU5GTyhkZXNj
cmlwdGlvbiwgX2Rlc2NyaXB0aW9uKQ0KPiAtKyNkZWZpbmUgTU9EVUxFX0RFU0NSSVBUSU9OKF9k
ZXNjcmlwdGlvbikgTU9EVUxFX0lORk9fU1RSSVAoZGVzY3JpcHRpb24sIF9kZXNjcmlwdGlvbikN
Cj4gLSANCj4gLS0jaWZkZWYgTU9EVUxFDQo+IC0rI2lmIGRlZmluZWQoTU9EVUxFKSAmJiAhZGVm
aW5lZChDT05GSUdfTU9EVUxFX1NUUklQUEVEKQ0KPiAtIC8qIENyZWF0ZXMgYW4gYWxpYXMgc28g
ZmlsZTJhbGlhcy5jIGNhbiBmaW5kIGRldmljZSB0YWJsZS4gKi8NCj4gLSAjZGVmaW5lIE1PRFVM
RV9ERVZJQ0VfVEFCTEUodHlwZSwgbmFtZSkgXA0KPiAtIGV4dGVybiB0eXBlb2YobmFtZSkgX19t
b2RfIyN0eXBlIyNfXyMjbmFtZSMjX2RldmljZV90YWJsZSBcDQo+IC1AQCAtMjMzLDcgKzIzNCw5
IEBAIGV4dGVybiB0eXBlb2YobmFtZSkgX19tb2RfIyN0eXBlIyNfXyMjbmENCj4gLSAgKi8NCj4g
LSANCj4gLSAjaWYgZGVmaW5lZChNT0RVTEUpIHx8ICFkZWZpbmVkKENPTkZJR19TWVNGUykNCj4g
LS0jZGVmaW5lIE1PRFVMRV9WRVJTSU9OKF92ZXJzaW9uKSBNT0RVTEVfSU5GTyh2ZXJzaW9uLCBf
dmVyc2lvbikNCj4gLSsjZGVmaW5lIE1PRFVMRV9WRVJTSU9OKF92ZXJzaW9uKSBNT0RVTEVfSU5G
T19TVFJJUCh2ZXJzaW9uLCBfdmVyc2lvbikNCj4gLSsjZWxpZiBkZWZpbmVkKENPTkZJR19NT0RV
TEVfU1RSSVBQRUQpDQo+IC0rI2RlZmluZSBNT0RVTEVfVkVSU0lPTihfdmVyc2lvbikgX19NT0RV
TEVfSU5GT19ESVNBQkxFRCh2ZXJzaW9uKQ0KPiAtICNlbHNlDQo+IC0gI2RlZmluZSBNT0RVTEVf
VkVSU0lPTihfdmVyc2lvbikgXA0KPiAtIHN0YXRpYyBzdHJ1Y3QgbW9kdWxlX3ZlcnNpb25fYXR0
cmlidXRlIF9fX21vZHZlcl9hdHRyID0geyBcDQo+IC1AQCAtMjU1LDcgKzI1OCw3IEBAIGV4dGVy
biB0eXBlb2YobmFtZSkgX19tb2RfIyN0eXBlIyNfXyMjbmENCj4gLSAvKiBPcHRpb25hbCBmaXJt
d2FyZSBmaWxlIChvciBmaWxlcykgbmVlZGVkIGJ5IHRoZSBtb2R1bGUNCj4gLSAgKiBmb3JtYXQg
aXMgc2ltcGx5IGZpcm13YXJlIGZpbGUgbmFtZS4gIE11bHRpcGxlIGZpcm13YXJlDQo+IC0gICog
ZmlsZXMgcmVxdWlyZSBtdWx0aXBsZSBNT0RVTEVfRklSTVdBUkUoKSBzcGVjaWZpZXJzICovDQo+
IC0tI2RlZmluZSBNT0RVTEVfRklSTVdBUkUoX2Zpcm13YXJlKSBNT0RVTEVfSU5GTyhmaXJtd2Fy
ZSwgX2Zpcm13YXJlKQ0KPiAtKyNkZWZpbmUgTU9EVUxFX0ZJUk1XQVJFKF9maXJtd2FyZSkgTU9E
VUxFX0lORk9fU1RSSVAoZmlybXdhcmUsIF9maXJtd2FyZSkNCj4gLSANCj4gLSBzdHJ1Y3Qgbm90
aWZpZXJfYmxvY2s7DQo+IC0gDQo+IC0tLS0gYS9pbmNsdWRlL2xpbnV4L21vZHVsZXBhcmFtLmgN
Cj4gLSsrKyBiL2luY2x1ZGUvbGludXgvbW9kdWxlcGFyYW0uaA0KPiAtQEAgLTE3LDYgKzE3LDE2
IEBADQo+IC0gLyogQ2hvc2VuIHNvIHRoYXQgc3RydWN0cyB3aXRoIGFuIHVuc2lnbmVkIGxvbmcg
bGluZSB1cC4gKi8NCj4gLSAjZGVmaW5lIE1BWF9QQVJBTV9QUkVGSVhfTEVOICg2NCAtIHNpemVv
Zih1bnNpZ25lZCBsb25nKSkNCj4gLSANCj4gLSsvKiBUaGlzIHN0cnVjdCBpcyBoZXJlIGZvciBz
eW50YWN0aWMgY29oZXJlbmN5LCBpdCBpcyBub3QgdXNlZCAqLw0KPiAtKyNkZWZpbmUgX19NT0RV
TEVfSU5GT19ESVNBQkxFRChuYW1lKSAgIFwNCj4gLSsgIHN0cnVjdCBfX1VOSVFVRV9JRChuYW1l
KSB7fQ0KPiAtKw0KPiAtKyNpZmRlZiBDT05GSUdfTU9EVUxFX1NUUklQUEVEDQo+IC0rI2RlZmlu
ZSBfX01PRFVMRV9JTkZPX1NUUklQKHRhZywgbmFtZSwgaW5mbykgX19NT0RVTEVfSU5GT19ESVNB
QkxFRChuYW1lKQ0KPiAtKyNlbHNlDQo+IC0rI2RlZmluZSBfX01PRFVMRV9JTkZPX1NUUklQKHRh
ZywgbmFtZSwgaW5mbykgX19NT0RVTEVfSU5GTyh0YWcsIG5hbWUsIGluZm8pDQo+IC0rI2VuZGlm
DQo+IC0rDQo+IC0gI2lmZGVmIE1PRFVMRQ0KPiAtICNkZWZpbmUgX19NT0RVTEVfSU5GTyh0YWcs
IG5hbWUsIGluZm8pICAgXA0KPiAtIHN0YXRpYyBjb25zdCBjaGFyIF9fVU5JUVVFX0lEKG5hbWUp
W10gICBcDQo+IC1AQCAtMjQsOCArMzQsNyBAQCBzdGF0aWMgY29uc3QgY2hhciBfX1VOSVFVRV9J
RChuYW1lKVtdDQo+IC0gICA9IF9fc3RyaW5naWZ5KHRhZykgIj0iIGluZm8NCj4gLSAjZWxzZSAg
LyogIU1PRFVMRSAqLw0KPiAtIC8qIFRoaXMgc3RydWN0IGlzIGhlcmUgZm9yIHN5bnRhY3RpYyBj
b2hlcmVuY3ksIGl0IGlzIG5vdCB1c2VkICovDQo+IC0tI2RlZmluZSBfX01PRFVMRV9JTkZPKHRh
ZywgbmFtZSwgaW5mbykgICBcDQo+IC0tICBzdHJ1Y3QgX19VTklRVUVfSUQobmFtZSkge30NCj4g
LSsjZGVmaW5lIF9fTU9EVUxFX0lORk8odGFnLCBuYW1lLCBpbmZvKSBfX01PRFVMRV9JTkZPX0RJ
U0FCTEVEKG5hbWUpDQo+IC0gI2VuZGlmDQo+IC0gI2RlZmluZSBfX01PRFVMRV9QQVJNX1RZUEUo
bmFtZSwgX3R5cGUpICAgXA0KPiAtICAgX19NT0RVTEVfSU5GTyhwYXJtdHlwZSwgbmFtZSMjdHlw
ZSwgI25hbWUgIjoiIF90eXBlKQ0KPiAtQEAgLTMzLDcgKzQyLDcgQEAgc3RhdGljIGNvbnN0IGNo
YXIgX19VTklRVUVfSUQobmFtZSlbXQ0KPiAtIC8qIE9uZSBmb3IgZWFjaCBwYXJhbWV0ZXIsIGRl
c2NyaWJpbmcgaG93IHRvIHVzZSBpdC4gIFNvbWUgZmlsZXMgZG8NCj4gLSAgICBtdWx0aXBsZSBv
ZiB0aGVzZSBwZXIgbGluZSwgc28gY2FuJ3QganVzdCB1c2UgTU9EVUxFX0lORk8uICovDQo+IC0g
I2RlZmluZSBNT0RVTEVfUEFSTV9ERVNDKF9wYXJtLCBkZXNjKSBcDQo+IC0tIF9fTU9EVUxFX0lO
Rk8ocGFybSwgX3Bhcm0sICNfcGFybSAiOiIgZGVzYykNCj4gLSsgX19NT0RVTEVfSU5GT19TVFJJ
UChwYXJtLCBfcGFybSwgI19wYXJtICI6IiBkZXNjKQ0KPiAtIA0KPiAtIHN0cnVjdCBrZXJuZWxf
cGFyYW07DQo+IC0gDQo+ICtkaWZmIC0tZ2l0IGEvaW5pdC9LY29uZmlnIGIvaW5pdC9LY29uZmln
DQo+ICtpbmRleCA0NjA3NTMyLi5jYmEwZjgxIDEwMDY0NA0KPiAgLS0tIGEvaW5pdC9LY29uZmln
DQo+ICArKysgYi9pbml0L0tjb25maWcNCj4gLUBAIC0xOTAzLDYgKzE5MDMsMTMgQEAgY29uZmln
IFRSSU1fVU5VU0VEX0tTWU1TDQo+ICtAQCAtMTg4Myw2ICsxODgzLDEzIEBAIGNvbmZpZyBUUklN
X1VOVVNFRF9LU1lNUw0KPiAgIA0KPiAgICAgSWYgdW5zdXJlLCBvciBpZiB5b3UgbmVlZCB0byBi
dWlsZCBvdXQtb2YtdHJlZSBtb2R1bGVzLCBzYXkgTi4NCj4gICANCj4gQEAgLTExMiw5NyArMTYs
MjUgQEAgU2lnbmVkLW9mZi1ieTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPg0KPiAgIGVu
ZGlmICMgTU9EVUxFUw0KPiAgIA0KPiAgIGNvbmZpZyBNT0RVTEVTX1RSRUVfTE9PS1VQDQo+IC0t
LS0gYS9rZXJuZWwvbW9kdWxlLmMNCj4gLSsrKyBiL2tlcm5lbC9tb2R1bGUuYw0KPiAtQEAgLTMw
MjAsOSArMzAyMCwxMSBAQCBzdGF0aWMgc3RydWN0IG1vZHVsZSAqc2V0dXBfbG9hZF9pbmZvKHN0
DQo+IC0gDQo+IC0gc3RhdGljIGludCBjaGVja19tb2RpbmZvKHN0cnVjdCBtb2R1bGUgKm1vZCwg
c3RydWN0IGxvYWRfaW5mbyAqaW5mbywgaW50IGZsYWdzKQ0KPiAtIHsNCj4gLS0gY29uc3QgY2hh
ciAqbW9kbWFnaWMgPSBnZXRfbW9kaW5mbyhpbmZvLCAidmVybWFnaWMiKTsNCj4gLSBpbnQgZXJy
Ow0KPiAtIA0KPiAtKyNpZm5kZWYgQ09ORklHX01PRFVMRV9TVFJJUFBFRA0KPiAtKyBjb25zdCBj
aGFyICptb2RtYWdpYyA9IGdldF9tb2RpbmZvKGluZm8sICJ2ZXJtYWdpYyIpOw0KPiArZGlmZiAt
LWdpdCBhL3NjcmlwdHMvS2J1aWxkLmluY2x1ZGUgYi9zY3JpcHRzL0tidWlsZC5pbmNsdWRlDQo+
ICtpbmRleCBhMzNmYTFhLi4zNGIzNGUwIDEwMDY0NA0KPiArLS0tIGEvc2NyaXB0cy9LYnVpbGQu
aW5jbHVkZQ0KPiArKysrIGIvc2NyaXB0cy9LYnVpbGQuaW5jbHVkZQ0KPiArQEAgLTI2MCwxMSAr
MjYwLDE2IEBAIG1ha2UtY21kID0gJChjYWxsIGVzY3NxLCQoc3Vic3QgJChwb3VuZCksJCQocG91
bmQpLCQoc3Vic3QgJCQsJCQkJCwkKGNtZF8kKDEpKSkpDQo+ICsgIyBQSE9OWSB0YXJnZXRzIHNr
aXBwZWQgaW4gYm90aCBjYXNlcy4NCj4gKyBhbnktcHJlcmVxID0gJChmaWx0ZXItb3V0ICQoUEhP
TlkpLCQ/KSAkKGZpbHRlci1vdXQgJChQSE9OWSkgJCh3aWxkY2FyZCAkXiksJF4pDQo+ICsgDQo+
ICsraWZlcSAoJChDT05GSUdfTU9EVUxFX1NUUklQUEVEKSx5KQ0KPiArKyBtb2R1bGUtc3RyaXAg
PSBzPSRAOyBpZiBbICIkJHtzLy8qLn0iID0gImtvIiBdO3RoZW4gJChTVFJJUCkgLWcgLVMgLWQg
LS1zdHJpcC11bm5lZWRlZCAkQCA7ZmkNCj4gKytlbmRpZg0KPiAgKw0KPiAtIGlmIChmbGFncyAm
IE1PRFVMRV9JTklUX0lHTk9SRV9WRVJNQUdJQykNCj4gLSBtb2RtYWdpYyA9IE5VTEw7DQo+IC0g
DQo+IC1AQCAtMzA0Myw2ICszMDQ1LDcgQEAgc3RhdGljIGludCBjaGVja19tb2RpbmZvKHN0cnVj
dCBtb2R1bGUgKg0KPiAtIG1vZC0+bmFtZSk7DQo+IC0gYWRkX3RhaW50X21vZHVsZShtb2QsIFRB
SU5UX09PVF9NT0RVTEUsIExPQ0tERVBfU1RJTExfT0spOw0KPiAtIH0NCj4gLSsjZW5kaWYNCj4g
LSANCj4gLSBjaGVja19tb2RpbmZvX3JldHBvbGluZShtb2QsIGluZm8pOw0KPiAtIA0KPiAtLS0t
IGEvc2NyaXB0cy9tb2QvbW9kcG9zdC5jDQo+IC0rKysgYi9zY3JpcHRzL21vZC9tb2Rwb3N0LmMN
Cj4gLUBAIC0xOTg0LDcgKzE5ODQsOSBAQCBzdGF0aWMgdm9pZCByZWFkX3N5bWJvbHMoY2hhciAq
bW9kbmFtZSkNCj4gLSBzeW1uYW1lID0gcmVtb3ZlX2RvdChpbmZvLnN0cnRhYiArIHN5bS0+c3Rf
bmFtZSk7DQo+IC0gDQo+IC0gaGFuZGxlX21vZHZlcnNpb25zKG1vZCwgJmluZm8sIHN5bSwgc3lt
bmFtZSk7DQo+IC0rI2lmbmRlZiBDT05GSUdfTU9EVUxFX1NUUklQUEVEDQo+IC0gaGFuZGxlX21v
ZGRldnRhYmxlKG1vZCwgJmluZm8sIHN5bSwgc3ltbmFtZSk7DQo+IC0rI2VuZGlmDQo+IC0gfQ0K
PiAtIGlmICghaXNfdm1saW51eChtb2RuYW1lKSB8fA0KPiAtICAgICAgKGlzX3ZtbGludXgobW9k
bmFtZSkgJiYgdm1saW51eF9zZWN0aW9uX3dhcm5pbmdzKSkNCj4gLUBAIC0yMTQ1LDggKzIxNDcs
MTAgQEAgc3RhdGljIHZvaWQgYWRkX2hlYWRlcihzdHJ1Y3QgYnVmZmVyICpiLA0KPiAtIGJ1Zl9w
cmludGYoYiwgIiNpbmNsdWRlIDxsaW51eC92ZXJtYWdpYy5oPlxuIik7DQo+IC0gYnVmX3ByaW50
ZihiLCAiI2luY2x1ZGUgPGxpbnV4L2NvbXBpbGVyLmg+XG4iKTsNCj4gLSBidWZfcHJpbnRmKGIs
ICJcbiIpOw0KPiAtKyNpZm5kZWYgQ09ORklHX01PRFVMRV9TVFJJUFBFRA0KPiAtIGJ1Zl9wcmlu
dGYoYiwgIk1PRFVMRV9JTkZPKHZlcm1hZ2ljLCBWRVJNQUdJQ19TVFJJTkcpO1xuIik7DQo+IC0g
YnVmX3ByaW50ZihiLCAiTU9EVUxFX0lORk8obmFtZSwgS0JVSUxEX01PRE5BTUUpO1xuIik7DQo+
IC0rI2VuZGlmDQo+IC0gYnVmX3ByaW50ZihiLCAiXG4iKTsNCj4gLSBidWZfcHJpbnRmKGIsICJf
X3Zpc2libGUgc3RydWN0IG1vZHVsZSBfX3RoaXNfbW9kdWxlXG4iKTsNCj4gLSBidWZfcHJpbnRm
KGIsICJfX2F0dHJpYnV0ZV9fKChzZWN0aW9uKFwiLmdudS5saW5rb25jZS50aGlzX21vZHVsZVwi
KSkpID0ge1xuIik7DQo+IC1AQCAtMjE2Myw4ICsyMTY3LDEwIEBAIHN0YXRpYyB2b2lkIGFkZF9o
ZWFkZXIoc3RydWN0IGJ1ZmZlciAqYiwNCj4gLSANCj4gLSBzdGF0aWMgdm9pZCBhZGRfaW50cmVl
X2ZsYWcoc3RydWN0IGJ1ZmZlciAqYiwgaW50IGlzX2ludHJlZSkNCj4gLSB7DQo+IC0rI2lmbmRl
ZiBDT05GSUdfTU9EVUxFX1NUUklQUEVEDQo+IC0gaWYgKGlzX2ludHJlZSkNCj4gLSBidWZfcHJp
bnRmKGIsICJcbk1PRFVMRV9JTkZPKGludHJlZSwgXCJZXCIpO1xuIik7DQo+IC0rI2VuZGlmDQo+
IC0gfQ0KPiAtIA0KPiAtIC8qIENhbm5vdCBjaGVjayBmb3IgYXNzZW1ibGVyICovDQo+IC1AQCAt
MjE3NywxMCArMjE4MywxMiBAQCBzdGF0aWMgdm9pZCBhZGRfcmV0cG9saW5lKHN0cnVjdCBidWZm
ZXINCj4gLSANCj4gLSBzdGF0aWMgdm9pZCBhZGRfc3RhZ2luZ19mbGFnKHN0cnVjdCBidWZmZXIg
KmIsIGNvbnN0IGNoYXIgKm5hbWUpDQo+IC0gew0KPiAtKyNpZm5kZWYgQ09ORklHX01PRFVMRV9T
VFJJUFBFRA0KPiAtIHN0YXRpYyBjb25zdCBjaGFyICpzdGFnaW5nX2RpciA9ICJkcml2ZXJzL3N0
YWdpbmciOw0KPiAtIA0KPiAtIGlmIChzdHJuY21wKHN0YWdpbmdfZGlyLCBuYW1lLCBzdHJsZW4o
c3RhZ2luZ19kaXIpKSA9PSAwKQ0KPiAtIGJ1Zl9wcmludGYoYiwgIlxuTU9EVUxFX0lORk8oc3Rh
Z2luZywgXCJZXCIpO1xuIik7DQo+IC0rI2VuZGlmDQo+IC0gfQ0KPiAtIA0KPiAtIC8qKg0KPiAt
QEAgLTIyNzksMTEgKzIyODcsMTMgQEAgc3RhdGljIHZvaWQgYWRkX2RlcGVuZHMoc3RydWN0IGJ1
ZmZlciAqYg0KPiAtIA0KPiAtIHN0YXRpYyB2b2lkIGFkZF9zcmN2ZXJzaW9uKHN0cnVjdCBidWZm
ZXIgKmIsIHN0cnVjdCBtb2R1bGUgKm1vZCkNCj4gLSB7DQo+IC0rI2lmbmRlZiBDT05GSUdfTU9E
VUxFX1NUUklQUEVEDQo+IC0gaWYgKG1vZC0+c3JjdmVyc2lvblswXSkgew0KPiAtIGJ1Zl9wcmlu
dGYoYiwgIlxuIik7DQo+IC0gYnVmX3ByaW50ZihiLCAiTU9EVUxFX0lORk8oc3JjdmVyc2lvbiwg
XCIlc1wiKTtcbiIsDQo+IC0gICAgbW9kLT5zcmN2ZXJzaW9uKTsNCj4gLSB9DQo+IC0rI2VuZGlm
DQo+IC0gfQ0KPiAtIA0KPiAtIHN0YXRpYyB2b2lkIHdyaXRlX2lmX2NoYW5nZWQoc3RydWN0IGJ1
ZmZlciAqYiwgY29uc3QgY2hhciAqZm5hbWUpDQo+IC1AQCAtMjUyMCw3ICsyNTMwLDkgQEAgaW50
IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQ0KPiAtIGFkZF9zdGFnaW5nX2ZsYWcoJmJ1Ziwg
bW9kLT5uYW1lKTsNCj4gLSBlcnIgfD0gYWRkX3ZlcnNpb25zKCZidWYsIG1vZCk7DQo+IC0gYWRk
X2RlcGVuZHMoJmJ1ZiwgbW9kLCBtb2R1bGVzKTsNCj4gLSsjaWZuZGVmIENPTkZJR19NT0RVTEVf
U1RSSVBQRUQNCj4gLSBhZGRfbW9kZGV2dGFibGUoJmJ1ZiwgbW9kKTsNCj4gLSsjZW5kaWYNCj4g
LSBhZGRfc3JjdmVyc2lvbigmYnVmLCBtb2QpOw0KPiAtIA0KPiAtIHNwcmludGYoZm5hbWUsICIl
cy5tb2QuYyIsIG1vZC0+bmFtZSk7DQo+ICsgIyBFeGVjdXRlIGNvbW1hbmQgaWYgY29tbWFuZCBo
YXMgY2hhbmdlZCBvciBwcmVyZXF1aXNpdGUocykgYXJlIHVwZGF0ZWQuDQo+ICsgaWZfY2hhbmdl
ZCA9ICQoaWYgJChzdHJpcCAkKGFueS1wcmVyZXEpICQoYXJnLWNoZWNrKSksICAgICAgICAgICAg
ICAgICAgICAgICBcDQo+ICsgQHNldCAtZTsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXA0KPiArICQoZWNoby1jbWQpICQoY21kXyQo
MSkpOyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwNCj4gKy0g
cHJpbnRmICclc1xuJyAnY21kXyRAIDo9ICQobWFrZS1jbWQpJyA+ICQoZG90LXRhcmdldCkuY21k
LCBAOikNCj4gKysgcHJpbnRmICclc1xuJyAnY21kXyRAIDo9ICQobWFrZS1jbWQpJyA+ICQoZG90
LXRhcmdldCkuY21kLCBAOik7ICAgICAgXA0KPiArKyAkKG1vZHVsZS1zdHJpcCkNCj4gKyANCj4g
KyAjIEV4ZWN1dGUgdGhlIGNvbW1hbmQgYW5kIGFsc28gcG9zdHByb2Nlc3MgZ2VuZXJhdGVkIC5k
IGRlcGVuZGVuY2llcyBmaWxlLg0KPiArIGlmX2NoYW5nZWRfZGVwID0gJChpZiAkKHN0cmlwICQo
YW55LXByZXJlcSkgJChhcmctY2hlY2spICksICAgICAgICAgICAgICAgICAgXA0KPiANCiANCiAN
Cg==

------=_001_NextPart078488205765_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-fa=
mily: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, 0); line-heig=
ht: 1.5; }</style></head><body>=0A<div><span style=3D"font-size: 10.5pt; l=
ine-height: 1.5; background-color: transparent;">Build file&nbsp;drivers/n=
et/ethernet/intel/e1000e/e1000e.ko size about 920KB for old PATCH.</span><=
span></span></div><div><span style=3D"font-size: 10.5pt; line-height: 1.5;=
 background-color: transparent;">After the new patch is about 177KB</span>=
</div><div><span style=3D"font-size: 10.5pt; line-height: 1.5; background-=
color: transparent;"><br></span></div><blockquote style=3D"margin-Top: 0px=
; margin-Bottom: 0px; margin-Left: 0.5em"><div style=3D"border:none;border=
-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm"><div style=3D"PADDING-=
RIGHT: 8px; PADDING-LEFT: 8px; FONT-SIZE: 12px;FONT-FAMILY:tahoma;COLOR:#0=
00000; BACKGROUND: #efefef; PADDING-BOTTOM: 8px; PADDING-TOP: 8px"><div><b=
>From:</b>&nbsp;<a href=3D"mailto:hauke@hauke-m.de">Hauke Mehrtens</a></di=
v><div><b>Date:</b>&nbsp;2019-10-30&nbsp;23:47</div><div><b>To:</b>&nbsp;<=
a href=3D"mailto:lxliu@ikuai8.com">daxiong</a>; <a href=3D"mailto:openwrt-=
devel@lists.openwrt.org">openwrt-devel</a></div><div><b>Subject:</b>&nbsp;=
Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip invalid</div></d=
iv></div><div><div>On 10/30/19 11:14 AM, daxiong wrote:</div>=0A<div>&gt; =
Current modpost cannot reduce the module size.</div>=0A<div>&gt; </div>=0A=
<div>&gt; Use $(STRIP) command to replace the modpost patch,</div>=0A<div>=
&gt; I think to be compatibility will be better.</div>=0A<div>&gt; </div>=
=0A<div>&gt; Signed-off-by: daxiong &lt;lxliu@ikuai8.com&gt;</div>=0A<div>=
&nbsp;</div>=0A<div>Please base this against master, then we can backport =
it to 19.07.</div>=0A<div>&nbsp;</div>=0A<div>Could you please elaborate a=
 little bit more how module-strip provides</div>=0A<div>better results tha=
n the previous patch? It would be nice if you could</div>=0A<div>also prov=
ide some numbers to compare the previous size and the current size.</div>=
=0A<div>&nbsp;</div>=0A<div>Would it make sense to do both together, what =
was done in this patch</div>=0A<div>before and after your change?</div>=0A=
<div>&nbsp;</div>=0A<div>Hauke</div>=0A<div>&nbsp;</div>=0A<div>&gt; ---</=
div>=0A<div>&gt;&nbsp; .../linux/generic/hack-4.14/204-module_strip.patch =
| 216 +++------------------</div>=0A<div>&gt;&nbsp; 1 file changed, 24 ins=
ertions(+), 192 deletions(-)</div>=0A<div>&gt; </div>=0A<div>&gt; diff --g=
it a/target/linux/generic/hack-4.14/204-module_strip.patch b/target/linux/=
generic/hack-4.14/204-module_strip.patch</div>=0A<div>&gt; index d847adf..=
c22a507 100644</div>=0A<div>&gt; --- a/target/linux/generic/hack-4.14/204-=
module_strip.patch</div>=0A<div>&gt; +++ b/target/linux/generic/hack-4.14/=
204-module_strip.patch</div>=0A<div>&gt; @@ -1,104 +1,8 @@</div>=0A<div>&g=
t; -From a779a482fb9b9f8fcdf8b2519c789b4b9bb5dd05 Mon Sep 17 00:00:00 2001=
</div>=0A<div>&gt; -From: Felix Fietkau &lt;nbd@nbd.name&gt;</div>=0A<div>=
&gt; -Date: Fri, 7 Jul 2017 16:56:48 +0200</div>=0A<div>&gt; -Subject: bui=
ld: add a hack for removing non-essential module info</div>=0A<div>&gt; -<=
/div>=0A<div>&gt; -Signed-off-by: Felix Fietkau &lt;nbd@nbd.name&gt;</div>=
=0A<div>&gt; ----</div>=0A<div>&gt; - include/linux/module.h&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; | 13 ++++++++-----</div>=0A<div>&gt; - include/linux/modu=
leparam.h | 15 ++++++++++++---</div>=0A<div>&gt; - init/Kconfig&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; |&nbsp; 7 +++++++</div>=0A<div>&gt; - kernel/module.c&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 5 ++++-<=
/div>=0A<div>&gt; - scripts/mod/modpost.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; | 12 ++++++++++++</div>=0A<div>&gt; - 5 files changed, 43 insertions(+=
), 9 deletions(-)</div>=0A<div>&gt; -</div>=0A<div>&gt; ---- a/include/lin=
ux/module.h</div>=0A<div>&gt; -+++ b/include/linux/module.h</div>=0A<div>&=
gt; -@@ -158,6 +158,7 @@ extern void cleanup_module(void);</div>=0A<div>&g=
t; - </div>=0A<div>&gt; - /* Generic info of form tag =3D "info" */</div>=
=0A<div>&gt; - #define MODULE_INFO(tag, info) __MODULE_INFO(tag, tag, info=
)</div>=0A<div>&gt; -+#define MODULE_INFO_STRIP(tag, info) __MODULE_INFO_S=
TRIP(tag, tag, info)</div>=0A<div>&gt; - </div>=0A<div>&gt; - /* For users=
pace: you can also call me... */</div>=0A<div>&gt; - #define MODULE_ALIAS(=
_alias) MODULE_INFO(alias, _alias)</div>=0A<div>&gt; -@@ -201,12 +202,12 @=
@ extern void cleanup_module(void);</div>=0A<div>&gt; -&nbsp; * Author(s),=
 use "Name &lt;email&gt;" or just "Name", for multiple</div>=0A<div>&gt; -=
&nbsp; * authors use multiple MODULE_AUTHOR() statements/lines.</div>=0A<d=
iv>&gt; -&nbsp; */</div>=0A<div>&gt; --#define MODULE_AUTHOR(_author) MODU=
LE_INFO(author, _author)</div>=0A<div>&gt; -+#define MODULE_AUTHOR(_author=
) MODULE_INFO_STRIP(author, _author)</div>=0A<div>&gt; - </div>=0A<div>&gt=
; - /* What your module does. */</div>=0A<div>&gt; --#define MODULE_DESCRI=
PTION(_description) MODULE_INFO(description, _description)</div>=0A<div>&g=
t; -+#define MODULE_DESCRIPTION(_description) MODULE_INFO_STRIP(descriptio=
n, _description)</div>=0A<div>&gt; - </div>=0A<div>&gt; --#ifdef MODULE</d=
iv>=0A<div>&gt; -+#if defined(MODULE) &amp;&amp; !defined(CONFIG_MODULE_ST=
RIPPED)</div>=0A<div>&gt; - /* Creates an alias so file2alias.c can find d=
evice table. */</div>=0A<div>&gt; - #define MODULE_DEVICE_TABLE(type, name=
)					\</div>=0A<div>&gt; - extern typeof(name) __mod_##type##__##name##_d=
evice_table		\</div>=0A<div>&gt; -@@ -233,7 +234,9 @@ extern typeof(name) =
__mod_##type##__##na</div>=0A<div>&gt; -&nbsp; */</div>=0A<div>&gt; - </di=
v>=0A<div>&gt; - #if defined(MODULE) || !defined(CONFIG_SYSFS)</div>=0A<di=
v>&gt; --#define MODULE_VERSION(_version) MODULE_INFO(version, _version)</=
div>=0A<div>&gt; -+#define MODULE_VERSION(_version) MODULE_INFO_STRIP(vers=
ion, _version)</div>=0A<div>&gt; -+#elif defined(CONFIG_MODULE_STRIPPED)</=
div>=0A<div>&gt; -+#define MODULE_VERSION(_version) __MODULE_INFO_DISABLED=
(version)</div>=0A<div>&gt; - #else</div>=0A<div>&gt; - #define MODULE_VER=
SION(_version)					\</div>=0A<div>&gt; - 	static struct module_version_att=
ribute ___modver_attr =3D {	\</div>=0A<div>&gt; -@@ -255,7 +258,7 @@ exter=
n typeof(name) __mod_##type##__##na</div>=0A<div>&gt; - /* Optional firmwa=
re file (or files) needed by the module</div>=0A<div>&gt; -&nbsp; * format=
 is simply firmware file name.&nbsp; Multiple firmware</div>=0A<div>&gt; -=
&nbsp; * files require multiple MODULE_FIRMWARE() specifiers */</div>=0A<d=
iv>&gt; --#define MODULE_FIRMWARE(_firmware) MODULE_INFO(firmware, _firmwa=
re)</div>=0A<div>&gt; -+#define MODULE_FIRMWARE(_firmware) MODULE_INFO_STR=
IP(firmware, _firmware)</div>=0A<div>&gt; - </div>=0A<div>&gt; - struct no=
tifier_block;</div>=0A<div>&gt; - </div>=0A<div>&gt; ---- a/include/linux/=
moduleparam.h</div>=0A<div>&gt; -+++ b/include/linux/moduleparam.h</div>=
=0A<div>&gt; -@@ -17,6 +17,16 @@</div>=0A<div>&gt; - /* Chosen so that str=
ucts with an unsigned long line up. */</div>=0A<div>&gt; - #define MAX_PAR=
AM_PREFIX_LEN (64 - sizeof(unsigned long))</div>=0A<div>&gt; - </div>=0A<d=
iv>&gt; -+/* This struct is here for syntactic coherency, it is not used *=
/</div>=0A<div>&gt; -+#define __MODULE_INFO_DISABLED(name)					&nbsp; \</d=
iv>=0A<div>&gt; -+&nbsp; struct __UNIQUE_ID(name) {}</div>=0A<div>&gt; -+<=
/div>=0A<div>&gt; -+#ifdef CONFIG_MODULE_STRIPPED</div>=0A<div>&gt; -+#def=
ine __MODULE_INFO_STRIP(tag, name, info) __MODULE_INFO_DISABLED(name)</div=
>=0A<div>&gt; -+#else</div>=0A<div>&gt; -+#define __MODULE_INFO_STRIP(tag,=
 name, info) __MODULE_INFO(tag, name, info)</div>=0A<div>&gt; -+#endif</di=
v>=0A<div>&gt; -+</div>=0A<div>&gt; - #ifdef MODULE</div>=0A<div>&gt; - #d=
efine __MODULE_INFO(tag, name, info)					&nbsp; \</div>=0A<div>&gt; - stat=
ic const char __UNIQUE_ID(name)[]					&nbsp; \</div>=0A<div>&gt; -@@ -24,8=
 +34,7 @@ static const char __UNIQUE_ID(name)[]</div>=0A<div>&gt; -&nbsp;&=
nbsp; =3D __stringify(tag) "=3D" info</div>=0A<div>&gt; - #else&nbsp; /* !=
MODULE */</div>=0A<div>&gt; - /* This struct is here for syntactic coheren=
cy, it is not used */</div>=0A<div>&gt; --#define __MODULE_INFO(tag, name,=
 info)					&nbsp; \</div>=0A<div>&gt; --&nbsp; struct __UNIQUE_ID(name) {}=
</div>=0A<div>&gt; -+#define __MODULE_INFO(tag, name, info) __MODULE_INFO_=
DISABLED(name)</div>=0A<div>&gt; - #endif</div>=0A<div>&gt; - #define __MO=
DULE_PARM_TYPE(name, _type)					&nbsp; \</div>=0A<div>&gt; -&nbsp;&nbsp; _=
_MODULE_INFO(parmtype, name##type, #name ":" _type)</div>=0A<div>&gt; -@@ =
-33,7 +42,7 @@ static const char __UNIQUE_ID(name)[]</div>=0A<div>&gt; - /=
* One for each parameter, describing how to use it.&nbsp; Some files do</d=
iv>=0A<div>&gt; -&nbsp;&nbsp;&nbsp; multiple of these per line, so can't j=
ust use MODULE_INFO. */</div>=0A<div>&gt; - #define MODULE_PARM_DESC(_parm=
, desc) \</div>=0A<div>&gt; --	__MODULE_INFO(parm, _parm, #_parm ":" desc)=
</div>=0A<div>&gt; -+	__MODULE_INFO_STRIP(parm, _parm, #_parm ":" desc)</d=
iv>=0A<div>&gt; - </div>=0A<div>&gt; - struct kernel_param;</div>=0A<div>&=
gt; - </div>=0A<div>&gt; +diff --git a/init/Kconfig b/init/Kconfig</div>=
=0A<div>&gt; +index 4607532..cba0f81 100644</div>=0A<div>&gt;&nbsp; --- a/=
init/Kconfig</div>=0A<div>&gt;&nbsp; +++ b/init/Kconfig</div>=0A<div>&gt; =
-@@ -1903,6 +1903,13 @@ config TRIM_UNUSED_KSYMS</div>=0A<div>&gt; +@@ -18=
83,6 +1883,13 @@ config TRIM_UNUSED_KSYMS</div>=0A<div>&gt;&nbsp;&nbsp; </=
div>=0A<div>&gt;&nbsp;&nbsp; 	&nbsp; If unsure, or if you need to build ou=
t-of-tree modules, say N.</div>=0A<div>&gt;&nbsp;&nbsp; </div>=0A<div>&gt;=
 @@ -112,97 +16,25 @@ Signed-off-by: Felix Fietkau &lt;nbd@nbd.name&gt;</d=
iv>=0A<div>&gt;&nbsp;&nbsp; endif # MODULES</div>=0A<div>&gt;&nbsp;&nbsp; =
</div>=0A<div>&gt;&nbsp;&nbsp; config MODULES_TREE_LOOKUP</div>=0A<div>&gt=
; ---- a/kernel/module.c</div>=0A<div>&gt; -+++ b/kernel/module.c</div>=0A=
<div>&gt; -@@ -3020,9 +3020,11 @@ static struct module *setup_load_info(st=
</div>=0A<div>&gt; - </div>=0A<div>&gt; - static int check_modinfo(struct =
module *mod, struct load_info *info, int flags)</div>=0A<div>&gt; - {</div=
>=0A<div>&gt; --	const char *modmagic =3D get_modinfo(info, "vermagic");</=
div>=0A<div>&gt; - 	int err;</div>=0A<div>&gt; - </div>=0A<div>&gt; -+#ifn=
def CONFIG_MODULE_STRIPPED</div>=0A<div>&gt; -+	const char *modmagic =3D g=
et_modinfo(info, "vermagic");</div>=0A<div>&gt; +diff --git a/scripts/Kbui=
ld.include b/scripts/Kbuild.include</div>=0A<div>&gt; +index a33fa1a..34b3=
4e0 100644</div>=0A<div>&gt; +--- a/scripts/Kbuild.include</div>=0A<div>&g=
t; ++++ b/scripts/Kbuild.include</div>=0A<div>&gt; +@@ -260,11 +260,16 @@ =
make-cmd =3D $(call escsq,$(subst $(pound),$$(pound),$(subst $$,$$$$,$(cmd=
_$(1))))</div>=0A<div>&gt; + # PHONY targets skipped in both cases.</div>=
=0A<div>&gt; + any-prereq =3D $(filter-out $(PHONY),$?) $(filter-out $(PHO=
NY) $(wildcard $^),$^)</div>=0A<div>&gt; + </div>=0A<div>&gt; ++ifeq ($(CO=
NFIG_MODULE_STRIPPED),y)</div>=0A<div>&gt; ++	module-strip =3D s=3D$@; if =
[ "$${s//*.}" =3D "ko" ];then $(STRIP) -g -S -d --strip-unneeded $@ ;fi</d=
iv>=0A<div>&gt; ++endif</div>=0A<div>&gt;&nbsp; +</div>=0A<div>&gt; - 	if =
(flags &amp; MODULE_INIT_IGNORE_VERMAGIC)</div>=0A<div>&gt; - 		modmagic =
=3D NULL;</div>=0A<div>&gt; - </div>=0A<div>&gt; -@@ -3043,6 +3045,7 @@ st=
atic int check_modinfo(struct module *</div>=0A<div>&gt; - 				mod-&gt;nam=
e);</div>=0A<div>&gt; - 		add_taint_module(mod, TAINT_OOT_MODULE, LOCKDEP_=
STILL_OK);</div>=0A<div>&gt; - 	}</div>=0A<div>&gt; -+#endif</div>=0A<div>=
&gt; - </div>=0A<div>&gt; - 	check_modinfo_retpoline(mod, info);</div>=0A<=
div>&gt; - </div>=0A<div>&gt; ---- a/scripts/mod/modpost.c</div>=0A<div>&g=
t; -+++ b/scripts/mod/modpost.c</div>=0A<div>&gt; -@@ -1984,7 +1984,9 @@ s=
tatic void read_symbols(char *modname)</div>=0A<div>&gt; - 		symname =3D r=
emove_dot(info.strtab + sym-&gt;st_name);</div>=0A<div>&gt; - </div>=0A<di=
v>&gt; - 		handle_modversions(mod, &amp;info, sym, symname);</div>=0A<div>=
&gt; -+#ifndef CONFIG_MODULE_STRIPPED</div>=0A<div>&gt; - 		handle_moddevt=
able(mod, &amp;info, sym, symname);</div>=0A<div>&gt; -+#endif</div>=0A<di=
v>&gt; - 	}</div>=0A<div>&gt; - 	if (!is_vmlinux(modname) ||</div>=0A<div>=
&gt; - 	&nbsp;&nbsp;&nbsp;&nbsp; (is_vmlinux(modname) &amp;&amp; vmlinux_s=
ection_warnings))</div>=0A<div>&gt; -@@ -2145,8 +2147,10 @@ static void ad=
d_header(struct buffer *b,</div>=0A<div>&gt; - 	buf_printf(b, "#include &l=
t;linux/vermagic.h&gt;\n");</div>=0A<div>&gt; - 	buf_printf(b, "#include &=
lt;linux/compiler.h&gt;\n");</div>=0A<div>&gt; - 	buf_printf(b, "\n");</di=
v>=0A<div>&gt; -+#ifndef CONFIG_MODULE_STRIPPED</div>=0A<div>&gt; - 	buf_p=
rintf(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");</div>=0A<div>&gt; -=
 	buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");</div>=0A<div>&gt;=
 -+#endif</div>=0A<div>&gt; - 	buf_printf(b, "\n");</div>=0A<div>&gt; - 	b=
uf_printf(b, "__visible struct module __this_module\n");</div>=0A<div>&gt;=
 - 	buf_printf(b, "__attribute__((section(\".gnu.linkonce.this_module\")))=
 =3D {\n");</div>=0A<div>&gt; -@@ -2163,8 +2167,10 @@ static void add_head=
er(struct buffer *b,</div>=0A<div>&gt; - </div>=0A<div>&gt; - static void =
add_intree_flag(struct buffer *b, int is_intree)</div>=0A<div>&gt; - {</di=
v>=0A<div>&gt; -+#ifndef CONFIG_MODULE_STRIPPED</div>=0A<div>&gt; - 	if (i=
s_intree)</div>=0A<div>&gt; - 		buf_printf(b, "\nMODULE_INFO(intree, \"Y\"=
);\n");</div>=0A<div>&gt; -+#endif</div>=0A<div>&gt; - }</div>=0A<div>&gt;=
 - </div>=0A<div>&gt; - /* Cannot check for assembler */</div>=0A<div>&gt;=
 -@@ -2177,10 +2183,12 @@ static void add_retpoline(struct buffer</div>=0A=
<div>&gt; - </div>=0A<div>&gt; - static void add_staging_flag(struct buffe=
r *b, const char *name)</div>=0A<div>&gt; - {</div>=0A<div>&gt; -+#ifndef =
CONFIG_MODULE_STRIPPED</div>=0A<div>&gt; - 	static const char *staging_dir=
 =3D "drivers/staging";</div>=0A<div>&gt; - </div>=0A<div>&gt; - 	if (strn=
cmp(staging_dir, name, strlen(staging_dir)) =3D=3D 0)</div>=0A<div>&gt; - =
		buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");</div>=0A<div>&gt; -+#=
endif</div>=0A<div>&gt; - }</div>=0A<div>&gt; - </div>=0A<div>&gt; - /**</=
div>=0A<div>&gt; -@@ -2279,11 +2287,13 @@ static void add_depends(struct b=
uffer *b</div>=0A<div>&gt; - </div>=0A<div>&gt; - static void add_srcversi=
on(struct buffer *b, struct module *mod)</div>=0A<div>&gt; - {</div>=0A<di=
v>&gt; -+#ifndef CONFIG_MODULE_STRIPPED</div>=0A<div>&gt; - 	if (mod-&gt;s=
rcversion[0]) {</div>=0A<div>&gt; - 		buf_printf(b, "\n");</div>=0A<div>&g=
t; - 		buf_printf(b, "MODULE_INFO(srcversion, \"%s\");\n",</div>=0A<div>&g=
t; - 			&nbsp;&nbsp; mod-&gt;srcversion);</div>=0A<div>&gt; - 	}</div>=0A<=
div>&gt; -+#endif</div>=0A<div>&gt; - }</div>=0A<div>&gt; - </div>=0A<div>=
&gt; - static void write_if_changed(struct buffer *b, const char *fname)</=
div>=0A<div>&gt; -@@ -2520,7 +2530,9 @@ int main(int argc, char **argv)</d=
iv>=0A<div>&gt; - 		add_staging_flag(&amp;buf, mod-&gt;name);</div>=0A<div=
>&gt; - 		err |=3D add_versions(&amp;buf, mod);</div>=0A<div>&gt; - 		add_=
depends(&amp;buf, mod, modules);</div>=0A<div>&gt; -+#ifndef CONFIG_MODULE=
_STRIPPED</div>=0A<div>&gt; - 		add_moddevtable(&amp;buf, mod);</div>=0A<d=
iv>&gt; -+#endif</div>=0A<div>&gt; - 		add_srcversion(&amp;buf, mod);</div=
>=0A<div>&gt; - </div>=0A<div>&gt; - 		sprintf(fname, "%s.mod.c", mod-&gt;=
name);</div>=0A<div>&gt; + # Execute command if command has changed or pre=
requisite(s) are updated.</div>=0A<div>&gt; + if_changed =3D $(if $(strip =
$(any-prereq) $(arg-check)),&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; \</div>=0A<div>&gt; + 	@set -e;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \</div>=0A<div>&gt; + 	$(echo-cmd) $(cm=
d_$(1));&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \</div>=0A<div>&gt; +-	=
printf '%s\n' 'cmd_$@ :=3D $(make-cmd)' &gt; $(dot-target).cmd, @:)</div>=
=0A<div>&gt; ++	printf '%s\n' 'cmd_$@ :=3D $(make-cmd)' &gt; $(dot-target)=
.cmd, @:);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \</div>=0A<div>&gt; ++	$(module-s=
trip)</div>=0A<div>&gt; + </div>=0A<div>&gt; + # Execute the command and a=
lso postprocess generated .d dependencies file.</div>=0A<div>&gt; + if_cha=
nged_dep =3D $(if $(strip $(any-prereq) $(arg-check) ),&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; \</div>=0A<div>&gt; </div>=0A<div>&nbsp;</div>=0A<div>&nbsp;</di=
v>=0A</div></blockquote>=0A</body></html>
------=_001_NextPart078488205765_=------







--===============1097696844700058541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1097696844700058541==--






