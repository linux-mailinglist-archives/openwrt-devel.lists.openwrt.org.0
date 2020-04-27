Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 786F81BAD2E
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 20:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5YCVB1smxaHh0U+TR6LDYbHBLyyeni5ZT99r0bYGZYw=; b=Z+4r7Xb8c75AqO
	PjHsnzB1X9SXncy/DOxZPuK+pOab6WITjDbHpTfC1GVaktkl4EXcy7Fun+sC9X14lTMjROwkjwKKk
	SO2zlnAumGg8GTXnyVus5jURxlVSXxmiJeFvR2hb0xlyAJRoBop1lVPotePFswVx0eNZubEFFzMK+
	RoqHm5tjYK1IZevFf1geaIfKg6hzORwjnFAlg2zcyA+bhRe6ZOpAbPmF+RyKT0VH68ZAv2Q/XG2vm
	NujLopndhbKM2U+/rVWSKRDx/N9xTdprEwpM9EdBqeTxHOWighzyLda/xhGIpCF3D1SXG4VPP/dyy
	6AZZzFw28xEz+B58ppng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8pF-0000su-57; Mon, 27 Apr 2020 18:49:53 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8p7-0000qs-6U
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 18:49:46 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 88EBC240006;
 Mon, 27 Apr 2020 18:49:40 +0000 (UTC)
Date: Mon, 27 Apr 2020 20:49:39 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20200427204939.3d96a66f@xps13>
In-Reply-To: <20200427203525.5fd1deca@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-6-boris.brezillon@collabora.com>
 <20200427191811.3f32cebc@xps13>
 <20200427203525.5fd1deca@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_114945_375184_30BCC6B9 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH 5/9] mtd: rawnand: bcm47xx: Implement
 the exec_op() interface
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQm9yaXMsCgo+ID4gPiArc3RhdGljIGludAo+ID4gPiArYmNtNDd4eG5mbGFzaF9vcHNfYmNt
NDcwNl9leGVjX2NtZF9hZGRyKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCj4gPiA+ICsJCQkJCWNv
bnN0IHN0cnVjdCBuYW5kX3N1Ym9wICpzdWJvcCkKPiA+ID4gK3sKPiA+ID4gKwlzdHJ1Y3QgYmNt
NDd4eG5mbGFzaCAqYjQ3biA9IG5hbmRfZ2V0X2NvbnRyb2xsZXJfZGF0YShjaGlwKTsKPiA+ID4g
Kwl1MzIgbmN0bCA9IDAsIGNvbCA9IDAsIHJvdyA9IDAsIG5jb2xzID0gMCwgbnJvd3MgPSAwOwo+
ID4gPiArCXVuc2lnbmVkIGludCBpLCBqOwo+ID4gPiArCj4gPiA+ICsJZm9yIChpID0gMDsgaSA8
IHN1Ym9wLT5uaW5zdHJzOyBpKyspIHsKPiA+ID4gKwkJY29uc3Qgc3RydWN0IG5hbmRfb3BfaW5z
dHIgKmluc3RyID0gJnN1Ym9wLT5pbnN0cnNbaV07Cj4gPiA+ICsKPiA+ID4gKwkJc3dpdGNoIChp
bnN0ci0+dHlwZSkgewo+ID4gPiArCQljYXNlIE5BTkRfT1BfQ01EX0lOU1RSOgo+ID4gPiArCQkJ
aWYgKFdBUk5fT05fT05DRSgobmN0bCAmIE5DVExfQ01EMCkgJiYKPiA+ID4gKwkJCQkJIChuY3Rs
ICYgTkNUTF9DTUQxVykpKQo+ID4gPiArCQkJCXJldHVybiAtRUlOVkFMOwo+ID4gPiArCQkJZWxz
ZSBpZiAobmN0bCAmIE5DVExfQ01EMCkKPiA+ID4gKwkJCQluY3RsIHw9IE5DVExfQ01EMVcgfAo+
ID4gPiArCQkJCQkoKHUzMilpbnN0ci0+Y3R4LmNtZC5vcGNvZGUgPDwgOCk7Cj4gPiA+ICsJCQll
bHNlCj4gPiA+ICsJCQkJbmN0bCB8PSBOQ1RMX0NNRDAgfCBpbnN0ci0+Y3R4LmNtZC5vcGNvZGU7
Cj4gPiA+ICsJCQlicmVhazsKPiA+ID4gKwkJY2FzZSBOQU5EX09QX0FERFJfSU5TVFI6Cj4gPiA+
ICsJCQlmb3IgKGogPSAwOyBqIDwgaW5zdHItPmN0eC5hZGRyLm5hZGRyczsgaisrKSB7Cj4gPiA+
ICsJCQkJdTMyIGFkZHIgPSBpbnN0ci0+Y3R4LmFkZHIuYWRkcnNbal07Cj4gPiA+ICsKPiA+ID4g
KwkJCQlpZiAoaSA8IDIpIHsgICAgCj4gPiAKPiA+IERvbid0IHlvdSBtZWFuIGogaGVyZT8gICAg
ICAgICAgICAgIF4KPiA+ICAgCj4gCj4gTmljZSBjYXRjaCEgSW5kZWVkLCBpdCBzaG91bGQgYmUg
ai4KPiAKPiA+ID4gKwkJCQkJY29sIHw9IGFkZHIgPDwgaSAqIDg7ICAgIAo+ID4gCj4gPiBJJ20g
bm90IHN1cmUgdGhpcyB3aWxsIHdvcmssIGFkZHIgaXMgMzItYml0IGFuZCBjb2wgYXMgd2VsbCwg
SSBiZXQgeW91Cj4gPiB3b24ndCBlbmQgdXAgd2l0aCB3aGF0IHlvdSBleHBlY3QuICAKPiAKPiBX
ZWxsLCBhc3N1bWluZyBJIHVzZSBqIHRoYXQncyByZWFsbHkgd2hhdCBJIHdhbnQuIGFkZHIgaXMg
YW4gdTMyIHRvCj4gYWxsb3cgZm9yIGEgc2hpZnQgZ3JlYXRlciB0aGFuIDgsIGJ1dCB0aGUgdmFs
dWUgaGFzIGJlIGV4dHJhY3RlZAo+IGZyb20gdGhlIGluc3RyLT5jdHguYWRkci5hZGRycyBhcnJh
eSB3aGljaCBpcyBhbiB1OCBhcnJheSwgdGh1cwo+IG1ha2luZyBhZGRyIDw9IDB4ZmYuCgpPaCB0
aGF0J3MgYWJzb2x1dGVseSByaWdodC4gSXQncyBmaW5lIHRoZW4hCgpUaGFua3MsCk1pcXXDqGwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
