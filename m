Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD3785375
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6tUOfNuHJiRaZcEURCOk0a7rffdYnP+Yv0BLaZbN1po=; b=S1GCXT+FyZypVx
	6qgEovYStPP+wAeq8u2CxwjtBwjgJvyT4ewOq0rlPA5Ca2eJVVbXJzxa4ZG1mfUvpzxyDqCO03pwK
	rgr2TlIZb+LGJyP24dDIwInw46gteJyb8DKCyZyR7VogR1Nik++wb+PQTqSZVD71N/1VW3d9ZzJia
	yNMs/AQO0VYfm8nb+5W+Fxj1FxLoybJGIIje79Rdz9YaZEaRXMBDDRtVmuPlc9SvYRgfdhbDnaAgO
	gIqHYuf5iWrucLXT2zoWvS+TFqC0IxHRP/3Cd80wUxmobWHzUdGuWa137t84Ln2Da9sCfaAV1JhiY
	2/fjmhmupzUUkwUkeOvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRNX-0002Ft-8E; Wed, 07 Aug 2019 19:13:43 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRNN-0002FY-Vl
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 19:13:35 +0000
Received: by mail-lf1-x142.google.com with SMTP id h28so64810018lfj.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 12:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XJK58F+3DSjGKR+2aO6UFIREFXHz+j9DF3Ifgc8PoVU=;
 b=fbwyrzXtttb/MzGKZheEutLikp4jlvjCkSm1BmChDgtJM0TypH3ujCRBVUCgWm53C6
 i3CXzNA11nrMOFOUfwCUKlaA1HzvTRzzfwWkgMfbkLDgU7uPU4kln+4dIpP0lDtqq69g
 S47wzzW2oimSlFcuAdN33dUblxvXVn3wxKbj+LbN9qqenEBoTNls37uQwNlJVKvhxyKn
 LRl77W+QVEK4nG1uqw0KmpGskEiWeeFvz04pvahPVlLt6ChJVWGK3VvFlPP0VaVc2SY/
 ajSAT5OpZm5ddNY4dukWM45XfCDCYQlyAvuxsMeHCIIHLXHXCOgvaHnp3pN/c8uUJbri
 UMRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XJK58F+3DSjGKR+2aO6UFIREFXHz+j9DF3Ifgc8PoVU=;
 b=YNabrLcsPYnanupZlD51LOhuttPQdO38bE5V2x6NVnSiYL9cpCvEBdPrxiyhgOF5si
 Z8plUD941K6vQ+t+DarRIF+6dvD5stWD/305gnENBRScL6hC0uuP9hn/+aNDdUAcZ4SQ
 1bIoaBrj2TQ8g+um4mkDwuuCfqbYBhhum4M1eecwUqksc4mUnYp8RpXzArUV5/sdOP5o
 NoEDXdinMKDVhRTbt2wb/cRjwlhJhX+caY5t3MccgFYgKx4nYDyPQMxNfCLxc/ktlQXl
 QMLUAesn70jRrV0CahNuX9mynUduZMiRugLI1fJELmdyG2Kqa/NpgcGiCf3ep/hHNifh
 /RXQ==
X-Gm-Message-State: APjAAAWvbNUoAk0lp9z5Or9iXltC4dHe+se2pH3cpzTuW3k6Drn2V1/N
 OW28AMPy2qAtNqnD7tQfFFUaV2h2J9c=
X-Google-Smtp-Source: APXvYqwunYQQLqgWS/J9i6l6CfSTROnRfAX7cY7+h+H3oae2WIh7H6GyMc5050wyhCV9O2xDyqUOTg==
X-Received: by 2002:a19:cbd3:: with SMTP id b202mr6736579lfg.185.1565205211595; 
 Wed, 07 Aug 2019 12:13:31 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:dc6e:0:4de0:5f73:d0ad:c4d3])
 by smtp.gmail.com with ESMTPSA id i17sm16545090lfp.94.2019.08.07.12.13.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 12:13:31 -0700 (PDT)
From: Dmitry Tunin <hanipouspilot@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  7 Aug 2019 22:13:21 +0300
Message-Id: <1565205201-8069-1-git-send-email-hanipouspilot@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_121334_051807_D075675F 
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
Subject: [OpenWrt-Devel] [PATCH v3] ath79: add support of Netgear WNDR3800CH
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
