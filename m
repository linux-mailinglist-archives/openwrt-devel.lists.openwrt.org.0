Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1E5CF2FC
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 08:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3GngNJPY7JtlnTOZuAifOdPXcygtcqBe5eQXowG+Jxw=; b=GGu7JiYLWIR5zd1PHWV3l0Cqg
	yY474KvKcI/G15cqajW0pSKmm3We6GU+t//xdq9MUqvH46yGCdfxHh3vMm2BOYrsGuDhMmin5+MQW
	5PuV8ebFYonF68t2+RNi/76G7z7k8xi4dMDz2ymBafk3Wn0I17H50dfD2DPJ5J8QRHKG4mQ6Gm4Bs
	uo0VQzqz4sd3onGCF1MGc3eusdD65OKkMHSenjjqaqP/sbsUhJee7O2fpw1B+ER9LTBspL5KsvP2W
	lV5xC2jUXewIhTVoidEIT7uMVXG7cVtm2tkXz3sJIZdH6DJ849IJpsxCX9gHfCBGEEgGLyBt9UCIU
	7I7l2vKWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHjKD-0003WG-Es; Tue, 08 Oct 2019 06:50:25 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHjK3-0003Vf-Le
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 06:50:18 +0000
X-Originating-IP: 98.151.65.6
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4DECF2000E;
 Tue,  8 Oct 2019 06:50:03 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20191007082204.30380-1-ynezz@true.cz>
 <8b3eaf1e-cad3-743f-4b7d-0bb503e9e981@aparcar.org>
 <20191008043811.GA87306@meh.true.cz>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <18e64d48-955a-3323-74be-f803e722b762@aparcar.org>
Date: Mon, 7 Oct 2019 20:50:01 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191008043811.GA87306@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_235015_845787_50E3ECAA 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: make UBNT Nano/Loco AC factory
 images reproducible
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiAxMC83LzE5IDY6MzggUE0sIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gYXMgZGlzY3Vz
c2VkIG9uIElSQywgdGhpcyBpc3N1ZSBpcyBjYXVzZWQgYnkgeW91ciBjdXN0b20gYnVpbGQgc3Rl
cFsxXSBhbmQKPiBkb2Vzbid0IGV4aXN0IGluIHRoZSB0cmVlLCBzbyB0aGUgcHJvcG9zZWQgcGF0
Y2ggY2FuIGJlIHNlZW4ganVzdCBhIHdvcmthcm91bmQKPiBhbmQgbm90IHByb3BlciBmaXggc28g
SSd2ZSByZWplY3RlZCBpdCBhbmQgbm90IGdvaW5nIHRvIGFwcGx5LgpGaW5lIGZvciBtZSBpZiB0
aGUgZW5oYW5jZW1lbnRzIG1lbnRpb25lZCBiZWxvdyBhcmUgaW1wbGVtZW50ZWQgYXQgc29tZSAK
cG9pbnQuIEZvciBub3cgdGhlIHBhZGRpbmcgY2F1c2VzIGltYWdlcyB0byBiZSB1bnJlcHJvZHVj
aWJsZSB3aGljaCBJJ2QgCmNvbnNpZGVyIGFzIGEgdXBzdHJlYW0gcHJvYmxlbS4gVGhlIGBleGNo
YW5nZV9zaWduYXR1cmVgIHN0ZXAgaXMgdGhlIApvbmx5IHdheSBJIGNhbiB0aGluayBvZiB0byBt
YWtlIHNpZ25lZCBpbWFnZXMgcmVwcm9kdWNpYmxlLi4uCj4gVGhpcyBzaG91bGQgYmUgZml4ZWQg
aW4gb3RoZXIgcGxhY2VzOgo+Cj4gICA8IGpvdz4gdG8gbWUgaXQgbG9va3MgYXMgaWYgdHdvIGRp
c3RpbmN0IGZpeGVzIGFyZSBuZWVkZWQKPiAgIDwgam93PiAxKSBiZXR0ZXIgZnd0b29sIHNpZ25h
dHVyZSBzZWFyY2ggaGV1cmlzdGljcwo+ICAgPCBqb3c+IDIpIHBhZCB0aGUgc2lnbmF0dXJlIGJl
Zm9yZSBpdCBpcyBmYWN0b3JlZCBpbnRvIHRoZSBwYXJ0aXRpb24gc2l6ZSBjYWxjdWxhdGlvbgo+
Cj4gMS4gaHR0cHM6Ly9naXRsYWIuY29tL2FwYXJjYXIvcmVidWlsZC9ibG9iL21hc3Rlci9yZWJ1
aWxkLnB5I0wxNDYKPgo+IC0tIHluZXp6CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
