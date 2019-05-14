Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A4D1C7A6
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 13:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVsCWz3WX4xERxSslhU4p1JcKQFgZfBnhGXVeGridaY=; b=DGSqqr0IIQB3Nd
	ppBx1Va4fhgLbrLJgRX/h7ki3E6hsfgG1OyvzPGmPU/Xx92SkdK5KMiaxf9adsNzOcPT19eFLF7nt
	CF2EucOVzEaLXmqhTeb1GHw+FZrsLdGK2Dbod7jOP5yqxUG1q8OW9e43kudmIiQMZc1SxQsqgsFnJ
	Hd4rDEfMgMwPsmb50hIZ/XKZZMWznASLyiF3jdAnw2RlXneDYx59VSjzaT8gHn+2saoYEwOHvHvBW
	ftGFGSHh4eFYy2wcD71HYK4+eecOhGyPhmR8ta/5H3EvRT+/ppYvgXw/i5H6noNWsek2oh241X3ep
	qszQn+qgbvZ1Xhe0YatA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQVQl-0001iK-5E; Tue, 14 May 2019 11:17:11 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQVQd-0001hl-V0
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 11:17:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id y19so11549449lfy.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 04:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5Vc8kuqCVRsYRoxm2DZnF28p4or2eaEhA4MWzvjQK2g=;
 b=QPIXHl4GSSwbY9fbv8gCEU3cDnjXIDxrk+hJNXjMaDzFn5+/GXvlKy9YVw+ad1kZ0I
 V5L4x1VAp0oeexuD/kx9lNhKGKwf/RqBu1WAStfmXnUFqz4JhzP3n4xp/rhIv9yIpyjL
 1+NztlAvZaPTsQHId3Wwn4os8ohdXGlES7cOQbpzZuo4ALpGIRvZODj9bNVb5ylRxrL4
 UVu1QmwBPUAr1ot8IPMSiizdsmiBCaycTtFRqYw0Xom/8CPtFzz/uHTJxXwjWOXY4p5+
 GlVL0qv3YHqMsMhBGv6qWwGTNguQTTqCqdb2rv/7JJJkJa/GB+1nux/idCzbpEZ67YOP
 wOdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5Vc8kuqCVRsYRoxm2DZnF28p4or2eaEhA4MWzvjQK2g=;
 b=sLTrVJMAG5YlNSokDLRYQvvKj3BpCPoHsuaqhM52gFSkeqBclSp5gyKEgw+fXwB+AV
 SYY4soPL8+M2aRyfYNSXsANqSP3Kg5Fd9Hcs+kUr2JUhWxgMjOIay/PGwymfRCIKf3OD
 +UAZxh7IyLrKETvbWEuvRJIVda8SGDHYMYIzGestaOjb/siR6OZ25yFSIxqTjjzi95A9
 FllTp2T4iqj3xU2PG0E7pHxNcjXO3UUXubp2PwlKfaivSkaR32crC7bZEWXrGVNFVDdP
 c/9hWpVzw+AJH2E88oV2z4PvGbp02egY+Mq6dxM2+s2pnvO8+ptLuXn1AWidgNWiSHQ0
 gSaA==
X-Gm-Message-State: APjAAAUy2kChwGN9SnV0H5ZaKLU9C2V/vnAaalKv781C5y5/6wrpTSmO
 hSzvliBuExgVu+lpMXPcTWy82hjdebUoHdvgDLm5Bw==
X-Google-Smtp-Source: APXvYqxnYoQUL2TeZgOpREJSX/C7xwVrZUZ9F7yAiw/z+9suf1ByeQzEPEBeGP3cqWHntwg2HB5FQVvdcoqCclaA2zc=
X-Received: by 2002:ac2:5621:: with SMTP id b1mr17386671lff.27.1557832621666; 
 Tue, 14 May 2019 04:17:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190512191317.32061-1-linus.walleij@linaro.org>
 <20190514083038.GA31332@meh.true.cz>
In-Reply-To: <20190514083038.GA31332@meh.true.cz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 May 2019 13:16:50 +0200
Message-ID: <CACRpkdZ3JBBt8qTnC5KhLm1QUPhRU1WmQggenC+RhQmkwvd5oQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_041704_064668_878DBD42 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Support sysupgrade on DIR-685
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCBNYXkgMTQsIDIwMTkgYXQgMTA6MzAgQU0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cgo+IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4g
WzIwMTktMDUtMTIgMjE6MTM6MTddOgoKPiA+ICtSRVFVSVJFX0lNQUdFX01FVEFEQVRBPTEKPgo+
IG9uY2UgeW91IHNldCB0aGlzLCB5b3UgZG9uJ3QgbmVlZCB0byBjaGVjayBmb3IgdGhlIGltYWdl
IG1hZ2ljLCBkbyB5b3U/IElmIHNvLAo+IHBsZWFzZSBwcm92aWRlIHRoZSByZWFzb24gZm9yIHRo
YXQuCgpUaGUgaW1hZ2UgbWFnaWMgaXMgbmVjZXNzYXJ5IGZvciB0aGUgYm9vdCBsb2FkZXIgdG8g
cmVjb2duaXplCmFuZCBib290IHRoZSBpbWFnZS4gU2luY2UgZmxhc2hpbmcgYW4gaW1hZ2Ugd2l0
aG91dCB0aGlzIG1hZ2ljCndpbGwgYnJpY2sgdGhlIGRldmljZSwgSSBmZWVsIGl0IHNob3VsZCBi
ZSBjaGVjayBhcyBhICJiZXR0ZXIgc2FmZQp0aGFuIHNvcnJ5IiBtZWFzdXJlLCBzbyB3ZSBjYW5u
b3QgdW5kZXIgYW55IGNpcmN1bXN0YW5jZXMKZmxhc2ggc29tZXRoaW5nIHRoYXQgdGhlIHJvdXRl
ciBjYW5ub3QgYm9vdC4KCkRvIHlvdSB3YW50IG1lIHRvIGFkZCB0aGlzIHRvIHRoZSBjb21taXQg
bWVzc2FnZT8KCj4gR2VuZXJhdGVkIGltYWdlIGlzIHNpbXBseSBnb2luZyB0byBjb250YWluCj4g
bGlzdCBvZiBjb21wYXRpYmxlIGJvYXJkcyBpbiBpdCdzIG1ldGFkYXRhIEpTT04gKGNvbW1pbmcg
ZnJvbQo+IFNVUFBPUlRFRF9ERVZJQ0VTIHZhcmlhYmxlKSBzbyBJIHRoaW5rLCB0aGF0IHRoaXMg
Z2VuZXJpYyBjaGVjayBzaG91bGQgYmUKPiBlbm91Z2guCgpJbiB0aGVvcnkgeWVzIGJ1dCBpbiBz
byBtYW55IHByYWN0aWNhbCBzaXR1YXRpb25zIEkgaGF2ZQptdXR0ZXJlZCB0aGUgd29yZHMgInRo
YXQgc2hvdWxkIG5vdCBoYXBwZW4iIGFuZCB0aGF0IGlzCndoeSBJIGZlZWwgaXQgaXMgYmV0dGVy
IHRvIGhhdmUgZG91YmxlIHNhZmV0eSBjaGVja3MuCgo+ID4gK3BsYXRmb3JtX2ZpbmRfcGFydF9z
aXplKCkgewo+ID4gKyAgICAgbG9jYWwgZmlyc3QgZGV2IHNpemUgZXJhc2VzaXplIG5hbWUKPiA+
ICsgICAgIHdoaWxlIHJlYWQgZGV2IHNpemUgZXJhc2VzaXplIG5hbWU7IGRvCj4gPiArICAgICAg
ICAgICAgIG5hbWU9JHtuYW1lIyciJ307IG5hbWU9JHtuYW1lJSciJ30KPiA+ICsgICAgICAgICAg
ICAgWyAiJG5hbWUiID0gIiQxIiBdICYmIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBlY2hv
ICIkc2l6ZSIKPiA+ICsgICAgICAgICAgICAgICAgICAgICBicmVhawo+ID4gKyAgICAgICAgICAg
ICB9Cj4gPiArICAgICBkb25lIDwgL3Byb2MvbXRkCj4gPiArfQo+Cj4gV2h5IGlzIHRoaXMgbmVl
ZGVkPyBJIGRvbid0IHNlZSBpdCBiZWluZyB1c2VkIGFueXdoZXJlLgoKSSdsbCBkcm9wIGl0LgoK
WW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
