Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72AC147EF8
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Jan 2020 11:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fRQqox5P6G7bQIzT/9MI6jRnSOYC0l+ipFwTR83cXb8=; b=fK0Ik1zYrMKU4BNtxzRll6x0P
	AqCXGH9LZzvQH8XcZ7e5/Hfj0QazKyazNAVLivnpTT5huDhvFkLIQT+YAWkDFqbG6s1QMn5ZwuG1v
	R7LMveAsOXtcM+uKS1x2CudOESuk9GQqpmPlWIX4Rp6ZIeTR8psZMPPztV2NkjQhJGJq0tGlxCX/P
	j0Vq4tiyUtp70IpcCBHaV2KEtl/R2b0lgdEbwaygaRKyDr9581nWKBCWgzT+SNMR04pxGWA0knTBj
	WifaQKqvQiyYIC7BvJe/b7ZsIZ/VSB3fffvmKfMmI67zl24XgvGwR3+VHZmO/LiRIDasdIgA+7BpZ
	4kNYnL14w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuwTl-0005Dj-IZ; Fri, 24 Jan 2020 10:46:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuwTe-0005DW-E4
 for openwrt-devel@bombadil.infradead.org; Fri, 24 Jan 2020 10:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GVYmi23xaWHF9TG0B2JNaulWG2wZCbUm+AflCNkxoJA=; b=NDEtt8n/e0K91M2Am06Pg8sw38
 L4wVWT7/K1jiKr5taM5Ug5Lto0QDYHfL03meiKC2i4CpmcgzmRXcznYOqgSMGI87MgVobrGBcr7KZ
 Pf32vjIfxlAxZ5gv7t8JRSHwWOF5aOg6zUkhDH9mpQrZfHc1bqnI1aez408nZyObZk/9nBNQCZanf
 R49EIeczfLjfbvtiv8+qSpSw5QGH4W1nTG72jK15QePaS9Sgnp+lmPOcBviTAv1A6pNXRiy+iPjYu
 8vpE3AIqmZ9qJRqjcILEuzLsD7uOTR+3CgWAYJdVNFWGlpszdlBuMJfTmugG1UGbseiqePhRESaEw
 Q1fryiTA==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuwU1-0007B0-7u
 for openwrt-devel@lists.openwrt.org; Fri, 24 Jan 2020 10:46:39 +0000
X-Originating-IP: 72.234.165.80
Received: from [192.168.200.110] (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id AC66A1BF21A
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Jan 2020 10:45:30 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
Message-ID: <b8896b92-f0a8-8e24-fdf9-e3084dc6c3ba@aparcar.org>
Date: Fri, 24 Jan 2020 00:45:27 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_104637_354101_C2D49226 
X-CRM114-Status: GOOD (  27.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.201 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
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

SGksCgpJIGNyZWF0ZWQgYSB2ZXJ5IGJhc2ljIHNjcmlwdCB3aGljaCBzaG91bGQgYmUgZXh0ZW5k
ZWQgdG8gc2hvdyBhbGwgCmhhcmR3YXJlIGluZm9ybWF0aW9uIG5lZWRlZC4gT25jZSB0aGF0IHdv
cmtzIEknZCBwYWNrYWdlIGl0LgoKaHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L3NjcmlwdC1j
b252ZXJ0LWRldmljZS1pbmZvcm1hdGlvbi10by15YW1sLzUzNTE2CgpCZXN0LApQYXVsCgpPbiAx
LzEyLzIwIDExOjQ3IEFNLCBQYXVsIFNwb29yZW4gd3JvdGU6Cj4gSGkgYWxsLAo+Cj4gc29tZSB0
aW1lIGFnbyBJIGNyZWF0ZWQgYSAobm93IG91dGRhdGVkKSBkZXZpY2Ugb3ZlcnZpZXdbMF0gYmFz
ZWQgb24gCj4gWUFNTCBtZXRhIGRhdGEuIFRoaXMgYXBwcm9hY2ggY291bGQgc2ltcGxpZnkgbWFp
bnRhaW5pbmcgYW4gZGV2aWNlIAo+IG92ZXJ2aWV3IGFuZCBkZXZpY2Ugc3BlY2lmaWMgcGFnZXNb
MV0uCj4KPiBBbGwgY29tbWl0cyBhZGRpbmcgbmV3IGRldmljZXMgYWxyZWFkeSBpbmNsdWRlIG1v
c3QgcmVsZXZhbnQgCj4gaW5mb3JtYXRpb24gZm9yIGNyZWF0aW5nIHRoZSBvdmVydmlldy4gSG93
ZXZlciBpdCB3b3VsZCBiZSBjb252ZW5pZW50IAo+IGlmIGRldmVsb3BlcnMgd291bGQgZm9ybWF0
IHRoZWlyIGNvbW1pdCBtZXNzYWdlcyBpbiBhIGdlbmVyaWMgZm9ybWF0LCAKPiB0aGVyZWZvcmUg
SSdkIHByb3Bvc2UgdGhlIGZvbGxvd2luZzoKPgo+IEV2ZXJ5IGNvbW1pdCBtZXNzYWdlIGZvciBu
ZXdseSBhZGRlZCBkZXZpY2VzIG11c3QgY29udGFpbiBhIG51bWJlciBvZiAKPiBoYXJkd2FyZSBp
bmZvcm1hdGlvbiBhbmQgc3RlcHMgZm9yIGFuIGluaXRpYWwgaW5zdGFsbGF0aW9uLgo+IFRoZSBo
YXJkd2FyZSBpbmZvcm1hdGlvbiBzaG91bGQgY29udGFpbiBhdCBsZWFzdCB0aGUgZm9sbG93aW5n
IAo+IGluZm9ybWF0aW9uLCBtYXliZSBtb3JlOgo+Cj4gU29DLCBmbGFzaCwgcmFtLCB3aWZpLCBM
RURzLCBidXR0b25zLCBVU0IsIHNlcmlhbCwgdmVuZG9yLCBtb2RlbCwgCj4gZGV2aWNlIHRyZWUg
SUQsIEV0aGVybmV0IHBvcnRzCj4KPiBBbiBpbGx1c3RyYXRpdmUgY29tbWl0IHRoZXJlZm9yZToK
Pgo+IHNvYzogUXVhbGNvbW0gSVBRNDAyOQo+IHJhbV9tYjogNTEyCj4gZmxhc2g6Cj4gwqAgLSBz
aXplX21iOiAxMjgKPiDCoMKgwqAgdHlwZTogU1BJLU5BTkQgKE1hY3Jvbml4KQo+IMKgwqAtIHNp
emVfbWI6IDQKPiDCoMKgwqAgdHlwZTogU1BJLU5PUiAoTWFjcm9uaXggTVgyNVIzMjM1RikKPiB1
c2I6Cj4gwqAgLSB2ZXJzaW9uOiAyCj4gwqDCoMKgIHBvcnRzOiAxCj4gwqAgLSB2ZXJzaW9uOiAz
Cj4gwqDCoMKgIHBvcnRzOiAyCj4gZXRoZXJuZXQ6Cj4gwqAgLSBtYml0OiAxMDAKPiDCoMKgwqAg
cG9ydHM6IDQKPiDCoCAtIG1iaXQ6IDEwMDAKPiDCoMKgwqAgcG9ydHM6IDEKPiBsZWRfY291bnQ6
IDMKPiBzZXJpYWw6IGZhbHNlCj4gdmVuZG9yOiBGb29iYXIKPiBtb2RlbDogTG9yZW0gSXBzdW0K
PiB2YXJpYW50OiB2NAo+IGR0X2lkOiBmb29iYXJfbG9yZW0taXBzdW1fdjQKPiB0YXJnZXQ6IGF0
aDc5L2dlbmVyaWMKPgo+IEFkZGl0aW9uYWxseSBzdHVmZiBsaWtlIGNwdV9taHosIGNwdV9jb3Jl
cyBhbmQgc3VjaCBjb3VsZCBhbHNvIGJlIAo+IGFkZGVkLCB0aGUgT3BlbldydCBod2RhdGEgb2Zm
ZXJzIHNvbWUgYWRkaXRpb25hbCBpbmZvcm1hdGlvbiB3aGljaCAKPiBzaG91bGQgYmUgYWRkZWQg
aWYgcmVsZXZhbnRbMl0uCj4KPiBUbyB3cml0ZSBhIG11bHRpLWxpbmUgdGV4dCBmb3IgdGhlIGlu
c3RhbGxhdGlvbiBvciBjb21tZW50cywgYSAifCIgY2FuIAo+IGJlIHVzZWQgYXMgdGhlIGZvbGxv
d2luZzoKPgo+IGluc3RhbGxhdGlvbjogfAo+IMKgIDEuIEdldCB0aGUgT3BlbldydCBpbml0cmFt
ZnMgaW1hZ2UuIFJlbmFtZSBpdCB0byBpcHE0MHh4LmFyaSBhbmQgcHV0IGl0Cj4gwqDCoMKgwqAg
aW50byB0aGUgVEZUUCBzZXJ2ZXIgcm9vdCBkaXJlY3RvcnkuIENvbmZpZ3VyZSB0aGUgVEZUUCBz
ZXJ2ZXIgdG8KPiDCoMKgwqDCoCBiZSByZWFjaGFibGUgYXQgMTkyLjE2OC4xLjc1LzI0LiBDb25u
ZWN0IHRoZSBtYWNoaW5lIHJ1bm5pbmcgdGhlIAo+IFRGVFAKPiDCoMKgwqDCoCBzZXJ2ZXIgdG8g
dGhlIEUwICghKSBldGhlcm5ldCBwb3J0IG9mIHRoZSBhY2Nlc3MgcG9pbnQsIGFzIGl0IG9ubHkK
PiDCoMKgwqDCoCB0cmllcyB0byBwdWxsIGZyb20gdGhlIFdBTiBwb3J0Lgo+IMKgIMKgIDIuIENv
bm5lY3QgdG8gdGhlIHNlcmlhbCBjb25zb2xlLiBJbnRlcnJ1cHQgYXV0b2Jvb3RpbmcgYnkgcHJl
c3NpbmcKPiDCoMKgwqDCoCBFbnRlciB3aGVuIHByb21wdGVkLgo+IMKgIC4uLgo+Cj4gY29tbWVu
dHM6IHwKPiDCoCBWQ0MgLSBOQwo+IMKgwqAgRCsgLSBUWAo+IMKgwqAgRC0gLSBSWAo+IMKgIEdO
RCAtIEdORAo+Cj4gSW5zdGFsbGF0aW9uIHN0ZXBzIHdvdWxkIGJlIG1lcmdlZCB0byB0ZW1wbGF0
ZXMgYXMgbWFueSBkZXZpY2VzIHNoYXJlIAo+IHRoZSBzYW1lIHN0ZXBzLCBvbmx5IHZhcnlpbmcg
dGhlIFRGVFAgYmluYXJ5IG5hbWUgb3IgSVAuIFRoaXMgY291bGQgCj4gYmVjb21lIHBhcnQgb2Yg
dGhlIGdlbmVyYWwgaW5mb3JtYXRpb24sIGxpa2UgYSB2YXJpYWJsZSBjYWxsZWQgdGZ0cF9pcCAK
PiBhbmQgdGZ0cF9iaW4uCj4KPiBBbGwgaW5mbyB3b3VsZCBiZSBhZGRlZCB0byBhIG1ldGFkYXRh
IHJlcG9zaXRvcnkgbGlrZSAKPiBvcGVud3J0L2RldmljZXMuZ2l0LCB3aGljaCBjYW4gdGhlbiBi
ZSB1cGRhdGVkIGJ5IHRoZSBjb21tdW5pdHkuCj4KPiBUbyB2ZXJpZnkgdGhlIFlBTUwgZGF0YSBh
IHRvb2wgbGlrZSB5YW1sbGludFszXSAoUHl0aG9uKSBjb3VsZCBiZSB1c2VkLgo+Cj4gVGhlIG1h
aW4gbW90aXZhdGlvbiBpcyB0byBoYXZlIGFuIHNpbXBsZSBhbmQgYXBwZWFsaW5nIG92ZXJ2aWV3
IHdoaWNoIAo+IGFsbG93cyBzZWFyY2hpbmcvZmlsdGVyaW5nIGZvciBkZXZpY2VzLCBzZWVpbmcg
dGhlIHN1cHBvcnQgc3RhdHVzLCAKPiByZXRyaWV2ZSBmaXJtd2FyZSBhbmQgaGF2aW5nIGFuIGVh
c2lseSBtYWludGFpbmVkLCB1cCB0byBkYXRlIAo+IGRvY3VtZW50YXRpb24uCj4KPiBQbGVhc2Ug
c2hhcmUgeW91ciB0aG91Z2h0cy4KPgo+IFN1bnNoaW5lLAo+IFBhdWwKPgo+IFswXTogaHR0cHM6
Ly9hcGFyY2FyLmdpdGh1Yi5pby9vcGVud3J0LWRldmljZXMvCj4gWzFdOiAKPiBodHRwczovL2Fw
YXJjYXIuZ2l0aHViLmlvL29wZW53cnQtZGV2aWNlcy9kZXZpY2VzL3RwLWxpbmtfdGwtd2RyNDMw
MC8KPiBbMl06IAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9hcGFyY2FyL29wZW53cnQtZGV2aWNlcy9i
bG9iL21hc3Rlci9fZGF0YS9kZXZpY2VzL29wZW4tbWVzaF9hNjIueW1sCj4gWzNdOiBodHRwczov
L2dpdGh1Yi5jb20vYWRyaWVudmVyZ2UveWFtbGxpbnQKPgo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
