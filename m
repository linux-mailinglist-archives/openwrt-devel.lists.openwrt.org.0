Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B97C3A57D
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 14:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a0agTP0VX5nDz09duDMPxBTBGXeThrMpnxvcjrlZLj8=; b=To6WyXsf/OAtkJkGejG/2kOPTN
	FscBbUewB2ERErMoMnNlZFHGgqVEW0WDYOlcA5IgYHELGDAZQTO99MIV4jqPgsHRaqb/8CKkzR7vC
	DBhJVAe8rwN3dOg98GgYz4phThgrVLlHdUUGFfmFs+JwGxkbbuSRsTxqg9pnIgXOttz44kbopRa/I
	V63zmZ1ZaXQWb0B5YeQ9iOr38wvEI24RiyBslwYmdyBgmcXmljfddCI8ZhRQHCDYZRJ6+Q9R7c2YL
	typzo6H0pA7UyegrYOcBlG/7DTlWqgGyS7K1dm6ER+y1HRF7pJ19+4jJOyN526jDI0kIWm/TCa7ES
	BtAavPow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZx2k-0005Q7-Mw; Sun, 09 Jun 2019 12:35:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZx2c-0005PV-6D
 for openwrt-devel@lists.openwrt.org; Sun, 09 Jun 2019 12:35:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EA8575630;
 Sun,  9 Jun 2019 14:35:13 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 7689f484;
 Sun, 9 Jun 2019 14:35:11 +0200 (CEST)
Date: Sun, 9 Jun 2019 14:35:11 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20190609123511.GA39806@meh.true.cz>
References: <20190608155442.16632-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608155442.16632-1-yszhou4tech@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_053518_384129_3EADC560 
X-CRM114-Status: UNSURE (   7.80  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] generic: support
 mtd-mac-address-ascii
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

Yousong Zhou <yszhou4tech@gmail.com> [2019-06-08 15:54:41]:

Hi,

> It supports formats of both 001122334455 and 00:11:22:33:44:55

mtd-mac-address was rejected upstream[1], so I'm not sure if we should add new
features to it and promote its usage as it's probably going to make the switch
to the upstream provided solution harder in the future.

As mtd-mac-address was rejected, I went ahead and added NVMEM support to
of_get_mac_address[2] which was accepted and you can see already working
example in my staging tree in the wip/nvmem-mac-address branch.

In order to support MAC addresses stored in ASCII, we would probably need to
add support for multiple reg value pairs into the nvmem core as suggested by
the nvmem core maintainer[3].

On top of that, we would need to add proper support for nvmem cells[4] under
MTD partitions, because currently it doesn't work, MTD layer is simply treat
those nvmem cells as sub partitions.

> Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
> ---
>  ...et-sched-Introduce-act_ctinfo-action.patch |  18 ----
>  ...et-sched-Introduce-act_ctinfo-action.patch |  20 ----
>  .../generic/hack-4.9/220-gc_sections.patch    |   2 +-

probably some leftovers from other patch?

1. https://patchwork.ozlabs.org/patch/1086628/#2154562
2. https://patchwork.ozlabs.org/project/netdev/list/?series=105972&state=*
3. https://www.spinics.net/lists/netdev/msg570314.html
4. https://lkml.org/lkml/2018/6/7/972

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
