Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09BE12AE97
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 21:44:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LnowYTKEndvDt4kdtyCwrezNH73xZAdv9qgmjXC696M=; b=ohst4x9/cbNpktEFwYtT/2RmTs
	fs0+e8l9lvlVL+WGXkQMw/oWYvnbADRqtx1k8WqW6BYKossUKOU+fodCYROl6UAHJ3/mgOP1N2UND
	NyV7H8L6UYW12HUa53Z/cfwqRNjJm0sa7bF370iUOcHIdLp1DnZvGBjBgfZH/x2CijK+BK1W6NBIz
	UHTuselGXbd45uXmE2NuGN24HUss1zLfEJSoxufFL/gEhmrQ32X+KBVcAkBuhjWyCwo+xHDcWDoRN
	VRFHxfoYe80idAKrZ9nQxXroiZctQmEcXnKOH0eirgNfEjKbjU2iSOCvyZra6Y35hJ376ae7vg53O
	h9IxDWEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikZzx-0007X1-5B; Thu, 26 Dec 2019 20:44:45 +0000
Received: from welho-filter1.welho.com ([83.102.41.23])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikZzr-0007Wc-3x
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 20:44:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter1.welho.com (Postfix) with ESMTP id 8938916022;
 Thu, 26 Dec 2019 22:37:35 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter1.welho.com [::ffff:83.102.41.23]) (amavisd-new,
 port 10024)
 with ESMTP id RhTAW6uCEcSp; Thu, 26 Dec 2019 22:37:34 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id EFE6C2DD;
 Thu, 26 Dec 2019 22:37:31 +0200 (EET)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Hannu Nyman <hannu.nyman@welho.com>
Message-ID: <6cb3b640-8590-d083-e5c2-63df74c7e86b@welho.com>
Date: Thu, 26 Dec 2019 22:37:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101
 Thunderbird/72.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_124439_323828_163FB96D 
X-CRM114-Status: UNSURE (   5.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.23 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] ubus and/or libubox upgrades today cause problems:
 some services do not start, logread hangs
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
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSBub3RpY2VkIHRvZGF5IHByb2JsZW1zIHdpdGggbmV3IG1hc3RlciBidWlsZHMsIGJvdGggd2l0
aCBpcHE4MDZ4L1I3ODAwIGFuZCAKYXI3MXh4L1dORFIzNzAwOgoKKiBTb21lIHNlcnZpY2VzIGRv
IG5vdCBzdGFydCBhbmQgdGhlaXIgcHJvY2Vzc2VzIGFyZSBub3QgdmlzaWJsZSBpbiB0aGUgCnBy
b2Nlc3MgbGlzdC4gRXhhbXBsZXM6IGNvbGxlY3RkIGFuZCBubGJ3bW9uCiogbG9ncmVhZCBjb21t
YW5kIGFsd2F5cyBoYW5ncy4gQm90aCBmcm9tIFNTSCBjb25zb2xlIGFuZCBsdWNpCgpMb29raW5n
IGF0IHRoZSByZWNlbnQgY2hhbmdlcywgSSBzdXNwZWN0ZWQgdGhlIHVidXMgYW5kL29yIGxpYnVi
b3ggdmVyc2lvbiAKYnVtcHMgdG9kYXkgdGhhdCBoYXZlIGFwcGFyZW50bHkgYmVlbiBkaXNjdXNz
ZWQgYXPCoMKgICJbUEFUQ0ggdWJ1cyAwMC8xNl0gCkdpdExhYiBDSSwgdGVzdHMsIGZ1enppbmcs
IGZpeGVzIGFuZCBpbXByb3ZlbWVudHMiIGFuZCAiIFtQQVRDSCBsaWJ1Ym94IAowMC8yMF0gdGVz
dHMsIGZ1enppbmcsIGZpeGVzIGFuZCBpbXByb3ZlbWVudHMiIG1lc3NhZ2Ugc2VyaWVzLgoKSSBy
ZXZlcnRlZCBib3RoIHVidXMgYW5kIGxpYnVib3ggY2hhbmdlcyBhbmQgdGhlIHNlcnZpY2VzIHN0
YXJ0IGFnYWluIAoobmxid21vbiwgY29sbGVjdGQpLCBhbmQgYWxzbyBsb2dyZWFkIHdvcmtzIDst
KQoKCkNvbW1pdHMgdGhhdCBJIHJldmVydGVkOgoKaHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9
b3BlbndydC9vcGVud3J0LmdpdDthPWNvbW1pdGRpZmY7aD03Y2IwMThjNTkxNDUzODQ4YTUwZWY3
NzM3YmRiZTVkOTBhYTdhMThhCgpodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1vcGVud3J0L29w
ZW53cnQuZ2l0O2E9Y29tbWl0ZGlmZjtoPWI5ZjNhZjdjODkwZTc2YmFhOTg2OWY1MTM4NGMwZGJk
OTZjM2I3MDQKCgpJIGhhdmUgZG9uZSBubyBmdXJ0aGVyIGRlYnVnZ2luZyBzbyBmYXIuCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
