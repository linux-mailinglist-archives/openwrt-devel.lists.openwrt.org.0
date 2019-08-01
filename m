Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5397D545
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 08:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D1UmvI9TyK9sgjtUctfHyXzlOnb/aTtn+OLCEpFDM1E=; b=K2UOE3PbOBQiAZhSfFgnGG0Dx
	LOpNZoSlnKx3KNgxc8BHO3+Pf4TIvYm9J3qdo1+ztYQW8kmw3Gy9cSqRxB6f4pdYjgXfwJv5G8grt
	40Z5Br4d4WM0RvQv6uJy4vV1p2COHIKNvgJKHCW4XbhkIfSqiPFRO0wx00poZUUsxG63ZhU0qm8iH
	lKtWwnljet9gkah0rD2rcXwc+7VAQeF+xd8LocZ/Dwc/BbGrITEwPNbMViogGgwUPNntXB/v2gtmk
	dP57BvpjQclA5mkPYf7795FkZXRZFRJ3lN+l0zbmQvTObMgA6s2tTLFoxxwN/qQ8oe2KU1tl2tkXE
	pSc7Exi9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4IA-0007o3-2c; Thu, 01 Aug 2019 06:10:22 +0000
Received: from [86.122.15.174] (helo=mail.insteeldesign.ro)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4I2-0007Np-TX
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 06:10:17 +0000
Received: from [10.160.20.245] (unknown [188.24.48.90])
 by mail.insteeldesign.ro (Postfix) with ESMTPSA id D41D42218C52
 for <openwrt-devel@lists.openwrt.org>; Thu,  1 Aug 2019 09:10:07 +0300 (EEST)
To: openwrt-devel@lists.openwrt.org
References: <20190731203133.3585-1-ynezz@true.cz>
From: Lucian Cristian <luci@powerneth.ro>
Message-ID: <cd1e4849-8073-72a3-4a0d-258bb302e494@powerneth.ro>
Date: Thu, 1 Aug 2019 09:10:04 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731203133.3585-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_231015_126659_BAE250E5 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH] wireless-regdb: fix build when python2
 from package feeds exists
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

T24gMzEuMDcuMjAxOSAyMzozMSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiB3aXJlbGVzcy1yZWdk
YiBmYWlscyB0byBidWlsZCBpZiB0aGVyZSBpcyBweXRob24yIGluc3RhbGxlZCBmcm9tIHBhY2th
Z2UKPiBmZWVkcywgYXMgc3RhZ2luZ19kaXIvaG9zdHBrZy9iaW4vcHl0aG9uIGlzIHB5dGhvbjIg
YW5kCj4gc3RhZ2luZ19kaXIvaG9zdHBrZy9iaW4gdGFrZXMgcHJlY2VkZW5jZSBvdmVyIHN0YWdp
bmdfZGlyL2hvc3QvYmluCj4gKHByb3BlciBwbGFjZSB3aXRoIHB5dGhvbiAtPiBweXRob24zIHN5
bWxpbmspIHdoaWNoIGxlYWRzIHRvIHRoZSBidWlsZAo+IGZhaWx1cmUgb2Ygd2lyZWxlc3MtcmVn
ZGIsIHNvIHRoaXMgcGF0Y2ggbWFrZXMgaXQgZXhwbGljaXQgd2hpY2ggcHl0aG9uCj4gc2hvdWxk
IGJlIHVzZWQuCj4KPiBSZXBvcnRlZC1ieTogSGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0u
ZGU+Cj4gVGVzdGVkLWJ5OiBLZXZpbiBEYXJieXNoaXJlLUJyeWFudCA8bGRpckBkYXJieXNoaXJl
LWJyeWFudC5tZS51az4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6Pgo+IC0tLQo+ICAgcGFja2FnZS9maXJtd2FyZS93aXJlbGVzcy1yZWdkYi9NYWtlZmlsZSB8
IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
Cj4gZGlmZiAtLWdpdCBhL3BhY2thZ2UvZmlybXdhcmUvd2lyZWxlc3MtcmVnZGIvTWFrZWZpbGUg
Yi9wYWNrYWdlL2Zpcm13YXJlL3dpcmVsZXNzLXJlZ2RiL01ha2VmaWxlCj4gaW5kZXggODhhOGQw
YmQ5YzNiLi4yNmY0NzBhZjQ0YzQgMTAwNjQ0Cj4gLS0tIGEvcGFja2FnZS9maXJtd2FyZS93aXJl
bGVzcy1yZWdkYi9NYWtlZmlsZQo+ICsrKyBiL3BhY2thZ2UvZmlybXdhcmUvd2lyZWxlc3MtcmVn
ZGIvTWFrZWZpbGUKPiBAQCAtMjAsNyArMjAsNyBAQCBkZWZpbmUgUGFja2FnZS93aXJlbGVzcy1y
ZWdkYgo+ICAgZW5kZWYKPiAgIAo+ICAgZGVmaW5lIEJ1aWxkL0NvbXBpbGUKPiAtCSQoUFlUSE9O
KSAkKFBLR19CVUlMRF9ESVIpL2RiMmZ3LnB5ICQoUEtHX0JVSUxEX0RJUikvcmVndWxhdG9yeS5k
YiAkKFBLR19CVUlMRF9ESVIpL2RiLnR4dAo+ICsJJChTVEFHSU5HX0RJUl9IT1NUKS9iaW4vJChQ
WVRIT04pICQoUEtHX0JVSUxEX0RJUikvZGIyZncucHkgJChQS0dfQlVJTERfRElSKS9yZWd1bGF0
b3J5LmRiICQoUEtHX0JVSUxEX0RJUikvZGIudHh0Cj4gICBlbmRlZgo+ICAgCj4gICBkZWZpbmUg
UGFja2FnZS93aXJlbGVzcy1yZWdkYi9pbnN0YWxsCj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4g
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgp0ZXN0ZWQgb24gZGViaWFuIDgsIG12
ZWJ1CgpUZXN0ZWQtYnk6IEx1Y2lhbiBDcmlzdGlhbiA8bHVjaWFuLmNyaXN0aWFuQGdtYWlsLmNv
bT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
