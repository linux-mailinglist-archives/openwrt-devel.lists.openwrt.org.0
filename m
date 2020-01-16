Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACE513D690
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 10:16:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UKlkZAfl1Qwx/gYIculFuBCtz6kK+CIkYT55jXdKFkI=; b=t0L/09AeFe30Zs
	RNOdr+nqjT8tHsXTyF9eLYkbu3Gdh3o7UQebKCHsA5ZZNq8kXW+8Xky4utkNhxi+F51lwq2LB596T
	cB3j7GocDQ50pU5YCfB36KU4sUnXBbu8TtTkuTeZ1aYEQtm4+tH70Do8b/7inIx6ECP+v7FW5YYEN
	22U+BGxbndey1c5CzcfN23SzBZCLRW7/TJWggvqPZanLn2HFNnVJImbMnaAybynHX7OQTd01t2DMl
	91PmKeFj86v3+GIL9fqETVnJ7KC1tOEGNIjOUMcqaEcwjfDorlp4iUP9xY67vbcxW2k/i/Ayu6Jbj
	h1JWI2xLepQDQ1qvZkeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1Gg-0002jN-VX; Thu, 16 Jan 2020 09:16:47 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1GL-0002av-4o
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 09:16:30 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1is1GJ-0003E0-BK; Thu, 16 Jan 2020 10:16:23 +0100
Date: Thu, 16 Jan 2020 11:16:18 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200116091618.GB1404@makrotopia.org>
References: <20200116091322.GA323825@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116091322.GA323825@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_011625_180213_4E71F3F0 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] instance: fix pidfile attribute
 double free crash
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgKGFnYWluKSwKClNvIHRoYXQncyB3aGF0IGhhcHBlbmRzIHdoZW4geW91IHVzZSBnaXQgZm9y
bWF0LXBhdGNoIHdpdGhvdXQgdGhvdWdodC4KVGhpcyBtZXNzYWdlIGNhbWUgZnJvbSBtZSwganVz
dCBoYWQgUGV0cidzIEZyb206IGJlY2F1c2UgdGhlIG9yaWdpbmFsCnBhdGNoIEkgcGlja2VkIGlu
dG8gbXkgZ2l0IHRyZWUgY2FtZSBmcm9tIGhpbS4KU29ycnkgZm9yIHRoYXQuLi4KCkNoZWVycwoK
RGFuaWVsCgpPbiBUaHUsIEphbiAxNiwgMjAyMCBhdCAxMToxMzoyMkFNICswMjAwLCBQZXRyIMWg
dGV0aWFyIHdyb3RlOgo+IEhpIFBldHIsCj4gSGkgRmVsaXgsCj4gCj4gc2VlbXMgbGlrZSBtb3Jl
IHRoaW5ncyB3ZXJlIHdyb25nIHdpdGggaW5zdGFuY2VfY29uZmlnX21vdmUoKSwgc29tZQo+IG9m
IHRoZSBqYWlsIGF0dHJpYnV0ZXMgd2VyZSBtaXNzaW5nIGFzIHdlbGwuLi4KPiAKPiAtLS0KPiBD
b21taXQgYTVhZjMzY2U5YTE2ICgiaW5zdGFuY2U6IHN0cmR1cCBzdHJpbmcgYXR0cmlidXRlcyIp
IGhhcwo+IGludHJvZHVjZWQgZHVwbGljYXRpb24gb2YgdmFyaW91cyBzdHJpbmcgYXR0cmlidXRl
cyBpbiBvcmRlciB0byBmaXgKPiB1c2UtYWZ0ZXItZnJlZSwgYnV0IG1pc3NlZCBoYW5kbGluZyBv
ZiBgcGlkZmlsZWAgYW5kIGBzZWNjb21wYCBhdHRyaWJ1dGUKPiBjYXNlcyBpbiBpbnN0YW5jZV9j
b25maWdfbW92ZSgpIHdoZXJlIHRoZSBuZXcgdmFsdWUgb2YgYHBpZGZpbGVgIG9yCj4gYHNlY2Nv
bXBgIGlzIGJlaW5nIGNvcGllZC9hc3NpZ25lZC4gU291cmNlIG9mIHRoaXMgdmFsdWVzIGlzIHRo
ZW4KPiBmcmVlKClkIGluIHN1YnNlcXVlbnQgY2FsbCB0byBpbnN0YW5jZV9mcmVlKCkgYW5kIHRo
ZW4gYWdhaW4gZm9yIDJuZAo+IHRpbWUgZHVyaW5nIHRoZSBzZXJ2aWNlIHN0b3AgY29tbWFuZCBo
YW5kbGluZywgbGVhZGluZyB0byBkb3VibGUgZnJlZQo+IGNyYXNoOgo+IAo+ICAjMCAgdW5tYXBf
Y2h1bmsgYXQgc3JjL21hbGxvYy9tYWxsb2MuYzo1MTUKPiAgIzEgIGZyZWUgYXQgc3JjL21hbGxv
Yy9tYWxsb2MuYzo1MjYKPiAgIzIgIGluc3RhbmNlX2ZyZWUgKGluPTB4ZDVlMzAwKSBhdCBpbnN0
YW5jZS5jOjExMDAKPiAgIzMgIGluc3RhbmNlX2RlbGV0ZSAoaW49MHhkNWUzMDApIGF0IGluc3Rh
bmNlLmM6NTU5Cj4gICM0ICBpbnN0YW5jZV9zdG9wIChpbj0weGQ1ZTMwMCwgaGFsdD10cnVlKSBh
dCBpbnN0YW5jZS5jOjYxMQo+IAo+IFJlZjogRlMjMjcyMwo+IEZpeGVzOiBhNWFmMzNjZTlhMTYg
KCJpbnN0YW5jZTogc3RyZHVwIHN0cmluZyBhdHRyaWJ1dGVzIikKPiBTaWduZWQtb2ZmLWJ5OiBQ
ZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBHb2xs
ZSA8ZGFuaWVsQG1ha3JvdG9waWEub3JnPgo+IC0tLQo+ICBzZXJ2aWNlL2luc3RhbmNlLmMgfCAy
NiArKysrKysrKysrKysrKysrKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmljZS9pbnN0YW5j
ZS5jIGIvc2VydmljZS9pbnN0YW5jZS5jCj4gaW5kZXggY2U1YjBiZi4uYzJlYmM3NiAxMDA2NDQK
PiAtLS0gYS9zZXJ2aWNlL2luc3RhbmNlLmMKPiArKysgYi9zZXJ2aWNlL2luc3RhbmNlLmMKPiBA
QCAtMTA0MCwxNyArMTA0MCwzOSBAQCBpbnN0YW5jZV9jb25maWdfbW92ZShzdHJ1Y3Qgc2Vydmlj
ZV9pbnN0YW5jZSAqaW4sIHN0cnVjdCBzZXJ2aWNlX2luc3RhbmNlICppbl9zcgo+ICAJYmxvYm1z
Z19saXN0X21vdmUoJmluLT5qYWlsLm1vdW50LCAmaW5fc3JjLT5qYWlsLm1vdW50KTsKPiAgCWlu
LT50cmlnZ2VyID0gaW5fc3JjLT50cmlnZ2VyOwo+ICAJaW4tPmNvbW1hbmQgPSBpbl9zcmMtPmNv
bW1hbmQ7Cj4gLQlpbi0+cGlkZmlsZSA9IGluX3NyYy0+cGlkZmlsZTsKPiAgCWluLT5yZXNwYXdu
ID0gaW5fc3JjLT5yZXNwYXduOwo+ICAJaW4tPnJlc3Bhd25fcmV0cnkgPSBpbl9zcmMtPnJlc3Bh
d25fcmV0cnk7Cj4gIAlpbi0+cmVzcGF3bl90aHJlc2hvbGQgPSBpbl9zcmMtPnJlc3Bhd25fdGhy
ZXNob2xkOwo+ICAJaW4tPnJlc3Bhd25fdGltZW91dCA9IGluX3NyYy0+cmVzcGF3bl90aW1lb3V0
Owo+ICAJaW4tPm5hbWUgPSBpbl9zcmMtPm5hbWU7Cj4gIAlpbi0+dHJhY2UgPSBpbl9zcmMtPnRy
YWNlOwo+IC0JaW4tPnNlY2NvbXAgPSBpbl9zcmMtPnNlY2NvbXA7Cj4gIAlpbi0+bm9kZS5hdmwu
a2V5ID0gaW5fc3JjLT5ub2RlLmF2bC5rZXk7Cj4gIAlpbi0+c3lzbG9nX2ZhY2lsaXR5ID0gaW5f
c3JjLT5zeXNsb2dfZmFjaWxpdHk7Cj4gIAo+ICsJZnJlZShpbi0+cGlkZmlsZSk7Cj4gKwlpZiAo
aW5fc3JjLT5waWRmaWxlKQo+ICsJCWluLT5waWRmaWxlID0gc3RyZHVwKGluX3NyYy0+cGlkZmls
ZSk7Cj4gKwllbHNlCj4gKwkJaW4tPnBpZGZpbGUgPSBOVUxMOwo+ICsKPiArCWZyZWUoaW4tPnNl
Y2NvbXApOwo+ICsJaWYgKGluX3NyYy0+c2VjY29tcCkKPiArCQlpbi0+c2VjY29tcCA9IHN0cmR1
cChpbl9zcmMtPnNlY2NvbXApOwo+ICsJZWxzZQo+ICsJCWluLT5zZWNjb21wID0gTlVMTDsKPiAr
Cj4gKwlmcmVlKGluLT5qYWlsLm5hbWUpOwo+ICsJaWYgKGluX3NyYy0+amFpbC5uYW1lKQo+ICsJ
CWluLT5qYWlsLm5hbWUgPSBzdHJkdXAoaW5fc3JjLT5qYWlsLm5hbWUpOwo+ICsJZWxzZQo+ICsJ
CWluLT5qYWlsLm5hbWUgPSBOVUxMOwo+ICsKPiArCWZyZWUoaW4tPmphaWwuaG9zdG5hbWUpOwo+
ICsJaWYgKGluX3NyYy0+amFpbC5ob3N0bmFtZSkKPiArCQlpbi0+amFpbC5ob3N0bmFtZSA9IHN0
cmR1cChpbl9zcmMtPmphaWwuaG9zdG5hbWUpOwo+ICsJZWxzZQo+ICsJCWluLT5qYWlsLmhvc3Ru
YW1lID0gTlVMTDsKPiArCj4gIAlmcmVlKGluLT5jb25maWcpOwo+ICAJaW4tPmNvbmZpZyA9IGlu
X3NyYy0+Y29uZmlnOwo+ICAJaW5fc3JjLT5jb25maWcgPSBOVUxMOwo+IC0tIAo+IDIuMjQuMQo+
IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
