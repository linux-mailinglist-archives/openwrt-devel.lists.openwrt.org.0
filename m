Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C86F1BAB1C
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 19:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJ/hrA0y9ZReTTsnhkgC49tPBJHDfh+jdHV3AXnvHkY=; b=NifEfXq5R1wZIh
	ZqFgDSN62NoE425LoqpGKAU6nC9zVgzRwZ4hX6p8GZU0XFXS60l/BWmDCsDhvRtB3CuXWezNzsAb8
	Fc90uAocKa8aRdKlFMUdPwUDoglm4fG8a7D1jFVCaiSw6VVOTdhQA1LxTJFffoRjDFtnnVXX9GWzh
	cqQisRViweHXRxYVIXBe4KpjD0a43ZA94y9MFyJz7D7OJtVDRkaScWVQ7N9mUYhn8fmykLxkLHSCr
	0uIIvqMs8TvULx1pDiPkAp3VntUpyCpnlX19CV4EZwQrv8YLXPfihSkpt4C4SLnLuyzVXKYnTcByR
	TlGiwb6pXGOkg6xajC2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7Up-0002cv-1c; Mon, 27 Apr 2020 17:24:43 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7UT-0002Tn-E1
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 17:24:23 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 247D5FF803;
 Mon, 27 Apr 2020 17:24:18 +0000 (UTC)
Date: Mon, 27 Apr 2020 19:24:17 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20200427192417.112a69b4@xps13>
In-Reply-To: <20200419125140.1307309-10-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-10-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_102421_607323_05868CD1 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 9/9] mtd: rawnand: bcm47xx: Move the
 driver to drivers/mtd/nand/raw/
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

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTdW4sIDE5IEFwcgoyMDIwIDE0OjUxOjQwICswMjAwOgoKPiBOb3cgdGhhdCB3
ZSBoYXZlIGEgc2luZ2xlIHdlIGNhbiBtb3ZlIGl0IHRvIHRoZSBkaXJlY3Rvcnkgd2hlcmUgYWxs
Cj4gc2luZ2xlIHNvdXJjZSBmaWxlIGRyaXZlcnMgbGl2ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBC
b3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
IDEgKwo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy97YmNtNDd4eG5mbGFzaCA9PiB9L2JjbTQ3eHhu
Zmxhc2guYyB8IDAKPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFzaC9NYWtlZmls
ZSAgICAgICAgICAgICAgfCAyIC0tCj4gIDMgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDIgZGVsZXRpb25zKC0pCj4gIHJlbmFtZSBkcml2ZXJzL210ZC9uYW5kL3Jhdy97YmNtNDd4eG5m
bGFzaCA9PiB9L2JjbTQ3eHhuZmxhc2guYyAoMTAwJSkKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvbXRkL25hbmQvcmF3L2JjbTQ3eHhuZmxhc2gvTWFrZWZpbGUKCkhlcmUgYXJlIHR3byBp
bmRlcGVuZGVudCBjb21tZW50czoKCjEvIEkgdGhpbmsgY2FsbGluZyB0aGUgZmlsZSBiY200N3h4
bi1uYW5kLWNvbnRyb2xsZXIuYyB3b3VsZCBiZXN0IGZpdAp0b2RheXMgcG9saWN5LgoKMi8gSSBh
bSBub3Qgc3VyZSB0aGVyZSBpcyBhbiBpbnRlcmVzdCBpbiBkb2luZyB0aGUgbWVyZ2UgKwptb3Zl
L3JlbmFtZSBpbiBzZXBhcmF0ZSBzdGVwcy4gSXQncyBhbHdheXMgYSBwYWluIHRvIGZvbGxvdyBj
aGFuZ2VzIGluCmEgZmlsZSB3aXRoIGdpdCBibGFtZSB3aGVuIGNvZGUgZ2V0J3MgbW92ZWQgYXJv
dW5kIHNvIEkgd291bGQgcHJlZmVyCmRvaW5nIHRoaXMgaW4gYSBzaW5nbGUgY2hhbmdlLCB3aGF0
IGRvIHlvdSB0aGluaz8KCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L01h
a2VmaWxlIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvTWFrZWZpbGUKPiBpbmRleCAyZDEzNmIxNThm
YjcuLjcwM2Q2OTZjMmQ2MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9NYWtl
ZmlsZQo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L01ha2VmaWxlCj4gQEAgLTU4LDYgKzU4
LDcgQEAgb2JqLSQoQ09ORklHX01URF9OQU5EX1RFR1JBKQkJKz0gdGVncmFfbmFuZC5vCj4gIG9i
ai0kKENPTkZJR19NVERfTkFORF9TVE0zMl9GTUMyKQkrPSBzdG0zMl9mbWMyX25hbmQubwo+ICBv
YmotJChDT05GSUdfTVREX05BTkRfTUVTT04pCQkrPSBtZXNvbl9uYW5kLm8KPiAgb2JqLSQoQ09O
RklHX01URF9OQU5EX0NBREVOQ0UpCQkrPSBjYWRlbmNlLW5hbmQtY29udHJvbGxlci5vCj4gK29i
ai0kKENPTkZJR19NVERfTkFORF9CQ000N1hYTkZMQVNIKQkrPSBiY200N3h4bmZsYXNoLm8KPiAg
Cj4gIG5hbmQtb2JqcyA6PSBuYW5kX2Jhc2UubyBuYW5kX2xlZ2FjeS5vIG5hbmRfYmJ0Lm8gbmFu
ZF90aW1pbmdzLm8gbmFuZF9pZHMubwo+ICBuYW5kLW9ianMgKz0gbmFuZF9vbmZpLm8KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFzaC9iY200N3h4bmZsYXNo
LmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNoLmMKPiBzaW1pbGFyaXR5IGlu
ZGV4IDEwMCUKPiByZW5hbWUgZnJvbSBkcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNo
L2JjbTQ3eHhuZmxhc2guYwo+IHJlbmFtZSB0byBkcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4
bmZsYXNoLmMKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFz
aC9NYWtlZmlsZSBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JjbTQ3eHhuZmxhc2gvTWFrZWZpbGUK
PiBkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCA3MWE5NTMwNzg3OTkuLjAwMDAwMDAw
MDAwMAo+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JjbTQ3eHhuZmxhc2gvTWFrZWZpbGUK
PiArKysgL2Rldi9udWxsCj4gQEAgLTEsMiArMCwwIEBACj4gLSMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAtb25seQo+IC1vYmotJChDT05GSUdfTVREX05BTkRfQkNNNDdYWE5GTEFT
SCkJKz0gYmNtNDd4eG5mbGFzaC5vCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
