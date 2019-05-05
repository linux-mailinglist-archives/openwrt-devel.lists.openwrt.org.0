Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA4414290
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 23:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rvf6JZa1YU+Y8XGAy824bP6ykwkij2Oqyg8HVt0aPRk=; b=FEbNhRKkKasvSc
	TcRWB8GNGx/sTs0x4v2r6kE0hWRWcxxgvuVP75yHAnz+f/fzOAgmq5pd1DZZ0PREH+ntDxZWwfwzD
	UbJRxxqumzznJfnXUQ43ZJZavB7TcocjjXKYjZhkbh8+yqm0te6FowB8GJRKzkK+tYlilLhZlXClo
	UdimuY6JUn7Xmi8WWxbmuUqy915qKcKyoU2Gr5ityRXkCk4ZxyI774KsV0hdCxNxq1mbD04OmN8ZL
	XvS609Kscenz3tdEh119efww/C4MGwqOyfW2gCUYiyKZ3L4QtglM6+Q0+z9UyECZXRKrCRJqeWedi
	CB0I2UYrmhZ8dNHAOKJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNOrm-0004ix-56; Sun, 05 May 2019 21:40:14 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNOre-0003WU-1h
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 21:40:08 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 6349EA0119;
 Sun,  5 May 2019 23:40:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id XX4h23jv-Gpv; Sun,  5 May 2019 23:39:38 +0200 (CEST)
To: Tomasz Maciej Nowak <tomek_n@o2.pl>, openwrt-devel@lists.openwrt.org
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-7-tomek_n@o2.pl>
 <a158c8c9-8ee2-ec28-7e59-f2f287e2606c@hauke-m.de>
 <e287c642-9c54-1edb-3789-45978eeace89@o2.pl>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
 U9K2P2+nz7is4sF1hNVarw==
Message-ID: <feedb941-fdf6-ffc0-5af6-3f778560b917@hauke-m.de>
Date: Sun, 5 May 2019 23:39:37 +0200
MIME-Version: 1.0
In-Reply-To: <e287c642-9c54-1edb-3789-45978eeace89@o2.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_144006_401704_DAE65344 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gNS80LzE5IDI6NTcgUE0sIFRvbWFzeiBNYWNpZWogTm93YWsgd3JvdGU6Cj4gSGksCj4gCj4g
VyBkbml1IDA0LjA1LjIwMTkgb8KgMDA6MDQsIEhhdWtlIE1laHJ0ZW5zIHBpc3plOgo+PiBPbiA1
LzEvMTkgNzo0MiBQTSwgVG9tYXN6IE1hY2llaiBOb3dhayB3cm90ZToKPj4+IFJlcGxhY2UgU29D
IG5hbWVzIHdpdGggdmVuZG9ycyBpbiBkZXZpY2UgbmFtZXMsIGluIGZldyBjYXNlcywgYW5kIGFk
ZAo+Pj4gdmVuZG9yIHRvIGRldmVsb3BlbW50IGJvYXJkcyBmb3IgZWFzaWVyIGlkZW50eWZ5aW5n
IHBvdGVudGlhbCBmaXJtd2FyZSB0bwo+Pj4gZmxhc2guCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTog
VG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4KPj4KPj4KPj4+IGRpZmYgLS1naXQg
YS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4LWE3Mi5tayBiL3RhcmdldC9saW51eC9t
dmVidS9pbWFnZS9jb3J0ZXgtYTcyLm1rCj4+PiBpbmRleCA4MjRmNmI1ZDBmLi4zMDQzZjA4N2Nj
IDEwMDY0NAo+Pj4gLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleC1hNzIubWsK
Pj4+ICsrKyBiL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0ZXgtYTcyLm1rCj4+PiBAQCAt
MSwzMCArMSwzMCBAQAo+Pj4gIGlmZXEgKCQoU1VCVEFSR0VUKSxjb3J0ZXhhNzIpCj4+PiAgCj4+
PiAtZGVmaW5lIERldmljZS9hcm1hZGEtbWFjY2hpYXRvYmluCj4+PiArZGVmaW5lIERldmljZS9t
YXJ2ZWxsLW1hY2NoaWF0b2Jpbgo+Pj4gICAgJChjYWxsIERldmljZS9EZWZhdWx0LWFybTY0KQo+
Pj4gICAgREVWSUNFX1RJVExFIDo9IE1BQ0NISUFUT2JpbiAoU29saWRSdW4gQXJtYWRhIDgwNDAg
Q29tbXVuaXR5IEJvYXJkKQo+Pj4gICAgREVWSUNFX1BBQ0tBR0VTICs9IGttb2QtaTJjLWNvcmUg
a21vZC1pMmMtbXV4IGttb2QtaTJjLW11eC1wY2E5NTR4Cj4+PiAgICBERVZJQ0VfRFRTIDo9IGFy
bWFkYS04MDQwLW1jYmluCj4+PiAgICBTVVBQT1JURURfREVWSUNFUyA6PSBtYXJ2ZWxsLGFybWFk
YTgwNDAtbWNiaW4KPj4+ICBlbmRlZgo+Pj4gLVRBUkdFVF9ERVZJQ0VTICs9IGFybWFkYS1tYWNj
aGlhdG9iaW4KPj4+ICtUQVJHRVRfREVWSUNFUyArPSBtYXJ2ZWxsLW1hY2NoaWF0b2Jpbgo+Pgo+
PiBUaGlzIGJvYXJkIGlzIGZyb20gc29saWRydW4KPiAKPiBZZXMsIHRoaXMgY2FzZSBkaWQgbWFr
ZSBtZSBjb25mdXNlZC4gSSB3ZW50IHdpdGggd2hhdCdzIGluIG1vZGVsIGFuZCBjb21wYXRpYmxl
Cj4gc3RyaW5nIGluIGR0cy4gU29saWRSdW4gYWxzbyBjYWxscyBpdCB0aGF0IHdheToKPiBodHRw
czovL3d3dy5zb2xpZC1ydW4uY29tL21hcnZlbGwtYXJtYWRhLWZhbWlseS9tYWNjaGlhdG9iaW4K
PiBCdXQgSSdsbCBjaGFuZ2UgdGhhdCBpbiBuZXh0IHZlcnNpb24uCj4gCj4gUmVnYXJkcwo+IAoK
T2ssIGFzIGl0IGlzIGNhbGxlZCBNYXJ2ZWxsIDgwNDAgTUFDQ0hJQVRPQmluIGluIHRoZSBkZXZp
Y2UgdHJlZSwgd2UKc2hvdWxkIHByb2JhYmx5IG5hbWUgaXQgYWxzbyBtYXJ2ZWxsLgoKSGF1a2UK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
