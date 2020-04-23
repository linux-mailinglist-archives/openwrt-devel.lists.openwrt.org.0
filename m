Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1001B5766
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 10:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yQSMzThqCj5/1iYlKNgnTpKwJUXNdYjfpV08/N51IdA=; b=b2PYa+9qsUKelvgfA/7rHGQcDY
	WKjN66xXSClbsoawKCcc5muqZwgcDaJEVoUV5HM6GM7sZspU6dWJmyMBot3uqzPhmlg6YP9tJ2jd1
	W6m1DBFyCqEGQSO+6MhHmILmMCe9jEWEuC2/e5SCvDgd49g6R8L+k4Vt6d4qQL171d7WRo5y1TcVF
	Pyo9Dww98SpH39z/vXhR4YrbN+VHTVbQMrMR2Q6OIxlBvD1zfxOrlXWUGIF1E7jwhcmp7ZhLPyjgo
	JvYJbfviSfJ4RxLUn387BM87WkriytLwNOACsSk7MOLVQcLOR9hW6bTb6Ya2dB/2WJ5Be+fbIePIj
	buIJFMbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRXQI-0002oG-7S; Thu, 23 Apr 2020 08:41:30 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRXQA-0002lX-Vu
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 08:41:24 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CC0AA3742;
 Thu, 23 Apr 2020 10:41:15 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8f7a8345;
 Thu, 23 Apr 2020 10:41:01 +0200 (CEST)
Date: Thu, 23 Apr 2020 10:41:00 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel =?utf-8?B?R29uesOhbGV6?= Cabanelas <dgcbueu@gmail.com>
Message-ID: <20200423084100.GA76955@meh.true.cz>
References: <2247807.iZASKD2KPV@tool>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2247807.iZASKD2KPV@tool>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_014123_176380_F256E532 
X-CRM114-Status: UNSURE (   3.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] kernel: add package
 linkstation-poweroff driver
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RGFuaWVsIEdvbnrDoWxleiBDYWJhbmVsYXMgPGRnY2J1ZXVAZ21haWwuY29tPiBbMjAyMC0wNC0y
MiAyMzo0MTo1Nl06CgpIaSwKCj4gVGhpcyBwYWNrYWdlIGFkZHMgdGhlIGRyaXZlciBmb3IgaW1w
bGVtZW50aW5nIHRoaXMgZnVuY3Rpb24uCgpJIGZhaWwgdG8gc2VlIGhvdyBpcyB0aGlzIGRyaXZl
ciBPcGVuV3J0IHNwZWNpZmljLCB3aHkgdGhlIGRyaXZlciBzaG91bGQgYmUKbWFpbnRhaW5lZCBi
eSBPcGVuV3J0LiBJbiBvdGhlciB3b3JkcywgcGxlYXNlIGZpeCB0aGlzIHVwc3RyZWFtIGFuZCB0
aGVuIGp1c3QKYmFja3BvcnQgdGhlIGZpeGVzIGhlcmUsIHRoYW5rcy4KCi0tIHluZXp6CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
