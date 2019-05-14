Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A621C831
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 14:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y9ie1wO533KWIWRsyorEkfFbD4pNtWVZPfYahyAc6YA=; b=bMN0T8CQSyoAB9OUsY2Wg2elx6
	MJtex7URhG2MjQ85wZ9hrPTiEO8tugUo9JT3ZQUT9zbF1RdRxAgbI1gFdWlXVSPv8FCMNsruT/lPL
	c/ba5QnGWLddlEsM498f3pJaeVsxJ0onQxqZNQZCTO6KQOi76dQbbmTUfaS2p54hgf+TbK7fRckk7
	nIM0SEtFCGmgPx1B3Vh+nLR9VuEHEw429Oeeu8TfurAed7TkZyJ+oEnieKQhD8juwBHJG7t9eNPM2
	27bjwPx5zd5KTYtbhOQotQ7+4KIy8jroyOpjyLM2hvQFK4vcHmPoyHC3av0ie7RZYtkKnpaASa4vo
	U/3J23IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQWDn-0001op-RX; Tue, 14 May 2019 12:07:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQWDh-0001oS-3G
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 12:07:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A67D04E1C;
 Tue, 14 May 2019 14:07:37 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6211b985;
 Tue, 14 May 2019 14:07:36 +0200 (CEST)
Date: Tue, 14 May 2019 14:07:36 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190514120736.GB31332@meh.true.cz>
References: <20190512191317.32061-1-linus.walleij@linaro.org>
 <20190514083038.GA31332@meh.true.cz>
 <CACRpkdZ3JBBt8qTnC5KhLm1QUPhRU1WmQggenC+RhQmkwvd5oQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZ3JBBt8qTnC5KhLm1QUPhRU1WmQggenC+RhQmkwvd5oQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_050745_290478_86932D2D 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Support sysupgrade on DIR-685
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPiBbMjAxOS0wNS0xNCAxMzox
Njo1MF06Cgo+IE9uIFR1ZSwgTWF5IDE0LCAyMDE5IGF0IDEwOjMwIEFNIFBldHIgxaB0ZXRpYXIg
PHluZXp6QHRydWUuY3o+IHdyb3RlOgo+IAo+ID4gTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVp
akBsaW5hcm8ub3JnPiBbMjAxOS0wNS0xMiAyMToxMzoxN106Cj4gCj4gPiA+ICtSRVFVSVJFX0lN
QUdFX01FVEFEQVRBPTEKPiA+Cj4gPiBvbmNlIHlvdSBzZXQgdGhpcywgeW91IGRvbid0IG5lZWQg
dG8gY2hlY2sgZm9yIHRoZSBpbWFnZSBtYWdpYywgZG8geW91PyBJZiBzbywKPiA+IHBsZWFzZSBw
cm92aWRlIHRoZSByZWFzb24gZm9yIHRoYXQuCj4gCj4gVGhlIGltYWdlIG1hZ2ljIGlzIG5lY2Vz
c2FyeSBmb3IgdGhlIGJvb3QgbG9hZGVyIHRvIHJlY29nbml6ZQo+IGFuZCBib290IHRoZSBpbWFn
ZS4gU2luY2UgZmxhc2hpbmcgYW4gaW1hZ2Ugd2l0aG91dCB0aGlzIG1hZ2ljCj4gd2lsbCBicmlj
ayB0aGUgZGV2aWNlLAoKYnJpY2tpbmcgdGhlIGRldmljZSBpcyBhIHN0cm9uZyB3b3JkaW5nLCBh
cyBicmljayBtZWFucywgdGhhdCB5b3UgY2FuJ3QgdXNlCmFueSByZWNvdmVyeSBtZXRob2QgYW5k
IHlvdSBwcm9iYWJseSBuZWVkIHNvbGRlcmluZyBpcm9uIGF0IGxlYXN0LiBJdCBzZWVtcyB0bwpt
ZSwgdGhhdCB5b3UgY2FuIGp1c3QgcmVuZGVyIHRoZSBkZXZpY2UgdW5ib290YWJsZSwgcmlnaHQ/
Cgo+IEkgZmVlbCBpdCBzaG91bGQgYmUgY2hlY2sgYXMgYSAiYmV0dGVyIHNhZmUgdGhhbiBzb3Jy
eSIgbWVhc3VyZSwgc28gd2UKPiBjYW5ub3QgdW5kZXIgYW55IGNpcmN1bXN0YW5jZXMgZmxhc2gg
c29tZXRoaW5nIHRoYXQgdGhlIHJvdXRlciBjYW5ub3QgYm9vdC4KCkkgdGhpbmssIHRoYXQgbWV0
YWRhdGEgYW5kIEpTT04gcGFyc2luZyBpcyB0YWQgbW9yZSBjb21wbGV4IGFuZCB0aHVzIG1vcmUK
YWR2YW5jZWQgdmFsaWRpdHkgY2hlY2tpbmcgdGhlbiB5b3VyIHByb3Bvc2VkIGZpcnN0IDQtYnl0
ZSBoZWFkZXIgY2hlY2suClJlYWxseSwgaG93IGNvdWxkIHlvdSBiZSBzdXJlLCB0aGF0IGFueSBv
ZiB0aGUgZm9sbG93aW5nIGJ5dGVzIHBhc3QgdGhpcwpoZWFkZXIgYXJlIHZhbGlkLCB0aHVzIHN0
aWxsIHdvbid0IHJlbmRlciBmbGFzaGVkIGRldmljZSB1bmJvb3RhYmxlLgoKPiBEbyB5b3Ugd2Fu
dCBtZSB0byBhZGQgdGhpcyB0byB0aGUgY29tbWl0IG1lc3NhZ2U/CgpJIHNlZSBubyBwb2ludCwg
cmVhbGx5LgoKPiBJbiB0aGVvcnkgeWVzIGJ1dCBpbiBzbyBtYW55IHByYWN0aWNhbCBzaXR1YXRp
b25zIEkgaGF2ZSBtdXR0ZXJlZCB0aGUgd29yZHMKPiAidGhhdCBzaG91bGQgbm90IGhhcHBlbiIg
YW5kIHRoYXQgaXMgd2h5IEkgZmVlbCBpdCBpcyBiZXR0ZXIgdG8gaGF2ZSBkb3VibGUKPiBzYWZl
dHkgY2hlY2tzLgoKSXQgbWFrZXMgbm8gc2Vuc2UgdG8gcHJldGVuZCBhbnkgc2FmZXR5IGhlcmUs
IGJvdGggc29sdXRpb25zICg0LWJ5dGUgaGVhZGVyCmNoZWNrLCB1bnNpZ25lZCBtZXRhZGF0YSkg
YXJlIGp1c3QgcG9vciBtYW4ncyB3b3JrYXJvdW5kcy4gU2hvdWxkIHlvdSBuZWVkIGFueQpzYWZl
dHksIHRoZW4gZW5mb3JjZSBvbmx5IHNpZ25lZCBpbWFnZXMgKG9yIGFkZCBzb21lIGZ1bmN0aW9u
YWxpdHkgdG8gbWV0YWRhdGEKaGFuZGxpbmcgd2hpY2ggY291bGQgY2hlY2sgaGFzaCBvZiBjb21w
bGV0ZSBpbWFnZSwgbm90IGp1c3QgNC1ieXRlIGhlYWRlcikuCgotLSB5bmV6egoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
