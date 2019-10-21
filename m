Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F76DE9F6
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 12:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vPlbEakEIXtlpYWkzmYiHXwQo+JhFHEgmGYt6tySHow=; b=oWl0vgvRKFzHQ9gYR4YYaalloN
	RnLXZbQHCHculSEVpyVxhKu1vfcSVzLs+4cQOgAHKfiL2OnL+MljhI6ZLUCga62uGFgNGPbtEoJ2V
	LQZFDlDG+CjAji+tyaMhJq/KAGv/0+5fEA72jfpb3cO5kDfWXz190ir0nztZjEYonxFG0pLeMC5GX
	HouczhjgjnmyF4Plg/zgLqnaTzluqN1bE0etvHHHXGAEyYzb5wpy0Hpe+/l2XaFS6xOGeLU9V2CdZ
	+NbTwe/jZfPdJFwmF2yiSrYV8nD1kKSXIxi5LziJnRaQ71Sab1RIYzKJ4mbgqbo52kptiMpmK3NNN
	xpX8UajA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVAy-0002IK-0P; Mon, 21 Oct 2019 10:44:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVAg-00029n-LQ
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 10:44:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 50536389A;
 Mon, 21 Oct 2019 12:44:15 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b5b2d1b2;
 Mon, 21 Oct 2019 12:44:05 +0200 (CEST)
Date: Mon, 21 Oct 2019 12:44:05 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191021104405.GC52694@meh.true.cz>
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021061031.81230-1-yszhou4tech@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_034418_861551_02D37702 
X-CRM114-Status: UNSURE (   4.60  )
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
Subject: Re: [OpenWrt-Devel] [PATCH rpcd v2 0/6] memory issue fixes
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
Cc: openwrt-devel@lists.openwrt.org, jo@mein.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Yousong Zhou <yszhou4tech@gmail.com> [2019-10-21 06:10:25]:

Hi,

> Yousong Zhou (6):

seems like two patches didn't made it to the mailing list and/or patchwork.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
