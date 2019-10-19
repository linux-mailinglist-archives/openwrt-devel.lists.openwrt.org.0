Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C26BDD6B8
	for <lists+openwrt-devel@lfdr.de>; Sat, 19 Oct 2019 07:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c5fDQwMUiF33IPF99mrFazmWAJ/+X98LG2qmrsW/OyQ=; b=Ssp7tCYTQ8zEV3J+ikMSI59fmv
	s0QPmwJtDhRE2qghdlAmJ3DME+iU59Nj7TisoZJ1YEMUiWlFYIq1Tk8qoNVW+mcL7THOK1WugTo0A
	G4KUc0GpX8vIigTMdGDQaOD/Gps1as2O2wQdGAEfHQEX62wzZ8PB1ZkdgaFYu5rb65zM0lSk+XBPY
	k4UFu20902oFWydou3YSeyuZkk2DLiDgJFy2GRgQEOb/LPGNhIOt+3sajVLD9b3zSdkAQZQLXDlzo
	Sm9pwGWy2lS/IcDjujCLC3Ywk6kGk2wxehaYf+ZC4D8A8ABCVucuDaDDvQ9HGyVf7vTGe6RlfDCQA
	9OEa6Gbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLgsW-0007H9-Ey; Sat, 19 Oct 2019 05:02:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLgsO-0007GS-DS
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 05:02:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C8B2A38AD;
 Sat, 19 Oct 2019 07:01:59 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 892a2399;
 Sat, 19 Oct 2019 07:01:49 +0200 (CEST)
Date: Sat, 19 Oct 2019 07:01:49 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191019050149.GB52694@meh.true.cz>
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
 <f5a36ecd-123a-dcfc-a923-42e3d10e0645@wwsnet.net>
 <CAECwjAivYh3Rs_N6hzfzyXyZ7w_MT0oOnSLN6ZHJ2D+Zw5aSkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAivYh3Rs_N6hzfzyXyZ7w_MT0oOnSLN6ZHJ2D+Zw5aSkw@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_220204_602260_5B78FF8C 
X-CRM114-Status: UNSURE (   5.17  )
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
Subject: [OpenWrt-Devel] rpcd memory leaks [Was: Re: OpenWrt 19.07 release
 schedule ?]
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Yousong Zhou <yszhou4tech@gmail.com> [2019-10-19 12:11:08]:

Hi,

> > * rpcd leaks memory
> 
> I will give this a try and see how many leaks I can uncover in the weekend.

great! BTW that release blocking one might be already fixed, just guessing from this IRC discussion:

 < jow> Hauke: the leak in rpcd can be easily provoked by running something like   while true; do ubus call iwinfo info '{ "device": "radio0" }'; done
 < jow> Hauke: it has been (inadvertently) fixed by https://git.openwrt.org/?p=project/iwinfo.git;a=commitdiff;h=a29b7d4e26a8d97e48c2a899dda3665d385b95db
 < jow> Hauke: didn't yet check if 18.06 is affected

Nonetheless scan-build from clang version 9 reports some issues[1], as there
are no valgrind CI tests yet, I'm unsure if those are false positives.

1. https://ynezz.gitlab.io/-/openwrt-rpcd/-/jobs/323420230/artifacts/build/scan/2019-10-17-075741-163-1/index.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
