Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E9A128F47
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 19:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIECVDOUinRfXp0LiWYs4sNTaTv8I/frrFzS4gk0ZWA=; b=GiLDWHVAkuUKq2
	aJqTvR1uiTwqtQ9hGeMr+E3i8gIEUPnwPlp8DQY3pRebjB4JCT4k1yJvGzj9KNHk4V/eI1U6xdlZW
	VDPBkOtMYBVQ8mZfe7ouIwBudshS4RjBWHU1A6JkybEKQrW2lMnCdcU6G9PQw7J5bvX3Y/PeptQ3D
	0xH45r4HAwwYZdzGvzCahGhub5T7Yp1OALuszD5XW4IqiCeQafuQsKlD0EFyc6B79ppy0xZ1wf36e
	egUyVQOQ3NXh4hh4ceietUV08uzcksRj0dvZCUK/KCVy+cjvPnde+GoQMVoaUG/V+ZAMuKwyAB1Cl
	/KXk+9Ld6xjMgJTcLG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij5r1-000304-QU; Sun, 22 Dec 2019 18:21:23 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij5qr-0002ze-S9
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 18:21:16 +0000
Received: by mail-lf1-x143.google.com with SMTP id i23so10974218lfo.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Dec 2019 10:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ebIrJVNciWs1k2GwB/Vlq/i6hbEhCZdMlR0qic3eQ/g=;
 b=E9fdsQTKP4tpQ+/i5bnhPMZBejXSCEFVAjSnqCjhw9xgW/OLZ+BbZ7F9oNFyEuMd1C
 dOQ0vAVrp7i7Otr89/gjFcuvbnitpQHwnAdFEknpTr7oW8AHZkFCnn/j4PxyEIOgp/k/
 8tqDMRA9qSSknpEh6ZrVWn7112aDBnLw13TV+GO4j4STPtiK59OyIPT67Nju1FjAjelS
 O6HizwLPWBovN/vof8KJg3fKv8cD67IRXl4uDN+P9atENv0WV2TjYlcRE7ABBPBm74wn
 HweCZlFE6LmcufOa/Z+zQ+y71rn6XLCeXnGXyWseYKo8RTK3ELKOzWxns6/KDrSKfCTK
 /gzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ebIrJVNciWs1k2GwB/Vlq/i6hbEhCZdMlR0qic3eQ/g=;
 b=VmWKv9zRmCjECUIl4WyLZGnEmJy6psvuI+P/X1gNQyn8UMq/LoGJy1wTW2o31fSVOK
 mjJL2WiOsKdulGREw7cRqStXHpESClozfe+L+VGwWMhLqp4vy4ID3rw8fU6EgpBSa9GL
 xHzWTCDBqeZxAMxquAepKb4CovuEDtLsQ1Cc/gq8fY2Xki/1VywJSwmcwsD5Tw1n//iG
 2aKmLCNwliseqKnmtR5mPuGP6kqbj2XLan8Nn0xBjG69ZT8uudeFSfOR4dNEp0Mm244M
 +riZGAAlya4TzunmztupRp6s4HYurFAUEq/RdRLbcHre/pxQN9k3dqAtOWLYJQXmHFxB
 jhmg==
X-Gm-Message-State: APjAAAVNED5eRvUfSlR56Kmr7bOzlBHsNP4DxundWGeQXM3ljhaN80n7
 P0v9CwF/2A3qioTcUV+N/5zdTH51
X-Google-Smtp-Source: APXvYqyETLZD/ez5VuNOzUL6Jyvf5hyHmZVdDzqRblmdWztnHmuqnptWnzufBHz2JsXq5lUjrV4PGw==
X-Received: by 2002:a19:2486:: with SMTP id k128mr14704798lfk.16.1577038869400; 
 Sun, 22 Dec 2019 10:21:09 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id x29sm8312834lfg.45.2019.12.22.10.21.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 10:21:08 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBMIL3Om009845; Sun, 22 Dec 2019 21:21:05 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBMIL3oT009844;
 Sun, 22 Dec 2019 21:21:03 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Dec 2019 21:20:57 +0300
Message-Id: <20191222182057.9805-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191215172522.26626-1-fercerpav@gmail.com>
References: <20191215172522.26626-1-fercerpav@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_102113_936319_CD4A03B3 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3] kernel: ath10k-ct: provide a build
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Hauke Mehrtens <hauke@hauke-m.de>,
 Ben Greear <greearb@candelatech.com>, Paul Fertser <fercerpav@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

According to many bugreports [0][1][2] the default ath10k-ct kernel
module is unusable on devices with just 64 MiB RAM or with 128 MiB and
dual ath10k cards. The target boards boot but eventually oom-killer
starts to interfere with normal operation, so the current state is
effectively broken.

Since the two patches in question have a performance impact (and
possibly some other unexpected side-effects) a dedicated build variant
is added so that users of the low RAM devices can still benefit from all
the ath10k-ct advantages.

According to testing [3] results, the issue can be experienced even with
"a 256MB device with three radios". Measured performance impact of
implementing small buffers was lowering "the maximum 5 GHz throughput on
an IPQ40xx device without RPS/XPS optimizations from 494/432 Mbit/s for
TCP transfers (download/upload) to 438/343 Mbit/s"

The patches were apparently inspired by QSDK tweaks used by ODMs for the
affected devices.

[0] http://lists.infradead.org/pipermail/openwrt-devel/2019-December/020573.html
[1] https://github.com/openwrt/openwrt/pull/1077
[2] https://bugs.openwrt.org/index.php?do=details&task_id=2664
[3] https://github.com/freifunk-gluon/gluon/pull/1440#issue-195607701

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
This is compile-tested only!

Changes for v3:

    - Apply all patches to both build variants, select by a preprocessor
      symbol

Changes for v2:

    - Added performance impact details to the commit message
    - Fixed QUILT=1 operation
    - Refreshed the new patches

 package/kernel/ath10k-ct/Makefile             |  18 +++-
 ...0-0010-ath10k-limit-htt-rx-ring-size.patch |  28 +++++
 ...60-0011-ath10k-limit-pci-buffer-size.patch | 100 ++++++++++++++++++
 3 files changed, 145 insertions(+), 1 deletion(-)
 create mode 100644 package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch
 create mode 100644 package/kernel/ath10k-ct/patches/960-0011-ath10k-limit-pci-buffer-size.patch

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index dbf75fe174..e38380547a 100644
--- a/package/kernel/ath10k-ct/Makefile
+++ b/package/kernel/ath10k-ct/Makefile
@@ -35,6 +35,7 @@ define KernelPackage/ath10k-ct
 	$(PKG_BUILD_DIR)/ath10k$(CT_KVER)/ath10k_core.ko
   AUTOLOAD:=$(call AutoProbe,ath10k_pci)
   PROVIDES:=kmod-ath10k
+  VARIANT:=regular
 endef
 
 define KernelPackage/ath10k-ct/config
@@ -42,7 +43,17 @@ define KernelPackage/ath10k-ct/config
        config ATH10K-CT_LEDS
                bool "Enable LED support"
                default y
-               depends on PACKAGE_kmod-ath10k-ct
+               depends on PACKAGE_kmod-ath10k-ct || PACKAGE_kmod-ath10k-ct-smallbuffers
+endef
+
+define KernelPackage/ath10k-ct-smallbuffers
+$(call KernelPackage/ath10k-ct)
+  TITLE+= (small buffers for low-RAM devices)
+  VARIANT:=smallbuffers
+endef
+
+define KernelPackage/ath10k-ct-smallbuffers/config
+$(call KernelPackage/ath10k-ct/config)
 endef
 
 NOSTDINC_FLAGS = \
@@ -90,6 +101,10 @@ ifeq ($(CONFIG_ATH10K-CT_LEDS),y)
   NOSTDINC_FLAGS += -DCONFIG_ATH10K_LEDS
 endif
 
+ifeq ($(BUILD_VARIANT),smallbuffers)
+  NOSTDINC_FLAGS += -DCONFIG_ATH10K_SMALLBUFFERS
+endif
+
 define Build/Configure
 	cp $(STAGING_DIR)/usr/include/mac80211/ath/*.h $(PKG_BUILD_DIR)
 endef
@@ -107,3 +122,4 @@ define Build/Compile
 endef
 
 $(eval $(call KernelPackage,ath10k-ct))
+$(eval $(call KernelPackage,ath10k-ct-smallbuffers))
diff --git a/package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch b/package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch
new file mode 100644
index 0000000000..a3a939440a
--- /dev/null
+++ b/package/kernel/ath10k-ct/patches/960-0010-ath10k-limit-htt-rx-ring-size.patch
@@ -0,0 +1,28 @@
+--- a/ath10k-4.19/htt.h
++++ b/ath10k-4.19/htt.h
+@@ -237,7 +237,11 @@ enum htt_rx_ring_flags {
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
+--- a/ath10k-5.2/htt.h
++++ b/ath10k-5.2/htt.h
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
new file mode 100644
index 0000000000..517be89dab
--- /dev/null
+++ b/package/kernel/ath10k-ct/patches/960-0011-ath10k-limit-pci-buffer-size.patch
@@ -0,0 +1,100 @@
+--- a/ath10k-4.19/pci.c
++++ b/ath10k-4.19/pci.c
+@@ -142,7 +142,11 @@ static struct ce_attr host_ce_config_wla
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
+@@ -151,7 +155,11 @@ static struct ce_attr host_ce_config_wla
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
+@@ -178,7 +186,11 @@ static struct ce_attr host_ce_config_wla
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
+@@ -203,7 +215,11 @@ static struct ce_attr host_ce_config_wla
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
+--- a/ath10k-5.2/pci.c
++++ b/ath10k-5.2/pci.c
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
