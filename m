Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B891EB71
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 11:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZNKlL7kMz4IPHD3QHzUTu6mzky3yYKVw9knyHZBZG1Y=; b=Pj47UYUYlH7WXozOWbI2w1BT7h
	gcsmr035DKU77CGNYImplT+tVOahpTUu3B7esjcG7XaP46wAoYTDD7KNbBt3T3C/EhG0CuxBzrcNr
	cB19D3KzNKh67JsmTjXUhb5eclWf1kkPDECw6TgAtvas8SFgwLzUmP4IeeyexxkheQZe3mQD3Ce1m
	qU/VHtJMoDxnwdVWYCAoZorH090vyXz51PV+LYyuTgHR97vctwFIhNI+Qmcs/vX0/vKRD8FgqAR6g
	p6xwTXO1Bch8EQMuvWEv9EByqNXUXueznOnD4I7Lg4eP0wlF/zBda6sx2mqN+Yf0+Q1ubwcwbQX77
	TNQK5reA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqZt-0004jM-SU; Wed, 15 May 2019 09:52:01 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqZm-0004dn-CN
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 09:51:56 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4F9pm80021572
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 11:51:49 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AD6514405;
 Wed, 15 May 2019 11:51:45 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id f692dcc7;
 Wed, 15 May 2019 11:51:44 +0200 (CEST)
Date: Wed, 15 May 2019 11:51:44 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Val Kulkov <val.kulkov@gmail.com>
Message-ID: <20190515095144.GK93050@meh.true.cz>
References: <CABFXWOCfLLjun5miiPUV6Chx2L90S+fuPWB0bVzwt=Xt43_NQA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABFXWOCfLLjun5miiPUV6Chx2L90S+fuPWB0bVzwt=Xt43_NQA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_025154_739753_97C2C971 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: block: make extroot mount
 preparation more robust
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Val Kulkov <val.kulkov@gmail.com> [2019-05-14 17:03:11]:

> The patch was proposed last month by Kenneth Miller [1]. It enables
> extroot on x86_64-based devices. I confirm that the patch does what it
> claims. The issue with extroot on x86_64 devices is described in
> FS#2231 [2].

Then you should reply to that email[1] with your `Tested-by` tag[3], so the
potential reviewer knows, that it has been actually tested and that there's
some interest to get this fixed and merged.

> Any possibility to see this patch in the trunk any time soon?

You know, day has just 42 hours :-)

> [1] http://lists.infradead.org/pipermail/openwrt-devel/2019-April/016654.html
> [2] https://bugs.openwrt.org/index.php?do=details&task_id=2231
[3] https://www.kernel.org/doc/html/latest/process/submitting-patches.html#using-reported-by-tested-by-reviewed-by-suggested-by-and-fixes

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
