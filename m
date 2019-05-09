Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD565186F6
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 10:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ii6zAcFLySN2oy+neJ8fD3JH+kuZn8gt0VnNfOA2qc8=; b=I7Sg+mafwuvRAzyd1TZTD7jUkD
	o45CfYSa3/UkEJGQsYCfc1kIEO4YkfGkIKM8/dsgiTWDZR6a/iS0meqXrl6ZcNWQZAYPPmwAy81WO
	FoXN/KDnWNQQhXUHHAkyY5bMcnxFxB+KEWnWV/I8xJqIYtH38jCMZ5MYJi97g0PHMCErfiUBJ9lfR
	pZdhi7WDIuwt4+09SJsw5+3iQfVKdltkm+zTdm17KNym7fuQHzywOtCQvpCkGe/IlNUvvu/SN68+c
	X9gAKIqtIE/xFhlhCG13mwpYUVbRnQ/dQUA2jMt1Yi1QI+wyFVdStiEI6e/GtSAWh48KWCMgb0cF/
	JkuJASsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOeh6-0002ck-EE; Thu, 09 May 2019 08:46:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOeg6-0001cI-Ok
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 08:45:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6089C4852;
 Thu,  9 May 2019 10:45:19 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 0783b670;
 Thu, 9 May 2019 10:45:18 +0200 (CEST)
Date: Thu, 9 May 2019 10:45:18 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190509084518.GP81826@meh.true.cz>
References: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_014524_373295_16AD48B5 
X-CRM114-Status: UNSURE (   4.42  )
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
Subject: Re: [OpenWrt-Devel] Build system puzzles: PCI_SUPPORT not being set
 for subtarget
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jeff Kletsky <lede@allycomm.com> [2019-05-09 10:29:31]:

Hi,

> I'm having some challenges understanding why PCI_SUPPORT is being set
> for the "generic" target, but not being set for the "nand" subtarget.

perhaps because nobody is using this nand subtarget, so nobody has noticed and
fixed it yet.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
