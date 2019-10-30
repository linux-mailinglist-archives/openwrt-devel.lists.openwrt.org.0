Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86100E9EAF
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 16:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+v/My4uG/aXKn5JAxpAb027wROrONhuNwPgeGqVKuWw=; b=lbOaS+5pNbOhDP11O8bBVDrS+
	NMiF+eYngo+kE6E/9PPnJasVR+W/Klbj6CnE+lu1ftEWKTZwdwekJfUcKZpxG/PLGvXlESLwWH7Rj
	nqgunhJccKOHKw8M3pv2mlmaZAI5+48Y9YdKff2WVJrUH58ClNIz2RkVVlq1kkPaCLSujgtikWHJW
	DZNUpBqToVfZ1263SXo2S3bF4udQDbr+a7w8NimHxaJ4/U7CYnufhQmO+vZIJAINSe2c7ZMFrSDkj
	oo3SfK/5NyAJfOLwA5SRqPnbUGfGyJMeoQv5+Z2CA51CQIF5oYz1nblwH9XcozeoZBe/VzK+aCM5P
	nvTlzhNBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpi3-0000ov-Sa; Wed, 30 Oct 2019 15:16:31 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpht-0000o5-Lm
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 15:16:23 +0000
Received: from JKLETSKY-MBP15.local (portal.bevandjeff.com [206.189.65.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 92CD13A37E;
 Wed, 30 Oct 2019 08:15:49 -0700 (PDT)
To: Daniel Danzberger <daniel@dd-wrt.com>, openwrt-devel@lists.openwrt.org
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-2-daniel@dd-wrt.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <933b5585-5290-5372-6702-1b9f2cf31874@allycomm.com>
Date: Wed, 30 Oct 2019 08:15:49 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191030112726.13106-2-daniel@dd-wrt.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_081621_709841_64AB61D3 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ipq40xx: Add gigadevice nandspi
 flash driver
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

T24gMTAvMzAvMTkgNDoyNyBBTSwgRGFuaWVsIERhbnpiZXJnZXIgd3JvdGU6Cgo+IFRoaXMgcGF0
Y2ggYWRkcyBzdXBwb3J0IGZvciBHaWdhZGV2aWNlIFNQSSBOQU5EIGRldmljZSB0byB0aGUgbXQy
OWYgc3RhZ2dpbmcgZHJpdmVyLgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIERhbnpiZXJnZXIg
PGRhbmllbEBkZC13cnQuY29tPgo+IC0tLQo+ICAgLi4ucG9ydC1naWdhZGV2aWNlLW5hbmRzcGkt
Zmxhc2gtZGV2aWNlLnBhdGNoIHwgMTc3OCArKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNo
YW5nZWQsIDE3NzggaW5zZXJ0aW9ucygrKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9s
aW51eC9pcHE0MHh4L3BhdGNoZXMtNC4xOS80MDAtbXRkLW5hbmQtc3VwcG9ydC1naWdhZGV2aWNl
LW5hbmRzcGktZmxhc2gtZGV2aWNlLnBhdGNoCj4KPgo+IFsuLi5dCgoKSXMgdGhlcmUgYSByZWFz
b24gd2h5IHRoZSB1cHN0cmVhbSBTUEktTkFORCBmcmFtZXdvcmsgaXNuJ3QgYmVpbmcgdXNlZD8K
ClRoaXMgaGFzIGJlZW4gZGVtYW5kZWQgb2YgdGhlIGF0aDc5IHRhcmdldCAoc2VlLCBmb3IgZXhh
bXBsZQpodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMTQyOCNpc3N1ZWNv
bW1lbnQtNDQxNTk0NDAxKQoKYW5kIGlzIGF2YWlsYWJsZSB0byB0aGUgaXBxNDB4eCB0YXJnZXQg
YW5kIGFwcGVhcnMgdG8gYWxyZWFkeSBiZSBpbiB1c2UgYnk6CgogwqAgcWNvbS1pcHE0MDE4LXJ0
LWFjNTh1LmR0cwogwqAgcWNvbS1pcHE0MDE4LWVhNjM1MHYzLmR0cwogwqAgcWNvbS1pcHE0MDE4
LWFwMTIwYy1hYy5kdHMKIMKgIHFjb20taXBxNDAxOC1qYWxhcGVuby5kdHMKCgoKRnVydGhlciwg
dGhlIG10MjlmIGRyaXZlciBoYXMgYmVlbiByZW1vdmVkIGZyb20gdXBzdHJlYW0gTGludXgKCmNv
bW1pdCA2NDdhZDQ5Y2E2NzIKQXV0aG9yOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxv
bkBib290bGluLmNvbT4KRGF0ZTrCoMKgIE1vbiBPY3QgMjIgMjI6MTA6NTkgMjAxOCArMDIwMAoK
IMKgwqDCoCBzdGFnaW5nOiBSZW1vdmUgdGhlIG10MjlmX3NwaW5hbmQgZHJpdmVyCgogwqDCoMKg
IEEgbmV3IFNQSSBOQU5EIHN1YnN5c3RlbSBoYXMgYmVlbiBhZGRlZCBpbiBkcml2ZXJzL210ZC9u
YW5kL3NwaS8gYW5kCiDCoMKgwqAgTWljcm9uJ3MgTVQyOUYgZGV2aWNlcyBhcmUgbm93IHN1cHBv
cnRlZCBpbgogwqDCoMKgIGRyaXZlcnMvbXRkL25hbmQvc3BpL21pY3Jvbi5jLgoKIMKgwqDCoCBS
ZW1vdmUgdGhlIG9sZCBkcml2ZXIuCgoKCgpUaGUgc2V0IG9mIFNQSS1OQU5EIGNoaXBzIHN1cHBv
cnRlZCBieSBMaW51eCA1LjMgaGFzIGFscmVhZHkgYmVlbgpiYWNrcG9ydGVkIHRvIE9wZW5XcnQg
YG1hc3RlcmAsIGluY2x1ZGluZzsgR2lnYURldmljZSwgTWFjcm9uaXgsCk1pY3JvbiwgUGFyYWdv
biwgVG9zaGliYSwgYW5kIFdpbmJvbmQuCgoKY29tbWl0IGI5ZDU4ZjdlMDYKQXV0aG9yOiBKZWZm
IEtsZXRza3kgPGdpdC1jb21taXRzQGFsbHljb21tLmNvbT4KRGF0ZTrCoMKgIFRodSBPY3QgMjQg
MDk6NTQ6MTEgMjAxOSAtMDcwMAoKIMKgwqDCoCBrZXJuZWw6IG10ZDogc3BpbmFuZDogQmFja3Bv
cnQgY2hpcCBkZWZpbml0aW9ucwoKIMKgwqDCoCBnZW5lcmljOiBBZGQvcmVuYW1lIHBhdGNoZXMg
Zm9yIHVwc3RyZWFtIGNvbnNpc3RlbmN5CgogwqDCoMKgIGlwcTQweHg6IGdlbmVyaWMtbGV2ZWwg
cGF0Y2ggcmVwbGFjZXMgc2FtZS1zb3VyY2UgcGF0Y2hlcy00LjE5LwowODItdjQuMjAtbXRkLXNw
aW5hbmQtd2luYm9uZC1BZGQtc3VwcG9ydC1mb3ItVzI1TjAxR1YucGF0Y2gKCiDCoMKgwqAgVGhl
IFNQSS1OQU5EIGZyYW1ld29yayBmcm9tIExpbnV4IHVzZXMgY29tbW9uIGRyaXZlciBjb2RlIHRo
YXQgaXMgdGhlbgogwqDCoMKgICJ0dW5lZCIgYnkgYSB0aW55IHN0cnVjdCBvZiBjaGlwLXNwZWNp
ZmljIGRhdGEgdGhhdCBkZXNjcmliZXMKIMKgwqDCoCBhdmFpbGFibGUgY29tbWFuZHMsIHRpbWlu
ZywgYW5kIGxheW91dCAoZGF0YSBhbmQgT09CIGRhdGEpLiBTZXZlcmFsCiDCoMKgwqAgbWFudWZh
Y3R1cmVycyBhbmQgY2hpcHMgaGF2ZSBiZWVuIGFkZGVkIHNpbmNlIDQuMTksIHNldmVyYWwgb2Yg
d2hpY2gKIMKgwqDCoCBhcmUgdXNlZCBpbiBkZXZpY2VzIGFscmVhZHkgc3VwcG9ydGVkIGJ5IE9w
ZW5XcnQgKHR5cGljYWxseSB3aXRoIG5vIG9yCiDCoMKgwqAgImxlZ2FjeSIgYWNjZXNzIHRvIHRo
ZWlyIE5BTkQgbWVtb3J5KS4gVGhpcyBjb21taXQgY2F0Y2hlcyB1cCB0aGUKIMKgwqDCoCBzdXBw
b3J0ZWQtY2hpcCBkZWZpbml0aW9ucyB0aHJvdWdoIExpbnV4IDUuMi1yYzYgYW5kIGxpbnV4L25l
eHQuCgogwqDCoMKgIFRoZSBkcml2ZXIgaXMgb25seSBjb21waWxlZCBmb3IgcGxhdGZvcm1zIHdp
dGggQ09ORklHX01URF9TUElfTkFORD15LgogwqDCoMKgIFRoaXMgcHJlc2VudGx5IGluY2x1ZGVz
IGlwcTQweHggYW5kIHBpc3RhY2hpbywgd2l0aCB0aGUgYWRkaXRpb24gb2YKIMKgwqDCoCBhdGg3
OS1uYW5kIGluIHRoZXNlIGNvbW1pdHMgKGFuZCBub3QgYXRoNzktZ2VuZXJpYyBvciBhdGg3OS10
aW55KS4KCiDCoMKgwqAgVXBzdHJlYW0gcGF0Y2hlcyByZWZyZXNoZWQgYWdhaW5zdCA0LjE5Ljc1
CgogwqDCoMKgIEJ1aWxkLXRlc3RlZC1vbjogaXBxNDB4eAogwqDCoMKgIFJ1bi10ZXN0ZWQtb246
IGF0aDc5LW5hbmQKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
