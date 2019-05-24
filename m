Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124F2291E5
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 May 2019 09:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GpFK2t+Eb81PCfYA5/temLSkTtiDoHZ/iBCA1TmlxVE=; b=W1YDnZzGlukZRG1SeLIMEgn2WQ
	aNqLfgEbwYMy1/5bSH7QiEJ+Rw/m6Jz35ZTE6szrbW/kRpHNnsQlT0iW2gJfLz7Eb7FbKKuygB2hb
	Uf3Cg92ols2UWJfeT0WQuffJfDp6ZShd8JUPC7RrfpwsZ4PvBzCjARmfZDxVRIk4uJjfJ7+w8WKh6
	DPgK+sdMUKwhr8fxZRp7KsPcFg0wLP6rrsoWhjdKLTTZJnytO1BYdG0e5eX4p+1Kn7z7sTMkgmgTB
	ywBQ0g5A93PEYP7XJKCjeXJPNrRDGSGg7t4HPjbl3I4NbPCBZUGHDfmdNEOESLuLe01GEPbsmo6+E
	hAIOTB9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4oE-0003Rn-62; Fri, 24 May 2019 07:40:10 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4o2-0003LL-Ez
 for openwrt-devel@lists.openwrt.org; Fri, 24 May 2019 07:40:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EC4604E6B;
 Fri, 24 May 2019 09:39:53 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 909803aa;
 Fri, 24 May 2019 09:39:52 +0200 (CEST)
Date: Fri, 24 May 2019 09:39:52 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190524073952.GC50588@meh.true.cz>
References: <20190522172419.20630-1-mail@aparcar.org>
 <20190523103035.GD4606@meh.true.cz>
 <3e67359e-14ab-1596-2ec9-e08b38d63d9d@aparcar.org>
 <20190523121615.GB50588@meh.true.cz>
 <3d593ebc-325b-87f1-8b85-34f6f79f9b3c@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d593ebc-325b-87f1-8b85-34f6f79f9b3c@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_003958_649738_7A481F46 
X-CRM114-Status: UNSURE (   4.64  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] procd: add docker support
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Paul Spooren <mail@aparcar.org> [2019-05-23 18:57:09]:

> root@dawn:/home/a# docker -v
> Docker version 18.09.6, build 481bc77

Latest seems to be 19.03.0-beta4[1].

> root@f62c16ac8fa3:/# ls -a .dockerenv
> .dockerenv
>
> root@f62c16ac8fa3:/# cat /proc/1/environ
> HOSTNAME=f62c16ac8fa3SHLVL=1HOME=/rootcontainer=lxcTERM=xtermPATH=/usr/sbin:/usr/bin:/sbin:/binPWD=/
> 
> So I'm guessing replace .dockerinit with .dockerenv should do the job?

Seems so, this file seems to be available[2] even in the current rc.

1. https://github.com/docker/docker-ce/blob/19.03/VERSION
2. https://github.com/docker/docker-ce/blob/1551262dc8542b5c9de78f3309b0e7b561328f40/components/engine/daemon/initlayer/setup_unix.go#L29

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
