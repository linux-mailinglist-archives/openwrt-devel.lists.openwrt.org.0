Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EB41EA8E
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 11:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hhA+im7mkYTct9oF4DkbBvuFfWCjErgOqFU5RB3wbwU=; b=mXwlIVJLTrGoOmhOiD8tDkbvEY
	g/EBb9hSMHMl+7x6UGvbrs9+pGkXxVSl49xTH17ldCkMtVgUe2hxtPB5aiN9pRBzNvrLCmuNzndOU
	z2ntOtWgL+Y4C7d/iiHLB9j9fsEcr2wWeTc3CcVX0LSHzGJiTdhzBXC+xy+Kgu9pWcuTuZgTDXPQT
	cXDiY4dtisRRu8YjQ5CGaLlG4uFFYd6j5NEriTf5SyWVsXkXEnqQRpEIKrDvn+WmuuaMLfW9t8wDL
	NpC7QvTTH/CzAd+BlaSBm6oQkxZtUh4I3YEpliSJ054dhIZTatKUusy1h3N9dbQV3I8mufOllX2SD
	kVPWTKUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQpmu-0000hp-VQ; Wed, 15 May 2019 09:01:24 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpmi-0000hT-H0
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 09:01:16 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4F90xKu016885
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 11:00:59 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DDB4B3F87;
 Wed, 15 May 2019 11:00:55 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ae6a2a9b;
 Wed, 15 May 2019 11:00:54 +0200 (CEST)
Date: Wed, 15 May 2019 11:00:54 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190515090054.GI93050@meh.true.cz>
References: <20190514223956.19663-1-lede@allycomm.com>
 <20190514223956.19663-4-lede@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514223956.19663-4-lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_020112_888608_CE6A2EE7 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ath79: Extend GL.iNet AR750S
 support to NAND file system
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SmVmZiBLbGV0c2t5IDxsZWRlQGFsbHljb21tLmNvbT4gWzIwMTktMDUtMTQgMTU6Mzk6NTZdOgoK
PiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQv
MDFfbGVkcyBiL3RhcmdldC9saW51eC9hdGg3OS9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAxX2xl
ZHMKPiBpbmRleCA5YzM1M2JhYWJlLi5jOTc0YzEyZDE0IDEwMDc1NQo+IC0tLSBhL3RhcmdldC9s
aW51eC9hdGg3OS9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAxX2xlZHMKPiArKysgYi90YXJnZXQv
bGludXgvYXRoNzkvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMV9sZWRzCj4gQEAgLTc4LDYgKzc4
LDEwIEBAIGdsaW5ldCxnbC1hcjMwMG0tbm9yKQo+ICBnbGluZXQsZ2wtYXIzMDBtLWxpdGUpCj4g
IAl1Y2lkZWZfc2V0X2xlZF9uZXRkZXYgImxhbiIgIkxBTiIgImdsLWFyMzAwbS1saXRlOmdyZWVu
OmxhbiIgImV0aDAiCj4gIAk7Owo+ICtnbGluZXQsZ2wtYXI3NTBzLSopCj4gKwl1Y2lkZWZfc2V0
X2xlZF9uZXRkZXYgIndsYW4yZyIgIldMQU4gMkciICJnbC1hcjc1MHM6Z3JlZW46d2xhbjJnIgo+
ICsJdWNpZGVmX3NldF9sZWRfbmV0ZGV2ICJ3bGFuNWciICJXTEFOIDVHIiAiZ2wtYXI3NTBzOmdy
ZWVuOndsYW41ZyIKCndoeSBkbyB5b3UgbmVlZCB0aGlzPyBJdCdzIGFscmVhZHkgYmVpbmcgc2V0
IGluIHRoZSBEVFMgYnkgdGhlIExFRCB0cmlnZ2VycywKaXNuJ3QgaXQ/IEhhdmluZyBpdCBkZWZp
bmVkIGluIERUUyBpcyBwcmVmZXJyZWQuCgo+ICsjIER1cmluZyBpbWFnZSBjcmVhdGlvbiB0aGUg
ImJvYXJkIG5hbWUiIGlzIG9mIHRoZSBmb3JtYXQgbWZncl9ib2FyZC1uYW1lCj4gKyMgSG93ZXZl
ciwgb24gYSBydW5uaW5nIGRldmljZSBpdCBpcyBvZiB0aGUgZm9ybWF0IG1mZ3IsYm9hcmQtbmFt
ZQoKVGhhdCdzIGFscmVhZHkgY2xlYXIgZnJvbSB0aGUgY29kZSwgc28gZHJvcCB0aGlzIGNvbW1l
bnQuCgo+ICtjb21tYV90b191bmRlcnNjb3JlKCkgewo+ICsJZWNobyAiJHsxJSUsKn1fJHsxIyos
fSIKPiArfQo+ICsKPiAgcGxhdGZvcm1fY2hlY2tfaW1hZ2UoKSB7Cj4gLQlyZXR1cm4gMAo+ICsJ
bG9jYWwgYm9hcmQ9JChib2FyZF9uYW1lKQo+ICsKPiArCWNhc2UgIiRib2FyZCIgaW4KPiArCWds
aW5ldCxnbC1hcjc1MHMtbmFuZCkKPiArCQluYW5kX2RvX3BsYXRmb3JtX2NoZWNrICIkKGNvbW1h
X3RvX3VuZGVyc2NvcmUgIiRib2FyZCIpIiAiJElNQUdFIgo+ICsJCTs7Cj4gKwkqKQo+ICsJCXJl
dHVybiAwCj4gKwkJOzsKPiArCWVzYWMKPiAgfQoKSSB0aGluaywgdGhhdCBpdCB3b3VsZCBiZSBi
ZXR0ZXIgdG8gYWRkIHN1cHBvcnQgZm9yIERUIGNvbXBhdGlibGUgYmFzZWQKYm9hcmRfbmFtZSBm
b3JtYXQgZGlyZWN0bHkgaW50byBuYW5kX2RvX3BsYXRmb3JtX2NoZWNrLCBzbyBpdCBjb3VsZCBi
ZSByZXVzZWQKYnkgb3RoZXIgcGxhdGZvcm1zIGFzIHdlbGwuCgo+IGRpZmYgLS1naXQgYS90YXJn
ZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NjNfZ2xpbmV0X2dsLWFyNzUwcy5kdHMgYi90YXJnZXQv
bGludXgvYXRoNzkvZHRzL3FjYTk1NjNfZ2xpbmV0X2dsLWFyNzUwcy5kdHNpCj4gc2ltaWxhcml0
eSBpbmRleCA2NCUKPiByZW5hbWUgZnJvbSB0YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NjNf
Z2xpbmV0X2dsLWFyNzUwcy5kdHMKPiByZW5hbWUgdG8gdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9x
Y2E5NTYzX2dsaW5ldF9nbC1hcjc1MHMuZHRzaQo+IGluZGV4IDM3OGRlNWRlOTAuLmUzODg3OTE4
MmUgMTAwNjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTYzX2dsaW5ldF9n
bC1hcjc1MHMuZHRzCj4gKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTYzX2dsaW5l
dF9nbC1hcjc1MHMuZHRzaQo+IEBAIC0xNSwxMCArMTUsMTAgQEAKPiAgCX07Cj4gIAo+ICAJYWxp
YXNlcyB7Cj4gLQkJbGVkLWJvb3QgPSAmcG93ZXI7Cj4gLQkJbGVkLWZhaWxzYWZlID0gJnBvd2Vy
Owo+IC0JCWxlZC1ydW5uaW5nID0gJnBvd2VyOwo+IC0JCWxlZC11cGdyYWRlID0gJnBvd2VyOwo+
ICsJCWxlZC1ib290ID0gJmxlZF9wb3dlcjsKPiArCQlsZWQtZmFpbHNhZmUgPSAmbGVkX3dsYW4y
ZzsKPiArCQlsZWQtcnVubmluZyA9ICZsZWRfcG93ZXI7Cj4gKwkJbGVkLXVwZ3JhZGUgPSAmbGVk
X3dsYW41ZzsKPiAgCX07CgpQbGVhc2UgZG9uJ3QgZG8gdGhpcywgdGhvc2UgTEVEcyBoYXZlIGRl
ZmluZWQgZnVuY3Rpb25zIGFuZCB1c2luZyB3bGFuNWcgTEVECnRvIHNpZ25hbCBhbiB1cGdyYWRl
IG1pZ2h0IGJlIGNvbmZ1c2luZy4gSXQgaGFzIGJlZW4gZGlzY3Vzc2VkIGEgbG90IG9mIHRpbWVz
CmFscmVhZHkuCgo+ICsJaTJjQDAgewo+ICsJCWNvbXBhdGlibGUgPSAiaTJjLWdwaW8iOwo+ICsK
PiArCQlzZGEtZ3Bpb3MgPSA8JmdwaW8gIDUgKEdQSU9fQUNUSVZFX0hJR0h8R1BJT19PUEVOX0RS
QUlOKT47Cj4gKwkJc2NsLWdwaW9zID0gPCZncGlvIDIxIChHUElPX0FDVElWRV9ISUdIfEdQSU9f
T1BFTl9EUkFJTik+Owo+ICsJCWkyYy1ncGlvLGRlbGF5LXVzID0gPDI+OwkvKiB+MTAwIGtIeiAq
LwoKV2hhdCB3YXMgd3Jvbmcgd2l0aCB0aGUgZGVmYXVsdCB2YWx1ZT8gSGF2ZSB5b3UgYWN0dWFs
bHkgY2hlY2tlZCB0aGUgcmVzdWx0aW5nCmNsb2NrIGZyZXF1ZW5jeSBzb21laG93PwoKPiArCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKPiArCQkjc2l6ZS1jZWxscyA9IDwwPjsKClRoZSAjYWRkcmVz
cy1jZWxscyBhbmQgI3NpemUtY2VsbHMgcHJvcGVydGllcyBtYXkgYmUgdXNlZCBpbiBhbnkgZGV2
aWNlIG5vZGUKdGhhdCBoYXMgY2hpbGRyZW4gaW4gdGhlIGRldmljZXRyZWUgaGllcmFyY2h5IGFu
ZCBkZXNjcmliZXMgaG93IGNoaWxkIGRldmljZQpub2RlcyBzaG91bGQgYmUgYWRkcmVzc2VkLiBU
aGUgI2FkZHJlc3MtY2VsbHMgcHJvcGVydHkgZGVmaW5lcyB0aGUgbnVtYmVyIG9mCjx1MzI+IGNl
bGxzIHVzZWQgdG8gZW5jb2RlIHRoZSBhZGRyZXNzIGZpZWxkIGluIGEgY2hpbGQgbm9kZeKAmXMg
cmVnIHByb3BlcnR5LgpUaGUgI3NpemUtY2VsbHMgcHJvcGVydHkgZGVmaW5lcyB0aGUgbnVtYmVy
IG9mIDx1MzI+IGNlbGxzIHVzZWQgdG8gZW5jb2RlIHRoZQpzaXplIGZpZWxkIGluIGEgY2hpbGQg
bm9kZeKAmXMgcmVnIHByb3BlcnR5LgoKU28geW91IGNhbiBkcm9wIHRoaXMuCgo+IGRpZmYgLS1n
aXQgYS90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvbmFuZC5tayBiL3RhcmdldC9saW51eC9hdGg3
OS9pbWFnZS9uYW5kLm1rCj4gaW5kZXggZTY5ZGUyOWJiMi4uN2RiNWY1MWM5OCAxMDA2NDQKPiAt
LS0gYS90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvbmFuZC5tawo+ICsrKyBiL3RhcmdldC9saW51
eC9hdGg3OS9pbWFnZS9uYW5kLm1rCj4gQEAgLTAsMCArMSwxNSBAQAo+ICtkZWZpbmUgRGV2aWNl
L2dsaW5ldF9nbC1hcjc1MHMtbmFuZAo+ICsgIEFUSF9TT0MgOj0gcWNhOTU2Mwo+ICsgIERFVklD
RV9USVRMRSA6PSBHTC5pTmV0IEdMLUFSNzUwUwo+ICsgIERFVklDRV9QQUNLQUdFUyA6PSBrbW9k
LXVzYjIga21vZC1hdGgxMGstY3QgYXRoMTBrLWZpcm13YXJlLXFjYTk4ODctY3Qga21vZC1pMmMt
Z3Bpbwo+ICsgIEtFUk5FTF9TSVpFIDo9IDIwNDhrCj4gKyAgQkxPQ0tTSVpFIDo9IDEyOGsKPiAr
ICBQQUdFU0laRSA6PSAyMDQ4Cj4gKyAgVklEX0hEUl9PRkZTRVQgOj0gMjA0OAo+ICsgIElNQUdF
UyArPSBmYWN0b3J5LmltZwo+ICsgIElNQUdFL3N5c3VwZ3JhZGUuYmluIDo9IHN5c3VwZ3JhZGUt
dGFyIHwgYXBwZW5kLW1ldGFkYXRhCj4gKyAgSU1BR0UvZmFjdG9yeS5pbWcgOj0gYXBwZW5kLWtl
cm5lbCB8IHBhZC10byAkJCQkKEtFUk5FTF9TSVpFKSB8IGFwcGVuZC11YmkKPiArICBTVVBQT1JU
RURfREVWSUNFUyArPSBnbC1hcjc1MHMKCkknbSByZWFsbHkgbm90IHN1cmUgYWJvdXQgdGhpcy4g
RG8gd2UndmUgZW5vdWdoIGNoZWNrcyBpbiBwbGFjZSwgdGhhdCB3ZSB3b24ndAphbGxvdyBzeXN1
cGdyYWRlIGZyb20gTk9SPwoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
