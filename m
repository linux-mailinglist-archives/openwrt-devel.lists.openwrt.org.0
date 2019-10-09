Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69472D0F60
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 14:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JPjEY1T1BLKFPLKqSIBMlnMRZQl/VBGyXd85UtumYOg=; b=JzZB3addJmR76m19K/tII1f0h
	mSdcyIa1j59kfjHni6A8p1GG34tMEngHjb18E7pgIksRSNb9Tr7zvfbvBuiM+UNKFi4kOjEuS5HR6
	Wty7XlPioqDrb5rTun2ZMc8xN/mrHm6HD/PC+K+XMhvBTIXyACrNk1uUhgo1QQ1gQBfZvsUHwxXKR
	acljAtBqdTW0bh3zRTOqc4rRgvdSYOtX4hWgbkmK4xXLLs4NVa85DTT88h6sDWaopv0FUPx40SwtY
	tWusOEhDpZB69n/S13mQrjXk+BrV74ExJT8mp06um5DQ1tNvwPmuk0T2JnMwwrpaRMldkSFYjk6fs
	JUWMQml9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIBZ8-0004pw-Cu; Wed, 09 Oct 2019 12:59:42 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIBZ1-0004oT-TB
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 12:59:37 +0000
Received: from p5dcfbc2a.dip0.t-ipconnect.de ([93.207.188.42]
 helo=[10.255.191.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iIBYx-0004jv-Hj; Wed, 09 Oct 2019 14:59:31 +0200
To: Alin Nastac <alin.nastac@gmail.com>, openwrt-devel@lists.openwrt.org
References: <1570624897-16993-1-git-send-email-alin.nastac@gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <f67728d2-88d6-433d-74f4-671ca22599d5@phrozen.org>
Date: Wed, 9 Oct 2019 14:59:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1570624897-16993-1-git-send-email-alin.nastac@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_055936_100826_960B4392 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: add a hook before mounting the
 overlay
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDA5LzEwLzIwMTkgMTQ6NDEsIEFsaW4gTmFzdGFjIHdyb3RlOgo+IFNjcmlwdHMgbG9jYXRl
ZCBpbiB0aGUgZGlyZWN0b3J5IC9saWIvbW91bnRfcm9vdCB3aWxsIGJlIGV4ZWN1dGVkCj4gYmVm
b3JlIG1vdW50aW5nIHRoZSBvdmVybGF5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQWxpbiBOYXN0YWMg
PGFsaW4ubmFzdGFjQGdtYWlsLmNvbT4KCkhpLAoKc2hvdWxkIGl0IG5vdCBiZSAvZXRjL21vdW50
X3Jvb3QuZC8gPyB3aGF0IGRvIHlvdSBuZWVkIHRoaXMgZm9yIGlmIEkgbWF5IAphc2sgPwoKZnVy
dGhlciBjb21tZW50cyBpbmxpbmUgLi4uCgogwqDCoMKgIEpvaG4KCgo+IC0tLQo+ICAgbGliZnN0
b29scy9ob29rLmggICAgfCA1MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiAgIGxpYmZzdG9vbHMvb3ZlcmxheS5jIHwgIDMgKystCj4gICAyIGZp
bGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBsaWJmc3Rvb2xzL2hvb2suaAo+Cj4gZGlmZiAtLWdpdCBhL2xpYmZzdG9vbHMv
aG9vay5oIGIvbGliZnN0b29scy9ob29rLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAuLjc2ZWU5ZDAKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvbGliZnN0b29scy9ob29r
LmgKPiBAQCAtMCwwICsxLDUxIEBACj4gKyNpZm5kZWYgX0hPT0tfSAo+ICsjZGVmaW5lIF9IT09L
X0gKPiArCj4gKyNpbmNsdWRlIDxzeXMvdHlwZXMuaD4KPiArI2luY2x1ZGUgPHN5cy93YWl0Lmg+
Cj4gKwo+ICtzdGF0aWMgaW5saW5lIGludCBob29rX2V4ZWN1dGUoY29uc3QgY2hhciAqcGF0aCkK
dGhpcyBzaG91bGQgbm90IGJlIGluIGEgaGVhZGVyIGZpbGUgbm9yIHNob3VsZCBpdCBiZSBpbmxp
bmUKPiArewo+ICsJRElSICpkaXI7Cj4gKwlzdHJ1Y3QgZGlyZW50ICpkZW50Owo+ICsJY2hhciBz
Y3JpcHRbMjU2XTsKPiArCXBpZF90IHBpZDsKPiArCj4gKwlVTE9HX0lORk8oImV4ZWN1dGluZyBz
Y3JpcHQgaW4gJXNcbiIsIHBhdGgpOwo+ICsKPiArCWlmICgoZGlyID0gb3BlbmRpcihwYXRoKSkg
PT0gTlVMTCkgewo+ICsJCVVMT0dfSU5GTygiY2Fubm90IG9wZW4gJXMgKCVzKVxuIiwgcGF0aCwg
c3RyZXJyb3IoZXJybm8pKTsKPiArCQlyZXR1cm4gMDsKPiArCX0KPiArCj4gKwl3aGlsZSAoKGRl
bnQgPSByZWFkZGlyKGRpcikpICE9IE5VTEwpIHsKPiArCQlzdHJ1Y3Qgc3RhdCBzdDsKPiArCQlp
bnQgd3N0YXR1czsKPiArCj4gKwkJc25wcmludGYoc2NyaXB0LCBzaXplb2Yoc2NyaXB0KSwgIiVz
LyVzIiwgcGF0aCwgZGVudC0+ZF9uYW1lKTsKPiArCQlpZiAoc3RhdChzY3JpcHQsICZzdCkpCj4g
KwkJCWNvbnRpbnVlOwo+ICsJCWlmICghU19JU1JFRyhzdC5zdF9tb2RlKSkKPiArCQkJY29udGlu
dWU7Cj4gKwkJVUxPR19JTkZPKCIlc1xuIiwgc2NyaXB0KTsKIMKgwqDCoCB5b3Ugc2hvdWxkIGNv
bnNpZGVyIHVzaW5nIHJ1bnF1ZXVlIEFQSSBoZXJlCj4gKwkJcGlkID0gZm9yaygpOwo+ICsJCWlm
ICghcGlkKSB7Cj4gKwkJCWNoYXIgKmNtZFtdID0ge3NjcmlwdCwgTlVMTH07Cj4gKwo+ICsJCQll
eGVjdnAoY21kWzBdLCBjbWQpOwo+ICsJCQlVTE9HX0VSUigiRmFpbGVkIHRvIGV4ZWN1dGUgJXNc
biIsIHNjcmlwdCk7Cj4gKwkJCWV4aXQoLTEpOwo+ICsJCX0KPiArCQlpZiAocGlkIDw9IDApIHsK
PiArCQkJVUxPR19JTkZPKCJGYWlsZWQgdG8gZm9yaygpIGZvciAlc1xuIiwgc2NyaXB0KTsKPiAr
CQkJY29udGludWU7Cj4gKwkJfQo+ICsJCXdhaXRwaWQocGlkLCAmd3N0YXR1cywgMCk7Cj4gKwl9
Cj4gKwo+ICsJY2xvc2VkaXIoZGlyKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArI2Vu
ZGlmCj4gZGlmZiAtLWdpdCBhL2xpYmZzdG9vbHMvb3ZlcmxheS5jIGIvbGliZnN0b29scy9vdmVy
bGF5LmMKPiBpbmRleCAxNDIxNGEzLi4xMGExNmI1IDEwMDY0NAo+IC0tLSBhL2xpYmZzdG9vbHMv
b3ZlcmxheS5jCj4gKysrIGIvbGliZnN0b29scy9vdmVybGF5LmMKPiBAQCAtMjksNiArMjksNyBA
QAo+ICAgCj4gICAjaW5jbHVkZSAibGliZnN0b29scy5oIgo+ICAgI2luY2x1ZGUgInZvbHVtZS5o
Igo+ICsjaW5jbHVkZSAiaG9vay5oIgo+ICAgCj4gICAjZGVmaW5lIFNXSVRDSF9KRkZTMiAiL3Rt
cC8uc3dpdGNoX2pmZnMyIgo+ICAgCj4gQEAgLTQzOSw3ICs0NDAsNyBAQCBpbnQgbW91bnRfb3Zl
cmxheShzdHJ1Y3Qgdm9sdW1lICp2KQo+ICAgCj4gICAJZnNfbmFtZSA9IG92ZXJsYXlfZnNfbmFt
ZSh2b2x1bWVfaWRlbnRpZnkodikpOwo+ICAgCVVMT0dfSU5GTygic3dpdGNoaW5nIHRvICVzIG92
ZXJsYXlcbiIsIGZzX25hbWUpOwo+IC0JaWYgKG1vdW50X21vdmUoIi90bXAiLCAiIiwgIi9vdmVy
bGF5IikgfHwgZm9waXZvdCgiL292ZXJsYXkiLCAiL3JvbSIpKSB7Cj4gKwlpZiAobW91bnRfbW92
ZSgiL3RtcCIsICIiLCAiL292ZXJsYXkiKSB8fCBob29rX2V4ZWN1dGUoIi9saWIvbW91bnRfcm9v
dCIpIHx8IGZvcGl2b3QoIi9vdmVybGF5IiwgIi9yb20iKSkgewo+ICAgCQlVTE9HX0VSUigic3dp
dGNoaW5nIHRvICVzIGZhaWxlZCAtIGZhbGxiYWNrIHRvIHJhbW92ZXJsYXlcbiIsIGZzX25hbWUp
Owo+ICAgCQlyZXR1cm4gcmFtb3ZlcmxheSgpOwo+ICAgCX0KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
