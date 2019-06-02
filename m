Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CF732334
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Jun 2019 14:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YFm9pvxFLdCoPeXEHaWEb2s38eALRKe79jFsStxHKCE=; b=K3qiTvVaD6B3XpYBb8wxMko/e0
	NEVAqte4jrObjSCtud9iahPrY4tRIlSJp6kxbaEeY6Of7b+8AaLrH/kNHpjsUBbj8V/d0nbgnp00c
	5WsdtQSPbcLCmDhzxpblwfHqponqDxoybk/qxWDWkLHa1r0Akd0Gt1xvDePHv+BZuM0tEwhmW5GY5
	+iBZwb9J9a+yeCdTClAvNi4VbN4hIZ2PHlNIcByuO+/BjmEhzuMWCX4CYt30E4D9YPoUp+26AfTGn
	pmhp5fuLOH/7y8wYxVGBs3uXQeVF3/2JUpi7GKl5+kjDXkvb6fIyymSe9w1YPq7xlx64AObHJpbVc
	aavatwLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXPGB-0006nX-0R; Sun, 02 Jun 2019 12:06:47 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXPG3-0006n3-Ad
 for openwrt-devel@lists.openwrt.org; Sun, 02 Jun 2019 12:06:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E258B4EC7;
 Sun,  2 Jun 2019 14:06:32 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8edfe86a;
 Sun, 2 Jun 2019 14:06:30 +0200 (CEST)
Date: Sun, 2 Jun 2019 14:06:30 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <20190602120630.GH13432@meh.true.cz>
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
 <20190530100027.GE13432@meh.true.cz> <2839502.UJiEac7TxE@debian64>
 <20190530153018.GF13432@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530153018.GF13432@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_050639_522712_EF1DA600 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] gpio-button-hotplug: support
 interrupt properties
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMTktMDUtMzAgMTc6MzA6MThdOgoKSGks
Cgo+ID4gT24gVGh1cnNkYXksIE1heSAzMCwgMjAxOSAxMjowMDoyNyBQTSBDRVNUIFBldHIgxaB0
ZXRpYXIgd3JvdGU6Cj4gPiA+IAo+ID4gPiBJJ3ZlIGp1c3QgY2hlY2tlZCB0aGlzIG9uIGF0aDc5
IChhcmNoZXItYzctdjUpIGFuZCBvbiByYW1pcHMvbXQ3NjIwCj4gPiA+IChiZGNvbSx3YXAyMTAw
LXNrKSB3aXRoIFdQUyBidXR0b25zLgo+ID4gPgo+ID4gPiBBY2tlZC1ieTogUGV0ciDFoHRldGlh
ciA8eW5lenpAdHJ1ZS5jej4KPiA+IAo+ID4gQ2FuIHlvdSB0ZWxsIG1lIHdoYXQgeW91IHRlc3Rl
ZD8gV2FzIGl0IHRoZSBzb2Z0d2FyZSBkZWJvdW5jZT8KPiA+IEJlY2F1c2UgdGhpcyBzaG91bGQg
YmUgdGhlIG9ubHkgYml0IHRoYXQgd2lsbCBhZmZlY3QgdGhlIGF0aDc5Cj4gPiBwbGF0Zm9ybSBJ
IHRoaW5rIChzaW5jZSBpdCBhbHJlYWR5IGhhcyBzdXBwb3J0IGZvciBpbnRlcnJ1cHRzCj4gPiB0
aHJvdWdoIHRoZSBncGlvIGNvbnRyb2xsZXIpLgo+IAo+IGl0IHdhcyBqdXN0IEZZSSwgdGhhdCBJ
J3ZlIGNoZWNrZWQgaXQgKHJ1biB0ZXN0ZWQpIGFuZCBkaWRuJ3Qgbm90aWNlZCBhbnkgc2lkZQo+
IGVmZmVjdHMsIHBvc3NpYmxlIHJlZ3Jlc3Npb25zLiAgSSd2ZSBzaW1wbHkgYWRkZWQgdGhpcyBw
YXRjaCBvbiB0b3Agb2YgZml4IGZvcgo+IEZTIzE5NjUgYW5kIHJ1biB0ZXN0ZWQgaXQgdG9nZXRo
ZXIuCgphcHBhcmVudGx5IEkgZGlkbid0IHRlc3RlZCBpdCB3ZWxsLCBzb21lb25lIGhhcyByZXBv
cnRlZCBmb2xsb3dpbmcgb24gdGhlIElSQzoKCiAwNDozOToyMyA8IGt5bGk+IEFmdGVyIGNvbW1p
dCBhZmMwNTZkN2RjLCB0aGUgYnV0dG9uIHN0b3BwZWQgd29ya2luZyBwcm9wZXJseQogb24gbXkg
cmFtaXBzL210NzYyMCB0YXJnZXQuIFRoZSBmaXJzdCBwcmVzcyBvZiBhIGJ1dHRvbiBhZnRlciBy
ZWJvb3Qgd2lsbCBnZXQKIGEgTEFSR0UgU0VFTiwgYW5kIGl0IHdpbGwgYmUgaW50ZXJwcmV0ZWQg
YXMgYSBsb25nIHByZXNzLiBTbyBldmVuIGEgc2hvcnQKIHByZXNzIG9uIHJlc2V0IHdpbGwgdHJp
Z2dlciBGQUNUT1JZIFJFU0VULi4uLiBJcyBhbnlvbmUgZXhwZXJpZW5jaW5nIHRoZSBzYW1lCiBw
cm9ibGVtPwoKSSd2ZSB0b2xkIGhpbSB0byByZXBvcnQgaXQgb24gYnVncy5vcGVud3J0Lm9yZywg
SSBjYW4gZG8gc29tZSB0ZXN0aW5nIGFuZAphdHRlbXB0IHRvIGZpeCBpdCBvbiBteSBtdDc2MjAg
aW4gdGhlIHVwY29taW5nIGRheXMuCgpDaGVlcnMsCgpQZXRyCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
