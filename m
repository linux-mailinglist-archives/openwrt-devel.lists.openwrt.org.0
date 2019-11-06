Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1C6F2274
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 00:18:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxEsrgKlt3LDFs5A6A6FfQhiUsSzILQCTGt3ragz2P4=; b=Vn31yT185ahhiD
	4i2XJP7l/+b6S2eSiTGj81dLs4OOQYUDQD8mSTbyBCoIJBFeS7ilNGkFXq7xxz76Ur8HztQsCvwmY
	8NtaVguZdKca2h+9hDJBZDLuLKsFTZta5mhdv9zBhVYoYK0UmAe2jTWhn0Cfg9T6C7kmqiN+GtjKR
	KPKtZ7/t7jiI6utJYyRfRxyV65kuHlMA9cWnPVu1yScMc8+SLmCtT6IImNoYu+eyrz2u2YPmVXBLb
	yEeilfsFPHZFn8NwXS4/4BTN/4EffQBZJ5zxJsbM3iMgG33/4GjD6ZDE/fJliVJPLM6wMdg2l0q65
	0OfKD7RU3DbtCvx11uPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUZe-00070x-3n; Wed, 06 Nov 2019 23:18:50 +0000
Received: from mout-u-204.mailbox.org ([2001:67c:2050:1::465:204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUZV-00070P-5c
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 23:18:43 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 477jC12gtPzQlDl;
 Thu,  7 Nov 2019 00:18:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id t4lNfymaX368; Thu,  7 Nov 2019 00:18:33 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20191106110514.20413-1-ynezz@true.cz>
 <20191106110514.20413-10-ynezz@true.cz>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <e8259209-2d1d-5913-fa38-d37ce8e0ef05@hauke-m.de>
Date: Thu, 7 Nov 2019 00:18:32 +0100
MIME-Version: 1.0
In-Reply-To: <20191106110514.20413-10-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_151841_507567_8D6CAD46 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07 09/14] hostapd: Update to version
 2.8 (2019-04-21)
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

T24gMTEvNi8xOSAxMjowNSBQTSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBGcm9tOiBIYXVrZSBN
ZWhydGVucyA8aGF1a2VAaGF1a2UtbS5kZT4KPiAKPiBUaGlzIGFsc28gc3luY3MgdGhlIGNvbmZp
Z3VyYXRpb24gZmlsZXMgd2l0aCB0aGUgZGVmYXVsdCBjb25maWd1cmF0aW9uCj4gZmlsZXMsIGJ1
dCBubyBleHRyYSBvcHRpb25zIGFyZSBhY3RpdmF0ZWQgb3IgZGVhY3RpdmF0ZWQuCj4gCj4gVGhl
IG1lc2ggcGF0Y2hlcyB3ZXJlIHBhcnRpYWxseSBtZXJnZWQgaW50byBob3N0YXBkIDIuOCwgdGhl
IHJlbWFpbmluZwo+IHBhdGNoZXMgd2VyZSBleHRyYWN0ZWQgZnJvbSBwYXRjaHdvcmsgYW5kIGFy
ZSBub3cgYXBwbGllZCBieSBPcGVuV3J0Lgo+IFRoZSBwYXRjaGVzIHN0aWxsIGhhdmUgb3BlbiBx
dWVzdGlvbnMgd2hpY2ggYXJlIG5vdCBmaXhlZCBieSB0aGUgYXV0aG9yLgo+IFRoZXkgd2VyZSB0
YWtlbiBmcm9tIHRoaXMgcGFnZToKPiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2pl
Y3QvaG9zdGFwL2xpc3QvP3Nlcmllcz02MjcyNSZzdGF0ZT0qCj4gCj4gVGhlIGNoYW5nZXMgaW4g
MDA3LW1lc2gtYXBwbHktY2hhbm5lbC1hdHRyaWJ1dGVzLWJlZm9yZS1ydW5uaW5nLU1lc2gucGF0
Y2gKPiB3aGVyZSBmaXJzdCBhcHBsaWVkIHRvIGhvc3RhcGQsIGJ1dCBsYXRlciByZXZlcnRlZCBp
biBob3N0YXBkIGNvbW1pdAo+IDNlOTQ5NjU1Y2NjNSBiZWNhdXNlIHRoZXkgY2F1c2VkIG1lbW9y
eSBsZWFrcy4KPiAKPiBUaGUgc2l6ZSBvZiB0aGUgaXBrZ3MgaW5jcmVhc2UgYSBiaXQgKGJldHdl
ZW4gMS4zJSBhbmQgMi4zJSk6Cj4gCj4gb2xkIDIwMTgtMTItMDIgKDIuNyk6Cj4gMjgzMzM3IHdw
YWQtYmFzaWNfMjAxOC0xMi0wMi1jMmM2YzAxYi0xMV9taXBzZWxfMjRrYy5pcGsKPiAyNTI4NTcg
d3BhZC1taW5pXzIwMTgtMTItMDItYzJjNmMwMWItMTFfbWlwc2VsXzI0a2MuaXBrCj4gNDE3NDcz
IHdwYWQtb3BlbnNzbF8yMDE4LTEyLTAyLWMyYzZjMDFiLTExX21pcHNlbF8yNGtjLmlwawo+IDQx
NTEwNSB3cGFkLXdvbGZzc2xfMjAxOC0xMi0wMi1jMmM2YzAxYi0xMV9taXBzZWxfMjRrYy5pcGsK
PiAKPiBuZXcgMjAxOS0wNC0yMSAoMi44KToKPiAyODgyNjQgd3BhZC1iYXNpY18yMDE5LTA0LTIx
LTYzOTYyODI0LTFfbWlwc2VsXzI0a2MuaXBrCj4gMjU2MTg4IHdwYWQtbWluaV8yMDE5LTA0LTIx
LTYzOTYyODI0LTFfbWlwc2VsXzI0a2MuaXBrCj4gNDI3NDc1IHdwYWQtb3BlbnNzbF8yMDE5LTA0
LTIxLTYzOTYyODI0LTFfbWlwc2VsXzI0a2MuaXBrCj4gNDIzMDcxIHdwYWQtd29sZnNzbF8yMDE5
LTA0LTIxLTYzOTYyODI0LTFfbWlwc2VsXzI0a2MuaXBrCj4gCj4gU2lnbmVkLW9mZi1ieTogSGF1
a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+Cj4gVGVzdGVkLWJ5OiBTdGVmYW4gTGlwcGVy
cy1Ib2xsbWFubiA8cy5sLWhAZ214LmRlPgo+IChjaGVycnkgcGlja2VkIGZyb20gY29tbWl0IDhh
Zjc5NTUwZTZjMjgwNzE3NjYwZjY2MDMyZDg5ZDIxMDA3YjE1ZDIpCgpQbGVhc2UgY2hlcnJ5LXBp
Y2sgdGhlIHVwZGF0ZSB0byBob3N0YXBkIDIuOSBpbiBhZGRpdGlvbiB0byBtYXRjaCB3aGF0Cndl
IHVzZSBpbiBtYXN0ZXIuCgpIYXVrZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
