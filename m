Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0195B3237A
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Jun 2019 15:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pdq/P67LeOGoiNZDgTZMMVHxobMRpqcAdOfvefYkjcs=; b=D7nuDY/ZeWlmEfoz4bcsfOuIs
	6737UqcUV28WLI42h7XjuimaucmGpyFEOlt94ay+2zIQtYUrusOMKDLZIlf5ApgvE4DgbR8Lbgcv3
	cyAqvTfvU83kATBJoD2zvc0N1spqSm0jFomgw+TCrUAtLk8vjZlPRvVerJmSXKDJVXSGYky7eWue9
	q4TIxnRy5ZdNJR8XlRNMq3I5P6ZV37+ECVY7G0uxh351RBy/34o3ABw/RJARrg2BAMmK3KAKiqgs5
	VNnRfb7YbGHsRxiahfgpaerdX43yxieVfoMoLfR/Cfp1HYd3Cpts8XysaVkS3DmCZsy1fceiAlVOS
	admQQFGPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXQzj-0005p3-Sg; Sun, 02 Jun 2019 13:57:55 +0000
Received: from [109.166.220.71] (helo=mail.insteeldesign.ro)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXQzd-0005oi-8H
 for openwrt-devel@lists.openwrt.org; Sun, 02 Jun 2019 13:57:51 +0000
Received: from [10.160.20.20] (unknown [86.123.153.39])
 by mail.insteeldesign.ro (Postfix) with ESMTPSA id AB4962218C51
 for <openwrt-devel@lists.openwrt.org>; Sun,  2 Jun 2019 16:50:36 +0300 (EEST)
To: openwrt-devel@lists.openwrt.org
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
 <CAKxU2N-XswSwUZHCLEAnoJ2Y_tkae2_KkZWzkC8ZP1G3k2fSmQ@mail.gmail.com>
 <20190528093748.GB13432@meh.true.cz>
From: Lucian Cristian <luci@powerneth.ro>
Message-ID: <17db12a5-4699-f99c-8b89-83b5970f26a3@powerneth.ro>
Date: Sun, 2 Jun 2019 16:50:37 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190528093748.GB13432@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_065749_573641_97A02638 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] 
 =?utf-8?q?=5BPATCH_0/4=5D_add_=CE=BCrngd=3A_true?=
 =?utf-8?q?_RNG_based_on_timing_jitter?=
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjguMDUuMjAxOSAxMjozNywgUGV0ciDFoHRldGlhciB3cm90ZToKPiBSb3NlbiBQZW5ldiA8
cm9zZW5wQGdtYWlsLmNvbT4gWzIwMTktMDUtMjcgMTk6MTk6NTNdOgo+Cj4gSGksCj4KPj4gVGVz
dGVkIHRoaXMgb24gYm90aCBtdDc2MjEgYW5kIFR1cnJpcyBPbW5pYS4gV29ya3MgcHJldHR5IHdl
bGwuIEluaXQKPj4gZ2V0cyBkb25lIGZhc3QuCj4gdGhhbmtzIGEgbG90IGZvciB0ZXN0aW5nLCBj
YW4geW91IHBsZWFzZSByZXBseSB3aXRoIHlvdXIgVGVzdGVkLWJ5IG5leHQgdGltZQo+IHNvIHRo
ZSBwYXRjaHdvcmsgY291bGQgYWRkIHRoaXMgdGFnIGF1dG9tYXRpY2FsbHkgdG8gdGhpcyBwYXRj
aD8KPgo+PiBUaGUgVHVycmlzIHBlb3BsZSBtaWdodCB3YW50IHNvbWV0aGluZyBsaWtlIHRoaXMg
b3IgdGhleSBuZWVkIHRvIGZpeCBoYXZlZ2VkCj4+IHRvIHJ1biBlYXJsaWVyLgo+IEkndmUgYmVl
biByZWNvbW1lbmRlZCBoYXZlZ2VkIG1hbnkgdGltZXMgKGJ5IHNvbWVvbmUgZnJvbSBuaWMuY3og
YXMgd2VsbCksIHNvCj4gbXkgaW5pdGlhbCBpZGVhIHdhcyB0byBzaW1wbHkgZ2l2ZSBpdCBhIGdv
IGFuZCBjcmVhdGUgdWhhdmVnZWQsIGJ1dCBJIHF1aWNrbHkKPiBjYW1lIHRvIHRoZSBjb25jbHVz
aW9uLCB0aGF0IGl0IHdvbid0IHdvcmsgZm9yIE9wZW5XcnQgZm9yIG1hbnkgcmVhc29ucywgd2hp
Y2gKPiBJJ3ZlIGFscmVhZHkgZm9yZ2V0LCBidXQgSSB0aGluayBpdCB3YXNuJ3QgdHJ1bHkgbXVs
dGlwbGF0Zm9ybSBzb2x1dGlvbiBkdWUgdG8KPiBzb21lIGNvbXBpbGVyL2Fzc2VtYmx5IG1hZ2lj
Lgo+Cj4gVGhlbiBJJ3ZlIHNpbXBseSBmb3VuZCBvdXQsIHRoYXQgaGF2ZWdlZCBpcyBubyBsb25n
ZXIgY29uc2lkZXJlZCBnb29kCj4gZW5vdWdoWzFdIGJ5IHRoZSBzZWN1cml0eSBjb21tdW5pdHk6
Cj4KPiAgIEFsc28gdGhlIHVzZSBvZiBgaGF2ZWdlZGAgaXMgcmVjb21tZW5kZWQsIHdoaWNoIGlz
IGEgYmFkIGlkZWEgYXMgdGhpcyBkYWVtb24KPiAgIGNhbiBjcmVhdGUgYmxvY2tpbmcgc2l0dWF0
aW9ucyBkdXJpbmcga2V5IGdlbmVyYXRpb24gZWZmZWN0aXZlbHkgY3JlYXRpbmcgYQo+ICAgZGVh
ZGxvY2sgYW5kIHRodXMgc2VjdXJpdHkgcHJvYmxlbXMuIGhhdmVnZWQncyBkZXNpZ24gaXMgZnJv
bSAyMDAyLCBpdCBoYXMKPiAgIG5ldmVyIGJlZW4gYXVkaXRlZCwgdGhlcmUncmUgb25seSBwYXBl
cnMgYnkgdGhlIG9yaWdpbmFsIGF1dGhvcnMgYXZhaWxhYmxlLgo+Cj4gRXZlbiBBbmRyZSBTZXpu
ZWMsIG9uZSBvZiB0aGUgbWFpbiBIQVZFR0UgYXV0aG9ycyBzdGF0ZWQgZm9sbG93aW5nWzJdOgo+
Cj4gICBIZSBhbHNvIHBvaW50ZWQgb3V0IGEgc2VjdXJpdHkgd2FybmluZzogd2l0aCBzb21lIFZN
cywgdGhlIGhhcmR3YXJlIGN5Y2xlcwo+ICAgY291bnRlciBpcyBlbXVsYXRlZCBhbmQgZGV0ZXJt
aW5pc3RpYywgYW5kIHRodXMgcHJlZGljdGlibGVbM10uIEhlIHRoZXJlZm9yZQo+ICAgZG9lcyBu
b3QgcmVjb21tZW5kIHVzaW5nIEhBVkVHRSBvbiB0aG9zZSBzeXN0ZW1zLgo+Cj4gc28gSSBzdGFy
dGVkIGxvb2tpbmcgYXQgb3RoZXIgb3B0aW9ucyBhbmQgbHVja2lseSBlbm91Z2gsIEkndmUgZm91
bmQgb3V0IGFib3V0Cj4gdGhpcyBLSVNTIGppdHRlciBSTkcuCj4KPiAxLiBodHRwczovL2xpc3Rz
LmNlcnQuYXQvcGlwZXJtYWlsL2FjaC8yMDE3LU1heS8wMDIyNTEuaHRtbAo+IDIuIGh0dHBzOi8v
Z2l0aHViLmNvbS9CZXR0ZXJDcnlwdG8vQXBwbGllZC1DcnlwdG8tSGFyZGVuaW5nL2NvbW1pdC9j
ZjdjZWY3YTg3MGMxYjc3MDg5YjFiZDYyMDlkZWQ2NTI1YjVhNGUwI2NvbW1pdGNvbW1lbnQtMjMw
MDYzOTIKPiAzLiBodHRwczovL3Rscy5tYmVkLm9yZy90ZWNoLXVwZGF0ZXMvc2VjdXJpdHktYWR2
aXNvcmllcy9wb2xhcnNzbC1zZWN1cml0eS1hZHZpc29yeS0yMDExLTAyCj4KPiAtLSB5bmV6ego+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAoKd29ya3MgZ29vZCBvbiBBdG9tIDMzMAoKZmlyc3QgYm9vdAoKZG1lc2cgfCBncmVwIHJhbmRv
bQoKYmVmb3JlCgpbwqDCoCAyOS4wNDMwOTddIHJhbmRvbTogZmFzdCBpbml0IGRvbmUKW8KgwqAg
NzYuNDY3MTE1XSByYW5kb206IGNybmcgaW5pdCBkb25lCgphZnRlcgoKW8KgwqDCoCAwLjAwMDAw
MF0gcmFuZG9tOiBnZXRfcmFuZG9tX2J5dGVzIGNhbGxlZCBmcm9tIApzdGFydF9rZXJuZWwrMHg2
ZC8weDNkZiB3aXRoIGNybmdfaW5pdD0wCgpbwqDCoMKgIDUuODk5Njc0XSByYW5kb206IGpzaG46
IHVuaW5pdGlhbGl6ZWQgdXJhbmRvbSByZWFkICg0IGJ5dGVzIHJlYWQpClvCoMKgwqAgNS45MzMw
MTJdIHJhbmRvbToganNobjogdW5pbml0aWFsaXplZCB1cmFuZG9tIHJlYWQgKDQgYnl0ZXMgcmVh
ZCkKW8KgwqDCoCA1Ljk1NzU3OF0gcmFuZG9tOiBqc2huOiB1bmluaXRpYWxpemVkIHVyYW5kb20g
cmVhZCAoNCBieXRlcyByZWFkKQpbwqDCoMKgIDYuOTY5OTAyXSB1cmFuZG9tX3JlYWQ6IDQgY2Fs
bGJhY2tzIHN1cHByZXNzZWQKW8KgwqDCoCA2Ljk2OTkwN10gcmFuZG9tOiBqc2huOiB1bmluaXRp
YWxpemVkIHVyYW5kb20gcmVhZCAoNCBieXRlcyByZWFkKQpbwqDCoCAxMC4wNDM5OThdIHJhbmRv
bToganNobjogdW5pbml0aWFsaXplZCB1cmFuZG9tIHJlYWQgKDQgYnl0ZXMgcmVhZCkKW8KgwqAg
MTAuNTUwMzAxXSByYW5kb206IG1rZnMuZjJmczogdW5pbml0aWFsaXplZCB1cmFuZG9tIHJlYWQg
KDE2IGJ5dGVzIHJlYWQpClvCoMKgIDExLjQyMDkyNV0gdXJhbmRvbS1zZWVkOiBTZWVkIGZpbGUg
bm90IGZvdW5kICgvZXRjL3VyYW5kb20uc2VlZCkKW8KgwqAgMTMuMzIxMjIyXSByYW5kb206IGNy
bmcgaW5pdCBkb25lCgpSZWdhcmRzCgpUZXN0ZWQtYnkgTHVjaWFuIENyaXN0aWFuIDxsdWNpYW4u
Y3Jpc3RpYW5AZ21haWwuY29tPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
