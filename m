Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D239B8B48
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 08:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWdtxxPGnYENCXcbPp3VkF6pFOqvTGTxdEIq/6w/Te8=; b=djRTQBGXdf7v13
	8Sdj0agJdQQViduSdpCc9VjXf4Fxbm+Z2QJ8CZJohODc1myxCFFBeNc6QcfTYygppn1tA7Fpki5Tq
	bpcdPCi9THztpXlzt425HBtm+PfPgPYjuVWUUMPeaHTHdtGMUs6Xod/QQaD8hIEAXkvsbIkCD72v+
	//BI+y3PhglN7RWlGnZOOSJgeS7XJrUtx/iVr8tANKtYr6gx7Jyd+Rve0AqQfZeyXRucEM9ym4IDZ
	EOI8cpK+1ZfcrOyiBM0n5MmIz5zSc75oeQi166NPSyzNkx3px6Dk6bnpOAJX4HTYnuASkrSLQARJ8
	UQcSsFrw5s2xfrWEW1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBCpo-0003VM-1B; Fri, 20 Sep 2019 06:56:04 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBCpc-0003Us-Tz
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 06:55:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9D9564704;
 Fri, 20 Sep 2019 08:55:50 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e0ce09fb;
 Fri, 20 Sep 2019 08:55:43 +0200 (CEST)
Date: Fri, 20 Sep 2019 08:55:49 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20190920065549.GA17786@meh.true.cz>
References: <20190917122223.2745-1-freifunk@adrianschmutzler.de>
 <20190917122223.2745-3-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917122223.2745-3-freifunk@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_235553_113445_F28C34FE 
X-CRM114-Status: UNSURE (   9.87  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ramips: rearrange LEDs for
 ZBT-WE826 devices to prevent delete-node
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

Adrian Schmutzler <freifunk@adrianschmutzler.de> [2019-09-17 14:22:23]:

Hi,

> So far, for the ZBT-WE826-E the leds pulled from the DTSI are deleted and
> then redefined. The config in the DTSI is then used in two other DTSes for
> the ZBT-WE826 flash variants.
>
> Since the block is effectively only used for two devices, this moves led
> definitions to the device DTSes to prevent the use of delete-node.  This
> seems more logical than created the config and then deleting it again.

maybe, but I would prefer to keep the current state as it avoids copy&pasting
of the exactly same leds node to the two places.

>  4 files changed, 42 insertions(+), 23 deletions(-)

You've just added 21 more lines one would need to maintain.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
