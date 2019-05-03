Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E125E1330B
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 19:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuh2STiTM2OHqUAZlTwy0hnEKttdUPHqZUDbvdbXvPo=; b=YkXxurK2iLPxAw
	3JQytAo4FGrmJXiOMjLWU/s7RBxJW+vnjBXliThTPCqw3jUS7L0ukYsmR993Q2ks0/p4m8yIMwaDz
	dbo9rdp3E/6Ab8rkn0gJX8KZaDgX0KBkyK8cSdbE8MMxu5sJiv387bsNlwtiCmGlAbl6cw3EOMFmN
	2HLAFlg8B/1JcNl8kVz4mpZbmopSB4+kvezbbzaWgocdzcgsXU9ooILNzn9Q7fnAoM0t9RL7eArtn
	jd/aX5UStVh7+rtQEOFVxBj8EFcpMvEupDK1cZdA29FGglvDla4IK2OYBG4yhsk+7MUyFGSFqIxgG
	HmEXcBjdEy9fvTbwx0LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbos-0003tt-P5; Fri, 03 May 2019 17:17:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbom-0003su-HV
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 17:17:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2BAEE4E74;
 Fri,  3 May 2019 19:17:50 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ef9cce00;
 Fri, 3 May 2019 19:17:48 +0200 (CEST)
Date: Fri, 3 May 2019 19:17:48 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190503171748.GA3101@meh.true.cz>
References: <20190501170445.4607-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501170445.4607-1-rosenp@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_101752_734079_AB8285DE 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-05-01 10:04:45]:

Hi,

> The 8 year old file does not have any ARC definitions.

I'm wondering if we need to cary another patch forever, thus if it wouldn't be
better to backport upstreamed patch and/or bump to fixed upstream version.

-- ynezz

> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/libs/libbsd/Makefile                  |  2 +-
>  package/libs/libbsd/patches/010-fix-arc.patch | 15 +++++++++++++++
>  2 files changed, 16 insertions(+), 1 deletion(-)
>  create mode 100644 package/libs/libbsd/patches/010-fix-arc.patch
> 
> diff --git a/package/libs/libbsd/Makefile b/package/libs/libbsd/Makefile
> index 4101d5e0ee..63b9ceafc3 100644
> --- a/package/libs/libbsd/Makefile
> +++ b/package/libs/libbsd/Makefile
> @@ -2,7 +2,7 @@ include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=libbsd
>  PKG_VERSION:=0.8.7
> -PKG_RELEASE:=2
> +PKG_RELEASE:=3
>  
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
>  PKG_HASH:=f548f10e5af5a08b1e22889ce84315b1ebe41505b015c9596bad03fd13a12b31
> diff --git a/package/libs/libbsd/patches/010-fix-arc.patch b/package/libs/libbsd/patches/010-fix-arc.patch
> new file mode 100644
> index 0000000000..7b1bcbe348
> --- /dev/null
> +++ b/package/libs/libbsd/patches/010-fix-arc.patch
> @@ -0,0 +1,15 @@
> +--- a/src/local-elf.h
> ++++ b/src/local-elf.h
> +@@ -53,6 +53,12 @@
> + #endif
> + #define ELF_TARG_DATA	ELFDATA2LSB
> + 
> ++#elif defined (__arc__)
> ++
> ++#define ELF_TARG_MACH	EM_ARC
> ++#define ELF_TARG_CLASS	ELFCLASS32
> ++#define ELF_TARG_DATA	ELFDATA2LSB
> ++
> + #elif defined(__arm__)
> + 
> + #define ELF_TARG_MACH	EM_ARM

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
