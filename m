Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9401714F028
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b8pA+CkyG71kB+N+D9iRv3N/a6KZhomwV+L89tU6tN8=; b=BRouIKdUNuMc7wApqpMQNK7ZzD
	Wky92zhIoM3YRfhAnoDR5hCEpkQVFgkhphve/sqhXEe9gK1IQtKS21ld/bEJYtGLWDmhWMygYcXoy
	l+9x9wsclgAz4aTG+jS7sf0Sjs3Dq64p1KLovPOmvdqWLd+icthFoTJGmImKEkHMIKrn8DnLqfH76
	OUKXo23qblyVCo5XFfKjV/8NYzoePaxjJu/sV1MjqvdDQV3KmwhesdPXYcxzccZYuvui89CS4yyK+
	uDdPg/NbjwznEx0ReEHNDJCvYUGpyrPhhdgvZrbZ8d8FVtlgeRBhzPSTc2glE1tsaLa8YSQTUiSDK
	dB+rtBUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYah-0001ki-PB; Fri, 31 Jan 2020 15:52:19 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYaX-0001kO-QQ
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:52:11 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 587F037B8;
 Fri, 31 Jan 2020 16:52:07 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id e2953483;
 Fri, 31 Jan 2020 16:51:55 +0100 (CET)
Date: Fri, 31 Jan 2020 16:51:54 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200131155154.GA85707@meh.true.cz>
References: <20200129162210.GA78186@meh.true.cz>
 <81451FC6-CB4C-4A43-87B0-50BCF581678E@gmail.com>
 <CAKxU2N87DQ-Zat0vmSU4iKgcR32t2L-v0_4WLQSvjyg9ZoFySA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N87DQ-Zat0vmSU4iKgcR32t2L-v0_4WLQSvjyg9ZoFySA@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_075210_006743_75EB87A2 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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
 =?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2020-01-29 20:39:57]:

Hi,

> On kernel.org, the ralink_soc variable is only used in arch/mips ,
> mainly under the ralink subdirectory.

correct, but your proposed patch can't be accepted as it is. You need to
handle only 0x0101 and 0x0103 cases, thus putting content of the register into
some variable and use switch/case to make the decision.

Then you're going to replace the 0x0101 and 0x0103 magic numbers with some
meaningful constants which would be perhaps very similar to the ralink_soc
ones, so in the end doing the same, but differently.

Anyway, both approaches are fine with me, do whatever you prefer.

> I don't think it should be used for the switch driver.

FYI we're talking here about a source file under ramips target, it's not in
the generic directory so it's unlikely, that it would be used in other
targets, that's why I've suggested ralink_soc as the simplest solution.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
