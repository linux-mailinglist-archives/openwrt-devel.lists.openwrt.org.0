Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4751B862B
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 13:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xh5JwIQpXF/RoPgobk4E0hunyg208MuBWLcqmmLaHGs=; b=fmL0nF620dgK63WeKs5rZRF8RX
	9/okM3zCLv67JF/EMGXLAEPovPtfiQR0CNdJzlNnGZhdkpG69BNAmRvOm57qQuw1HPcmyXxRf1K48
	1VVgJ1ADyRKHLhMkpjX9wtD0CY5W9vEp19lErG+b0tQz8znEQDQXqJLGtHcDJWwy570wdFO/bwt92
	UbeR7HXmbT8LlfRSN4ucm0Qjy2p9Qt7lP+u91gbVpJtbZqA76n9nfCrb35efw3+MY2ZyPsAUVDZpZ
	LDcEkYfoFMyJ2XagL7AnfOECxBYmhcr4+J092sSnr2nLt+NcNktGATlXky9F9Y8Z7mdpb0s/JVdn9
	OHmZC/Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSJ88-0003Js-OB; Sat, 25 Apr 2020 11:37:56 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSJ82-0003JJ-Ql
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 11:37:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1A428452A;
 Sat, 25 Apr 2020 13:37:48 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 47d3ce9e;
 Sat, 25 Apr 2020 13:37:34 +0200 (CEST)
Date: Sat, 25 Apr 2020 13:37:46 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeffery To <jeffery.to@gmail.com>
Message-ID: <20200425113746.GA30021@meh.true.cz>
References: <20190502182427.6400-1-jeffery.to@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502182427.6400-1-jeffery.to@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_043751_014789_72D63B21 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: Add /etc/shinit for
 non-login shell init
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

Jeffery To <jeffery.to@gmail.com> [2019-05-03 02:24:27]:

Hi,

> Because /etc/profile (and ~/.profile) are read by login shells only,
> aliases and functions defined there are not available to non-login
> shells, e.g. when using screen or tmux.
> 
> If the ENV environment variable exists (exported by /etc/profile or
> ~/.profile) and references an existing file, then all interactive shells
> (login or non-login) will read that file as well.
> 
> This sets the ENV environment variable in /etc/profile, pointing to
> /etc/shinit.
> 
> This also adds /etc/shinit, which:
> 
> * Contains alias and function definitions originally in /etc/profile
> 
> * Sources /etc/mkshrc if the user is using mksh (also originally in
>   /etc/profile), as /etc/mkshrc is meant for all interactive shells
> 
> * Sources ~/.mkshrc if the user is using mksh, to compensate for the
>   fact that mksh will not read ~/.mkshrc if ENV is set
> 
> * Sources ~/.shinit if the user is not using mksh
> 
> This also removes the shebang from /etc/profile, as the file is sourced,
> not executed.

FYI seems like this didnt played well with bash[1].

1. https://bugs.openwrt.org/index.php?do=details&task_id=3019

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
