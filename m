Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB75F196667
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 14:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/IZp+86UKAFEDeTqB8579RZlbCZQUu8a7tC+4lEp3XM=; b=qCdr1EFU6ZeXOfcITzzlXbmU5
	P3QTTCuZnyfMoaGE9Cn4uAkVMRakoVbo8LxO7Mcb2x9kZuGCyK6iWHaWVJi811yPa5XtSF1Q0igX4
	RRYs98rWPdCMbY07/ll4cf0qd+07rOB5rNq5R6mZdXHtUR+hv/2HMV3YCTmRLyYQCyW4E6s2REyWs
	6uMGDyPlOqCJrhWaXLoutT29NmoaqEZkBifiDBQmqPBhr5Bd6wkOFHWNp6KdiAQKwc44XojAzCRft
	iQNHhRRnrsqvSaI/WYZRCitETpSQnD0seu+XJPIOtsBPp6WMAnaYQpNyf3Nx94sQFiAg7Z1izHpmh
	LmsI3Kt5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIBoL-000500-UG; Sat, 28 Mar 2020 13:47:41 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIBoF-0004zR-S0
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 13:47:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id n17so13089146lji.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Mar 2020 06:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QCeVLfjbmy400R5Y45x4RhVmOtoFbsRzBuwp8DslCs0=;
 b=PW/luaU2kNFObkc7kCnXB/MJrPT8VVcP89IHy+EkEo0G6aFhRdKyTlw89I9B56Rcu5
 WfR1jRlA4OLGLGKHjOC4G50NySclopAF3pS+pFjTjAPoZmBjT8rkvUjvdwUDabe4f0D0
 uOa3ybysmRjpTO7A3cNFdPIrkiciHIsUpenRkHTo/JUpDaVNHxgNRc8c4/8m84GMedvo
 8svtjlduA9sPNpxdLcpTBDOla7fWsB50Q5GKXkpbJ+RE3FEqxOrSbtcDaUZTzX65plkp
 rgYuQ4dG7LmD0gnj2pOZwfD+qIiW+HdWvUikbMpMV50XqAo5Ulo2bBg926N/DNYT3y90
 aCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QCeVLfjbmy400R5Y45x4RhVmOtoFbsRzBuwp8DslCs0=;
 b=XbMLFshm8VvPuxeSKnMyxzTjfS+1XyfiVv3fvb5sRUn+FmPCYLIOPwOQp/n+Nb23sE
 fa6omiWCMNQL86dl+nUk5Vxc3WYCJ+0F69zmhzeuIXwJEgESu2qxFEH0owjOBjhavQaS
 xh5uVMlZ5guCU1CGNLDB+ifCKXpVQ9O9FFLZgPg8GZGoYdHXZq1Sbjunwy4OErXjwHBT
 N/lJYFUiorfUAXj7FaNY7HBjrfnDw3oRSP5K5TIR53HltlVIIG1+uCQqEbLGy7l6lm3w
 AM1mmOuJeQwSnlFQFH4llXOkw9cbxt35fYcHQeJI4bq0CST2gXSaGK/KZ9ampqZd/L8B
 gbDA==
X-Gm-Message-State: AGi0PuYtu/SXWIvf+1kfu27pJs8DAB+XxHh7e6Wi9vetCchCVOQeiR41
 ikLotTY+b6WlDtEuEoA2g/XCvgDe
X-Google-Smtp-Source: APiQypKl8CooI27R/Zx33Wt91M/8IKwRfY/dSgIIEHIxP3sBF4KwOj44zrrOVKj2dKifE3Wh5Jbrew==
X-Received: by 2002:a05:651c:1047:: with SMTP id
 x7mr2320615ljm.246.1585403252263; 
 Sat, 28 Mar 2020 06:47:32 -0700 (PDT)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id x17sm3924379ljc.33.2020.03.28.06.47.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Mar 2020 06:47:31 -0700 (PDT)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20200324233343.27749-1-pepe2k@gmail.com>
 <003c01d60297$995af2c0$cc10d840$@adrianschmutzler.de>
 <d1346acc-465b-baa3-ae98-50ebd9660033@gmail.com>
 <00d201d602bd$771ad510$65507f30$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <982dbc7a-f74e-af6c-82ff-600f477a125e@gmail.com>
Date: Sat, 28 Mar 2020 14:47:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <00d201d602bd$771ad510$65507f30$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_064735_910546_3AC8E0C9 
X-CRM114-Status: GOOD (  28.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] target.mk: enable iwinfo by default
 with any wpad variant
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
Cc: 'Jo-Philipp Wich' <jo@mein.io>, 'Felix Fietkau' <nbd@nbd.name>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQWRyaWFuLAoKT24gMjUuMDMuMjAyMCAxNjo1MywgbWFpbEBhZHJpYW5zY2htdXR6bGVyLmRl
IHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBQaW90ciBEeW1h
Y3ogW21haWx0bzpwZXBlMmtAZ21haWwuY29tXQo+PiBTZW50OiBNaXR0d29jaCwgMjUuIE3DpHJ6
IDIwMjAgMTU6MDgKPj4gVG86IG1haWxAYWRyaWFuc2NobXV0emxlci5kZTsgb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwo+PiBDYzogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPjsg
Sm8tUGhpbGlwcCBXaWNoIDxqb0BtZWluLmlvPgo+PiBTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2
ZWxdIFtQQVRDSF0gdGFyZ2V0Lm1rOiBlbmFibGUgaXdpbmZvIGJ5IGRlZmF1bHQKPj4gd2l0aCBh
bnkgd3BhZCB2YXJpYW50Cj4+IAo+PiBIaSBBZHJpYW4sCj4+IAo+PiBPbiAyNS4wMy4yMDIwIDEy
OjIxLCBtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGUgd3JvdGU6Cj4+ID4gSGkgUGlvdHIsCj4+ID4K
Pj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gPj4gRnJvbTogb3BlbndydC1kZXZl
bCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwtCj4+IGJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddCj4+
ID4+IE9uIEJlaGFsZiBPZiBQaW90ciBEeW1hY3oKPj4gPj4gU2VudDogTWl0dHdvY2gsIDI1LiBN
w6RyeiAyMDIwIDAwOjM0Cj4+ID4+IFRvOiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cj4+ID4+IFN1YmplY3Q6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0hdIHRhcmdldC5tazogZW5hYmxl
IGl3aW5mbyBieSBkZWZhdWx0Cj4+ID4+IHdpdGggYW55IHdwYWQgdmFyaWFudAo+PiAKPj4gWy4u
Ll0KPj4gCj4+ID4gU2luY2UgeW91IGFyZSB0b3VjaGluZyB0aGlzLCBtYXliZSB5b3UgY2FuIGVs
YWJvcmF0ZSB3aHkgdGhpcwo+PiA+IGV4dHJhX3BhY2thZ2VzIGNvbnN0cnVjdCBpcyBuZWVkZWQg
YXQgYWxsPwo+PiAKPj4gSSBkb24ndCBrbm93IGV4YWN0IHJlYXNvbiBhbmQgaXQgd2FzIGFkZGVk
IGxvbmcgdGltZSBhZ28sIGluIDIwMTQsIHNlZToKPj4gNjQzNWI4YmIyN2UuIEkgc3VwcG9zZSB0
aGF0IHdhcyB0aGUgZWFzeSB3YXkgdG8gaGFuZGxlIGl0IGJhY2sgdGhlbj8KPj4gCj4+ID4gV2h5
IGNhbid0IHdlIGp1c3QgYWRkIGl3aW5mbyBhcyBzZWxlY3RpdmUgZGVwZW5kZW5jeSB0byB0aGUg
d3BhZC0vbmFzCj4+ID4gcGFja2FnZXMgYXMgd2UgZG8gZm9yIGFsbCBvZiB0aGUgb3RoZXIgcGFj
a2FnZXM/Cj4+IAo+PiBDb3VsZCB5b3UgZXhwbGFpbiB3aGF0IHlvdSBtZWFuIGJ5ICdzZWxlY3Rp
dmUgZGVwZW5kZW5jeSc/Cj4+IAo+PiBJIGRvbid0IHRoaW5rIERFUEVORFMgaXMgY29ycmVjdCB3
YXkgdG8gaGFuZGxlIHRoaXMuIERvIHlvdSBtZWFuIHVzZSAnc2VsZWN0Cj4+IGl3aW5mbycgaW4g
d3BhZC9uYXMgcGFja2FnZXMgY29uZmlnPwo+IAo+ICBGcm9tIHRoZSBwb2ludCBvZiBfZnVuY3Rp
b25hbGl0eV8sIGl0IHdvdWxkIGp1c3QgYmUgYQo+IERFUEVORFMgOj0gK2l3aW5mbwo+IGZvciB0
aGUgcmVsZXZhbnQgcGFja2FnZXMuCj4gCj4gSG93ZXZlciwgSSdtIGF3YXJlIHRoYXQgdGhpcyBp
cyBub3QgY29ycmVjdCBmcm9tIGEgX2NvbmNlcHRpb25hbF8gcG9pbnQgb2Ygdmlldywgc2luY2Ug
aXdpbmZvIGlzIG5vdCBhICJkZXBlbmRlbmN5Ii4KCkV4YWN0bHksIHBsdXMgdGhpcyBoYXMgYWxz
byBydW4tdGltZSBjb25zZXF1ZW5jZXMuCgo+PiA+IEknbSBhc2tpbmcgYmVjYXVzZSBJIHJlY2Vu
dGx5IGhhZCBhIGRvd25zdHJlYW0gY2FzZSB3aGVyZSB3ZSB1c2UKPj4gPiBob3N0YXBkIGluc3Rl
YWQgb2Ygd3BhZCBhbmQgd2FudGVkIHRvIGdldCBvZiBpd2luZm8uIEkgZXhwZWN0ZWQgaXdpbmZv
Cj4+ID4gdG8gZ28gYXdheSBiZWNhdXNlIG5vdGhpbmcgc2VsZWN0ZWQgaXQgYW55bW9yZSwgYnV0
IGluIHRoaXMgY2FzZSBpdAo+PiA+IHR1cm5lZCBvdXQgdGhhdCBpd2luZm8gaXMgbm90IGF1dG9t
YXRpY2FsbHkgZGVzZWxlY3RlZCwgYnV0IGhhcyB0byBiZQo+PiA+IHJlbW92ZWQgbWFudWFsbHkg
YXMgd2VsbC4KPj4gCj4+IEkgc3VwcG9zZSB5b3Ugc2hvdWxkIGZpcnN0IGxvb2sgYXQgREVGQVVM
VF9QQUNLQUdFUyBhbmQgdGFyZ2V0Lm1rLgo+PiBJbiBtb3N0IGNhc2VzLCB3cGFkLSogaXMgYWRk
ZWQgdGhlcmUgYW5kIHRoYXQncyBob3cgaXdpbmZvIGdldHMgc2VsZWN0ZWQuCj4gCj4gRm9yIHRp
bnkgZGV2aWNlcywgd2UgcmVwbGFjZSB3cGFkLW1pbmkgYnkgaG9zdGFwZC1taW5pIChhcjcxeHgv
YXRoNzkpOgo+IAo+IENPTkZJR19QQUNLQUdFX2hvc3RhcGQtbWluaT15Cj4gQ09ORklHX1BBQ0tB
R0Vfd3BhZC1taW5pPW0KPiAKPiBIb3dldmVyLCB0aGlzIHdpbGwgbm90IHVuc2VsZWN0IGl3aW5m
byAoYXMgaXQgc2hvdWxkIHRoZW9yZXRpY2FsbHkgYWNjb3JkaW5nIHRvIHRoZSBleHRyYV9wYWNr
YWdlcyBjb25kaXRpb24pLCB3aGljaCB3aWxsIHN0aWxsIGJlIGF0ICJ5Iiwgc28gd2lsbCBiZSBi
dWlsdCBpbnRvIHRoZSBpbWFnZXMuCj4gCj4gVGhpcyBjYW4gYWxzbyBiZSBvYnNlcnZlZCBpbiBt
YWtlIG1lbnVjb25maWcsIHdoZXJlIGRlc2VsZWN0aW5nIGFueSB3cGFkIHBhY2thZ2VzIGRvZXMg
bm90IGFmZmVjdCB0aGUgc3RhdHVzIG9mIGl3aW5mby4gSSBhc3N1bWUgdGhhdCB0aGUgZXh0cmEt
cGFja2FnZXMgY29uZGl0aW9uIGlzIGp1c3QgZXZhbHVhdGVkICJ0b28gZWFybHkiLCBhbmQgbm90
IHVwZGF0ZWQgZHVyaW5nIGV2YWx1YXRpb24gaW4gbWFrZSBtZW51Y29uZmlnIGxpa2UgInJlYWwi
IGRlcGVuZGVuY2llcy4KPiAKPiBPZiBjb3Vyc2UsIHJlbW92aW5nIGl3aW5mby9saWJpd2luZm8g
ZnJvbSBpbWFnZXMgY2FuIGVhc2lseSBiZSBhY2hpZXZlZCBieQo+IAo+IENPTkZJR19QQUNLQUdF
X2l3aW5mbz1tCj4gQ09ORklHX1BBQ0tBR0VfbGliaXdpbmZvPW0KPiAKPiBJdCdzIGp1c3Qgbm90
IGEgImxpdmUtdXBkYXRlIiBsaWtlIHdlIGFyZSB1c2VkIHRvIGZyb20gREVQRU5EUy4KCklmIHlv
dSBhcmUgdXNpbmcgY3VzdG9tIGNvbmZpZyBmaWxlcyBmb3IgYnVpbGRpbmcsIHRoaXMgaXMgdGhl
IGNvcnJlY3QgCndheSB0byBoYW5kbGUgaXQuCgo+ICBGcm9tIGxvb2tpbmcgYXQgdGhlIGRlcGVu
ZGVuY2llcyBhcyBkZXNjcmliZWQgaW4gdGhlIFdpa2kgWzFdLCBJIGRvIG5vdCB0aGluayB0aGVy
ZSByZWFsbHkgaXMgYW4gYWx0ZXJuYXRlIHNvbHV0aW9uIGF2YWlsYWJsZSBhdCB0aGUgbW9tZW50
LCB0aG91Z2guCgpBcmUgeW91IHN1cmUgKHdhcm46IGhhdmVuJ3QgdHJpZWQgdGhhdCk/Cmh0dHBz
Oi8vb3BlbndydC5vcmcvZG9jcy9ndWlkZS1kZXZlbG9wZXIvZGVwZW5kZW5jaWVzI3NwZWNpYWxf
bm90ZXMKCj4gU29tZWJvZHkgd291bGQgaGF2ZSB0byBidWlsZCBvbmUsIHNvbWV0aGluZyBsaWtl
IEBUQVJHRVRfYXRoNzksIGJ1dCBub3QgZm9yIHZpc2liaWxpdHksIGJ1dCBmb3Igc2VsZWN0aW9u
LiBTbywgc29tZWJvZHkgY291bGQganVzdCBhZGQgdGhlIG5ldyAiZGVwZW5kZW5jeSIgKHVzaW5n
IMKnIGFzIHN5bWJvbCBmb3IgdGhlIGV4YW1wbGUpIHRvIHRoZSBpd2luZm8gcGFja2FnZSBpbnN0
ZWFkIG9mIHVzaW5nIHRoZSBleHRyYV9wYWNrYWdlcyBjb25zdHJ1Y3Q6Cj4gCj4gREVQRU5EUyAr
PSDCp3dwYWQtbWluaSDCp3dwYWQtYmFzaWMgwqduYXMgLi4uCj4gSG93ZXZlciwgSSdtIG5vdCBz
dXJlIHdoZXRoZXIgaW1wbGVtZW50aW5nIHRoYXQgd291bGQgcmVhbGx5IGJlIHdvcnRoIGl0LCBj
b25zaWRlcmluZyB0aGF0IGRpc2FibGluZyBleHRyYV9wYWNrYWdlcyBtYW51YWxseSBpcyBzdGls
bCBxdWl0ZSBlYXN5IHRvIGRvLgoKTm8uClRoaXMgaXMgbm90IGEgZGVwZW5kZW5jeSBzbyBERVBF
TkRTIGlzIG5vdCB0aGUgY29ycmVjdCB3YXkgdG8gaGFuZGxlIGl0LgoKLS0gCkNoZWVycywKUGlv
dHIKCj4gCj4gQmVzdAo+IAo+IEFkcmlhbgo+IAo+IFsxXSBodHRwczovL29wZW53cnQub3JnL2Rv
Y3MvZ3VpZGUtZGV2ZWxvcGVyL3BhY2thZ2VzI2RlcGVuZGVuY3lfdHlwZXMKPiAKPj4gCj4+IEJ1
dCBJIHNlZSB0aGUgcHJvYmxlbSBoZXJlLCBJJ20ganVzdCBub3Qgc3VyZSBpZiBpdCdzIHNhZmUg
dG8gY2hhbmdlIGN1cnJlbnQKPj4gYXBwcm9hY2guIE1heWJlIEZlbGl4IG9yIEpvIGFyZSBhYmxl
IHRvIGV4cGxhaW4gcmVhc29uIGZvciB1c2luZwo+PiBleHRyYV9wYWNrYWdlcy4KPj4gCj4+IC0t
Cj4+IENoZWVycywKPj4gUGlvdHIKPj4gCj4+ID4KPj4gPiBCZXN0Cj4+ID4KPj4gPiBBZHJpYW4K
Pj4gPgo+PiA+Pgo+PiA+PiAgZGVmaW5lIFByb2ZpbGVEZWZhdWx0Cj4+ID4+ICAgIE5BTUU6PQo+
PiA+PiAtLQo+PiA+PiAyLjIwLjEKPj4gPj4KPj4gPj4KPj4gPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gPj4gb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKPj4gPj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+PiA+PiBodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+PiA+Cj4g
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
