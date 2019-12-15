Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2A811F9A7
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 18:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LS3G3X+b6BM6oTCs9uWwkrUVsN1NPqrp/K2+1mf4+jw=; b=c4VEcxYyHWTZqM
	RRiHnQNLrUGlEviGLrmXGGs/3pkNtzcGVfbkXxG6hed46c+PA974QmWmxP3/zg7or1tyLhQizDYEb
	YtU5nL4hfOGPMiHWCl9yMUZ0F0NOclX1IvGrMoA1HtBNQkv23k/QnFo7S+57BHCxarnkkhxtIFZfX
	iop9V39oAjAw1OCF4dyRMwebHlY9J5wgFqEQv8dQSdx14Z5G0HU0uIN2Q6xG2UQPbK/Xo0DyMGmwB
	lWkr9b2zqyXaebxz9r8gabBRpVuYh4iGsN2PM4OMfcuCNiiXeXGAk/R10VIJsZ8ANm4dL7nUV3umh
	zOcvP/8eDRJJzw+yYl2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXeY-00029E-TM; Sun, 15 Dec 2019 17:25:58 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXeQ-00028n-Nd
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 17:25:52 +0000
Received: by mail-lj1-x241.google.com with SMTP id 21so4197269ljr.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Dec 2019 09:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PHqkeVqbCXFm1nX0zo0qpS23gn9huRoz9CaRylPCph4=;
 b=FwMJhtdrlCPGwK//+7XROJ1AcSjoOzYsqIrmt7iEztQ9Sam5s0OIqzpRhKxYqBKRuF
 WRiF3LJUaggIFTVWsoCjQalAbDNbk4RsqzZYCoE1TeGhFk3SaZV2ZSaiyk5oa/KAyaPb
 bSewC6sEcRmK7Mkdn55LICiiz5Njepvs9onC5Av256HcQyzblZMq1ePtJDWX2yFPZyr5
 uXFy5mCoQvV5u86+VuMCSTAM4QhPLm+oxfNS1K17ngpX0JhSQ3zCn2X1T+fPadwH6iv+
 y6XKFC5dnVR+2+/GJNgDpvHBBy+sn6exJf2jP/9Ad/88ORX14O4oOpWDJjp4Y2giS34J
 3tbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PHqkeVqbCXFm1nX0zo0qpS23gn9huRoz9CaRylPCph4=;
 b=ZPfGvVOQRx1LbUZbPmlcdBP0I5EUmhQCAXECXojUOcwYUJiJu8+3lGosMloRQBaVjs
 vxSBpc4UU72dBFVtvJlS9O7leGKbXJ/cW8jMYWHkJmP8eNMc8M0X5G8nr5qZDNW8gTbE
 04RlEtIkew8XpUA0bTvrAyyUVrF5XzKOi6UneHpc5joCAwtekME1wV+SkWgsQtR2YXxN
 ZgfW/93sr3GiY3loMQKOE+TxP2O1tttKcIEnfQsga39+COJWXr2Td/C5/dnHflg6j7ut
 hNEuzE/928adDwqchQIcoEnIus4Z1rb27911i3+lZphVClInzh+8a8kC9ynrgVZYR3Tm
 URFw==
X-Gm-Message-State: APjAAAXGoEmmZ8swKTxfma+/pNTxBASP51AqXjpTIc/N8+weTI5qGnUd
 9tNl6r9dZ0SphOBAEbEOojsag0Av
X-Google-Smtp-Source: APXvYqxeg1zInIJth/Bi6WoKBkUFI8DsAG/iy2uoilP8FsbDmhjrIWnIo8bJnZYAdYFGuqWUWAnMTQ==
X-Received: by 2002:a2e:b0c4:: with SMTP id g4mr16642786ljl.83.1576430748028; 
 Sun, 15 Dec 2019 09:25:48 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id v2sm8706798ljv.70.2019.12.15.09.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 09:25:47 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBFHPi30026667; Sun, 15 Dec 2019 20:25:45 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBFHPfDO026666;
 Sun, 15 Dec 2019 20:25:41 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 15 Dec 2019 20:25:22 +0300
Message-Id: <20191215172522.26626-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211145458.GN11070@home.paul.comp>
References: <20191211145458.GN11070@home.paul.comp>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_092550_797417_FC50F3CE 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2] kernel: ath10k-ct: provide a build
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
Cc: Paul Fertser <fercerpav@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Ben Greear <greearb@candelatech.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Christian Lamparter <chunkeey@gmail.com>
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
Changes for v2:

    - Added performance impact details to the commit message
    - Fixed QUILT=1 operation
    - Refreshed the new patches

 package/kernel/ath10k-ct/Makefile             | 30 +++++++-
 ...0-0010-ath10k-limit-htt-rx-ring-size.patch | 22 ++++++
 ...60-0011-ath10k-limit-pci-buffer-size.patch | 76 +++++++++++++++++++
 3 files changed, 127 insertions(+), 1 deletion(-)
 create mode 100644 package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch
 create mode 100644 package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index dbf75fe174..99ec225570 100644
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
@@ -90,6 +101,22 @@ ifeq ($(CONFIG_ATH10K-CT_LEDS),y)
   NOSTDINC_FLAGS += -DCONFIG_ATH10K_LEDS
 endif
 
+define Build/Patch
+	$(if $(QUILT),rm -rf $(PKG_BUILD_DIR)/patches; mkdir -p $(PKG_BUILD_DIR)/patches)
+	$(call PatchDir,$(PKG_BUILD_DIR),$(PATCH_DIR),regular/)
+ifeq ($(BUILD_VARIANT),smallbuffers)
+	$(call PatchDir,$(PKG_BUILD_DIR),$(PATCH_DIR)-$(BUILD_VARIANT),$(BUILD_VARIANT)/)
+endif
+	$(if $(QUILT),touch $(PKG_BUILD_DIR)/.quilt_used)
+endef
+
+define Quilt/Refresh/Package
+	$(call Quilt/RefreshDir,$(PKG_BUILD_DIR),$(PATCH_DIR),regular/)
+ifeq ($(BUILD_VARIANT),smallbuffers)
+	$(call Quilt/RefreshDir,$(PKG_BUILD_DIR),$(PATCH_DIR)-$(BUILD_VARIANT),$(BUILD_VARIANT)/)
+endif
+endef
+
 define Build/Configure
 	cp $(STAGING_DIR)/usr/include/mac80211/ath/*.h $(PKG_BUILD_DIR)
 endef
@@ -107,3 +134,4 @@ define Build/Compile
 endef
 
 $(eval $(call KernelPackage,ath10k-ct))
+$(eval $(call KernelPackage,ath10k-ct-smallbuffers))
diff --git a/package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch b/package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch
new file mode 100644
index 0000000000..fcc5927759
--- /dev/null
+++ b/package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch
@@ -0,0 +1,22 @@
+--- a/ath10k-4.19/htt.h
++++ b/ath10k-4.19/htt.h
+@@ -237,7 +237,7 @@ enum htt_rx_ring_flags {
+ };
+ 
+ #define HTT_RX_RING_SIZE_MIN 128
+-#define HTT_RX_RING_SIZE_MAX 2048
++#define HTT_RX_RING_SIZE_MAX 512
+ #define HTT_RX_RING_SIZE HTT_RX_RING_SIZE_MAX
+ #define HTT_RX_RING_FILL_LEVEL (((HTT_RX_RING_SIZE) / 2) - 1)
+ #define HTT_RX_RING_FILL_LEVEL_DUAL_MAC (HTT_RX_RING_SIZE - 1)
+--- a/ath10k-5.2/htt.h
++++ b/ath10k-5.2/htt.h
+@@ -225,7 +225,7 @@ enum htt_rx_ring_flags {
+ };
+ 
+ #define HTT_RX_RING_SIZE_MIN 128
+-#define HTT_RX_RING_SIZE_MAX 2048
++#define HTT_RX_RING_SIZE_MAX 512
+ #define HTT_RX_RING_SIZE HTT_RX_RING_SIZE_MAX
+ #define HTT_RX_RING_FILL_LEVEL (((HTT_RX_RING_SIZE) / 2) - 1)
+ #define HTT_RX_RING_FILL_LEVEL_DUAL_MAC (HTT_RX_RING_SIZE - 1)
diff --git a/package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch b/package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch
new file mode 100644
index 0000000000..c54b36731e
--- /dev/null
+++ b/package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch
@@ -0,0 +1,76 @@
+--- a/ath10k-4.19/pci.c
++++ b/ath10k-4.19/pci.c
+@@ -142,7 +142,7 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 2048,
+-		.dest_nentries = 512,
++		.dest_nentries = 128,
+ 		.recv_cb = ath10k_pci_htt_htc_rx_cb,
+ 	},
+ 
+@@ -151,7 +151,7 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 2048,
+-		.dest_nentries = 128,
++		.dest_nentries = 64,
+ 		.recv_cb = ath10k_pci_htc_rx_cb,
+ 	},
+ 
+@@ -178,7 +178,7 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 512,
+-		.dest_nentries = 512,
++		.dest_nentries = 128,
+ 		.recv_cb = ath10k_pci_htt_rx_cb,
+ 	},
+ 
+@@ -203,7 +203,7 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 2048,
+-		.dest_nentries = 128,
++		.dest_nentries = 96,
+ 		.recv_cb = ath10k_pci_pktlog_rx_cb,
+ 	},
+ 
+--- a/ath10k-5.2/pci.c
++++ b/ath10k-5.2/pci.c
+@@ -131,7 +131,7 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 2048,
+-		.dest_nentries = 512,
++		.dest_nentries = 128,
+ 		.recv_cb = ath10k_pci_htt_htc_rx_cb,
+ 	},
+ 
+@@ -140,7 +140,7 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 2048,
+-		.dest_nentries = 128,
++		.dest_nentries = 64,
+ 		.recv_cb = ath10k_pci_htc_rx_cb,
+ 	},
+ 
+@@ -167,7 +167,7 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 512,
+-		.dest_nentries = 512,
++		.dest_nentries = 128,
+ 		.recv_cb = ath10k_pci_htt_rx_cb,
+ 	},
+ 
+@@ -192,7 +192,7 @@ static struct ce_attr host_ce_config_wla
+ 		.flags = CE_ATTR_FLAGS,
+ 		.src_nentries = 0,
+ 		.src_sz_max = 2048,
+-		.dest_nentries = 128,
++		.dest_nentries = 96,
+ 		.recv_cb = ath10k_pci_pktlog_rx_cb,
+ 	},
+ 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
