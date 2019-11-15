Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFFDFD7CE
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 Nov 2019 09:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzZZBQ3/R5GDKF8wh5USa+l6ZfUR4NcdRo2ghfsrb0o=; b=FsGdBg0itSkLVI
	wNezLCtSTDUaLuNLNtc+u/+UcruWXm4ENa7kakCbq1AGOekAAMfpRy6TqrwEv2+Udc0EcYnTFDlfm
	2nYPuqCO5DNqapaodV8g76vOdagfXG9g9zG+SDoitKM60LqhWesBEMeHHf/ypE/TCxQmCS3QF6m5j
	X19qCKUzwq4WJDz/akiMk0aJETJ8PlyuX3cvbEE98x3OAMxU9hrsi04N5sTwBpOd3BKxZI1xO5tw7
	eoGOZWTmBF94ydjut+DSvN0X3Grmv4TZxNiclGgpT2dj0ImVUEG6dxlsef4FLYFkGFhI0cYnnSmoO
	MYyZSlmGTIwJ0hymxwOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWmk-0005X3-FK; Fri, 15 Nov 2019 08:16:54 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWmY-0005V3-M7
 for openwrt-devel@lists.openwrt.org; Fri, 15 Nov 2019 08:16:44 +0000
X-Originating-IP: 86.206.246.123
Received: from windsurf (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr
 [86.206.246.123])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E4B1FC000B;
 Fri, 15 Nov 2019 08:16:32 +0000 (UTC)
Date: Fri, 15 Nov 2019 09:16:32 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Petr =?UTF-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Message-ID: <20191115091632.1aeb1269@windsurf>
In-Reply-To: <20191115052949.GC13337@meh.true.cz>
References: <20191113151241.752720-1-thomas.petazzoni@bootlin.com>
 <20191115052949.GC13337@meh.true.cz>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_001642_862454_930EA6D5 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH procd] initd/init: add minimal SELinux
 policy loading support
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gUGV0ciwKClRoYW5rcyBmb3IgeW91ciBmZWVkYmFjayEKCk9uIEZyaSwgMTUgTm92IDIw
MTkgMDY6Mjk6NDkgKzAxMDAKUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cgo+
IGlzIHRoaXMgc29tZSBraW5kIG9mIFJGQy9pZGVhIHByb2JlPyBJIGxpa2UgdGhlIGlkZWEsIGFk
ZGl0aW9uYWwgaGFyZGVuaW5nIGlzCj4gbmVlZGVkIGFuZCB3ZWxjb21lIEkgd291bGQgc2F5LgoK
Tm8sIHRoaXMgcGF0Y2ggaXMgbm90IFJGQywgaXQgc2hvdWxkIGJlIHJlYWR5IGZvciBtZXJnaW5n
LCBJJ20gYWxyZWFkeQp1c2luZyBpdCBpbiBzb21lIGRldmljZXMuCgo+ID4gSSBoYXZlIHBhdGNo
ZXMgcmVhZHkgdG8gYWRkIHNvbWUgbWluaW1hbCBTRUxpbnV4IHN1cHBvcnQgdG8gT3BlbldSVCwK
PiA+IHdoaWNoIEkgaW50ZW5kIHRvIHNlbmQgaW4gdGhlIG5lYXIgZnV0dXJlLiAgCj4gCj4gSXQg
d291bGQgcHJvYmFibHkgbWFrZSBtb3JlIHNlbnNlIHRvIHNlbmQgc29tZWhvdyBtaW5pbWFsIGJ1
dCBjb21wbGV0ZSB3b3JraW5nCj4gU0VMaW51eCBzdXBwb3J0IHNvIG9uZSBjb3VsZCBzZWUgd2hh
dCBpdCB3b3VsZCBtZWFuIGluIHRlcm1zIG9mIGZsYXNoIHNwYWNlLAo+IFJBTSwgQ1BVIG92ZXJo
ZWFkIGV0Yy4gTWF5YmUgYWRkaW5nIG9uZSBvZiB0aGUgZGVmYXVsdCBzZXJ2aWNlcyBleHBvc2Vk
IHRvIHRoZQo+IG5ldHdvcmsgYXMgaW5pdGlhbCBleGFtcGxlPwoKVGhlIHRoaW5nIGlzIHRoYXQg
dGhlIFNFTGludXggc3VwcG9ydCBpbiBPcGVuV1JUIG5lZWRzIHRoaXMgaW1wcm92ZW1lbnQKaW4g
cHJvY2QsIG90aGVyd2lzZSBpdCB3b24ndCB3b3JrIGF0IHJ1bnRpbWUgYXMgbm90aGluZyB3aWxs
IGJlIGxvYWRpbmcKdGhlIFNFTGludXggcG9saWN5LgoKUmVnYXJkaW5nIHRoZSBmbGFzaCBzcGFj
ZSwgUkFNIGFuZCBDUFUgb3ZlcmhlYWQsIEknbSBub3Qgc3VyZSBpdCdzIHRoYXQKcmVsZXZhbnQ6
IHRoZSBTRUxpbnV4IHBhY2thZ2luZyBJJ3ZlIGRvbmUgbWFrZXMgaXQgY29tcGxldGVseSBvcHRp
b25hbCwKc28geW91IG9ubHkgaGF2ZSBhbiBpbXBhY3Qgb2YgZmxhc2ggc3BhY2UsIFJBTSBhbmQg
Q1BVIGlmIHlvdSBlbmFibGUKU0VMaW51eCBzdXBwb3J0LiBJZiB5b3UgZG9uJ3QsIHRoZW4geW91
ciBPcGVuV1JUIHN5c3RlbSBpcyBleGFjdGx5IGxpa2UKaXQgd2FzIGJlZm9yZS4KCj4gPiArICBw
a2dfc2VhcmNoX21vZHVsZShTRUxJTlVYIFJFUVVJUkVEIGxpYnNlbGludXgpICAKPiAKPiBUaGlz
IGxvb2tzIGxpa2UgYSBtaXNzaW5nIGRlcGVuZGVuY3kuCgpTb3JyeSwgYnV0IEkgZG9uJ3QgdW5k
ZXJzdGFuZCB3aGF0IHlvdSBtZWFuIGhlcmUuIE9yIG1heWJlIHlvdSdyZQpzYXlpbmcgdGhhdCB0
aGVyZSBpcyBubyBsaWJzZWxpbnV4IHBhY2thZ2UgaW4gT3BlbldSVCA/IFRoYXQgaXMgdHJ1ZSwK
YW5kIHdpbGwgYmUgcGFydCBvZiBteSBwYXRjaCBzZXJpZXMgdG8gT3BlbldSVCBhZGRpbmcgYWxs
IHRoZSBwYWNrYWdlcwpyZWxhdGVkIHRvIE9wZW5XUlQgc3VwcG9ydC4KCj4gPiBmcHJpbnRmKHN0
ZGVyciwgIkNhbm5vdCBsb2FkIFNFTGludXggcG9saWN5LCBidXQgc3lzdGVtIGluIGVuZm9yY2lu
ZyBtb2RlLiBIYWx0aW5nLlxuIik7ICAKPiAKPiBKdXN0IGEgc2lkZSBub3RlLCBoYWx0aW5nIGlu
IHRoZSBjb250ZXh0IG9mIHJ1bm5pbmcgb24gdGhlIHJvdXRlciBtZWFucwo+IGZsYXNoaW5nIG9m
IGZhY3RvcnkgaW1hZ2UuIEhhbHRpbmcgZG9lc24ndCBwcm92aWRlIGFueSBmZWVkYmFjayB0byB0
aGUgdXNlciwKPiBpZiB3ZSBkb24ndCBjb25zaWRlciBzdHVjay1pbi10aGUtYm9vdGxvcCBhcyBh
IHByb3BlciBmZWVkYmFjay4gIFByb2JhYmx5Cj4gZW50ZXJpbmcgZmFpbHNhZmUoaGFzIExFRCBm
ZWVkYmFjaykgb3Igc3VjaCB3b3VsZCBtYWtlIG1vcmUgc2Vuc2UgaGVyZT8KCkRvIHlvdSBoYXZl
IG1vcmUgZGV0YWlscyBhYm91dCBlbnRlcmluZyBmYWlsc2FmZSBtb2RlID8gSG93IGRvIHlvdSBk
bwp0aGF0ID8KClRoYW5rcywKClRob21hcwotLSAKVGhvbWFzIFBldGF6em9uaSwgQ1RPLCBCb290
bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGlu
LmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
