Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D960E18EBF8
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 20:42:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ZpYLaFkd+jSOedO+4aonX5Zn3gn/KWOx9qr2WRJfZd4=; b=e9UnRjiWtOzs4Z
	xrCYBr20QFRjHUTq5YrOliiTta9XutZSywgJTjpZLY459q9s9nTSg93oS4QUD5UZXN57F5vXqyKgX
	waT36x84yJAytc9IYWhkIugBOhl/oyGkm+6PFU78hPsFPjBwX+LAQm/k861YAogfRWAlQgehCBpr+
	Ybi77Kb12IGl/jlwi9S64tPgE82Ct1ZDPYQFUdxREy4BL8AYeK4X9VJXEjfc/f1XLYTViFR1EY3Hd
	qxTPjtH3giHXRvTkVOWU8BCtzTrclDaLCKEhzArgO+hKTgmvAkncEA4HUDaugFmvsca/mU78B6/9M
	4D5tLBg2HIOq91Pn0U3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG6Tv-0001Vy-4V; Sun, 22 Mar 2020 19:41:59 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG6To-0001VW-GV
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 19:41:54 +0000
Received: from localhost (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 9E80D200003;
 Sun, 22 Mar 2020 19:41:46 +0000 (UTC)
In-Reply-To: <20200321154149.1d47e581@lazus.yip>
Date: Sun, 22 Mar 2020 09:39:44 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: "Alexander 'lynxis' Couzens" <lynxis@fe80.eu>, "Robert Marko"
 <robert.marko@sartura.hr>
Message-Id: <C1HMA5M2YZOD.2UB7OLSQBGK90@tb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_124152_683718_0F1D435E 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] tools: squashfskit4: fix build with
 GCC10
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat Mar 21, 2020 at 5:41 AM PST, Alexander 'lynxis' Couzens wrote:
> Hi Paul,
> Hi Robert,
>
> > Sorry, I did not know about that situation but after a look it seems
> > that squashfs-tools is more up to date that the fork.
> > There has been a 4.4 release and couple of patches each month to it.
>
> you're right! I would like to discontinue squashfskit. It had it's
> reason, but there are now 2 options:
>
> a) the upstream is more active and even made it reproducible
> b) there is a full rewrite squashfs-ng

Long time ago I created a patch to use quashfs-ng as a full replacement
of squashfskit/squashfs-tools. It is not fully implemented but maybe
somebody wants to use it as an inspriation for further testing.

https://github.com/aparcar/openwrt/pull/1

> For now, I'll test the patch und merge it later. Maybe I'll also have
> the time evaluate the upstream and squashfs-ng.

Best,
Paul

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
