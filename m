Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9C914C7A7
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 09:49:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kwWnVxT075P/D6TcB0sXBIC9eQ2OCMgVd/TsTeVa3ds=; b=tugtF4rwlE8um7wDHS/K/U/lKy
	/DMVVBYTeHW0cWi6bCJ4lhyXhIliY6ZRo6jLkXDGb24zuRoT+jK+bnMf9tff6P/QvYAAQvIJHn04p
	J8i6pg6PNl9k8rR9bF1K9mrCDficez3hJVKtLLpK4yDRpFYqCP/bsX3omo09xtvrTf54B77GVeweM
	QG4SSAlyNUEHEXWJukU8l/OrmLJIkl95X77OxtP8YSXhegLM8WTAMti0NbwJbCjRcp5WqKK2NxyHM
	5qoUO8zyOTtDFZxPYfu8dadoS2qpEp+c+Yv7Chl0SAWtdP5af0o4BCQmiyrZNCDNy0+IPBS2QDDgk
	ioOauZNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwj24-0001Dv-4b; Wed, 29 Jan 2020 08:49:08 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwj1u-0001Dc-HW
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 08:49:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 482A552F6;
 Wed, 29 Jan 2020 09:48:54 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fbe269d8;
 Wed, 29 Jan 2020 09:48:42 +0100 (CET)
Date: Wed, 29 Jan 2020 09:48:42 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Peter Stadler <peter.stadler@student.uibk.ac.at>
Message-ID: <20200129084842.GA6738@meh.true.cz>
References: <20200129082950.239999-1-peter.stadler@student.uibk.ac.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129082950.239999-1-peter.stadler@student.uibk.ac.at>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_004858_730750_07D46D5E 
X-CRM114-Status: UNSURE (   5.22  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] libubox: use const *attr in getters
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

Peter Stadler <peter.stadler@student.uibk.ac.at> [2020-01-29 09:29:50]:

Hi,

> This allows to get the values instead of calling blobmsg_data.

ok, as you didn't provided this information in the commit message and I'm
wondering, does this changes make libubox faster (by how much?), smaller (by
how much?) or was there perhaps something else behind the need for this
changes?

No need to send v2, just give me the details over email and I'll add it to the
commit description, thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
