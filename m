Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FBEE732A
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 15:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k6b6zfHEOwfAw7RfuTxReZgPIs7KNOCQ/2Bu7hM0UcE=; b=SSj61iJrbPVPBGcukGu2fXNr+m
	/9GWMV2kKDncF01FQWqGfXGE87grBOoQsVrLberF45TeAQJqORgR4BHISW8s4g6Qm4DodgLFB8BKF
	3hMtxfT1V/D9wGPB1Fy2LJGZUHFo7J2O6reiofEk8P/DulWse2agOzaDF1dHGKsL4WU2i0LyKEIQ0
	ZN51v6OViCm4yPu8dUQnFSZ1ymKNJGRoY3Jj1DGIXtsttwXfWRcp0wA/jyWmbpaJKeZ/l1WThWoSm
	D1FbmiTrT6b52C0XL6RIODd8WWG8PYbmHi7YV6l/GHfT0lX/YjbLJXekfcrLrG0RjJjRMkMl+QDSe
	eeIvroEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP5at-0000i4-Dg; Mon, 28 Oct 2019 14:02:03 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP5YY-0005cV-KZ
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 13:59:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A41FE3CC0;
 Mon, 28 Oct 2019 14:59:33 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id abc5517a;
 Mon, 28 Oct 2019 14:59:23 +0100 (CET)
Date: Mon, 28 Oct 2019 14:59:23 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191028135923.GE22393@meh.true.cz>
References: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
 <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
 <20191028115743.GD22393@meh.true.cz>
 <025101d58d89$ae223110$0a669330$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <025101d58d89$ae223110$0a669330$@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_065939_078513_4E5F2007 
X-CRM114-Status: GOOD (  16.91  )
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
Subject: [OpenWrt-Devel] improved handling of contributions [Was: Re:
 patches from 2018]
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Tom Psyborg' <pozega.tomislav@gmail.com>, 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <mail@adrianschmutzler.de> [2019-10-28 13:17:34]:

Hi,

> 1. Those where the submitter left track after (initial) feedback
> I would even choose a relatively short time span for that (e.g. one month).

so this probably means PRs with `needs changes` tag and defined inactivity,
right?

> 2. Those where there never was any feedback
> However, I do not think it's fair to just close an old submission without
> any developer (or others people's) feedback (category 2), just because
> nobody is interested in it.

And whats the point to keep them lingering on the GH forever? My feeling is,
that people are simply afraid to reject the PRs so they simply ignore them,
but in the end, net result is the same.

> I'd see this differently if the old submissions would do any harm, but since
> they are just lying around and making a list a little longer, it's not like
> they pose a big problem.

If we're talking about following GH PR filter:

 is:pr is:open comments:0 updated:<2019-04-28 sort:created-asc 

Then it yields following result:

 kernel: add kmod-frame-vector                   https://github.com/openwrt/openwrt/pull/1518
 kernel: build kmod-dma-buf properly if required https://github.com/openwrt/openwrt/pull/1519

Both PRs from the same author, almost 1 year old. I believe, that if some bot
would autoclose those (or at least marked those with `stale` label which would
mean autoclose in next 30 days without any activity) it might signal the
author, that there probably is more effort needed to make it merged.

> one could provide a standardized
> feedback that 1. patches do not apply anymore, 
> This will remove inapplicable patches from the list, 

this could (and should) be automated and it's not an issue I would say.

> 2. it seems to be that interest in the subject isn't there

what could be more explicit then no activity for > 6 months?

>  and 3. that resubmission of a rebased patch is possible if the author wants
>  that

indeed, but rebased patch (and additional work attached to that) wouldn't
necessarily mean, that it wouldn't linger in the patchwork for the following
year, until next pre-christmas cleanup.

> but reach out for those having invested time in an enhancement to OpenWrt

To me it seems, that it might make more sense to take a look around for
inspiration, how it's being handled in other FOSS projects and try to improve
current workflow.

This PW/GH/FS fragmentation still makes me crazy, but anyway just a quick
ideas for PW/GH, we could handle the aging of the contributions more gradualy,
like in more phases:

 1. change patch status from 'New' to 'Needs Review / ACK' after 30 days of
    inactivity

    - on GH label=`needs reviewer` 

 2. change patch status from 'Needs Review / ACK' to 'Under Review' and assign
    it randomly (to predefined set of volunteer commiters) after 60 days of
    inactivity

    - on GH label=`awaiting review`

 3. change patch status from 'Under Review' to 'Needs Review / ACK' after 90 days
    of inactivity

    - on GH label=`stale` and remove the randomly assigned reviewer

 4. change patch status from 'Needs Review / ACK' to 'Rejected' after 120 days
    of inactivity, sending out some meaningful mail with a link to
    exaplanation of the currently failed merging process on the wiki

    - on GH close the PR

This way (backed up with some details on wiki page) it should hopefully make
more sense to the contributors.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
