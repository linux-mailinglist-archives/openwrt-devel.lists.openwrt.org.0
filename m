Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F731761D2
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 19:04:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFZMyiY5WdDRq5VYwgHzbscmH+yzHKvtmhZlxOmUJsw=; b=NRj0E0SkD1vUKj
	NwmFZOOwGXymoGjbDVAl1o2HUZ205q85dIQaiOjIdk8UIZLA4BOnTHKReEGHJkV004SWyTg+Ki0hz
	5ozZAJXA+2WiUfPuHpyKqrf/d+mAAfxYFpTYePraBrP6S7tdgoqbK1OBncBZ9bWGXWelbwAMw525Q
	Qapq02vTz3CKYvGxmMFuClRQMUqoFNm4AgnQlqk0LKw1HXB0mZf49wDtPwnT7c7HLMdl5zV8oSGcq
	InQFmDmA6hvGp2odf6b5biMaOT0dEWqHzUxgeJAlB0N+2rrMNhmmy65O7Dc5k17srrF9wXktwTY7D
	K5uCm8kAXjc5JYjkKF0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pQM-0000Tc-JM; Mon, 02 Mar 2020 18:04:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pQH-0000Sb-3A
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 18:04:10 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4D2E84171;
 Mon,  2 Mar 2020 19:04:06 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a7e8bf69;
 Mon, 2 Mar 2020 19:03:53 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Mar 2020 18:42:56 +0100
Message-Id: <20200302174256.3238-3-ynezz@true.cz>
In-Reply-To: <20200302174256.3238-1-ynezz@true.cz>
References: <20200302174256.3238-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100409_291532_870F1B9B 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/3] imx6: apalis: move set_blkcnt variable
 into recovery script
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSd2ZSBhZGRlZCBgc2V0X2Jsa2NudGAgZW52aXJvbm1lbnQgdmFyaWFibGUgd2hpY2ggaXMgbmVl
ZGVkIGZvciBldmVyeQpgbW1jIHdyaXRlYCBjb21tYW5kIGFzIHdlIG5lZWQgdG8gYWx3YXlzIHNw
ZWNpZnkgc2l6ZSBpbiBibG9jayBjb3VudC4KClRoYXQgYHNldF9ibGtjbnRgIHZhcmlhYmxlIHdh
cyBwcmV2aW91c2x5IHByZXNlbnQgaW4gdGhlIFUtQm9vdCdzCmRlZmF1bHQgZW52aXJvbm1lbnQs
IGJ1dCB0aGF0IG5lZWRlZCBwYXRjaGluZyBVLUJvb3QgZXZlcnkgdGltZSwgc28gdGhhdApwYXRj
aCB3YXMgZHJvcHBlZCB3aXRoIDIwMjAuMDEgdmVyc2lvbiBidW1wLgoKU2lnbmVkLW9mZi1ieTog
UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0YXJnZXQvbGludXgvaW14Ni9pbWFn
ZS9yZWNvdmVyeS1hcGFsaXMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoK
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9pbXg2L2ltYWdlL3JlY292ZXJ5LWFwYWxpcyBiL3Rh
cmdldC9saW51eC9pbXg2L2ltYWdlL3JlY292ZXJ5LWFwYWxpcwppbmRleCBjMWM1YTNmNWQ2MmYu
LmQ3NWI5NTQzNDU4NyAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2lteDYvaW1hZ2UvcmVjb3Zl
cnktYXBhbGlzCisrKyBiL3RhcmdldC9saW51eC9pbXg2L2ltYWdlL3JlY292ZXJ5LWFwYWxpcwpA
QCAtNCw2ICs0LDcgQEAgbW1jIGRldiAwIDEKIG1tYyB3cml0ZSAweDEyMTAwMDAwIDB4MiAweDgw
MAogCiAjIGZsYXNoIG9wZW53cnQtaW14Ni1hcGFsaXMtc3F1YXNoZnMuY29tYmluZWQuYmluCitz
ZXRlbnYgc2V0X2Jsa2NudCAnc2V0ZXhwciBibGtjbnQgJHtmaWxlc2l6ZX0gKyAweDFmZiAmJiBz
ZXRleHByIGJsa2NudCAke2Jsa2NudH0gLyAweDIwMCcKIHJ1biBzZXRfYmxrY250CiBtbWMgZGV2
IDAgMAogbW1jIHdyaXRlIDB4MTI1MDAwMDAgMCAke2Jsa2NudH0KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
