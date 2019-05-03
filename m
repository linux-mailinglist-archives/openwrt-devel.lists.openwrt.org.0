Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D21133C2
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 20:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AZYt84dd6M0SugExX5MgEoajzS5yuTbgblefU3sb7yA=; b=eHC2VsDH7lNJyWR224jp5v3WmY
	Ylu9USVDxvKZ62Yn4uOrHzecYu5v7wQCrsYHFY76LBXXgAW07maeQtEC4j1NhUrPu82p9as0ppeZc
	9MwsSmCaXYDOFHDu4TxgBqr1fQn5+UPBhKYNnBMTSrx6NCcFfNoYQwqn9ew4qGYRf6aQxZhyw2gIH
	TwbRQsa5Q5+Ee3QryrGkMV63nObkYdniRyYX5S2Ikmp3m6qFjXC/w0fCkqeuKbhtgDW08QM4NjcLG
	KPn4gc6knAbAGPpQ4lknSq2bB2eigwX7qvOTKa2OCv2OtKC3swiZEWEqAvHE9S3nLz6fH/0Bfkhf/
	xWRm2/iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdLe-0005FO-5U; Fri, 03 May 2019 18:55:54 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdLV-0005Ev-Rk
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 18:55:47 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 844B14FF0;
 Fri,  3 May 2019 20:55:43 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 3f1df826;
 Fri, 3 May 2019 20:55:42 +0200 (CEST)
Date: Fri, 3 May 2019 20:55:41 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190503185541.GG71477@meh.true.cz>
References: <20190501170445.4607-1-rosenp@gmail.com>
 <20190503171748.GA3101@meh.true.cz>
 <10C80B0A-E4F7-4619-85BE-B78580C58148@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10C80B0A-E4F7-4619-85BE-B78580C58148@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_115546_051875_E56E88F2 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] libbsd: Fix compilation under ARC
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

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IFsyMDE5LTA1LTAzIDEwOjQ5OjU0XToKCj4g
PiBPbiBNYXkgMywgMjAxOSwgYXQgMTA6MTcsIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+
IHdyb3RlOgo+ID4gCj4gPiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4gWzIwMTktMDUt
MDEgMTA6MDQ6NDVdOgo+ID4gCj4gPj4gVGhlIDggeWVhciBvbGQgZmlsZSBkb2VzIG5vdCBoYXZl
IGFueSBBUkMgZGVmaW5pdGlvbnMuCj4gPiAKPiA+IEknbSB3b25kZXJpbmcgaWYgd2UgbmVlZCB0
byBjYXJ5IGFub3RoZXIgcGF0Y2ggZm9yZXZlciwgdGh1cyBpZiBpdCB3b3VsZG4ndCBiZQo+ID4g
YmV0dGVyIHRvIGJhY2twb3J0IHVwc3RyZWFtZWQgcGF0Y2ggYW5kL29yIGJ1bXAgdG8gZml4ZWQg
dXBzdHJlYW0gdmVyc2lvbi4KPgo+IEFzIEkgc2FpZC4gVGhpcyBmaWxlIGhhcyBub3QgYmVlbiB0
b3VjaGVkIGluIDggeWVhcnMuIFVwc3RyZWFtIGFsc28gc2VlbXMgcmVsYXRpdmVseSBkZWFkLgoK
QWNjb3JkaW5nIHRvIHRoaXMgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2xpYmJzZC9s
aWJic2QgaXQgZG9lc24ndCBzZWVtCnRoYXQgbXVjaCBkZWFkIHRvIG1lLCBhcyBJIHdvdWxkbid0
IGV4cGVjdCB0aGF0IG11Y2ggY2hhbmdlcyBpbiBzdWNoIGNvbXBhdApsaWJyYXJ5IGFueXdheS4K
Ci0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
