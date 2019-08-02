Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855778011C
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 21:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XfYSyFnm/XnOFNtL5w8asX8VAEDg0s+v5v+72WXAtYU=; b=e8ubYZfV5i4acdBlD65dodiW0
	CBUkiWN2OXdr/SW+adoKQFicEYYofzrmPkk+XQl9/N+B59kMXqKg/sCwJ+TlqC4Cy3mkUjWPmaf7Q
	1vezdijjgBAxz1h1L/I6oJGW08Wcl/hIvZCruyOggObZqzg20rU2oc5ru0Y6q6gQSsK8R5AZmGBwn
	9Y5bUiJjMLF/MElF86CoUbfVBH6kxSlHJUPn92rcbxW5H69EtAh1Ayzz2TQuFHTgXzx9lgiu72RzH
	4g5mbYVgX8sTVEKTTb2B5rP2YCyepChkqBedNDt7aL8P9efnmlI11hEQAxa98x7Gr+AeqsA8DgZTJ
	zD0FMA71A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htdPY-00034o-7U; Fri, 02 Aug 2019 19:40:20 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htdPP-0002kL-BS
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 19:40:13 +0000
Received: from pd95fd255.dip0.t-ipconnect.de ([217.95.210.85]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>) id 1htdPI-0000dV-M9
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 21:40:04 +0200
To: openwrt-devel@lists.openwrt.org
References: <20190723133717.20010-1-ynezz@true.cz>
 <8646063f-e4eb-f32f-381e-6fa2a847d0f8@hauke-m.de>
 <4d6009e6-090b-c513-aaa1-919dcd21a162@iki.fi>
 <539D9517-E258-4906-978F-99241CCF11C4@darbyshire-bryant.me.uk>
 <30819471-510c-d5f8-be64-4f4c1b1cbaf0@softart-ge.com>
From: John Crispin <john@phrozen.org>
Message-ID: <c1551aac-0f71-981d-ef01-d06e1e46fe9a@phrozen.org>
Date: Fri, 2 Aug 2019 21:40:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <30819471-510c-d5f8-be64-4f4c1b1cbaf0@softart-ge.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_124011_554886_402E31FF 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: make USE_PROCD=1 default
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

SGksCgppZ25vcmluZyB0aGUgcmFudGluZyBhbmQgcHV0dGluZ8KgIHRoZSBlbmxpZ2h0ZW5pbmcg
cGhpbGFudHJvcGhpYyAKY29tbWVudHMgYXNpZGUsIG9uIGEgcHVyZSB0ZWNobmljYWwgbGV2ZWws
IGJlaW5nIHRoZSBhdXRob3Igb2YgcHJvY2QsIEkgCmRvbnQgdGhpbmsgdGhpcyBpcyBhIGdvb2Qg
aWRlYS4gcHJvY2QgaXMgYW4gb3B0LWluIGZlYXR1cmUgZm9yIHRob3NlIAp0aGF0IHdhbnQgdG8g
dXNlIGl0LiB0aGVyZSBoYXMgbmV2ZXIgYmVlbiBhIHJlcXVpcmVtZW50IHRvIG1ha2UgaXQgCmJh
c2VsaW5lLiBVU0VfUFJPQ0Q9MSBpcyBvbmx5IGludGVuZGVkIGZvciB0aGUgb3dydCBzcGVjaWZp
YyBjb3JlIApzZXJ2aWNlcyB0aGF0IHdhbnQgdG8gbWFrZSB1c2Ugb2YgdGhlIGFkdmFuY2VkIGZl
YXR1cmVzLiBvd3J0IGlzIGEgbGludXggCnN5c3RlbSBhbmQgdGh1cyBzaG91bGQgYnkgZGVmYXVs
dCBiZSBhYmxlIHRvIHJ1biBTWVNWIGluaXQgc3R5bGUgcmMuZCAKc2NyaXB0cy4gYW55dGhpbmcg
ZWxzZSB3b3VsZCBiZSBhIHZlcnkgZGFyaW5nIHRoaW5nIHRvIGRvLiBUbyBiZSBob25lc3QgCkkg
ZG9udCBldmVuIHVuZGVyc3RhbmQgdGhlIG1vdGl2YXRpb24gb2Ygd2FudGluZyB0byBtYWtlIHRo
aXMgb3B0LW91dC4KCiDCoMKgwqAgSm9obgoKT24gMDIvMDgvMjAxOSAxODozOCwgUmVpbmVyIEth
cmxzYmVyZyB3cm90ZToKPiBBbHRob3VnaCBub3QgYSBkZXZlbG9wZXIgb2Ygb3BlbndydCBpdHNl
bGYsIGJ1dCBhIGhhcHB5ICg/KSB1c2VyLCBJIAo+IGhhdmUgdG8gYWdyZWUgdG8gdGhlIHN0YXRl
bWVudCBiZWxvdy4KPgo+IFBST0NEPTEgZGVmYXVsdCBpcyBhIE5PR08gZm9yIG1lLgo+Cj4gU2lt
cGxlIHJlYXNvbixhcyBtZW50aW9uZWQgYWxyZWFkeTogU29mdHdhcmUsIHdoaWNoIGlzIG5vdCBk
b2N1bWVudGVkLCAKPiBkb2VzIG5vdCBleGlzdC4KPiBXaGljaCBpcyBhIHJlcXVpcmVtZW50LCB3
ZSBoYWQgdG8gb2JleSB0byBhbHJlYWR5IGhhbGYgYSBjZW50dXJ5IGFnby4gCj4gV2hlbiBJIHdy
b3RlIG15IGZpcnN0IEFzc2VtYmxlciBjb2RlLgo+Cj4gRm9yIG1lLCB0aGlzIGlzIGFub3RoZXIg
c3RlcCBvZiBvcGVud3J0IGludG8gYmxvYXR3YXJlLCBhcyBpdCBiZWNvbWVzIAo+IG1vcmUgYW5k
IG1vcmUgIm9iZnVzY2F0ZWQiLAo+IHRoZSBzaW1wbGUgdXNlciBsaWtlIG1lIG5vdCBnaXZpbmcg
YW55IGlkZWEsIGhvdyBpdCBpcyBzdXBwb3NlZCB0byB3b3JrLgo+Cj4gV2hpY2ggYnJlYWtzIGFu
b3RoZXIgb2xkIHByaW5jaXBsZSBvZiBzb2Z0d2FyZSBkZXZlbG9wbWVudDogRWdvbGVzcyAKPiBw
cm9ncmFtbWluZy4KPiBOb3Qgb25seSB0aGUgY29kZXIgc2hvdWxkIHVuZGVyc3RhbmQsIGhvdyBp
dCB3b3Jrcy4KPgo+IE9wZW4gU291cmNlIGlzIGhlYWRpbmcgaW50byBDbG9zZWQgU291cmNlLgo+
IEJhY2sgdG8gdGhlIHJvb3RzLgo+Cj4KPiBNeSBmZXcgY2VudHMuCj4KPiBSZWluZXIgS2FybHNi
ZXJnCj4KPgo+Cj4KPgo+Cj4KPiBBbSAwMi4wOC4yMDE5IHVtIDE4OjE4IHNjaHJpZWIgS2V2aW4g
J2xkaXInIERhcmJ5c2hpcmUtQnJ5YW50Ogo+Pgo+Pgo+Pj4gT24gMiBBdWcgMjAxOSwgYXQgMTY6
MDAsIEhhbm51IE55bWFuIDxoYW5udS5ueW1hbkBpa2kuZmk+IHdyb3RlOgo+Pj4KPj4+IEhhdWtl
IE1laHJ0ZW5zIGtpcmpvaXR0aSAyLjguMjAxOSBrbG8gMTcuNDI6Cj4+Pj4gT24gNy8yMy8xOSAz
OjM3IFBNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+Pj4+PiBUcmFuc2l0aW9uIHBlcmlvZCBmb3Ig
aW5pdCBzY3JpcHQgbWlncmF0aW9uIHdhcyBsb25nIGVub3VnaCwgbGV0J3MKPj4+Pj4gbWFrZSBV
U0VfUFJPQ0Q9MSBkZWZhdWx0IG5vdyBzbyB0aGVyZSdzIGVub3VnaCB0aW1lIHRvIGNvbnZlcnQg
dGhlCj4+Pj4+IHJlbWFpbmluZyBzZXJ2aWNlcy9pbml0IHNjcmlwdHMgZm9yIHRoZSBuZXh0IHJl
bGVhc2UuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRy
dWUuY3o+Cj4+Pj4+IC0tLQo+Pj4+PiDCoCBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRjL3Jj
LmNvbW1vbiB8IDExMyAKPj4+Pj4gKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+Pj4+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgNjYgZGVsZXRpb25zKC0pCj4+Pj4+Cj4+
Pj4gRG8geW91IGtub3cgaG93IG1hbnkgcGFja2FnZXMgaW4gdGhlIHBhY2thZ2UgZmVlZCBhbmQg
dGhlIG1haW4KPj4+PiByZXBvc2l0b3J5IGFyZSBzdGlsbCBub3QgdXNpbmcgcHJvY2Q/Cj4+Pj4K
Pj4+PiBFeHRlcm5hbCByZXBvc2l0b3JpZXMsIG5vdCB0aGUgcGFja2FnZSBmZWVkLCB3aWxsIHBy
b2JhYmx5IGJlIGFmZmVjdGVkCj4+Pj4gbW9zdCwgYnV0IEkgdGhpbmsgd2UgZG8gbm90IGhhdmUg
dG8gY2FyZSBhbmQgdGhlcmUgd2VyZSBtYW55IHllYXJzIHRvCj4+Pj4gY29udmVydC4KPj4+Pgo+
Pj4+IEFja2VkLWJ5OiBIYXVrZSBNZWhydGVucyA8aGF1a2VAaGF1a2UtbS5kZT4KPj4+Pgo+Pj4+
IEhhdWtlCj4+Pj4KPj4+Cj4+PiBJIGRvIG5vdCByZW1lbWJlciBzZWVpbmcgZXZlciBhIGdlbmVy
YWwgY2FsbCBmb3IgY29udmVydGluZyB0aGUgb2xkIAo+Pj4gcGFja2FnZXMgdG8gdXNpbmcgcHJv
Y2QuIEluIHRoYXQgc2Vuc2UgdGhpcyBwcm9wb3NlZCBjaGFuZ2UgdG8gCj4+PiBzd2l0Y2ggdGhl
IGRlZmF1bHQgY29tZXMgYSBiaXQgc3VycGlzZS4KPj4+Cj4+PiBRdWljayBzZWFyY2ggaW4gdGhl
IHBhY2thZ2VzIGZlZWQgcmVwbyByZXZlYWxzIHRoYXQgdGhlcmUgYXJlIDI4MSAKPj4+IGluc3Rh
bmNlcyBvZiAiL2V0Yy9yYy5jb21tb24iIGFuZCBvbmx5IDIwNSBpbnN0YW5jZXMgb2YgVVNFX1BS
T0NELiAKPj4+IFNvLCBsaWtlbHkgYWJvdXQgNzUgcGFja2FnZXMgaW4gdGhlIHBhY2thZ2VzIGZl
ZWQgcmVwbyBvbmx5IGFyZSAKPj4+IHVzaW5nIHRoZSBvbGQgc3ludGF4IHdpdGhvdXQgcHJvY2Qu
Cj4+Pgo+Pj4gSGFzIGEgZGVjaXNpb24gYmVlbiBtYWRlIHRvIGRlY2xhcmUgdGhlIG9sZC1zdHls
ZSBpbml0IGZpbGUgaW52YWxpZD8gCj4+PiBXaWxsIGl0IGJlIHBvc3NpYmxlIHRvIHN0aWxsIHVz
ZSB0aGUgc3ludGF4PyBXaGF0IGlzIHRoZSBuZXcgCj4+PiAib3ZlcnJpZGUiIHRvIGluZGljYXRl
IHRoZSB1c2FnZSBvZiB0aGUgb2xkIHN5bnRheD8KPj4+Cj4+PiBPciB3aWxsIHRoZSBwcm9wb3Nl
ZCBjaGFuZ2UgZGlzYWJsZSB0aGUgcGFja2FnZXMgdXNpbmcgdGhlIG9sZCBpbml0IAo+Pj4gZmls
ZSBzeW50YXggdG90YWxseT8KPj4KPj4gTXkgcmVhZGluZyBvZiB0aGUgY2hhbmdlIGlzIHRoYXQg
b2xkIHN5bnRheCBpcyBiYXNpY2FsbHkgZHJvcHBlZC4KPj4KPj4gV2lzaCBmb3I6wqAgV2Ugc2hv
dWxkIGJlIHVzaW5nIHByb2NkIGFuZCB0byB0aGF0IGVuZCBJIHN0YXJ0ZWQgbG9va2luZyAKPj4g
YXQgY29udmVydGluZyB0aGUg4oCYaW1wb3J0YW50IHRvIG1l4oCZIHBhY2thZ2VzOiBkZG5zICYg
bWluaXVwbnBkLgo+Pgo+PiBSZWFsIGxpZmU6IERvY3VtZW50YXRpb24gaXMgY29uZnVzaW5nIHZz
IHJlYWwgbGlmZSB3aGljaCBpcyBqdXN0IAo+PiBwbGFpbiBkaWZmZXJlbnQuIFNlZSBhZGJsb2Nr
IHN0YXJ0dXAgc2NyaXB0IGFzIGFuIGV4Y2VsbGVudCBleGFtcGxlIAo+PiBvZiAqKioqIHRoYXQg
anVzdCBpc27igJl0IGRvY3VtZW50ZWQuCj4+Cj4+IEkgZ2F2ZSB1cCBhbmQgbGVmdCB0aGUgcHJv
Y2VzcyBmZWVsaW5nIHZlcnkgYW5ncnkuCj4+Cj4+Cj4+IEtEQgo+Pgo+Pgo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdAo+PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+IGh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4+Cj4KPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4g
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
