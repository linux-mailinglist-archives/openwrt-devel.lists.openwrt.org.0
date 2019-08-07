Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6CE85278
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 19:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nrMkwVC/A7gIbxO3E+kfeiuZn639AW9F0T0zos63kp8=; b=PDM5YOtcSxPPw6
	Fuk8J78KsBRGp/SaVzxuG6SI1Z192g+kk4aFIEL+5yLacU2ofrPjHEfBVezcMnLGa46S5uhNQowwF
	MejWTxfNPTFQKyiXEwzWPKAv1A3zHEwA7dvqVZnxva3k1pVBQurww7ohiEpjHiLKyKUCbvXNmdR5t
	U49wd/iVvgKmFyiokRKXPYF0xLey8SCYGCBKnrSZTEd8FBiSALr6pbErljJkWGiqH/YyQBD8bSxLN
	yywh5g+AZOS3KZSHVxiw3d3aVw4jztVw2K2pB4IRIASLIqkgh9MFaem0Nb7BZvZIi3YOHn0PUWTlR
	WwfFQ7RjYWK5JtKJ1zqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQ9q-0000T5-RX; Wed, 07 Aug 2019 17:55:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQ9h-0000Sj-OI
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 17:55:23 +0000
Received: by mail-lj1-x244.google.com with SMTP id k18so86284902ljc.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 10:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ax1R0g9/vhKXOapdwCgcj4n+4k9mNQFeIGhfJP8oqzs=;
 b=Vwmp4KHTHnAJ/bXKMpCypyQZgMZN0FJmX3gy+BL9QdJs345khlfq4QaklJS4/ufj12
 dkyxur/Z0Hf4UjV/B62aQd/IvskWLJzvdSQuwm2U7LUfZdFteLjDKXpUyMx0o83EMHh6
 9Kl2vEg9BIHWbZNZ1s6VvwSLSdiNi/QmLCsOUXrqvFguRoWK0JdTXfQfOV97mm+l7/ok
 z3AxeJNp+imTRh5TxCsEqj+9J6gyEwz9ed9uagLaI2GB42Z1ifQbpvXvLZpP9rSbRrSp
 9lzp4aT0wbWe4RFtX0SX27BFIK/suSSNQmuDpaDjCDEeNuxiD9CRwlVE+81XerIma7NN
 JF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ax1R0g9/vhKXOapdwCgcj4n+4k9mNQFeIGhfJP8oqzs=;
 b=E1S0z+1ZYdaFtnPQW6SSuYqI9uBKD49sNsJjKnINC+ms5r8qYxU6ToUq41NlN/0IBI
 CO94Le2OzJjLD7DrQD4paQTdXsQV59Q6h9SHlxL67Ft/zBs/yqdVSKanZsqknZeWjbyS
 +2rdSj3pM0UoiigDP5Uej14XZoC3J20nt1LRgxdx77BVhcJsem6iSOWKPeHd7B3yIGZH
 luNvk+Om7KcRiZ3DFBKThRpcvw/tDuyJll3OYWO5VLui8HUNx/dbppQ+yrG9IjkUapi3
 YVp855M5Y9TiC3ED7Pwww/qogkC4VR0KRuOP1eqG256yXLpjM2oQs5dsi2INLGAv3YEP
 cXow==
X-Gm-Message-State: APjAAAWrwK1kZBFWPDbjO6jMKHvI+l4J63VFZXfUtq70uo3Zv/j9qRtr
 ihW20x72Y9Dw1GX/HM3tG8NrlWFOCDw=
X-Google-Smtp-Source: APXvYqxeybzFLQiejaP6eMsIR6anN+PTe7g43CVOkDhMINKRWhOmm5zD9hCdNLexQsDAhX4ERAJTIA==
X-Received: by 2002:a2e:9a58:: with SMTP id k24mr5628453ljj.165.1565200519194; 
 Wed, 07 Aug 2019 10:55:19 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:dc6e:0:4de0:5f73:d0ad:c4d3])
 by smtp.gmail.com with ESMTPSA id p87sm18388897ljp.50.2019.08.07.10.55.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 10:55:18 -0700 (PDT)
From: Dmitry Tunin <hanipouspilot@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  7 Aug 2019 20:55:03 +0300
Message-Id: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_105521_795779_756E1EDE 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800 (Ch)
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

Add support for the ar71xx supported Netgear WNR3800 (Ch) to ath79.
The device is identical to WNR3800 except NETGEAR_BOARD_ID.

Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
---
 .../linux/ath79/base-files/etc/board.d/02_network  |  3 +-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom         |  6 ++--
 .../linux/ath79/dts/ar7161_netgear_wndr3800ch.dts  | 36 ++++++++++++++++++++++
 target/linux/ath79/image/generic.mk                |  8 +++++
 4 files changed, 50 insertions(+), 3 deletions(-)
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
index 0000000..693b897
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
+	model = "Netgear WNDR3800 (Ch)";
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
index d5f67b8..e163151 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -647,6 +647,14 @@ define Device/netgear_wndr3800
 endef
 TARGET_DEVICES += netgear_wndr3800
 
+define Device/netgear_wndr3800ch
+  $(Device/netgear_wndr3800)
+  DEVICE_TITLE := NETGEAR WNDR3800 (Ch)
+  NETGEAR_BOARD_ID := WNDR3800CH
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
