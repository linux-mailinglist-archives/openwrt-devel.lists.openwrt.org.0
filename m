Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4AD1CDE5
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 19:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z1LlkTSFeu+5/w0/DI31Xwq6NhPqBjZrZyMfni5AvG8=; b=Lr7If20RGOxobK+zQu5Bpd/CbB
	m6fcEwyaEVwvFSlTlEp5tEFC4qzcZnUS5dK+rfLbhlBSqKzMMw2CUz5whqCugyn7cyaPT/oQOANwT
	ipLqvaTWadWk54gLunKF2wy/1JIk9ezBtiFPkAFP/jJ3oB/eZ+0U7QdIkHVfaO5yQrkULlXhEGynE
	nesOO93bcfDgsy/YizpzzKo9wGALjq7ZQ8an34jqNiTxH/7nTWAkJuCy1uh+edunmYs9BI1Dg2Rtj
	pJou0c3CAH8uVdUlWrCJwA5HAlq7nBSwNRarcQsI2OjvJ21cqbKkGO7bH73OxfH35JECYEwoz//Xw
	wz+v3FFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQb9u-0002zK-QG; Tue, 14 May 2019 17:24:10 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQb9n-0002yZ-MV
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 17:24:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C317A4A22;
 Tue, 14 May 2019 19:23:57 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c641c31b;
 Tue, 14 May 2019 19:23:56 +0200 (CEST)
Date: Tue, 14 May 2019 19:23:55 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190514172355.GD93050@meh.true.cz>
References: <20190514155608.13021-1-mail@aparcar.org>
 <20190514155608.13021-2-mail@aparcar.org>
 <20190514162441.GG7867@makrotopia.org>
 <ec4846ca-af4c-f9f7-b54a-d658be03b15f@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec4846ca-af4c-f9f7-b54a-d658be03b15f@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_102403_888200_B0AAA23C 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] procd: apply official kernel
 clang-format style
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
Cc: openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Paul Spooren <mail@aparcar.org> [2019-05-14 18:51:55]:

> On 5/14/19 6:24 PM, Daniel Golle wrote:
> > I don't think adding formatter-information into the code makes sense
> > at this stage, as this is meant for exeptions from an otherwise applied
> > style. Here, obviously clang-format defintions don't reflect the
> > current style.
> 
> They don't, they reflect the kernels style (at lest, as much as I
> understand using the .clang-configuration file). If it's ugly, it's not
> a matter of clang-format but of the kernels code style, not?

FYI, quoting from https://www.kernel.org/doc/html/latest/process/clang-format.html

 While it might be tempting to use this to keep a file always in sync with
 clang-format, specially if you are writing new files or if you are a
 maintainer, please note that people might be running different clang-format
 versions or not have it available at all. Therefore, you should probably
 refrain yourself from using this in kernel sources; at least until we see if
 clang-format becomes commonplace.

 Remember that you can always tweak the changes afterwards in those cases where
 the tool did not do an optimal job. But as a first approximation, it can be
 very useful.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
