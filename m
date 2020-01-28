Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B12E14B496
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 13:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cs7qc16tBF+wJqfi/06rqzd/nVjflRJ4Ejl+lmRvd2A=; b=DK66Bs12EMr8Qe
	/aijM7X+rWOS/j5YFRDz6hboNBeBELYcAYIKpJTjzU8mVKgeT660XWFmhvhxo/ttZ1AWzmbrC+o85
	xOqNzjPfmIJ/IdOo2N9UGX8oKZv0WSbwaPNZoAPGvtSsvFyTpdjS0DJP2Kgslp7PpPzgZFG+6fn73
	tuVAn91IYzWu7X9ZzamVQZpV9oMYWciQ/72orhvuUHFyoOUut9VI27tcmj3EgzXNVlznf+nji/xkt
	dtsKBgOtCXVOTx62Wgf+/obiyAPwQwvB0ANvsugjW0sEAywExmVEOx+GxZMxsHBpmT5iXqg0N0uuy
	gkslpDU3TiAXKRkEOT3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwQSl-0002it-Ly; Tue, 28 Jan 2020 12:59:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQRX-0001mi-VD
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 12:58:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id f129so2429538wmf.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Jan 2020 04:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZShd272+xSa+BLVzB0AGA5yJ7mHb+iRzG5QlL5mjLSo=;
 b=NsXhV05X7bTF1MQwim0JMuexHDmXR+YAE1La6aLx3SU4t+58K2oc0r+9PxCSY2bDYU
 AghUxEustbpEkuQd+542z+dw9LN/SM8VbLMka50/yBICfFqUM5dkbqiQazIXW3mDMDUQ
 8trEZqgXyKcqLTzBwJA8hZHurXD54+7hzSNVaY+axWO5osLX8WgfF5zHQ/+0dprYXejp
 SAqPabITXnTfrZ1lX4M6eZTLWdiWIJJVcQSR3QxwSAhLe6oq1r3rYHJNJJ/Wt+JmkT/z
 xcarMWOJfEUnVI43ACsEjeHL4qL9ndUmkdRPCTg0PTKFLZC7Ku1OX5kJELhapDsMJvgl
 aHiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZShd272+xSa+BLVzB0AGA5yJ7mHb+iRzG5QlL5mjLSo=;
 b=Nwflz9eAW1foNozy4CeLW4IwDoTOsr6MNOkPB+6BKKeF/2qBUp7um+ZPf6lS+01+jn
 +afrLmrDfCaqC0Dl/iNcFbnTRtPv52cUMP3uy2QoY1yAjSJsE5JDVe/HGe4LdySzw+99
 mkUNUd52xX0w2eN456qd8aCHY9KAKy+Baebnic3OQBULgknZ0beth9jferbTHpmx8vb4
 bZXXiaj0W9aFXo6eMnFPh68HRvijF3ZxwYDSA14SC0pozJKcEDNaausqVgpE/cBsqh10
 pAWzWqmz83jGZJ14XoTj8qETm3R7m9xuDac/d/prtVB/FOcAF9+b9uoEq7akEbQQcwtn
 eKBA==
X-Gm-Message-State: APjAAAWKUKIgq/hRlFeNFB6xyYsV7haiidF/dGoHWOl/aH5NVO2DrmkN
 XNNziMZ3IP/bCMBWWridU7/2R+0=
X-Google-Smtp-Source: APXvYqy6v7ZfAZstFUfcJo1CQoBY7StQhK0awzuYV8w64YTxdYHSpgIjXYiNBKAn7563p1v4KhaeOA==
X-Received: by 2002:a1c:1fc5:: with SMTP id f188mr5186718wmf.55.1580216289473; 
 Tue, 28 Jan 2020 04:58:09 -0800 (PST)
Received: from presler.lan (a109-49-10-77.cpe.netcabo.pt. [109.49.10.77])
 by smtp.gmail.com with ESMTPSA id q10sm2975417wme.16.2020.01.28.04.58.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 04:58:09 -0800 (PST)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 28 Jan 2020 12:57:44 +0000
Message-Id: <20200128125744.2378-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_045812_062316_B09501AC 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ath9k: allow enabling hardware random
 number generator support.
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
Cc: Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Changes since RFC: keep the current entropy patch untouched. It will be
modified in order to support older (AR5008 and AR9002) hardware.

The ath9k driver is able to leverage the PHY ADC in order to provide a
generic hardware random number generator to the kernel, filling up the
entropy pool as required. Expose this feature in the build system.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 config/Config-kernel.in        | 4 ++++
 package/kernel/mac80211/ath.mk | 7 +++++++
 2 files changed, 11 insertions(+)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index 20930326ca..2f4cda4275 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -220,6 +220,10 @@ config KERNEL_AIO
 	bool "Compile the kernel with asynchronous IO support"
 	default y if !SMALL_FLASH
 
+config KERNEL_HW_RANDOM
+	bool "Compile the kernel with support for hardware random number generators"
+	default n
+
 config KERNEL_FHANDLE
 	bool "Compile the kernel with support for fhandle syscalls"
 	default y if !SMALL_FLASH
diff --git a/package/kernel/mac80211/ath.mk b/package/kernel/mac80211/ath.mk
index 788131b751..56859cd3c1 100644
--- a/package/kernel/mac80211/ath.mk
+++ b/package/kernel/mac80211/ath.mk
@@ -8,6 +8,7 @@ PKG_CONFIG_DEPENDS += \
 	CONFIG_PACKAGE_ATH_SPECTRAL \
 	CONFIG_PACKAGE_ATH_DYNACK \
 	CONFIG_ATH9K_SUPPORT_PCOEM \
+	CONFIG_ATH9K_HWRNG \
 	CONFIG_ATH9K_TX99 \
 	CONFIG_ATH10K_LEDS \
 	CONFIG_ATH10K_THERMAL \
@@ -45,6 +46,7 @@ config-$(CONFIG_TARGET_ipq40xx) += ATH10K_AHB
 config-$(CONFIG_PCI) += ATH9K_PCI
 config-$(CONFIG_ATH_USER_REGD) += ATH_USER_REGD
 config-$(CONFIG_ATH9K_SUPPORT_PCOEM) += ATH9K_PCOEM
+config-$(CONFIG_ATH9K_HWRNG) += ATH9K_HWRNG
 config-$(CONFIG_ATH9K_TX99) += ATH9K_TX99
 config-$(CONFIG_ATH9K_UBNTHSR) += ATH9K_UBNTHSR
 config-$(CONFIG_ATH10K_LEDS) += ATH10K_LEDS
@@ -211,6 +213,11 @@ define KernelPackage/ath9k/config
 		bool "Support chips used in PC OEM cards"
 		depends on PACKAGE_kmod-ath9k
 
+	config ATH9K_HWRNG
+		bool "Random number generator support"
+		depends on PACKAGE_kmod-ath9k
+		select KERNEL_HW_RANDOM
+
        config ATH9K_TX99
                bool "Enable TX99 support (WARNING: testing only, breaks normal operation!)"
                depends on PACKAGE_kmod-ath9k
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
