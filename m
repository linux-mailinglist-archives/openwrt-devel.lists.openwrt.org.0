Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D462112ACF
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 11:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sF7qzNWLEbN0hKnc6KO4nhMnntS/ewoeVXXuToG6eL8=; b=GYf4h/voMC+KaE4KloRF7hROSi
	xJmnbtT67FZBmqYU1SMfxBAZXwWJY3RLpoSDxNsQBL73xqjo5fDDBFqiE9EIByPKocyhU1b8T5ZgI
	EFJhezLZgdUlWXQ9sUXbABWLlcUQH5+XG7QicGZjs1asPgR7TIZQycQJerwCJrSpTOTyOGHtfVqi6
	QALQYsZQXsWu+HNBKAn+kZdzAWURLM9QnHeW6boz9pJG2TnG62kGQ/OHIUoJa6wEbRrj6BndUcAlb
	2UUclzsiKPwaOi6ciQbTtZoxLptvlxDedlUDxQ97+rblXPnwmKajJcGWj5xYGywGvdX2C5NwKE5vC
	9V441EVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUfr-0007KL-8L; Fri, 03 May 2019 09:40:11 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUfh-0006ks-W4
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 09:40:03 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9667F3A6B;
 Fri,  3 May 2019 11:40:00 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id e917c8b7;
 Fri, 3 May 2019 11:39:59 +0200 (CEST)
Date: Fri, 3 May 2019 11:39:59 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeffery To <jeffery.to@gmail.com>
Message-ID: <20190503093959.GG346@meh.true.cz>
References: <20190502173327.23285-1-jeffery.to@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502173327.23285-1-jeffery.to@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_024002_189184_DDDF87EC 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] build: fix STAGING_DIR cleaning when
 filenames contain spaces
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

Jeffery To <jeffery.to@gmail.com> [2019-05-03 01:33:27]:

> When looping through a package's STAGING_FILES_LIST (a list of
> file/directory paths delimited by newlines), if the path contains
> spaces, then the path will be split by the while loops, and the
> file/directory will not be deleted/removed.
> 
> This sets the internal field separator to the newline only so that the
> entire path is considered when deleting/removing.
> 
> Signed-off-by: Jeffery To <jeffery.to@gmail.com>
> ---
>  scripts/clean-package.sh | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
> index e580566a52..3a824929c6 100755
> --- a/scripts/clean-package.sh
> +++ b/scripts/clean-package.sh
> @@ -1,4 +1,6 @@
>  #!/usr/bin/env bash
> +IFS="
> +"
>  [ -n "$1" -a -n "$2" ] || {
>  	echo "Usage: $0 <file> <directory>"
>  	exit 1

just for the record, copy&pasting my comment from your PR[1]:

I'm just wondering, if this proposed fix with this strange looking IFS is the
right direction. Usually if I've problem with whitespaces in filenames, it's
because I've forget to use xargs. If I'm not mistaken, this [ -n "$entry" ] ||
break construct could be replaced with xargs -r, there's even XARGS:=xargs -r
in rules.mk. Just my two cents.

1. https://github.com/openwrt/openwrt/pull/1806#issuecomment-475454138

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
