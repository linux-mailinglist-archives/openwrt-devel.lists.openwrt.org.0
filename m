Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FDB13A85
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 16:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLFJ+M8s9EkQvQ5N7eKIi3fY+2kBY2na6ML/kA5yplM=; b=mXcqjEp9Z+gzau
	GT7x1cVI9lo/FFu5AdAAmvXaF9exPXQI5XYdLhSW6xu/pvo6EgVacfn8GYn8OWniN19kyRzFBBbr8
	o2fbM/t5ftom4ztMWVIyzuzqxF+8BUmQrRM/gvmwOV3qvAjvGAtubVHtA1RUHAd7+Ndw86Oyd20wT
	Di/dBQLs1FA0/9CYfCd+N0z6KfNK/uvLJQcou6WiOp+iLnyPDDQVwSY3G+tIiX5ix81+jyK77t9zz
	0qE77DvHtJFqDkV4TJXw68+6Q4k6utTHlNfgW74BmOnjKjeKpBN6KAxLMp0GbByBe453DK8gEoPsG
	pTak1QJRCadyD5xhDg4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvEB-0003rc-Bj; Sat, 04 May 2019 14:01:23 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvE4-0003qW-CE
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 14:01:18 +0000
Received: (wp-smtpd smtp.tlen.pl 32716 invoked from network);
 4 May 2019 16:01:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556978473; bh=cfFLYCQOjhCK0z1FNpaZCXYcqfVMUq3+xOTDVHBVnC8=;
 h=Subject:To:Cc:From;
 b=SjChE/Jwaod2H/7j8hzuBaHI+/MJtuEZnp9bbpRMgzERzE3/KwXI6t1gV0CDtwjRM
 MkM+NX+1VoRvsoYrXCxrx9GxQyeovEAJ/y63Umlux663RSJeMfo3qQNt0XSm44uNhx
 kwDpJ0B1R26y+ylU4+N5eABk1y9cCCczqjwpxhTs=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 4 May 2019 16:01:12 +0200
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Hauke Mehrtens <hauke@hauke-m.de>
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-7-tomek_n@o2.pl>
 <69de5f77-e694-d2bd-9c67-a94173c91243@hauke-m.de>
 <20190503223803.GK71477@meh.true.cz>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <d847ec33-e2b5-b81a-e6fc-b2d98ff23635@o2.pl>
Date: Sat, 4 May 2019 16:01:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503223803.GK71477@meh.true.cz>
Content-Language: en-US
X-WP-MailID: 75d2399629fb105acdffcd36dc215593
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [0bOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_070116_733833_B1AB3A96 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 6/8] mvebu: add vendor to device names
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgSGF1a2UsIFBldHIsCgpXIGRuaXUgMDQuMDUuMjAxOSBvwqAwMDozOCwgUGV0ciDFoHRldGlh
ciBwaXN6ZToKPiBIYXVrZSBNZWhydGVucyA8aGF1a2VAaGF1a2UtbS5kZT4gWzIwMTktMDUtMDQg
MDA6MDA6MjVdOgo+IAo+IEhpLAo+IAo+PiBPbiA1LzEvMTkgNzo0MiBQTSwgVG9tYXN6IE1hY2ll
aiBOb3dhayB3cm90ZToKPj4+IFJlcGxhY2UgU29DIG5hbWVzIHdpdGggdmVuZG9ycyBpbiBkZXZp
Y2UgbmFtZXMsIGluIGZldyBjYXNlcywgYW5kIGFkZAo+Pj4gdmVuZG9yIHRvIGRldmVsb3BlbW50
IGJvYXJkcyBmb3IgZWFzaWVyIGlkZW50eWZ5aW5nIHBvdGVudGlhbCBmaXJtd2FyZSB0bwo+Pj4g
Zmxhc2guCj4+Cj4+IFdpbGwgc3lzdXBncmFkZSBzdGlsbCB3b3JrIGFmdGVyIHRoaXMgcmVuYW1l
PyBJc24ndCB0aGVyZSBzb21lIHNjcmlwdAo+PiB3aGljaCBjaGVja3MgaWYgdGhlIGltYWdlIGlz
IGNvbXBhdGlibGUgd2l0aCB0aGUgY3VycmVudGx5IGluc3RhbGxlZCBpbWFnZT8KPiAKPiBTVVBQ
T1JURURfREVWSUNFUyB2YXJpYWJsZSBpcyB1c2VkIGZvciB0aGlzLCBzbyBpdCdzIHByb2JhYmx5
IGdvaW5nIHRvIHdvcmssCj4gYnV0IGlmIHdlJ3JlIHdpbGxpbmcgdG8gcmVuYW1lIGl0LCBpdCBt
aWdodCBiZSBhIGdvb2QgaWRlYSB0byBmb2xsb3cgdGhlIERUCj4gY29tcGF0aWJsZSBuYW1pbmcg
c2NoZW1lIGFzIHVzZWQgaW4gb3RoZXIgdGFyZ2V0cy4KPiAKPiBTbyBpbnN0ZWFkIG9mIHRoaXMg
aW4gcGF0Y2ggNC84Ogo+IAo+ICAtICBTVVBQT1JURURfREVWSUNFUyA9ICQkKERFVklDRV9EVFMp
Cj4gICsgIFNVUFBPUlRFRF9ERVZJQ0VTID0gJCQoZmlyc3R3b3JkICQkKERFVklDRV9EVFMpKQo+
IAo+IFRvbWFzeiBzaG91bGQgYmUgZG9pbmcgZm9sbG93aW5nOgo+IAo+ICAtICBTVVBQT1JURURf
REVWSUNFUyA9ICQkKERFVklDRV9EVFMpCj4gICsgIFNVUFBPUlRFRF9ERVZJQ0VTID0gJChzdWJz
dCBfLCQoY29tbWEpLCQoMSkpCgpJZGVhbGx5IHRoYXQgd291bGQgYmUgdGhlIGNhc2UsIHVuZm9y
dHVuYXRlbHkgdGhlcmUgaXMgaW5jb25zaXN0ZW5jeSBpbiB0aGUgdXBzdHJlYW0KZHRzZXMsIGZv
ciBleGFtcGxlIChzdGFuZCBhZnRlciBteSBwYXRjaCByZW5hbWluZyBkZXZpY2UgbmFtZXMpOgoK
bGlua3N5cy13cnQxMjAwYWMgaGFzIGNvbXBhdGlibGUgbGlua3N5cyxjYWltYW4sCgptYXJ2ZWxs
LWFybWFkYS0zODUtZGItYXAgLT4gbWFydmVsbCxhMzg1LWRiLWFwCgptYXJ2ZWxsLWFybWFkYS0z
NzIwLWRiIC0+IG1hcnZlbGwsYXJtYWRhLTM3MjAtZGIKCm1hcnZlbGwtbWFjY2hpYXRvYmluIC0+
IG1hcnZlbGwsYXJtYWRhODA0MC1tY2JpbgoKbWFydmVsbC1hcm1hZGEtODA0MC1kYiAtPiBtYXJ2
ZWxsLGFybWFkYTgwNDAtZGIKCkFzIFlvdSBjYW4gc2VlIHRoaXMgZGlmZmVycyBhIGxvdC4gU28g
d2hhdCB3b3VsZCBiZSBiZXN0IGFwcHJvYWNoLCBmb2xsb3dpbmcKdXBzdHJlYW0gbmFtaW5nIG9y
IGtlZXAgaXQgYXMgaXMgb3IgZm9sbG93aW5nIHVwc3RyZWFtIHdoZXJlIHBvc3NpYmxlPwoKPiAK
PiBhcyBjdXJyZW50bHkgYmVpbmcgdXNlZCBpbiBhcG04MjF4eCwgYXRoNzksIGlwcTQweHgsIGlw
cTgwNngsIGtpcmt3b29kLCBsYW50aXEsCj4gb21hcCwgb3huYXMgYW5kIHJhbWlwcy4KPiAKPiBT
byB0aGlzCj4gCj4+PiAtZGVmaW5lIERldmljZS9hcm1hZGEtMzcyMC1kYgo+Pj4gK2RlZmluZSBE
ZXZpY2UvbWFydmVsbC1hcm1hZGEtMzcyMC1kYgo+IAo+IHdvdWxkIGJlY29tZQo+IAo+Pj4gLWRl
ZmluZSBEZXZpY2UvYXJtYWRhLTM3MjAtZGIKPj4+ICtkZWZpbmUgRGV2aWNlL21hcnZlbGxfYXJt
YWRhLTM3MjAtZGIKPiAKPiBhbmQgdGhpcwo+IAo+Pj4gLVRBUkdFVF9ERVZJQ0VTICs9IGFybWFk
YS0zNzIwLWRiCj4+PiArVEFSR0VUX0RFVklDRVMgKz0gbWFydmVsbC1hcm1hZGEtMzcyMC1kYgo+
IAo+IHdvdWxkIGJlY29tZSAKPiAKPj4+IC1UQVJHRVRfREVWSUNFUyArPSBhcm1hZGEtMzcyMC1k
Ygo+Pj4gK1RBUkdFVF9ERVZJQ0VTICs9IG1hcnZlbGxfYXJtYWRhLTM3MjAtZGIKPj4+IC1TVVBQ
T1JURURfREVWSUNFUyA6PSBtYXJ2ZWxsLGFybWFkYS0zNzIwLWRiCj4gCj4gYXMgdGhlIFNVUFBP
UlRFRF9ERVZJQ0VTIHZhcmlhYmxlIHdvdWxkIGJlIGF1dG9tYWdpY2FsbHkgc2V0IHRvIHRoZSBz
YW1lIHZhbHVlCj4gYnkgdGhlIGNvZGUgYWJvdmUsIGZvbGxvd2luZyB0aGUgRFJZIHByaW5jaXBs
ZS4KPiAKPiBJZiB0aGUgU1VQUE9SVEVEX0RFVklDRVMgdmFyaWFibGUgaXMgZ29pbmcgdG8gY2hh
bmdlIGFzIGZvciBleGFtcGxlIGhlcmU6Cj4gCj4+PiAtZGVmaW5lIERldmljZS9vcGVuYmxvY2tz
LWF4My00Cj4+PiArZGVmaW5lIERldmljZS9wbGF0aG9tZV9vcGVuYmxvY2tzLWF4My00Cj4+PiAg
ICBERVZJQ0VfRFRTIDo9IGFybWFkYS14cC1vcGVuYmxvY2tzLWF4My00Cj4+PiAtICBTVVBQT1JU
RURfREVWSUNFUyA6PSAkKDEpCj4+PiArICBTVVBQT1JURURfREVWSUNFUyA6PSBvcGVuYmxvY2tz
LWF4My00Cj4+PiAgICBCTE9DS1NJWkUgOj0gMTI4awo+Pj4gICAgUEFHRVNJWkUgOj0gMQo+Pj4g
ICAgSU1BR0VTICs9IGZhY3RvcnkuaW1nCj4+PiAgICBJTUFHRS9mYWN0b3J5LmltZyA6PSBhcHBl
bmQta2VybmVsIHwgcGFkLXRvICQkKEJMT0NLU0laRSkgfCBhcHBlbmQtdWJpCj4+PiAgICBERVZJ
Q0VfVElUTEUgOj0gUGxhdCdIb21lIE9wZW5CbG9ja3MgQVgzCj4+PiAgZW5kZWYKPj4+IC1UQVJH
RVRfREVWSUNFUyArPSBvcGVuYmxvY2tzLWF4My00Cj4+PiArVEFSR0VUX0RFVklDRVMgKz0gcGxh
dGhvbWVfb3BlbmJsb2Nrcy1heDMtNAo+IAo+IFRoZSBvbGQgYG9wZW5ibG9ja3MtYXgzLTRgIG5h
bWUgaGFzIHRvIGJlIGFkZGVkIGJ5IGZvbGxvd2luZyBjb25zdHJ1Y3Q6Cj4gCj4gIFNVUFBPUlRF
RF9ERVZJQ0VTICs9IG9wZW5ibG9ja3MtYXgzLTQKPiAKPiBpbiBvcmRlciB0byBzdXBwb3J0IHRo
ZSBvbGQgYW5kIG5ldyBuYW1pbmcgc2NoZW1lcywgc28gdGhlIFNVUFBPUlRFRF9ERVZJQ0VTCj4g
d291bGQgYWN0dWFsbHkgY29udGFpbiBgcGxhdGhvbWUsb3BlbmJsb2Nrcy1heDMtNCBvcGVuYmxv
Y2tzLWF4My00YCBhbmQgYWxsb3cKPiBzZWFtbGVzcyBzeXN1cGdyYWRlIGV4cGVyaWVuY2UuCj4g
Cj4gLS0geW5lenoKPiAKClJlZ2FyZHMKCi0tIApUTU4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
