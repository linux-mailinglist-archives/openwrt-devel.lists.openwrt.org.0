Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D6EF9720
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 18:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=evvMPonG7M9O9Af2sUZDOJ5XZYFLlg45tjiRdS3jo58=; b=RYHQH7+Db3584jF0pUYyHkhecX
	g6RsksbIRzNdDvXVu8/jo2SPbQX5+EHtmlNfhim2Bw2FngPMh75j7XKBAWxlPa6qlYWNZtGo9rgcQ
	OtLwve+ROGfMngxQ/3qNgMR0AWVT2X2H6xsMD3V5eFT4qopggCRgOPHnBlea42GmKoTBsJCYVnZDg
	9MpkECEkfSGh7QDplP3cwO/ovU1VTtP3tKixJMNiqqtiL3l/E48AOE1Z8IXsMI2FJIxqLpyCSkLSQ
	8oxx3uQ6/u18R+lG0MxjdkQTSWEuL0IIy8Jgo0FCLzQTUwAqTfge3gsbTfR5GThFaGXRe5lzLlq1j
	tB6Aypxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUa16-0007a4-Aj; Tue, 12 Nov 2019 17:31:48 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUa10-0007Zl-Ag
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 17:31:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A5D01385F;
 Tue, 12 Nov 2019 18:31:38 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4ef5dbbb;
 Tue, 12 Nov 2019 18:31:28 +0100 (CET)
Date: Tue, 12 Nov 2019 18:31:28 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191112173128.GA86047@meh.true.cz>
References: <20191112081625.27695-1-ynezz@true.cz>
 <CAECwjAjN3938FFjc3KJ2pQ=KP66EKD3s4RiWzW50LLZ+RiDrBQ@mail.gmail.com>
 <20191112091227.GB71646@meh.true.cz>
 <CAECwjAizD_AWQotEwG2QtHfJzxH9dveDbBEtrcjSvxG6rOSRPA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAizD_AWQotEwG2QtHfJzxH9dveDbBEtrcjSvxG6rOSRPA@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_093142_513125_837B484A 
X-CRM114-Status: UNSURE (   6.01  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] build: make GCC version 6+ minimal host
 build requirement
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Yousong Zhou <yszhou4tech@gmail.com> [2019-11-12 18:37:21]:

> I tried for a few times with packages provided by SoftwareCollections.org,
> but it's definitely not "straightforward" enough in my opinion.

I tried to install developer toolset version 8 in CentOS 7 Docker container in
order to triage the same compile failure happening with GCC 8.3[1] and it
simply worked as advertised, I was able to use GCC 8.3 on CentOS 7 just fine.

> Note that we are talking about host build with host toolchain whose input we
> control and whose product only runs on the host itself at build times.

Note that fwtool is just a tip of the iceberg, reminder, that we're still
supporting archaic compiler versions. Just imagine tools/firmware-utils with
-Wextra as the next step...

1. https://github.com/openwrt/openwrt/commit/4ba8f7b1ef1e4c0607185a41c06b51928c625d8b#commitcomment-35914043

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
