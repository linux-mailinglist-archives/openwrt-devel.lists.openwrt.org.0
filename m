Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 648932B57E
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 14:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5AvpI2ZVJGOYX6ZdTZbAZyMed/u6q0Zi6d3qd06B64=; b=ezQs0YhTv7m11P
	8YKs8Q7Fd4dlraoImb19tpc6uw1BCbXYE0BzpJNl8Ha4is4ZcypWiTmHLVeTnBPjfT86qSBDRkuUz
	WcSirOPyqKVUsT734h02Rd0QbbGlyakXBmuHb5hT599HJeL1CUX5x5woJHAniS7PhAxhiC4ZXUsYq
	5fMmremMPXEf1hBFL45jD0KOi0jTh8Y5L88+fEDhLbo2k1rpcd6n2CGmGCHAf3sU8yUmaVzG9vcjA
	zdZka5ha82iPtdLNWvVJpkoCzMUZ+dhL2AVipMOh1Oh1dUh5cossytzGkx5ri9QZAh1/6+cZDxotY
	OmYL9L0pwa0DTxnXiu/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEt2-0006ru-6k; Mon, 27 May 2019 12:37:56 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEsu-0006qk-Vb
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 12:37:50 +0000
Received: (qmail 12376 invoked from network); 27 May 2019 12:37:42 -0000
Received: from localhost (HELO ?10.21.98.80?) (127.0.0.1)
 by achernar.uberspace.de with SMTP; 27 May 2019 12:37:42 -0000
To: =?UTF-8?Q?Denis_Peri=c5=a1a?= <darkman.hr@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <CAC8mBSVP+Uev=H_x4actCT9g+FV1X0bVFZ=06biyBA=w-s6AkA@mail.gmail.com>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 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
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <f30df01f-ea9d-32ae-2e7d-286fa4aab164@ironai.com>
Date: Mon, 27 May 2019 14:37:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAC8mBSVP+Uev=H_x4actCT9g+FV1X0bVFZ=06biyBA=w-s6AkA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_053749_303967_3559E900 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] dnsmasq not leasing after a while. Sometimes
 more than 5 times a day
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

SGkgRGVuaXMsCgpJIGRvbid0IGhhdmUgc3VjaCBwcm9ibGVtcy4gUGxlYXNlIHBvc3QgeW91ciBj
b25maWd1cmF0aW9uIGFuZCBkZXZpY2Ugc2V0dXAgYW5kIHRyeSB0bwpnZXQgc29tZSBsb2dzLiBB
cyBmYXIgYXMgSSB1bmRlcnN0YW5kIGRuc21hc3EgaXMgdW5yZXNwb25zaWJsZSwgYnV0IHN0aWxs
IHJ1bnM/IQpXaGF0IGRvIHlvdSBtZWFuIHdpdGggInJlc3RhcnQgbWVzc2FnZXMiPyBBcmUgeW91
ciBkZXZpY2VzIHJlYm9vdGluZz8KClJlZ2FyZHMsCgpWaW5jZW50IFdpZW1hbm4KCk9uIDI3LjA1
LjE5IDEzOjQzLCBEZW5pcyBQZXJpxaFhIHdyb3RlOgo+IEhpIGFsbCwKPiAKPiBUaGlzICJidWci
IGlzIGZvbGxvd2luZyBtZSBmb3Igc29tZSB0aW1lIG5vdy4uIGEgeWVhciBhdCBsZWFzdC4gSSdt
IGhvcGluZyBkYXkgYWZ0ZXIgZGF5IHRoYXQgc29tZW9uZSBtaWdodCBmaW5kIHJlYXNvbiBhbmQg
Zml4IGl0LiBJJ3ZlIHNldCBhIHNjcmlwdCB0aGF0IGNoZWNrcyBkbnNtYXNxIGFuZCByZXN0YXJ0
cyBpdC4KPiAKPiAtLT4KPiDCoCDCoCDCoCDCoCDCoGlmICEgKCBkaGNwaW5nIC1xIC1oIDAwOjk5
Ojk5Ojk5Ojk5Ojk5IC1zIDEwLjAuMC4xICkgI0pvcyBqZWRuYSBwcm92amVyYQo+IMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHRoZW4KPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBlY2hvICJERUFEIGRuc21hc3EhIC0gYGRhdGVgICIg
Pj4gL3NjcmlwdHMvQ1JBU0gubG9nCj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAga2lsbGFsbCBkbnNtYXNxCj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc2xlZXAgMgo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGRuc21hc3E7Cj4gLi4uLiAuPi4+Pj4+IGV0Yy4uLi4u
Li4uLi4uIENVVCAtLS0KPiAKPiB0d28gY2hlY2tzIHRvIGJlIHN1cmUuLi4gYW5kIEkgZ2V0IGEg
bG90IG9mIHJlc3RhcnQgbWVzc2FnZXMuIGRpZmZlcmVudCBub2Rlcy4KPiBJIHJ1biB0aGlzIHZp
YSBjcm9uIGV2ZXJ5IGhhbGYgaG91ci4KPiAKPiBBbnlvbmUgaGF2ZSBzaW1pbGFyIHByb2JsZW0/
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
