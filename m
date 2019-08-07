Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEDB85353
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 20:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=69j1laoG+WLQZY7zmItL2ADRwZZLWl4VhyHWobD5+e4=; b=DG6tHnsUphqWwP
	Jf37gdvXBJKvmeS11p8aRezHR3ThjCoF/CIkkaa8igLRpq2qxoiTpC4JdGEtLxJezoL+ijlvmTY2z
	P4zDv0Gh8pBcI7vgh2R12kWoWz/XHiwTWrDcuQ4DWYv995L7VnhzZX3jWUrGShZtiuA1Dle3c8soC
	YKr90AqMbvUWtg1ZfcV8AizNFmGPGgf8XhHzgfivnkshOga2zavaicq3U+CUiu7iQX+4cakUepXjC
	4Z3OPMa47Ec5jHQPeMit1sdPwi6xa20w/a5YuoL29H1N6aQUpv7FdGR6Wjub88ZdXJsmi2vzC3xom
	5DZFos2SmnMIPvP+a5Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvR9x-0004ok-MI; Wed, 07 Aug 2019 18:59:41 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvR9n-0004o2-3q
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 18:59:32 +0000
Received: by mail-lf1-x141.google.com with SMTP id a30so1766120lfk.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 11:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8Zp2H95Q81nvoFY3uneG4AlukklRa57Mo9G5dyV0dPE=;
 b=EiaGRienJkF2B5pNVlAQwGwVRqqE1NL89H6YGfJDHtWBeXk6V9t4+PUXB622k+EgPK
 NPflTgM0ZeUmTVtZdQy+/gUjd/YPT7mpiy0rVxtE2nTvp4TU2QP83GKZahIMMYx51z26
 wE/LF25vbBJFfVxYprAuM3oIQrlPafe9/OgVK4kZovolVLn8SrkWR5dJXTr8r+dWjXxN
 iUWUulNVNuR0QGcvDVtWfuvR4vBCIl++3DugxUeMAskQ0Ss7IPdpOAyV7OrbXZfi2PuT
 n1pj9yiWz0qwurJBpk/Z8I2y77/bMM/HVZVHWMoeeHNVt+Zi5c5ivX9jNhV+rXhQfmSb
 niHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8Zp2H95Q81nvoFY3uneG4AlukklRa57Mo9G5dyV0dPE=;
 b=WLSe5CODbcoQdnuCalhT/0hIgCHy6W7bny/osvAcxbrAt9H2Y6b1iv+F/ehp7WvrzU
 I+4QaM7Swi/b2otRInG9gRay2w3K5Kv+3nmepda6tdml982reKAGUWaFBEi92G1qVlcK
 2je8AWmsgcA5ZoMLVkNTA/VCCxRDGcm144hM9cJRDcl9/ICcmUNAPxrPaAdqNfRx5w4i
 eLDyhmCYxY5+JKMiXrfASkhmsqf4X4qUBuHAqWntGCHunmiMK4NKOj2pe68V9GeYOb5D
 YFcuxvfNLNvONL9Xg4Z1Hhf3jnXehBNQueyRJrDbVPBuxUYzKk2DwoCxfc9jH8mWcIVA
 qCCQ==
X-Gm-Message-State: APjAAAXnaGaxfiKn2oNPsUKHS+OPc6ofACN0cDCDL52Jvybed16o6EZy
 6PqwO1ZHJcY/z0Nu6wm5SB6+J16SN+4=
X-Google-Smtp-Source: APXvYqwsVyckXmsafBeWHxJU3hUGw9i2x13DVg/kBK63sAmUK5lheoIupsSz3IZEZXluN6GSqRBrzg==
X-Received: by 2002:a19:4aca:: with SMTP id x193mr6655882lfa.146.1565204367911; 
 Wed, 07 Aug 2019 11:59:27 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:dc6e:0:4de0:5f73:d0ad:c4d3])
 by smtp.gmail.com with ESMTPSA id n187sm16420794lfa.30.2019.08.07.11.59.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 11:59:27 -0700 (PDT)
From: Dmitry Tunin <hanipouspilot@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  7 Aug 2019 21:59:14 +0300
Message-Id: <1565204354-7647-1-git-send-email-hanipouspilot@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_115931_184546_DF72547E 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2] ath79: add support of Netgear WNDR3800CH
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
Cc: Dmitry Tunin <hanipouspilot@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add support for the ar71xx supported Netgear WNR3800CH to ath79.
The device is identical to WNDR3800 except NETGEAR_BOARD_ID.

Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
---
 .../linux/ath79/base-files/etc/board.d/02_network  |  3 +-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom         |  6 ++--
 .../linux/ath79/dts/ar7161_netgear_wndr3800ch.dts  | 36 ++++++++++++++++++++++
 target/linux/ath79/image/generic.mk                | 12 ++++++++
 4 files changed, 54 insertions(+), 3 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar7161_netgear_wndr3800ch.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 84c83ff..fd66602 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -157,7 +157,8 @@ ath79_setup_interfaces()
 		;;
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
-	netgear,wndr3800)
+	netgear,wndr3800|\
+	netgear,wndr3800ch)
 		ucidef_set_interfaces_lan_wan "eth0" "eth1"
 		ucidef_add_switch "switch0" \
 			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5u@eth0"
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index e6b6d2f..2e5f455 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -200,7 +200,8 @@ case "$FIRMWARE" in
 	buffalo,wzr-hp-ag300h|\
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
-	netgear,wndr3800)
+	netgear,wndr3800|\
+	netgear,wndr3800ch)
 		ath9k_eeprom_extract "art" 4096 3768
 		;;
 	dlink,dir-825-b1)
@@ -217,7 +218,8 @@ case "$FIRMWARE" in
 	buffalo,wzr-hp-ag300h|\
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
-	netgear,wndr3800)
+	netgear,wndr3800|\
+	netgear,wndr3800ch)
 		ath9k_eeprom_extract "art" 20480 3768
 		;;
 	dlink,dir-825-b1)
diff --git a/target/linux/ath79/dts/ar7161_netgear_wndr3800ch.dts b/target/linux/ath79/dts/ar7161_netgear_wndr3800ch.dts
new file mode 100644
index 0000000..84a859b
--- /dev/null
+++ b/target/linux/ath79/dts/ar7161_netgear_wndr3800ch.dts
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7161_netgear_wndr3700.dtsi"
+
+/ {
+	compatible = "netgear,wndr3800ch", "qca,ar7161";
+	model = "Netgear WNDR3800CH";
+};
+
+&partitions {
+	partition@0 {
+		label = "u-boot";
+		reg = <0x000000 0x050000>;
+		read-only;
+	};
+
+	partition@50000 {
+		label = "u-boot-env";
+		reg = <0x050000 0x020000>;
+		read-only;
+	};
+
+	partition@70000 {
+		label = "firmware";
+		reg = <0x070000 0xf80000>;
+		compatible = "netgear,uimage";
+	};
+
+	art: partition@ff0000 {
+		label = "art";
+		reg = <0xff0000 0x010000>;
+		read-only;
+	};
+};
+
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index d5f67b8..b45efb1 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -647,6 +647,18 @@ define Device/netgear_wndr3800
 endef
 TARGET_DEVICES += netgear_wndr3800
 
+define Device/netgear_wndr3800ch
+  $(Device/netgear_wndr3x00)
+  DEVICE_VENDOR := NETGEAR
+  DEVICE_MODEL := WNDR3800CH
+  NETGEAR_KERNEL_MAGIC := 0x33373031
+  NETGEAR_BOARD_ID := WNDR3800CH
+  NETGEAR_HW_ID := 29763654+16+128
+  IMAGE_SIZE := 15872k
+  SUPPORTED_DEVICES += wndr3800ch
+endef
+TARGET_DEVICES += netgear_wndr3800ch
+
 define Device/phicomm_k2t
   ATH_SOC := qca9563
   DEVICE_TITLE := Phicomm K2T
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
