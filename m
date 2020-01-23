Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BB5146496
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 10:28:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=22Khmi98Xrj5AbEfjmxmmjdkEhEnslwdTeSkORNikC4=; b=UutmSsPq+5kGKuZ17lgqO8hKGu
	pz+on12B9Y9mMndwTOWhqEbgCDPV9fm3HPNxCOlDPsgcOSEz4apPRtEWL9KTV8rdkZuySBYrhgdlD
	+8REr21MVD2ngWslJ4XpBg9LZU9M/dy0CQ7H1AKkhb1l0rcLkX1EY3dEcHWd6ZoPbkKLtHmF6wLxo
	7CNWTxWaKorVRtFe6YFFAAoXwglWp2EYgWx9VDX70ah5/C7lEdjjNdWNSzsRI5EEd0+/GtbT/jjWE
	EEhDCoTcCu85sDCcn7NdSu0pkysik1ciL1gmgvTax3cYWa/LN3/f2MjQtM7DStocnfQ4APxG85wLn
	vGUhA4XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYmr-00087B-Mw; Thu, 23 Jan 2020 09:28:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYmg-00086Z-Dn
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 09:28:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CF30C3B06;
 Thu, 23 Jan 2020 10:28:12 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a0be0d04;
 Thu, 23 Jan 2020 10:28:02 +0100 (CET)
Date: Thu, 23 Jan 2020 10:28:02 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Oranje <por@oranjevos.nl>
Message-ID: <20200123092801.GN69327@meh.true.cz>
References: <20200121083509.24067-1-ynezz@true.cz>
 <20200121083509.24067-2-ynezz@true.cz>
 <A627DEFC-1F41-43D2-B93F-8B0EB917303B@oranjevos.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A627DEFC-1F41-43D2-B93F-8B0EB917303B@oranjevos.nl>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_012818_607631_68B1696A 
X-CRM114-Status: UNSURE (   7.09  )
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
Subject: Re: [OpenWrt-Devel] [PATCH procd 2/2] state: fix reboot causing
 shutdown inside LXC container
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

Paul Oranje <por@oranjevos.nl> [2020-01-22 11:09:22]:

Hi,

thanks for review.

> > +	if (is_container()) {
> > +		reboot(reboot_event);
> When reboot returns, hasn't something gone wrong then ?

What do you suggest? 

I dont know how that behaves in all environments in order to answer that
question and I've following "However, in containers reboot() call is
ignored"[1] in my head since I've discovered it.

> > +		exit(EXIT_SUCCESS);
> The return below after exit() can never be reached.

What do you suggest? 

Does that additional return hurts that much? I mean, if we keep it, it's
clear, that the code bellow the return cant be ever reached, omitting it
leaves some possibility. Debugging this stuff is PITA. 

1. https://git.busybox.net/busybox/tree/init/init.c#n750

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
