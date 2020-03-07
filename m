Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4E517CE1D
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 13:19:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NfxS+2XqPHkjd0Jolci3VbddzkSyFejfwwE9eeAylV8=; b=Of5DvfAP155x7imij9C3j6wis
	ENJuZC4A+24geLtTJYDM4m8e/XNaAGhSeI+5qAtez/3NBivvITbwCwaUBs1T3P6YFpq1n3dONwhp0
	3oA3WyXWlvOPEnJEsyoDeyatfpcnChizMvn/zjo0/SrWy8vTbBzaF4x/PjKNNW8X/R9ePPmNPHEqH
	NGuGZ0wHDA6EVp8zMzeUoZp8TQrnt4uyBNoRXiM1NZ8PAtM7P4MgY4JMQ8iudq6xl6HQH7fQvNLf3
	iUI6puoKwUPcyo1ufWU5UqDljgQcwzk9zdRa7aNdMPwMgbFSpUNffr7azFQ0lHWpIWMFaYr0AgWWU
	Yyxw79EqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAYQM-00067A-7K; Sat, 07 Mar 2020 12:19:22 +0000
Received: from v-smtpgw1.han.skanova.net ([81.236.60.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAYQG-00065s-NN
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 12:19:18 +0000
Received: from gammdatan.home.lan ([81.235.210.78]) by cmsmtp with ESMTP
 id AYQBjVAJuns9ZAYQBjXEb8; Sat, 07 Mar 2020 13:19:11 +0100
Received: from [192.168.0.3] (tobbe.home.lan [192.168.0.3])
 by gammdatan.home.lan (8.15.2/8.14.7) with ESMTP id 027CJArs1797791
 for <openwrt-devel@lists.openwrt.org>; Sat, 7 Mar 2020 13:19:11 +0100
From: Torbjorn Jansson <torbjorn.jansson@mbox200.swipnet.se>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <d999b778-b2d1-d71b-e87f-991956bd8a5a@mbox200.swipnet.se>
Message-ID: <0ad0a6b0-ee54-5590-232f-1bf8863dc001@mbox200.swipnet.se>
Date: Sat, 7 Mar 2020 13:19:11 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <d999b778-b2d1-d71b-e87f-991956bd8a5a@mbox200.swipnet.se>
Content-Language: en-US
X-CMAE-Envelope: MS4wfO7z/TTj5j4/pms82mNvevo2ni5XWI499EpUB5luVACKt98ORcbZXDCL1+0D0Xt5AgviqvVpWAP/gp+Z+0fhGIDQ8qqJ2SPr1lA79Wz2LJI4ia58nay3
 BDw9zFeZms6YxVIsEocoZReQEhiJG6gaCs2B36hoHMTrQeFFvMz5F0AkvTs3mQbBYxyyClYYFeIbtfkVU1fDaqqItYu5ruEeBgs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_041916_927700_A2E58971 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [81.236.60.204 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] luci-compat problems on 19.07.2
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

TmV2ZXIgbWluZCwgdXBkYXRpbmcgdGhlIHByZWluc3RhbGxlZCBsdWNpIHJlbGF0ZWQgcGFja2Fn
ZXMgcmVzb2x2ZWQgdGhlIGNvbmZsaWN0LgoKCk9uIDIwMjAtMDMtMDcgMTI6MTYsIFRvcmJqb3Ju
IEphbnNzb24gd3JvdGU6Cj4gSGVsbG8uCj4gCj4gaSBqdXN0IHRyaWVkIHRvIHVwZ3JhZGUgbXkg
dWJudC1lcngtc2ZwIHRvIDE5LjA3LjIgZnJvbSAxOCBhbmQgd2hlbiBpIHdhcyAKPiByZWluc3Rh
bGxpbmcgdGhlIHBhY2thZ2VzIGkgbmVlZCBtb3N0IG9mIHRoZW0gZmFpbGVkIG9uIGx1Y2ktY29t
cGF0Lgo+IAo+IHNlZSBiZWxvdyBlcnJvciwgaG93IGRvIGkgZ2V0IGFyb3VuZCB0aGlzPwo+IAo+
IAo+ICMgb3BrZyBpbnN0YWxsIGx1Y2ktY29tcGF0Cj4gSW5zdGFsbGluZyBsdWNpLWNvbXBhdCAo
Z2l0LTIwLjA2NC42OTc3Ni1lOGM2MzhjLTEpIHRvIHJvb3QuLi4KPiBEb3dubG9hZGluZyAKPiBo
dHRwOi8vZG93bmxvYWRzLm9wZW53cnQub3JnL3JlbGVhc2VzLzE5LjA3LjIvcGFja2FnZXMvbWlw
c2VsXzI0a2MvbHVjaS9sdWNpLWNvbXBhdF9naXQtMjAuMDY0LjY5Nzc2LWU4YzYzOGMtMV9hbGwu
aXBrIAo+IAo+IENvbGxlY3RlZCBlcnJvcnM6Cj4gIMKgKiBjaGVja19kYXRhX2ZpbGVfY2xhc2hl
czogUGFja2FnZSBsdWNpLWNvbXBhdCB3YW50cyB0byBpbnN0YWxsIGZpbGUgCj4gL3Vzci9saWIv
bHVhL2x1Y2kvdG9vbHMvd2ViYWRtaW4ubHVhCj4gIMKgwqDCoMKgwqDCoMKgIEJ1dCB0aGF0IGZp
bGUgaXMgYWxyZWFkeSBwcm92aWRlZCBieSBwYWNrYWdlwqAgKiBsdWNpLWJhc2UKPiAgwqAqIG9w
a2dfaW5zdGFsbF9jbWQ6IENhbm5vdCBpbnN0YWxsIHBhY2thZ2UgbHVjaS1jb21wYXQuCj4gCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
