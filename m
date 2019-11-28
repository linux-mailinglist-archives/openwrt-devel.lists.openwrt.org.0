Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9549310C34D
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 05:58:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IunUmxhWPQ6PJltqUWCqYmo3KiIzmZf1xr50SNbC4Os=; b=Mxcb/cLEXbM08M
	3xpBhgFYgYHMOyvCqxVGE+oqq+tSKXNdRirIiBuKNpY33aYiKznj8NEx6AZbye6RQqwna3iNuKUPH
	hg+QZyfcC1wb3L+7qumFNOGMSqPFE+qz80pqwik9ESMWAotOfB7JJV+OH0/TVh+sCxNrCORURiVPZ
	X39zA4N+iHZ9sGkDa/cKeA+xodHnZQ4vNp++lOE7EO43g22LUpDBPWWhsGss/wVxt1qTRdLe1d/fb
	gevfiJyufIbI6BSJnTCCy6j5jKn9m8EZ+/a6TcXG7mLQPzgxKkU0DzkoeFhDcn+D6xUyEAuTQkna2
	xkXyBEnXXbJ94IG29Y/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaBsr-0001En-Jg; Thu, 28 Nov 2019 04:58:29 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaBsh-0001EU-Jm
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 04:58:20 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 6742D53913; Thu, 28 Nov 2019 05:58:18 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 301F253910
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 Nov 2019 05:58:18 +0100 (CET)
Received: (qmail 77440 invoked from network); 28 Nov 2019 05:58:18 +0100
Received: from unknown (HELO ?10.18.70.198?) (jo%wwsnet.net@80.187.85.198)
 by mail.bytecamp.net with ESMTPS (AES256-GCM-SHA384 encrypted);
 28 Nov 2019 05:58:18 +0100
From: Jo-Philipp Wich <jo@mein.io>
Mime-Version: 1.0 (1.0)
Date: Thu, 28 Nov 2019 05:58:17 +0100
Message-Id: <125949F1-E897-4BB3-B292-70050B07430A@mein.io>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
In-Reply-To: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-Mailer: iPhone Mail (17B111)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_205819_802288_EAEAE7CD 
X-CRM114-Status: UNSURE (   4.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.204.60.217 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Hauke,

I agree with aiming for a kernel 5.4 based release in April.

If we decide to go this route, we should also set a fixed feature freeze date (maybe end of March?) on which we branch off and drop targets not ported by then.

~ Jo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
