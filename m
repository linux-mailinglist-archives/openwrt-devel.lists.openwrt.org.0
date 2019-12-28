Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EFF12BF58
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 22:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hLgAVT03fynZr40KyLuJENgE8Ec3kGtMe6Knn/TXMaQ=; b=RJ1iDaRiA8l/e1EBgS9BeZNet
	nDdngBzq9Wt4PT9ApBbNKEjW2IrxO5tP7wnjZmbO+QPLzCxTS2I5w5x+b2yGkqCtF3GdfatFvjpWN
	Nz+ZD6qxOZvj6pyUxH6zyMX1RszUZ9dSi95ArBiYHJfmzXHVT5OWWt7tFkilX5zvl+r2DAN7uj47w
	OgR6kqmFyVRtNnFtIzl0TtP5rjanKBUsG6rXjxLvZks09oMYrbrGTNEpkidrfVGRAIduwSCm7DuL+
	U/PLbAXtD+36vJ8l63xbb1bkAfFt4EPB7xXkhHCcgu5V3oj/I2JrBTWEXSkUhApSKrygcm+GHUySt
	L3+Hh0c9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilJqP-0005Fh-So; Sat, 28 Dec 2019 21:41:57 +0000
Received: from welho-filter1.welho.com ([83.102.41.23])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilJqF-0005Em-Gu
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 21:41:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter1.welho.com (Postfix) with ESMTP id EBFFA15F2E;
 Sat, 28 Dec 2019 23:41:44 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter1.welho.com [::ffff:83.102.41.23]) (amavisd-new,
 port 10024)
 with ESMTP id KpuqFyGgMRSB; Sat, 28 Dec 2019 23:41:44 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id 39E8A2308;
 Sat, 28 Dec 2019 23:41:42 +0200 (EET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <6cb3b640-8590-d083-e5c2-63df74c7e86b@welho.com>
 <20191226225936.GB70184@meh.true.cz>
 <fa84e9a6-5b08-c680-b3ed-0ad1b3f00359@iki.fi>
 <20191227122541.GC70184@meh.true.cz> <20191227140400.GD70184@meh.true.cz>
 <4befe9c3-419b-5903-9db5-bc0518634234@iki.fi>
 <20191228210110.GG70184@meh.true.cz>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <55fbff31-3aba-6f72-d95f-535dab1980da@iki.fi>
Date: Sat, 28 Dec 2019 23:41:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101
 Thunderbird/72.0
MIME-Version: 1.0
In-Reply-To: <20191228210110.GG70184@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_134147_730736_017797EE 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.23 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
Subject: Re: [OpenWrt-Devel] ubus and/or libubox upgrades today cause
 problems: some services do not start, logread hangs
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

UGV0ciDFoHRldGlhciBraXJqb2l0dGkgMjguMTIuMjAxOSBrbG8gMjMuMDE6Cj4gSGFubnUgTnlt
YW4gPGhhbm51Lm55bWFuQGlraS5maT4gWzIwMTktMTItMjggMTI6NTM6MjddOgo+Cj4gSGksCj4K
Pj4gRm9yIG1lLCBhdCBsZWFzdCBjb2xsZWN0ZCBhbmQgbmxid21vbiBkbyBub3Qgc3RhcnQuCj4g
SSd2ZSBqdXN0IHB1c2hlZCBmaXhbMV0sIHRoYW5rcyBmb3IgdGhlIHJlcG9ydC4KPgo+IDEuIGh0
dHBzOi8vZ2l0Lm9wZW53cnQub3JnL2UzZTkzOWQ4ZTYyNDI5MGQxNDQ3MWQ5MTMxNTRmNGZlYmYz
YTE2MGIKPgo+IC0tIHluZXp6CgoKVGhhbmtzLiBBZnRlciB5b3VyIGxpYnVib3ggZml4IHRoZSBz
ZXJ2aWNlcyBzdGFydHMgYWdhaW4gbm9ybWFsbHkuCgpJIHRlc3RlZCBib3RoIGlwcTgwNngvUjc4
MDAgYW5kIGF0aDc5L1dORFIzNzAwCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
