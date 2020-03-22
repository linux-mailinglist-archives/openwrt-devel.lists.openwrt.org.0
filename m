Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8EE18E7D3
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 10:30:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/sW2BmwGb0s69ns/rTiqtfeZg5RWt2WoPjHNrdsqIlQ=; b=D7RL12xx9yJlKoQz4iBaQlX6Z
	MgnTeD+LA+aqH+jLncQZudzLKMtbOuzOQ27cQW3JYB8rzukvUxwQsozY6JmsY61AuOOMQSfAF5b9x
	NK6FTSfA5BHF+rsx6dq2m6DoEgV8dmr8gPBgN6IQESze0W22bD9f6J5HtTrrmWzNA0yrAcvQ5YHq2
	Qw6cn3hKSKycNYJQaP+2/kqTfcvyTbaI5QdLRhAQrtyG8O89nT5ARtZwDfsDRaAlZX5dX9EyMfZBK
	j7Px8lmSOxkF8jx1xC5qzWz4GhdmQRgKhIFFH+GwmJw6xshYnN3zscchVOVzu415d8Zh5lDfC5PCt
	5qdBTw2qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFwwE-0002qm-QS; Sun, 22 Mar 2020 09:30:34 +0000
Received: from welho-filter1.welho.com ([83.102.41.23])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFww7-0002q3-Fl
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 09:30:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter1.welho.com (Postfix) with ESMTP id 796F2C969;
 Sun, 22 Mar 2020 11:25:06 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp2.welho.com ([IPv6:::ffff:83.102.41.85])
 by localhost (welho-filter1.welho.com [::ffff:83.102.41.23]) (amavisd-new,
 port 10024)
 with ESMTP id ISk5UzKxSy4K; Sun, 22 Mar 2020 11:25:06 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp2.welho.com (Postfix) with ESMTPS id CAF0172;
 Sun, 22 Mar 2020 11:25:03 +0200 (EET)
To: openwrt-devel@lists.openwrt.org
References: <20200322033615.285409-1-rosenp@gmail.com>
From: Hannu Nyman <hannu.nyman@welho.com>
Message-ID: <e69361ac-aa1c-6702-44b6-6eb681b3748b@welho.com>
Date: Sun, 22 Mar 2020 11:25:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101
 Thunderbird/75.0
MIME-Version: 1.0
In-Reply-To: <20200322033615.285409-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_023027_719784_A24E186D 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.23 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFT][PATCH] toolchain/musl: update to 1.2.0
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
Reply-To: hannu.nyman@iki.fi
Cc: rosenp@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Um9zZW4gUGVuZXYgd3JvdGUgYXQgU2F0IE1hciAyMSAyMDozNjoxNSBQRFQgMjAyMDoKCiA+IFJl
bW92ZSBHTE9CX09OTFlESVIgcGF0Y2guIERvZXMgbm90IHNlZW0gdG8gYmUgbmVlZGVkLgogPiAu
Li4KID4gVGhlIEdMT0JfT05MWURJUiBtYWNybyBpcyBvbmx5IG5lZWRlZCBmb3IgZnN0b29scywg
d2hpY2ggc2hvdWxkIGJlwqAgZml4ZWQgCnRoZXJlLgoKCldoaWNoIG9mIHRob3NlIGNvbmZsaWN0
aW5nIHN0YXRlbWVudHMgaXMgdHJ1ZT8KCiJHTE9CX09OTFlESVIgZG9lcyBub3Qgc2VlbSB0byBi
ZSBuZWVkZWQiIG9yCiJUaGUgR0xPQl9PTkxZRElSIG1hY3JvIGlzIG9ubHkgbmVlZGVkIGZvciBm
c3Rvb2xzIiBzbyB0aGlzIHBhdGNoIHdvdWxkIGluIAplZmZlY3QgYnJlYWsgZnN0b29scyB1bmxl
c3MgaXQgaXMgbW9kaWZpZWQgPz8/CgpUaGUgZmlyc3Qgb25lIGlzIGluIHRoZSBwcm9wb3NlZCBj
b21taXQgbWVzc2FnZSwgd2hpbGUgdGhlIHNlY29uZCBpcyBpbiB0aGUgCmNvbW1lbnRzIHNlY3Rp
b24uCgoKR3JlcHBpbmcgdGhlIHNvdXJjZSBkaXJlY3RvcmllcyBvZiBteSBub3JtYWwgYnVpbGQg
Zm9yIHdydDMyMDBhY20gSSB0aGluayAKdGhhdCBmc3Rvb2xzIHN0aWxsIG5lZWRzIGl0OgoKcGVy
dXNAdWIxOTEwOi9PcGVud3J0L3dydDMyMDAvYnVpbGRfZGlyL3RhcmdldC1hcm1fY29ydGV4LWE5
K3ZmcHYzX211c2xfZWFiaSQgCmdyZXAgLXIgR0xPQl9PTkxZRElSIC4KIMKgIC4uLgogwqAgL2Zz
dG9vbHMtMjAyMC0wMS0yMS1kZWI3NDVmOC9saWJmc3Rvb2xzL292ZXJsYXkuYzrCoMKgwqAgaWYg
KCFnbG9iKGdsb2JkaXIsIApHTE9CX05PRVNDQVBFIHwgR0xPQl9NQVJLIHwgR0xPQl9PTkxZRElS
LCBOVUxMLCAmZ2wpKQoKCihNeSBvd24gYnVpbGQgaGFzIGFsc28gc29tZSBvdGhlciBwYWNrYWdl
cyB0aGF0IHNlZW0gdG8gdG8gaGF2ZSBHTE9CX09OTFlESVIgCmluIHRoZWlyIHNvdXJjZSwgYnV0
IGJvdGggbmFubyBhbmQgZ251bGliIGluIGdkYiBkZWZpbmUgaXQgYnkgdGhlbXNlbHZlcy4pCgpJ
IHdvdWxkIGJlIGNhdXRpb3VzIGluIHJlbW92aW5nIHRoZSBwYXRjaCB3aXRoIGp1c3QgIkRvZXMg
bm90IHNlZW0gdG8gYmUgCm5lZWRlZCIgdW5sZXNzIHRoZSBuZWVkIGlzIHJlYWxseSBldmFsdWF0
ZWQgd2l0aCBhbGwgZmVlZHMuCgoKSW4gYW55IGNhc2UsIGdyZWF0IHRvIHNlZSBhIHBhdGNoIGZv
ciBtdXNsIDEuMi4wIHZlcnNpb24gYnVtcC4KV291bGQgYmUgZ29vZCB0byBoYXZlIHRoYXQgaW4g
YmVmb3JlIHRoZSBuZXh0IHJlbGVhc2UgYnJhbmNoaW5nLgoKCnBzLiBUaGUgY29tbWl0IG1lc3Nh
Z2UgaGFzIG1pc3NwZWxsZWQgIndvcmVzaXplLmgiLiBCdHcsIGhvdyBkaWQgeW91IGV2YWx1YXRl
IAp0aGF0IHdvcmRzaXplLmggaXMgbm90IG5lZWRlZCBhbnkgbW9yZT8KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
