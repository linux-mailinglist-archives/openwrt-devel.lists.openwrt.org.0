Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F97835CE4
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 14:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0F5Zv2p+4vCOe04LRu4QRDzCnxhuX+Y2ZFvb2/i7czw=; b=uEomowcbc7I+R/h6CQ2mOk9TR
	CEGhHHLeARNOy641aEy8Tj570JvtybPEN6zht03qDV8il+8JIaQwdFP/xtmvAvoPVIGIR2HgzAnfQ
	hw3u3xw0wfNKqTDMmYLSQjsXR4sXLm3+CUSoEERUV8Ds8kG6bro7F6FpB407ntYvcQs/tLFkd1z01
	PXyp6KvQ8HNXjnKwgMUoHXTgleqWiU4Igiub/ezORWAlJm7FN4DLzUlhMyyaRNSaQHNoxMlSDCe1t
	HS2GvCaN+TMidp8tcwOrdN4MRgJ4FGdj5GT6rResLgvw1MKuYqYpfs/9F8/VA1bU6yBlHdl+nWzPf
	ooK1sbO6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYV5A-0000Z9-JU; Wed, 05 Jun 2019 12:31:56 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYV4u-0000Rb-LX
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 12:31:42 +0000
Received: from p5dcfb869.dip0.t-ipconnect.de ([93.207.184.105]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hYV4r-0002zx-96; Wed, 05 Jun 2019 14:31:37 +0200
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>,
 openwrt-devel@lists.openwrt.org
References: <87pnnskzlt.fsf@miraculix.mork.no>
 <20190605121911.3324-1-bjorn@mork.no>
From: John Crispin <john@phrozen.org>
Message-ID: <3db4da41-39b1-f2ae-94f7-ae2503225ce2@phrozen.org>
Date: Wed, 5 Jun 2019 14:31:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605121911.3324-1-bjorn@mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_053140_856073_7AE1D77E 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] scripts/feeds: add src-include method
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDA1LzA2LzIwMTkgMTQ6MTksIEJqw7hybiBNb3JrIHdyb3RlOgo+IFRoZSBzcmMtaW5jbHVk
ZSBtZXRob2QgYWxsb3dzIHJlY3Vyc2l2ZSBpbmNsdXNpb24gb2YgZmVlZHMuY29uZiBzbmlwcGV0
cy4KPgo+IFRoaXMgY2FuIGZvciBleGFtcGxlIGJlIHVzZWQgZm9yIGFkZGluZyBzdGF0aWMgbG9j
YWwgZmVlZHMgdG8KPiBmZWVkcy5jb25mLmRlZmF1bHQgd2l0aG91dCBldmVyIGhhdmluZyB0byB1
cGRhdGUgdGhlIGxvY2FsIGZlZWRzLmNvbmY6Cj4KPiAgIHNyYy1pbmNsdWRlIGRlZmF1bHRzIGZl
ZWRzLmNvbmYuZGVmYXVsdAo+ICAgc3JjLWxpbmsgY3VzdG9tIC91c3IvbG9jYWwvc3JjL2xlZGUv
Y3VzdG9tCj4KPiBTaWduZWQtb2ZmLWJ5OiBCasO4cm4gTW9yayA8Ympvcm5AbW9yay5ubz4KPiAt
LS0KPgo+IEl0IHdvdWxkIG9mIGNvdXJzZSBiZSBuaWNlIG9mIG1lIGlmIEkgaGFkIHRlc3RlZCBt
eSBwYXRjaGVzLCBldmVuCj4gaWYgdGhleSBhcmUgb25seSBtZWFudCBmb3IgZGlzY3Vzc2lvbi4K
Pgo+IFRoaXMgdmVyc2lvbiBhY3R1YWxseSB3b3Jrcy4gIENoYW5nZXMgaW4gdjI6Cj4gICAtIHVz
ZSBhIHZhcmlhYmxlIGZvciB0aGUgZmlsZSBoYW5kbGUgc28gd2UgY2FuIG9wZW4gZmlsZXMgcmVj
dXJzaXZlbHkKPiAgIC0gbWF0Y2ggb24gdGhlIHJlYWwgJ3NyYy1pbmNsdWRlJyBrZXl3b3JkCj4K
Pgo+IEJqw7hybgoKCkhpIEJqw7hybgoKdGhhdCB3b3VsZCBhZ2FpbiBpbnZvbHZlIGNhcnJ5aW5n
IGV4dHJhIGZpbGVzIGFyb3VuZCwgd2hpY2ggaXMgd2hhdCBJIGFtIAp0cnlpbmcgdG8gYXZvaWQK
CiDCoMKgwqAgSm9obgoKCj4KPiAgIHNjcmlwdHMvZmVlZHMgfCAzNyArKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygr
KSwgMTEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvc2NyaXB0cy9mZWVkcyBiL3Njcmlw
dHMvZmVlZHMKPiBpbmRleCAzMDRlZjZjYmFmZDEuLmE0ZGZkOWUyNjBhOCAxMDA3NTUKPiAtLS0g
YS9zY3JpcHRzL2ZlZWRzCj4gKysrIGIvc2NyaXB0cy9mZWVkcwo+IEBAIC00MSwzNCArNDEsNDkg
QEAgbXkgJGZlZWRfc3JjID0ge307Cj4gICBteSAkZmVlZF90YXJnZXQgPSB7fTsKPiAgIG15ICRm
ZWVkX3ZwYWNrYWdlID0ge307Cj4gICAKPiAtc3ViIHBhcnNlX2NvbmZpZygpIHsKPiArc3ViIHBh
cnNlX2ZpbGUoJCQpOwo+ICsKPiArc3ViIHBhcnNlX2ZpbGUoJCQpIHsKPiArCW15ICgkZm5hbWUs
ICRuYW1lKSA9IEBfOwo+ICAgCW15ICRsaW5lID0gMDsKPiAtCW15ICVuYW1lOwo+ICsJbXkgJGZo
Owo+ICAgCj4gLQlvcGVuIEZFRURTLCAiZmVlZHMuY29uZiIgb3IKPiAtCQlvcGVuIEZFRURTLCAi
ZmVlZHMuY29uZi5kZWZhdWx0IiBvcgo+IC0JCWRpZSAiVW5hYmxlIHRvIG9wZW4gZmVlZHMgY29u
ZmlndXJhdGlvbiI7Cj4gLQl3aGlsZSAoPEZFRURTPikgewo+ICsJb3BlbiAkZmgsICRmbmFtZSBv
ciByZXR1cm4gdW5kZWY7Cj4gKwl3aGlsZSAoPCRmaD4pIHsKPiAgIAkJY2hvbXA7Cj4gICAJCXMv
Iy4rJC8vOwo+ICsJCSRsaW5lKys7Cj4gICAJCW5leHQgdW5sZXNzIC9cUy87Cj4gICAJCW15IEBs
aW5lID0gc3BsaXQgL1xzKy8sICRfLCAzOwo+ICAgCQlteSBAc3JjOwo+IC0JCSRsaW5lKys7Cj4g
ICAKPiAgIAkJbXkgJHZhbGlkID0gMTsKPiAgIAkJJGxpbmVbMF0gPX4gL15zcmMtW1x3LV0rJC8g
b3IgJHZhbGlkID0gMDsKPiAgIAkJJGxpbmVbMV0gPX4gL15cdyskLyBvciAkdmFsaWQgPSAwOwo+
ICAgCQlAc3JjID0gc3BsaXQgL1xzKy8sICgkbGluZVsyXSBvciAnJyk7Cj4gICAJCUBzcmMgPSAo
JycpIGlmIEBzcmMgPT0gMDsKPiAtCQkkdmFsaWQgb3IgZGllICJTeW50YXggZXJyb3IgaW4gZmVl
ZHMuY29uZiwgbGluZTogJGxpbmVcbiI7Cj4gKwkJJHZhbGlkIG9yIGRpZSAiU3ludGF4IGVycm9y
IGluICRmbmFtZSwgbGluZTogJGxpbmVcbiI7Cj4gICAKPiAtCQkkbmFtZXskbGluZVsxXX0gYW5k
IGRpZSAiRHVwbGljYXRlIGZlZWQgbmFtZSAnJGxpbmVbMV0nLCBsaW5lOiAkbGluZVxuIjsKPiAt
CQkkbmFtZXskbGluZVsxXX0gPSAxOwo+ICsJCSRuYW1lLT57JGxpbmVbMV19IGFuZCBkaWUgIkR1
cGxpY2F0ZSBmZWVkIG5hbWUgJyRsaW5lWzFdJyBpbiAnJGZuYW1lJyBsaW5lOiAkbGluZVxuIjsK
PiArCQkkbmFtZS0+eyRsaW5lWzFdfSA9IDE7Cj4gKwo+ICsJCWlmICgkbGluZVswXSBlcSAic3Jj
LWluY2x1ZGUiKSB7Cj4gKwkJCXBhcnNlX2ZpbGUoJGxpbmVbMl0sICRuYW1lKSBvcgo+ICsJCQkg
ICAgZGllICJVbmFibGUgdG8gb3BlbiBpbmNsdWRlZCBmaWxlICckbGluZVsyXSciOwo+ICsJCQlu
ZXh0Owo+ICsJCX0KPiAgIAo+ICAgCQlwdXNoIEBmZWVkcywgWyRsaW5lWzBdLCAkbGluZVsxXSwg
XEBzcmNdOwo+ICAgCX0KPiAtCWNsb3NlIEZFRURTOwo+ICsJY2xvc2UgJGZoOwo+ICsJcmV0dXJu
IDE7Cj4gK30KPiArCj4gK3N1YiBwYXJzZV9jb25maWcoKSB7Cj4gKwlteSAlbmFtZTsKPiArCXBh
cnNlX2ZpbGUoImZlZWRzLmNvbmYiLCBcJW5hbWUpIG9yCj4gKwkgICAgcGFyc2VfZmlsZSgiZmVl
ZHMuY29uZi5kZWZhdWx0IiwgXCVuYW1lKSAgb3IKPiArCSAgICBkaWUgIlVuYWJsZSB0byBvcGVu
IGZlZWRzIGNvbmZpZ3VyYXRpb24iOwo+ICAgfQo+ICAgCj4gICBzdWIgdXBkYXRlX2xvY2F0aW9u
KCQkKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
