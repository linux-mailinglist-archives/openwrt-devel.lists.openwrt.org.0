Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3997180882
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 00:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9UOkTeP1XVR4uS9ZGcs+LxsGMkUPODojy4xAAwq6rXg=; b=QZIyDCnI+xQRzktImuBtolJ/9g
	SRWvvfqO+TVZlWsQMtmMmRnwRefgifmYqQlTavfp92xWRCsK0XudBRbwTqN0vIAOHU5sCSiHL19x2
	67wdSe318zx3zPu2GJd1K3OXpRM/isR9QHklgZq+wrZ1XVUy8Uyry7Aou07NYuExJlZGbFfLWy2zI
	i6RvCsYe+n0Vhp9cLg3eky4C9n0m9dXRFoXzPb5Na7tR31rFVbamA9yoG3hj4GFc3oUUHL3lUuKvF
	VgIS+5cEi6zRYi+XySQ+XmC2/Y/9xpyAyNHsuXPFtK81bbi0g4Uv0rASODHEyo86ByOZEUi3nVVOW
	aY8Tgl/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu2EU-0005Ib-Hi; Sat, 03 Aug 2019 22:10:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu2EK-0005IF-RP
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 22:10:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 696C13371;
 Sun,  4 Aug 2019 00:10:23 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4e18c0a6;
 Sun, 4 Aug 2019 00:10:16 +0200 (CEST)
Date: Sun, 4 Aug 2019 00:10:16 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: John Crispin <john@phrozen.org>
Message-ID: <20190803221016.GC12735@meh.true.cz>
References: <20190723133717.20010-1-ynezz@true.cz>
 <8646063f-e4eb-f32f-381e-6fa2a847d0f8@hauke-m.de>
 <4d6009e6-090b-c513-aaa1-919dcd21a162@iki.fi>
 <539D9517-E258-4906-978F-99241CCF11C4@darbyshire-bryant.me.uk>
 <30819471-510c-d5f8-be64-4f4c1b1cbaf0@softart-ge.com>
 <c1551aac-0f71-981d-ef01-d06e1e46fe9a@phrozen.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1551aac-0f71-981d-ef01-d06e1e46fe9a@phrozen.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_151025_040431_8A4BC63B 
X-CRM114-Status: UNSURE (   4.38  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: make USE_PROCD=1 default
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

John Crispin <john@phrozen.org> [2019-08-02 21:40:03]:

Hi,

> owrt is a linux system and thus should by default be able to run SYSV init
> style rc.d scripts.

fair enough, but USE_PROCD=1 is in fact almost default now, we don't even
consider new services without USE_PROCD=1 (if I didn't misread something
again).

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
