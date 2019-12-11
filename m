Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE4D11AE16
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 15:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xOROTfzykEm4RFt8Q3tj9j0rBRyMHuTj6QhFLmVmxA=; b=q8tneqWFVOWKH4
	i4XQ6vr21JJvTxESZ4zpIR7YMr1sCd64O0bbsuzBizn+1A8heI+SMYPBEIV1piDvWiwADYuckTNsQ
	iT5B8EtUpmVFuKGHRVmXDYXdpvfjrPjd4hUGP73fd7GJWUhoAYUvOhbvFlGlOR6eEyII0d6DhjktW
	ZF7Qj1lijFouCXQgxGZSW1H3Nkje+aXl9H2wMj8zVRJ7/pJMiyB+HxhCB1mqC/vy0QiqYgO/ihbFf
	uyd1FifR5Ke2ZMtVPU51uEQyOjgW7gHSgfx/cVbUdNt9Bk9RfSuhmI1ZsCWxqvDYnwfgtiaI226av
	sLDs0osgIA8c9EiFAMYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3F4-0002lN-UY; Wed, 11 Dec 2019 14:45:30 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3Ev-0002kq-J4
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 14:45:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id h23so24334764ljc.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 06:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iicPvo1hXk1BRMKfdnGhoA0nm94/9rC8JOnv267R9Gg=;
 b=DZMTYu63eWQhHMUvbBv1aY7mMhvBi9mv3yO6B3tsFr3mj9nUJPQNCf/IRF224x+WLu
 wyVmNHh3HmCUp2cMxVDKIyUNGv7MtfFA0boDJj6kPZ233SIwDBy5ZRH4jl9iPdF9aJgO
 R2PeSCZNB5B1rkaPgOC1yjtr0RAvPIJCBNN2SrqVngBS/m45IGydJjjZ6SVz7hJ+q7RI
 08GDL63Jv/0U8d4MM2IdqQzi9v5LBJh/es0k9bMTEugalzB5voGCQ4NMPLxrxxxSbmCK
 y7PalFrDctKHEgVaApGcLgF0Vr4Q8drS65f2V7ZJopPXeJr2DTjwoRXjBNPC3QDmVoo6
 2/zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iicPvo1hXk1BRMKfdnGhoA0nm94/9rC8JOnv267R9Gg=;
 b=CAxvcnaEEpmrPfQ7AzU/kXt1q44ycNdY09fv4bBboj1Z/UQzgXxUTm7bKzUJZR31Lv
 geGUgt/aetDRAZ0v72tyogZEqsor2ToRG+gGDzAqsffZX+qKGQe6/EZO1nDH15SR1ifm
 o+3yiQcw4dQzkAHHh3DweGqYun+LE1lEIdQpxIguoEArOhTsMxmRSQtM6ul8mpFdLVfn
 HDAYvgtF2I5ygdlrHjDNQRmvXFWkdKMDdSWUVdWrBV4GM7f8ihrAIhQ6QtwKbkjESLe4
 OY/q9IWykx1j4ksZtXukd4m6C08cpIyg9c3Dj4xxDSkbxsavxpQn8QdSdej3bXRz3Oug
 NoVg==
X-Gm-Message-State: APjAAAXuaeuT6XRHV0oK0iRc+bUBwoRr6otBcoTVWJlclUL++xQxVOLC
 SaqtsXk0ylXaaS0lg66Rp6IhUcvS
X-Google-Smtp-Source: APXvYqxn9oBC+Blb3ksLWRzM0FDfsz2KozGut60jCDSTU8na0Z4WEtCCePJ7TAT9/v7H+pVSP6gvfA==
X-Received: by 2002:a2e:8758:: with SMTP id q24mr2362464ljj.157.1576075518846; 
 Wed, 11 Dec 2019 06:45:18 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id z3sm1300793ljh.83.2019.12.11.06.45.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 06:45:16 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBBEjEj7013280; Wed, 11 Dec 2019 17:45:14 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBBEjDew013277;
 Wed, 11 Dec 2019 17:45:13 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Dec 2019 17:44:59 +0300
Message-Id: <20191211144459.13235-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_064521_672033_F4CB4755 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build variant
 for small RAM devices
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

Since the two patches in question might have a performance impact (and
possibly some other unexpected side-effects) a dedicated build variant
is added so that users of the low RAM devices can still benefit from all
the ath10k-ct advantages.

[0] http://lists.infradead.org/pipermail/openwrt-devel/2019-December/020573.html
[1] https://github.com/openwrt/openwrt/pull/1077
[2] https://bugs.openwrt.org/index.php?do=details&task_id=2664

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 package/kernel/ath10k-ct/Makefile             | 30 +++++++-
 ...0-0010-ath10k-limit-htt-rx-ring-size.patch | 22 ++++++
 ...60-0011-ath10k-limit-pci-buffer-size.patch | 76 +++++++++++++++++++
 3 files changed, 127 insertions(+), 1 deletion(-)
 create mode 100644 package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch
 create mode 100644 package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index dbf75fe174..d5726a1c88 100644
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
+  TITLE+= (small buffers to work on low-RAM devices)
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
+	$(call PatchDir,$(PKG_BUILD_DIR),$(PATCH_DIR),)
+ifeq ($(BUILD_VARIANT),smallbuffers)
+	$(call PatchDir,$(PKG_BUILD_DIR),$(PATCH_DIR)-smallbuffers,patches-smallbuffers)
+endif
+	$(if $(QUILT),touch $(PKG_BUILD_DIR)/.quilt_used)
+endef
+
+define Quilt/Refresh/Package
+	$(call Quilt/RefreshDir,$(PKG_BUILD_DIR),$(PATCH_DIR),)
+ifeq ($(BUILD_VARIANT),smallbuffers)
+	$(call Quilt/RefreshDir,$(PKG_BUILD_DIR),$(PATCH_DIR)-smallbuffers,patches-smallbuffers)
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
index 0000000000..f73b02e5ef
--- /dev/null
+++ b/package/kernel/ath10k-ct/patches-smallbuffers/960-0010-ath10k-limit-htt-rx-ring-size.patch
@@ -0,0 +1,22 @@
+--- a/ath10k-4.19/htt.h
++++ b/ath10k-4.19/htt.h
+@@ -226,7 +226,7 @@ enum htt_rx_ring_flags {
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
+@@ -226,7 +226,7 @@ enum htt_rx_ring_flags {
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
index 0000000000..27c0032bfb
--- /dev/null
+++ b/package/kernel/ath10k-ct/patches-smallbuffers/960-0011-ath10k-limit-pci-buffer-size.patch
@@ -0,0 +1,76 @@
+--- a/ath10k-4.19/pci.c
++++ b/ath10k-4.19/pci.c
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
