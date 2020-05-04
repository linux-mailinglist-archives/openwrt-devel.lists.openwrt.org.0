Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9AE1C4638
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 20:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qRmOS83zQUS14YN22T32USE0f5J398Dq6/wOI9zyko=; b=iDzblpDqalUp1D
	sXDu7MMCssTdJmwXxMcBEcRL2vVfa7n+DnLTjZdfTW8mCMGz9QzaGqgxbVMJf+r+pkwQFiKvbwDQC
	7vtOXPgn1u7jWJtkuqk6oWPU1OXJzqo8u/KilIdsvOV61uFN/7BQi0WEHVAy3qN5t9g+1C7ekZ3u0
	Y7dOjW6fE9HIXoFyZYHV8qx1TDKGLoNchZlSJ5Rh46Zp3b5YLtT4qSb7HdgZCxIvojwLiLNDmzfDZ
	GT3w4y6Ckr0uwlkIJTZg5nPLwj4H05re9I59pzt/vGjam2A2osXlFYfkO71vioK09Jpahvg6IY5PL
	7rFnXxaipe/5v529RcYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVg5D-00025d-Av; Mon, 04 May 2020 18:44:51 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVg57-000231-25
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 18:44:47 +0000
Received: (wp-smtpd smtp.tlen.pl 31307 invoked from network);
 4 May 2020 20:44:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1588617881; bh=RJ1W+4rIbYOGYhkxzB9w5rP0wGEd2Jp+fzpoIe271UE=;
 h=Subject:To:From;
 b=QL9gHo8B0THQgvfSe+/IlzCvYyzi0GHUGXXMTtdzXKHuqpcjJlAGC9UUeVabsk7iY
 lHUpeHojPUs8DPMkzsTgBAM1Uj3zS9lSQhIMsSTRSS6/3Kt5bSpRFyY4QYuKcbf/Xe
 aw44jWyLRLM5eVdLO1m6FGRpw83OCqytvilnDXmc=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 4 May 2020 20:44:41 +0200
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20200504174855.24934-1-tomek_n@o2.pl>
 <002c01d62242$322f12a0$968d37e0$@adrianschmutzler.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <71b372ef-74a5-be8b-1f78-21a4dc65947a@o2.pl>
Date: Mon, 4 May 2020 20:44:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <002c01d62242$322f12a0$968d37e0$@adrianschmutzler.de>
Content-Language: en-US
X-WP-MailID: b163d1a9754e3b949f77ca6aeb6641e2
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EeOE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_114445_266628_36B082F4 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [19.07] [PATCH] ath79: add support for Sitecom
 WLR-7100
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

VyBkbml1IDA0LjA1LjIwMjAgb8KgMjA6MzEsIG1haWxAYWRyaWFuc2NobXV0emxlci5kZSBwaXN6
ZToKPiBIaSwKPiAKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogb3Blbndy
dC1kZXZlbCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0cy5vcGVud3J0Lm9yZ10K
Pj4gT24gQmVoYWxmIE9mIFRvbWFzeiBNYWNpZWogTm93YWsKPj4gU2VudDogTW9udGFnLCA0LiBN
YWkgMjAyMCAxOTo0OQo+PiBUbzogb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+PiBT
dWJqZWN0OiBbT3BlbldydC1EZXZlbF0gWzE5LjA3XSBbUEFUQ0hdIGF0aDc5OiBhZGQgc3VwcG9y
dCBmb3IgU2l0ZWNvbQo+PiBXTFItNzEwMAo+Pgo+PiBCYWNrcG9ydGVkIGZyb206IDFiYzkyMWY0
MTlkZjUwOGM1N2RjMDdjZDNlNDNjZGYwNDA4YzE3ZGQKPiAKPiBEZXZpY2Ugc3VwcG9ydCBpcyB0
eXBpY2FsbHkgbm90IGJhY2twb3J0ZWQgdG8gc3RhYmxlIGJyYW5jaGVzLCB1bmxlc3MgeW91IGhh
dmUgYSB2ZXJ5IGdvb2QgcmVhc29uIGZvciBpdC4KCkkgc2VlIGJ1bmNoIG9mIGRldmljZXMgYWRk
ZWQgZHVyaW5nIHJjIHBoYXNlIGFuZCBhZnRlciBzdGFibGUgcmVsZWFzZSwgc28Kd2hhdCdzIHRo
ZSB0cnV0aCBoZXJlPwoKPiAKPiBCZXN0Cj4gCj4gQWRyaWFuCj4gCgotLSAKVE1OCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
