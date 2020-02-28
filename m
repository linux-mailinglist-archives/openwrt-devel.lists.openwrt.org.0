Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E61174280
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 23:50:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UI2w+XObkFJ+SalG3htbhlywS05PeUDEiJCzeaqCJfk=; b=KAIw4hUX4WWxKrKQuZ9x7BA3Nd
	tP6HXxFdkSFcJRGONuSHdSqsfLU+XHMi5jCmehns72Qshe62RLk4RShHQkakwP/3T8ktS/U3gVo0X
	XcnagrPc0Ge31ygqYZG837RCHNpEnJAIuHPCwA67gadhBvlMdwECP4JcEYrLRkdQByAkLl025zj0c
	EiFK5BEaUT0XBBxK4fYx0iZC/FwYvonlUi6GchEAowNX+jR+kVXIhDjwF5Fd8aPx+9JFXCLR5hQz+
	eY+X01J3HKd1ZCiV/rkeJshUPnr9AEMmv9RH2B9gwGzRjCfRQ5gQnCXLQeBRDlW5eF9DXu0TljXkK
	JgJPKeyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oSB-00029c-IW; Fri, 28 Feb 2020 22:49:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oRI-0001eO-LG
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 22:49:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8A8764E68;
 Fri, 28 Feb 2020 23:48:57 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 47240442;
 Fri, 28 Feb 2020 23:48:43 +0100 (CET)
Date: Fri, 28 Feb 2020 23:48:55 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeffery To <jeffery.to@gmail.com>
Message-ID: <20200228224855.GA32542@meh.true.cz>
References: <20190608220047.23910-1-jeffery.to@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608220047.23910-1-jeffery.to@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144901_409594_58F02F0A 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] build: Remove STAGING_DIR_HOST
 references for InstallDev/UninstallDev
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

Jeffery To <jeffery.to@gmail.com> [2019-06-09 06:00:47]:

Hi,

> Build/InstallDev no longer places a file list in
> $(STAGING_DIR_HOST)/packages; this change removes the creation of
> $(STAGING_DIR_HOST)/packages and the attempted removal of a
> STAGING_DIR_HOST file list during package clean.

that's clear, ok.

> This also changes the host directory passed to Build/UninstallDev from
> $(STAGING_DIR_HOST) to $(STAGING_DIR)/host, to match the directory
> passed to Build/InstallDev.

Late night, but I see following:

 include/package.mk:     $(call Build/InstallDev,$(TMP_DIR)/stage-$(PKG_DIR_NAME),$(TMP_DIR)/stage-$(PKG_DIR_NAME)/host)

> -	$(call Build/UninstallDev,$(STAGING_DIR),$(STAGING_DIR_HOST))
> +	$(call Build/UninstallDev,$(STAGING_DIR),$(STAGING_DIR)/host)

So that description doesn't correspond with the change.

> Signed-off-by: Jeffery To <jeffery.to@gmail.com>
> ---
>  include/package.mk | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/package.mk b/include/package.mk
> index 569ad647d6..348f75fba7 100644
> --- a/include/package.mk
> +++ b/include/package.mk
> @@ -195,7 +195,7 @@ define Build/CoreTargets
>    $(STAMP_INSTALLED) : export PATH=$$(TARGET_PATH_PKG)
>    $(STAMP_INSTALLED): $(STAMP_BUILT)
>  	rm -rf $(TMP_DIR)/stage-$(PKG_DIR_NAME)
> -	mkdir -p $(TMP_DIR)/stage-$(PKG_DIR_NAME)/host $(STAGING_DIR)/packages $(STAGING_DIR_HOST)/packages
> +	mkdir -p $(TMP_DIR)/stage-$(PKG_DIR_NAME)/host $(STAGING_DIR)/packages
>  	$(foreach hook,$(Hooks/InstallDev/Pre),\
>  		$(call $(hook),$(TMP_DIR)/stage-$(PKG_DIR_NAME),$(TMP_DIR)/stage-$(PKG_DIR_NAME)/host)$(sep)\
>  	)
> @@ -314,9 +314,9 @@ clean-build: $(if $(wildcard $(PKG_BUILD_DIR)/.autoremove),force-clean-build)
>  
>  clean: force-clean-build
>  	$(CleanStaging)
> -	$(call Build/UninstallDev,$(STAGING_DIR),$(STAGING_DIR_HOST))
> +	$(call Build/UninstallDev,$(STAGING_DIR),$(STAGING_DIR)/host)
>  	$(Build/Clean)
> -	rm -f $(STAGING_DIR)/packages/$(STAGING_FILES_LIST) $(STAGING_DIR_HOST)/packages/$(STAGING_FILES_LIST)
> +	rm -f $(STAGING_DIR)/packages/$(STAGING_FILES_LIST)
>  
>  dist:
>  	$(Build/Dist)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
