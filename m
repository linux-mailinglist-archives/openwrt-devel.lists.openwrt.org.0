Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE609DECDC
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2vZSaX4n9mJG/T/ZTBLD80SIR01RRSWlCvV1PybdYIY=; b=uhKF55gy32TD1u7jJSBp6f3x9
	QPsVXmqTQfLB6vYsdkA3f9jkkgQUcxKCXrSrestLEFhbrWaZEbwh8wKr8WQQi6BTZVtHPAQcUXOEc
	ZcHhao0XP3I4HqmPfV6ZVxTUnRJOW9dsW5Ln/3bpsbe9SkNClZvYRvTCKasH7d8mp1rKeItPvU+0K
	/kc0twQIvQcIbQXc4YCd/LfUW93Q6x4g/LY2GFdoHpFiTo8FLktiKMIDhNqYRP0yrbUNf4ufR++Vp
	WPBzy1Pr7akBSjhUV8PtzOHBa3UrAkFvcCYAlD0Xe1yhEkhRw9s8sKHpuwZJ1I7ulaYsaI87FRX1J
	jXsObB7PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXDA-0000MI-Pg; Mon, 21 Oct 2019 12:55:00 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXD1-0000LN-Jr
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:54:53 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMXD0-00032c-7B; Mon, 21 Oct 2019 14:54:50 +0200
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20190920120303.3295-1-freifunk@adrianschmutzler.de>
 <85fe384e-cf49-a1a7-da6f-dd26f239c6bb@phrozen.org>
 <36a7b598-319a-b70a-0c1e-8279cc5fd37e@phrozen.org>
 <010201d5880b$63c0b890$2b4229b0$@adrianschmutzler.de>
From: John Crispin <john@phrozen.org>
Message-ID: <de0cc8f5-f361-6131-c4ab-38eb35649aec@phrozen.org>
Date: Mon, 21 Oct 2019 14:54:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <010201d5880b$63c0b890$2b4229b0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_055451_818879_7CDB9CD3 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] ramips/mt762x: convert devices
 to interrupt-driven gpio-keys
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjEvMTAvMjAxOSAxNDozMCwgQWRyaWFuIFNjaG11dHpsZXIgd3JvdGU6Cj4gSGkgSm9obiwK
PiAKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogSm9obiBDcmlzcGluIFtt
YWlsdG86am9obkBwaHJvemVuLm9yZ10KPj4gU2VudDogTW9udGFnLCAyMS4gT2t0b2JlciAyMDE5
IDE0OjE5Cj4+IFRvOiBBZHJpYW4gU2NobXV0emxlciA8ZnJlaWZ1bmtAYWRyaWFuc2NobXV0emxl
ci5kZT47IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gU3ViamVjdDogUmU6IFtP
cGVuV3J0LURldmVsXSBbUEFUQ0ggdjIgMS8yXSByYW1pcHMvbXQ3NjJ4OiBjb252ZXJ0IGRldmlj
ZXMgdG8gaW50ZXJydXB0LWRyaXZlbiBncGlvLWtleXMKPj4KPj4KPj4gT24gMjEvMTAvMjAxOSAx
NDoxNywgSm9obiBDcmlzcGluIHdyb3RlOgo+Pj4gT24gMjAvMDkvMjAxOSAxNDowMywgQWRyaWFu
IFNjaG11dHpsZXIgd3JvdGU6Cj4+Pj4gVGhpcyBjb252ZXJ0cyBhbGwgcmVtYWluaW5nIGRldmlj
ZXMgdG8gdXNlIGludGVycnVwdC1kcml2ZW4KPj4+PiBncGlvLWtleXMgY29tcGF0aWJsZSBpbnN0
ZWFkIG9mIGdwaW8ta2V5cy1wb2xsZWQuCj4+Pj4gVGhlIHBvbGwtaW50ZXJ2YWwgaXMgcmVtb3Zl
ZC4KPj4+Pgo+Pj4+IFdoaWxlIGF0IGl0LCBhZGQvcmVtb3ZlIG5ld2xpbmVzIGluIGtleXMgYW5k
IGxlZHMgbm9kZSB3aGVyZQo+Pj4+IG5lY2Vzc2FyeS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6
IEFkcmlhbiBTY2htdXR6bGVyIDxmcmVpZnVua0BhZHJpYW5zY2htdXR6bGVyLmRlPgo+Pj4KPj4+
IEhpLAo+Pj4gd2FzIHRoZXJlIG5vdCBhbiBpc3N1ZSBvbiBzb21lIG9mIHRoZSBvbGRlciByYWxp
bmsgc2lsaWNvbiB2ZXJzaW9ucyB0aGF0Cj4+PiBtYWRlIGlycSB1bnJlbGlhYmxlLCB3aGljaCBp
cyB3aHkgd2UgbmV2ZXIgY2hhbmdlZCB0aGlzID8KPj4+ICAgwqDCoMKgwqBKb2huCj4+IHRoaXMg
b25seSB0b3VjaGVzIHRoZSBtdGsgc2lsaWNvbiAuLi4KPiAKPiBJIG9idmlvdXNseSBjYW5ub3Qg
cHJvdmUgdGhhdCB0aGlzIHdpbGwgd29yayBvbiBhbGwgZGV2aWNlcywgYnV0IEkgaGF2ZSBzZWVu
IHNldmVyYWwgZGV2aWNlIHN1cHBvcnQgUFJzIGZvciBtdDc2MjAvbXQ3NjIxL210NzYyOCB3aXRo
IGdwaW8ta2V5cyB3b3JraW5nICg9dGVzdGVkKSBvdmVyIHRoZSBsYXN0IGhhbGYgeWVhci4KPiBJ
IGludGVudGlvbmFsbHkgb25seSBpbmNsdWRlZCBtdDc2eHggaGVyZSwgYXMgSSBoYXZlIG5vIGlk
ZWEgd2hldGhlciB0aGlzIHdpbGwgd29yayBvbiBydHh4eHgsIGFuZCBpZiBJIHJlbWVtYmVyIGNv
cnJlY3RseSAxMDAgJSBvZiB0aGVtIHN0aWxsIGhhdmUgZ3Bpby1rZXlzLXBvbGxlZCBzZXQuCj4g
Cj4gQmVzdAo+IAo+IEFkcmlhbgo+IAp0aGUgY29kZSB3b3JrcyByZWxpYWJseSBvbiBtdDc2eHgg
c2lsaWNvbiwgc29tZSBvZiB0aGUgb2xkZXIgc2lsaWNvbiBkaWQgCm5vdCBoYXZlIGZ1bmN0aW9u
YWwgaXJxIG9uIGFsbCBwaW5zCglKb2huCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
