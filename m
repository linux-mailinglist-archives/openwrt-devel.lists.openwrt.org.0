Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F392134F78
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 23:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nQMGhIyn4M87V8KrwR51b59sf5iigRJyEukXZve6tDI=; b=PUTfP2Sg2Xx2IQBdKWt1jQlgFS
	ubHGZ5bdILTRw2rowDOpRLTnZrwr4sm+WQEzXqjbt2B+dcdbgHGSwtxpxuOHtKsIn3xqTTNbr/Sos
	tu2xoewijQfCrx7lfeMZmSrpARcSWsAd+6YLjvbebUNa4RjIc6tCma7Wy1J2nVTKrpaUVm0MSGIza
	HnrsnKK9viiqKmLgu2MRinpG5MkrWYlWCbsQByIHjWIIfN6tFFZF+n1gjrli7snv8iQufyVA3oRyC
	M4S6EHyRWdbUtIa+oB7VR5Wa9NoTA63UtGrsqTonBaMrWMWmAvbjpW0Q0nf2aY2/nLt9eEdpfWKhE
	4m9vb2aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipJyM-00038V-48; Wed, 08 Jan 2020 22:38:42 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipJyE-00037Q-RT
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 22:38:36 +0000
Received: by mail-oi1-x243.google.com with SMTP id z64so4195969oia.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Jan 2020 14:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=cxDXgH35Z55tXcvLAW8OlN7DefmiIAgbMeUxIC9jkXw=;
 b=vD4udCFmnZDHwBxNaBR1uCkCd18JyKzC+YtqpVX7/0aGCBMOuTTH+HdQ2xgQaI27yC
 dy51SL9q8aViB2hN+FoFKOobtyYp92LfSJs34Tx2MGHeZSlXChFsz4UR0FKfCnNCh/6t
 ghO9vUOk1mHO3qBIi2ZhPnYra8riwnc1LO5KnkY9lVFQ1ETS7AnNAQogarlP/PrjVQyM
 axq3col2mrBTIrxQRkDPxenpIthUqxTuZyVQBux8VKJYiRtCgvnIEM0nEgC2RSw7QcYZ
 b5OpmdACQyt+05qIAkVQjJWgZx0vZEE/WIlcuKhWATG08mWjaJiQxJ0aOGGXBfCcpWl6
 OAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=cxDXgH35Z55tXcvLAW8OlN7DefmiIAgbMeUxIC9jkXw=;
 b=XP2SuOsZpMBzZXCsyImg4RDhZfz3nkJ7VRpZvUdtqkPjfwhN4sPPGaXvu29L6NxZQf
 VmzMf5aIRv7gT8GEB/sKcorLeF6IHad1lmS8FDIqvI+np7655jwTYUXKKMIrbhvHSkXi
 AmlkX4++2zJ0ZzWih9AzWyvW3exBN0V5uE4x0PNWE9AjbGRsZvZbw5qE2GV7dEeXpu9Z
 H1AqS9OeT5QgPEM7iKuwgSNIhNkB2akDzbSPKBfBLzDPbzrXjFqW5SgLmuywpgvZ5+6B
 MuyTRdR/Vb1+4kxAqsbbfrgMUswE7B6KYYnpw6vZ5jeHjq28Gp0ri3yQQSey4m+oadFE
 ArlQ==
X-Gm-Message-State: APjAAAVS/8wwyYMIRfwwzb8eQ5hEnAp7ijokjxBveGRRB0AvtLaN3PZc
 S+v4MOwFQbiJRUMew4yjEUhwniIR0g3zkY4rBsge3tnR2Bc=
X-Google-Smtp-Source: APXvYqyQuZbfFN/mlXBXE9WbJZSLRSCQmeKI1eB6Ot3GybtevM6lZzxRhY7twXKW0ggMz+FfeB6T9e5lz1/DxaVeogA=
X-Received: by 2002:aca:72d0:: with SMTP id p199mr814367oic.40.1578523113675; 
 Wed, 08 Jan 2020 14:38:33 -0800 (PST)
MIME-Version: 1.0
References: <20200108223542.599823-1-rosenp@gmail.com>
In-Reply-To: <20200108223542.599823-1-rosenp@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 8 Jan 2020 14:38:22 -0800
Message-ID: <CAKxU2N-FxV4FEo2Sf4F_8ez0iCu1O+E2E9rc1GP8ENdpmZJdgQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_143834_910499_4C39E63A 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain/nasm: Do not build for
 pentium targets
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Jan 8, 2020 at 2:35 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> NASM builds completely broken files with pentium targets. This causes
> ffmpeg to fail compilation. Instead of working around the problem in the
> ffmpeg Makefile, it's easier to just not build for broken platforms.
>
> Not even objdump can figure out what the generated files are.
Another way to fix this is the following patch:

--- a/include/target.mk
+++ b/include/target.mk
@@ -177,8 +177,8 @@ ifeq ($(DUMP),1)
     CPU_CFLAGS_octeonplus = -march=octeon+ -mabi=64
   endif
   ifeq ($(ARCH),i386)
-    CPU_TYPE ?= pentium
-    CPU_CFLAGS_pentium = -march=pentium-mmx
+    CPU_TYPE ?= pentium2
+    CPU_CFLAGS_pentium2 = -march=pentium-mmx
     CPU_CFLAGS_pentium4 = -march=pentium4
   endif
   ifneq ($(findstring arm,$(ARCH)),)

The problem with that one is that I have no hardware to test it on. In
theory it should work as mtune is identical.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  toolchain/Config.in | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/toolchain/Config.in b/toolchain/Config.in
> index 762f4e10d7..f55e756877 100644
> --- a/toolchain/Config.in
> +++ b/toolchain/Config.in
> @@ -226,7 +226,7 @@ source "toolchain/gcc/Config.in"
>
>  config NASM
>         bool
> -       depends on ( i386 || x86_64 )
> +       depends on (x86_64 || (i386 && !(TARGET_x86_geode || TARGET_x86_legacy)))
>         prompt "Build nasm" if TOOLCHAINOPTS
>         default y
>         help
> --
> 2.24.1
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
