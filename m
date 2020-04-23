Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB80C1B5F15
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 17:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iH9qYQJ3QZSam1adht0g0IBp+skq4FXalyZE85iqoro=; b=a5D4vt9ZBkTAbW85M0/2g6vPv
	I8PzoCWogyFS71wE5Ti+dN7KUwDEoomPziSZpssjH40i5Dn3kz01FWx1ObB1QEj40XUQHk8hi043v
	G0LexyN+ucj9qBHOa5MxCmonBi8cZBajlHNPft4DDP4vC3bNHY26oV9QbYdASqlqlRQXtCWCYvk+p
	U9pg1PiKEydO0u8CqBLggqinIRCzgTkRqaVcKjfGg6Zhv7Dt0mxxruLA6RG7AYSBdDo+Lwv+F47Xo
	bjrvtKhVTfA4R+oSMN+RGsRisvV+vN3zNnVmrG2PXpDyPSqJJ1Mdd0v1Yo1rmsXfbhV9LXcxHXl//
	Qh2RXXr8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdiJ-00083H-Lc; Thu, 23 Apr 2020 15:24:31 +0000
Received: from tunnel231050-pt.tunnel.tserv1.bud1.ipv6.he.net
 ([2001:470:1f1a:93::2] helo=trabant.uid0.hu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdi7-0007yl-V0
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 15:24:25 +0000
Received: from hop.sartura.hr ([212.47.254.198]:54493 helo=[10.8.0.6])
 by trabant.uid0.hu with esmtpsa (Exim 4.89 #1 (Debian))
 id 1jRdhy-0005Uk-MD
 from <wigyori@uid0.hu>; Thu, 23 Apr 2020 17:24:13 +0200
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20200420142932.12056-1-ynezz@true.cz>
From: Zoltan HERPAI <wigyori@uid0.hu>
Message-ID: <7581c5c4-1db9-e3c9-e971-d799fde8417a@uid0.hu>
Date: Thu, 23 Apr 2020 17:24:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200420142932.12056-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_082420_154011_6C8BBAA8 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] arm-trusted-firmware-sunxi: bump to
 v2.3-rc1 and use atf-builds binaries
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCk9uIDQvMjAvMjAyMCAxNjoyOSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBVcGRh
dGUgQVRGIHRvIGxhdGVzdCB2Mi4zLXJjMSB2ZXJzaW9uIGFuZCB1c2UgcmVwcm9kdWNpYmxlIGJs
MzEgYmluYXJpZXMKPiBmcm9tIGF0Zi1idWlsZHMgcHJvamVjdC4KPgo+IGF0Zi1idWlsZHMgcHJv
amVjdCBzdGFydGVkIHJlY2VudGx5IG9mZmVyaW5nIHJlcHJvZHVjaWJsZSBBVEYgYmluYXJpZXMK
PiB3aGljaCBpcyBtb3JlIGNvbnZlbmllbnQgdGhlbiBidWlsZGluZyB2ZXJ5IHRpbnkgQVRGIGFy
dGlmYWN0cyBmcm9tCj4gc2NyYXRjaCBkdXJpbmcgZWFjaCBidWlsZCwgdGh1cyBzYXZpbmcgY29u
c2lkZXJhYmxlIGJ1aWxkIHJlc291cmNlcy4gIEl0Cj4gaGFzIHJlZHVjZWQgYnVpbGQgZnJvbSBz
Y3JhdGNoIHRpbWUgb24gbXkgQ0kgYnVpbGRlciBmb3Igc3VueGkvY29ydGV4YTUzCj4gdGFyZ2V0
IGZyb20gNTdtaW4gZG93biB0byAyOW1pbi4KPgo+IFJ1biB0ZXN0ZWQgb24gYTY0LW9saW51eGlu
by1lbW1jLgo+Ck5BSyBmb3Igbm93LCBzb3JyeSAtIHRoZXkgZG9uJ3QgcHJvdmlkZSBINiBidWls
ZHMgd2hpY2ggaGFzIGEgc2VwYXJhdGUgCnBsYXQsIGFuZCB0aGUgQTY0IGJ1aWxkcyBjYW4ndCBi
ZSB1c2VkIG9uIGl0LiBJZiB5b3UgY2FuIHBpbmcgdGhlbSB0byAKcmVsZWFzZSBINiBidWlsZHMg
YXMgd2VsbCwgdGhlbiBsZXQncyByZS1kaXNjdXNzLiBBbHNvLCBpZiB5b3UgY291bGQgCnNoYXJl
IGhvdyB0aGUgc3BlZWQtdXAgd2FzIG1lYXN1cmVkIG9ubHkgd2l0aCB0aGlzIGNoYW5nZSwgdGhh
dCdkIGJlIGdyZWF0LgoKVGhhbmtzLApab2x0YW4gSAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
