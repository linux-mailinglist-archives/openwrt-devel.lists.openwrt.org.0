Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0000EAF00F
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Sep 2019 18:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONo8GjjnEEdQyEN0AVvPh2TO/4v2VT9R4WMBwpP5XtU=; b=pba0Xzlv7IttKE
	a+DrDTMn5gyv38wHKLStJYmld9TeCTbdZxjxV8E0z2oU9g3sXvYTeEq78Zar2Wg5hre2qslEUz4g/
	2YhfyDulTf62VJ98vGgXnfJ2fpeZufDpCxwblPXrB6q/yGZdMPNmmrRdMbpQJ4FOcFJsZV4+OB0sd
	vfayxgIArF5ZpzUICEqgfKnourQiUdXDFFl9sfFMvGlH1SsdYZLJODO2LR/ET46a+ji8VwlJuVJEM
	NgKLXh/P6j/+03pc9Xt+PJDKNFDTFu9US+HCSIgxzEbRljHSfbVKAm4z9wyH1WlmvtVCGKoYI685T
	GWfl+vRyXpP6rtiC2irA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7jTz-0006v1-Vy; Tue, 10 Sep 2019 16:59:12 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7jTo-0006uP-6E
 for openwrt-devel@lists.openwrt.org; Tue, 10 Sep 2019 16:59:02 +0000
Received: (qmail 3300 invoked from network); 10 Sep 2019 16:58:51 -0000
Received: from localhost (HELO ?192.168.1.133?) (127.0.0.1)
 by achernar.uberspace.de with SMTP; 10 Sep 2019 16:58:51 -0000
To: Salvatore Mesoraca <salvatore@samknows.com>,
 openwrt-devel@lists.openwrt.org
References: <CA+OT2oE7MRfmzKjeyc=rFhWL-9ui-U+ttY+67j8sX2GPFmoibQ@mail.gmail.com>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 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
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <26548a1d-ef1c-b9b1-cbd1-254c563088f5@ironai.com>
Date: Tue, 10 Sep 2019 18:58:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CA+OT2oE7MRfmzKjeyc=rFhWL-9ui-U+ttY+67j8sX2GPFmoibQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_095900_523210_01B9EA3D 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] nftables: named counters broken on 18.06.4
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

Ck9uIDEwLjA5LjE5IDE3OjIwLCBTYWx2YXRvcmUgTWVzb3JhY2Egd3JvdGU6Cj4gSGksCj4gCj4g
SSdtIGV4cGVyaWVuY2luZyBhIHByb2JsZW0gd2l0aCBuZnRhYmxlcycgbmFtZWQgY291bnRlcnMg
d2l0aCBPcGVuV3J0IDE4LjA2LjQgb24gYSBOZXRHZWFyIFI3ODAwLgo+IFRoaXMgaXMgYW4gZXhh
bXBsZSBvZiB3aGF0IEkgZ2V0Ogo+IAo+ICMgdW5hbWUgLWEKPiBMaW51eCBPcGVuV3J0IDQuMTQu
MTMxICMwIFNNUCBUaHUgSnVuIDI3IDEyOjE4OjUyIDIwMTkgYXJtdjdsIEdOVS9MaW51eAo+ICMg
bmZ0IGZsdXNoIHJ1bGVzZXQKPiAjIG5mdCBhZGQgdGFibGUgaW5ldCBmaWx0ZXIKPiAjIG5mdCBh
ZGQgY291bnRlciBpbmV0IGZpbHRlciBteWNvdW50ZXIKPiAjIG5mdCBhZGQgY2hhaW4gaW5ldCBm
aWx0ZXIgb3V0cHV0IHsgdHlwZSBmaWx0ZXIgaG9vayBvdXRwdXQgcHJpb3JpdHkgMCBcOyB9Cj4g
IyBuZnQgYWRkIHJ1bGUgaW5ldCBmaWx0ZXIgb3V0cHV0IGNvdW50ZXIgbmFtZSBteWNvdW50ZXIK
PiBFcnJvcjogQ291bGQgbm90IHByb2Nlc3MgcnVsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9y
eQo+IGFkZCBydWxlIGluZXQgZmlsdGVyIG91dHB1dCBjb3VudGVyIG5hbWUgbXljb3VudGVyCj4g
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCj4gIyBu
ZnQgbGlzdCBydWxlc2V0Cj4gdGFibGUgaW5ldCBmaWx0ZXIgewo+IMKgIMKgIMKgIMKgIGNvdW50
ZXIgbXljb3VudGVyIHsKPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBwYWNrZXRzIDAgYnl0ZXMg
MAo+IMKgIMKgIMKgIMKgIH0KPiAKPiDCoCDCoCDCoCDCoCBjaGFpbiBvdXRwdXQgewo+IMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIHR5cGUgZmlsdGVyIGhvb2sgb3V0cHV0IHByaW9yaXR5IDA7IHBv
bGljeSBhY2NlcHQ7Cj4gwqAgwqAgwqAgwqAgfQo+IH0KPiAKPiBSdW5uaW5nIHRoZSBmYWlsaW5n
IGNvbW1hbmQgdXNpbmcgc3RyYWNlIEkgY2FuIHRlbGwgdGhhdCB0aGUgRU5PRU5UIGVycm9yIGlz
IHJlY2VpdmVkIGZyb20gdGhlIGtlcm5lbCB2aWEgTmV0bGluay4KPiBJdCdzIHNpbWlsYXIgdG8g
d2hhdCBJIGdldCBpZiBJIHRyeSB0byByZWZlcmVuY2UgYSBub24tZXhpc3RlbnQgY291bnRlciwg
YnV0ICJteWNvdW50ZXIiIGV4aXN0cy4KPiBJZiBJIHJlbW92ZSAibmFtZSBteWNvdW50ZXIiIGZy
b20gdGhlIGNvbW1hbmQgbGluZSwgaXQgd29ya3MuIE9mIGNvdXJzZSBpdCBjcmVhdGVzIGFuIGFu
b255bW91cyBjb3VudGVyLgo+IFRoZSBtZXNzYWdlIHNlbnQgdmlhIE5ldGxpbmsgbG9va3MgY29y
cmVjdCwgc28gSSB0aGluayB0aGF0IHRoZSBwcm9ibGVtIHJlc2lkZXMgaW4ga2VybmVsLgo+IAo+
IAo+IE9uIGEgUEMgd2l0aCA0LjE1IHRoZSBzYW1lIGNvbW1hbmQgc2VxdWVuY2Ugd29ya3MgZmxh
d2xlc3NseToKPiAKPiAjIG5mdCBmbHVzaCBydWxlc2V0Cj4gIyBuZnQgYWRkIHRhYmxlIGluZXQg
ZmlsdGVyCj4gIyBuZnQgYWRkIGNvdW50ZXIgaW5ldCBmaWx0ZXIgbXljb3VudGVyCj4gIyBuZnQg
YWRkIGNoYWluIGluZXQgZmlsdGVyIG91dHB1dCB7IHR5cGUgZmlsdGVyIGhvb2sgb3V0cHV0IHBy
aW9yaXR5IDAgXDsgfQo+ICMgbmZ0IGFkZCBydWxlIGluZXQgZmlsdGVyIG91dHB1dCBjb3VudGVy
IG5hbWUgbXljb3VudGVyCj4gIyBuZnQgbGlzdCBydWxlc2V0Cj4gdGFibGUgaW5ldCBmaWx0ZXIg
ewo+IMKgIMKgIMKgIMKgIGNvdW50ZXIgbXljb3VudGVyIHsKPiDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCBwYWNrZXRzIDAgYnl0ZXMgMAo+IMKgIMKgIMKgIMKgIH0KPiAKPiDCoCDCoCDCoCDCoCBj
aGFpbiBvdXRwdXQgewo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHR5cGUgZmlsdGVyIGhvb2sg
b3V0cHV0IHByaW9yaXR5IDA7IHBvbGljeSBhY2NlcHQ7Cj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgY291bnRlciBuYW1lICJteWNvdW50ZXIiCj4gwqAgwqAgwqAgwqAgfQo+IH0KPiAKPiBBbnkg
aWRlYXM/Cj4gCj4gVGhhbmsgeW91LAo+IAo+IFNhbHZhdG9yZQo+IAoKVHJ5IHRvIHNldCBteWNv
dW50ZXIgaW50byBxdW90YXRpb24gbWFya3MuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
