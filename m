Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3292714D5A6
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 05:40:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFGSatr5kAEZz+so+2N2+KBwko4qgJ5HNGhjxySuliE=; b=J5PxdEFfHURiEs
	2AhIQKoUKhnW//LrFzYFP/lBIMfDUETzuH7suj+T26T4bLjyDGimzzKaoSxMDrDLNVIiCt6unEG18
	MjB2duej7ARQji7NEVDPmo4TEmuXRJD7db+XebyS49q26gdRfhdQkyfutOJy4yLWbHwCzK6YjpVm5
	34A8umNmjaVFyc4lzj4j9mFgWte5Htz5CMK0Dg2EkSz6/XIH/QOJCCYj0ynaH/DYUT2tPXGnhgZRb
	fx+7kQr080AvP3Wq8DUySSWzJqMRo7pak8NxtocJOgBOihmRRU8HknEqPrjc3CCVwS7Xf2q31phQh
	vFpy3MfloKK57qyr3IUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix1cn-0002kW-RF; Thu, 30 Jan 2020 04:40:17 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix1ch-0002Xu-1A
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 04:40:12 +0000
Received: by mail-oi1-x241.google.com with SMTP id v19so2205771oic.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 20:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kz4YDyTe24huWTfNnS3ffdzdg5QWVnuBjsDW+rS/qMo=;
 b=mo6UbAZ/Pop0LIgns0+nVNnYQnPoA/nXXCYRCvQEIcgCeW3guJuUYpZD0QyAPpqPTZ
 Y0WP2xFYKmQqMOg6qLx/1ckcJhrKI7R4G9MN4MwraJ1X1vTD0B3qX03KT8tZNlZREAZM
 clgLkhXPUNvdeIPgBxKu70ueDjXPnC8GIZjdm21omWnzkG/jFCFqagtzkCh6dNDxl3vQ
 qjhYp0u0CTORCRZ8pIOYVCDFfmbSxC9iPkBYwV243hRnAHaJVQIiNQd8DkIWa5BK4TEH
 RkmO8l7UByPzksHSVInNlCG2WgJ++VNHGOJwSkyBxDjsqTtjo9s7IQDkxN8cKrW0caIx
 tRXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kz4YDyTe24huWTfNnS3ffdzdg5QWVnuBjsDW+rS/qMo=;
 b=a7PdF50R/B2YXCd3pBOU5roK5rujEwj9zomPyFjgz6B5gJNYyoIMynM9qMA9i+uBC0
 jsD4OPknjjsXrLRk1Ix5fh63RJwmnD+BQofQbD3an27yoaXVoBPIgaYGs2qNKIw/eycv
 BgDaSv62I4+KSsnAo9LQ6ynWPcqJM2uf/xN2G5qCgsq+/bzkad20JlIBMwE2ThRrr70m
 4gbY691AHAJqwOYpKXxlsW5XCeybpHUuwYAl4aGVOurRyDHw8AUNe8DAVrnBHUuuguze
 4NUK7Okk5+3q6vppaEeaTCgJhgGqbt1qs1KSyL+tm3r8IHQ8sKtparaZADfifzaKdCeK
 JJjg==
X-Gm-Message-State: APjAAAVspt3fSlSgcyxNGPjdH3Dihsc68qwtERlype+07y7Xd5ejuiXf
 vcZ1K7sW8eAyTIzNRvcBOqAriDmgBspDS/pNVHKpqf4D
X-Google-Smtp-Source: APXvYqxsfkWO2eBO1gsSWyUR/7Z/OCY2++NgtEyYSk7PVoicpUjhKvoj92xuv8LP7cdC63d3JRlikctwzQcl/xFvI3g=
X-Received: by 2002:aca:b703:: with SMTP id h3mr1697067oif.148.1580359207957; 
 Wed, 29 Jan 2020 20:40:07 -0800 (PST)
MIME-Version: 1.0
References: <20200129162210.GA78186@meh.true.cz>
 <81451FC6-CB4C-4A43-87B0-50BCF581678E@gmail.com>
In-Reply-To: <81451FC6-CB4C-4A43-87B0-50BCF581678E@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 29 Jan 2020 20:39:57 -0800
Message-ID: <CAKxU2N87DQ-Zat0vmSU4iKgcR32t2L-v0_4WLQSvjyg9ZoFySA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_204011_112445_7867E722 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBKYW4gMjksIDIwMjAgYXQgMzoxNCBQTSBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWls
LmNvbT4gd3JvdGU6Cj4KPgo+Cj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Cj4gPiBPbiBKYW4gMjks
IDIwMjAsIGF0IDg6MjIgQU0sIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+
ID4KPiA+IO+7v1Jvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAyMC0wMS0yNSAxNTow
NDowM106Cj4gPgo+ID4gSGkgQmrDuHJuIGFuZCBSb3NlbiwKPiA+Cj4gPj4+IE9uIFRodSwgSmFu
IDIzLCAyMDIwIGF0IDEyOjI1IEFNIEJqw7hybiBNb3JrIDxiam9ybkBtb3JrLm5vPiB3cm90ZToK
PiA+Pj4+Pgo+ID4+Pj4+IC0gICAgIGlmICgocnRfc3lzY19yMzIoU1lTQ19SRUdfQ0hJUF9SRVZf
SUQpICYgMHhGRkZGKSA9PSAweDAxMDEpIHsKPiA+Pj4+PiAtICAgICAgICAgICAgIC8qIChHRTEs
IEZvcmNlIDEwMDBNL0ZELCBGQyBPTiwgTUFYX1JYX0xFTkdUSCAxNTM2KSAqLwo+ID4+Pj4+ICsg
ICAgIGlmICgocnRfc3lzY19yMzIoU1lTQ19SRUdfQ0hJUF9SRVZfSUQpICYgMHhGRkZGKSA+PSAw
eDAxMDEpIHsKPiA+Pj4+PiArICAgICAgICAgICAgIC8qIChHRTEsIEZvcmNlIDEwMDBNL0ZELCBG
QyBPRkYsIE1BWF9SWF9MRU5HVEggMTUzNikgKi8KPiA+Pj4+PiAgICAgICAgICAgICAgbXRrX3N3
aXRjaF93MzIoZ3N3LCAweDIzMDVlMzBiLCBHU1dfUkVHX01BQ19QMF9NQ1IpOwo+ID4+Pj4+ICAg
ICAgICAgICAgICBtdDc1MzBfbWRpb193MzIoZ3N3LCAweDM2MDAsIDB4NWUzMGIpOwo+ID4+Pj4+
ICAgICAgfSBlbHNlIHsKPiA+Pj4KPiA+Pj4gSWYgdGhhdCdzIHJlYWxseSBoZWxwaW5nIHRoZW4g
SSBiZWxpZXZlIGl0IHdvdWxkIGJlIHVzZWZ1bCB0byBhZGQgc29tZQo+ID4+PiBzb3J0IG9mIGNo
aXBfcmV2X2lkIHByaW50ayBoZXJlLiAgV291bGQgYmUgZ29vZCB0byBrbm93IHdobyBoaXRzIHRo
aXMKPiA+Pj4gYW5kIHdoeS4uLgo+ID4KPiA+IEkganVzdCBxdWlja2x5IHNraW1tZWQgdGhyb3Vn
aCB0aGUgY29kZSBhbmQgaXQgc2VlbXMgbGlrZSB3ZSd2ZSB0aGF0Cj4gPiBpbmZvcm1hdGlvbiBh
bHJlYWR5IGluIGRtZXNnOgo+ID4KPiA+IFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2ODggdmVyOjEg
ZWNvOjIgICAgPSAweDAxMDIKPiA+IFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2MjhBTiB2ZXI6MSBl
Y286MiAgPSAweDAxMDIKPiA+IFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2MjEgdmVyOjEgZWNvOjMg
ICAgPSAweDAxMDMKPiA+IFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2MjBBIHZlcjoyIGVjbzozICAg
PSAweDAyMDMKPiA+IFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2MjBOIHZlcjoyIGVjbzo2ICAgPSAw
eDAyMDYKPiA+Cj4gPj4gVGhhdCdzIGp1c3QgY29zbWV0aWMuCj4gPgo+ID4gY3VycmVudDogPT0g
MHgwMTAxCj4gPiBuZXc6ICAgICA+PSAweDAxMDEKPiBJIG1lYW50IHRoZSBjb21tZW50IHRvIHBy
aW50IHRoZSBTb0MgSUQuCj4gPgo+ID4gRG9lc24ndCBsb29rIGxpa2UgYSBjb3NtZXRpYyBjaGFu
Z2Ugbm9yIGNvcnJlY3QsIHNlZSBhYm92ZSBsaXN0LiBXaGF0IGFib3V0Cj4gPiBmb2xsb3dpbmc/
Cj4gPgo+ID4gIGlmIChyYWxpbmtfc29jID09IE1UNzYyWF9TT0NfTVQ3NjIxQVQpIHsKPiA+ICAg
ICAgIC8qIChHRTEsIEZvcmNlIDEwMDBNL0ZELCBGQyBPRkYsIE1BWF9SWF9MRU5HVEggMTUzNikg
Ki8KPiA+ICAgICAgIG10a19zd2l0Y2hfdzMyKGdzdywgMHgyMzA1ZTMwYiwgR1NXX1JFR19NQUNf
UDBfTUNSKTsKPiA+ICAgICAgIG10NzUzMF9tZGlvX3czMihnc3csIDB4MzYwMCwgMHg1ZTMwYik7
Cj4gPiAgfSBlbHNlIHsKPiA+ICAgICAgIC4uLgo+ID4gIH0KPiBNYXliZS4gQWxsIEkga25vdyBp
cyB0aGF0IHRoZSBwYXRjaCBhcyBJIHBvc3RlZCBpdCB3b3JrcyB3ZWxsIGFjY29yZGluZyB0byBw
ZW9wbGUgb24gdGhlIGZvcnVtcy4KT24gYSBzZWNvbmQgbG9vayB0aGlzIGlzIHRvdGFsbHkgYm9n
dXMuCgpPbiBrZXJuZWwub3JnLCB0aGUgcmFsaW5rX3NvYyB2YXJpYWJsZSBpcyBvbmx5IHVzZWQg
aW4gYXJjaC9taXBzICwKbWFpbmx5IHVuZGVyIHRoZSByYWxpbmsgc3ViZGlyZWN0b3J5LiBJIGRv
bid0IHRoaW5rIGl0IHNob3VsZCBiZSB1c2VkCmZvciB0aGUgc3dpdGNoIGRyaXZlci4KPiA+Cj4g
PiBJIGp1c3QgZG9uJ3Qga25vdyB3aGljaCBNZWRpYVRlayBTb0MgaXMgMHgwMTAxICh2ZXI6MSBl
Y286MSksIGJ1dCBJIGFzc3VtZSwKPiA+IHRoYXQgdGhpcyBjb25kaXRpb24gaXMganVzdCBib2d1
cyBmcm9tIHRoZSBiZWdpbm5pbmcuCj4gPgo+ID4gLS0geW5lenoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
