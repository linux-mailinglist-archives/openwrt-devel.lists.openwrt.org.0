Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB85F1B5504
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 08:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97pEvrM4v5QXh9CvtnsGpmAkWofA5bDWb2bDsRW18Pc=; b=TWib9SA9nR+oC2
	UbQeGMKNGQFjQCtWx6aJF6IjWVadfNiSLqvVuofoGKVLePR28KcYXylJ5A9yYRGKs46WDgVOeIZab
	oPFYueCxdF2sMjNuNdCRzpNISIF7vVHlb5IgadjUhVmOR2UIiDmwDCpxbK1/LvvAAogxJXIZ/f58d
	nwWb9IDJsDx4xbJS1Md9nEmCffbxT+VaHz1wdpY3cAw2QwONHajWWlR991YiKUBnCzSqTCFcezj5d
	am20+jqEVloRWdXo9/iL2a7ynPa53hGA1p2532bmsRC37ShyJzDvjUMixuBpm31usYFt5eLSgvz/a
	/GdzrDTLrCmm7+Kf6i5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVpO-0004KK-3l; Thu, 23 Apr 2020 06:59:18 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVpG-0004II-9C
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 06:59:12 +0000
Received: from [192.168.180.1] (port=46210 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1jRVp9-0004iN-0X; Thu, 23 Apr 2020 08:59:03 +0200
Received: from vmh.kalnet.hooya.de (unknown [192.168.203.15])
 by admins.marcant.net (Postfix) with ESMTPA id CB2C2280245;
 Thu, 23 Apr 2020 08:59:02 +0200 (CEST)
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>,
 openwrt-devel@lists.openwrt.org
References: <20200422205852.22847-1-bjorn@mork.no>
From: Andre Valentin <avalentin@marcant.net>
Message-ID: <c89a9a37-6e7d-3396-00de-936dc46aa271@marcant.net>
Date: Thu, 23 Apr 2020 08:59:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200422205852.22847-1-bjorn@mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_235910_478013_45AD0E80 
X-CRM114-Status: GOOD (  26.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [RFC 0/3] PoC for per-image package sets
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQmpvZXJuLAoKdGhhdCBsb29rcyB2ZXJ5IGludGVyZXN0aW5nLiBJIGRvIGhhdmUgdGhlIHNh
bWUgcHJvYmxlbXMgaGVyZSB3aXRoIGluaXRpYWwgaW1hZ2VzIGFuZCBtYWRlIHNwZWNpYWwgLmNv
bmZpZ3MgZm9yIHRoYXQuCgpLaW5kIHJlZ2FyZHMsCgpBbmRyw6kKCgpBbSAyMi4wNC4yMCB1bSAy
Mjo1OCBzY2hyaWViIEJqw7hybiBNb3JrOgo+IFRoZXNlIHBhdGNoZXMgY2FuIGFsc28gYmUgZm91
bmQgaW4gYSBicmFuY2ggaGVyZToKPiBodHRwczovL2dpdGh1Yi5jb20vYm1vcmsvb3BlbndydC90
cmVlL2ltYWdlLXBhY2thZ2VzZXRzCj4gCj4gRHVtcGluZyB0aGlzIGFzLWlzIGZvciBkaXNjdXNz
aW9uLiAgTm90IHN1cmUgSSdtIGNhcGFibGUgb2YsIG9yCj4gd2lsbCBoYXZlIHRpbWUgdG8sIGZp
bmlzaCBpdC4gIEJ1dCBJIGFtIGhvcGluZyBpdCBpcyBhIHVzZWZ1bAo+IHN0YXJ0IGlmIHNvbWVv
bmUgZWxzZSB3YW50cyB0byBnaXZlIGl0IGEgdHJ5LiAgSWYgbm90LCB0aGVuIEkKPiBndWVzcyBp
dCBpc24ndCBhIHVzZWZ1bCBlbm91Z2ggZmVhdHVyZSBhZnRlciBhbGwuCj4gCj4gVGhlIHN0YXRl
IG9mIHRoaXMgaXMgc29ydC1vZiB3b3JraW5nIGZvciBtZSwgYnV0IGRlZmluaXRlbHkKPiBub3Qg
Y29tcGxldGUgYW5kIHdvcmtpbmcgZm9yIGFsbCBkaWZmZXJlbnQgYnVpbGQgc2NlbmFyaW9zLgo+
IEkgaGF2ZSBub3QgdGVzdGVkIElCIG9yIFBFUl9UQVJHRVRfUk9PVEZTIGJ1aWxkcy4gIGxlZ2Fj
eS1kZXZpY2VzCj4gaGF2ZW4ndCBiZWVuIHVwZGF0ZWQgYXQgYWxsIGFuZCBhcmUgdGhlcmVmb3Jl
IGJyb2tlbi4gZXRjLgo+IAo+IFRvIHJlY2FwIHRoZSB1c2UgY2FzZTogIEkgaGF2ZSBhIGRldmlj
ZSB3aGVyZSB0aGUgdmVuZG9yIHRmdHAKPiBzZXJ2ZXIgbGltaXRzIHRoZSBzaXplIG9mIHRoZSBp
bml0aWFsIE9wZW5XcnQgaW1hZ2Ugd2UgY2FuIAo+IHVwbG9hZC4gQW4gaW5pdHJhbWZzIGltYWdl
IGlzIHByZWZlcnJhYmxlIGR1ZSB0byB0aGUgYWJpbGl0eSB0bwo+IGJvb3QgZnJvbSBlaXRoZXIg
b2YgdGhlIGR1YWwgcGFydGl0aW9ucy4KPiAKPiBGb3IgdGhpcyByZWFzb24gSSB3YW50ZWQgdG8g
YnVpbGQgYW4gaW5pdHJhbWZzIHdpdGggYSBsaW1pdGVkCj4gc2V0IG9mIHBhY2thZ2VzLCB3aXRo
b3V0IGhhdmluZyB0byByZWR1Y2UgdGhlIGRlZmF1bHQgZGV2aWNlCj4gcGFja2FnZXMgZm9yIHRo
ZSBvdGhlciBpbWFnZXMuCj4gCj4gSSBoYXZlIG5vdGljZWQgdGhhdCB0aGlzIHVzZSBjYXNlIGlz
IG5vdCB1bmlxdWUuICBXZSBoYXZlIGZvcgo+IGV4YW1wbGUgQnVpbGQvdWJudC1lcngtZmFjdG9y
eS1pbWFnZSBpbiBtdDc2MjEubWssIGF0dGVtcHRpbmcKPiB0byBidWlsZCBhbiBpbml0cmFtZnMg
YmFzZWQgaW1hZ2Ugd2hpY2ggd2lsbCBmaXQgd2l0aGluCj4gJChLRVJORUxfU0laRSksIHdoaWNo
IGlzIGEgdGlueSAzTUIuICBUaGlzIGlzIG9idmlvdXNseSBmdXRpbGUKPiBhbmQgdGhlcmUgaXMg
dGhlcmVmb3JlIG5vIHN1Y2ggaW1hZ2Ugb24gZG93bmxvYWRzLm9wZW53cnQub3JnLgo+IFlvdSBj
YW4gYnVpbGQgb25lIHlvdXJzZWxmIGJ5IGNhcmVmdWxseSByZW1vdmluZyBwYWNrYWdlcywgYnV0
Cj4gaXQgd291bGQgYmUgbmljZSBpZiB3ZSBjb3VsZCBsZXQgdGhlIGJ1aWxkYm90cyBwcm9kdWNl
IG9uZSB0b28uCj4gCj4gQW55d2F5LCBsb29rIGF0IHRoZSBjb2RlIGFuZCBzZWUgaWYgbXkgaWRl
YXMgY2FuIGJlIHVzZWQuIEknbGwKPiBhZG1pdCB0aGF0IEknbSBubyBtYWtlIEd1cnUuLi4KPiAK
PiBUaGUgZmlyc3QgcGF0Y2ggc2ltcGxpZmllcyB0aGUgY3VycmVudCBpbml0cmFtZnMgcHJvY2Vz
cywgYW5kCj4gYXZvaWRzIGNvcHlpbmcgdGhlIHNwZWNpYWwgaW5pdHJhbWZzIC9pbml0IGludG8g
dGhlIHNoYXJlZAo+IFRBUkdFVF9ESVIuIEl0IHN0aWxsIG1ha2VzIGEgY29weSBvZiB0aGUgZmls
ZSB0byBiZSBhYmxlIHRvCj4gc2V0IHRoZSB0aW1lc3RhbXAgdGhvdWdoLiAgSSBiZWxpZXZlIHRo
aXMgcGF0Y2ggaXMgdXNlZnVsIGJ5Cj4gaXRzZWxmLCBhbmQgSSBkb24ndCB0aGluayBpdCBicmVh
a3MgYW55dGhpbmcuICBOb3QgbWN1aCBhdAo+IGxlYXN0IDotKQo+IAo+IFRoZSBzZWNvbmQgcGF0
Y2ggdHJpZXMgdG8gYWJ1c2UgdGhlIHBlci10YXJnZXQgcm9vdGZzIGNvZGUKPiBmb3IgZG9pbmcg
cGVyLWltYWdlIHJvb2ZzLiAgVGhlIGRlZmF1bHQgcGFja2FnZSBzZXQgY2FuIGJlCj4gYWRqdXN0
ZWQgYnkgYWRkaW5nIHBhY2thZ2VzIHRvIGFuIElNQUdFX1BBQ0tBR0VTLzxpbWFnZT4KPiB2YXJp
YWJsZS4gIE9yIG1vcmUgdXNlZnVsOiBQYWNrYWdlcyBjYW4gYmUgcmVtb3ZlZCBieQo+IHByZWZp
eGluZyB0aGVtIHdpdGggYSAnLScuICBBcyB1c3VhbCwgeW91J2xsIG5lZWQgdG8gcmVzb2x2ZQo+
IGRlcGVuZGVuY2llcyBtYW51YWxseSBpZiBvdGhlciBwYWNrYWNrZXMgZGVwZW5kIG9uIHRoZSBv
bmVzCj4geW91IHdhbnQgdG8gcmVtb3ZlLgo+IAo+IFRoZSB0aGlyZCBwYXRjaCBpcyB0aGUgeXVj
a2llc3Qgb25lLiAgSXQgZGVsYXlzIHRoZSBrZXJuZWwKPiBwYXJ0IG9mIHRoZSBpbml0cmFtZnMg
YnVpbGRpbmcgdW50aWwgd2UgaGF2ZSBzb21lIGlkZWEgYWJvdXQKPiBpbWFnZXMsIGRldmljZXMg
YW5kIHBhY2thZ2VzLiAgSXQgdGhlbiB1c2VzIHRoZSBzYW1lIAo+IHBlci1pbWFnZSByb290ZnMg
c291cmNlIGRpcmVjdG9yeSBzY2hlbWUgYXMgaW5wdXQgZm9yIHRoZQo+IGtlcm5lbC4gIEknbSBu
b3QgcHJvdWQgb2YgaG93IHRoaXMgY3VycmV0bHkgbG9va3MuICBCdXQgSSBoYWQKPiB0byBzdG9w
IGhlcmUuICAKPiAKPiAKPiBCasO4cm4gTW9yayAoMyk6Cj4gICBrZXJuZWwtZGVmYXVsdHM6IHJl
ZmFjdG9yIGluaXRyYW1mcyBidWlsZAo+ICAgYnVpbGQ6IGltcGxlbWVudCBwZXItaW1hZ2UgcGFj
a2FnZSBzZXRzCj4gICBidWlsZDogcGVyLWltYWdlIHBhY2thZ2Ugc2V0IGZvciBpbml0cmFtZnMK
PiAKPiAgaW5jbHVkZS9pbWFnZS5tayAgICAgICAgICAgfCAzMyArKysrKysrKysrKystLS0tCj4g
IGluY2x1ZGUva2VybmVsLWJ1aWxkLm1rICAgIHwgIDEgLQo+ICBpbmNsdWRlL2tlcm5lbC1kZWZh
dWx0cy5tayB8IDc3ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDMg
ZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgNTggZGVsZXRpb25zKC0pCj4gCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
