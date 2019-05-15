Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAF71FA37
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 20:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XL5NFHJalplAm1Kf8OLRkjCUIRyCONStCkyLeErlS9E=; b=CqllaDyzoDkXjbCVIICgVl+zV8
	bybmqI8LZcDTBCuw+rte8g0fPLHKRezoLzfIkOBB5TcJakalwfLE3bNIS5ZSIgnl7D8gSD23kGl5v
	AfNNHqRUL2UP5MtBt+6pM5zbutozDav6WncJb4GDVX1TIlj5fADzpbFfPAr+8PD/k5sxRYXC8vII+
	TOuhRs3oY2VsBgEb5VFl6oCTKw98LEi1ypK5JmUHYgtwiN1TPanF4wLcSncWHk8rdQQeB7Dms8NNl
	uiFbvhSbVNB1u/BLPWlEA5pa258tNVJsLFtsGYNQX6JRQA1aiIGw/6mj9twsIMkuxyf43mSDAgpiD
	wuAdv7Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyxy-0006aQ-1M; Wed, 15 May 2019 18:49:26 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyxq-0006HK-7y
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 18:49:19 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FIn7a5051555
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 20:49:07 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B57DD3A7B;
 Wed, 15 May 2019 20:49:05 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b67a18c9;
 Wed, 15 May 2019 20:49:04 +0200 (CEST)
Date: Wed, 15 May 2019 20:49:04 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Message-ID: <20190515184904.GA63920@meh.true.cz>
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-3-be.dissent@gmail.com>
 <20190515155935.GB4938@meh.true.cz>
 <CAEdN=pG5p=i2wVQ0uWxELKLep+pd2=1f_T58iq7kTt=aRgZRfA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEdN=pG5p=i2wVQ0uWxELKLep+pd2=1f_T58iq7kTt=aRgZRfA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_114918_596701_A842B436 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] ipq40xx: fix high resolution timer
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
Cc: openwrt-devel@lists.openwrt.org, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

0J/QsNCy0LXQuyA8YmUuZGlzc2VudEBnbWFpbC5jb20+IFsyMDE5LTA1LTE1IDIwOjMwOjA5XToK
Cj4gPiBTaG91bGRuJ3QgdGhpcyBnbyB0aHJvdWdoIHVwc3RyZWFtIGFzIHdlbGw/Cj4gPgo+IAo+
IEl0IHNob3VsZCwgYnV0IEknbSBub3QgdGhlIGF1dGhvci4KClRoaXMgaXMgbm90IGEgcHJvYmxl
bSBpZiB5b3Uga2VlcCBwcm9wZXIgYXV0aG9yc2hpcCAoRnJvbSBhbmQKU2lnbmVkLW9mZi1ieSku
CgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
