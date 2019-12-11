Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D45311BB02
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 19:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CEub9AJWEDMI/ceNYmh9kVJLqXZOeTSySW7RcN9yBJ8=; b=KDuWooddAwEvNJ3bfyN6Pjpix
	jHjIG98pXxYEk/DFOxAqRC4H6b1/r/SpDYd7BGR2vl/Ojt654LPvSn5atLwOfAp3xzJTjirAttxUJ
	ufaCTVXWwOFuaV+Z6W97prNUMkHBgyGu0fWTYMoA+tcmFn/ViZJXuOGK82yj6D8ed3sqgJesvRizy
	DktLd0n0CDTT0HpDer5gId/czPL+itlIhL59fD0OS5uqQDSFZJlI4oJ+F2YiRG2LLBh2MqPv0NC7Y
	EgIy9U3NlWJbmCSx2/XBtMWSmMik0BLonW01bC72yY1+TFm99fycIYtodcuWThSI5Shw+8KXvi11b
	AWcGb46/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6Ni-0003XG-OJ; Wed, 11 Dec 2019 18:06:38 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6NZ-0003Wl-B2
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 18:06:31 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 8EAB013C283;
 Wed, 11 Dec 2019 10:06:26 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 8EAB013C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1576087586;
 bh=Vf2oJthIeT1gKnEwnDXunAfwDNtsRgnuVpMhol0Bq7g=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=CZkyNaW1WQdo4/TSImFv0idluTnwB8Q+Lfa7wsrYjBCwUJHHedIwbGsLtgXk+vgiW
 5mLYqNhXHrHzMKXnCcsXosqCqmqP3p1AHGfYRLF9Fhz+UPtUO+s5p82DRnCfgQnlzL
 eQkO4x8Pe2b1CVx2hOV1r7A0SFNYQtdNSiwyO7F8=
To: Paul Fertser <fercerpav@gmail.com>, openwrt-devel@lists.openwrt.org
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <20191211144459.13235-1-fercerpav@gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <d938b7ab-80b0-c78a-5a84-435243dff86d@candelatech.com>
Date: Wed, 11 Dec 2019 10:06:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191211144459.13235-1-fercerpav@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_100629_454748_14AEB437 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 12/11/19 6:44 AM, Paul Fertser wrote:
> According to many bugreports [0][1][2] the default ath10k-ct kernel
> module is unusable on devices with just 64 MiB RAM or with 128 MiB and
> dual ath10k cards. The target boards boot but eventually oom-killer
> starts to interfere with normal operation, so the current state is
> effectively broken.
> 
> Since the two patches in question might have a performance impact (and
> possibly some other unexpected side-effects) a dedicated build variant
> is added so that users of the low RAM devices can still benefit from all
> the ath10k-ct advantages.
> 
> [0] http://lists.infradead.org/pipermail/openwrt-devel/2019-December/020573.html
> [1] https://github.com/openwrt/openwrt/pull/1077
> [2] https://bugs.openwrt.org/index.php?do=details&task_id=2664

I am fine with this approach.

And also if you want to just have the makefile pass a -DBUILD_ATH10K_SMALL or something
like that and #ifdef code in the ath10k-ct driver, then I'd apply that patch to ath10k-ct
so that you don't need the patches.

Thanks,
Ben

> 
> Signed-off-by: Paul Fertser <fercerpav@gmail.com>
> ---
>   package/kernel/ath10k-ct/Makefile             | 30 +++++++-
>   ...0-0010-ath10k-limit-htt-rx-ring-size.patch | 22 ++++++
>   ...60-0011-ath10k-limit-pci-buffer-size.patch | 76 +++++++++++++++++++
>   3 files changed, 127 insertions(+), 1 deletion(-)
>   create mode 100644 package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch
>   create mode 100644 package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch
> 
> diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
> index dbf75fe174..d5726a1c88 100644
> --- a/package/kernel/ath10k-ct/Makefile
> +++ b/package/kernel/ath10k-ct/Makefile
> @@ -35,6 +35,7 @@ define KernelPackage/ath10k-ct
>   	$(PKG_BUILD_DIR)/ath10k$(CT_KVER)/ath10k_core.ko
>     AUTOLOAD:=$(call AutoProbe,ath10k_pci)
>     PROVIDES:=kmod-ath10k
> +  VARIANT:=regular
>   endef
>   
>   define KernelPackage/ath10k-ct/config
> @@ -42,7 +43,17 @@ define KernelPackage/ath10k-ct/config
>          config ATH10K-CT_LEDS
>                  bool "Enable LED support"
>                  default y
> -               depends on PACKAGE_kmod-ath10k-ct
> +               depends on PACKAGE_kmod-ath10k-ct || PACKAGE_kmod-ath10k-ct-smallbuffers
> +endef
> +
> +define KernelPackage/ath10k-ct-smallbuffers
> +$(call KernelPackage/ath10k-ct)
> +  TITLE+= (small buffers to work on low-RAM devices)
> +  VARIANT:=smallbuffers
> +endef
> +
> +define KernelPackage/ath10k-ct-smallbuffers/config
> +$(call KernelPackage/ath10k-ct/config)
>   endef
>   
>   NOSTDINC_FLAGS = \
> @@ -90,6 +101,22 @@ ifeq ($(CONFIG_ATH10K-CT_LEDS),y)
>     NOSTDINC_FLAGS += -DCONFIG_ATH10K_LEDS
>   endif
>   
> +define Build/Patch
> +	$(if $(QUILT),rm -rf $(PKG_BUILD_DIR)/patches; mkdir -p $(PKG_BUILD_DIR)/patches)
> +	$(call PatchDir,$(PKG_BUILD_DIR),$(PATCH_DIR),)
> +ifeq ($(BUILD_VARIANT),smallbuffers)
> +	$(call PatchDir,$(PKG_BUILD_DIR),$(PATCH_DIR)-smallbuffers,patches-smallbuffers)
> +endif
> +	$(if $(QUILT),touch $(PKG_BUILD_DIR)/.quilt_used)
> +endef
> +
> +define Quilt/Refresh/Package
> +	$(call Quilt/RefreshDir,$(PKG_BUILD_DIR),$(PATCH_DIR),)
> +ifeq ($(BUILD_VARIANT),smallbuffers)
> +	$(call Quilt/RefreshDir,$(PKG_BUILD_DIR),$(PATCH_DIR)-smallbuffers,patches-smallbuffers)
> +endif
> +endef
> +
>   define Build/Configure
>   	cp $(STAGING_DIR)/usr/include/mac80211/ath/*.h $(PKG_BUILD_DIR)
>   endef
> @@ -107,3 +134,4 @@ define Build/Compile
>   endef
>   
>   $(eval $(call KernelPackage,ath10k-ct))
> +$(eval $(call KernelPackage,ath10k-ct-smallbuffers))
> diff --git a/package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch b/package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch
> new file mode 100644
> index 0000000000..f73b02e5ef
> --- /dev/null
> +++ b/package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch
> @@ -0,0 +1,22 @@
> +--- a/ath10k-4.19/htt.h
> ++++ b/ath10k-4.19/htt.h
> +@@ -226,7 +226,7 @@ enum htt_rx_ring_flags {
> + };
> +
> + #define HTT_RX_RING_SIZE_MIN 128
> +-#define HTT_RX_RING_SIZE_MAX 2048
> ++#define HTT_RX_RING_SIZE_MAX 512
> + #define HTT_RX_RING_SIZE HTT_RX_RING_SIZE_MAX
> + #define HTT_RX_RING_FILL_LEVEL (((HTT_RX_RING_SIZE) / 2) - 1)
> + #define HTT_RX_RING_FILL_LEVEL_DUAL_MAC (HTT_RX_RING_SIZE - 1)
> +--- a/ath10k-5.2/htt.h
> ++++ b/ath10k-5.2/htt.h
> +@@ -226,7 +226,7 @@ enum htt_rx_ring_flags {
> + };
> +
> + #define HTT_RX_RING_SIZE_MIN 128
> +-#define HTT_RX_RING_SIZE_MAX 2048
> ++#define HTT_RX_RING_SIZE_MAX 512
> + #define HTT_RX_RING_SIZE HTT_RX_RING_SIZE_MAX
> + #define HTT_RX_RING_FILL_LEVEL (((HTT_RX_RING_SIZE) / 2) - 1)
> + #define HTT_RX_RING_FILL_LEVEL_DUAL_MAC (HTT_RX_RING_SIZE - 1)
> diff --git a/package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch b/package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch
> new file mode 100644
> index 0000000000..27c0032bfb
> --- /dev/null
> +++ b/package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch
> @@ -0,0 +1,76 @@
> +--- a/ath10k-4.19/pci.c
> ++++ b/ath10k-4.19/pci.c
> +@@ -131,7 +131,7 @@ static struct ce_attr host_ce_config_wla
> + 		.flags = CE_ATTR_FLAGS,
> + 		.src_nentries = 0,
> + 		.src_sz_max = 2048,
> +-		.dest_nentries = 512,
> ++		.dest_nentries = 128,
> + 		.recv_cb = ath10k_pci_htt_htc_rx_cb,
> + 	},
> +
> +@@ -140,7 +140,7 @@ static struct ce_attr host_ce_config_wla
> + 		.flags = CE_ATTR_FLAGS,
> + 		.src_nentries = 0,
> + 		.src_sz_max = 2048,
> +-		.dest_nentries = 128,
> ++		.dest_nentries = 64,
> + 		.recv_cb = ath10k_pci_htc_rx_cb,
> + 	},
> +
> +@@ -167,7 +167,7 @@ static struct ce_attr host_ce_config_wla
> + 		.flags = CE_ATTR_FLAGS,
> + 		.src_nentries = 0,
> + 		.src_sz_max = 512,
> +-		.dest_nentries = 512,
> ++		.dest_nentries = 128,
> + 		.recv_cb = ath10k_pci_htt_rx_cb,
> + 	},
> +
> +@@ -192,7 +192,7 @@ static struct ce_attr host_ce_config_wla
> + 		.flags = CE_ATTR_FLAGS,
> + 		.src_nentries = 0,
> + 		.src_sz_max = 2048,
> +-		.dest_nentries = 128,
> ++		.dest_nentries = 96,
> + 		.recv_cb = ath10k_pci_pktlog_rx_cb,
> + 	},
> +
> +--- a/ath10k-5.2/pci.c
> ++++ b/ath10k-5.2/pci.c
> +@@ -131,7 +131,7 @@ static struct ce_attr host_ce_config_wla
> + 		.flags = CE_ATTR_FLAGS,
> + 		.src_nentries = 0,
> + 		.src_sz_max = 2048,
> +-		.dest_nentries = 512,
> ++		.dest_nentries = 128,
> + 		.recv_cb = ath10k_pci_htt_htc_rx_cb,
> + 	},
> +
> +@@ -140,7 +140,7 @@ static struct ce_attr host_ce_config_wla
> + 		.flags = CE_ATTR_FLAGS,
> + 		.src_nentries = 0,
> + 		.src_sz_max = 2048,
> +-		.dest_nentries = 128,
> ++		.dest_nentries = 64,
> + 		.recv_cb = ath10k_pci_htc_rx_cb,
> + 	},
> +
> +@@ -167,7 +167,7 @@ static struct ce_attr host_ce_config_wla
> + 		.flags = CE_ATTR_FLAGS,
> + 		.src_nentries = 0,
> + 		.src_sz_max = 512,
> +-		.dest_nentries = 512,
> ++		.dest_nentries = 128,
> + 		.recv_cb = ath10k_pci_htt_rx_cb,
> + 	},
> +
> +@@ -192,7 +192,7 @@ static struct ce_attr host_ce_config_wla
> + 		.flags = CE_ATTR_FLAGS,
> + 		.src_nentries = 0,
> + 		.src_sz_max = 2048,
> +-		.dest_nentries = 128,
> ++		.dest_nentries = 96,
> + 		.recv_cb = ath10k_pci_pktlog_rx_cb,
> + 	},
> +
> 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
