Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F54853A1
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6tUOfNuHJiRaZcEURCOk0a7rffdYnP+Yv0BLaZbN1po=; b=WQPyHuObLqibU0
	BqYLXF+seNULBmRTMgkfQ93Ladb9LBA9pQ5NV5bC8A4EII+Q1XZtAYxfDrTD94huIi0XEdfvNEkTl
	vxmMWOXtQWhkRD4LcvCCQ77LBj1airjjvTXMryLNSiac+u6xVluoxgD3/YcpuDNF7gOg/JkkwnIE9
	HhVTkdUMxfjN2lNPReQppLwU/3bdFIFlonmPBsrQlLOwUKK5rZDhBfXHmH98AjE1CNZC1vAS+oWEy
	R8UQ9d61qnJUKUJ+K1kTvb/McmKi1F9xW7Rvjglkyu4KP89Tf0EQmE0Af2MWnI9QjhzcK7o6Hh67E
	UWdZDLtsGr6e3FiCHFQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRfe-0000N2-3M; Wed, 07 Aug 2019 19:32:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRfV-0000Mi-03
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 19:32:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id h28so64849408lfj.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 12:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XJK58F+3DSjGKR+2aO6UFIREFXHz+j9DF3Ifgc8PoVU=;
 b=RIzFCFd7pzEcLbzTp8nf5l4lgtHZdp4J8UP/ehUX0fay/GHz9XLgOaHgA6NbXbgSSh
 +VMKrMKeUuihK5uSmkniZi6J1ZrncsoYiDt5+/McdDKp+auk6aNWGnrkAC9F4WQjKSDH
 CeszASmAtFLyBxUoCPSac4OUfOyyQzHl15JOFQF5KlgLVKCLWCB/G153+fGRNpbFshV6
 g6uQIdM4Es6ODo+/fi7VuQqHok/FBD7THZxtfXEOV/fFPpR/HajVQdREo9pFn0RmLML5
 cfb82w6uarScdMqab3WX8pWCCbtMw25z3gklFkUlhKU3lBBm8ks2AnK10L8rMSR6oykg
 FFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XJK58F+3DSjGKR+2aO6UFIREFXHz+j9DF3Ifgc8PoVU=;
 b=Yhz/ylyBPxJBtjl1pAuTaZ85CT9V81H0WE1eie/EdodlFGoJuPDzWwSxPVbfEypkIQ
 9SZkRwNP751m1ufRoGtrN3+iOmWUo5CAC3zFClDBRwLXZZ9WYxu8jMKEsN3ae2ionwXH
 efZ9zszyeLFaSd2yKqAhN6jFoRuJYTmtR+PKMxzZlkTcq78IgnFkdjqLxpGjwj5/9hng
 0mTUABHDLcdEoQCWi0FSRS0zF3VaZan9vudijrj9XjdiBLHIXBPeMFqCvBeCP9zxXFLs
 H1a+CpA6PqyWGxEYXc+YiOWa+j/BoVb8TCWB0SCkmA/BHvb8sKxUsI7PQtX4W+xEEJT3
 e3SA==
X-Gm-Message-State: APjAAAXBAD02lmD2IKN7LdAQjtUVGxkVLUi5iuLsWjwPIvfakv4RIUR5
 rRR1DuLqwvSAGUpxghkj3Cv38zhPJ5M=
X-Google-Smtp-Source: APXvYqzKeGDhhFaFMs3Njstiau01hNx7WGe+FshpQ6lH0jTdJ2Um49xSrpTu6EG87BNjqQvqCEvrSw==
X-Received: by 2002:a19:6d02:: with SMTP id i2mr6566893lfc.191.1565206335292; 
 Wed, 07 Aug 2019 12:32:15 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:dc6e:0:4de0:5f73:d0ad:c4d3])
 by smtp.gmail.com with ESMTPSA id v202sm16581531lfa.28.2019.08.07.12.32.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 12:32:14 -0700 (PDT)
From: Dmitry Tunin <hanipouspilot@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  7 Aug 2019 22:32:06 +0300
Message-Id: <1565206326-9473-1-git-send-email-hanipouspilot@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_123217_042386_FC624880 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v4] ath79: add support of Netgear WNDR3800CH
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

Add support for the ar71xx supported Netgear WNDR3800CH to ath79.
The device is identical to WNDR3800 except NETGEAR_BOARD_ID.

Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
---
 .../linux/ath79/base-files/etc/board.d/02_network  |  3 +-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom         |  6 ++--
 .../linux/ath79/dts/ar7161_netgear_wndr3800ch.dts  | 36 ++++++++++++++++++++++
 target/linux/ath79/image/generic.mk                | 11 +++++++
 4 files changed, 53 insertions(+), 3 deletions(-)
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
index d5f67b8..608cb2e 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -647,6 +647,17 @@ define Device/netgear_wndr3800
 endef
 TARGET_DEVICES += netgear_wndr3800
 
+define Device/netgear_wndr3800ch
+  $(Device/netgear_wndr3x00)
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
