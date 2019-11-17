Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D069FFC46
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 00:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jU84VajeurksJT2Aqm/wXgTsswIpKN5MZ4PD1mUMPq0=; b=b4pD7saJNQQraZ
	QDU6Hu/tebBf1HcUH6OeBM1DmBVF6RI0jti9wRfgnsq4nraSXaVnSUTqEYk42LlcC5CEo0Gc2QaHC
	xSu7d1QxDxyqyVeX70Snba0ku+UA70x+Cap2RLxCdpIIj36pCNAnPqH6yu4s1KUszfrp4HMBGFkug
	BlSYfhe3wEQtPTzt0c5xTvTNsdSvPtauHr7brKve3L9P9j1roiI7qUqzP9LWOhcOrI6c6R+PSFF48
	kIVBaTySapwANaJh7oNZ6hM8hQhzs/jMsUF8KAwkpRkCOacWUkrDCBPOJaWqITR66+EQQYkCt+8g7
	yJ9uORSFVKlv3+yZKlhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWU3l-0004ME-Ob; Sun, 17 Nov 2019 23:34:25 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWU3d-0004LD-VV
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 23:34:20 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 47GT1v3XQkzQlDG;
 Mon, 18 Nov 2019 00:34:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id 7pT5qS2OQZIq; Mon, 18 Nov 2019 00:34:04 +0100 (CET)
To: Christian Lamparter <chunkeey@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20191117014442.1427795-1-chunkeey@gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <32e80bbe-3365-c1ef-0358-ac0a4e60fd6c@hauke-m.de>
Date: Mon, 18 Nov 2019 00:34:01 +0100
MIME-Version: 1.0
In-Reply-To: <20191117014442.1427795-1-chunkeey@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_153418_336456_D7FED097 
X-CRM114-Status: GOOD (  25.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] mac80211: switch to upstream owl-loader
 driver
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 11/17/19 2:44 AM, Christian Lamparter wrote:
> The Owl Loader (named after the codename that Atheros gave
> these devices back in the day) has been accepted upstream.
> 
> This patch removes the "misc" driver OpenWrt had and adds
> the remaining differences against the version that ships
> with 5.4-rc1 into a separate "120-owl-loader-compat.patch"
> file that can be cut down once AR71XX is being dealt with.
> 
> Note: I decided to keep the existing (kmod-)owl-loader
> package name around for now. The kernel module file in
> the kmod package will be called ath9k_pci_owl_loader.ko
> though.
> 
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>

Acked-by: Hauke Mehrtens <hauke@hauke-m.de>

> ---
>  package/kernel/linux/modules/wireless.mk      |  21 --
>  package/kernel/mac80211/ath.mk                |  20 +-
>  .../patches/ath/120-owl-loader-compat.patch   |  67 +++++
>  .../generic/files/drivers/misc/owl-loader.c   | 246 ------------------
>  .../hack-4.14/835-misc-owl_loader.patch       |  52 ----
>  .../hack-4.19/835-misc-owl_loader.patch       |  52 ----
>  .../hack-4.9/835-misc-owl_loader.patch        |  52 ----
>  7 files changed, 86 insertions(+), 424 deletions(-)
>  create mode 100644 package/kernel/mac80211/patches/ath/120-owl-loader-compat.patch
>  delete mode 100644 target/linux/generic/files/drivers/misc/owl-loader.c
>  delete mode 100644 target/linux/generic/hack-4.14/835-misc-owl_loader.patch
>  delete mode 100644 target/linux/generic/hack-4.19/835-misc-owl_loader.patch
>  delete mode 100644 target/linux/generic/hack-4.9/835-misc-owl_loader.patch
> 
> diff --git a/package/kernel/linux/modules/wireless.mk b/package/kernel/linux/modules/wireless.mk
> index 7b1c663567..72e2bf477b 100644
> --- a/package/kernel/linux/modules/wireless.mk
> +++ b/package/kernel/linux/modules/wireless.mk
> @@ -41,24 +41,3 @@ define KernelPackage/net-rtl8192su/description
>  endef
>  
>  $(eval $(call KernelPackage,net-rtl8192su))
> -
> -
> -define KernelPackage/owl-loader
> -  SUBMENU:=$(WIRELESS_MENU)
> -  TITLE:=Owl loader for initializing Atheros PCI(e) Wifi chips
> -  DEPENDS:=@PCI_SUPPORT
> -  KCONFIG:=CONFIG_OWL_LOADER
> -  FILES:=$(LINUX_DIR)/drivers/misc/owl-loader.ko
> -  AUTOLOAD:=$(call AutoProbe,owl-loader)
> -endef
> -
> -define KernelPackage/owl-loader/description
> -  Kernel module that helps to initialize certain Qualcomm
> -  Atheros' PCI(e) Wifi chips, which have the init data
> -  (which contains the PCI device ID for example) stored
> -  together with the calibration data in the file system.
> -
> -  This is necessary for devices like the Cisco Meraki Z1.
> -endef
> -
> -$(eval $(call KernelPackage,owl-loader))
> diff --git a/package/kernel/mac80211/ath.mk b/package/kernel/mac80211/ath.mk
> index 64aac41b4d..788131b751 100644
> --- a/package/kernel/mac80211/ath.mk
> +++ b/package/kernel/mac80211/ath.mk
> @@ -1,6 +1,6 @@
>  PKG_DRIVERS += \
>  	ath ath5k ath6kl ath6kl-sdio ath6kl-usb ath9k ath9k-common ath9k-htc ath10k \
> -	carl9170
> +	carl9170 owl-loader
>  
>  PKG_CONFIG_DEPENDS += \
>  	CONFIG_PACKAGE_ATH_DEBUG \
> @@ -38,6 +38,7 @@ config-$(CONFIG_PACKAGE_ATH_SPECTRAL) += ATH9K_COMMON_SPECTRAL ATH10K_SPECTRAL
>  config-$(CONFIG_PACKAGE_ATH_DYNACK) += ATH9K_DYNACK
>  config-$(call config_package,ath9k) += ATH9K
>  config-$(call config_package,ath9k-common) += ATH9K_COMMON
> +config-$(call config_package,owl-loader) += ATH9K_PCI_NO_EEPROM
>  config-$(CONFIG_TARGET_ar71xx) += ATH9K_AHB
>  config-$(CONFIG_TARGET_ath79) += ATH9K_AHB
>  config-$(CONFIG_TARGET_ipq40xx) += ATH10K_AHB
> @@ -274,3 +275,20 @@ define KernelPackage/carl9170
>    FILES:=$(PKG_BUILD_DIR)/drivers/net/wireless/ath/carl9170/carl9170.ko
>    AUTOLOAD:=$(call AutoProbe,carl9170)
>  endef
> +
> +define KernelPackage/owl-loader
> +  $(call KernelPackage/mac80211/Default)
> +  TITLE:=Owl loader for initializing Atheros PCI(e) Wifi chips
> +  DEPENDS:=@PCI_SUPPORT +kmod-ath9k
> +  FILES:=$(PKG_BUILD_DIR)/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.ko
> +  AUTOLOAD:=$(call AutoProbe,ath9k_pci_owl_loader)
> +endef
> +
> +define KernelPackage/owl-loader/description
> +  Kernel module that helps to initialize certain Qualcomm
> +  Atheros' PCI(e) Wifi chips, which have the init data
> +  (which contains the PCI device ID for example) stored
> +  together with the calibration data in the file system.
> +
> +  This is necessary for devices like the Cisco Meraki Z1.
> +endef
> diff --git a/package/kernel/mac80211/patches/ath/120-owl-loader-compat.patch b/package/kernel/mac80211/patches/ath/120-owl-loader-compat.patch
> new file mode 100644
> index 0000000000..256fca45e4
> --- /dev/null
> +++ b/package/kernel/mac80211/patches/ath/120-owl-loader-compat.patch
> @@ -0,0 +1,67 @@
> +From: Christian Lamparter <chunkeey@gmail.com>
> +Date: Sat, 16 Nov 2019 19:25:24 +0100
> +Subject: [PATCH] owl_loader: compatibility patch
> +
> +This patch includes OpenWrt specific changes that are
> +not included in the upstream owl-loader.
> +
> +These include:
> +	- A Byteswap fix for lantiq's PCI code
> +
> +	- platform data handling for ar71xx
> +
> +Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> +
> +--- a/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
> ++++ b/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
> +@@ -84,6 +84,10 @@
> + 			val = swahb32(val);
> + 		}
> + 
> ++#ifdef CONFIG_LANTIQ
> ++		val = swab32(val);
> ++#endif

Lantiq is big endian, are there other big endian system which do not
need this byte swap?

> ++
> + 		__raw_writel(val, mem + reg);
> + 		usleep_range(100, 120);
> + 	}

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
