Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F5B1EF147
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 08:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ziMvH5po/Jt7i/6G084d1tzJ13+4HnI0EqLojDmI/uE=; b=B8hQxf7i3Vlwqg0wpFdvNv9ZWJ
	HJoRn/umNYTGwIyzUbPv96QyOLXTKNj4SY6AlnynlTeZ1rEaKWi0tjZhRbKeQM5ZN7Q6PKvYBgGiC
	hpFHWDqPS2fuX/ocXJOLspanJYmjJjigMFMwsVQy8ChEiBnxeSqZ/SSGw7as5uRRuTnvc6NA8Qf2U
	uPfR6wXAYs5IXNPpuMg4oCE5SI+rQAppUca0IIzeSqGYv1pEkRqVVyem3KOxXCOawpT5aJaQhKtJy
	6KfCBoKv/1V3QWCo8IKKPhzpMQpifIdMzpfdvxEM3hkGcRcv5xW156MCznnU7WREBHfywK2JZOL+x
	110LwgQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh5cs-0005po-Am; Fri, 05 Jun 2020 06:14:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh5ck-0005oI-Ad
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 06:14:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BE97D37F1;
 Fri,  5 Jun 2020 08:14:29 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 9ae74402;
 Fri, 5 Jun 2020 08:14:13 +0200 (CEST)
Date: Fri, 5 Jun 2020 08:14:13 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Bailey <danielb@meshplusplus.com>
Message-ID: <20200605061413.GA32043@meh.true.cz>
References: <CABzx=O3ZmThnAUbjz55pM6YE4mp7B4RQEA2TiGQjiDu9yNDhRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABzx=O3ZmThnAUbjz55pM6YE4mp7B4RQEA2TiGQjiDu9yNDhRA@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_231438_515941_66DB9E6B 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Inquiry on process of getting patches accepted
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Daniel Bailey <danielb@meshplusplus.com> [2020-06-04 20:25:21]:

Hi,

> I'm curious about the process to get a patch accepted.

currently it's like in other FOSS project run by volunteers, so the resources
are scarce. 

You send the contribution and then wait some time, ping, wait some more time,
try to poke someone of the maintainers directly on IRC, wait some time, then
resend.

> I followed the steps (and formatting guidelines) at
> https://openwrt.org/submitting-patches and submitted a couple of patches
> for procd last Friday and another one today. I submitted them to the list

Yes, sending the patch to the list (or GitHub PR which is impossible for
procd) are the only proper ways.

> alone because I couldn't tell if there was an official maintainer (I didn't
> see one in the procd Makefile). Looking at an 18.06 control file in my
> build tree, it appears that maybe John Crispin is the maintainer?

I would say, that community is maintainer.

> Looking at http://patchwork.ozlabs.org/project/openwrt/list/, I see my
> patches there and they are marked as new. But some are there from July,
> 2018 and are marked as new.

See following mail thread[1].

> Please advise me whether there are further steps I should take.

Nope, just wait, be patient.

1. http://lists.infradead.org/pipermail/openwrt-devel/2019-October/019570.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
