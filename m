Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A01132F0
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 19:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTrBL/3QXpVfqczwkOvSjv9031ACxB3Hn+Ch8y5AP0g=; b=SIBEgIFowETO/E
	x+S4UdKQJRyexOmkn2szIHoZmIekxbA+6vA47iQK8MTnk+c6YWdk2HmdYS3kShw4GzqBor6hAwOmL
	GqkrOFxk99TDDbxlIBFQw/WNEMLzb9f7aqpNX88R/NYeV4uXfnBuazWK9bDe2RcUzKe/6hRAZfLrG
	4hhyROeKngwja/XgRoU+AxPPBPEDF+TnWENqnu9/3mmnIYMPmyWpuW6kKf/Z7au5o82S6a9dxaMB1
	SRPxgBAcOq6dMSag1RiS4Mg2C6sL3iXKW3GnU1r/5nmpF4MjtF/8tuKQfJlb/bKsDkeQbuj4efkaG
	em/iBfsAF8XubKEkqCkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbjW-0001qZ-Ig; Fri, 03 May 2019 17:12:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbjP-0001q5-0e
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 17:12:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A97194E66;
 Fri,  3 May 2019 19:12:17 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 3ed5aac6;
 Fri, 3 May 2019 19:12:16 +0200 (CEST)
Date: Fri, 3 May 2019 19:12:16 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190503171216.GA29467@meh.true.cz>
References: <20190501170520.4733-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501170520.4733-1-rosenp@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_101219_211958_D37FFE51 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] elfutils: Fix compile with uClibc-ng
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-05-01 10:05:20]:

Hi,

> Probably glibc too. argp_help takes a char *. not const char *.

I'm wondering if we need to cary another patch forever, thus if it wouldn't be
better to backport upstreamed patch and/or bump to fixed upstream version.

-- ynezz

> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/libs/elfutils/Makefile                        |  2 +-
>  .../libs/elfutils/patches/200-uclibc-ng-compat.patch  | 11 +++++++++++
>  2 files changed, 12 insertions(+), 1 deletion(-)
>  create mode 100644 package/libs/elfutils/patches/200-uclibc-ng-compat.patch
> 
> diff --git a/package/libs/elfutils/Makefile b/package/libs/elfutils/Makefile
> index c6b1d6df65..e148df096c 100644
> --- a/package/libs/elfutils/Makefile
> +++ b/package/libs/elfutils/Makefile
> @@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=elfutils
>  PKG_VERSION:=0.176
> -PKG_RELEASE:=1
> +PKG_RELEASE:=2
>  
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
>  PKG_SOURCE_URL:=https://sourceware.org/$(PKG_NAME)/ftp/$(PKG_VERSION)
> diff --git a/package/libs/elfutils/patches/200-uclibc-ng-compat.patch b/package/libs/elfutils/patches/200-uclibc-ng-compat.patch
> new file mode 100644
> index 0000000000..b0ae1c7401
> --- /dev/null
> +++ b/package/libs/elfutils/patches/200-uclibc-ng-compat.patch
> @@ -0,0 +1,11 @@
> +--- a/lib/color.c
> ++++ b/lib/color.c
> +@@ -132,7 +132,7 @@ valid arguments are:\n\
> +   - 'auto', 'tty', 'if-tty'\n"),
> + 		     program_invocation_short_name, arg);
> + 	      argp_help (&color_argp, stderr, ARGP_HELP_SEE,
> +-			 program_invocation_short_name);
> ++			 (char *) program_invocation_short_name);
> + 	      exit (EXIT_FAILURE);
> + 	    }
> + 	}

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
