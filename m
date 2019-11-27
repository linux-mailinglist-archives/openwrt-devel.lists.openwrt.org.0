Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC3C10AE32
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 11:49:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SCOMMZodUFx1Xlvrp7MGT5LcnCihuIAe11iCLpbYYr8=; b=pwD0LJz2lsU+ORObJiY86XWGm2
	Gl1djSrOngzTg0hojP0B5nSt5CGfOda7CU1HWHL5hD+N83555GIwBA6KHlBipwhEKIrx9dNRrzz9t
	fr6JOZyZSSb+36hXDaIYDk4SAHGXjXx6JaWMrjIZjYn9ZofUNQ+pv0b7+6M/sgfWqeY+z+qrZshHI
	Y7D1d1R5WimOExBMckyWTx/82W22oSUgLTTF13jELB5PouZq9LsmD1o1uOaRkxTr+j+rYOcKEijRB
	TxBGDSUl89SDPuvm0UpEZfESrCuux0tpvIDG18FUAcfvBhnd2+3bSNj+4umR2kPsUYXm8wr/Xgvl9
	WTszKuIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZutD-00005s-ET; Wed, 27 Nov 2019 10:49:43 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZut0-0008WQ-NO
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 10:49:32 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 100324FEA;
 Wed, 27 Nov 2019 11:49:28 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id af07b7ed;
 Wed, 27 Nov 2019 11:49:17 +0100 (CET)
Date: Wed, 27 Nov 2019 11:49:17 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20191127104917.GB37269@meh.true.cz>
References: <20191125224418.266082-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125224418.266082-1-rosenp@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_024930_921377_1819FE2B 
X-CRM114-Status: GOOD (  12.45  )
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
Subject: Re: [OpenWrt-Devel] [PATCHv3] tools/pkg-config: Replace with pkgconf
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

Rosen Penev <rosenp@gmail.com> [2019-11-25 14:44:18]:

Hi,

you're trying to do a lot of things in one patch, making it hard to review,
please split it up.

1. switch to pkgconf
2. shell check fix
3. meson fix

> -ifeq ($(HOST_OS),Darwin)
> -HOST_LDFLAGS += -framework CoreFoundation -framework Carbon
> -endif

So it compiles and works on macOS just fine? You can ask Kevin (ldir) on IRC
to build test this for you.

> diff --git a/tools/pkgconf/files/pkg-config b/tools/pkgconf/files/pkg-config
> new file mode 100755
> index 0000000000..6579a14f86
> --- /dev/null
> +++ b/tools/pkgconf/files/pkg-config

What has happened with the old pkg-config? Have you forget to `git mv/git add`?

> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +"$(dirname "$0")/pkg-config.real" \

This change was suggested by shellcheck? Why is this change needed? This needs
to go into separate commit with a proper description.

> diff --git a/tools/pkgconf/patches/0001-f-pkgconf-meson.patch b/tools/pkgconf/patches/0001-f-pkgconf-meson.patch
> new file mode 100644
> index 0000000000..3ed47adc95
> --- /dev/null
> +++ b/tools/pkgconf/patches/0001-f-pkgconf-meson.patch
> @@ -0,0 +1,31 @@
> +From 05ef58532b75c36fc19eb9d2d1fe4c46195706bf Mon Sep 17 00:00:00 2001
> +From: Andre Heider <a.heider@gmail.com>
> +Date: Mon, 25 Nov 2019 09:36:47 +0100
> +Subject: [PATCH] f pkgconf/meson

This patch needs a better name and better explanation, description. This is
some upstream backport or whats the origin of this patch?

> +---
> + tools/pkgconf/patches/meson.patch | 12 ++++++++++++
> + 1 file changed, 12 insertions(+)
> + create mode 100644 tools/pkgconf/patches/meson.patch
> +
> +diff --git a/tools/pkgconf/patches/meson.patch b/tools/pkgconf/patches/meson.patch
> +new file mode 100644
> +index 0000000000..e0a2946f32
> +--- /dev/null
> ++++ b/tools/pkgconf/patches/meson.patch
> +@@ -0,0 +1,12 @@
> ++diff -ur pkgconf-1.6.3-orig/cli/main.c pkgconf-1.6.3/cli/main.c
> ++--- pkgconf-1.6.3-orig/cli/main.c	2019-07-12 13:53:12.000000000 +0200
> +++++ pkgconf-1.6.3/cli/main.c	2019-11-25 09:32:53.512784479 +0100
> ++@@ -1002,7 +1002,7 @@
> ++ 
> ++ 	if ((want_flags & PKG_VERSION) == PKG_VERSION)
> ++ 	{
> ++-		if (argc > 2)
> +++		if (0 && argc > 2)

Uh?

It's just me or this seems like a hack, something which should be fixed in
meson instead? I would prefer to have a patch which is accepted upstream.
pkgconf is maintained, right?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
