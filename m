Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DFBB8C1B
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 09:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ah9L9v0jLh8iMdlwvOFsZtgXCwRuHpCZse61E+Ie9Lk=; b=p+AbQcAMFYNCOs
	nrzbhazYD6jtrggd7WUuX3vG+5w6lOfRAl7os4Ubrb+awKcFpl19WpqbrG+nprLUY+r7aEXmaiXAp
	/GFUQrod1TUEsfmhXiF7+fovNTfJQhIi7j80EeCkh0OxigLFbN2LdijbW4lTqmUU0yXA+QgV6QUB0
	1HrTeqGq1mikdz6MpKOPjJCqOvFda1JEsi8+Mqs5vP2V8F5hkapMc+aeWl45z2Tt0I455PpkRamzg
	XijfCU8sj9yRxqoQNS5EutHMVGRzhtK0C4poetQjneCUiQqprKEkXFOgCozgeQUsOhtXysYJTN9qh
	/+Lgb9zUjydPdSkvLGYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDm2-0000pX-TD; Fri, 20 Sep 2019 07:56:15 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDlt-0000p5-9H
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 07:56:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 08D364A3C;
 Fri, 20 Sep 2019 09:56:00 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f3ef9169;
 Fri, 20 Sep 2019 09:55:52 +0200 (CEST)
Date: Fri, 20 Sep 2019 09:55:58 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190920075558.GA21104@meh.true.cz>
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
 <20190623092448.27880-2-kristian.evensen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190623092448.27880-2-kristian.evensen@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_005605_472701_CE617FE2 
X-CRM114-Status: UNSURE (   5.61  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-files
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kristian Evensen <kristian.evensen@gmail.com> [2019-06-23 11:24:47]:

Hi,

> This commit makes the following changes to the WE1026 DTS-files:

could you please rebase to series to the current state of the tree? I would
like to apply it, thanks!

BTW don't forget to include the license change ACKs.

> Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
> Acked-by: Alex Maclean <monkeh@monkeh.net>
> Acked-by: INAGAKI Hiroshi <musashino.open@gmail.com>

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
