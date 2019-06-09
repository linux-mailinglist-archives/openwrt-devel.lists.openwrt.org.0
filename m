Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E753A43B
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 09:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wtyB3yXa0sTC2H1w7z3cI6ZUElemQmL6/fdGMP6KEY=; b=PoSWtykOXhM2D0
	NIEZ6TmZ3bE73d4Ra5zm1QbVyyesZEYaJpaxXNDPc2BY2YtL++5/1s91YdUaGXSRL6A82q8a2L1nT
	5zAeOG70iLnyIKf9L3LUnT5xw9++q9TFBf2wO5zlBKKEM8MXz5XJjTejfgNaYjIDue9xG/SRdHB8w
	gz7gLGW+3EItTbzvArc6pqc1C4kWKPEkOpk4BQSsf6oC9NS6zXUSNb372QwznoDRfw8e7kJS8coYo
	fjvQezh4elrTyEpCwmysw5rN5Nurs5+ZyzqHyBhJ1cKU9YLp6AXOY2UT5b9bwgLiF9evwgd3B1BeP
	n1MwE/QxBzoFhNKANqIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZsaF-0006dT-Ej; Sun, 09 Jun 2019 07:49:43 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZsa3-0006b9-C1
 for openwrt-devel@lists.openwrt.org; Sun, 09 Jun 2019 07:49:33 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 2D307A01AD;
 Sun,  9 Jun 2019 09:49:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id vlLRviG3kTOV; Sun,  9 Jun 2019 09:49:17 +0200 (CEST)
To: John Crispin <john@phrozen.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20190605161522.24420-1-john@phrozen.org>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
 U9K2P2+nz7is4sF1hNVarw==
Message-ID: <3a851143-1e46-86b2-9736-4017822b4bed@hauke-m.de>
Date: Sun, 9 Jun 2019 09:49:15 +0200
MIME-Version: 1.0
In-Reply-To: <20190605161522.24420-1-john@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_004931_723631_817A991D 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] toolchain: add support for custom
 toolchains
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

On 6/5/19 6:15 PM, John Crispin wrote:
> The requirement for being able to add custom src toolchains to the build
> system has been brought forward by the members of the prpl foundation.
> This patch tries to address this requirement by allowing a ned folder to be
> loaded into the tree call toolchain_custom. The subfolders contained within
> have the same layout as the toolchain folder. By placing optional Makefiles
> into these subfolders It is possible to override the versions of the various
> toolchain components aswell as their patch sets and make templates.
> 
> Signed-off-by: John Crispin <john@phrozen.org>
> ---
>  rules.mk                       | 5 +++++
>  toolchain/Config.in            | 5 +++++
>  toolchain/Makefile             | 2 ++
>  toolchain/binutils/Makefile    | 4 ++++
>  toolchain/gcc/common.mk        | 6 ++++++
>  toolchain/gcc/initial/Makefile | 4 ++++
>  toolchain/gcc/minimal/Makefile | 4 ++++
>  toolchain/gdb/Makefile         | 4 ++++
>  toolchain/musl/Makefile        | 2 ++
>  toolchain/musl/common.mk       | 2 ++
>  10 files changed, 38 insertions(+)
> 
> diff --git a/rules.mk b/rules.mk
> index 80cb3d63f4..7596250388 100644
> --- a/rules.mk
> +++ b/rules.mk
> @@ -119,8 +119,13 @@ INCLUDE_DIR:=$(TOPDIR)/include
>  SCRIPT_DIR:=$(TOPDIR)/scripts
>  BUILD_DIR_BASE:=$(TOPDIR)/build_dir
>  ifeq ($(CONFIG_EXTERNAL_TOOLCHAIN),)
> + ifeq ($(CONFIG_CUSTOM_TOOLCHAIN),)
>    GCCV:=$(call qstrip,$(CONFIG_GCC_VERSION))
>    LIBC:=$(call qstrip,$(CONFIG_LIBC))
> + else
> +  GCCV:=$(call qstrip,$(CONFIG_CUSTOM_GCC_VERSION))
> +  LIBC:=$(call qstrip,$(CONFIG_CUSTOM_LIBC))
> + endif
>    REAL_GNU_TARGET_NAME=$(OPTIMIZE_FOR_CPU)-openwrt-linux$(if $(TARGET_SUFFIX),-$(TARGET_SUFFIX))
>    GNU_TARGET_NAME=$(OPTIMIZE_FOR_CPU)-openwrt-linux
>    DIR_SUFFIX:=_$(LIBC)$(if $(CONFIG_arm),_eabi)
> diff --git a/toolchain/Config.in b/toolchain/Config.in
> index 82dddbc209..cad492aa1e 100644
> --- a/toolchain/Config.in
> +++ b/toolchain/Config.in
> @@ -155,6 +155,11 @@ menuconfig EXTERNAL_TOOLCHAIN
>  		  Specify additional directories searched for libraries (override LDFLAGS).
>  		  Use ./DIR for directories relative to the root above.
>  
> +config CUSTOM_TOOLCHAIN
> +	depends on DEVEL
> +
> +source "toolchain_custom/*.in"
> +
>  config NEED_TOOLCHAIN
>  	bool
>  	depends on DEVEL
> diff --git a/toolchain/Makefile b/toolchain/Makefile
> index 0336b2f72c..f067cb9c93 100644
> --- a/toolchain/Makefile
> +++ b/toolchain/Makefile
> @@ -93,6 +93,8 @@ endif
>  
>  $(curdir)/install: $(curdir)/compile
>  
> +include $(wildcard toolchain_custom/*.mk)
> +
>  $(eval $(call stampfile,$(curdir),toolchain,compile,$(TOOLCHAIN_DIR)/stamp/.gcc-initial_installed,,$(TOOLCHAIN_DIR)))
>  $(eval $(call stampfile,$(curdir),toolchain,check,$(TMP_DIR)/.build))
>  $(eval $(call subdir,$(curdir)))
> diff --git a/toolchain/binutils/Makefile b/toolchain/binutils/Makefile
> index 24eaf70566..04620a8769 100644
> --- a/toolchain/binutils/Makefile
> +++ b/toolchain/binutils/Makefile
> @@ -31,6 +31,8 @@ HOST_BUILD_PARALLEL:=1
>  
>  PATCH_DIR:=./patches/$(PKG_VERSION)
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/binutils/*.var)
> +
>  include $(INCLUDE_DIR)/toolchain-build.mk
>  
>  HOST_CONFIGURE_ARGS = \
> @@ -99,4 +101,6 @@ define Host/Clean
>  		$(BUILD_DIR_TOOLCHAIN)/$(PKG_NAME)
>  endef
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/binutils/*.build)
> +
>  $(eval $(call HostBuild))
> diff --git a/toolchain/gcc/common.mk b/toolchain/gcc/common.mk
> index 6e0edfb36a..d6ca9b872f 100644
> --- a/toolchain/gcc/common.mk
> +++ b/toolchain/gcc/common.mk
> @@ -47,6 +47,8 @@ PKGVERSION=OpenWrt GCC $(PKG_VERSION) $(REVISION)
>  
>  HOST_BUILD_PARALLEL:=1
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/gcc/*.var)
> +
>  include $(INCLUDE_DIR)/toolchain-build.mk
>  
>  HOST_SOURCE_DIR:=$(HOST_BUILD_DIR)
> @@ -189,6 +191,8 @@ GCC_MAKE:= \
>  		CXXFLAGS_FOR_TARGET="$(TARGET_CFLAGS)" \
>  		GOCFLAGS_FOR_TARGET="$(TARGET_CFLAGS)"
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/gcc/*.build)
> +
>  define Host/SetToolchainInfo
>  	$(SED) 's,TARGET_CROSS=.*,TARGET_CROSS=$(REAL_GNU_TARGET_NAME)-,' $(TOOLCHAIN_DIR)/info.mk
>  	$(SED) 's,GCC_VERSION=.*,GCC_VERSION=$(GCC_VERSION),' $(TOOLCHAIN_DIR)/info.mk
> @@ -229,3 +233,5 @@ define Host/Clean
>  		$(TOOLCHAIN_DIR)/bin/$(REAL_GNU_TARGET_NAME)-gc* \
>  		$(TOOLCHAIN_DIR)/bin/$(REAL_GNU_TARGET_NAME)-c*
>  endef
> +
> +include $(wildcard $(TOPDIR)/toolchain_custom/gcc/*.build)

Is this included twice intentionally?

> diff --git a/toolchain/gcc/initial/Makefile b/toolchain/gcc/initial/Makefile
> index c71b17dd87..b9ada19ec1 100644
> --- a/toolchain/gcc/initial/Makefile
> +++ b/toolchain/gcc/initial/Makefile
> @@ -1,6 +1,8 @@
>  GCC_VARIANT:=initial
>  GCC_PREPARE=$(CONFIG_USE_MUSL)
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/gcc/initial/*.var)
> +
>  include ../common.mk
>  
>  GCC_CONFIGURE += \
> @@ -33,4 +35,6 @@ define Host/Install
>  	$$(call file_copy,$(TOOLCHAIN_DIR)/initial/.,$(TOOLCHAIN_DIR)/)
>  endef
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/gcc/initial/*.build)
> +
>  $(eval $(call HostBuild))
> diff --git a/toolchain/gcc/minimal/Makefile b/toolchain/gcc/minimal/Makefile
> index 31d6f675ab..0b5c485dd8 100644
> --- a/toolchain/gcc/minimal/Makefile
> +++ b/toolchain/gcc/minimal/Makefile
> @@ -1,6 +1,8 @@
>  GCC_VARIANT:=minimal
>  GCC_PREPARE=$(if $(CONFIG_USE_MUSL),,1)
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/gcc/minimal/*.var)
> +
>  include ../common.mk
>  
>  GCC_CONFIGURE += \
> @@ -26,4 +28,6 @@ define Host/Clean
>  		$(GCC_BUILD_DIR)
>  endef
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/gcc/minimal/*.build)
> +
>  $(eval $(call HostBuild))
> diff --git a/toolchain/gdb/Makefile b/toolchain/gdb/Makefile
> index 3b884f9e79..63cdc073fd 100644
> --- a/toolchain/gdb/Makefile
> +++ b/toolchain/gdb/Makefile
> @@ -29,6 +29,8 @@ HOST_BUILD_DIR:=$(BUILD_DIR_TOOLCHAIN)/$(GDB_DIR)
>  
>  HOST_BUILD_PARALLEL:=1
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/gdb/*.var)
> +
>  include $(INCLUDE_DIR)/toolchain-build.mk
>  
>  HOST_CONFIGURE_VARS += \
> @@ -65,4 +67,6 @@ define Host/Clean
>  		$(TOOLCHAIN_DIR)/bin/$(GNU_TARGET_NAME)-gdb
>  endef
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/gdb/*.build)
> +
>  $(eval $(call HostBuild))
> diff --git a/toolchain/musl/Makefile b/toolchain/musl/Makefile
> index 2b9312bcbf..aec678ebbe 100644
> --- a/toolchain/musl/Makefile
> +++ b/toolchain/musl/Makefile
> @@ -28,4 +28,6 @@ define Host/Install
>  	$(CP) ./include $(TOOLCHAIN_DIR)/
>  endef
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/musl/*.build)

Should this also be added for uclibc and glibc?

> +
>  $(eval $(call HostBuild))
> diff --git a/toolchain/musl/common.mk b/toolchain/musl/common.mk
> index ae7758e8b5..6c63ffa9bf 100644
> --- a/toolchain/musl/common.mk
> +++ b/toolchain/musl/common.mk
> @@ -25,6 +25,8 @@ BUILD_DIR_HOST:=$(BUILD_DIR_TOOLCHAIN)
>  HOST_BUILD_PREFIX:=$(TOOLCHAIN_DIR)
>  HOST_BUILD_DIR:=$(BUILD_DIR_TOOLCHAIN)/$(PKG_NAME)-$(PKG_VERSION)
>  
> +include $(wildcard $(TOPDIR)/toolchain_custom/musl/*.var)
> +
>  include $(INCLUDE_DIR)/host-build.mk
>  include $(INCLUDE_DIR)/hardening.mk
>  
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
