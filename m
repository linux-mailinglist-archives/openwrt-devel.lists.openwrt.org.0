Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC4C158F74
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 14:05:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PeR9OZVwK/cDZS9iYBt9Fj9/vxQl0tt1N77s+6szJoY=; b=uDAO3uzFGQKIL2dfSpI09h8gr1
	7YfWu/zokwiQbkx+fXfcXhVsYaRUjLhaRvNPVacMsmNazlMIsFQx0cQoURs6PNTm7Zp9AXHra2Fr+
	/+q8KFzjj07HV5OB7+Ps8ASPVuao7BXvtFeLABa3XuK51o6Z2jvonR6pRQhlVL/NvHUKr0YwOhZl8
	F7zUAk/Fyebx/PblnSiW6zFWunIu9v19yxn/1Zcd2NwCNfv85obcjaqyHFaDJVSZYb8Nhe8T2Jf4N
	pBD6I72jSUXyQ+MHR1JTg7K8GeE1HTCJTycNnEFLU60mrYcE85trigLHCPPU/HnYIvKxvEHatyITf
	JGsJU8iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1VDo-000275-5O; Tue, 11 Feb 2020 13:05:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1VDg-00026W-Nq
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 13:04:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5588A4E14;
 Tue, 11 Feb 2020 14:04:51 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e0ebf664;
 Tue, 11 Feb 2020 14:04:39 +0100 (CET)
Date: Tue, 11 Feb 2020 14:04:49 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20200211130449.GA25902@meh.true.cz>
References: <20190714114140.18320-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190714114140.18320-1-kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_050452_923253_19499C42 
X-CRM114-Status: UNSURE (   6.11  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] nftables: Update nftables & clean up
 dependencies
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
Cc: openwrt-devel@lists.openwrt.org, Rosen Penev <rosenp@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kristian Evensen <kristian.evensen@gmail.com> [2019-07-14 13:41:40]:

Hi,

> This patch does three things:
> 
> * Bumps nftables from 0.9.0 to 0.9.1 and remove a patch that was
> accepted upstream.

sorry for the very late reply, but we're already at 0.9.2.

> * Cleans up the nftables-dependencies in netfilter.mk. All targets are
> not at 4.14+, so there is no need to specify for example "ge 4.9.0" or
> keep "lt 4.9.0" around.
> * Fix building support for nftables sets. In 4.18 the configuration
> symbol changed from CONFIG_NFT_SET_RBTREE and CONFIG_NFT_SET_HAS, to
> CONFIG_NF_TABLES_SET.

Some of these has been probably fixed in 0e05093b12ef, can you check again?
Thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
