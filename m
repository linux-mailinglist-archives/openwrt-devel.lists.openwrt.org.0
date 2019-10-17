Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45264DA7D4
	for <lists+openwrt-devel@lfdr.de>; Thu, 17 Oct 2019 10:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9kr8TckYoe06ipxgZ0EBPSOnP13exbi519q7ROZi6Vw=; b=Aa9raxStRzZrxYppcPY4wwRQBk
	1uYHP2ZSjgmgRofefueeuvbBsF3fNy8cSam/Q30IKXfQ2l59/QTFI0BALourd5kXROcZLdnuFGIQL
	pp4e5qUdkyrUx7W4zI16gbyCvYGoqGQnaHKY32sKrMGHcFPMEzvgrrdE1w6VmM94q7/6WTw0QfPrv
	kQKLb0Q9ZPlgtsorR+SWRY0wnINto+piiABAW8BEYozcy4ySW1WmVXgEwoGtd1N9HzcHefpUHnptT
	/ziShARTxf2NkZN5fNz2odOLO4ZhBXe86un6PjTW/34RblhtZJp9k9uYAgihc7wIOab/6gYBq9Xum
	uVvuze+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1YG-0005Rc-OH; Thu, 17 Oct 2019 08:54:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1Y3-0005OG-CB
 for openwrt-devel@lists.openwrt.org; Thu, 17 Oct 2019 08:54:21 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 363744B69;
 Thu, 17 Oct 2019 10:54:14 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d7e88d2d;
 Thu, 17 Oct 2019 10:54:03 +0200 (CEST)
Date: Thu, 17 Oct 2019 10:54:03 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jo-Philipp Wich <jo@mein.io>
Message-ID: <20191017085403.GA52694@meh.true.cz>
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
 <f5a36ecd-123a-dcfc-a923-42e3d10e0645@wwsnet.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5a36ecd-123a-dcfc-a923-42e3d10e0645@wwsnet.net>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_015419_566237_533012E6 
X-CRM114-Status: UNSURE (   3.44  )
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
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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

Jo-Philipp Wich <jo@mein.io> [2019-10-17 10:13:44]:

Hi,

> root@gateway:/tmp# cp openwrt-ath79-generic-tplink_archer-c7-v5-squashfs-sysupgrade.bin meh.bin
> root@gateway:/tmp# ubus call system validate_firmware_image
> root@gateway:/tmp# ubus call system validate_firmware_image

this was reported by me, but with jow's help I've tracked the problem down to
my local patch[1]. And I've just checked on my c7v5, that upgrading from
ar71xx/19.07 to ar71xx/19.07 and ar71xx/19.07 to ath79/snapshot works fine.

Sorry for the noise.

1. https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=41770add03ad77a0ce41ed424ad050238f7d9272

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
