Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B4533B12
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Jun 2019 00:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u/fm676zccDHAnS5yt0/POXhFKfh7zXWLHRrCNpN3mQ=; b=P3dWdGfOfHExRpOQIntSX46hbN
	ztNnBUxS7aIGxxQkDwSAunSitTpJdy2wTQUB+S6BKCXMv96/Btxrwl+wh9at/alQE75I/0VoPZRii
	aThBnjYi+UOaIsySoxO5Dn5gxsQwPErhWHm6zI4rdKTX8Itfo1o44wM/zdg22Y745NfYqAQJrCVM2
	nn/KgnniSbcjT/a1brX/L+RpO1EEL5KR0qDCYxpb7PhbjgW+6Tg1mcLuY1rYj8bOuGyCMdtMiyDuZ
	jbUFECNYtkSKn0F0gniwO+zKqnzna7qcVMUSn1vANwqHzi8zrb6lFQMSkWPHQIixshgQupJC3XQx5
	NVr6Qbmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvLY-0001Ov-P0; Mon, 03 Jun 2019 22:22:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvLS-0001OJ-2B
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 22:22:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 14485492E;
 Tue,  4 Jun 2019 00:22:19 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4fda8132;
 Tue, 4 Jun 2019 00:22:16 +0200 (CEST)
Date: Tue, 4 Jun 2019 00:22:16 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <20190603222216.GM13432@meh.true.cz>
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
 <20190530100027.GE13432@meh.true.cz> <2839502.UJiEac7TxE@debian64>
 <20190530153018.GF13432@meh.true.cz>
 <20190602120630.GH13432@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190602120630.GH13432@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_152222_431305_E46E0897 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMTktMDYtMDIgMTQ6MDY6MzBdOgoKSGks
Cgo+ID4gPiBPbiBUaHVyc2RheSwgTWF5IDMwLCAyMDE5IDEyOjAwOjI3IFBNIENFU1QgUGV0ciDF
oHRldGlhciB3cm90ZToKPiA+ID4gPiAKPiA+ID4gPiBJJ3ZlIGp1c3QgY2hlY2tlZCB0aGlzIG9u
IGF0aDc5IChhcmNoZXItYzctdjUpIGFuZCBvbiByYW1pcHMvbXQ3NjIwCj4gPiA+ID4gKGJkY29t
LHdhcDIxMDAtc2spIHdpdGggV1BTIGJ1dHRvbnMuCj4gPiA+ID4KPiA+ID4gPiBBY2tlZC1ieTog
UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiA+ID4gCj4gPiA+IENhbiB5b3UgdGVsbCBt
ZSB3aGF0IHlvdSB0ZXN0ZWQ/IFdhcyBpdCB0aGUgc29mdHdhcmUgZGVib3VuY2U/Cj4gPiA+IEJl
Y2F1c2UgdGhpcyBzaG91bGQgYmUgdGhlIG9ubHkgYml0IHRoYXQgd2lsbCBhZmZlY3QgdGhlIGF0
aDc5Cj4gPiA+IHBsYXRmb3JtIEkgdGhpbmsgKHNpbmNlIGl0IGFscmVhZHkgaGFzIHN1cHBvcnQg
Zm9yIGludGVycnVwdHMKPiA+ID4gdGhyb3VnaCB0aGUgZ3BpbyBjb250cm9sbGVyKS4KPiA+IAo+
ID4gaXQgd2FzIGp1c3QgRllJLCB0aGF0IEkndmUgY2hlY2tlZCBpdCAocnVuIHRlc3RlZCkgYW5k
IGRpZG4ndCBub3RpY2VkIGFueSBzaWRlCj4gPiBlZmZlY3RzLCBwb3NzaWJsZSByZWdyZXNzaW9u
cy4gIEkndmUgc2ltcGx5IGFkZGVkIHRoaXMgcGF0Y2ggb24gdG9wIG9mIGZpeCBmb3IKPiA+IEZT
IzE5NjUgYW5kIHJ1biB0ZXN0ZWQgaXQgdG9nZXRoZXIuCj4gCj4gYXBwYXJlbnRseSBJIGRpZG4n
dCB0ZXN0ZWQgaXQgd2VsbCwgc29tZW9uZSBoYXMgcmVwb3J0ZWQgZm9sbG93aW5nIG9uIHRoZSBJ
UkM6Cj4gCj4gIDA0OjM5OjIzIDwga3lsaT4gQWZ0ZXIgY29tbWl0IGFmYzA1NmQ3ZGMsIHRoZSBi
dXR0b24gc3RvcHBlZCB3b3JraW5nIHByb3Blcmx5Cj4gIG9uIG15IHJhbWlwcy9tdDc2MjAgdGFy
Z2V0LiBUaGUgZmlyc3QgcHJlc3Mgb2YgYSBidXR0b24gYWZ0ZXIgcmVib290IHdpbGwgZ2V0Cj4g
IGEgTEFSR0UgU0VFTiwgYW5kIGl0IHdpbGwgYmUgaW50ZXJwcmV0ZWQgYXMgYSBsb25nIHByZXNz
LiBTbyBldmVuIGEgc2hvcnQKPiAgcHJlc3Mgb24gcmVzZXQgd2lsbCB0cmlnZ2VyIEZBQ1RPUlkg
UkVTRVQuLi4uIElzIGFueW9uZSBleHBlcmllbmNpbmcgdGhlIHNhbWUKPiAgcHJvYmxlbT8KCnNv
IEkgY2FuIGNvbmZpcm0gdGhpcyBiZWhhdmlvdXIsIGJ1dCBpdCdzIG5vdCBjYXVzZWQgYnkgeW91
ciBwYXRjaCBhcyBpdApkb2Vzbid0IHdvcmsgZXZlbiB3aXRoIHlvdXIgcGF0Y2ggcmV2ZXJ0ZWQu
IFRoZXJlJ3Mgc2ltcGx5IHVuaGFuZGxlZCBjb3JuZXIKY2FzZSwgd2hlcmUgdGhlIHNlZW4gaXMg
d3JvbmcgaWYgdGhlIGJ1dHRvbiBpcyBwcmVzc2VkIGZvciB0aGUgZmlyc3QgdGltZSBhbmQKSSds
bCBzaG9ydGx5IHNlbmQgYSBwYXRjaCB3aGljaCBzaG91bGQgZml4IHRoaXMuCgotLSB5bmV6egoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
