Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6091BAABF
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 19:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjsLvECUjS7At4srydNsHEkmUly6UgI1W/ZFIWlGkQY=; b=Wl0XXkpyH74ksi
	KnE/lOMLPA6LO14va6mNYFMvF9tzIxJtJ/bxluoNV1qix00ym2vgm5Nr42av00zyjzcqjbZaelOyi
	9MhQYa3hpyJ5kvxueQBW0H/QjZR+GL/R3BoNe4GudejE/c3yF0inxhqkTGWVCYjizi+X5TX0v3U8y
	Y1P5TmVLFeJ8TVBTYGxkrxpUGGnuAKUOXGT8BUaHN6rwRSwyyzODJnUGpwJNc2UtYs+7aSEW4Bg6Y
	ozskaOcqC8v2fiYOHIzy48Fvxj5lrxXi5oP2ssRci5F2zX/vVFGNZeaUNVXMZ0/ggGmm5gWbC8X7W
	VyJCkypyzOAvZ5j020eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7Dx-0006hb-4I; Mon, 27 Apr 2020 17:07:17 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7Dl-0006gN-Q2
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 17:07:07 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9B7CFC0004;
 Mon, 27 Apr 2020 17:07:02 +0000 (UTC)
Date: Mon, 27 Apr 2020 19:07:01 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20200427190701.6a54d04b@xps13>
In-Reply-To: <20200419125140.1307309-5-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-5-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_100705_980622_F1C1F3B9 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 4/9] mtd: rawnand: bcm47xx: Demistify a
 few more things
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
PiB3cm90ZSBvbiBTdW4sIDE5IEFwcgoyMDIwIDE0OjUxOjM1ICswMjAwOgoKPiBUaGVyZSB3ZXJl
IGEgZmV3IHBsYWNlcyB3ZXJlIHJhdyBoZXggdmFsdWVzIHdlcmUgdXNlZCBpbnN0ZWFkIG9mIHRo
ZQoKICAgICAgICAgICAgICAgICAgICAgICAgICB3aGVyZQoKPiBtYWNybyBkZWYuCgogICAgICAg
IGRlZj8gOikKCj4gCj4gV2UgYWxzbyBhZGQgbWFjcm9zIHRvIGhlbHAgZm9ybWluZyB0aGUgY29u
ZiB2YWx1ZSAobm90ZSB0aGF0IHdlIHN0aWxsCj4gaGF2ZSBvbmUgbWFnaWMgYml0IHdob3NlIG1l
YW5pbmcgSSBjb3VsZG4ndCBleHRyYWN0IGZyb20gdGhlIGNvZGUpLCBhbmQKPiBhZGQgYW4gZXh0
cmEgbWFjcm8gdG8gc3BlY2lmeSB0aGUgbnVtYmVyIG9mIERBVEEgY3ljbGVzIHRvIGlzc3VlIHdo
ZW4KPiB0aGUgUkVBRCBvciBXUklURSBmbGFnIGlzIHNldC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBC
b3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAu
Li4vbXRkL25hbmQvcmF3L2JjbTQ3eHhuZmxhc2gvb3BzX2JjbTQ3MDYuYyAgfCAzNCArKysrKysr
KysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZs
YXNoL29wc19iY200NzA2LmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNoL29w
c19iY200NzA2LmMKPiBpbmRleCA1OTE3NzUxNzMwMzQuLmZiYjdhY2ViYzhmNyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNoL29wc19iY200NzA2LmMKPiAr
KysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNoL29wc19iY200NzA2LmMKPiBA
QCAtMjUsMTIgKzI1LDI5IEBACj4gICNkZWZpbmUgTkNUTF9DTUQxVwkJCTB4MDAwODAwMDAKPiAg
I2RlZmluZSBOQ1RMX1JFQUQJCQkweDAwMTAwMDAwCj4gICNkZWZpbmUgTkNUTF9XUklURQkJCTB4
MDAyMDAwMDAKPiArLyogV2hlbiB0aGUgU1BFQ0FERFIgaXMgc2V0IENNRDEgaXMgaW50ZXJwcmV0
ZWQgYXMgYSBzaW5nbGUgQUREUiBjeWNsZSAqLwo+ICAjZGVmaW5lIE5DVExfU1BFQ0FERFIJCQkw
eDAxMDAwMDAwCj4gICNkZWZpbmUgTkNUTF9SRUFEWQkJCTB4MDQwMDAwMDAKPiAgI2RlZmluZSBO
Q1RMX0VSUgkJCTB4MDgwMDAwMDAKPiArLyoKPiArICogTnVtYmVyIG9mIERBVEEgY3ljbGVzIHRv
IGlzc3VlIHdoZW4gTkNUTF97UkVBRCxXUklURX0gaXMgc2V0LiBUaGUgbWluaW11bQo+ICsgKiB2
YWx1ZSBpcyAxIGFuZCB0aGUgbWF4aW11bSB2YWx1ZSBpcyA0LiBUaG9zZSBieXRlcyBhcmUgdGhl
biBzdG9yZWQgaW4gdGhlCj4gKyAqIEJDTUFfQ0NfTkZMQVNIX0RBVEEgcmVnaXN0ZXIuCj4gKyAq
Lwo+ICsjZGVmaW5lIE5DVExfREFUQV9DWUNMRVMoeCkJCSgoKCh4KSAtIDEpICYgMHgzKSA8PCAy
OCkKPiArLyoKPiArICogVGhlIENTIHBpbiBzZWVtcyB0byBiZSBhc3NlcnRlZCBldmVuIGlmIE5D
VExfQ1NBIGlzIG5vdCBzZXQuIEFsbCB0aGlzIGJpdAo+ICsgKiBzZWVtcyB0byBlbmNvZGUgaXMg
d2hldGhlciB0aGUgQ1MgbGluZSBzaG91bGQgc3RheSBhc3NlcnRlZCBhZnRlciB0aGUKPiArICog
b3BlcmF0aW9uIGhhcyBiZWVuIGV4ZWN1dGVkLiBJbiBvdGhlciB3b3JkcywgeW91IHNob3VsZCBv
bmx5IHNldCBpdCBpZiBpZgoKcy9pdCBpZiBpZi9pdCBpZi8KCj4gKyAqIHlvdSBpbnRlbmQgdG8g
ZG8gbW9yZSBvcGVyYXRpb25zIG9uIHRoZSBOQU5EIGJ1cy4KPiArICovCj4gICNkZWZpbmUgTkNU
TF9DU0EJCQkweDQwMDAwMDAwCj4gICNkZWZpbmUgTkNUTF9TVEFSVAkJCTB4ODAwMDAwMDAKPiAg
Cj4gKyNkZWZpbmUgQ09ORl9NQUdJQ19CSVQJCQkweDAwMDAwMDAyCj4gKyNkZWZpbmUgQ09ORl9D
T0xfQllURVMoeCkJCSgoKHgpIC0gMSkgPDwgNCkKPiArI2RlZmluZSBDT05GX1JPV19CWVRFUyh4
KQkJKCgoeCkgLSAxKSA8PCA2KQo+ICsKCgpXaXRoIHRoZSBhYm92ZSBjb3JyZWN0ZWQsCgpSZXZp
ZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCgoKVGhh
bmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
