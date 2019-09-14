Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E87CB2BEB
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 17:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dbiyofno/Bfk81A5GMX5eRcwZhaIRGXod2JykGqUzaM=; b=T53ama2k+JLz6K
	dLU5H6mZm6wFHJXiH399v0j4hPptzZEC9joiG+buLrP0kR9wwFQpDv+nnWogLlE4x7THjp8BVci6C
	UJrKSP0Wn2g+eyZqAYoNA0UaI2qtoqiEDJ0enrPBtf5i3mjGwgQfZ6QBRUyD9wC8R37vZzvrjIYoF
	SPaOFLINIgIwoBtnmGBto+lu61eUMda4QrsBWJh24x/wulXn+OI/d6uIIy2EtB0JnxHYxuwGbDitc
	fQiBf9tbYhTiWyD8gUvCltuqSzbyAWsQc3PJNsAAximqoifwZU2NK9HceSxjJtV0t7H9uWJOe44Oy
	dzi/yFejK+PWpGKh7Exw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9A95-0006TB-9h; Sat, 14 Sep 2019 15:39:31 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9A8v-0006So-W1
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 15:39:23 +0000
Received: by mail-io1-xd42.google.com with SMTP id f12so69200744iog.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 08:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=onWMzoqDReS8a6WsPmHhuuq3y+ktZp5BFE8Tuqy/wNs=;
 b=UUbHR3p7TZRbMt5Mp+nz+xLMPgr0tdzX1xrXPAeXn8/VK3Q3f7P06tavK8ovBtqrwq
 S5h6PiCyyuMiJcfF885u2/7n/mgS5tajbvU614XG/eVCQZES4aXBhjuy0fwSt2if8xdQ
 J9BeSKbSFR0iApu4/uQe4om32jHRO+Sv/sDcIIW9XTD8jjPa2mve2Mz0dVEjsCXDp7Uu
 xR2gcH1wh0T3xLAVb+B3tF7brrP6IvpStl1+ZMCAXM4FGX/s6M9UJdEiRY2TlXPaim+m
 goCeJmkfeLiColo/nzOjoiWY23QXglKS31CNz5/0E/6nwlu+cuOt7JXvi4W6OISW9BDq
 3sEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=onWMzoqDReS8a6WsPmHhuuq3y+ktZp5BFE8Tuqy/wNs=;
 b=XkNQavJGHXmmwliCeOYJHQxpahsSUCWE3Pr0E9yt7ZmoM2DfCHuJmBloZnsgcdJU9K
 7idlW+abF0CutFYGTc1pkqtMvn6Bbtq06Bzts3E3Md+NU29XTDe2WD4Q00VvK7WMPHST
 wpozWpEYPpfY4e8SGVz9gjOb6kqelNMawyqIsoqhjEHKkoH3j4DtAH6PuqPccd1DZad9
 SpvlEGsKt1iD1iEKrbTg7NUoAdHn38VVmaogXz+KhUqoxig90y6UmY3GNYqTQfsWVC1X
 0d4rCKgdJ3SYKqOYrvLvAQOsASHtuEdwD40yd7CND/XPxo65XQn09nqoO72zd0OcGHQc
 glMg==
X-Gm-Message-State: APjAAAWZzfYasaykZcPb8VrMxbpj5W5AavqwBlrdcRLImGduoMG2Ow+M
 PB+ZFoJK0VP39ZNdOKE9p+jAJNmctf4U5mY+1i4=
X-Google-Smtp-Source: APXvYqzHFG326l9Meq+pb2kOeDwFrH5OsjKZO7oilTr3WZRmVvMTh7/leK984TnjcWb6+sGNlElJ2jrVjG8xzV4uMQg=
X-Received: by 2002:a02:b60f:: with SMTP id h15mr1718360jam.73.1568475561073; 
 Sat, 14 Sep 2019 08:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <d62ee559-e78e-24e2-5753-ab473c91de23@marcant.net>
 <094d18fd-ac5a-3688-95b6-1391f39fe113@gmail.com>
 <5e19d219-e50f-cd7c-f6b1-6524f14adabe@ncentric.com>
In-Reply-To: <5e19d219-e50f-cd7c-f6b1-6524f14adabe@ncentric.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 14 Sep 2019 18:39:09 +0300
Message-ID: <CANoib0Hb_yv7mWux_nJYxAPhLDCX_DAbXit7ZZs5GDexc=2oUA@mail.gmail.com>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_083922_056849_761DE198 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] kernel: bump 4.19 to 4.19.72 broke ath79
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Andre Valentin <avalentin@marcant.net>, Magnus Kroken <mkroken@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGh4LiBJdCBpcyBmaXhlZCBub3cKCtGB0LEsIDE0INGB0LXQvdGCLiAyMDE5INCzLiDQsiAxODoz
NiwgS29lbiBWYW5kZXB1dHRlIDxrb2VuLnZhbmRlcHV0dGVAbmNlbnRyaWMuY29tPjoKPgo+Cj4g
T24gMTQtMDktMTkgMTI6NDcsIE1hZ251cyBLcm9rZW4gd3JvdGU6Cj4gPiBIaSBBbmRyZQo+ID4K
PiA+IE9uIDE0LjA5LjIwMTkgMTA6NDksIEFuZHJlIFZhbGVudGluIHdyb3RlOgo+ID4+IEl0IHNl
ZW1zIHRoZSBrZXJuZWwgYnVtcCBicm9rZSBhdGg3OSBjb21waWxhdGlvbi4gVGhlIHByb2JsZW0g
bGllcyBpbgo+ID4+IHRhcmdldC9saW51eC9hdGg3OS9wYXRjaGVzLTQuMTkvMDAyOC1NSVBTLWF0
aDc5LWRyb3AtbWFjaGZpbGVzLnBhdGNoCj4gPj4KPiA+PiBJdCBjYW5ub3QgYmUgYXBwbGllZCBh
bnltb3JlLiBJIHRyaWVkIGEgcXVpY2sgZml4LCBidXQgdGhlcmUgc2VlbXMgdG8KPiA+PiBiZSBh
IGJpZ2dlciBjaGFuZ2UuCj4gPgo+ID4gVGhlIGN1bHByaXQgaXNuJ3QgdGhlIGtlcm5lbCB1cGRh
dGUsIGJ1dCB0aGlzIGNvbW1pdDoKPiA+IDAwZDQ4YmNhYzAgYXI3MXh4OiBGaXggcG90ZW50aWFs
bHkgbWlzc2VkIElSUSBoYW5kbGluZyBkdXJpbmcgZGlzcGF0Y2gKPiA+Cj4gPiBLb2VuIChvciBh
bnlvbmUgZWxzZSksIGNhbiB5b3Ugc2hlZCBzb21lIGxpZ2h0IG9uIHRoaXMgb25lPyBJIG1vc3Rs
eQo+ID4gcG9rZSBhdCBrZXJuZWwgcGF0Y2hlcyB1bnRpbCBzb21ldGhpbmcgaGFwcGVucywgSSBk
b24ndCByZWFsbHkKPiA+IHVuZGVyc3RhbmQgaGFyZHdhcmUva2VybmVsIHdlbGwuIFNvbWUgdGhp
bmdzIGp1bXAgb3V0Ogo+ID4KPiBIaSwKPgo+IFNvcnJ5IGFib3V0IHRoYXQuCj4KPiBhdGg3OSBj
b250YWluZWQgYSBwYXRjaCB3aGljaCByZW1vdmVzIHRoZSBsZWdhY3kgaXJxIGNvZGUsIHdoaWNo
IGlzCj4gYmVpbmcgYWx0ZXJlZCBpbiB0aGUgZml4Lgo+Cj4gSGVuY2UgdGhlIHBhdGNoIGR1cmlu
ZyBidWlsZCBvZiBhdGg3OSBkaWRuJ3QgYXBwbHkuCj4KPiBJIGRpZG4ndCBub3RpY2UgaXQsIGFz
IHRoaXMgcmVtb3ZhbCB3YXMgb25seSB1cHN0cmVhbWVkIGluIDUuMCBhbmQgaXQncwo+IHN0cmlj
dGx5IG5vdCBuZWVkZWQgdG8gcmVtb3ZlIGl0LCBhcyBpdCdzIHNpbXBseSB1bnVzZWQgb3ZlciB0
aGVyZS4KPgo+IEZpeGVzIGhhcyBiZWVuIHB1c2hlZCBmb3IgbWFzdGVyIGFuZCAxOS4wNy4KPgo+
IFJlZ2FyZHMsCj4KPiBLb2VuCj4KPiA+IDEuIFRoZSBjb21taXQgbWVzc2FnZSBpcyBsYWJlbGVk
IGFyNzF4eCwgYnV0IHRoZSBwYXRjaCBpcyBhcHBsaWVkIHRvCj4gPiB0aGUgZ2VuZXJpYyB0YXJn
ZXQuIEl0IHBhdGNoZXMga2VybmVsIGZpbGVzIHRoYXQgSUlVQyBhcmUgdXNlZCBieSBib3RoCj4g
PiBhdGg3OSBhbmQgYXI3MXh4IHRhcmdldHMuCj4gPiAyLiBJdCBtb2RpZmllcyBhcmNoL21pcHMv
YXRoNzkvaXJxLmMuIFRoZSBwYXRjaCB0aGF0IGZhaWxzIG9uIGF0aDc5LAo+ID4gMDAyNy1NSVBT
LWF0aDc5LWRyb3AtbGVnYWN5LUlSUS1jb2RlLCBkZWxldGVzIHRoaXMgZmlsZSBjb21wbGV0ZWx5
Cj4gPiAod2hpY2ggbm93IGZhaWxzLCBhcyB0aGUgZmlsZSBjb250ZW50IGlzIGNoYW5nZWQgYnkK
PiA+IDM0My1NSVBTLWF0aDc5LUZpeC1wb3RlbnRpYWxseS1taXNzZWQtSVJRLWhhbmRsaW5nLWR1
cmluLnBhdGNoKS4KPiA+Cj4gPj4gS2luZCByZWdhcmRzLAo+ID4+Cj4gPj4gQW5kcsOpCj4gPgo+
ID4gUmVnYXJkcywKPiA+IE1hZ251cyBLcm9rZW4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
