Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161177E334
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 21:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yTBCow3zQgqvgCB6wTOYFf0NsznvtmZfYewxc82I3Lo=; b=AtdZ1C7pF+ZMruaGC9mybe64wH
	mwHMa6QRR5qfhisl55IUyBqokVSVbq30dfSAPyTsk0RLXZWGwQvp+IsVkwDiHAdrXtLrrU2icIuzc
	qkLgPE3s137mmrkVJRrmSfXDwP1b7EG+/wredP4knBvlY0JQ1sUrrH+BDzHMIyysvhGs6Kln3ti6r
	+i1XimLICGm+NBLbLffA2RH6T0igqkeYQGbbcKgjQWbgPU20B03CaBZ9y4sX1JeqTapz8yrDfhhpl
	HykQoFDThz+iyV4S7v6dodfiRUleDpVqQN3Mm6vbgvzhfgLMnsEksxL1IM97QEg7pFAfbeZPH6uck
	r36EKX3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htGZ2-0005dn-0n; Thu, 01 Aug 2019 19:16:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htGYw-0005d9-9N
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 19:16:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6F68045E8;
 Thu,  1 Aug 2019 21:16:26 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 08188bed;
 Thu, 1 Aug 2019 21:16:19 +0200 (CEST)
Date: Thu, 1 Aug 2019 21:16:19 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeffery To <jeffery.to@gmail.com>
Message-ID: <20190801191619.GN74752@meh.true.cz>
References: <CAJXyS=g12DcdYsUMoSOMTY6oDJrd8K+M6_Bp15fK0-dAJ3x-Zg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJXyS=g12DcdYsUMoSOMTY6oDJrd8K+M6_Bp15fK0-dAJ3x-Zg@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_121630_479137_79C8601E 
X-CRM114-Status: UNSURE (   3.91  )
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
Subject: Re: [OpenWrt-Devel] Cryptodev-linux compile error with armvirt-64
 sdk
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

Jeffery To <jeffery.to@gmail.com> [2019-08-02 02:04:23]:

Hi,

> I believe this started after a459d237 (this added CONFIG_ARM64_MODULE_PLTS=y

that config symbol is selected by ARM64_ERRATUM_843419 ("Cortex-A53: 843419: A
load or store might access an incorrect address"), so probably the fix would
be to bundle that linker script into SDK (target/sdk/Makefile).

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
