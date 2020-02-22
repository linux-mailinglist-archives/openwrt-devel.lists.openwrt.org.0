Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62895169183
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 20:29:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYDmSJdZ/ouuhgXNc/iZd55LYgxTGcfIK0+xIYmOt+I=; b=Y17/0RalHPKBr/
	ZLPYRg14ogBvkLe1lvhKE4B3kSuLMDnsNP2DvJW9OeH2z8xnu3TFJB3oMOnLKaCCD9xddM5yfZ0pz
	XapL1p2yZNSl788ntfk9vcwvRr35oE3NCgUpzluusNeSVVwyO2+yIGKGw+uoSdbitwhMrKm1c6/Oc
	xEYVM5MhdryXFlGNu6y3GFJ4dhGucB39+Zvz6gerBSzcrNkUl9xEVbSXIQP/27uUfbP5DfEZBsLd3
	/vwYN+HAMaanFJRzLHp78vjTWWeAol9tY5J8r6E6Nf66uiw2orUNG9Z7/rx6Kj0BNTrf8KHVfkVGt
	jiUUCKTJyv9xzQh5ELpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5aSW-0000MJ-Vh; Sat, 22 Feb 2020 19:29:04 +0000
Received: from mout-p-103.mailbox.org ([2001:67c:2050::465:103])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5aSA-0000AA-UG
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 19:28:45 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 48Pyzr2srJzKmh9;
 Sat, 22 Feb 2020 20:28:40 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id EpYFM234abkh; Sat, 22 Feb 2020 20:28:36 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 20:28:24 +0100
Message-Id: <20200222192824.24670-3-hauke@hauke-m.de>
In-Reply-To: <20200222192824.24670-1-hauke@hauke-m.de>
References: <20200222192824.24670-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_112843_277406_A647203C 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 3/3] ath10k-ct: Use ath10k-ct version 5.4
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, greearb@candelatech.com,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This makes ath10k-ct use the version based on kernel 5.4 by default.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---

The update to version 5.4 is needed to make this driver compile against 
kernel 5.4.
This got some minimal testing on IPQ4019 by me.

 package/kernel/ath10k-ct/Makefile             |   4 +-
 ...64-ath10k-commit-rates-from-mac80211.patch |  26 +
 ...rolling-support-for-various-chipsets.patch | 514 ++++++++++++++++++
 ...h10k-4.16-use-tpt-trigger-by-default.patch |  37 ++
 ...0-0010-ath10k-limit-htt-rx-ring-size.patch |  14 +
 ...60-0011-ath10k-limit-pci-buffer-size.patch |  50 ++
 6 files changed, 643 insertions(+), 2 deletions(-)

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index 62004cd490..ca4fa93788 100644
--- a/package/kernel/ath10k-ct/Makefile
+++ b/package/kernel/ath10k-ct/Makefile
@@ -12,10 +12,10 @@ PKG_SOURCE_DATE:=2020-02-18
 PKG_SOURCE_VERSION:=bed49a5f6824fcd8757fd27f6b2a4f6ea933bf2f
 PKG_MIRROR_HASH:=4f16b1b44b0be6c2dba92754e78888533fdc6bfbf63ae673301a49c47c5e53ea
 
-# Build the 5.2 ath10k-ct driver version.  Other option is "-4.19".
+# Build the 5.4 ath10k-ct driver version.  Other option is "-4.19".
 # Probably this should match as closely as
 # possible to whatever mac80211 backports version is being used.
-CT_KVER="-4.19"
+CT_KVER="-5.4"
 
 PKG_MAINTAINER:=Ben Greear <greearb@candelatech.com>
 PKG_BUILD_PARALLEL:=1
diff --git a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
index 9a31164fcc..05d65e24ea 100644
--- a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
+++ b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
@@ -61,3 +61,29 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->mgmt_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param,
  						hw_rate_code);
+--- a/ath10k-5.4/mac.c
++++ b/ath10k-5.4/mac.c
+@@ -6793,6 +6793,7 @@ static void ath10k_bss_info_changed(stru
+ 			   "mac vdev %d mcast_rate %x\n",
+ 			   arvif->vdev_id, rate);
+ 
++		arvif->mcast_rate[band] = rate;
+ 		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
+ 		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
+ 						vdev_param, rate);
+@@ -6801,6 +6802,7 @@ static void ath10k_bss_info_changed(stru
+ 				    "failed to set mcast rate on vdev %i: %d\n",
+ 				    arvif->vdev_id,  ret);
+ 
++		arvif->bcast_rate[band] = rate;
+ 		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
+ 		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
+ 						vdev_param, rate);
+@@ -6827,6 +6829,7 @@ static void ath10k_bss_info_changed(stru
+ 			return;
+ 		}
+ 
++		arvif->mgt_rate[def.chan->band] = hw_rate_code;
+ 		vdev_param = ar->wmi.vdev_param->mgmt_rate;
+ 		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param,
+ 						hw_rate_code);
diff --git a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index a7525841c6..696da7b455 100644
--- a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
+++ b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
@@ -1118,3 +1118,517 @@ v13:
  struct wmi_ext_resource_config_10_4_cmd {
  	/* contains enum wmi_host_platform_type */
  	__le32 host_platform_config;
+--- a/ath10k-5.4/Kconfig
++++ b/ath10k-5.4/Kconfig
+@@ -66,6 +66,16 @@ config ATH10K_DEBUGFS
+ 
+ 	  If unsure, say Y to make it easier to debug problems.
+ 
++config ATH10K_LEDS
++	bool "Atheros ath10k LED support"
++	depends on ATH10K
++	select MAC80211_LEDS
++	select LEDS_CLASS
++	select NEW_LEDS
++	default y
++	---help---
++	  This option is necessary, if you want LED support for chipset connected led pins. If unsure, say N.
++
+ config ATH10K_SPECTRAL
+ 	bool "Atheros ath10k spectral scan support"
+ 	depends on ATH10K_DEBUGFS
+--- a/ath10k-5.4/Makefile
++++ b/ath10k-5.4/Makefile
+@@ -19,6 +19,7 @@ ath10k_core-$(CONFIG_ATH10K_SPECTRAL) +=
+ ath10k_core-$(CONFIG_NL80211_TESTMODE) += testmode.o
+ ath10k_core-$(CONFIG_ATH10K_TRACING) += trace.o
+ ath10k_core-$(CONFIG_THERMAL) += thermal.o
++ath10k_core-$(CONFIG_ATH10K_LEDS) += leds.o
+ ath10k_core-$(CONFIG_MAC80211_DEBUGFS) += debugfs_sta.o
+ ath10k_core-$(CONFIG_PM) += wow.o
+ ath10k_core-$(CONFIG_DEV_COREDUMP) += coredump.o
+--- a/ath10k-5.4/core.c
++++ b/ath10k-5.4/core.c
+@@ -25,6 +25,7 @@
+ #include "testmode.h"
+ #include "wmi-ops.h"
+ #include "coredump.h"
++#include "leds.h"
+ 
+ /* Disable ath10k-ct DBGLOG output by default */
+ unsigned int ath10k_debug_mask = ATH10K_DBG_NO_DBGLOG;
+@@ -67,6 +68,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA988X_2_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca988x hw2.0",
++		.led_pin = 1,
+ 		.patch_load_addr = QCA988X_HW_2_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_ALL,
+@@ -137,6 +139,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA9887_1_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca9887 hw1.0",
++		.led_pin = 1,
+ 		.patch_load_addr = QCA9887_HW_1_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_ALL,
+@@ -344,6 +347,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA99X0_2_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca99x0 hw2.0",
++		.led_pin = 17,
+ 		.patch_load_addr = QCA99X0_HW_2_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.otp_exe_param = 0x00000700,
+@@ -385,6 +389,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA9984_1_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca9984/qca9994 hw1.0",
++		.led_pin = 17,
+ 		.patch_load_addr = QCA9984_HW_1_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
+@@ -433,6 +438,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA9888_2_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca9888 hw2.0",
++		.led_pin = 17,
+ 		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
+@@ -3573,6 +3579,10 @@ int ath10k_core_start(struct ath10k *ar,
+ 			ath10k_wmi_check_apply_board_power_ctl_table(ar);
+ 	}
+ 
++	status = ath10k_leds_start(ar);
++	if (status)
++		goto err_hif_stop;
++
+ 	return 0;
+ 
+ err_hif_stop:
+@@ -3829,9 +3839,18 @@ static void ath10k_core_register_work(st
+ 		goto err_spectral_destroy;
+ 	}
+ 
++	status = ath10k_leds_register(ar);
++	if (status) {
++		ath10k_err(ar, "could not register leds: %d\n",
++			   status);
++		goto err_thermal_unregister;
++	}
++
+ 	set_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags);
+ 	return;
+ 
++err_thermal_unregister:
++	ath10k_thermal_unregister(ar);
+ err_spectral_destroy:
+ 	ath10k_spectral_destroy(ar);
+ err_debug_destroy:
+@@ -3891,6 +3910,8 @@ void ath10k_core_unregister(struct ath10
+ 	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
+ 		return;
+ 
++	ath10k_leds_unregister(ar);
++
+ 	ath10k_thermal_unregister(ar);
+ 	/* Stop spectral before unregistering from mac80211 to remove the
+ 	 * relayfs debugfs file cleanly. Otherwise the parent debugfs tree
+--- a/ath10k-5.4/core.h
++++ b/ath10k-5.4/core.h
+@@ -14,6 +14,7 @@
+ #include <linux/pci.h>
+ #include <linux/uuid.h>
+ #include <linux/time.h>
++#include <linux/leds.h>
+ 
+ #include "htt.h"
+ #include "htc.h"
+@@ -1469,6 +1470,13 @@ struct ath10k {
+ 	} testmode;
+ 
+ 	struct {
++		struct gpio_led wifi_led;
++		struct led_classdev cdev;
++		char label[48];
++		u32 gpio_state_pin;
++	} leds;
++
++	struct {
+ 		/* protected by data_lock */
+ 		u32 fw_crash_counter;
+ 		u32 fw_warm_reset_counter;
+--- a/ath10k-5.4/hw.h
++++ b/ath10k-5.4/hw.h
+@@ -518,6 +518,7 @@ struct ath10k_hw_params {
+ 	const char *name;
+ 	u32 patch_load_addr;
+ 	int uart_pin;
++	int led_pin;
+ 	u32 otp_exe_param;
+ 
+ 	/* Type of hw cycle counter wraparound logic, for more info
+--- /dev/null
++++ b/ath10k-5.4/leds.c
+@@ -0,0 +1,103 @@
++/*
++ * Copyright (c) 2005-2011 Atheros Communications Inc.
++ * Copyright (c) 2011-2017 Qualcomm Atheros, Inc.
++ * Copyright (c) 2018 Sebastian Gottschall <s.gottschall@dd-wrt.com>
++ * Copyright (c) 2018, The Linux Foundation. All rights reserved.
++ *
++ * Permission to use, copy, modify, and/or distribute this software for any
++ * purpose with or without fee is hereby granted, provided that the above
++ * copyright notice and this permission notice appear in all copies.
++ *
++ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
++ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
++ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
++ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
++ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
++ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
++ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
++ */
++
++#include <linux/leds.h>
++
++#include "core.h"
++#include "wmi.h"
++#include "wmi-ops.h"
++
++#include "leds.h"
++
++static int ath10k_leds_set_brightness_blocking(struct led_classdev *led_cdev,
++					       enum led_brightness brightness)
++{
++	struct ath10k *ar = container_of(led_cdev, struct ath10k,
++					 leds.cdev);
++	struct gpio_led *led = &ar->leds.wifi_led;
++
++	mutex_lock(&ar->conf_mutex);
++
++	if (ar->state != ATH10K_STATE_ON)
++		goto out;
++
++	ar->leds.gpio_state_pin = (brightness != LED_OFF) ^ led->active_low;
++	ath10k_wmi_gpio_output(ar, led->gpio, ar->leds.gpio_state_pin);
++
++out:
++	mutex_unlock(&ar->conf_mutex);
++
++	return 0;
++}
++
++int ath10k_leds_start(struct ath10k *ar)
++{
++	if (ar->hw_params.led_pin == 0)
++		/* leds not supported */
++		return 0;
++
++	/* under some circumstances, the gpio pin gets reconfigured
++	 * to default state by the firmware, so we need to
++	 * reconfigure it this behaviour has only ben seen on
++	 * QCA9984 and QCA99XX devices so far
++	 */
++	ath10k_wmi_gpio_config(ar, ar->hw_params.led_pin, 0,
++			       WMI_GPIO_PULL_NONE, WMI_GPIO_INTTYPE_DISABLE);
++	ath10k_wmi_gpio_output(ar, ar->hw_params.led_pin, 1);
++
++	return 0;
++}
++
++int ath10k_leds_register(struct ath10k *ar)
++{
++	int ret;
++
++	if (ar->hw_params.led_pin == 0)
++		/* leds not supported */
++		return 0;
++
++	snprintf(ar->leds.label, sizeof(ar->leds.label), "ath10k-%s",
++		 wiphy_name(ar->hw->wiphy));
++	ar->leds.wifi_led.active_low = 1;
++	ar->leds.wifi_led.gpio = ar->hw_params.led_pin;
++	ar->leds.wifi_led.name = ar->leds.label;
++	ar->leds.wifi_led.default_state = LEDS_GPIO_DEFSTATE_KEEP;
++
++	ar->leds.cdev.name = ar->leds.label;
++	ar->leds.cdev.brightness_set_blocking = ath10k_leds_set_brightness_blocking;
++
++	/* FIXME: this assignment doesn't make sense as it's NULL, remove it? */
++	ar->leds.cdev.default_trigger = ar->leds.wifi_led.default_trigger;
++
++	ret = led_classdev_register(wiphy_dev(ar->hw->wiphy), &ar->leds.cdev);
++	if (ret)
++		return ret;
++
++	return 0;
++}
++
++void ath10k_leds_unregister(struct ath10k *ar)
++{
++	if (ar->hw_params.led_pin == 0)
++		/* leds not supported */
++		return;
++
++	led_classdev_unregister(&ar->leds.cdev);
++}
++
+--- /dev/null
++++ b/ath10k-5.4/leds.h
+@@ -0,0 +1,41 @@
++/*
++ * Copyright (c) 2018, The Linux Foundation. All rights reserved.
++ *
++ * Permission to use, copy, modify, and/or distribute this software for any
++ * purpose with or without fee is hereby granted, provided that the above
++ * copyright notice and this permission notice appear in all copies.
++ *
++ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
++ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
++ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
++ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
++ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
++ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
++ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
++ */
++#ifndef _LEDS_H_
++#define _LEDS_H_
++
++#include "core.h"
++
++#ifdef CONFIG_ATH10K_LEDS
++void ath10k_leds_unregister(struct ath10k *ar);
++int ath10k_leds_start(struct ath10k *ar);
++int ath10k_leds_register(struct ath10k *ar);
++#else
++static inline void ath10k_leds_unregister(struct ath10k *ar)
++{
++}
++
++static inline int ath10k_leds_start(struct ath10k *ar)
++{
++	return 0;
++}
++
++static inline int ath10k_leds_register(struct ath10k *ar)
++{
++	return 0;
++}
++
++#endif
++#endif /* _LEDS_H_ */
+--- a/ath10k-5.4/mac.c
++++ b/ath10k-5.4/mac.c
+@@ -24,6 +24,7 @@
+ #include "wmi-tlv.h"
+ #include "wmi-ops.h"
+ #include "wow.h"
++#include "leds.h"
+ 
+ /*********/
+ /* Rates */
+--- a/ath10k-5.4/wmi-ops.h
++++ b/ath10k-5.4/wmi-ops.h
+@@ -218,7 +218,10 @@ struct wmi_ops {
+ 	struct sk_buff *(*gen_bb_timing)
+ 			(struct ath10k *ar,
+ 			 const struct wmi_bb_timing_cfg_arg *arg);
++	struct sk_buff *(*gen_gpio_config)(struct ath10k *ar, u32 gpio_num,
++					   u32 input, u32 pull_type, u32 intr_mode);
+ 
++	struct sk_buff *(*gen_gpio_output)(struct ath10k *ar, u32 gpio_num, u32 set);
+ };
+ 
+ int ath10k_wmi_cmd_send(struct ath10k *ar, struct sk_buff *skb, u32 cmd_id);
+@@ -1105,6 +1108,35 @@ ath10k_wmi_force_fw_hang(struct ath10k *
+ 	return ath10k_wmi_cmd_send(ar, skb, ar->wmi.cmd->force_fw_hang_cmdid);
+ }
+ 
++static inline int ath10k_wmi_gpio_config(struct ath10k *ar, u32 gpio_num,
++					 u32 input, u32 pull_type, u32 intr_mode)
++{
++	struct sk_buff *skb;
++
++	if (!ar->wmi.ops->gen_gpio_config)
++		return -EOPNOTSUPP;
++
++	skb = ar->wmi.ops->gen_gpio_config(ar, gpio_num, input, pull_type, intr_mode);
++	if (IS_ERR(skb))
++		return PTR_ERR(skb);
++
++	return ath10k_wmi_cmd_send(ar, skb, ar->wmi.cmd->gpio_config_cmdid);
++}
++
++static inline int ath10k_wmi_gpio_output(struct ath10k *ar, u32 gpio_num, u32 set)
++{
++	struct sk_buff *skb;
++
++	if (!ar->wmi.ops->gen_gpio_config)
++		return -EOPNOTSUPP;
++
++	skb = ar->wmi.ops->gen_gpio_output(ar, gpio_num, set);
++	if (IS_ERR(skb))
++		return PTR_ERR(skb);
++
++	return ath10k_wmi_cmd_send(ar, skb, ar->wmi.cmd->gpio_output_cmdid);
++}
++
+ static inline int
+ ath10k_wmi_dbglog_cfg(struct ath10k *ar, u64 module_enable, u32 log_level)
+ {
+--- a/ath10k-5.4/wmi-tlv.c
++++ b/ath10k-5.4/wmi-tlv.c
+@@ -4364,6 +4364,8 @@ static const struct wmi_ops wmi_tlv_ops
+ 	.gen_echo = ath10k_wmi_tlv_op_gen_echo,
+ 	.gen_vdev_spectral_conf = ath10k_wmi_tlv_op_gen_vdev_spectral_conf,
+ 	.gen_vdev_spectral_enable = ath10k_wmi_tlv_op_gen_vdev_spectral_enable,
++	/* .gen_gpio_config not implemented */
++	/* .gen_gpio_output not implemented */
+ };
+ 
+ static const struct wmi_peer_flags_map wmi_tlv_peer_flags_map = {
+--- a/ath10k-5.4/wmi.c
++++ b/ath10k-5.4/wmi.c
+@@ -8295,6 +8295,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
+ 	return skb;
+ }
+ 
++static struct sk_buff *ath10k_wmi_op_gen_gpio_config(struct ath10k *ar,
++						     u32 gpio_num, u32 input,
++						     u32 pull_type, u32 intr_mode)
++{
++	struct wmi_gpio_config_cmd *cmd;
++	struct sk_buff *skb;
++
++	skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
++	if (!skb)
++		return ERR_PTR(-ENOMEM);
++
++	cmd = (struct wmi_gpio_config_cmd *)skb->data;
++	cmd->pull_type = __cpu_to_le32(pull_type);
++	cmd->gpio_num = __cpu_to_le32(gpio_num);
++	cmd->input = __cpu_to_le32(input);
++	cmd->intr_mode = __cpu_to_le32(intr_mode);
++
++	ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi gpio_config gpio_num 0x%08x input 0x%08x pull_type 0x%08x intr_mode 0x%08x\n",
++		   gpio_num, input, pull_type, intr_mode);
++
++	return skb;
++}
++
++static struct sk_buff *ath10k_wmi_op_gen_gpio_output(struct ath10k *ar,
++						     u32 gpio_num, u32 set)
++{
++	struct wmi_gpio_output_cmd *cmd;
++	struct sk_buff *skb;
++
++	skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
++	if (!skb)
++		return ERR_PTR(-ENOMEM);
++
++	cmd = (struct wmi_gpio_output_cmd *)skb->data;
++	cmd->gpio_num = __cpu_to_le32(gpio_num);
++	cmd->set = __cpu_to_le32(set);
++
++	ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi gpio_output gpio_num 0x%08x set 0x%08x\n",
++		   gpio_num, set);
++
++	return skb;
++}
++
+ static struct sk_buff *
+ ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
+ 			     enum wmi_sta_ps_mode psmode)
+@@ -10094,6 +10137,9 @@ static const struct wmi_ops wmi_ops = {
+ 	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
+ 	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
+ 	.gen_echo = ath10k_wmi_op_gen_echo,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
++
+ 	/* .gen_bcn_tmpl not implemented */
+ 	/* .gen_prb_tmpl not implemented */
+ 	/* .gen_p2p_go_bcn_ie not implemented */
+@@ -10164,6 +10210,8 @@ static const struct wmi_ops wmi_10_1_ops
+ 	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
+ 	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
+ 	.gen_echo = ath10k_wmi_op_gen_echo,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
+ 	/* .gen_bcn_tmpl not implemented */
+ 	/* .gen_prb_tmpl not implemented */
+ 	/* .gen_p2p_go_bcn_ie not implemented */
+@@ -10243,6 +10291,8 @@ static const struct wmi_ops wmi_10_2_ops
+ 	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
+ 	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
+ 	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
+ 	/* .gen_pdev_enable_adaptive_cca not implemented */
+ };
+ 
+@@ -10314,6 +10364,8 @@ static const struct wmi_ops wmi_10_2_4_o
+ 		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
+ 	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
+ 	.gen_bb_timing = ath10k_wmi_10_2_4_op_gen_bb_timing,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
+ 	/* .gen_bcn_tmpl not implemented */
+ 	/* .gen_prb_tmpl not implemented */
+ 	/* .gen_p2p_go_bcn_ie not implemented */
+@@ -10395,6 +10447,8 @@ static const struct wmi_ops wmi_10_4_ops
+ 	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
+ 	.gen_echo = ath10k_wmi_op_gen_echo,
+ 	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
+ };
+ 
+ int ath10k_wmi_attach(struct ath10k *ar)
+--- a/ath10k-5.4/wmi.h
++++ b/ath10k-5.4/wmi.h
+@@ -3110,6 +3110,41 @@ enum wmi_10_4_feature_mask {
+ 
+ };
+ 
++/* WMI_GPIO_CONFIG_CMDID */
++enum {
++	WMI_GPIO_PULL_NONE,
++	WMI_GPIO_PULL_UP,
++	WMI_GPIO_PULL_DOWN,
++};
++
++enum {
++	WMI_GPIO_INTTYPE_DISABLE,
++	WMI_GPIO_INTTYPE_RISING_EDGE,
++	WMI_GPIO_INTTYPE_FALLING_EDGE,
++	WMI_GPIO_INTTYPE_BOTH_EDGE,
++	WMI_GPIO_INTTYPE_LEVEL_LOW,
++	WMI_GPIO_INTTYPE_LEVEL_HIGH
++};
++
++/* WMI_GPIO_CONFIG_CMDID */
++struct wmi_gpio_config_cmd {
++	__le32 gpio_num;             /* GPIO number to be setup */
++	__le32 input;                /* 0 - Output/ 1 - Input */
++	__le32 pull_type;            /* Pull type defined above */
++	__le32 intr_mode;            /* Interrupt mode defined above (Input) */
++} __packed;
++
++/* WMI_GPIO_OUTPUT_CMDID */
++struct wmi_gpio_output_cmd {
++	__le32 gpio_num;    /* GPIO number to be setup */
++	__le32 set;         /* Set the GPIO pin*/
++} __packed;
++
++/* WMI_GPIO_INPUT_EVENTID */
++struct wmi_gpio_input_event {
++	__le32 gpio_num;    /* GPIO number which changed state */
++} __packed;
++
+ struct wmi_ext_resource_config_10_4_cmd {
+ 	/* contains enum wmi_host_platform_type */
+ 	__le32 host_platform_config;
diff --git a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
index 1b6fd51acb..c23c31417b 100644
--- a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
+++ b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
@@ -88,3 +88,40 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  		IEEE80211_TPT_LEDTRIG_FL_RADIO, ath10k_tpt_blink,
  		ARRAY_SIZE(ath10k_tpt_blink));
  #endif
+--- a/ath10k-5.4/core.h
++++ b/ath10k-5.4/core.h
+@@ -1573,6 +1573,10 @@ struct ath10k {
+ 	u8 csi_data[4096];
+ 	u16 csi_data_len;
+ 
++#ifdef CPTCFG_MAC80211_LEDS
++	const char *led_default_trigger;
++#endif
++
+ 	/* must be last */
+ 	u8 drv_priv[0] __aligned(sizeof(void *));
+ };
+--- a/ath10k-5.4/leds.c
++++ b/ath10k-5.4/leds.c
+@@ -81,9 +81,7 @@ int ath10k_leds_register(struct ath10k *
+ 
+ 	ar->leds.cdev.name = ar->leds.label;
+ 	ar->leds.cdev.brightness_set_blocking = ath10k_leds_set_brightness_blocking;
+-
+-	/* FIXME: this assignment doesn't make sense as it's NULL, remove it? */
+-	ar->leds.cdev.default_trigger = ar->leds.wifi_led.default_trigger;
++	ar->leds.cdev.default_trigger = ar->led_default_trigger;
+ 
+ 	ret = led_classdev_register(wiphy_dev(ar->hw->wiphy), &ar->leds.cdev);
+ 	if (ret)
+--- a/ath10k-5.4/mac.c
++++ b/ath10k-5.4/mac.c
+@@ -10367,7 +10367,7 @@ int ath10k_mac_register(struct ath10k *a
+ 	ar->hw->weight_multiplier = ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
+ 
+ #ifdef CPTCFG_MAC80211_LEDS
+-	ieee80211_create_tpt_led_trigger(ar->hw,
++	ar->led_default_trigger = ieee80211_create_tpt_led_trigger(ar->hw,
+ 		IEEE80211_TPT_LEDTRIG_FL_RADIO, ath10k_tpt_blink,
+ 		ARRAY_SIZE(ath10k_tpt_blink));
+ #endif
diff --git a/package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch b/package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch
index a3a939440a..70f4fb0546 100644
--- a/package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch
+++ b/package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch
@@ -26,3 +26,17 @@
  #define HTT_RX_RING_SIZE HTT_RX_RING_SIZE_MAX
  #define HTT_RX_RING_FILL_LEVEL (((HTT_RX_RING_SIZE) / 2) - 1)
  #define HTT_RX_RING_FILL_LEVEL_DUAL_MAC (HTT_RX_RING_SIZE - 1)
+--- a/ath10k-5.4/htt.h
++++ b/ath10k-5.4/htt.h
+@@ -225,7 +225,11 @@ enum htt_rx_ring_flags {
+ };
+ 
+ #define HTT_RX_RING_SIZE_MIN 128
++#ifndef CONFIG_ATH10K_SMALLBUFFERS
+ #define HTT_RX_RING_SIZE_MAX 2048
++#else
++#define HTT_RX_RING_SIZE_MAX 512
++#endif
+ #define HTT_RX_RING_SIZE HTT_RX_RING_SIZE_MAX
+ #define HTT_RX_RING_FILL_LEVEL (((HTT_RX_RING_SIZE) / 2) - 1)
+ #define HTT_RX_RING_FILL_LEVEL_DUAL_MAC (HTT_RX_RING_SIZE - 1)
diff --git a/package/kernel/ath10k-ct/patches/960-0011-ath10k-limit-pci-buffer-size.patch b/package/kernel/ath10k-ct/patches/960-0011-ath10k-limit-pci-buffer-size.patch
index 517be89dab..0b691217b2 100644
--- a/package/kernel/ath10k-ct/patches/960-0011-ath10k-limit-pci-buffer-size.patch
+++ b/package/kernel/ath10k-ct/patches/960-0011-ath10k-limit-pci-buffer-size.patch
@@ -98,3 +98,53 @@
  		.recv_cb = ath10k_pci_pktlog_rx_cb,
  	},
  
+--- a/ath10k-5.4/pci.c
++++ b/ath10k-5.4/pci.c
+@@ -131,7 +131,11 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 2048,
++#ifndef CONFIG_ATH10K_SMALLBUFFERS
+ 		.dest_nentries = 512,
++#else
++		.dest_nentries = 128,
++#endif
+ 		.recv_cb = ath10k_pci_htt_htc_rx_cb,
+ 	},
+ 
+@@ -140,7 +144,11 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 2048,
++#ifndef CONFIG_ATH10K_SMALLBUFFERS
+ 		.dest_nentries = 128,
++#else
++		.dest_nentries = 64,
++#endif
+ 		.recv_cb = ath10k_pci_htc_rx_cb,
+ 	},
+ 
+@@ -167,7 +175,11 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 512,
++#ifndef CONFIG_ATH10K_SMALLBUFFERS
+ 		.dest_nentries = 512,
++#else
++		.dest_nentries = 128,
++#endif
+ 		.recv_cb = ath10k_pci_htt_rx_cb,
+ 	},
+ 
+@@ -192,7 +204,11 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 2048,
++#ifndef CONFIG_ATH10K_SMALLBUFFERS
+ 		.dest_nentries = 128,
++#else
++		.dest_nentries = 96,
++#endif
+ 		.recv_cb = ath10k_pci_pktlog_rx_cb,
+ 	},
+ 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
