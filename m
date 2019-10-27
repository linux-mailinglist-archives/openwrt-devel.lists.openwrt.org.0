Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83881E64FD
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 20:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koS67/ymOempFS1HvNyIBsGRBX+cCPY7+x9lzudMWjY=; b=blaVcPruM0/HIJ
	1gIf4QUBkCRKol4nzao69PADQCoJHMugYGqbyQq6uN8Ss241p3H9EMGpCTBveZJd8wPOVBHNa6785
	Rt8HsD62LB9ZMvBjkPlY26XDdyEJXee/xfL9mrPYdxWhvUEnlys+/9F+tw7KRIM2YgwpqVt/wKCJC
	Zmu9mOPrAlTnHY0KfrNF5UyvYpv/ygcV7yCWnWrHFY8yGJzbZie7u82Bn856/8IrEeMmeEKftBsfp
	uB+HidMiXKqmw5Hm8fQUp9Rcs4Wns+1ZiG1zqC6on+a2PwK7IKe4yBSPCdTbxkMVr9d7Zhj1muBgP
	G++TAEfGmwlXUiJ3BvpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOnrH-0008Rt-2t; Sun, 27 Oct 2019 19:05:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOnr8-0008RN-4x
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 19:05:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id q70so7223590wme.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 27 Oct 2019 12:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fz/sfafZgYACZH0z96c7EywTNVvuJyuAWJUZRyLCetY=;
 b=Pg/DOITF37q1sXoeRx1DWt8W1lfggycYzejNV1iSbgEU0xHvnWh9FibfkaYKSfwpqA
 pASN5aWpipECz+CURconZbrBU8F6P1wra7Wa7AcmHfp5FrZPcSL8i4BhCGGkVSQAfOXp
 ouMAMZeiDeiBOTvD6W0OzpIrofO4Z9SEdtoLi9hLEWOM7l2NyIP1XnT7FfBgnVaChElx
 mIJwTifqbI4voWupOxc2hc7ONDBlnWl3gkkOLtxWVdOIMbSW+dxMyOEKNUzIlQiZOrYK
 +QeF1Ck1XGw//7+xspizgAKnPg/SsmbmzsmOYIBnWWGirHlVRwCtSQVpGNyDzciYQNJB
 Gumg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fz/sfafZgYACZH0z96c7EywTNVvuJyuAWJUZRyLCetY=;
 b=EaYSbRQQ+myOtir6+8c3MRlWWvKlWE+wZFLCM8LGPcihtY3R1ad/jEcQ16is9R34Ga
 dCU2XEeoWHKtPDtkUye47mzeA+jXpGJKyLqnUCNz9IgCorXX8Hi6CPWoBpYXcI9ACaSB
 SMo74NIm02gXjQb8UBvscVFJHytOgZBerBAUqp2Rw9OJHAv55pReX1jRnFjumtYW1j81
 E9VRdiiEjKf6sYwRwhDWXroaMFXzx6ax1IrXta+wbM3lhZzhxruATxGg8FDIEMGEIfT1
 oeGpb14T9eJF4N0MjlC6K3lX6Ljql6a+GcS6M4Gy7pSwx6/hf+cfWRi9jUQGxTqjBe+r
 zAvw==
X-Gm-Message-State: APjAAAVfFzD1PILB9jr7SjdU0pDjqrnVrH8Nl6OgyA2ArFWxKfYIWoUe
 Wq1xW3NAQEtFYTt+Rs+3ljIiGI3M2kVutotQvWc=
X-Google-Smtp-Source: APXvYqwDSwPSTZzg8UfDaXhU33L67Hu1B3m8bkpgHnSpAJnxyFTAGnznZ35OdmvEonyJMbNsNCYotebWyJopwe0K4IQ=
X-Received: by 2002:a05:600c:2503:: with SMTP id
 d3mr13325640wma.44.1572203135983; 
 Sun, 27 Oct 2019 12:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191027174438.25795-1-hauke@hauke-m.de>
 <20191027174438.25795-2-hauke@hauke-m.de>
In-Reply-To: <20191027174438.25795-2-hauke@hauke-m.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 27 Oct 2019 12:05:24 -0700
Message-ID: <CAKxU2N-fFRibJJqdQHgRqPiSTQ0Pi-cQe-Tir-Ac5tC5kgK2+g@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_120538_217238_DF283DA1 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/6] buildsystem: Make PIE ASLR option
 tristate
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
Cc: Daniel Engberg <daniel.engberg.lists@pyret.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>, lynxis@fe80.eu,
 Dave Taht <dave@taht.net>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Oct 27, 2019 at 10:46 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> This tristate choose allows to select to build only some applications
> with PIE enabled. On MIPS binaries are getting about 30% bigger when PIE
> is activated for the, which is a huge increase.
Some of the size increase can be mitigated with extra compile-time options:

TARGET_CFLAGS += -ffunction-sections -fdata-sections -flto
TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

LTO sometimes causes problems but the others should be safe.

PKG_ASLR_PIE applies $(FPIC) to both C and LDFLAGS. I've noticed that
applying it only to the former increases the size but not as much as
with both. No idea why.
>
> Network exposed applications like dnsmasq should then be build with PIE
> enabled, but some applications which are normally not parsing data from
> the network do not have it activated. The regular option should give a
> good trade off between extra flash and RAM memory usage and security.
>
> This changes the default from building no applications with PIE to build
> some specifically marked applications with PIE enabled. This option is
> only activated for targets with bigger flash and RAM to not consume
> extra memory on the very small targets. On SDK builds the Regular option
> should always be selected, because some tiny targets share the
> applications with big targets and only the images for the tiny targets
> should contain the none PIE applications, but the images for the normal
> targets should use PIE. The shared packages should always use PIE when
> it should be normally activated.
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>
> I hope this !SDK option works. I haven't fully tested this.
> I want to make sure this is activated on the targets which are not
> small, but not activate it in the tiny images. For extra installed
> packages it should be activated.
>
>
>  config/Config-build.in | 22 ++++++++++++++++++----
>  include/hardening.mk   |  9 ++++++++-
>  2 files changed, 26 insertions(+), 5 deletions(-)
>
> diff --git a/config/Config-build.in b/config/Config-build.in
> index 872e5c12ab..aa05e34f56 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -212,11 +212,10 @@ menu "Global build settings"
>                   this per package by adding PKG_CHECK_FORMAT_SECURITY:=0 in the package
>                   Makefile.
>
> -       config PKG_ASLR_PIE
> -               bool
> +       choice
>                 prompt "User space ASLR PIE compilation"
> -               select BUSYBOX_DEFAULT_PIE
> -               default n
> +               default PKG_ASLR_PIE_NONE if ((SMALL_FLASH || LOW_MEMORY_FOOTPRINT) && !SDK)
> +               default PKG_ASLR_PIE_REGULAR
>                 help
>                   Add -fPIC to CFLAGS and -specs=hardened-build-ld to LDFLAGS.
>                   This enables package build as Position Independent Executables (PIE)
> @@ -227,6 +226,21 @@ menu "Global build settings"
>                   to predict when an attacker is attempting a memory-corruption exploit.
>                   You can disable this per package by adding PKG_ASLR_PIE:=0 in the package
>                   Makefile.
> +                 Be ware that ASLR increases the binary size.
> +               config PKG_ASLR_PIE_NONE
> +                       bool "None"
> +                       help
> +                         PIE is deactivated for all applications
> +               config PKG_ASLR_PIE_REGULAR
> +                       bool "Regular"
> +                       help
> +                         PIE is activated for some binaries, mostly network exposed applications
> +               config PKG_ASLR_PIE_ALL
> +                       bool "All"
> +                       select BUSYBOX_DEFAULT_PIE
> +                       help
> +                         PIE is activated for all applications
> +       endchoice
>
>         choice
>                 prompt "User space Stack-Smashing Protection"
> diff --git a/include/hardening.mk b/include/hardening.mk
> index 60f39428e8..4e49e6b1b9 100644
> --- a/include/hardening.mk
> +++ b/include/hardening.mk
> @@ -7,6 +7,7 @@
>
>  PKG_CHECK_FORMAT_SECURITY ?= 1
>  PKG_ASLR_PIE ?= 1
> +PKG_ASLR_PIE_REGULAR ?= 0
>  PKG_SSP ?= 1
>  PKG_FORTIFY_SOURCE ?= 1
>  PKG_RELRO ?= 1
> @@ -16,12 +17,18 @@ ifdef CONFIG_PKG_CHECK_FORMAT_SECURITY
>      TARGET_CFLAGS += -Wformat -Werror=format-security
>    endif
>  endif
> -ifdef CONFIG_PKG_ASLR_PIE
> +ifdef CONFIG_PKG_ASLR_PIE_ALL
>    ifeq ($(strip $(PKG_ASLR_PIE)),1)
>      TARGET_CFLAGS += $(FPIC)
>      TARGET_LDFLAGS += $(FPIC) -specs=$(INCLUDE_DIR)/hardened-ld-pie.specs
>    endif
>  endif
> +ifdef CONFIG_PKG_ASLR_PIE_REGULAR
> +  ifeq ($(strip $(PKG_ASLR_PIE_REGULAR)),1)
> +    TARGET_CFLAGS += $(FPIC)
> +    TARGET_LDFLAGS += $(FPIC) -specs=$(INCLUDE_DIR)/hardened-ld-pie.specs
> +  endif
> +endif
>  ifdef CONFIG_PKG_CC_STACKPROTECTOR_REGULAR
>    ifeq ($(strip $(PKG_SSP)),1)
>      TARGET_CFLAGS += -fstack-protector
> --
> 2.20.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
