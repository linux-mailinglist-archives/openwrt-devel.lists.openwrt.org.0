Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3427712B544
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 15:45:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Za5Ytm6JfMtIHfYF0Mxw3nA5IFxiM9LrvM6XoH2Oddg=; b=P70rWcvO4Sz4a4poWbtoLD0Z6
	CjQW5EBE9DPEJlLXNcAb+tm5XUTJG4IAUvA3FP/jh4GjiMa4oWldqNHg+5V1mNWm+lhUa90g/Dfrl
	tHFJ6ccwO9PnL8qUA0kSmJDd2i5a9O+y1xZ+dZZihZKw77pbdU5YgEJ3XjHWg0rfBexHtwuy2mKwP
	f85X9z3S2qH4sYSOlNE/+NRQhrz667dEKLZhJywk0PXKDlibskCb5FWKzsHE8ATHDGudu9jLVGX44
	P1yORn2/HJz/0DItKcrzDtHZeNRvYh8g+o+YJTUQU3izpFNH7IJf/ZBTaJPx4b+CV1omvu/CJSAMB
	FiHqXZcag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikqrI-0006Av-Uv; Fri, 27 Dec 2019 14:44:57 +0000
Received: from welho-filter3.welho.com ([83.102.41.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikqr7-0006AP-Po
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 14:44:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter3.welho.com (Postfix) with ESMTP id 1623FD0D3;
 Fri, 27 Dec 2019 16:44:40 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter3.welho.com [::ffff:83.102.41.25]) (amavisd-new,
 port 10024)
 with ESMTP id BdW4PTfVTlnl; Fri, 27 Dec 2019 16:44:39 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 616E12A0;
 Fri, 27 Dec 2019 16:44:37 +0200 (EET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20191227141519.15626-1-ynezz@true.cz>
From: Hannu Nyman <hannu.nyman@welho.com>
Message-ID: <e6cf33a5-4716-290a-bb88-79fe8b3919a2@welho.com>
Date: Fri, 27 Dec 2019 16:44:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101
 Thunderbird/72.0
MIME-Version: 1.0
In-Reply-To: <20191227141519.15626-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_064446_003382_9722E4AB 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 ubus] ubusd/libubus-io: fix socket
 descriptor passing
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciBraXJqb2l0dGkgMjcuMTIuMjAxOSBrbG8gMTYuMTU6Cj4gSW4gY29tbWl0
IDVkN2NhODMwOWQwYSAoInVidXNkL2xpYnVidXMtaW86IGZpeCB2YXJpYWJsZSBzaXplZCBzdHJ1
Y3QKPiBwb3NpdGlvbiB3YXJuaW5nIikgdGhlIHBvc2l0aW9uIG9mIGNtc2doZHIgc3RydWN0IGhh
cyBiZWVuIGNoYW5nZWQgaW4KPiBvcmRlciB0byBmaXggY2xhbmctOSBjb21waWxlciB3YXJuaW5n
LCBidXQgaXQgaGFzIGludHJvZHVjZWQgcmVncmVzc2lvbgo+IGluIGF0IGxlYXN0IGBsb2dyZWFk
YCB3aGljaCBoYW5nZWQgaW5kZWZpbml0ZWx5Lgo+Cj4gU28gdGhpcyBwYXRjaCByZXdvcmtzIHRo
ZSBzb2NrZXQgZGVzY3JpcHRvciBwYXNzaW5nIGluIGEgd2F5IHJlY29tbWVuZGVkCj4gaW4gdGhl
IGBjbXNnKDMpYCBtYW51YWwgcGFnZS4KPgo+IFJlZjogaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvcGlwZXJtYWlsL29wZW53cnQtZGV2ZWwvMjAxOS1EZWNlbWJlci8wMjA4NDAuaHRtbAo+IEZp
eGVzOiA1ZDdjYTgzMDlkMGEgKCJ1YnVzZC9saWJ1YnVzLWlvOiBmaXggdmFyaWFibGUgc2l6ZWQg
c3RydWN0IHBvc2l0aW9uIHdhcm5pbmciKQo+IFJlcG9ydGVkLWJ5OiBIYW5udSBOeW1hbiA8aGFu
bnUubnltYW5Ad2VsaG8uY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6
QHRydWUuY3o+Cj4gLS0tCgpUaGF0IHNlZW1zIHRvIHRha2UgY2FyZSBvZiB0aGUgbG9ncmVhZCBw
cm9ibGVtLiBUaGFua3MuCgpCdXQgbmVpdGhlciBjb2xsZWN0ZCBub3Qgbmxid21vbiBzdGFydHMu
IFRoZXkgYXJlIHN0aWxsIGJyb2tlbiB3aXRoIHRoZSAKY3VycmVudCB1YnVzLgoKCkxvb2tpbmcg
bm93IGF0IHRoZSAoYWdhaW4gd29ya2luZykgc3lzdGVtIGxvZyByZXZlYWxzOgoKcm9vdEByb3V0
ZXIyOn4jIGxvZ3JlYWQgfCBncmVwIGNvbGxlY3RkCkZyaSBEZWMgMjcgMTY6MjM6MzcgMjAxOSBk
YWVtb24uaW5mbyBwcm9jZDogTm90IHN0YXJ0aW5nIGluc3RhbmNlIApjb2xsZWN0ZDo6aW5zdGFu
Y2UxLCBjb21tYW5kIG5vdCBzZXQKcm9vdEByb3V0ZXIyOn4jIGxvZ3JlYWQgfCBncmVwIG5sYndt
b24KRnJpIERlYyAyNyAxNjoyMzozMyAyMDE5IGRhZW1vbi5pbmZvIHByb2NkOiBOb3Qgc3RhcnRp
bmcgaW5zdGFuY2UgCm5sYndtb246Omluc3RhbmNlMSwgY29tbWFuZCBub3Qgc2V0CgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
