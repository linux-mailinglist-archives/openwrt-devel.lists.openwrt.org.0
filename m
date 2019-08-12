Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025D28A291
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 17:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9w9FVDIC4dW2+0a5tPjTfg60lZ/4mwLFYdxXz53+Ic0=; b=Sdu0QAyJZ+m+AMyzcSYL3DsDCi
	ZxgsTRqn39PwUwtJGxH4PPJ8TslSTAxRn+UeTfT322Uu6rut8ilUYrblNqph0rQhxaQZjqxHnIfQD
	ZYVkyyDBnvoPVnoFKz/COoe+dYIIwSQXyuPUd+9/v3SSfzMEPjJqXl3c1ZXUyjSlez5syP+Qj1uRI
	Lhuj5bcnQGp0euppwxb/CjHrgv1hXhvJO+oKb66/Fj4q1TyueEbJfpL8F5BkyQ2NzUPUkSkHC70vS
	qfP4raoeBLuVANvs1mCMy6IPxOC7SyqyBOwl/s4vsJGM664UP6GQjx6gz43iyx8GL+FgRC77H5xUm
	B/3K2IPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxCWU-0005J2-Gn; Mon, 12 Aug 2019 15:46:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxCWM-0005Ij-9a
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 15:46:08 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D0F6D497E;
 Mon, 12 Aug 2019 17:45:59 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 9eb8022a;
 Mon, 12 Aug 2019 17:45:50 +0200 (CEST)
Date: Mon, 12 Aug 2019 17:45:50 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Oranje <por@oranjevos.nl>
Message-ID: <20190812154550.GI12735@meh.true.cz>
References: <675C4221-5F3B-4440-A2A8-B63C92904ED3@oranjevos.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <675C4221-5F3B-4440-A2A8-B63C92904ED3@oranjevos.nl>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_084606_533052_9144053B 
X-CRM114-Status: UNSURE (   7.18  )
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
Subject: Re: [OpenWrt-Devel] GitHub starts blocking developers in countries
 facing US trade sanctions
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

Paul Oranje <por@oranjevos.nl> [2019-07-31 15:05:37]:

Hi Paul,

> LWN posted an article with the above title [1] that refers itself to an
> article on ZDNet [2]. 

thanks for bringing this topic up, it's indeed quite uneasy situation so to
speak. On the other hand such hiccups are really important, in order to remind
people, that this is simply proprietary platform, owned by a company with
debatable history, so this actions should be expected.

Anyway, most of us attending recent Hamburg meeting believe, that we should
try to consolidate our fragmented development platforms and evaluate[1]
self-hosted GitLab as a possible viable option, thus making the project
self-sufficient and quite resistant to this 3rd party actions (to some extent
of course).

Just to be crystal clear, there's no plan to abandon or leave GitHub, current
(somehow blurred) vision is, that GitLab could be (ab)used as a central point
for development, whereas GitHub could be kept as it is, being simply one of
the possible incoming channels for the valuable contributions.

1. https://github.com/openwrt/openwrt/pull/2218

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
