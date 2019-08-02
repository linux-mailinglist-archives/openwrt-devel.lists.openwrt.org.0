Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5FF7FEB4
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 18:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7PWPaaCozYoKxcX/MTvqLxKhumc97RqY9ftgzSimXsk=; b=eT6J0AadbHVeRX7BLaWZ0CQnf
	wPs4B/jL18pIO5vFyX+N5lYzDfIOEc66LmBSEtUWIJm5Q8pmYtNyDOJNtKM43mD0iQTBR/QHpdmKy
	PFHXAMdTLImzggSr41xkt+KC6P8R7jW9qpX/fSs/Tt6wC8guhy7e2C+3gfjWJBWphufO+BZ+LN7lC
	cXXuRi1jB8UHdb9zAGAi2cCRRAUwBBbacb+2r4gBjErautjt9txMn1GEHWlREsvmeycI5mZ2rI1fi
	eHXxLWnwn5JBudEGT496m4qOCO80EKKFUEnChaw/G6l6n9NMbyd8k6kCFsfQwo7EyOAWoWedSRpCe
	TNpA0PwbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htaZx-0002Qe-RF; Fri, 02 Aug 2019 16:38:53 +0000
Received: from vds2011x11.startdedicated.de ([62.138.18.229]
 helo=mail.softart-ge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htaZr-0002Q1-Ec
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 16:38:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.softart-ge.com (Postfix) with ESMTP id F2CB8C0558
 for <openwrt-devel@lists.openwrt.org>; Fri,  2 Aug 2019 18:38:40 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at softart-ge.com
Received: from mail.softart-ge.com ([127.0.0.1])
 by localhost (softart-ge.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o5fP-4y3yYJR for <openwrt-devel@lists.openwrt.org>;
 Fri,  2 Aug 2019 18:38:37 +0200 (CEST)
Received: from [192.168.182.2] (ip-84-119-114-184.unity-media.net
 [84.119.114.184])
 by mail.softart-ge.com (Postfix) with ESMTPA id 0822BC0256
 for <openwrt-devel@lists.openwrt.org>; Fri,  2 Aug 2019 18:38:36 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <20190723133717.20010-1-ynezz@true.cz>
 <8646063f-e4eb-f32f-381e-6fa2a847d0f8@hauke-m.de>
 <4d6009e6-090b-c513-aaa1-919dcd21a162@iki.fi>
 <539D9517-E258-4906-978F-99241CCF11C4@darbyshire-bryant.me.uk>
From: Reiner Karlsberg <karlsberg@softart-ge.com>
Message-ID: <30819471-510c-d5f8-be64-4f4c1b1cbaf0@softart-ge.com>
Date: Fri, 2 Aug 2019 18:38:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <539D9517-E258-4906-978F-99241CCF11C4@darbyshire-bryant.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_093847_790233_7F1F6BFF 
X-CRM114-Status: GOOD (  17.66  )
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

QWx0aG91Z2ggbm90IGEgZGV2ZWxvcGVyIG9mIG9wZW53cnQgaXRzZWxmLCBidXQgYSBoYXBweSAo
PykgdXNlciwgSSBoYXZlIHRvIGFncmVlIHRvIHRoZSBzdGF0ZW1lbnQgYmVsb3cuCgpQUk9DRD0x
IGRlZmF1bHQgaXMgYSBOT0dPIGZvciBtZS4KClNpbXBsZSByZWFzb24sYXMgbWVudGlvbmVkIGFs
cmVhZHk6IFNvZnR3YXJlLCB3aGljaCBpcyBub3QgZG9jdW1lbnRlZCwgZG9lcyBub3QgZXhpc3Qu
CldoaWNoIGlzIGEgcmVxdWlyZW1lbnQsIHdlIGhhZCB0byBvYmV5IHRvIGFscmVhZHkgaGFsZiBh
IGNlbnR1cnkgYWdvLiBXaGVuIEkgd3JvdGUgbXkgZmlyc3QgQXNzZW1ibGVyIGNvZGUuCgpGb3Ig
bWUsIHRoaXMgaXMgYW5vdGhlciBzdGVwIG9mIG9wZW53cnQgaW50byBibG9hdHdhcmUsIGFzIGl0
IGJlY29tZXMgbW9yZSBhbmQgbW9yZSAib2JmdXNjYXRlZCIsCnRoZSBzaW1wbGUgdXNlciBsaWtl
IG1lIG5vdCBnaXZpbmcgYW55IGlkZWEsIGhvdyBpdCBpcyBzdXBwb3NlZCB0byB3b3JrLgoKV2hp
Y2ggYnJlYWtzIGFub3RoZXIgb2xkIHByaW5jaXBsZSBvZiBzb2Z0d2FyZSBkZXZlbG9wbWVudDog
RWdvbGVzcyBwcm9ncmFtbWluZy4KTm90IG9ubHkgdGhlIGNvZGVyIHNob3VsZCB1bmRlcnN0YW5k
LCBob3cgaXQgd29ya3MuCgpPcGVuIFNvdXJjZSBpcyBoZWFkaW5nIGludG8gQ2xvc2VkIFNvdXJj
ZS4KQmFjayB0byB0aGUgcm9vdHMuCgoKTXkgZmV3IGNlbnRzLgoKUmVpbmVyIEthcmxzYmVyZwoK
CgoKCgoKQW0gMDIuMDguMjAxOSB1bSAxODoxOCBzY2hyaWViIEtldmluICdsZGlyJyBEYXJieXNo
aXJlLUJyeWFudDoKPiAKPiAKPj4gT24gMiBBdWcgMjAxOSwgYXQgMTY6MDAsIEhhbm51IE55bWFu
IDxoYW5udS5ueW1hbkBpa2kuZmk+IHdyb3RlOgo+Pgo+PiBIYXVrZSBNZWhydGVucyBraXJqb2l0
dGkgMi44LjIwMTkga2xvIDE3LjQyOgo+Pj4gT24gNy8yMy8xOSAzOjM3IFBNLCBQZXRyIMWgdGV0
aWFyIHdyb3RlOgo+Pj4+IFRyYW5zaXRpb24gcGVyaW9kIGZvciBpbml0IHNjcmlwdCBtaWdyYXRp
b24gd2FzIGxvbmcgZW5vdWdoLCBsZXQncwo+Pj4+IG1ha2UgVVNFX1BST0NEPTEgZGVmYXVsdCBu
b3cgc28gdGhlcmUncyBlbm91Z2ggdGltZSB0byBjb252ZXJ0IHRoZQo+Pj4+IHJlbWFpbmluZyBz
ZXJ2aWNlcy9pbml0IHNjcmlwdHMgZm9yIHRoZSBuZXh0IHJlbGVhc2UuCj4+Pj4KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+Pj4+IC0tLQo+Pj4+ICAg
cGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2V0Yy9yYy5jb21tb24gfCAxMTMgKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tLQo+Pj4+ICAgMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKyksIDY2
IGRlbGV0aW9ucygtKQo+Pj4+Cj4+PiBEbyB5b3Uga25vdyBob3cgbWFueSBwYWNrYWdlcyBpbiB0
aGUgcGFja2FnZSBmZWVkIGFuZCB0aGUgbWFpbgo+Pj4gcmVwb3NpdG9yeSBhcmUgc3RpbGwgbm90
IHVzaW5nIHByb2NkPwo+Pj4KPj4+IEV4dGVybmFsIHJlcG9zaXRvcmllcywgbm90IHRoZSBwYWNr
YWdlIGZlZWQsIHdpbGwgcHJvYmFibHkgYmUgYWZmZWN0ZWQKPj4+IG1vc3QsIGJ1dCBJIHRoaW5r
IHdlIGRvIG5vdCBoYXZlIHRvIGNhcmUgYW5kIHRoZXJlIHdlcmUgbWFueSB5ZWFycyB0bwo+Pj4g
Y29udmVydC4KPj4+Cj4+PiBBY2tlZC1ieTogSGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0u
ZGU+Cj4+Pgo+Pj4gSGF1a2UKPj4+Cj4+Cj4+IEkgZG8gbm90IHJlbWVtYmVyIHNlZWluZyBldmVy
IGEgZ2VuZXJhbCBjYWxsIGZvciBjb252ZXJ0aW5nIHRoZSBvbGQgcGFja2FnZXMgdG8gdXNpbmcg
cHJvY2QuIEluIHRoYXQgc2Vuc2UgdGhpcyBwcm9wb3NlZCBjaGFuZ2UgdG8gc3dpdGNoIHRoZSBk
ZWZhdWx0IGNvbWVzIGEgYml0IHN1cnBpc2UuCj4+Cj4+IFF1aWNrIHNlYXJjaCBpbiB0aGUgcGFj
a2FnZXMgZmVlZCByZXBvIHJldmVhbHMgdGhhdCB0aGVyZSBhcmUgMjgxIGluc3RhbmNlcyBvZiAi
L2V0Yy9yYy5jb21tb24iIGFuZCBvbmx5IDIwNSBpbnN0YW5jZXMgb2YgVVNFX1BST0NELiBTbywg
bGlrZWx5IGFib3V0IDc1IHBhY2thZ2VzIGluIHRoZSBwYWNrYWdlcyBmZWVkIHJlcG8gb25seSBh
cmUgdXNpbmcgdGhlIG9sZCBzeW50YXggd2l0aG91dCBwcm9jZC4KPj4KPj4gSGFzIGEgZGVjaXNp
b24gYmVlbiBtYWRlIHRvIGRlY2xhcmUgdGhlIG9sZC1zdHlsZSBpbml0IGZpbGUgaW52YWxpZD8g
V2lsbCBpdCBiZSBwb3NzaWJsZSB0byBzdGlsbCB1c2UgdGhlIHN5bnRheD8gV2hhdCBpcyB0aGUg
bmV3ICJvdmVycmlkZSIgdG8gaW5kaWNhdGUgdGhlIHVzYWdlIG9mIHRoZSBvbGQgc3ludGF4Pwo+
Pgo+PiBPciB3aWxsIHRoZSBwcm9wb3NlZCBjaGFuZ2UgZGlzYWJsZSB0aGUgcGFja2FnZXMgdXNp
bmcgdGhlIG9sZCBpbml0IGZpbGUgc3ludGF4IHRvdGFsbHk/Cj4gCj4gTXkgcmVhZGluZyBvZiB0
aGUgY2hhbmdlIGlzIHRoYXQgb2xkIHN5bnRheCBpcyBiYXNpY2FsbHkgZHJvcHBlZC4KPiAKPiBX
aXNoIGZvcjogIFdlIHNob3VsZCBiZSB1c2luZyBwcm9jZCBhbmQgdG8gdGhhdCBlbmQgSSBzdGFy
dGVkIGxvb2tpbmcgYXQgY29udmVydGluZyB0aGUg4oCYaW1wb3J0YW50IHRvIG1l4oCZIHBhY2th
Z2VzOiBkZG5zICYgbWluaXVwbnBkLgo+IAo+IFJlYWwgbGlmZTogRG9jdW1lbnRhdGlvbiBpcyBj
b25mdXNpbmcgdnMgcmVhbCBsaWZlIHdoaWNoIGlzIGp1c3QgcGxhaW4gZGlmZmVyZW50LiBTZWUg
YWRibG9jayBzdGFydHVwIHNjcmlwdCBhcyBhbiBleGNlbGxlbnQgZXhhbXBsZSBvZiAqKioqIHRo
YXQganVzdCBpc27igJl0IGRvY3VtZW50ZWQuCj4gCj4gSSBnYXZlIHVwIGFuZCBsZWZ0IHRoZSBw
cm9jZXNzIGZlZWxpbmcgdmVyeSBhbmdyeS4KPiAKPiAKPiBLREIKPiAKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
