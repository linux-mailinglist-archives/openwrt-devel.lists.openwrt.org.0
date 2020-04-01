Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15CB19AF67
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 18:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2+dQ/mKL2HLWrqIybKBrcEdXgwwG0M+deo8kQkBpzQ=; b=okeK+Kp103cHI2
	gWN8qLL7kBxEfY43r/m6LibHJABCYQAB/p0iGFberfdbGma7AGxhPm9A281S67X/TJTHgjt+HbFOP
	tlob3NquzjEJvt2DzAnoIflvd4W2tszXWa3f+/ALLq5L8JKC8bshizcAxP6pwGdcNSkFek9BSZrFO
	a7HY41mWQbKUqq81w4Wkzy3sSpAJOul6GbDHC0Ymufdpj/vL74tS5yELNd/MrUQb8/NMSbIljjg8p
	hOUbjosvvZs0+SNenevz1KBjYet4e4oIXOrxo6CP3Yk5U1QMbkzGz/eC/epiwznP0JvrvN55JofIn
	C/aPE52GTC+Gy/yMGDlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJfuc-0006cd-D3; Wed, 01 Apr 2020 16:08:18 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJfuV-0006bm-09
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 16:08:13 +0000
Received: (wp-smtpd smtp.tlen.pl 11524 invoked from network);
 1 Apr 2020 18:08:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1585757280; bh=mWL7clOpBwH88ObvYCsCgPogUPzFr9I7gU2yERF1bVs=;
 h=Subject:To:From;
 b=Md41vCQT4c2q2HKNlP12rHFYjGGO8hvAKhx/2vqgk0OoWOCi1HBzrrGQsUIHFjIpM
 W8uieT/XMzPmWCZBHmGordzyv6z7FZCk9By+ceJsfXXmmfZTYrtwUY39/GP8C3jCuQ
 gyS54s56jtXPRFPl7t2t6qlENdtfkyy5ALZsaZ+0=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <chunkeey@gmail.com>; 1 Apr 2020 18:08:00 +0200
To: Klaus Kudielka <klaus.kudielka@gmail.com>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>, OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Christian Lamparter <chunkeey@gmail.com>
References: <20200331092158.5787-1-ynezz@true.cz>
 <1d98f481-8d58-0180-291a-ecf0da707b5e@o2.pl> <18882612.h8XCQiH2nZ@debian64>
 <20200401135229.GE21251@meh.true.cz>
 <3025909a-178a-d671-977e-547c0a15b693@gmail.com>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <751ce463-4b5a-98c3-633a-78a816f5e3dc@o2.pl>
Date: Wed, 1 Apr 2020 18:07:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <3025909a-178a-d671-977e-547c0a15b693@gmail.com>
Content-Language: en-US
X-WP-MailID: dce732759d77c239cdef6ca23e097936
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EVN1]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_090811_361336_2086BDED 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu,
 tegra: make CPU subtype default to vfp3-d16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDAxLjA0LjIwMjAgb8KgMTY6NTIsIEtsYXVzIEt1ZGllbGthIHBpc3plOgo+IEhpIFBl
dHIgJiBUb21hc3osCj4gCj4+IEluIG9yZGVyIHRvIGZpeCB0aG9zZSBpc3N1ZXMgVG9tYXMgaW4g
Y29tbWl0IDJkNjFmODgyMWM3YyAoIm12ZWJ1Ogo+PiBjb3J0ZXhhOTogY29ycmVjdCBjcHUgc3Vi
dHlwZSIpIGFuZCBjb21taXQgNDNkMWQ4ODUxMDYyICgidGVncmE6IGNvcnJlY3QKPj4gY3B1IHN1
YnR5cGUiKSBjaGFuZ2VkIHRoZSBDUFUgc3VidHlwZSB0byBleHBsaWNpdCB2ZnB2My1kMTYgd2hp
Y2ggZml4ZWQKPj4gdGhlIGFib3ZlIG1lbnRpb25lZCBpc3N1ZSwgYnV0IG9uIHRoZSBvdGhlciBl
bmQgaXQgaGFzIHJlc3VsdGVkIGluIHRoZQo+PiBuZWVkIG9mIGJ1aWxkaW5nIHBhY2thZ2VzIGZv
ciB0aGlzIG5ldyBDUFUgc3VidHlwZSB3aGljaCBpcyBub3Qgd2FudGVkCj4+IGR1ZSB0byB0aGUg
aW5jcmVhc2VkIGluZnJhc3RydWN0dXJlIGNvc3RzLCBsaWtlIGRpc2sgc3BhY2UgYW5kCj4+IGFk
ZGl0aW9uYWwgYnVpbGQgdGltZSB3aGljaCBpcyBodWdlIGZvciBwYWNrYWdlcyBmZWVkLgo+IAo+
IEkgY2VydGFpbmx5IGRvbid0IHVuZGVyc3RhbmQgYWxsIGFzcGVjdHMgb2YgdGhlIGJ1aWxkIHN5
c3RlbSwgYnV0IEkKPiBjaGVja2VkIG92ZXIgYW5kIG92ZXIgYWdhaW4uCj4gCj4gWzBdJCBmaW5k
IHRhcmdldCAtdHlwZSBmIC1leGVjIGdyZXAgLUggQ1BVX1NVQlRZUEUge30gXDsgfCBncmVwIHZm
cHYzCj4gdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE5L3RhcmdldC5tazpDUFVfU1VCVFlQRTo9
dmZwdjMtZDE2Cj4gdGFyZ2V0L2xpbnV4L29tYXAvTWFrZWZpbGU6Q1BVX1NVQlRZUEU6PXZmcHYz
Cj4gdGFyZ2V0L2xpbnV4L3N1bnhpL2NvcnRleGE4L3RhcmdldC5tazpDUFVfU1VCVFlQRTo9dmZw
djMKPiB0YXJnZXQvbGludXgvdGVncmEvTWFrZWZpbGU6Q1BVX1NVQlRZUEUgOj0gdmZwdjMtZDE2
Cj4gCj4gb21hcCAmIHN1bnhpL2NvcnRleGE4IGFyZSBib3RoIGNvcnRleC1hOC4KPiAKPiBTbywg
dGVncmEgYW5kIG12ZWJ1L2NvcnRleGE5IGFyZSB0aGUgKm9ubHkqIHRhcmdldHMgd2l0aCBhcm1f
Y29ydGV4LWE5X3ZmcHYzCj4gKC1kMTYpIHBhY2thZ2VzPwo+IAo+IElmIHdlIHN3aXRjaCBib3Ro
LCBsaWtlIFRvbWFzeiBkaWQsIGFybV9jb3J0ZXgtYTlfdmZwdjMgd291bGQgbm90IGJlIG5lZWRl
ZAo+IGFueW1vcmUsIGFuZCBiZSByZXBsYWNlZCBieSAtZDE2LiBXaHkgZG9lcyB0aGF0IGNvc3Qg
bW9yZSByZXNvdXJjZXM/CgpJbmRlZWQsIEkgYWx3YXlzIGZvcmdldCBhYm91dCBvbWFwIGFuZCB6
eW5xIGJlaW5nIGNvcnRleC1hOC4KCj4gCj4gKE9rYXksIGEgZmV3IHNuYXBzaG90IHVzZXJzIHdv
dWxkIGhhdmUgdG8gdXBncmFkZSBpZiB0aGV5IHdhbnQgdG8gaW5zdGFsbAo+IHBhY2thZ2VzLCBi
dXQgdGhpcyBpcyB0aGUgbWFzdGVyIGJyYW5jaCBhbnl3YXkpCgpUaGlzIGNvbW1pdCBhbHNvIHdv
dWxkIG1ha2UgaXQgdW4tcG9ydGFibGUgdG8gMTkuMDcgYnJhbmNoLCBzaW5jZSBwYWNrYWdlCmRp
cmVjdG9yaWVzIHN0cnVjdHVyZSB3b3VsZG4ndCBjaGFuZ2UuIFNvIGlmIE9wZW5XcnQgd291bGQg
YW5ub3VuY2UgMTkuMDcuMwp1c2VycyBvZiAxOS4wNy4yIG9yIGVhcmxpZXIgd291bGQgcG9zc2li
bHkgZW5kIHVwIHdpdGggaW5jb21wYXRpYmxlIHBhY2thZ2VzLAp3aGVuIGluc3RhbGxpbmcgc29t
ZXRoaW5nIGZyb20gcGFja2FnZXMgcmVwb3NpdG9yeS4KCj4gCj4gTmV2ZXJtaW5kLCBqdXN0IGEg
c3R1cGlkIGlkZWEsIHRvIGF2b2lkIHVubmVlZGVkIGNvbXBsZXhpdHkuCj4gUGxlYXNlIGlnbm9y
ZSBpdCwgaWYgSSdtIHdyb25nLgoKTm90aGluZyB3cm9uZyB3aXRoIHdoYXQgWW91IHdyb3RlLCB0
aGFua3MgZm9yIHBvaW50aW5nIGFsbCBvZiBpdCBvdXQuCgo+IAo+IEtsYXVzCj4gCgpTb3JyeSBm
b3Igbm9pc2UsIGFkZGVkIE9wZW5XcnQgbGlzdC4KCi0tIApUTU4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
