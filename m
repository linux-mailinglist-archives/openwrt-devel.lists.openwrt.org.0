Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00998102DCF
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 21:53:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VmXNGWPSAAOt0wMweGiMKvlDvug4aRt8DkBLVj4UUSA=; b=BgxkmE6Il150wYxDspXknzfiU
	S0hpAgrh1sTtAw6TL498FPCkTm1boloH1dO9raUzX+EK1VmSIzYOCrf/Bse+dJ+fQ05hjpF8u2B02
	7XWGYTm+Qs9POYKUr+yUpmfMRJBrckrF1kphSyTx2aEDYtiuc4rXdMp1aV4Wt76xyTAbVRK7u4iQc
	J+mmhQaEVVcwes9XUa6d/99f2J0CJbz1cgGjtmfsDmN1rbxAY1+55ZLddi/s3ma0Z8vewB+YDtLHb
	pn6Y5tNfG1TBe/5BHKZsFeijU6MMiOw+yTk4Xl8vewo8pxMRDdtEX3+uQQbSLLPfqN5ddV7ebOixg
	LshBw78Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXAVO-0007nR-W6; Tue, 19 Nov 2019 20:53:47 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXAVC-0007mP-2B
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 20:53:36 +0000
X-Originating-IP: 72.234.165.80
Received: from [192.168.200.110] (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 6990EFF802
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 20:53:19 +0000 (UTC)
To: openwrt-devel@lists.openwrt.org
References: <20191112100420.28117-1-mail@aparcar.org>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <517c10ab-240f-51a4-09e2-79c7920973f4@aparcar.org>
Date: Tue, 19 Nov 2019 10:53:17 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191112100420.28117-1-mail@aparcar.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_125334_382225_0047B8AB 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] build: separate signing logic
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Bump

On 11/12/19 12:04 AM, Paul Spooren wrote:
> This separates the options for signature creation and verification
>
> * SIGNED_PACKAGES create Packages.sig
> * SIGNED_IMAGES add ucert signature to created images
> * CHECK_SIGNATURE add verification capabilities to images
> * INSTALL_LOCAL_KEY add local key-build to /etc/opkg/keys
>
> Right now the buildbot.git contains some hacks to create images that
> have signature verification capabilities while not storing private keys
> on buildbot slaves. This commit allows to disable these steps for the
> buildbots and only perform signing on the master.
>
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
> v3: set "y if !BUILDBOT" to all new options
>
>   config/Config-build.in      | 12 ++++++++++--
>   include/image-commands.mk   | 13 ++++++++-----
>   package/base-files/Makefile | 18 ++++++++++--------
>   3 files changed, 28 insertions(+), 15 deletions(-)
>
> diff --git a/config/Config-build.in b/config/Config-build.in
> index 872e5c12ab..af5de42ac6 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -37,13 +37,21 @@ menu "Global build settings"
>   		  - Enabling per-device rootfs support
>   		  ...
>   
> +	config INSTALL_LOCAL_KEY
> +		bool "Install local usign key into image"
> +		default y if !BUILDBOT
> +
>   	config SIGNED_PACKAGES
>   		bool "Cryptographically signed package lists"
> -		default y
> +		default y if !BUILDBOT
> +
> +	config SIGNED_IMAGES
> +		bool "Cryptographically signed firmware images"
> +		default y if !BUILDBOT
>   
>   	config SIGNATURE_CHECK
>   		bool "Enable signature checking in opkg"
> -		default SIGNED_PACKAGES
> +		default y
>   
>   	comment "General build options"
>   
> diff --git a/include/image-commands.mk b/include/image-commands.mk
> index 5dfd6a2c2f..3d10b18bc8 100644
> --- a/include/image-commands.mk
> +++ b/include/image-commands.mk
> @@ -373,11 +373,14 @@ metadata_json = \
>   
>   define Build/append-metadata
>   	$(if $(SUPPORTED_DEVICES),-echo $(call metadata_json,$(SUPPORTED_DEVICES)) | fwtool -I - $@)
> -	[ ! -s "$(BUILD_KEY)" -o ! -s "$(BUILD_KEY).ucert" -o ! -s "$@" ] || { \
> -		cp "$(BUILD_KEY).ucert" "$@.ucert" ;\
> -		usign -S -m "$@" -s "$(BUILD_KEY)" -x "$@.sig" ;\
> -		ucert -A -c "$@.ucert" -x "$@.sig" ;\
> -		fwtool -S "$@.ucert" "$@" ;\
> +	[ -z "$(SIGNED_IMAGES)" \
> +		-o ! -s "$(BUILD_KEY)" \
> +		-o ! -s "$(BUILD_KEY).ucert" \
> +		-o ! -s "$@" ] || { \
> +			cp "$(BUILD_KEY).ucert" "$@.ucert" ;\
> +			usign -S -m "$@" -s "$(BUILD_KEY)" -x "$@.sig" ;\
> +			ucert -A -c "$@.ucert" -x "$@.sig" ;\
> +			fwtool -S "$@.ucert" "$@" ;\
>   	}
>   endef
>   
> diff --git a/package/base-files/Makefile b/package/base-files/Makefile
> index addbac8664..3625f1320d 100644
> --- a/package/base-files/Makefile
> +++ b/package/base-files/Makefile
> @@ -37,7 +37,7 @@ endif
>   define Package/base-files
>     SECTION:=base
>     CATEGORY:=Base system
> -  DEPENDS:=+netifd +libc +procd +jsonfilter +SIGNED_PACKAGES:usign +SIGNED_PACKAGES:openwrt-keyring +NAND_SUPPORT:ubi-utils +fstools +fwtool
> +  DEPENDS:=+netifd +libc +procd +jsonfilter +SIGNATURE_CHECK:usign +SIGNATURE_CHECK:openwrt-keyring +NAND_SUPPORT:ubi-utils +fstools +fwtool
>     TITLE:=Base filesystem for OpenWrt
>     URL:=http://openwrt.org/
>     VERSION:=$(PKG_RELEASE)-$(REVISION)
> @@ -116,12 +116,6 @@ ifdef CONFIG_SIGNED_PACKAGES
>   		$(STAGING_DIR_HOST)/bin/ucert -I -c $(BUILD_KEY).ucert -p $(BUILD_KEY).pub -s $(BUILD_KEY)
>   
>     endef
> -
> -  define Package/base-files/install-key
> -	mkdir -p $(1)/etc/opkg/keys
> -	$(CP) $(BUILD_KEY).pub $(1)/etc/opkg/keys/`$(STAGING_DIR_HOST)/bin/usign -F -p $(BUILD_KEY).pub`
> -
> -  endef
>   endif
>   
>   ifeq ($(CONFIG_NAND_SUPPORT),)
> @@ -130,9 +124,17 @@ ifeq ($(CONFIG_NAND_SUPPORT),)
>     endef
>   endif
>   
> +ifdef CONFIG_INSTALL_LOCAL_KEY
> +  define Package/base-files/install-local-key
> +	mkdir -p $(1)/etc/opkg/keys
> +	$(CP) $(BUILD_KEY).pub $(1)/etc/opkg/keys/`$(STAGING_DIR_HOST)/bin/usign \
> +		-F -p $(BUILD_KEY).pub`
> +  endef
> +endif
> +
>   define Package/base-files/install
>   	$(CP) ./files/* $(1)/
> -	$(Package/base-files/install-key)
> +	$(Package/base-files/install-local-key)
>   	$(Package/base-files/nand-support)
>   	if [ -d $(GENERIC_PLATFORM_DIR)/base-files/. ]; then \
>   		$(CP) $(GENERIC_PLATFORM_DIR)/base-files/* $(1)/; \

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
