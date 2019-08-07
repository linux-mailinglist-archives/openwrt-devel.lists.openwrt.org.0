Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8338853A5
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D11AxQCWd+0Qbt3gEO/dtk9B6nXQRNcIdgJ1NfkrYCU=; b=OwIosXHEaw6WiK
	NDZTCjZMlpsWsp1t4ye2R4bcSKFO80Octj8a42MdGeC9SPVzFoXhpMNzMwpldT6KIKc+/yXMzZWv0
	heYgBbfNMiCfCW7S+sMqgRwwUmbd+rIc0F8ViWXBf7feiQecC1dKphDF+AAYys1GuQoY9F1XI7od2
	UFGAgKFOGmZFfTYGBJDEQt5Payhv8IjfbdIAGgwsvxI25DN1M4iY3jsHqskknPMLUheYxi4+mZ/dm
	w6CmzxIYNA8qia0iNaiAkWf+tVHJU+kKCKIdvboNRowdkeWr2Unyt8bepc3twqaK9HNJwDk6C9al3
	iY3y51q1PPrF+ddvOQwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRhE-0000gJ-4z; Wed, 07 Aug 2019 19:34:04 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRh5-0000fy-4c
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 19:33:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id a30so1838987lfk.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 12:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uEU87eXW/OlcKHQgC2Gwz7nqr7WKT1HmZTnpJsBqgrU=;
 b=hGqPSRPPwtArWDrIMKPb87FIu8eaFnPQK1b5LjuArad05C6N9oQnMKuH6C0nBzbgvD
 scb82NNq4MgHdL5HTrnUFo9E1FtEvlSGjG3ljfOT17crStbE8CkoMDYYPH/LLTMDOt0P
 aa4XCm6Lw1I/YMPVJHNJo8zCa/8Ln0gZuS1JLoQWe68pmOSp3Rzi16hiYnU4HPbnEAu5
 13ZIPGn7GmZeVimfVu/Hj6hbVoJEL04ZqQjWDAd+XwBiQjvfca6eHpsG6C4Vn61hi0kT
 xcNBBna6bKetoCJ8Zd13304rl/t1JOB6c4QoNiVT5l+kdz7tWiP1bMeo4/VGsahJr6YY
 eGYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uEU87eXW/OlcKHQgC2Gwz7nqr7WKT1HmZTnpJsBqgrU=;
 b=oZxAjUFp/6YZRQtYqDrW/MbjWuhQJkRFm0qROiyVYwsl7tK1jgrmYUzz1Upx651yM7
 KPbIoHajwgL0/SMNZA4xT7uCpkEPH2QF1Uvi5jDnAh1fLfQfVTAQ6+RYnl/Qrwmuuhj6
 fqRt1OwPxTfVcKklJ40WqSq5h0eADWwRv5PuqYMNBzvUTfa9XdhibkXFdJTiOpLkJHbO
 5WeOUgIabWLT5CCwkAXYMbmCn84MY2aiX8hrWsH8cllkk31tZ86R2+HiFG4f57264G/+
 U4N9jHsmwywFWTHCKdpxIYf3AbSNbdrVuMR8BNnwqMyWyJB0NtKyezilL2x4G1PKWWUt
 Ky7Q==
X-Gm-Message-State: APjAAAUEtBaRydj1WoKMulDOEiLKd1UGqbv7hSkW2BlOQCDxDwgUInxk
 OSye5WQVWZz9lPKwOdDCebSb/kURRfA=
X-Google-Smtp-Source: APXvYqwRJDeslg5XemrUXL91/zUojSFPjLHG5UZmykKFQPyM/6kjiaiSL8t3hI9qQAZn55MNMvhO3Q==
X-Received: by 2002:a19:c711:: with SMTP id x17mr6706287lff.147.1565206433378; 
 Wed, 07 Aug 2019 12:33:53 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:dc6e:0:4de0:5f73:d0ad:c4d3])
 by smtp.gmail.com with ESMTPSA id h19sm2984120lfc.93.2019.08.07.12.33.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 12:33:52 -0700 (PDT)
From: Dmitry Tunin <hanipouspilot@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  7 Aug 2019 22:33:46 +0300
Message-Id: <1565206426-9616-1-git-send-email-hanipouspilot@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_123355_184576_CD2DC6B1 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v5] ath79: add support of Netgear WNDR3800CH
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
index d5f67b8..665770d 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -647,6 +647,17 @@ define Device/netgear_wndr3800
 endef
 TARGET_DEVICES += netgear_wndr3800
 
+define Device/netgear_wndr3800ch
+  $(Device/netgear_wndr3x00)
+  DEVICE_TITLE := NETGEAR WNDR3800CH
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
