Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930491DF2DD
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 01:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/JxQXsLMYOY5cp4h+/12w3VALUMNnjcCnsA03VZdQYM=; b=Uadjz+48WNVSAnAU2Klf3KhIpE
	WSI7jHmZ2iAmjSzs7KcM6In9rNHl+faZUz3ZYxzhxdStoxxCCe6IojD/zDrleURIXk6w+X84SbqrK
	zmAleb9v1ZfdEI+z51hcxmAy/CjYK9E1yvp4KBOsB/2IEYRxOmqEgFfhaA3K+vH+2noq474MtKDgM
	xk9dOrW4DCB2T4VaiswgPhxn58B6vWAkVT8PBBJ7xq4++I0wNxdhPk9UE3xREUzrtsJBKZ0xdWLTy
	YQKbwIpS3wdh018pLm5EhjlJM1l8jDY1dqe3AdPFYc2ON3gmmUy1NZYZeg2b1hDrqCuKQ9J/P6P0Z
	fsiEdNuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGwv-0000kS-Uu; Fri, 22 May 2020 23:19:33 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGwZ-0000ba-JB
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 23:19:13 +0000
Received: by mail-ot1-x343.google.com with SMTP id f18so9498098otq.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 16:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=51C4MwGyxrX1XjXj+mDFhmsixjZCDxBq0R10Y2sjn7E=;
 b=kV22Sts0nhXAL7FCPFIin+5l5kd5i6UJbOXG4JFxF9jvNBFOmtJ4ptvi7V6NqwQnP+
 /2J2n3mwDwb5eg21R5FtvYO9wCn4/VnOkrfapbssANgbW401DgqL+IKEf9Y2ePD+N9Ub
 tH0wE5hHvZZgoha5h2MRZc53gLWnDlRAO9GfCLlprDPHZm6+qu31YKdR4o8xy/FmhmPo
 ZhvZ0mRzLrg+m9Agq0y308brS+sVsYKiQ0rWnC/Uyu+TXLTe7DgF+lqMSo1uEOElHNWi
 laxA5ho8EdB5Nrwh4UnvyCV8JaeH/b+yNv2kmH3xKMX8dbq2Wxlxue3vYgidsHTkUFEb
 DA2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=51C4MwGyxrX1XjXj+mDFhmsixjZCDxBq0R10Y2sjn7E=;
 b=kfueyxUhz+g7Eczx9ahBcAopOvJ4dywAf4owU9mM7EU5FDLlBb/5sM3/BwutbrymFq
 LwAtAjitQxNRXCN7V5OwaeGb67reF8b5ng9ySCof/uVJvlLHZC93rohXH1rl3dv3WqXR
 wBRaA2fiLk/e6FUgHQVrY5Dueg4MTDVtb+V4lsIbI5feiszivrhm/H6fAd5em0JNB9r8
 b0gUdRvyqlvEmVohGq9o8WnxH0dCuCT+R2VCf9TbLRTAmq85RmPWTyLFV6+3/6qTLTgs
 h+LBhCiDnbqacyfZTC8Th+ARGcLOmHtjKOvxpPPLeuaBFJsgp8Wm1yEzeNw0aRFu+7cQ
 +EgQ==
X-Gm-Message-State: AOAM530JhCcmuQO623rG6i5tJWvd89NQbK8+qHfF8ZVuDqgzYFSCpOjx
 07IBf5JuoIjtHEs38RWNcwDWwTFvLUUN2ZjFpaHnu/94STA=
X-Google-Smtp-Source: ABdhPJzXRXERGTko4VCXIiYajbUEZQNPLOkPldwTnPllhNkpzmUV3NvpA7/Rc4pgVl3U9cjwDSGM9ahukOSeh7rIaiE=
X-Received: by 2002:a05:6830:19e9:: with SMTP id
 t9mr13058516ott.186.1590189549474; 
 Fri, 22 May 2020 16:19:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200522231647.64742-1-rosenp@gmail.com>
In-Reply-To: <20200522231647.64742-1-rosenp@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 22 May 2020 16:18:58 -0700
Message-ID: <CAKxU2N-ZzqeMnCrxGqtmuPfrRCLX36v=FzYqxKYKck3ZZmJoig@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_161911_651112_BEBBCD1F 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] libconfig: remove
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

On Fri, May 22, 2020 at 4:16 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> No package in base uses libconfig. Everything is in the packages feed.
https://github.com/openwrt/packages/pull/12255
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/libs/libconfig/Makefile | 60 ---------------------------------
>  1 file changed, 60 deletions(-)
>  delete mode 100644 package/libs/libconfig/Makefile
>
> diff --git a/package/libs/libconfig/Makefile b/package/libs/libconfig/Makefile
> deleted file mode 100644
> index 39fcddf082..0000000000
> --- a/package/libs/libconfig/Makefile
> +++ /dev/null
> @@ -1,60 +0,0 @@
> -#
> -# Copyright (C) 2008-2012 OpenWrt.org
> -#
> -# This is free software, licensed under the GNU General Public License v2.
> -# See /LICENSE for more information.
> -#
> -
> -include $(TOPDIR)/rules.mk
> -
> -PKG_NAME:=libconfig
> -PKG_VERSION:=1.7.2
> -PKG_RELEASE:=2
> -
> -PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
> -PKG_SOURCE_URL:=https://hyperrealm.github.io/libconfig/dist/
> -PKG_HASH:=7c3c7a9c73ff3302084386e96f903eb62ce06953bb1666235fac74363a16fad9
> -
> -PKG_FIXUP:=autoreconf
> -PKG_INSTALL:=1
> -
> -PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
> -PKG_LICENSE:=LGPL-2.1+
> -
> -include $(INCLUDE_DIR)/package.mk
> -
> -define Package/libconfig
> -  SECTION:=libs
> -  CATEGORY:=Libraries
> -  TITLE:=Configuration File Library
> -  URL:=http://www.hyperrealm.com/libconfig/
> -  ABI_VERSION:=11
> -endef
> -
> -define Package/libconfig/description
> - Libconfig is a simple library for manipulating structured configuration
> - files. This file format is more compact and more readable than XML. And
> - unlike XML, it is type-aware, so it is not necessary to do string
> - parsing in application code.
> -
> - Libconfig is very compact -- just 38K for the stripped C shared
> - library (less than one-fourth the size of the expat XML parser library)
> - and 66K for the stripped C++ shared library. This makes it well-suited
> - for memory-constrained systems like handheld devices.
> -endef
> -
> -CONFIGURE_ARGS += \
> -       --enable-shared \
> -       --disable-static \
> -       --disable-cxx
> -
> -define Build/InstallDev
> -       $(CP) $(PKG_INSTALL_DIR)/* $(1)/
> -endef
> -
> -define Package/libconfig/install
> -       $(INSTALL_DIR) $(1)/usr/lib
> -       $(CP) $(PKG_INSTALL_DIR)/usr/lib/libconfig.so.* $(1)/usr/lib/
> -endef
> -
> -$(eval $(call BuildPackage,libconfig))
> --
> 2.26.2
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
