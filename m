Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3568035D9F
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 15:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MwuWrLkRHTd3TAjkgE9vearivZHWrDmRqhJTOD4keHA=; b=LPFdXhS9iVEdvwz7vOwDfurUr
	CmrTarfN0tre4mg5RsTx1tB3OgitBiSdO30vrvTW/585YKtP1q/1+Cn3WhU30KSkzVjHpQqBN/dQw
	A1lZQvajK4A+SNqdZyr3LzA26pf2PIB1lj4cGUnSZOdLRdyqYb587CWJxrCEJA6sV6NX1gvycmBYI
	1aHuMGdSAwMtyH6quhqSH3VR+6gK6YilJ34JhiMvwJ+qXwUHPv9wx/bg2bfGCJOeJP0OUDTO4gFQv
	zyLshW3eiicSxPXIe5bRn5VKliDuVcJgIQs/52XJHdHj6qil35EvfxxoyuDXJLotAAVtaBer6rMjX
	6Okh+X7jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVmC-0002eo-Ov; Wed, 05 Jun 2019 13:16:24 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVm5-0002eN-CX
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 13:16:19 +0000
Received: from p5dcfb869.dip0.t-ipconnect.de ([93.207.184.105]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hYVm3-0006Bj-5m; Wed, 05 Jun 2019 15:16:15 +0200
To: Jonas Gorski <jonas.gorski@gmail.com>
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
 <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
 <bfbe025d-a01d-264f-0dde-6e1bfc2cc43d@phrozen.org>
 <CAOiHx=kNxYHxV2e+Cc5pY4V6FD+YuYxvK9V1U7iua_x5Uo30AA@mail.gmail.com>
 <522982e7-b056-a798-022f-a58155ad99bf@phrozen.org>
 <CAOiHx=n8nJZ7hxocaNN+DmTwqMMNJnhKOi+xyiGP=5SHWdz3_g@mail.gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <059bcae8-bbe3-73e7-66cd-b0e1f2f7b777@phrozen.org>
Date: Wed, 5 Jun 2019 15:16:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAOiHx=n8nJZ7hxocaNN+DmTwqMMNJnhKOi+xyiGP=5SHWdz3_g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_061617_582140_860B1B83 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Karl Palsson <karlp@tweak.net.au>, =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDA1LzA2LzIwMTkgMTU6MTEsIEpvbmFzIEdvcnNraSB3cm90ZToKPiBPbiBXZWQsIDUgSnVu
IDIwMTkgYXQgMTQ6NTgsIEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJvemVuLm9yZz4gd3JvdGU6Cj4+
Cj4+IE9uIDA1LzA2LzIwMTkgMTQ6NTQsIEpvbmFzIEdvcnNraSB3cm90ZToKPj4+IEhpLAo+Pj4K
Pj4+IE9uIFdlZCwgNSBKdW4gMjAxOSBhdCAxNDozMywgSm9obiBDcmlzcGluIDxqb2huQHBocm96
ZW4ub3JnPiB3cm90ZToKPj4+PiBPbiAwNS8wNi8yMDE5IDEzOjM1LCBLYXJsIFBhbHNzb24gd3Jv
dGU6Cj4+Pj4+IEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJvemVuLm9yZz4gd3JvdGU6Cj4+Pj4+PiBP
biAwNS8wNi8yMDE5IDEyOjE3LCBLYXJsIFBhbHNzb24gd3JvdGU6Cj4+Pj4+Pj4gSm9obiBDcmlz
cGluIDxqb2huQHBocm96ZW4ub3JnPiB3cm90ZToKPj4+Pj4+Pj4gVGhpcyBjYW4gYmUgdXNlZCBp
bnNpZGUgYnVpbGQgc2V0dXBzIGZvciBlYXN5IGZlZWRzLmNvbmYKPj4+Pj4+Pj4gZ2VuZXJhdGlv
bi4KPj4+Pj4+PiBDb3VsZCB5b3UgZ2l2ZSB1cyBhbiBleGFtcGxlIG9mIGhvdyB0aGlzIGlzIGFj
dHVhbGx5IGVhc3ksIG9yCj4+Pj4+Pj4gd2hhdCBzb3J0IG9mIGZ1bmN0aW9uYWxpdHkgdGhpcyBp
cyBwcm92aWRpbmcgYmV5b25kICJjYXQKPj4+Pj4+PiBmZWVkcy5jb25mLmRlZmF1bHQgZmVlZHMu
Y29uZi5leHRyYSA+IGZlZWRzLmNvbmYiCj4+Pj4+Pj4KPj4+Pj4+PiBJdCBzZWVtcyBsaWtlIGEg
bG90IG9mIHBlcmwgZm9yIGEgbmFycm93IHVzZWNhc2UuCj4+Pj4+Pj4KPj4+Pj4+PiBTaW5jZXJl
bHksCj4+Pj4+Pj4gS2FybCBQYWxzc29uCj4+Pj4+PiBUaGlzIHdhcyBicm91Z2h0IHVwIGFzIGEg
bWlzc2luZyBmZWF0dXJlIGJ5IHRoZSBwcnBsIGZvbGtzLiBJCj4+Pj4+PiBjb25zaWRlcmVkIG9u
IGhvdyB0byBiZXN0IGltcGxlbWVudCB0aGlzIGFuZCBmaW5kIHRoYXQgaGF2aW5nCj4+Pj4+PiBw
cm9wZXIgdG9vbGluZyBpcyBtdWNoIGJldHRlciB0aGFuIGhhdmluZyB0byBjYXJyeSBhcm91bmQg
YW4KPj4+Pj4+IGV4dHJhIGZpbGUgdGhhdCBpcyBjYXQuIGJlaW5nIGFibGUgdG8gYnVpbGQgdGhl
IGZlZWRzLmNvbmYKPj4+Pj4+IGR5bmFtaWNhbGx5IGxpa2UgdGhpcyBqdXN0IHNlZW1zIG11Y2gg
Y2xlYW5lciB0byBtZSBhbmQgd2lsbAo+Pj4+Pj4gYWxsb3cgZG93bnN0cmVhbSB1c2VycywgdmVu
ZG9ycywgb2RtcyBhbmQgaW50ZWdyYXRvcnMgdG8gaGF2ZQo+Pj4+Pj4gbGVzcyBuZWVkIHRvIHBh
dGNoIHRoZWlyIHRyZWVzIHRvIGRlYXRoLgo+Pj4+PiBTbywgdGhleSBzdGlsbCBoYXZlIHRvIGhh
dmUgYSBzY3JpcHQsIGJ1dCBub3cgdGhlIHNjcmlwdCBoYXMuLi4KPj4+Pj4KPj4+Pj4KPj4+Pj4g
Li4uCj4+Pj4+IC4vc2NyaXB0cy9mZWVkcyBzZXR1cCAtYiBzcmMtZ2l0LHByaXZhdGUtYWEsZ2l0
Oi8vYmxhaAo+Pj4+PiBzcmMtbGluayxwcml2YXRlLWJiLC93b3AvYmxhaAo+Pj4+PiAuLi4KPj4+
Pj4KPj4+Pj4gaW5zdGVhZCBvZgo+Pj4+PiAuLi4KPj4+Pj4gY3AgZmVlZHMuY29uZi5kZWZhdWx0
IGZlZWRzLmNvbmYKPj4+Pj4gZWNobyAic3JjLWdpdCBwcml2YXRlLWFhIGdpdDovL2JsYWgiID4+
IGZlZWRzLmNvbmYKPj4+Pj4gZWNobyAic3JjLWxpbmsgcHJpdmF0ZS1iYiAvd29wL2JsYWgiID4+
IGZlZWRzLmNvbmYKPj4+Pj4gLi4uCj4+Pj4+Cj4+Pj4+IEkgbWVhbiwgX3llc18gaXQncyAic2lt
cGxlciIgYnV0IGl0J3Mgb25seSBzaW1wbGVyIGJ5IGJyaW5naW5nIGluCj4+Pj4+IG5ldyB0b29s
cyB3aXRoIG5ldyBsYXllcnMgb2YgYWJzdHJhY3Rpb24uIEkgcmVhbGx5IHF1ZXN0aW9uCj4+Pj4+
IHdoZXRoZXIgdGhhdCdzIGFjdHVhbGx5IHNpbXBsZXIgZm9yIGFueW9uZSBpbiB0aGUgbG9uZyBy
dW4sIGFuZAo+Pj4+PiBhbHNvIGhvdyB0aGlzIHJlYWxseSBjb3VudHMgYXMgYSAibWlzc2luZyBm
ZWF0dXJlIiBUaGVyZSdzIHN0aWxsCj4+Pj4+IGdvaW5nIHRvIGJlIGEgcmVxdWlyZW1lbnQgZm9y
IHRoYXQgdmVuZG9yIHNjcmlwdC4KPj4+Pj4KPj4+Pj4gU2luY2VyZWx5LAo+Pj4+PiBLYXJsIFBh
bHNzb24KPj4+PiBJdHMgbm90IGEgbmV3IHRvb2wsIGl0cyBhbiBleHRyYSBjYWxsIHRvIGFuIGFs
cmVhZHkgZXhpc3Rpbmcgb25lLiBJCj4+Pj4gYmVsaWV2ZSB0aGF0IHRoZSBvbmUgbGluZXIgaXMg
bXVjaCBjbGVhbmVyIHRoYW4gdGhlIDMgbGluZSBzY3JpcHRhZ2UuCj4+Pj4gdGhlcmUgaXMgbm8g
cmVxdWlyZW1lbnQgZm9yIGEgdmVuZG9yIHNjcmlwdC4gdGhleSBzaGlwIHdpdGggYSBQREYgdGhh
dAo+Pj4+IGhhcyB0aGUgYnVpbGQgc3RlcHMuIFRoaXMgb25lbGluZSB3aWxsIGJlIG11Y2ggZWFz
aWVyIHRvIHVzZSBJIGJlbGlldmUuCj4+PiBTaW5jZSB0aGUgdXNlIGNhc2UgaXMgaGF2aW5nIGFk
ZGl0aW9uYWwgY3VzdG9tIGZlZWRzIHRvIHRoZSBub3JtYWwKPj4+IHBhY2thZ2UgZmVlZHMsIG1h
eWJlIGl0IHdvdWxkIG1ha2UgbW9yZSBzZW5zZSB0byBoYXZlIGEgZS5nLgo+Pj4gZmVlZHMuY29u
Zi5jdXN0b20gdGhhdCBpcyB1c2VkIGFzIGFuIGFkZGl0aW9uIHRvIHRoZQo+Pj4gZmVlZHMuY29u
Zi5kZWZhdWx0IGluc3RlYWQgb2YgY29tcGxldGVseSByZXBsYWNpbmcgaXQuIFRoYXQgd2F5IHlv
dQo+Pj4gd291bGQgYXZvaWQgbWlzc2luZyB1cHN0cmVhbSBjaGFuZ2VzIGluIHRoZSBmZWVkcy5j
b25mLmRlZmF1bHQgd2hlbgo+Pj4gdXBkYXRpbmcgeW91ciBidWlsZCBlbnZpcm9ubWVudC4KPj4g
SGksCj4+Cj4+IFRoZSBwYXRjaCBkb2VzIG5vdCBtYW5pcHVsYXRlIHRoZSBkZWZhdWx0IGZpbGUg
YXQgYWxsLgo+Pgo+Pgo+Pj4gVGhlbiB3ZSBjb3VsZCBhZGQgYSBmZXcgY29tbWFuZHMgdG8gc2Ny
aXB0cy9mZWVkcyBmb3IgbWFuaXB1bGF0aW5nCj4+PiB0aGF0IGZlZWRzLmNvbmYuY3VzdG9tIChh
ZGRpbmcvcmVtb3ZpbmcgZmVlZHMsIGNoYW5naW5nIHRoZWlyCj4+PiB0eXBlcy9hZGRyZXNzZXMv
bmFtZXMgZXRjKS4KPj4gc28gaW5zdGVhZCBvZiB1c2luZyBzY3JpcHQvY29tbWFuZHMgdG8gY3Jl
YXRlIHRoZSBhbHJlYWR5IGV4aXN0aW5nCj4+IGZlZWRzLmNvbmYgZmlsZSB3ZSBzaG91bGQgaW50
cm9kdWNlIGEgM3JkIGZpbGUgPyB0aGF0IG1ha2VzIG5vIHNlbnNlIHRvIG1lLgo+IE5vLCBpbiB0
aGF0IGNhc2UgdGhlcmUgd291bGQgYmUgbm8gZmVlZHMuY29uZi4gSnVzdCBmZWVkcy5jb25mLmRl
ZmF1bHQKPiArIGZlZWRzLmNvbmYuY3VzdG9tIChhICJkaWZmIiksIHNvIHN0aWxsIG9ubHkgdHdv
IGZpbGVzLiBEaWZmZXJlbnQKPiBuYW1lIHRvIG5vdCBicmVhayBleGlzdGluZyBmZWVkcy5jb25m
IHNldHVwcy4gT3IgYWRkIGEgbWFya2VyIHRvCj4gZmVlZHMuY29uZiB0byBtYXJrIGl0IGFzIGEg
InNuaXBwZXQvZGlmZiIuIE9yIG1heWJlIHVzZSB0aGUgaW5jbHVkZQo+IHRoaW5nIHByb3Bvc2Vk
IGJ5IEJqw7hybiBhdCB0aGUgdG9wIGxpbmUgb2YgdGhlIGdlbmVyYXRlZCBmZWVkcy5jb25mLgo+
Cj4gU28gdGhlIGZlZWRzLmNvbmYgZ2VuZXJhdGVkIGJ5IHlvdXIgY29tbWFuZCB3b3VsZCB0aGVu
IGJlCj4KPiBzcmMtaW5jbHVkZSBmZWVkcy5jb25mLmRlZmF1bHQKPiBzcmMtZ2l0IGN1c3RvbV9z
dHVmZiBnaXQ6Ly9leGFtcGxlLmNvbTpmb28KPgo+IGF2b2lkaW5nIGhhdmluZyB0byBoYXZlIGEg
bG9jYWwsIHVuY2hhbmdpbmcgY29weSBvZiBjb250ZW50cyBvZgo+IGZlZWRzLmNvbmYuZGVmYXVs
dCBpbiB0aGVyZS4KPgo+IEEgYml0IGxpa2Ugd2Ugc3BsaXQgdXAgdGhlIG9wa2cgZmVlZHMgY29u
ZmlndXJhdGlvbiB0byBiYXNpYy9kaXN0Cj4gZmVlZHMgZmlsZXMgYW5kIGN1c3RvbSBmZWVkcyBm
aWxlLgo+Cj4KPiBSZWdhcmRzCj4gSm9uYXMKCgpUaGF0IHdpbGwgeWV0IGFnYWluIHJlcXVpcmUg
YW4gYWRkaXRpb25hbCBnaXQgdHJlZSwgd2hpY2ggaXMgbm90IApkZXBsb3lhYmxlIGluc2lkZSBh
IHRhciBmaWxlICsgcGRmIGFuZCBpcyB2b29kb28gdG8gdGhlIHVzZXJzLiBJIGRvIGxpa2UgCnRo
ZSBpZGVhIHRob3VnaCwgYnV0IGl0IGlzIGZpdHRpbmcgZm9yIGEgZm9zcyBkZXZlbG9wZXIgYW5k
IG5vdCBhIApjb3Jwb3JhdGUgY29kZXIuCgogwqDCoMKgIEpvaG4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
