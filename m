Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6FD105CC6
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 23:44:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=quirrTzk401vn4v5PCSVz+oWXd24JA/WfFwozHsJUTw=; b=fYKRaK3gEhuzBV
	V8o6vBtnAwQ89i5dw3wtXSthpwL4fdUGxBMGyG3FCnKOQCg7UjuKpD2t/M7cJ//TPaYW2bHUsagwh
	5Y80jy1smkQn+lcz7rPaCWrn+5I+y14nk7fojSDCQsDU6LPAdLwqsAFbVsfPP5V30w9+Ofwez6eDH
	5jQjdwAAImH/mGT+9V17gYZ5LtjwIU2kha7Jp93EcmenVQCTLexj3aPiHUZwougPHrLLFIwpEW0Zn
	rRMJfDSGAfklWdOW5YczXwX0O8ByqmwnOBUn44uM9N9Ddb7rzKiWw/lcXdD2K9ElwKm5/sqvVqRxv
	e4tenkoLZB2e+wXaRiIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXvB7-0001rV-JY; Thu, 21 Nov 2019 22:43:57 +0000
Received: from mout-u-204.mailbox.org ([2001:67c:2050:1::465:204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXvAy-0001qS-NM
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 22:43:52 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 47Jvjn3tCmzQjkp;
 Thu, 21 Nov 2019 23:43:41 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id CEllUiR9eG8r; Thu, 21 Nov 2019 23:43:37 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 23:43:19 +0100
Message-Id: <20191121224319.30590-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_144349_071435_49FFEBC4 
X-CRM114-Status: GOOD (  23.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mac80211: update to version 5.4-rc8
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This updates mac80211 to backports based on kernel 5.4-rc8.

The delete patches were applied upstream.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/kernel/mac80211/Makefile              |   8 +-
 ...21-ath10k_init_devices_synchronously.patch |   2 +-
 ...rolling-support-for-various-chipsets.patch |   6 +-
 ...ath10k-fix-latency-issue-for-QCA988x.patch |  42 -------
 ...ckports-pci-Include-linux-pci-aspm.h.patch |  24 ----
 ..._disable_link_state-wrapper-with-ret.patch |  43 -------
 ...t-to-changes-to-skb_get_hash_perturb.patch |  68 ----------
 .../017-rt2x00-initialize-last_reset.patch    |  35 ------
 ...1-rt2x00-introduce-rt2x00_platform_h.patch |   2 +-
 .../602-rt2x00-introduce-rt2x00eeprom.patch   |   4 +-
 ...isabling_bands_through_platform_data.patch |   2 +-
 ...-rt2x00-add-rf-self-txdc-calibration.patch |   2 +-
 .../rt2x00/983-rt2x00-add-r-calibration.patch |   2 +-
 .../984-rt2x00-add-rxdcoc-calibration.patch   |   2 +-
 .../985-rt2x00-add-rxiq-calibration.patch     |   2 +-
 .../986-rt2x00-add-TX-LOFT-calibration.patch  |   2 +-
 ...ting-on-DFS-channels-in-ETSI-domains.patch | 118 ------------------
 ...11-accept-deauth-frames-in-IBSS-mode.patch |  39 ------
 18 files changed, 17 insertions(+), 386 deletions(-)
 delete mode 100644 package/kernel/mac80211/patches/ath/982-ath10k-fix-latency-issue-for-QCA988x.patch
 delete mode 100644 package/kernel/mac80211/patches/build/100-backports-pci-Include-linux-pci-aspm.h.patch
 delete mode 100644 package/kernel/mac80211/patches/build/101-backport-add-pci_disable_link_state-wrapper-with-ret.patch
 delete mode 100644 package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch
 delete mode 100644 package/kernel/mac80211/patches/rt2x00/017-rt2x00-initialize-last_reset.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/030-mac80211_fix-scan-when-operating-on-DFS-channels-in-ETSI-domains.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/363-mac80211-accept-deauth-frames-in-IBSS-mode.patch

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Makefile
index 422c0436e4..9e4c362a2d 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=mac80211
 
-PKG_VERSION:=5.4-rc2-1
-PKG_RELEASE:=2
-PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.4-rc2/
-PKG_HASH:=b3baedc135b455f09f266cb77e73276ca21bceeb0f24bac2184cc4b97d09cdbf
+PKG_VERSION:=5.4-rc8-1
+PKG_RELEASE:=1
+PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.4-rc8/
+PKG_HASH:=707ffc50d0f6fe3398bcc3a7abd44ffa088d9309255a3a71d014620c20d3bbf9
 
 PKG_SOURCE:=backports-$(PKG_VERSION).tar.xz
 PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/backports-$(PKG_VERSION)
diff --git a/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch b/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch
index 8221d78197..69c29f15ee 100644
--- a/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch
+++ b/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch
@@ -14,7 +14,7 @@ Signed-off-by: Sven Eckelmann <sven@open-mesh.com>
 
 --- a/drivers/net/wireless/ath/ath10k/core.c
 +++ b/drivers/net/wireless/ath/ath10k/core.c
-@@ -3071,6 +3071,16 @@ int ath10k_core_register(struct ath10k *
+@@ -3074,6 +3074,16 @@ int ath10k_core_register(struct ath10k *
  
  	queue_work(ar->workqueue, &ar->register_work);
  
diff --git a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index ae0f682224..3cf1957060 100644
--- a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
+++ b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
@@ -172,7 +172,7 @@ v13:
  		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -2788,6 +2794,10 @@ int ath10k_core_start(struct ath10k *ar,
+@@ -2791,6 +2797,10 @@ int ath10k_core_start(struct ath10k *ar,
  		goto err_hif_stop;
  	}
  
@@ -183,7 +183,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -3044,9 +3054,18 @@ static void ath10k_core_register_work(st
+@@ -3047,9 +3057,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -202,7 +202,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -3092,6 +3111,8 @@ void ath10k_core_unregister(struct ath10
+@@ -3095,6 +3114,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
diff --git a/package/kernel/mac80211/patches/ath/982-ath10k-fix-latency-issue-for-QCA988x.patch b/package/kernel/mac80211/patches/ath/982-ath10k-fix-latency-issue-for-QCA988x.patch
deleted file mode 100644
index 3702abb412..0000000000
--- a/package/kernel/mac80211/patches/ath/982-ath10k-fix-latency-issue-for-QCA988x.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-From: Miaoqing Pan <miaoqing@codeaurora.org>
-Subject: [PATCH] ath10k: fix latency issue for QCA988x
-Date: Thu, 29 Aug 2019 10:45:12 +0800
-
-Bad latency is found on QCA988x, the issue was introduced by
-commit 4504f0e5b571 ("ath10k: sdio: workaround firmware UART
-pin configuration bug"). If uart_pin_workaround is false, this
-change will set uart pin even if uart_print is false.
-
-Tested HW: QCA9880
-Tested FW: 10.2.4-1.0-00037
-
-Fixes: 4504f0e5b571 ("ath10k: sdio: workaround firmware UART pin configuration bug")
-Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
----
- drivers/net/wireless/ath/ath10k/core.c | 15 +++++++++------
- 1 file changed, 9 insertions(+), 6 deletions(-)
-
---- a/drivers/net/wireless/ath/ath10k/core.c
-+++ b/drivers/net/wireless/ath/ath10k/core.c
-@@ -2124,12 +2124,15 @@ static int ath10k_init_uart(struct ath10
- 		return ret;
- 	}
- 
--	if (!uart_print && ar->hw_params.uart_pin_workaround) {
--		ret = ath10k_bmi_write32(ar, hi_dbg_uart_txpin,
--					 ar->hw_params.uart_pin);
--		if (ret) {
--			ath10k_warn(ar, "failed to set UART TX pin: %d", ret);
--			return ret;
-+	if (!uart_print) {
-+		if (ar->hw_params.uart_pin_workaround) {
-+			ret = ath10k_bmi_write32(ar, hi_dbg_uart_txpin,
-+						 ar->hw_params.uart_pin);
-+			if (ret) {
-+				ath10k_warn(ar, "failed to set UART TX pin: %d",
-+					    ret);
-+				return ret;
-+			}
- 		}
- 
- 		return 0;
diff --git a/package/kernel/mac80211/patches/build/100-backports-pci-Include-linux-pci-aspm.h.patch b/package/kernel/mac80211/patches/build/100-backports-pci-Include-linux-pci-aspm.h.patch
deleted file mode 100644
index 91740a62b9..0000000000
--- a/package/kernel/mac80211/patches/build/100-backports-pci-Include-linux-pci-aspm.h.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-From: Hauke Mehrtens <hauke@hauke-m.de>
-Date: Fri, 27 Sep 2019 23:12:08 +0200
-Subject: [PATCH] backports: pci: Include linux/pci-aspm.h
-
-In upstream commit 7ce2e76a0420 linux/pci-aspm.h was removed and the
-content included into pci.h. Add an include to have the functions
-defined in linux/pci-aspm.h available when linux/pci.h is included.
-
-Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
----
-
---- a/backport-include/linux/pci.h
-+++ b/backport-include/linux/pci.h
-@@ -7,6 +7,10 @@
- #include <linux/pci-aspm.h>
- #endif
- 
-+#if LINUX_VERSION_IS_LESS(5,4,0)
-+#include <linux/pci-aspm.h>
-+#endif
-+
- #ifndef module_pci_driver
- /**
-  * module_pci_driver() - Helper macro for registering a PCI driver
diff --git a/package/kernel/mac80211/patches/build/101-backport-add-pci_disable_link_state-wrapper-with-ret.patch b/package/kernel/mac80211/patches/build/101-backport-add-pci_disable_link_state-wrapper-with-ret.patch
deleted file mode 100644
index 7691522e73..0000000000
--- a/package/kernel/mac80211/patches/build/101-backport-add-pci_disable_link_state-wrapper-with-ret.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-From: Felix Fietkau <nbd@nbd.name>
-Date: Mon, 28 Oct 2019 15:20:40 +0100
-Subject: [PATCH] backport: add pci_disable_link_state wrapper with return code
-
-The signature of pci_disable_link_state was changed to indicate if the state
-was successfully disabled. Since the old version did not have this, add a
-wrapper which checks the pcie register to determine the return code
-
-Signed-off-by: Felix Fietkau <nbd@nbd.name>
----
-
---- a/backport-include/linux/pci.h
-+++ b/backport-include/linux/pci.h
-@@ -240,4 +240,29 @@ static inline struct pci_dev *pcie_find_
- 	(PCI_IRQ_LEGACY | PCI_IRQ_MSI | PCI_IRQ_MSIX)
- #endif
- 
-+#if defined(CONFIG_PCI) && LINUX_VERSION_IS_LESS(5,3,0)
-+
-+static inline int
-+LINUX_BACKPORT(pci_disable_link_state)(struct pci_dev *pdev, int state)
-+{
-+	u16 aspmc;
-+
-+	pci_disable_link_state(pdev, state);
-+
-+	pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &aspmc);
-+	if ((state & PCIE_LINK_STATE_L0S) &&
-+	    (aspmc & PCI_EXP_LNKCTL_ASPM_L0S))
-+		return -EPERM;
-+
-+	if ((state & PCIE_LINK_STATE_L1) &&
-+	    (aspmc & PCI_EXP_LNKCTL_ASPM_L1))
-+		return -EPERM;
-+
-+	return 0;
-+}
-+
-+#define pci_disable_link_state LINUX_BACKPORT(pci_disable_link_state)
-+
-+#endif
-+
- #endif /* _BACKPORT_LINUX_PCI_H */
diff --git a/package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch b/package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch
deleted file mode 100644
index 7e40180b93..0000000000
--- a/package/kernel/mac80211/patches/build/102-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch
+++ /dev/null
@@ -1,68 +0,0 @@
-From e3c57dd949835419cee8d3b45db38de58bf6ebd5 Mon Sep 17 00:00:00 2001
-From: Hauke Mehrtens <hauke@hauke-m.de>
-Date: Mon, 18 Nov 2019 01:13:37 +0100
-Subject: [PATCH] backports: Adapt to changes to skb_get_hash_perturb()
-
-The skb_get_hash_perturb() function now takes a siphash_key_t instead of
-an u32. This was changed in commit 55667441c84f ("net/flow_dissector:
-switch to siphash"). Use the correct type in the fq header file
-depending on the kernel version.
-
-Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
----
- include/net/fq.h      | 8 ++++++++
- include/net/fq_impl.h | 8 ++++++++
- 2 files changed, 16 insertions(+)
-
---- a/include/net/fq.h
-+++ b/include/net/fq.h
-@@ -69,7 +69,15 @@ struct fq {
- 	struct list_head backlogs;
- 	spinlock_t lock;
- 	u32 flows_cnt;
-+#if LINUX_VERSION_IS_GEQ(5,3,10) || \
-+    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
-+    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
-+    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
-+    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
-+	siphash_key_t	perturbation;
-+#else
- 	u32 perturbation;
-+#endif
- 	u32 limit;
- 	u32 memory_limit;
- 	u32 memory_usage;
---- a/include/net/fq_impl.h
-+++ b/include/net/fq_impl.h
-@@ -108,7 +108,15 @@ begin:
- 
- static u32 fq_flow_idx(struct fq *fq, struct sk_buff *skb)
- {
-+#if LINUX_VERSION_IS_GEQ(5,3,10) || \
-+    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
-+    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
-+    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
-+    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
-+	u32 hash = skb_get_hash_perturb(skb, &fq->perturbation);
-+#else
- 	u32 hash = skb_get_hash_perturb(skb, fq->perturbation);
-+#endif
- 
- 	return reciprocal_scale(hash, fq->flows_cnt);
- }
-@@ -308,7 +316,15 @@ static int fq_init(struct fq *fq, int fl
- 	INIT_LIST_HEAD(&fq->backlogs);
- 	spin_lock_init(&fq->lock);
- 	fq->flows_cnt = max_t(u32, flows_cnt, 1);
-+#if LINUX_VERSION_IS_GEQ(5,3,10) || \
-+    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
-+    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
-+    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
-+    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
-+	get_random_bytes(&fq->perturbation, sizeof(fq->perturbation));
-+#else
- 	fq->perturbation = prandom_u32();
-+#endif
- 	fq->quantum = 300;
- 	fq->limit = 8192;
- 	fq->memory_limit = 16 << 20; /* 16 MBytes */
diff --git a/package/kernel/mac80211/patches/rt2x00/017-rt2x00-initialize-last_reset.patch b/package/kernel/mac80211/patches/rt2x00/017-rt2x00-initialize-last_reset.patch
deleted file mode 100644
index a362340918..0000000000
--- a/package/kernel/mac80211/patches/rt2x00/017-rt2x00-initialize-last_reset.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-Content-Type: text/plain; charset="utf-8"
-MIME-Version: 1.0
-Content-Transfer-Encoding: 7bit
-X-Patchwork-Submitter: Stanislaw Gruszka <sgruszka@redhat.com>
-X-Patchwork-Id: 11161981
-From: Stanislaw Gruszka <sgruszka@redhat.com>
-To: linux-wireless@vger.kernel.org
-Subject: [PATCH] rt2x00: initialize last_reset
-Date: Thu, 26 Sep 2019 10:54:33 +0200
-Message-Id: <20190926085433.1300-1-sgruszka@redhat.com>
-Sender: linux-wireless-owner@vger.kernel.org
-List-ID: <linux-wireless.vger.kernel.org>
-X-Mailing-List: linux-wireless@vger.kernel.org
-
-Initialize last_reset variable to INITIAL_JIFFIES, otherwise it is not
-possible to test H/W reset for first 5 minutes of system run.
-
-Fixes: e403fa31ed71 ("rt2x00: add restart hw")
-Reported-and-tested-by: Jonathan Liu <net147@gmail.com>
-Signed-off-by: Stanislaw Gruszka <sgruszka@redhat.com>
----
- drivers/net/wireless/ralink/rt2x00/rt2x00debug.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
---- a/drivers/net/wireless/ralink/rt2x00/rt2x00debug.c
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2x00debug.c
-@@ -555,7 +555,7 @@ static ssize_t rt2x00debug_write_restart
- {
- 	struct rt2x00debug_intf *intf =	file->private_data;
- 	struct rt2x00_dev *rt2x00dev = intf->rt2x00dev;
--	static unsigned long last_reset;
-+	static unsigned long last_reset = INITIAL_JIFFIES;
- 
- 	if (!rt2x00_has_cap_restart_hw(rt2x00dev))
- 		return -EOPNOTSUPP;
diff --git a/package/kernel/mac80211/patches/rt2x00/601-rt2x00-introduce-rt2x00_platform_h.patch b/package/kernel/mac80211/patches/rt2x00/601-rt2x00-introduce-rt2x00_platform_h.patch
index f9d48b2b31..1e6211a470 100644
--- a/package/kernel/mac80211/patches/rt2x00/601-rt2x00-introduce-rt2x00_platform_h.patch
+++ b/package/kernel/mac80211/patches/rt2x00/601-rt2x00-introduce-rt2x00_platform_h.patch
@@ -22,7 +22,7 @@
 +#endif /* _RT2X00_PLATFORM_H */
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -29,6 +29,7 @@
+@@ -28,6 +28,7 @@
  #include <linux/average.h>
  #include <linux/usb.h>
  #include <linux/clk.h>
diff --git a/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eeprom.patch b/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eeprom.patch
index b388fb9e5d..0c6e5a03b0 100644
--- a/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eeprom.patch
+++ b/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eeprom.patch
@@ -105,7 +105,7 @@
  	.drv_init_registers	= rt2800mmio_init_registers,
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -695,6 +695,7 @@ enum rt2x00_capability_flags {
+@@ -694,6 +694,7 @@ enum rt2x00_capability_flags {
  	REQUIRE_HT_TX_DESC,
  	REQUIRE_PS_AUTOWAKE,
  	REQUIRE_DELAYED_RFKILL,
@@ -113,7 +113,7 @@
  
  	/*
  	 * Capabilities
-@@ -971,6 +972,11 @@ struct rt2x00_dev {
+@@ -970,6 +971,11 @@ struct rt2x00_dev {
  	const struct firmware *fw;
  
  	/*
diff --git a/package/kernel/mac80211/patches/rt2x00/606-rt2x00-allow_disabling_bands_through_platform_data.patch b/package/kernel/mac80211/patches/rt2x00/606-rt2x00-allow_disabling_bands_through_platform_data.patch
index 8a885fad86..6a8e594d5e 100644
--- a/package/kernel/mac80211/patches/rt2x00/606-rt2x00-allow_disabling_bands_through_platform_data.patch
+++ b/package/kernel/mac80211/patches/rt2x00/606-rt2x00-allow_disabling_bands_through_platform_data.patch
@@ -37,7 +37,7 @@
  		num_rates += 4;
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -400,6 +400,7 @@ struct hw_mode_spec {
+@@ -399,6 +399,7 @@ struct hw_mode_spec {
  	unsigned int supported_bands;
  #define SUPPORT_BAND_2GHZ	0x00000001
  #define SUPPORT_BAND_5GHZ	0x00000002
diff --git a/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch b/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch
index ecf159d75a..3bb91ec7c5 100644
--- a/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch
@@ -79,7 +79,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -563,6 +563,7 @@ struct rt2x00lib_ops {
+@@ -562,6 +562,7 @@ struct rt2x00lib_ops {
  			    struct link_qual *qual, const u32 count);
  	void (*gain_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*vco_calibration) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch b/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch
index 5b59c95c9a..d7d07f8bb6 100644
--- a/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch
@@ -182,7 +182,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -564,6 +564,8 @@ struct rt2x00lib_ops {
+@@ -563,6 +563,8 @@ struct rt2x00lib_ops {
  	void (*gain_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*vco_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*rf_self_txdc_cal) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch b/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch
index 7cbcc2864a..b6180efa8b 100644
--- a/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch
@@ -92,7 +92,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -566,6 +566,7 @@ struct rt2x00lib_ops {
+@@ -565,6 +565,7 @@ struct rt2x00lib_ops {
  	void (*rf_self_txdc_cal) (struct rt2x00_dev *rt2x00dev);
  	int (*calcrcalibrationcode) (struct rt2x00_dev *rt2x00dev, int d1, int d2);
  	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch b/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
index 6d4548f469..9603d94f57 100644
--- a/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
@@ -407,7 +407,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -567,6 +567,7 @@ struct rt2x00lib_ops {
+@@ -566,6 +566,7 @@ struct rt2x00lib_ops {
  	int (*calcrcalibrationcode) (struct rt2x00_dev *rt2x00dev, int d1, int d2);
  	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*rxdcoc_calibration) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch b/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
index 111c2a42c2..e0bf00deb6 100644
--- a/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
@@ -992,7 +992,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -568,6 +568,7 @@ struct rt2x00lib_ops {
+@@ -567,6 +567,7 @@ struct rt2x00lib_ops {
  	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*rxdcoc_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*rxiq_calibration) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/subsys/030-mac80211_fix-scan-when-operating-on-DFS-channels-in-ETSI-domains.patch b/package/kernel/mac80211/patches/subsys/030-mac80211_fix-scan-when-operating-on-DFS-channels-in-ETSI-domains.patch
deleted file mode 100644
index 560f8850df..0000000000
--- a/package/kernel/mac80211/patches/subsys/030-mac80211_fix-scan-when-operating-on-DFS-channels-in-ETSI-domains.patch
+++ /dev/null
@@ -1,118 +0,0 @@
-From dc0c18ed229cdcca283dd78fefa38273ec37a42c Mon Sep 17 00:00:00 2001
-From: Aaron Komisar <aaron.komisar@tandemg.com>
-Date: Wed, 2 Oct 2019 13:59:07 +0000
-Subject: mac80211: fix scan when operating on DFS channels in ETSI domains
-
-In non-ETSI regulatory domains scan is blocked when operating channel
-is a DFS channel. For ETSI, however, once DFS channel is marked as
-available after the CAC, this channel will remain available (for some
-time) even after leaving this channel.
-
-Therefore a scan can be done without any impact on the availability
-of the DFS channel as no new CAC is required after the scan.
-
-Enable scan in mac80211 in these cases.
-
-Signed-off-by: Aaron Komisar <aaron.komisar@tandemg.com>
-Link: https://lore.kernel.org/r/1570024728-17284-1-git-send-email-aaron.komisar@tandemg.com
-Signed-off-by: Johannes Berg <johannes.berg@intel.com>
----
- include/net/cfg80211.h |  8 ++++++++
- net/mac80211/scan.c    | 30 ++++++++++++++++++++++++++++--
- net/wireless/reg.c     |  1 +
- net/wireless/reg.h     |  8 --------
- 4 files changed, 37 insertions(+), 10 deletions(-)
-
---- a/include/net/cfg80211.h
-+++ b/include/net/cfg80211.h
-@@ -5554,6 +5554,14 @@ const struct ieee80211_reg_rule *freq_re
- const char *reg_initiator_name(enum nl80211_reg_initiator initiator);
- 
- /**
-+ * regulatory_pre_cac_allowed - check if pre-CAC allowed in the current regdom
-+ * @wiphy: wiphy for which pre-CAC capability is checked.
-+ *
-+ * Pre-CAC is allowed only in some regdomains (notable ETSI).
-+ */
-+bool regulatory_pre_cac_allowed(struct wiphy *wiphy);
-+
-+/**
-  * DOC: Internal regulatory db functions
-  *
-  */
---- a/net/mac80211/scan.c
-+++ b/net/mac80211/scan.c
-@@ -520,10 +520,33 @@ static int ieee80211_start_sw_scan(struc
- 	return 0;
- }
- 
-+static bool __ieee80211_can_leave_ch(struct ieee80211_sub_if_data *sdata)
-+{
-+	struct ieee80211_local *local = sdata->local;
-+	struct ieee80211_sub_if_data *sdata_iter;
-+
-+	if (!ieee80211_is_radar_required(local))
-+		return true;
-+
-+	if (!regulatory_pre_cac_allowed(local->hw.wiphy))
-+		return false;
-+
-+	mutex_lock(&local->iflist_mtx);
-+	list_for_each_entry(sdata_iter, &local->interfaces, list) {
-+		if (sdata_iter->wdev.cac_started) {
-+			mutex_unlock(&local->iflist_mtx);
-+			return false;
-+		}
-+	}
-+	mutex_unlock(&local->iflist_mtx);
-+
-+	return true;
-+}
-+
- static bool ieee80211_can_scan(struct ieee80211_local *local,
- 			       struct ieee80211_sub_if_data *sdata)
- {
--	if (ieee80211_is_radar_required(local))
-+	if (!__ieee80211_can_leave_ch(sdata))
- 		return false;
- 
- 	if (!list_empty(&local->roc_list))
-@@ -630,7 +653,10 @@ static int __ieee80211_start_scan(struct
- 
- 	lockdep_assert_held(&local->mtx);
- 
--	if (local->scan_req || ieee80211_is_radar_required(local))
-+	if (local->scan_req)
-+		return -EBUSY;
-+
-+	if (!__ieee80211_can_leave_ch(sdata))
- 		return -EBUSY;
- 
- 	if (!ieee80211_can_scan(local, sdata)) {
---- a/net/wireless/reg.c
-+++ b/net/wireless/reg.c
-@@ -3883,6 +3883,7 @@ bool regulatory_pre_cac_allowed(struct w
- 
- 	return pre_cac_allowed;
- }
-+EXPORT_SYMBOL(regulatory_pre_cac_allowed);
- 
- void regulatory_propagate_dfs_state(struct wiphy *wiphy,
- 				    struct cfg80211_chan_def *chandef,
---- a/net/wireless/reg.h
-+++ b/net/wireless/reg.h
-@@ -156,14 +156,6 @@ bool regulatory_indoor_allowed(void);
- #define REG_PRE_CAC_EXPIRY_GRACE_MS 2000
- 
- /**
-- * regulatory_pre_cac_allowed - if pre-CAC allowed in the current dfs domain
-- * @wiphy: wiphy for which pre-CAC capability is checked.
--
-- * Pre-CAC is allowed only in ETSI domain.
-- */
--bool regulatory_pre_cac_allowed(struct wiphy *wiphy);
--
--/**
-  * regulatory_propagate_dfs_state - Propagate DFS channel state to other wiphys
-  * @wiphy - wiphy on which radar is detected and the event will be propagated
-  *	to other available wiphys having the same DFS domain
diff --git a/package/kernel/mac80211/patches/subsys/363-mac80211-accept-deauth-frames-in-IBSS-mode.patch b/package/kernel/mac80211/patches/subsys/363-mac80211-accept-deauth-frames-in-IBSS-mode.patch
deleted file mode 100644
index ad0792b4f6..0000000000
--- a/package/kernel/mac80211/patches/subsys/363-mac80211-accept-deauth-frames-in-IBSS-mode.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From 95697f9907bfe3eab0ef20265a766b22e27dde64 Mon Sep 17 00:00:00 2001
-From: Johannes Berg <johannes.berg@intel.com>
-Date: Fri, 4 Oct 2019 15:37:05 +0300
-Subject: [PATCH] mac80211: accept deauth frames in IBSS mode
-
-We can process deauth frames and all, but we drop them very
-early in the RX path today - this could never have worked.
-
-Fixes: 2cc59e784b54 ("mac80211: reply to AUTH with DEAUTH if sta allocation fails in IBSS")
-Signed-off-by: Johannes Berg <johannes.berg@intel.com>
-Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
-Link: https://lore.kernel.org/r/20191004123706.15768-2-luca@coelho.fi
-Signed-off-by: Johannes Berg <johannes.berg@intel.com>
----
- net/mac80211/rx.c | 11 ++++++++++-
- 1 file changed, 10 insertions(+), 1 deletion(-)
-
---- a/net/mac80211/rx.c
-+++ b/net/mac80211/rx.c
-@@ -3467,9 +3467,18 @@ ieee80211_rx_h_mgmt(struct ieee80211_rx_
- 	case cpu_to_le16(IEEE80211_STYPE_PROBE_RESP):
- 		/* process for all: mesh, mlme, ibss */
- 		break;
-+	case cpu_to_le16(IEEE80211_STYPE_DEAUTH):
-+		if (is_multicast_ether_addr(mgmt->da) &&
-+		    !is_broadcast_ether_addr(mgmt->da))
-+			return RX_DROP_MONITOR;
-+
-+		/* process only for station/IBSS */
-+		if (sdata->vif.type != NL80211_IFTYPE_STATION &&
-+		    sdata->vif.type != NL80211_IFTYPE_ADHOC)
-+			return RX_DROP_MONITOR;
-+		break;
- 	case cpu_to_le16(IEEE80211_STYPE_ASSOC_RESP):
- 	case cpu_to_le16(IEEE80211_STYPE_REASSOC_RESP):
--	case cpu_to_le16(IEEE80211_STYPE_DEAUTH):
- 	case cpu_to_le16(IEEE80211_STYPE_DISASSOC):
- 		if (is_multicast_ether_addr(mgmt->da) &&
- 		    !is_broadcast_ether_addr(mgmt->da))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
