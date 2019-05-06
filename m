Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB6D1457D
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 09:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YuIZ02cg3hWGSXkt6m+6p9dXAvPHOxIdWHSLGxcTKfY=; b=kZo5ISsBJoDlplTkzldtuHyz9y
	OuK/NqFjpUR/6QyFXjOpZ3hGwDn6FW67UNYVx4RuTKJxDFv4EdahgqgfOhPkNFIZwgZHTEPhpT5sn
	j00m8iEnX7IBJsnxM2W+ZNi25Kf7aOw9fYsoxjfeuLzC5PAVZNHMharxjagmhaVKe5DMuZYzTHKpS
	s+f3+EkeNsZ8IsyHd+YHWTJ7O9ZUfIHs/26glzIaIjnNou+yIWq81lfVn22g7La2SxBNyZV8X8J9L
	H7x8IUywrPpEdYeV9764Y7qaALHeYCZvAcVzZsshaiVAeUGDLQvrs/YfVtFFHDOD4BV5bN9w4KxSA
	gMGQvNuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYIa-0005T8-5z; Mon, 06 May 2019 07:44:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYIS-0005Rh-06
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 07:44:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A0CC14F08;
 Mon,  6 May 2019 09:44:20 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 60d835ac;
 Mon, 6 May 2019 09:44:19 +0200 (CEST)
Date: Mon, 6 May 2019 09:44:19 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190506074419.GF81826@meh.true.cz>
References: <20190501170810.5230-1-rosenp@gmail.com>
 <20190503115015.GA71477@meh.true.cz>
 <CAKxU2N_kouAC4fhpnw9J+uSeZVE=QdrDcnTmQ45Xk7-aK3iVqA@mail.gmail.com>
 <1557095059.1591.0@smtp.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557095059.1591.0@smtp.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_004424_196029_709EB3DB 
X-CRM114-Status: UNSURE (   7.15  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] nftables: Fix compilation with uClibc-ng
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IFsyMDE5LTA1LTA1IDE1OjI0OjE5XToKCj4g
T24gRnJpLCBNYXkgMywgMjAxOSBhdCAxMTo0OSBBTSwgUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFp
bC5jb20+IHdyb3RlOgo+ID4gT24gRnJpLCBNYXkgMywgMjAxOSBhdCA0OjUwIEFNIFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+ID4gPiAKPiA+ID4gIFJvc2VuIFBlbmV2IDxy
b3NlbnBAZ21haWwuY29tPiBbMjAxOS0wNS0wMSAxMDowODoxMF06Cj4gPiA+IAo+ID4gPiAgSGks
Cj4gPiA+IAo+ID4gPiAgPiBNaXNzaW5nIGhlYWRlciBmb3IgdmFfbGlzdC4KPiA+ID4gCj4gPiA+
ICBzaG91bGRuJ3QgdGhpcyBnbyB0aHJvdWdoIHVwc3RyZWFtIGZpcnN0PyBUaGFua3MuCj4gPiBT
ZW50Cj4gVGhpcyB3YXMgYXBwbGllZCB1cHN0cmVhbS4KCk5pY2UsIHRoYW5rcy4gSSd2ZSB1cGRh
dGVkIHRoZSBjb250ZW50IG9mIHRoZSBwYXRjaCB0byBtYXRjaCB0aGF0IGluIHVwc3RyZWFtCmFu
ZCBtZXJnZWQgdGhhdCBpbnRvIG15IHN0YWdpbmcgdHJlZS4KCjEuIGh0dHBzOi8vZ2l0Lm9wZW53
cnQub3JnLzllZmM2YWQxOTUKCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
