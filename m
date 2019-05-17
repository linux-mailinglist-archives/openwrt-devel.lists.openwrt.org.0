Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7493E216E4
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 12:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=06HQ9qjjpkQcZ9p1BtmMTv+d9Ow/RR8rV5HAz14Pr4M=; b=VYWfjm5lo3mZQnA/+OfzgS6KY3
	ka6nPEe1FgpYVjfBgsqBEv/9Xcra6/AYWqq2CCFFim4TJzMMBJUL60HOf+4/V7y7qw7hNEr+OQ/ox
	210/SY+NShq9pZwaGabxhbpC0Qy+zlDEDNTWm52hZwLwcXp9qNzJZ23wrQaSnKXQ9x+7pAsRI1N4U
	7XRHBsudNEJtdGeB4QNRuUidDRmMh0pKghCrLHTpQge7xGKvKdMuMPqxAeV00IbVCopEhrdfqov4G
	ZTNEJXkM42CRdieNAjsUk6Ethagp6nxYK8pwYBqBRIaHeK/3agRBhtA4nVMQg+6UQQ/vGfE718r9r
	baWAi92w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRa2g-0005Ac-Os; Fri, 17 May 2019 10:24:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRa2Z-00058j-Is
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 10:24:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EE72B4D2E;
 Fri, 17 May 2019 12:24:35 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 43e92af8;
 Fri, 17 May 2019 12:24:34 +0200 (CEST)
Date: Fri, 17 May 2019 12:24:34 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr Cvek <petrcvekcz@gmail.com>
Message-ID: <20190517102434.GH63920@meh.true.cz>
References: <1675e3e2-da4b-79e9-f9e4-895be7cf7882@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1675e3e2-da4b-79e9-f9e4-895be7cf7882@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_032440_034551_8210A53E 
X-CRM114-Status: UNSURE (   5.08  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v5] kernel: lantiq: add support for SMP
 IRQ routing
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
Cc: pakahmar@hotmail.com, Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Petr Cvek <petrcvekcz@gmail.com> [2019-05-17 05:44:35]:

Hi,

> +--- a/arch/mips/lantiq/irq.c	2019-03-10 20:44:58.755134326 +0100
> ++++ b/arch/mips/lantiq/irq.c	2019-05-17 05:13:50.302149058 +0200

is there any particular reason this shouldn't go through upstream first?

BTW I'm wondering how to handle your 4 other RFC patches[1] which are
lingering in the patchwork. Could you please take care of them? Thanks.

1. https://patchwork.ozlabs.org/project/openwrt/list/?submitter=75850

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
