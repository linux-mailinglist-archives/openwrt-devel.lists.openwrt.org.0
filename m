Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCA973067
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 15:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HU3hhjFIxpXflhi1knXCg0KleFdB+PDXBX3yonpkH0k=; b=YiYuIYdtFdSv/XL7SiE1YksSsI
	E+7F2eaMB6mqVTadtUwQHy1irHX0sXr0LdduQiB647dWxnlFZdvIG/8Gm+Pvz1zXBMIlKt81BXylt
	ta5MuLDXrOuW0weRFKQ/SScDUj6W3yD8zWtSdBIPS2EZcwPa9MvvA5NNM7krLwpTcHg9JY9BNIedi
	sK8zDGcfOSJEfb7VBTECXMJL+jbnZriSJxVThiiG7FRMmA0AT6tB8LFBgg9QWWQwTW9xxJPy4QFyv
	IIqOKKLYMFhiPJWWD8u4T3oxfJUQIbf3kSEAkn3xKR9GMAlk6idPZaj/kI6bxaKuBqcZbSCmHsGoZ
	R+eFghBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHnM-0004ts-SU; Wed, 24 Jul 2019 13:59:04 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHn9-0004sk-Bz
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 13:58:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D327A49E3;
 Wed, 24 Jul 2019 15:58:47 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 7b8afd7a;
 Wed, 24 Jul 2019 15:58:40 +0200 (CEST)
Date: Wed, 24 Jul 2019 15:58:40 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20190724135840.GB74752@meh.true.cz>
References: <20190724134035.3066-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724134035.3066-1-freifunk@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065851_559410_6FA7D4F5 
X-CRM114-Status: UNSURE (   8.53  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] octeon: Replace backticks by $(...)
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

Adrian Schmutzler <freifunk@adrianschmutzler.de> [2019-07-24 15:40:35]:

You've forget to provide commit description/message in all your patches,
usually answer to "Why do you need this changes?" or "Why are you proposing
this changes?"

> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>  target/linux/octeon/base-files/lib/upgrade/platform.sh | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/target/linux/octeon/base-files/lib/upgrade/platform.sh b/target/linux/octeon/base-files/lib/upgrade/platform.sh
> index 0e4ca37629..5d1a53a196 100755
> --- a/target/linux/octeon/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/octeon/base-files/lib/upgrade/platform.sh
> @@ -85,8 +85,8 @@ platform_check_image() {
>  	er | \
>  	erlite)
>  		local tar_file="$1"
> -		local kernel_length=`(tar xf $tar_file sysupgrade-$board/kernel -O | wc -c) 2> /dev/null`
> -		local rootfs_length=`(tar xf $tar_file sysupgrade-$board/root -O | wc -c) 2> /dev/null`
> +		local kernel_length=$(tar xf $tar_file sysupgrade-$board/kernel -O | wc -c 2> /dev/null)
> +		local rootfs_length=$(tar xf $tar_file sysupgrade-$board/root -O | wc -c 2> /dev/null)

BTW, this looks more then backticks replacement, but also subshell removal.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
