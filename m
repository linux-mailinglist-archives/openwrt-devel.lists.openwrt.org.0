Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 336AD141F48
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 19:01:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QniJlR55cc7lxhDkVyBoVy2Yshx2+TtCITq85G9JsvQ=; b=i0c9YHAoDOZ3Wt
	g/z5jvptoIe7ZsJb9SSb5Qd7ZMU90X3UHvmgJSJjWHC0vV8KZIQZO7hlLSAgzmfykV5ZoygiOQ4eR
	9TqNsW1Q2Kgt0MKMkmUmWvIi5iZhXhwwA+GvTtcNStyrEIgc4FIxLuAw84JCyuEVwlYRYI3aphgse
	XdxSOIlzxGbN3AWP2TzMoUQCh2AJAJ04sh94hG4ZTaWI4K+hOObsoWcTFcQZ6v4TQ4yvee6QET+WO
	wjNOYEc85DozNKbTbfdoeBzz+Mp0K0m+2Tet1H+YsDdUhIxcuPJsrIoiTqIpzF/i14wgz1lmYrDA5
	R/UYeoi7ajFnqzw+xPHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itEt9-0002B9-Jq; Sun, 19 Jan 2020 18:01:31 +0000
Received: from mout-p-102.mailbox.org ([2001:67c:2050::465:102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itEsx-00029r-Ak
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 18:01:22 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4812fh447NzKmds;
 Sun, 19 Jan 2020 19:01:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id R53NuFT3OM-q; Sun, 19 Jan 2020 19:01:13 +0100 (CET)
To: Hannu Nyman <hannu.nyman@iki.fi>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <20200116100514.GB84286@meh.true.cz>
 <c252d8df-d0af-b0ec-ea21-7ade8e02da50@hauke-m.de>
 <faffc81b-b693-1b62-b821-07614bbc3ced@iki.fi>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <2401e56d-c161-85e6-6a09-e4de65392762@hauke-m.de>
Date: Sun, 19 Jan 2020 19:01:12 +0100
MIME-Version: 1.0
In-Reply-To: <faffc81b-b693-1b62-b821-07614bbc3ced@iki.fi>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_100119_673392_59D7B121 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMS8xOS8yMCA2OjU2IFBNLCBIYW5udSBOeW1hbiB3cm90ZToKPiBIYXVrZSBNZWhydGVucyBr
aXJqb2l0dGkgMTkuMS4yMDIwIGtsbyAxOS4xNzoKPj4gT24gMS8xNi8yMCAxMTowNSBBTSwgUGV0
ciDFoHRldGlhciB3cm90ZToKPj4KPj4+IEJUVyBpdCdzIHN0aWxsIG1hc3RlciArIDIgc3RhYmxl
IHJlbGVhc2VzIHdoaWNoIHdpbGwgcmVjZWl2ZSB0aGUKPj4+IHN1cHBvcnQ/IE9uY2UKPj4+IHRo
ZSAyMC55IGlzIG91dCwgdGhlIDE4LjA2IGlzIEVPTD8KPj4gSSB0aGluayB0aGlzIGlzIG5vdCBy
ZWFsbHkgY2xhcmlmaWVkIHlldC4gSSBhc3N1bWUgdGhhdCAxNS4wNSBhbmQgMTcuMDEKPj4gYXJl
IG5vdyBvZmZpY2lhbGx5IGZ1bGx5IGVuZCBvZiBsaWZlLiBJIGRvIG5vdCBrbm93IHdoZW4gd2Ug
cHV0IDE4LjA2Cj4+IGludG8gdGhpcyBtb2RlLCBidXQgaXQgd2lsbCBkZWZpbml0ZWx5IGdldCBs
ZXNzIHBhdGNoZXMgYWZ0ZXIgMTkuMDcgaXMKPj4gb3V0LCBiZWNhdXNlIHBlb3BsZSBjYXJlIG5v
dyBsZXNzLgo+Pgo+PiBJIGFkZGVkIHNvbWUgc3VwcG9ydCBzdGF0dXMgdG8gdGhpcyB3aWtpIHBh
Z2U6Cj4+IGh0dHBzOi8vb3BlbndydC5vcmcvZG9jcy9ndWlkZS1kZXZlbG9wZXIvc2VjdXJpdHkj
c3VwcG9ydF9zdGF0dXMKPj4gSSBob3BlIHRoaXMgaXMgb2ssIEkgcHV0IHNvbWUgbWluaW11bSBk
YXRlcyB0aGVyZSBhbmQgdGhleSBzaG91bGQgYmUKPj4gZXh0ZW5kZWQgaWYgd2UgdGhpbmsgd2Ug
d2lsbCBzdXBwb3J0IHNvbWV0aGluZyBsb25nZXIuIEkgYW0gZmluZSB3aXRoCj4+IGNoYW5nZXMu
Cj4+Cj4+IEkgdGhpbmsgdGhlIGxhdGVzdCByZWxlYXNlIGJyYW5jaCBpcyBiZXR0ZXIgc3VwcG9y
dCB0aGFuIHRoZSBwcmV2aW91cwo+PiBvbmUsIGhvdyBkbyB3ZSBwYXJhcGhyYXNlIHRoaXM/IE5h
bWUgaXQgZXh0ZW5kZWQgc3VwcG9ydCBsaWtlIHNvbWUKPj4gY29tcGFuaWVzIGRvIGl0Pwo+Pgo+
IAo+IFJlZmVycmVyaW5nIHRvIHRoZSBvbGQgZGlzY3Vzc2lvbnMgaW4gMjAxOCAoYmVsb3cpLCBJ
IHRoaW5rIHRoYXQgdGhlCj4gbW9zdCByZWNlbnQgcmVsZWFzZSBicmFuY2ggc2hvdWxkIGJlICJm
dWxseSBzdXBwb3J0ZWQiIGFuZCB0aGUgcHJldmlvdXMKPiBvbmUgKGN1cnJlbnRseSAxOC4wNikg
Y291bGQgYmUgc2FpZCB0byAicmVjZWl2ZSBzZWN1cml0eSB1cGRhdGVzIGFuZAo+IG9jY2FzaW9u
YWwgYnVnIGZpeGVzIiwgYnV0IGl0IHNob3VsZCBub3QgYmUgY2xhaW1lZCB0byBiZSAiZnVsbHkK
PiBzdXBwb3J0ZWQiIGFueSBtb3JlLiBNYXliZSAic2VjdXJpdHkgbWFpbnRlbmFuY2UiID8/IFRo
ZXJlIHNpbXBseSBpc24ndAo+IGVub3VnaCBpbnRlcmVzdCBmb3IgYW5jaWVudCBicmFuY2hlcywg
d2hlbiBldmVuIHRoZSBtb3N0IHJlY2VudCBicmFuY2gKPiB0ZW5kcyB0byBiZSBtb3N0bHkgZG9y
bWFudC4KPiAKPiBUaGF0IHdhcyBteSB0YWtlIGZyb206Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvcGlwZXJtYWlsL29wZW53cnQtYWRtLzIwMTgtSnVseS8wMDA4NDkuaHRtbAo+IGh0dHA6
Ly9saXN0cy5vcGVud3J0Lm9yZy9waXBlcm1haWwvb3BlbndydC1kZXZlbC8yMDE4LVNlcHRlbWJl
ci8wMTQwOTcuaHRtbAo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvcGlwZXJtYWlsL29wZW53
cnQtZGV2ZWwvMjAxOC1Ob3ZlbWJlci8wMTQ1MjYuaHRtbAoKVGhhbmtzIHRoaXMgc291bmRzIGdv
b2QuCkkgd2lsbCB1cGRhdGUgdGhlIHdpa2kuCgpJIGFsc28gZG8gbm90IHdhbnQgdG8gZGVmaW5l
IHNvbWV0aGluZyBuZXcsIGJ1dCBqdXN0IGRvY3VtZW50IHRoZQpjdXJyZW50IHNpdHVhdGlvbiBp
bnRlcm5hbGx5IGFuZCBhbHNvIGZvciBvdXRzaWRlcnMuCgpIYXVrZQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
