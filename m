Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BD6178EB8
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 11:43:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p/7OXcnNaf2wGgrnHvPp/JY7S3iN6vi+PtF+1RbgwhY=; b=UmgShkqj8kQUH/fb0SgBLtQB9r
	vtlXUXclzG3tdQBAoBn4BRm4myS7qY/wE7k+2D4PxVRWxTtvjVb6DP/yIk2JOTDb4JD5y8NGCkQBZ
	AYM9Yl+ElAUzAx569Ba4Ym49y+U/47gsfundtKZmg0rh3nlIBPtKTElnBBdvHbE1/fAox5zNIYzwn
	9yofWmqjcuuNvoDYUUCGC699giIbIfW945HeEF6F5f1wfGBwYx7PB5KNVNRzZRj5pIssxq+va9j9k
	MQpI9CAgWj2wbKL8s2lFSwhkvW+DfdOAEC+KTnuktbJaD8IZMvvIJgZ6pPiQK0ACHw4WT7qSjRu6l
	ZaeIKiew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9RVA-0007uA-G2; Wed, 04 Mar 2020 10:43:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9RV3-0007ti-FK
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 10:43:39 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 842B64AFC;
 Wed,  4 Mar 2020 11:43:25 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id be249ea6;
 Wed, 4 Mar 2020 11:43:12 +0100 (CET)
Date: Wed, 4 Mar 2020 11:43:11 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200304104311.GE79862@meh.true.cz>
References: <20200301024850.1528027-1-mail@aparcar.org>
 <20200301123433.GD33354@meh.true.cz>
 <ccac7a1c-7d58-c206-3402-b233d5309a1a@aparcar.org>
 <20200302110544.GD70913@meh.true.cz>
 <4d9299e0-f28e-aaf8-9b07-06325826b311@aparcar.org>
 <20200303091209.GA94262@meh.true.cz>
 <243d1d5c-cae7-a70f-fd8c-6d494e65d123@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <243d1d5c-cae7-a70f-fd8c-6d494e65d123@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_024337_663160_58B92849 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: refactor JSON info files to
 `profiles.json`
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPiBbMjAyMC0wMy0wMyAxNzowMjowN106Cgo+
IE9uIDAyLjAzLjIwIDIzOjEyLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+ID4gUGF1bCBTcG9vcmVu
IDxtYWlsQGFwYXJjYXIub3JnPiBbMjAyMC0wMy0wMiAxNjoxOTowNV06Cj4gPiAKPiA+ID4gLcKg
IC5JR05PUkU6ICQoQklOX0RJUikvJChjYWxsIElNQUdFX05BTUUsJCgxKSwkKDIpKQo+ID4gPiAK
PiA+ID4gWy4uLl0KPiA+ID4gCj4gPiA+ICDCoMKgICQoQklOX0RJUikvJChjYWxsIElNQUdFX05B
TUUsJCgxKSwkKDIpKTogJChLRElSKS90bXAvJChjYWxsCj4gPiA+IElNQUdFX05BTUUsJCgxKSwk
KDIpKQo+ID4gPiAtwqDCoMKgwqDCoMKgIGNwICQkXiAkJEAKPiA+ID4gK8KgwqDCoMKgwqDCoCAt
Y3AgJCReICQkQAo+ID4gPiAKPiA+ID4gVGhlIHByZWZpeGVkIGRhc2ggaWdub3JlcyBhIGZhaWx1
cmUuCj4KPiA+IFRoaXMgY2hhbmdlIHNlZW1zIGxpa2UgYSBiYW5kLWFpZCBhcyBJIHJlYWxseSBk
b24ndCBzZWUgYSByZWFzb24gdG8gdG91Y2ggdGhlCj4gPiBleGlzdGluZyBjb2RlIGp1c3QgYmVj
YXVzZSB5b3UndmUgcHV0IHRoZSBKU09OIGdlbmVyYXRpb24gaW4gdGhhdCBwbGFjZQo+ID4gaW5p
dGlhbGx5Lgo+IAo+IEhvdyBhYm91dCBJIGNyZWF0ZSBhbiBpbmRlcGVuZGVudCBwYXRjaCBsaWtl
IHRoZSBmb2xsb3dpbmc/Cj4gCj4gWyAtZiAkJF4gXSAmJiBjcCAkJF4gJCRAIHx8IHRydWUKPiAK
PiBJdCBzZWVtcyB0byBiZSBiYWQgc3R5bGUgaWdub3JpbmcgY3AgZXJyb3JzLCB3aGF0IGlmIHRo
ZSBkZXN0aW5hdGlvbiBpcyBubwo+IGxvbmdlciB3cml0YWJsZSBvciBzdG9yYWdlIGZ1bGw/IFRo
aXMgd2F5IHdlIGNhbiByZW1vdmUgdGhlIC5JR05PUkUuCgpJIGRvbid0IGtub3cgdGhlIG9yaWdp
bmFsIGludGVudGlvbiBvZiB0aGUgLklHTk9SRSwgc28gSSBqdXN0IGFzc3VtZSwgdGhhdAppdCdz
IHRoZXJlIGJlY2F1c2Ugc29tZSBvZiB0aGUgdGFyZ2V0cyBhYnVzZSB0aGUgaW1hZ2UgZ2VuZXJh
dGlvbiBjb2RlIGZvcgpzdHVmZiBsaWtlIERUQnMgb3Igb3RoZXIgYXJ0aWZhY3RzLiAKClNvIEkn
bSBub3Qgc3VyZSwgd2hldGhlciB0aGlzIG1pc3VzZSBtZWFucyBicm9rZW4gb25seSBzb3VyY2Ug
ZmlsZS9kaXIgb3IgaXQKbWlnaHQgbWVhbiBwcm9ibGVtIHdpdGggdGhlIGRlc3RpbmF0aW9uIGZp
bGUvZGlyIGFzIHdlbGwuCgpUaGlzIHdvdWxkIHByb2JhYmx5IG5lZWQgbW9yZSBjaGVja3MgKGFu
ZCB0ZXN0aW5nKSBzbyBpdCBtaWdodCBiZSBwcm9iYWJseQpiZXR0ZXIgdG8gYml0ZSB0aGUgYnVs
bGV0IGFuZCBmaXggdGhlIHRhcmdldHMgY2F1c2luZyB0aGUgcHJvYmxlbXMgYW5kIGZpeAp0aGVt
LCB0aGVuIHJlbW92aW5nIHRoZSAuSUdOT1JFIGFsdG9nZXRoZXIgd2l0aG91dCBhbnkgb3RoZXIg
YWRkaXRpb25hbApiYW5kLWFpZHMuCgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
