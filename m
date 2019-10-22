Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6879ADFCD3
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 06:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vK4fqIfUpnYDJcRUIRMlgM3QdIhJeKdnNV8yGz61RcA=; b=P68eQHGrob/65sGr9oLB0IgUs
	p6rbrra/OvMOmh8QGFCrmk7U2H68cbKu3W1bo8d7rtP+2InxvDgttoBIjMwr4hcZCGmkYIIPxgqZ6
	BQU1AqZ++0U9KJgr9jl6HB/S8mwsjY9o/YwgrOnhKfogzQ8Wf5NYbeYZVZSNRzSy8Koa+zjUEeaX1
	lT4zgb8d/q4ETKI+FwC/AVjLzEHfm27y8lpVThzHfceA6++uTS5BBRMzZniWjAd0p1ZZE0Tg1kVdp
	GZsWzpQNSP5qxa4Xg/rRfp8kH9uikmNAZbhYkwb+AU0ycwdG/UiYeZ8eBX92PM2oFM6TwEs1DUqr/
	ZaVnrNEAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMm3H-0002QQ-E1; Tue, 22 Oct 2019 04:45:47 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMm38-0002Py-UJ
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 04:45:40 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 4B5BC20EBA;
 Tue, 22 Oct 2019 04:45:28 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 22 Oct 2019 06:45:28 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Organization: TDT AG
In-Reply-To: <875zmgnzco.fsf@miraculix.mork.no>
References: <20190704113537.22078-1-ms@dev.tdt.de>
 <4454fadb211809fbcceab6dc465a1b7a@dev.tdt.de>
 <3a1da3051d2e1736423f7e4ada4acdfc@dev.tdt.de>
 <875zmgnzco.fsf@miraculix.mork.no>
Message-ID: <fa3b350e379917977b26e5587a255393@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_214539_131517_CB7D9D9F 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH uqmi] nas: add --get-plmn
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
Cc: john@phrozen.org, openwrt-devel@lists.openwrt.org, sami@olmari.fi,
 nbd@nbd.name
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGluZy4KCkkgc3RpbGwgd2FudCB0byBmaXggdGhlIGV4aXN0aW5nIHByb2JsZW1zIGluIHRoZSBx
bWkgcHJvdG9oYW5kbGVyLgoKVGhlcmVmb3JlLCB0aGlzIGZlYXR1cmUgbmVlZHMgdG8gYmUgaW50
ZWdyYXRlZCBpbnRvIHVxbWkuCgpNYXJ0aW4KCk9uIDIwMTktMDgtMjkgMTA6MzUsIEJqw7hybiBN
b3JrIHdyb3RlOgo+IE1hcnRpbiBTY2hpbGxlciA8bXNAZGV2LnRkdC5kZT4gd3JpdGVzOgo+IAo+
PiBPbiAyMDE5LTA4LTI2IDIxOjEyLCBTYW1pIE9sbWFyaSB3cm90ZToKPj4+IEkgdGhpbmsgdGhl
IGlkZW9sb2d5IGJlaGluZCBwcm90byBoYW5kbGVyIHRoZXJlIGlzIHRvICJkbyB3aGF0ZXZlcgo+
Pj4gdG9sZCIgZGVzcGl0ZSBvZiB3aGF0IHRoZSBzdGF0ZSBpcyBjdXJyZW50bHksCj4+PiBtYXli
ZSB0aGVyZSBpcyBhIHJlYXNvbiBmb3Igc3VjaCBiZWhhdmlvdXIgKHNlYXJjaGVzIHNvbWUgc3R1
ZmYgZnJvbQo+Pj4gbmV0d29yayBldGMpLgo+PiAKPj4gVGhlcmUgZXhpc3QgMiBwcm9ibGVtcyBp
biB0aGUgcW1pIHByb3RvIGhhbmRsZXI6Cj4+IAo+PiAxLiBTZXR0aW5nIHRoZSBwbG1uIHRvICdh
dXRvJyB3aWxsIGltcGxpY2l0bHkgbGVhZCB0byBhIChkZWxheWVkKQo+PiBuZXR3b3JrIHJlLXJl
Z2lzdHJhdGlvbiwgd2hpY2ggY291bGQgZnVydGhlciBsZWFkIHRvIHNvbWUgdGltaW5nCj4+IHJl
bGF0ZWQgaXNzdWVzIGluIHRoZSBxbWkgcHJvdG8gaGFuZGxlci4KPj4gTGV0IG1lIGV4cGxhaW4g
dGhpcyBpbiBtb3JlIGRldGFpbDoKPj4gQWZ0ZXIgc3VjY2Vzc2Z1bGx5IGNhbGxpbmcgdGhlIHVx
bWkgLS1zZXQtcGxtbiAoYXV0bykgY29tbWFuZCBpdCB0YWtlcwo+PiB1cCB0byA1IChvciBtYXli
ZSBldmVuIG1vcmUpIHNlY29uZHMgdW50aWwgdGhlIG1vZGVtIGRldGFjaGVzIGZyb20KPj4gbmV0
d29yawo+PiBhbmQgc3RhcnQgc2VhcmNoaW5nIGZvciBuZXcgcmVnaXN0cmF0aW9uLgo+PiAKPj4g
SW4gdGhlIG1lYW50aW1lIHRoZSBwcm90byBoYW5kbGVyIGdvZXMgdGhyb3VnaCB0aGUgbmV4dCBz
dGVwcwo+PiAoIldhaXRpbmcgZm9yCj4+IG5ldHdvcmsgcmVnaXN0cmF0aW9uIiwgIlN0YXJ0IG5l
dHdvcmsgJGludGVyZmFjZSIgZXRjLikuCj4+IAo+PiBJIGhvcGUgeW91IGNhbiBzZWUgd2VyZSB0
aGlzIGxlYWRzIHRvLgo+PiAKPj4gVGhpcyBpcyByZWFsbHkgYSBwcm9ibGVtIGluIFJvYW1pbmcg
c2NlbmFyaW9zLCB3aGVyZSB0byBwcm92aWRlciBtYXliZQo+PiBpcwo+PiBzd2l0Y2hlZCBhZnRl
ciB0aGUgcmUtcmVnaXN0cmF0aW9uLgo+IAo+IAo+IEZXSVcsIEkgYWxzbyBiZWxpZXZlIHRoaXMg
aXMgYSByZWFsIHByb2JsZW0uCj4gCj4gVGhlIG1vZGVtIGZpcm13YXJlIGlzbid0IGFsd2F5cyBz
bWFydC4gIEl0IHdpbGwgImRvIHdoYXRldmVyIHRvbGQiLCAKPiBldmVuCj4gaWYgaXQgaXMgYSBj
b21wbGV0ZWx5IHVubmVjZXNzYXJ5IGRlLXJlZ2lzdHJhdGlvbiwgbmV0d29yayBzY2FuIGFuZAo+
IHJlLXJlZ2lzdHJhdGlvbi4KPiAKPiBXZSBjYW4gYmUgc21hcnRlciB0aGFuIHRoYXQuICBXZSBz
aG91bGQgYXZvaWQgY2hhbmdpbmcgYW55IHBlcnNpc3RlbnQKPiAoaW4gbW9kZW0gbnZyYW0pIHNl
dHRpbmcgcmVsYXRlZCB0byBuZXR3b3JrIHJlZ2lzdHJhdGlvbiwgdW5sZXNzCj4gYWJzb2x1dGVs
eSBuZWNlc3NhcnkuCj4gCj4+IDIuIFRoZSBwbG1uIHNldHRpbmcgaXMgcGVybWFuZW50bHkgc2F2
ZWQgaW4gdGhlIHd3YW4gbW9kZW06Cj4+IFRoaXMgbGVhZHMgdG8gdGhlIHByb2JsZW0sIHRoYXQg
aWYgeW91IHN3aXRjaCBiYWNrIGZyb20gbWFudWFsIHBsbW4KPj4gc2VsZWN0aW9uCj4+IHRvIGF1
dG8gbW9kZSB5b3UgaGF2ZSB0byBzZXQgaXQgZXhwbGljaXRseSB0byAnYXV0bycuCj4gCj4gWWVz
LCB0aGUgY3VycmVudCBoYW5kbGVyIHdpbGwgdXNlIHdoYXRldmVyIGlzIHN0b3JlZCBpbiB0aGUg
bW9kZW0gCj4gdW5sZXNzCj4gJ3BsbW4nIGlzIGV4cGxpY3RseSBzZXQuICBUaGlzIGlzIHZlcnkg
Y29uZnVzaW5nIGlmIHlvdSBzZXQgJ3BsbW4nCj4gdGVtcG9yYXJpbHksIHdoZXRoZXIgaXQgaXMg
Zm9yIHJvYW1pbmcgb3IganVzdCBleHBlcmltZW50aW5nLiBVc2VycyAKPiB3aWxsCj4gcmlnaHRm
dWxseSBhc3N1bWUgdGhhdCBhZGRpbmcgYW5kIHRoZW4gcmVtb3ZpbmcgJ3BsbW4nIG1lYW5zICdu
bwo+IGNoYW5nZScuCj4gCj4gRXZlcnl0aGluZyBpbiB0aGUgcW1pIHByb3RvIGhhbmRsZXIgc2hv
dWxkIHRha2UgaW50byBhY2NvdW50IHRoYXQKPiBzZXR0aW5ncyBtaWdodCBiZSBzdG9yZWQgaW4g
dGhlIG1vZGVtIG52cmFtLiAgT3B0aW9uYWwgc2V0dGluZ3MgbmVlZCBhbgo+IGV4cGxpY2l0IGRl
ZmF1bHQsIGFuZCBzaG91bGQgYWx3YXlzIGJlIHZlcmlmaWVkIGFnYWluc3QgdGhlIHZhbHVlIAo+
IHN0b3JlZAo+IGluIHRoZSBtb2RlbS4KPiAKPiBJIGJlbGlldmUgdGhlICdwbG1uJyBkZWZhdWx0
IHNob3VsZCBiZSAnYXV0bycuIEJ1dCB3ZSBjYW4gb25seSBkbyB0aGF0Cj4gaWYgd2UgZmlyc3Qg
YWRkIHRoZSBsb2dpYyB0byB2ZXJpZnkgdGhlIGN1cnJlbnQgc2V0dGluZyBhbmQgYXZvaWQgYW55
Cj4gdW5uZWNlc3NhcnkgJ3VxbWkgLS1zZXQtcGxtbicgY29tbWFuZHMuCj4gCj4gCj4gCj4gQmrD
uHJuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
