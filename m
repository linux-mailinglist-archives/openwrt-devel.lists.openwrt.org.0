Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8868818E965
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 15:35:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BaelqP/pHJP0JGCG3Un4Yse6Umgyo6R7nmZalM4Ntew=; b=d7IAyec6DD9bZlCtBcIXHUwmy5
	J9gCjT2Bz9ABVoplcCvhPinrcnfRb9imQ+27ru4fYfoWbqgo00ea6lQ/NClx2TscevGjaQWU1IFyq
	klNV4a62Ewqw6AczdfXYrkH4QR/gUzhFtv1e1czvvXnFkI6SWpC1kXjIiyGEbtr+qQotoHIkJHQiu
	EYZg5p3CCFthx0TVx+Rc8ksLy9d2y5HM/xYiCvM8s4RFdH2NOviM5dKBP3UuW1iwbuVKU6lqnisik
	kQzAw04TbiDBc0wp4/YAABcOPf6bQ5fgAs6AlIUvjsjkDMcHdcr9ZO9SgFExg19mA4UVYoBERTId3
	CoLZgGvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG1hQ-0000Xk-TA; Sun, 22 Mar 2020 14:35:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG1hJ-0000Ww-Aa
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 14:35:30 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3B77F36EE;
 Sun, 22 Mar 2020 15:35:25 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 03ac050c;
 Sun, 22 Mar 2020 15:35:11 +0100 (CET)
Date: Sun, 22 Mar 2020 15:35:10 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hans Dedecker <dedeckeh@gmail.com>
Message-ID: <20200322143510.GD85632@meh.true.cz>
References: <20200320215939.1168125-1-rosenp@gmail.com>
 <CAJLcKsGgX9JA3kNGhRivrB_-bPwkJGkBibAgWnrQLXWZEFYoPw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJLcKsGgX9JA3kNGhRivrB_-bPwkJGkBibAgWnrQLXWZEFYoPw@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_073529_515916_5A3EE021 
X-CRM114-Status: UNSURE (   5.32  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: use the 64-bit version of
 clock_gettime
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hans Dedecker <dedeckeh@gmail.com> [2020-03-22 09:39:33]:

> > -       if (syscall(__NR_clock_gettime, CLOCK_MONOTONIC, &ts) == 0)
> > +       if (syscall(__NR_clock_gettime64, CLOCK_MONOTONIC, &ts) == 0)
> >                 return ts.tv_sec;
> This breaks compilation on glibc
> 
> /home/dedeckeh/WDR4300_glibc_staging/build_dir/target-mips_24kc_glibc/netifd-2020-02-05-dbdef938/system-linux.c:2424:14:
> error: '__NR_clock_gettime64' undeclared (first use in this function);
> did you mean 'SYS_clock_gettime'?
>   if (syscall(__NR_clock_gettime64, CLOCK_MONOTONIC, &ts) == 0)
>               ^~~~~~~~~~~~~~~~~~~~
>               SYS_clock_gettime

This is expected as that glibc version is quite old and should be updated.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
