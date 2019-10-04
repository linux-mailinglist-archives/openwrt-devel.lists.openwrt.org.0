Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D382CBCCF
	for <lists+openwrt-devel@lfdr.de>; Fri,  4 Oct 2019 16:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NjpqFuGurTpu9SpjLMoLCUq4pRQ9P4qUYhruLXRlA9c=; b=LLUaz7FawkaD/CSvVYxZ7kA87
	MwRLoVoajUyNUHmPnZ4DORK31L0sK7KSKcquaUbN1KnE36bzawanLTuMdRhv6wv3xt23o/j0QHBWZ
	/8tq4Uy4eqT3V6mpWCvQcFLOi2kiDMc2tBB0bCOFLo5UsSm1+tiVfPis3cgeNMAHssW5IfppONsS6
	5zhdV2RLsgudY9/wAyzCnp+a+X1SygcoXTAdivtje9wSYy+XJWoQLAaJCHajlrNW09y/LNkoXq1da
	Nkcvv6C02CQ9lNQokqxSMnoLNNK5ihQPcxejRiwBsNQO7Xczdk6oeVeuP4/IVbV3FuPG9pDS3oOWd
	Y9+ZHA/AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGONs-0008VC-7a; Fri, 04 Oct 2019 14:16:40 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGONj-0008UX-Km
 for openwrt-devel@lists.openwrt.org; Fri, 04 Oct 2019 14:16:33 +0000
Received: by mail-ed1-x541.google.com with SMTP id f20so5989014edv.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 04 Oct 2019 07:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ASLR0JaGSmyz1arrTuPTP7MuXgQemjRzjLinNJui6kQ=;
 b=2AtAJSPe7/ZkI3E0YfSTkzLTL2cHSTnFAaDkl/uBKND9qiKt2cfVEWJHzwVJSd50qV
 FWVou6jGHb4JKiPc7hIYQX2vzmszckbKze/bxfJzJJiJ3gui6fPzVJ1oAQGmehVP8GKJ
 BlZ0NwJuzuzbBplEuD3LlCeuPx0TyWcT6S6K1hDQIelkC33r+KhRRd8PYcEAGc1Jptmj
 qhXWlimJ5X7L5OP4OZ6CtoUf9b8TQGtggLyQJggwAxPshP7gnnTBekN9NCwLjzhzo87A
 LXTywDsjIzXhxj6TzqYthMPrSzEMtAWqe2wQEfmskkpxPY7Qt7CJJhuQHMTikG7TXkEu
 YUmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ASLR0JaGSmyz1arrTuPTP7MuXgQemjRzjLinNJui6kQ=;
 b=eMPPEpM4DfGTpuKy+mNKePVpRMUuh/WLEgX8zAAJZjSu6FXxJGBDP9KtAVc4hto3yf
 WbN3AQNt85lbHfc+ptCdelPqmrym9UvOSgoZo3KPTBTxZYuwAkGJsvN/7qXiVvFgdGXu
 vhGFJR11c8HOwhsli7dcowCXpNCXecb59u3NSNPIDj7JG5Rh4wUk+r9VE1Q2gJaCwp82
 F/k77nkldMkZS2N/r8jukY/4CP2KUS8WrZiR0ZL7GJZOj1qn1xkywXbvYzfnqDkiNIc4
 Gers8uK7EdHYtnO2ZDSDq7wxLtHwneJCJVC9YTrrttmf7A7CMZjYNKfb7NTXhs88MAO1
 nb+g==
X-Gm-Message-State: APjAAAUiy2CcCFEoFxaAKSxGUUHjNnjswLrYFb3mu5NmbYKkgL6IgLRC
 iDYFeI+FqZ87bBy6U5u5A/ORbg==
X-Google-Smtp-Source: APXvYqzNKlSd6QbMwZSSeMq59Ss53qK6fNIcSkh36/rP/71eBDfUgUA86x+6ZE+xlpL/k0LpKTWuEQ==
X-Received: by 2002:a50:d089:: with SMTP id v9mr15834506edd.54.1570198587826; 
 Fri, 04 Oct 2019 07:16:27 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id c1sm1129118edd.21.2019.10.04.07.16.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 07:16:27 -0700 (PDT)
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
To: Tim Harvey <tharvey@gateworks.com>, openwrt-devel@lists.openwrt.org
References: <1570054885-11705-1-git-send-email-tharvey@gateworks.com>
 <5022641f-0bdc-d055-c232-18bb3da486af@ncentric.com>
Message-ID: <a3556167-cb60-903c-fcb3-985a4108c37a@ncentric.com>
Date: Fri, 4 Oct 2019 16:16:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5022641f-0bdc-d055-c232-18bb3da486af@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_071631_729156_2F6A973D 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] imx6: bootscript: enable UBI
 fastmap support
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
Cc: richard@nod.at
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDA0LjEwLjE5IDE0OjMwLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4KPiBPbiAwMy4xMC4x
OSAwMDoyMSwgVGltIEhhcnZleSB3cm90ZToKPj4gVUJJIEZhc3RtYXAgc3VwcG9ydCBpcyBzdGFi
bGUgaW4gdGhlIDQuNCBrZXJuZWwgc28gbGV0cyB0YWtlCj4+IGFkdmFudGFnZSBvZiBpdCB0byBz
aGF2ZSBvZmYgNS0xMCBzZWNvbmRzIG9mIGJvb3QgdGltZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
VGltIEhhcnZleSA8dGhhcnZleUBnYXRld29ya3MuY29tPgo+PiAtLS0KPj4gwqAgdGFyZ2V0L2xp
bnV4L2lteDYvaW1hZ2UvYm9vdHNjcmlwdC12ZW50YW5hIHwgNCArKystCj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L3RhcmdldC9saW51eC9pbXg2L2ltYWdlL2Jvb3RzY3JpcHQtdmVudGFuYSAKPj4gYi90YXJnZXQv
bGludXgvaW14Ni9pbWFnZS9ib290c2NyaXB0LXZlbnRhbmEKPj4gaW5kZXggOTQxYWZiNS4uODQ1
MWNhZiAxMDA2NDQKPj4gLS0tIGEvdGFyZ2V0L2xpbnV4L2lteDYvaW1hZ2UvYm9vdHNjcmlwdC12
ZW50YW5hCj4+ICsrKyBiL3RhcmdldC9saW51eC9pbXg2L2ltYWdlL2Jvb3RzY3JpcHQtdmVudGFu
YQo+PiBAQCAtMSw0ICsxLDQgQEAKPj4gLWVjaG8gIkdhdGV3b3JrcyBWZW50YW5hIE9wZW5XcnQg
Qm9vdCBzY3JpcHQgdjEuMDEiCj4+ICtlY2hvICJHYXRld29ya3MgVmVudGFuYSBPcGVuV3J0IEJv
b3Qgc2NyaXB0IHYxLjAyIgo+PiDCoCDCoCAjIHNldCBzb21lIGRlZmF1bHRzCj4+IMKgICMgc2V0
IHNvbWUgZGVmYXVsdHMKPj4gQEAgLTUxLDYgKzUxLDggQEAgaWYgaXRlc3QucyAieCR7ZHR5cGV9
IiA9PSAieG5hbmQiIDsgdGhlbgo+PiDCoMKgwqDCoMKgIGVjaG8gIm10ZHBhcnRzOiR7bXRkcGFy
dHN9Igo+PiDCoMKgwqDCoMKgIHNldGVudiBmc2xvYWQgdWJpZnNsb2FkCj4+IMKgwqDCoMKgwqAg
c2V0ZW52IHJvb3QgInViaTA6dWJpIHViaS5tdGQ9MiByb290ZnN0eXBlPXNxdWFzaGZzLHViaWZz
Igo+PiArwqDCoMKgICMgZW5hYmxlIFVCSSBmYXN0bWFwIHN1cHBvcnQKPj4gK8KgwqDCoCBzZXRl
bnYgYm9vdGFyZ3MgIiR7Ym9vdGFyZ3N9IHViaS5mbV9hdXRvY29udmVydD0xIgo+PiDCoCBlbHNl
Cj4+IMKgwqDCoMKgwqAgZWNobyAiQm9vdGluZyBmcm9tIGJsb2NrIGRldmljZSAke2Jvb3RkZXZ9
Li4uIgo+PiDCoMKgwqDCoMKgIHNldGVudiBmc2xvYWQgIiR7ZnN9bG9hZCAke2R0eXBlfSAke2Rp
c2t9OjEiCj4KPiBIaSBUaW0sCj4KPiBTaG91bGRuJ3QgdGhpcyBwYXRjaCBhbHNvIGVuYWJsZSB0
aGUgcmVxdWlyZWQga2VybmVsIHN5bWJvbD8gCj4gKE1URF9VQklfRkFTVE1BUCkKPgo+IE5leHQg
dG8gdGhhdCwgZXZlbiBpbiBrZXJuZWwgNC4xOSBJJ20gcmVhZGluZyBmb2xsb3dpbmcgcmVnYXJk
aW5nIHRoaXMgCj4gZmVhdHVyZToKPgo+IEltcG9ydGFudDogdGhpcyBmZWF0dXJlIGlzIGV4cGVy
aW1lbnRhbCBzbyBmYXIgYW5kIHRoZSBvbi1mbGFzaCDilIIKPiBmb3JtYXQgZm9yIGZhc3RtYXAg
bWF5IGNoYW5nZSBpbiB0aGUgbmV4dCBrZXJuZWwgdmVyc2lvbnMKPgo+Cj4gSGkgUmljaGFyZCwK
Pgo+IEFwb2xvZ2llcyBmb3IgZHJhZ2dpbmcgeW91IGluIGhlcmUuCj4KPiBIb3cgc3RhYmxlIGlz
IHRoaXMgZmFzdG1hcCBmb3JtYXQ/Cj4KPiBXaWxsIGl0IGxlYXZlIEV4cGVyaW1lbnRhbCBzdGF0
ZSBpbiB0aGUgbmVhciBmdXR1cmU/Cj4KPgo+IFRoYW5rcywKPgo+IEtvZW4KPgoKSSdtIGFsc28g
c2VlaW5nIHRoaXMgd2FybmluZzoKCgpbwqDCoMKgIDAuMDAwMDAwXSBLZXJuZWwgY29tbWFuZCBs
aW5lOiBjb25zb2xlPXR0eW14YzEsMTE1MjAwIHViaTA6dWJpIAp1YmkubXRkPTIgcm9vdGZzdHlw
ZT1zcXVhc2hmcyx1YmlmcyB1YmkuZm1fYXV0b2NvbnZlcnQ9MQoKW8KgwqDCoCAyLjM1NjMwNF0g
dWJpMDogZGVmYXVsdCBmYXN0bWFwIHBvb2wgc2l6ZTogOTUKW8KgwqDCoCAyLjM2MDg1MF0gdWJp
MDogZGVmYXVsdCBmYXN0bWFwIFdMIHBvb2wgc2l6ZTogNDcKW8KgwqDCoCAyLjM2NTY4NF0gdWJp
MDogYXR0YWNoaW5nIG10ZDIKW8KgwqDCoCAyLjU1MTMxN10gcmFuZG9tOiBjcm5nIGluaXQgZG9u
ZQpbwqDCoMKgIDIuNzg2NzA4XSB1YmkwOiBzY2FubmluZyBpcyBmaW5pc2hlZAoKW8KgwqDCoCAy
Ljc5NTM4MF0gdWJpMCB3YXJuaW5nOiB1YmlfZWJhX2luaXQ6IGNhbm5vdCByZXNlcnZlIGVub3Vn
aCBQRUJzIApmb3IgYmFkIFBFQiBoYW5kbGluZywgcmVzZXJ2ZWQgMzgsIG5lZWQgNDDCoMKgwqAg
wqDCoMKgIDwtLS0KClvCoMKgwqAgMi44MDY2NTFdIHViaTA6IGF0dGFjaGVkIG10ZDIgKG5hbWUg
InViaSIsIHNpemUgMjM5IE1pQikKW8KgwqDCoCAyLjgxMjE1MV0gdWJpMDogUEVCIHNpemU6IDEz
MTA3MiBieXRlcyAoMTI4IEtpQiksIExFQiBzaXplOiAxMjY5NzYgCmJ5dGVzClvCoMKgwqAgMi44
MTkwNTFdIHViaTA6IG1pbi4vbWF4LiBJL08gdW5pdCBzaXplczogMjA0OC8yMDQ4LCBzdWItcGFn
ZSBzaXplIDIwNDgKW8KgwqDCoCAyLjgyNTg1NV0gdWJpMDogVklEIGhlYWRlciBvZmZzZXQ6IDIw
NDggKGFsaWduZWQgMjA0OCksIGRhdGEgCm9mZnNldDogNDA5NgpbwqDCoMKgIDIuODMyODI1XSB1
YmkwOiBnb29kIFBFQnM6IDE5MTIsIGJhZCBQRUJzOiAwLCBjb3JydXB0ZWQgUEVCczogMApbwqDC
oMKgIDIuODM4OTM3XSB1YmkwOiB1c2VyIHZvbHVtZTogMywgaW50ZXJuYWwgdm9sdW1lczogMSwg
bWF4LiB2b2x1bWVzIApjb3VudDogMTI4ClvCoMKgwqAgMi44NDYxNzVdIHViaTA6IG1heC9tZWFu
IGVyYXNlIGNvdW50ZXI6IDQvMSwgV0wgdGhyZXNob2xkOiA0MDk2LCAKaW1hZ2Ugc2VxdWVuY2Ug
bnVtYmVyOiAxNjU5Njk5NjA1ClvCoMKgwqAgMi44NTUzMjddIHViaTA6IGF2YWlsYWJsZSBQRUJz
OiAwLCB0b3RhbCByZXNlcnZlZCBQRUJzOiAxOTEyLCBQRUJzIApyZXNlcnZlZCBmb3IgYmFkIFBF
QiBoYW5kbGluZzogMzgKW8KgwqDCoCAyLjg2NDY1N10gdWJpMDogYmFja2dyb3VuZCB0aHJlYWQg
InViaV9iZ3QwZCIgc3RhcnRlZCwgUElEIDgyNgpbwqDCoMKgIDIuODcxNDk2XSBibG9jayB1Ymli
bG9jazBfMTogY3JlYXRlZCBmcm9tIHViaTA6MShyb290ZnMpClvCoMKgwqAgMi44NzcwMjVdIHVi
aWJsb2NrOiBkZXZpY2UgdWJpYmxvY2swXzEgKHJvb3Rmcykgc2V0IHRvIGJlIHJvb3QgCmZpbGVz
eXN0ZW0KCgpJdCBkb2Vzbid0IHNlZW0gdG8gYmUgYSBjb2luY2lkZW5jZSB0aGF0IGl0J3MgbWlz
c2luZyAyIFBFQidzIHdoaWxlIApmYXN0bWFwIHVzZXMgMiBvZiB0aGVtCgoKS29lbgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
