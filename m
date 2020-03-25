Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3048E19229C
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 09:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:Message-ID:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=vD00Wzk1wkfQrcQyTyUdsvGhLDGGui2eglxUABbSAZg=; b=o7c
	4tZlPxqJ6O26BjTcAPdJStriXHdPGL8jA1FwSkbQn4EPaoOmGa6fMAzBvoRvRwduVrzcHucJzhGG/
	AI0FQt5B/iDOhIZlSy3yZyDMt2226K6lDrB4CbFY7b9gbB+4576DRU2COSP4US5uUg422d/I15mPe
	aBSKLwMpeI2UmbXq0ZRopj9YFYTWAw3F5dg9PGpHJ90rLqCX4JfNBcDQNEe4BC0QmBYQJS+vTsl9C
	UEzZ+h0A5HeVx9ks2j9w3CXtDCqpBt/RjLtf7IRU6BEOaqVmZJ02ln3+2iOLfxy7CJA+VeV6jn4rk
	HgADj76NNv07HqHGWqeM/Pkd4C4gzPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1Ns-0001NI-FE; Wed, 25 Mar 2020 08:27:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1Nj-0001Mb-CY
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 08:27:24 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F2C384C76;
 Wed, 25 Mar 2020 09:27:20 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 829e8856;
 Wed, 25 Mar 2020 09:27:06 +0100 (CET)
Date: Wed, 25 Mar 2020 09:27:06 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200325082706.GC43730@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325063049.870312-1-rosenp@gmail.com>
 <20200325060432.176224-1-rosenp@gmail.com>
 <20200325055619.8196-1-rosenp@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_012723_575769_6232A3AD 
X-CRM114-Status: UNSURE (   4.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix compilation with musl 1.2.0
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

Rosen Penev <rosenp@gmail.com> [2020-03-24 22:56:19]:

Hi,

> --- a/system-linux.c
> +++ b/system-linux.c
> @@ -59,6 +59,10 @@
>  #define IFA_FLAGS (IFA_MULTICAST + 1)
>  #endif
>  
> +#ifndef __NR_clock_gettime
> +#define __NR_clock_gettime __NR_clock_gettime64
> +#endif

could you fix it by removing that probably now obsolete workaround by
replacing that syscall() with direct clock_gettime()? Thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
