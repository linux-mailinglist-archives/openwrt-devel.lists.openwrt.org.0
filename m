Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5429A2B58F
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 14:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JETFMVo9R7Y/WB8y7MnR+FYQC5Cq8esDO5pHo9wOnQs=; b=YY4TRONwVxxvjfQUSD0dwJR31Z
	BdOxfzGGVaw5WNpHNnHcypmaPpr1F+EU1r1kEOsqC4ACfUHl6nYGRomaZs6JXPwiLOw9ypq4cK7zJ
	BDN3allSNpqMFYUEGAbbrk7tMpbUP6cygOXD/TQVc11YBnw9qqCv9Te5Ctnu9yRnCknrLg38WWoam
	WrL6MLNTPKJr9y9ST5TBMO+XlMW8Dd8T/IOKoBRqt4NUTGYonRFrmUWjzaRT0Dkxncb096bxbk1A6
	G+/r3VDVP9wZBLEQ9xWis3lMOX/vUGpc52vvwuPioCNq8cXk8cTejK9E/Dnh8XLfYygzamfMfQtrA
	YRextpkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEx1-0000Ph-2f; Mon, 27 May 2019 12:42:03 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEwt-0000PM-Ch
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 12:41:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0A0DC3F91;
 Mon, 27 May 2019 14:41:52 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 7bd5d8bf;
 Mon, 27 May 2019 14:41:50 +0200 (CEST)
Date: Mon, 27 May 2019 14:41:50 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190527124150.GH50588@meh.true.cz>
References: <20190527093329.4144-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527093329.4144-1-mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_054155_584594_77E59509 
X-CRM114-Status: UNSURE (   5.35  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH v2] procd: add docker support
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

UGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPiBbMjAxOS0wNS0yNyAxMTozMzoyOV06Cgo+
IGRldGVjdHMgaWYgcnVubmluZyBpbiBhIGRvY2tlciBjb250YWluZXIsIHdoaWNoIHRoZW4gcmVx
dWlyZXMgc3BlY2lhbAo+IHRyZWF0bWVudCBvZiBtb3VudHMuIE9wZW5XcnQgd2l0aGluIERvY2tl
ciBpcyB1c2VmdWwgZm9yIENJIHRlc3RpbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGF1bCBTcG9v
cmVuIDxtYWlsQGFwYXJjYXIub3JnPgoKSW4gY2FzZSBzb21lb25lIHdvdWxkIGxpa2UgdG8gdGFr
ZSB0aGlzIHRvZ2V0aGVyIHdpdGggc29tZSBvdGhlciBwcm9jZApjaGFuZ2VzL3BhdGNoZXM6Cgog
QWNrZWQtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+CgotLSB5bmV6egoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
