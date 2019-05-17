Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C1B21470
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 09:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zfeiEH9qcjZJkCjmzdvT77AttsVy1kOxw2+vg41kO5Q=; b=GD0TotXSz27//wj1u9TyTTVPJG
	VyW4DihWctj5Bw4fc0ZK7gcOEUdO+l4Yt5HEJQ5xfEO4YJkkKQ9IAOfQmEMuXjPLl3NGL7wiv83mi
	FqSyTnzUMtPGUtgHxcdmkpepZre6goi7efnqkhzX1o9xtcnKPROq/6l80bSr1IDYNu6jJIYWUZ+5D
	6lg/ghPUuzmt1foJ61SaN4LoQ8cEQdBPKmYM4FP0jlC5hqd5VYJJrdAlMnTYLB+m8NEkCkmmoOsAE
	kvEikFA2BbIN86xZP8PTdYnqGFDN3HL5sTq225dUqjvDKOVg8rSlnhEEHICwVlDb+Jfi7/F4E6JXE
	ejt7nGsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXNt-00017g-SC; Fri, 17 May 2019 07:34:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXNl-00017M-QX
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 07:34:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CB4FE4541;
 Fri, 17 May 2019 09:34:18 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 59053130;
 Fri, 17 May 2019 09:34:17 +0200 (CEST)
Date: Fri, 17 May 2019 09:34:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190517073417.GG63920@meh.true.cz>
References: <20190501170445.4607-1-rosenp@gmail.com>
 <20190503171748.GA3101@meh.true.cz>
 <10C80B0A-E4F7-4619-85BE-B78580C58148@gmail.com>
 <20190503185541.GG71477@meh.true.cz>
 <1556910707.1846.0@smtp.gmail.com>
 <CAKxU2N-LasxZy-Qxie0GavPn+Douq4nkyHZD-y82p6VCS5CfzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N-LasxZy-Qxie0GavPn+Douq4nkyHZD-y82p6VCS5CfzQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_003422_013464_CE7507FC 
X-CRM114-Status: UNSURE (   4.02  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] libbsd: Fix compilation under ARC
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-05-16 18:47:07]:

> Added merge request here:
> https://gitlab.freedesktop.org/libbsd/libbsd/merge_requests/6

thanks, I've merged it https://git.openwrt.org/4ffa38e15ca9

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
