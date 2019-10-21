Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D4EDED0A
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 15:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a6mTs+A9i/qaeupk3GWNmPd+TCT76KbTM+9dc9egCeg=; b=qEYxIzsrmBF2cOm6YgzCV5ieZR
	jUoyfXIEKF/IEPzuinzgyJtKc44IVKvmuD4DN7TqxEoh4gGD+jfl+T2BZfpOf6HkJB0EwrGSn92dM
	RL9OKtS96gEmV8EFLo2qlZeoTDwwYsH9JDu11/hwYfrYCAzL2j5oPnFqLlu5RquSvPSkgWrlr2tUD
	NQV2HgTs/IGgm7+05XJTMyfSJ2DF5BzH4Xsp5ryztx01Ur7TnUGkBhdq3H5b50N+OIN/8Lh+W2+0w
	wscut47QLKEDRBrFase0Gt8REGqCUZnVeqvC/EYXNSLpaH1XNVIiyb+D/fngVyhQxAbbxj6vc6QPI
	wo8vBdfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXLN-0006AR-8w; Mon, 21 Oct 2019 13:03:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXL9-00068y-Iz
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 13:03:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3679B3FE0;
 Mon, 21 Oct 2019 15:03:14 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5daf0424;
 Mon, 21 Oct 2019 15:03:04 +0200 (CEST)
Date: Mon, 21 Oct 2019 15:03:04 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?QW5kcsOp?= Valentin <avalentin@marcant.net>
Message-ID: <20191021130304.GE52694@meh.true.cz>
References: <20191021123214.2252-1-avalentin@marcant.net>
 <20191021123214.2252-6-avalentin@marcant.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021123214.2252-6-avalentin@marcant.net>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_060315_780086_AABFA85F 
X-CRM114-Status: UNSURE (   4.68  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 5/5] ath79/zyxel_nbg6716: add macs from
 uboot-env partition
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

QW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+IFsyMDE5LTEwLTIxIDE0OjMy
OjE0XToKCj4gU3dpdGNoIE5CRzY3MTYgdG8gdXNlIHRoZSBuZXcgbXRkIG1hYyBwYXJzZXIgZm9y
IHUtYm9vdCBlbnYuCgouLi4KCj4gIAl3aWZpQDAsMCB7Cj4gIAkJY29tcGF0aWJsZSA9ICJxY29t
LGF0aDEwayI7Cj4gIAkJcmVnID0gPDAgMCAwIDAgMD47CgouLi4KCj4gKwkJcWNvbSxhdGgxMGst
Y2FsaWJyYXRpb24tdmFyaWFudCA9ICJaeVhFTC1OQkc2NzE2IjsKCnRoaXMgZG9lc24ndCBtYXRj
aCBjb21taXQgdGl0bGUgYW5kL29yIGNvbW1pdCBkZXNjcmlwdGlvbi4KCi0tIHluZXp6CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
