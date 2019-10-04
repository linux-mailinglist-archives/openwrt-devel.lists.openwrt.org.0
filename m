Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7906CB2C1
	for <lists+openwrt-devel@lfdr.de>; Fri,  4 Oct 2019 02:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvtK/bFVh+1zTFTvSoi+RrhemPOWPzDDWMIpqGlOTDk=; b=JOXJPIELgxrQ2v
	vWjUK1rczhqICo98fd53ZxCv/ZJoXxt3Lmy6Wuh/Fli15EOoIiQwHxGf+ErYlwvFy7ibheNigOfs9
	AMNJYqmSZe7zxeJYkQxi5JTZzInUJF3/tXyvF7SSvGxWmTyX5nuFHvDIjBeEvScOKd84Ag9QTC1Q7
	xRAzRlAeyFgHD66Fv5CjojrUCGfhV9H7FyAg/etKGumWER56lSm9gKU8w+gXOOw0bHasu7I8R4sgu
	illO0g+uYMkdRHPhOl8CTR2U88BU1jmi4zmi1B7d3X+i2ID8dpIMlw6uAVb7dnXkt9GtYchGB42aD
	PlokxnsdfQSXUlV3+y1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGBSE-0000SD-2X; Fri, 04 Oct 2019 00:28:18 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGBS2-0000Qv-3W
 for openwrt-devel@lists.openwrt.org; Fri, 04 Oct 2019 00:28:08 +0000
Received: (qmail 1408 invoked from network); 4 Oct 2019 00:27:56 -0000
Received: from localhost (HELO ?192.168.1.133?) (127.0.0.1)
 by achernar.uberspace.de with SMTP; 4 Oct 2019 00:27:56 -0000
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 =?UTF-8?B?J1BldHIgxaB0ZXRpYXIn?= <ynezz@true.cz>
References: <20190930195425.28617-1-ynezz@true.cz>
 <002f01d577d1$ccf77fa0$66e67ee0$@adrianschmutzler.de>
 <20191001045015.GH40628@meh.true.cz>
 <006001d57840$08b18770$1a149650$@adrianschmutzler.de>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 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
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <d2710076-164d-5afd-9370-3475cd20f1db@ironai.com>
Date: Fri, 4 Oct 2019 02:27:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <006001d57840$08b18770$1a149650$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_172806_435181_B31684DC 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ar71xx: fix sysupgrade to ath79
 for wndr3700v2 and wndr3800
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

SGksCgoKT24gMDEuMTAuMTkgMTI6MDcsIEFkcmlhbiBTY2htdXR6bGVyIHdyb3RlOgo+IEhpLAo+
IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBvcGVud3J0LWRldmVsIFtt
YWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXSBPbiBCZWhhbGYg
T2YgUGV0ciDFoHRldGlhcgo+PiBTZW50OiBEaWVuc3RhZywgMS4gT2t0b2JlciAyMDE5IDA2OjUw
Cj4+IFRvOiBtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGUKPj4gQ2M6IG9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKPj4gU3ViamVjdDogUmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0ggMTku
MDddIGFyNzF4eDogZml4IHN5c3VwZ3JhZGUgdG8gYXRoNzkgZm9yIHduZHIzNzAwdjIgYW5kIHdu
ZHIzODAwCj4+Cj4+IG1haWxAYWRyaWFuc2NobXV0emxlci5kZSA8bWFpbEBhZHJpYW5zY2htdXR6
bGVyLmRlPiBbMjAxOS0wOS0zMCAyMjo1ODoyMl06Cj4+Cj4+IEhpLAo+Pgo+Pj4gYXI3MXh4IGhh
cyBzbyBtYW55IHNpbWlsYXIgY2FzZXMgbGlrZSB0aGlzLCB3aGljaCBub2JvZHkgZXZlciBjYXJl
ZCBhYm91dCwKPj4KPj4gd2VsbCB0aGlzIGNhc2Ugd2FzIHByb3Blcmx5IHJlcG9ydGVkIGFuZCBJ
IGdvdCBzaW1wbHkgaW50ZXJlc3RlZCBiZWNhdXNlIG9mCj4+IHRoZSBwcm9wb3NlZCBgc3lzdXBn
cmFkZSAtRmAgImZpeCIgaW4gdGhhdCBidWcgcmVwb3J0Lgo+Pgo+Pj4gbWF5YmUgaXQgd291bGQg
YmUgZWFzaWVyIHRvIGp1c3QgZGVhbCB3aXRoIHRoaXMgaW4gYXRoNzkgYnkgc2V0dGluZwo+Pj4g
U1VQUE9SVEVEX0RFVklDRVM/Cj4+Cj4+IEkndmUgbG9va2VkIGF0IHRoaXMgb3B0aW9uIGZpcnN0
LCB0aGVuIHNlZW4gZGlmZmVyZW50IE5FVEdFQVJfS0VSTkVMX01BR0lDIGFuZAo+PiBORVRHRUFS
X0hXX0lEIGZvciB0aG9zZSBkZXZpY2UgYW5kIEkndmUgdGhvdWdodCwgdGhhdCBmaXhpbmcgaXQg
d2l0aAo+PiBTVVBQT1JURURfREVWSUNFUyB3b3VsZCBqdXN0IG1ha2UgdGhlIG1lc3Mgd29yc2Uu
Cj4gCj4gSSBzZWUgdGhlIHBvaW50LCBJIGp1c3Qgd2Fzbid0IGV4cGVjdGluZyBhbiBhdHRlbXB0
IHRvIGZpeCB0aGlzIGluIHRoZSB2ZXJ5IGxhc3QgZGF5cyBvZiBhcjcxeHguCj4gCj4gTmV2ZXJ0
aGVsZXNzLCB0byBzdXBwb3J0IG9sZGVyIGRldmljZXMsIHlvdSB3b3VsZCBzdGlsbCBoYXZlIHRv
IGFkZCB0aGUgInduZHIzNzAwIiBzdHJpbmcgdG8gd25kcjM3MDB2MiBhbmQgd25kcjM4MDAgaW4g
YXRoNzkgLi4uCj4gCj4+Cj4+PiBPbiB0aGUgb3RoZXIgaGFuZCwgaWYgeW91IHJlYWxseSB0aGlu
ayBpdCdzIHdvcnRoIGl0LAo+Pgo+PiBJIHRoaW5rLCB0aGF0IHdlIHNob3VsZCBhdm9pZCBwcm9t
b3RpbmcgYHN5c3VwZ3JhZGUgLUZgIGFzIGEgc3RhbmRhcmQgdXBncmFkZQo+PiBwcm9jZWR1cmUg
Zm9yIHRoZSBvYnZpb3VzIHJlYXNvbnMuCj4gCj4gRGVmaW5pdGVseS4gSG93ZXZlciwgSSBqdXN0
IGFkZGVkIHRoZSAiY29ycmVjdCIgbmFtZSBpbiBhdGg3OSBmb3Igc3VjaCBjYXNlcywgaS5lLiBU
UC1MaW5rIFdEUjM2MDAgaGF2aW5nCj4gU1VQUE9SVEVEX0RFVklDRVMgKz0gdGwtd2RyNDMwMAo+
IGV0Yy4KPiAKPiBJIHdpbGwgaGF2ZSBhIGxvb2sgd2hldGhlciBzaW1pbGFyIGZpeGVzIHRvIHlv
dXJzIGZvciB0aGUgVFAtTGluayBkZXZpY2VzIHdpdGggc2ltaWxhciBzZXR1cCBhcmUgcmVhc29u
YWJsZSBvciBub3QgLi4uCj4gCj4gQmVzdAo+IAo+IEFkcmlhbgo+IAo+Pgo+PiAtLSB5bmV6egoK
SSB0aGluayBib3RoIG9mIHlvdXIgYXBwcm9hY2hlcyB3b3JrIHdlbGwgdG9nZXRoZXIuCkEgc2lt
aWxhciBjYXNlIHdoZXJlIEkgaGF2ZSB0cm91YmxlIHdpdGggdGhpcyBzY2VuYXJpbyBhcmUgdGhl
IFViaXF1aXRpIEFpck1heCBkZXZpY2VzLgpBdCB0aGUgbW9tZW50IGRpZmZlcmVudCBtb2RlbHMg
d2l0aCBkaWZmZXJlbnQgYW50ZW5uYXMgc2hhcmUgY29tbW9uIG1vZGVsIGRlZmluaXRpb25zCndo
aWNoIG1ha2VzIGl0IGhhcmQgdG8gZS5nLiBpbnRyb2R1Y2UgYW50ZW5uYV9nYWluLWRlZmluaXRp
b25zIGluIERUUy4KVGh1cyBpdCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgc2VwYXJhdGUgZGVmaW5p
dGlvbnMgZm9yIGVhY2ggbW9kZWwgaW4gYXRoNzkKZXZlbiBpZiB0aGV5IHNoYXJlIHRoZSBzYW1l
IGJvYXJkLiBBIG1pZ3JhdGlvbiBzY3JpcHQgaW4gYXRoNzkgY291bGQgaGVscCBjaGFuZ2luZyB0
aGUKbW9kZWwgZGVmaW5pdGlvbiBhZnRlcndhcmRzIHNvIHRoYXQgZS5nLiBhIEx1Y2kgVXBkYXRl
ciBjb3VsZCBmaW5kIHRoZSBwcm9wZXIgaW1hZ2UuCgpBcmUgdGhlcmUgYW55IGNyaXRpY2FsIGhh
cmR3YXJlIGRpZmZlcmVuY2VzIGJldHdlZW4gdGhlIGRldmljZXMgaW4gcXVlc3Rpb24/CldoeSBk
byB0aGV5IG5lZWQgdG8gYmUgdHJlYXRlZCBkaWZmZXJlbnRseSBpbiBPcGVuV3J0PwpJZiBub3Qg
dGhlIGJlc3QgdGhpbmcgY291bGQganVzdCBiZSB0byBkbyBjaGFuZ2VzIGluIGF0aDc5IG9ubHkg
YXMgQWRyaWFuIHN1Z2dlc3RlZC4KClJlZ2FyZHMsCgpWaW5jZW50IFdpZW1hbm4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
