Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE9B85445
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 22:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5HkVVanWnSW62Pmj5LTQpqefuWcCifuDUM6RgXwfGis=; b=b//lXeFh0IgTP9
	wrJNKEby+RRSO1bVTnlL2GsMFyuyUksz4xnLikPDAa+h+jbP126mV2PBZsN2W3rBHjBftzu1/h/Nt
	et6w9fLrXDZdAVyuUtf/xfb4gM2np8blvb2Pbpq9BVs/O/gJgU3IJJnZ3Hp2StMplCMXDPqpfZOKP
	u9S3/bFZYZPGGypb+dQo4yyhcBUneToH0bcg0QbDV54r0Dty2i/UwtU06kTGbyDp3fcNLiaIY0ULH
	ZijF4QLOsCLkiAJ/7y2LtC/4KrDq4DAdeSa8NeIiyT2eVxO8wox+oUkgtpXzwvzzWDeeftByCXHg9
	K9UUsx9bGVmYacE01ygA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvSDz-0003Bc-Fi; Wed, 07 Aug 2019 20:07:55 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvSDq-0003BG-Ir
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 20:07:47 +0000
Received: by mail-lf1-x141.google.com with SMTP id p197so64932193lfa.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 13:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Px1rty98vwcXwk3ciqdkeQ85ET7EaN2p9xcr8zquYqg=;
 b=B6Cyv1JcGATLP2N1J6JDWADdELd3EIWJc5xmXEMt1B+YhCnxFUa5O142nfwz5Sm5y1
 k0CTflIxdq9QNKCtl37VYU+x0uQayKTy3HIA/txz6PgNc62yWYQL1PrQutc2LP9BJsvB
 CEVooPNxkymwP67oV3P18TSUcL1+BqVkR55EDy/zcUyIMRYKKiwtXZuaPw4g5zQNU43I
 IPHYqLnnvygm4qL2YFzj0cvLWd0/3al3S0foUaJVDWVZXlkVJzSRsFRxLLjOgC7IWQHA
 2+Tp2M+FpkqBjIEHdjfCIvaOG7Wugv9ONFOJ2ewphchmhIMCiq98QNT6OP01x4F+RWPv
 p6rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Px1rty98vwcXwk3ciqdkeQ85ET7EaN2p9xcr8zquYqg=;
 b=KIQBvPoq2XuOwEciMFCbRVp1gObGe7Whp9B97/wwzCMykAEtpoe0v5mj4LngeJ41jb
 tysRvTSelBM4O/eXmZiPvSuEPpdvBl9x7vyhccqCkE7Il6rlPDJ+H6rpv+hKzptPLp5Y
 wdi/qN0EQCZ7fyc1pohiMZcN0oYFwMOx6f48ncml041rasJfU885GRLKTJ2F3hYm/9FP
 jI9BT2h8RS/4NkBxoL2QY8yTZRcPilB7xuAScdwvzhewYeijDIJ+PHvSGBFvFwFBChlc
 GLWpU9m+TETEFcB36UtSxRdPjrnnWr/MNbomV70JA3Hgsv3UUqFTWUAm3EdDh6YMsKzm
 AfDg==
X-Gm-Message-State: APjAAAVnR1B16Jbm9fR1g/ykJIoF/J7zMh+dsBAhFuIARq2u4ntPVhgM
 Pvwk6nxiCU+O22ePPGUITe0dqplB6gY=
X-Google-Smtp-Source: APXvYqxTfnMm8VyHGKGLxUjXfVnwRRdzsAkVcPPUmDTfty9dfBebyD0BxYXKtrrvlyTttM1OVRU42A==
X-Received: by 2002:a19:5218:: with SMTP id m24mr7104000lfb.164.1565208463388; 
 Wed, 07 Aug 2019 13:07:43 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:dc6e:0:4de0:5f73:d0ad:c4d3])
 by smtp.gmail.com with ESMTPSA id u24sm4338325lfc.35.2019.08.07.13.07.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 13:07:42 -0700 (PDT)
From: Dmitry Tunin <hanipouspilot@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  7 Aug 2019 23:07:33 +0300
Message-Id: <1565208453-17770-1-git-send-email-hanipouspilot@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_130746_647367_912B4264 
X-CRM114-Status: GOOD (  12.42  )
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
Subject: [OpenWrt-Devel] [PATCH v6] ath79: add support of Netgear WNDR3800CH
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
index 9c64299..dc3018d 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -177,7 +177,8 @@ ath79_setup_interfaces()
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
index a7d4825..29da5c9 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -206,7 +206,8 @@ case "$FIRMWARE" in
 	buffalo,wzr-hp-ag300h|\
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
-	netgear,wndr3800)
+	netgear,wndr3800|\
+	netgear,wndr3800ch)
 		ath9k_eeprom_extract "art" 4096 3768
 		;;
 	dlink,dir-825-b1)
@@ -223,7 +224,8 @@ case "$FIRMWARE" in
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
index 8009582..538be46 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -789,6 +789,17 @@ define Device/netgear_wndr3800
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
   DEVICE_VENDOR := Phicomm
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
