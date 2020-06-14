Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0A61F8A56
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 21:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mafTmQQxO7Te5m/03ddiT817UaGsI5ac32pfOwJ4fc=; b=OSx0/TmI9xQGog
	r2Kgxnd/ZUv+n+DjykQAS1ivi0d7+z3zoLKRxB6GCkU2SH9ZIgapdJHtZ3NTd0f6XNwjep696nUqb
	XFclgPxWeR9SVHXsHl4ihpsXlAmLaiWEPVS2z22SP2fUerwmhIyUk1CVVo+O3NnZr6zH0+KRyv7Ue
	agq9LNnzpnhsQvZXNS7ZdOWMAjYfyTYav9ZXDNxsVEVVnpC72a3oLcBoeYlVoYk40b2ziREbtx/up
	D3WlXFXBrJDDf9xBSv0hHY3B5f7VGG1llgOP3JVMqU0BZzllKcotGKQgDuevigGPdSNhPptmgc4+K
	ZpMToXxl800zYlIx2B9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkY25-0007uj-ER; Sun, 14 Jun 2020 19:11:05 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkY1z-0007u2-T3
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 19:11:01 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.93.0.4) (envelope-from <daniel@makrotopia.org>)
 id 1jkY1v-0007Ac-39; Sun, 14 Jun 2020 21:10:56 +0200
Date: Sun, 14 Jun 2020 20:10:41 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200614191041.GE7682@makrotopia.org>
References: <20200614093330.17516-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200614093330.17516-1-mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_121059_933887_D0C61DCC 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in
 image filename
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Jun 13, 2020 at 11:33:31PM -1000, Paul Spooren wrote:
> The target/subtarget information in image filenames is barely of any use
> for developers or end users.
> 
> A developer reads the profile name and the target is either obvious due
> to previous work or `cd targets/ && grep -r <profile>` tells the target
> within 3ms. If no buildroot is available `cat <image> | tail -c 200`
> allows a look at the attached metadata which includes the
> target/subtarget.
> 
> For users the information is entirely useless and maybe even harmful.
> Target names like `cortexa9` could easily be mistaken as an actual
> device name while the only relevant information would be
> `linksys_wrt3200acm`. Images are more realistically downloaded via a
> Wiki entry or a firmware wizard.
> 
> This commit therefore adds the new image option called
> CONFIG_TARGET_FILENAMES to make the target/subtarget filename part
> optional. It is disabled by default.
> 
> As the profile name `generic` appears multiple times in the x86 target
> as well as in oceton and ath25, the proposed patch on GitHub should be
> merged first:
> * treewide: use unique profile names #3082
> https://github.com/openwrt/openwrt/pull/3082
> 
> Newly produced files would look like the following:
> * openwrt-linksys_wrt3200acm-initramfs-kernel.bin
> * openwrt-linksys_wrt3200acm.manifest
> * openwrt-linksys_wrt3200acm-squashfs-factory.img
> * openwrt-linksys_wrt3200acm-squashfs-sysupgrade.bin
> 
> Signed-off-by: Paul Spooren <mail@aparcar.org>


Once all the requirements (unique and informative image names) are in
place to make this work:
Acked-by: Daniel Golle <daniel@makrotopia.org>

> ---
> It's been a while since I made a controversial patch[0] so it feels
> about time.
> 
> [0]: https://github.com/openwrt/openwrt/pull/2107
> 
>  include/image.mk                   | 9 +++++----
>  package/base-files/image-config.in | 9 +++++++++
>  2 files changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/include/image.mk b/include/image.mk
> index 984b64fb9c..c6fc467c9e 100644
> --- a/include/image.mk
> +++ b/include/image.mk
> @@ -37,11 +37,12 @@ KDIR=$(KERNEL_BUILD_DIR)
>  KDIR_TMP=$(KDIR)/tmp
>  DTS_DIR:=$(LINUX_DIR)/arch/$(LINUX_KARCH)/boot/dts
>  
> +IMG_PREFIX_TARGET:=$(if $(CONFIG_TARGET_FILENAMES),$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))-)
>  IMG_PREFIX_EXTRA:=$(if $(EXTRA_IMAGE_NAME),$(call sanitize,$(EXTRA_IMAGE_NAME))-)
>  IMG_PREFIX_VERNUM:=$(if $(CONFIG_VERSION_FILENAMES),$(call sanitize,$(VERSION_NUMBER))-)
>  IMG_PREFIX_VERCODE:=$(if $(CONFIG_VERSION_CODE_FILENAMES),$(call sanitize,$(VERSION_CODE))-)
>  
> -IMG_PREFIX:=$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))
> +IMG_PREFIX:=$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$(IMG_PREFIX_TARGET)
>  IMG_ROOTFS:=$(IMG_PREFIX)-rootfs
>  IMG_COMBINED:=$(IMG_PREFIX)-combined
>  IMG_PART_SIGNATURE:=$(shell echo $(SOURCE_DATE_EPOCH)$(LINUX_VERMAGIC) | mkhash md5 | cut -b1-8)
> @@ -293,7 +294,7 @@ endef
>  
>  define Image/Manifest
>  	$(call opkg,$(TARGET_DIR_ORIG)) list-installed > \
> -		$(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-$(PROFILE_SANITIZED)).manifest
> +		$(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),$(PROFILE_SANITIZED)).manifest
>  endef
>  
>  define Image/gzip-ext4-padded-squashfs
> @@ -317,7 +318,7 @@ ifdef CONFIG_TARGET_ROOTFS_TARGZ
>    define Image/Build/targz
>  	$(TAR) -cp --numeric-owner --owner=0 --group=0 --mode=a-s --sort=name \
>  		$(if $(SOURCE_DATE_EPOCH),--mtime="@$(SOURCE_DATE_EPOCH)") \
> -		-C $(TARGET_DIR)/ . | gzip -9n > $(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-$(PROFILE_SANITIZED))-rootfs.tar.gz
> +		-C $(TARGET_DIR)/ . | gzip -9n > $(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),$(PROFILE_SANITIZED))-rootfs.tar.gz
>    endef
>  endif
>  
> @@ -385,7 +386,7 @@ define Device/Init
>  
>    IMAGES :=
>    ARTIFACTS :=
> -  IMAGE_PREFIX := $(IMG_PREFIX)-$(1)
> +  IMAGE_PREFIX := $(IMG_PREFIX)$(1)
>    IMAGE_NAME = $$(IMAGE_PREFIX)-$$(1)-$$(2)
>    IMAGE_SIZE :=
>    KERNEL_PREFIX = $$(IMAGE_PREFIX)
> diff --git a/package/base-files/image-config.in b/package/base-files/image-config.in
> index 3432db525a..5a70d51a7a 100644
> --- a/package/base-files/image-config.in
> +++ b/package/base-files/image-config.in
> @@ -264,6 +264,15 @@ if VERSIONOPT
>  			Enable this to include the revision identifier or the configured
>  			version code into the firmware image, SDK- and Image Builder archive
>  			file names
> +
> +	config TARGET_FILENAMES
> +		bool
> +		prompt "Target and subtarget in filenames"
> +		default n
> +		help
> +			Enable this to include the target (and subtarget) in
> +			firmware image, SDK- and Image Builder archive file names
> +
>  endif
>  
>  
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
