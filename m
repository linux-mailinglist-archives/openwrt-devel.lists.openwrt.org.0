Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FBDA44EC
	for <lists+openwrt-devel@lfdr.de>; Sat, 31 Aug 2019 17:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zt1RWmMbRhmgJsI7+yxStqCrMESNzocpjU6MCK1oJ3w=; b=Zki2I7pKN9gqtD
	MY9ZFqOXPhz+tbCIeJrPsRfOOsvbDwtE0/ccXhFH9MkNtmCOdZa8JDGIZKW2k3dZ7qVxkZRaEpNHQ
	ku5vsNvJbXp4bbSMhIjGnrVHavea3XLLGKEb4L1Rrjgkuo2Mv162GhLfethbinfWRSWB8u/17mfPD
	XXtNFaaqOFwc2c6qrk5iEaNxMm3soaCsOaNsORAWQ1yTPO4AwX5rdNnf13HN4KG0X8VULpJkmZdB/
	22NRsrX6gjM2RZYMX+VTuyYVIGRRaqcoB8foq7q35aCto1w9ncWT6lZRmQ2zSv9d30x7k42iNAyyU
	OcWT2eAJnM5nwn7l8IMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i44yo-0004oD-19; Sat, 31 Aug 2019 15:07:54 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i44yX-0004na-PX
 for openwrt-devel@lists.openwrt.org; Sat, 31 Aug 2019 15:07:45 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N4vFE-1iDwNW0pTI-010s4u for <openwrt-devel@lists.openwrt.org>; Sat, 31
 Aug 2019 17:07:34 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 31 Aug 2019 17:07:31 +0200
Message-Id: <20190831150731.5178-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:jkyoTXOgltkkuHcvlLBGK6gc7k/gzi6vauSj1CjajzxJNGif6NA
 ew3y8ARRZUak1Ay2YQqrzJoaFVe+2xfjD36rgY2XLotjxjNJGkQNXbRWMYqw5grcAN+khs4
 cq1f682IWJYBdXVXdPKByEv54NeiEXwhjSqNLcafiLo7ZU12SyNqDeBhemTifoxhYLtaJXO
 ChJOqKjQvExdlO5NWMfJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:39/LA9+WezY=:/81Vwz/d+vVEZNaqRe1/9O
 wD6zRZbOp0mTEoOZHKmZsyo9OrDzAMqhdeH1B2vWNeCdjVaw2NqSkbFnJcrZn6bLK57tLD89e
 ZZTaa9w2QSPL/Cm59Um+5rTrljAPR2dcB7kXFr2JVW1NUQuuveuhtlKVhaJigBDm3X5Ab2qW/
 8cER7VcIMZBxuYUBv9uc94MUREEnn+aOyAHK6KO0FnusgvTNsXJZZ2FwDFgwRx+pNRCF9nna3
 WysKUlgzDz0MXAvayujziCVtByPIHt6xU8qwUOPJTJtQQ36exr5Phl9iOqZP4rI4PSqUkYiDd
 cS+jIviBrCsDE5O3pJwE1zA47ogcf7+STBkDhwK4ZK405eHCECt/Nyd0XQh/L+C341vdZbdX6
 wmq4XZbvQV7N7ASzYpkz+ZnWhp9+gdQSuoA2mSXG2gMSxlXFM1p5v6oNIHF7P9A+VVmleKBRj
 FG0XFJcmKO4aveTk/QeZ9oEQltnSGy9+C9leRalhxnfBeeeEc/MfbEkCTArk/zJHjUY/FhK2D
 MqetJGl4cb9O1fuLQSEChAQw8Fv9juNsnPyaL+gwA89wUNraWKAQAXjWqXePdAgSB5FgEa04L
 wcBmG4GfgZhADay8g4Xbs9TYAWA1oNLpmNMR5mUAxCssEZ98OOkscUPfw4Uv4yH8g+SiHTLb+
 vh2m5RgGNr1lxhi1b06W3f00Nb7XobI6giyFtiTcmS6cjCUaxir4XivFUzgR9bFEw10VxmgAb
 gVTZ6thF/LNVjZjr5QL0U+bzDN+OxOGam3/v7HC9QC0+ku8F6p4PtdXIFJn32M6xwnshBSQYQ
 ZfAw3gpf6KI2eWFlpQvCc/iotlkz5rg3EDBc7ATub/FytTbhQA=
X-Spam-Note: CRM114 run bypassed due to message size (108898 bytes)
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] treewide: Remove kmod-usb-core from
 DEVICE_PACKAGES
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This removes _all_ occurrences of kmod-usb-core from
DEVICE_PACKAGES and similar variables.

This package is pulled as dependency by one of the following
packages in any case:
- kmod-usb-chipidea
- kmod-usb-dwc2
- kmod-usb-ledtrig-usbport
- kmod-usb-ohci
- kmod-usb2
- kmod-usb2-pci
- kmod-usb3

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ar71xx/generic/profiles/00-default.mk     |   2 +-
 .../ar71xx/image/generic-legacy-devices.mk    |  90 +++++------
 target/linux/ar71xx/image/generic-tp-link.mk  |  44 +++---
 target/linux/ar71xx/image/generic-ubnt.mk     |   6 +-
 target/linux/ar71xx/image/generic.mk          | 144 +++++++++---------
 target/linux/ar71xx/image/mikrotik.mk         |   2 +-
 target/linux/ar71xx/image/nand.mk             |  18 +--
 .../linux/ar71xx/image/tiny-legacy-devices.mk |   8 +-
 target/linux/ar71xx/image/tiny-tp-link.mk     |  24 +--
 target/linux/ar71xx/image/tiny.mk             |   2 +-
 .../ar71xx/mikrotik/profiles/00-default.mk    |   2 +-
 .../linux/ar71xx/nand/profiles/00-default.mk  |   2 +-
 .../linux/ar71xx/tiny/profiles/00-default.mk  |   2 +-
 .../arc770/generic/profiles/00-default.mk     |   2 +-
 .../archs38/generic/profiles/00-default.mk    |   2 +-
 target/linux/ath79/image/generic-tp-link.mk   |  40 ++---
 target/linux/ath79/image/generic-ubnt.mk      |   4 +-
 target/linux/ath79/image/generic.mk           |  46 +++---
 target/linux/ath79/image/nand.mk              |   2 +-
 target/linux/ath79/image/tiny-tp-link.mk      |   8 +-
 target/linux/ath79/image/tiny.mk              |   2 +-
 .../linux/ath79/nand/profiles/00-default.mk   |   2 +-
 target/linux/gemini/Makefile                  |   2 +-
 target/linux/ipq806x/Makefile                 |   2 +-
 .../ixp4xx/generic/profiles/200-NSLU2.mk      |   2 +-
 .../ixp4xx/generic/profiles/300-NAS100d.mk    |   2 +-
 .../generic/profiles/400-DSMG600RevA.mk       |   2 +-
 .../ixp4xx/generic/profiles/500-USR8200.mk    |   2 +-
 .../ixp4xx/harddisk/profiles/100-FSG3.mk      |   2 +-
 target/linux/mediatek/image/mt7622.mk         |   6 +-
 target/linux/ramips/image/rt288x.mk           |   2 +-
 target/linux/ramips/image/rt305x.mk           |  74 ++++-----
 target/linux/ramips/image/rt3883.mk           |  12 +-
 .../ramips/mt7620/profiles/00-default.mk      |   2 +-
 .../ramips/mt7621/profiles/00-default.mk      |   2 +-
 .../ramips/mt76x8/profiles/00-default.mk      |   2 +-
 .../ramips/rt305x/profiles/00-default.mk      |   2 +-
 .../ramips/rt3883/profiles/00-default.mk      |   2 +-
 38 files changed, 286 insertions(+), 286 deletions(-)

diff --git a/target/linux/ar71xx/generic/profiles/00-default.mk b/target/linux/ar71xx/generic/profiles/00-default.mk
index f5ebdd2dd8..18fd385cc3 100644
--- a/target/linux/ar71xx/generic/profiles/00-default.mk
+++ b/target/linux/ar71xx/generic/profiles/00-default.mk
@@ -8,7 +8,7 @@
 define Profile/Default
 	NAME:=Default Profile (all drivers)
 	PACKAGES:= \
-		kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
+		kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
 	PRIORITY := 1
 endef
 
diff --git a/target/linux/ar71xx/image/generic-legacy-devices.mk b/target/linux/ar71xx/image/generic-legacy-devices.mk
index 9cf405d48a..cbe039cd29 100644
--- a/target/linux/ar71xx/image/generic-legacy-devices.mk
+++ b/target/linux/ar71xx/image/generic-legacy-devices.mk
@@ -12,7 +12,7 @@ LEGACY_DEVICES += ALFANX
 
 define LegacyDevice/HORNETUB
   DEVICE_TITLE := ALFA Network Hornet-UB board (8MB flash, 32MB ram)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += HORNETUB
 
@@ -23,7 +23,7 @@ LEGACY_DEVICES += TUBE2H8M
 
 define LegacyDevice/AP96
   DEVICE_TITLE := Atheros AP96 reference board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
 endef
 LEGACY_DEVICES += AP96
 
@@ -39,7 +39,7 @@ LEGACY_DEVICES += ALFAAP120C
 
 define LegacyDevice/ALFAAP96
   DEVICE_TITLE := ALFA Network AP96 board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-rtc-pcf2123
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-rtc-pcf2123
 endef
 LEGACY_DEVICES += ALFAAP96
 
@@ -57,67 +57,67 @@ LEGACY_DEVICES += ALL0315N
 
 define LegacyDevice/AP121_8M
   DEVICE_TITLE := Atheros AP121 reference board (8MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
 endef
 LEGACY_DEVICES += AP121_8M
 
 define LegacyDevice/AP121_16M
   DEVICE_TITLE := Atheros AP121 reference board (16MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
 endef
 LEGACY_DEVICES += AP121_16M
 
 define LegacyDevice/AP132
   DEVICE_TITLE := Atheros AP132 reference board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += AP132
 
 define LegacyDevice/AP135
   DEVICE_TITLE := Atheros AP135 reference board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += AP135
 
 define LegacyDevice/AP136_010
   DEVICE_TITLE := Atheros AP136-010 reference board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += AP136_010
 
 define LegacyDevice/AP136_020
   DEVICE_TITLE := Atheros AP136-020 reference board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += AP136_020
 
 define LegacyDevice/AP143_8M
   DEVICE_TITLE := Qualcomm Atheros AP143 reference board (8MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += AP143_8M
 
 define LegacyDevice/AP143_16M
   DEVICE_TITLE := Qualcomm Atheros AP143 reference board (16MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += AP143_16M
 
 define LegacyDevice/AP147_010
   DEVICE_TITLE := Qualcomm Atheros AP147-010 reference board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += AP147_010
 
 define LegacyDevice/AP152_16M
   DEVICE_TITLE := Qualcomm Atheros AP152 reference board (16MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += AP152_16M
 
 define LegacyDevice/BXU2000N2
   DEVICE_TITLE := BHU BXU2000n-2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += BXU2000N2
 
@@ -128,13 +128,13 @@ LEGACY_DEVICES += CAP4200AG
 
 define LegacyDevice/DB120
   DEVICE_TITLE := Atheros DB120 reference board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
 endef
 LEGACY_DEVICES += DB120
 
 define LegacyDevice/HORNETUBx2
   DEVICE_TITLE := ALFA Network Hornet-UB-x2 board (16MB flash, 64MB ram)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += HORNETUBx2
 
@@ -145,37 +145,37 @@ LEGACY_DEVICES += TUBE2H16M
 
 define LegacyDevice/DIR505A1
   DEVICE_TITLE := D-Link DIR-505 rev. A1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += DIR505A1
 
 define LegacyDevice/DGL5500A1
   DEVICE_TITLE := D-Link DGL-5500 rev. A1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
 endef
 LEGACY_DEVICES += DGL5500A1
 
 define LegacyDevice/TEW823DRU
   DEVICE_TITLE := TRENDNet TEW-823DRU
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
 endef
 LEGACY_DEVICES += TEW823DRU
 
 define LegacyDevice/DHP1565A1
   DEVICE_TITLE := D-Link DHP-1565 rev. A1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
 endef
 LEGACY_DEVICES += DHP1565A1
 
 define LegacyDevice/DIR825C1
   DEVICE_TITLE := D-Link DIR-825 rev. C1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += DIR825C1
 
 define LegacyDevice/DIR835A1
   DEVICE_TITLE := D-Link DIR-835 rev. A1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
 endef
 LEGACY_DEVICES += DIR835A1
 
@@ -186,7 +186,7 @@ LEGACY_DEVICES += TEW732BR
 
 define LegacyDevice/WRT160NL
   DEVICE_TITLE := Linksys WRT160NL
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
 endef
 LEGACY_DEVICES += WRT160NL
 
@@ -198,19 +198,19 @@ LEGACY_DEVICES += MYNETREXT
 
 define LegacyDevice/DIR825B1
   DEVICE_TITLE := D-Link DIR-825 rev. B1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += DIR825B1
 
 define LegacyDevice/TEW673GRU
   DEVICE_TITLE := TRENDNet TEW-673GRU
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
 endef
 LEGACY_DEVICES += TEW673GRU
 
 define LegacyDevice/DLRTDEV01
   DEVICE_TITLE := PowerCloud Systems dlrtdev01 model
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += DLRTDEV01
 
@@ -232,49 +232,49 @@ LEGACY_DEVICES += dLAN_pro_1200_ac
 
 define LegacyDevice/ESR900
   DEVICE_TITLE := EnGenius ESR900
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += ESR900
 
 define LegacyDevice/ESR1750
   DEVICE_TITLE := EnGenius ESR1750
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage kmod-ath10k-ct ath10k-firmware-qca988x-ct
 endef
 LEGACY_DEVICES += ESR1750
 
 define LegacyDevice/EPG5000
   DEVICE_TITLE := EnGenius EPG5000
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage kmod-ath10k-ct ath10k-firmware-qca988x-ct
 endef
 LEGACY_DEVICES += EPG5000
 
 define LegacyDevice/WP543_8M
   DEVICE_TITLE := Compex WP543/WPJ543 (8MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
 endef
 LEGACY_DEVICES += WP543_8M
 
 define LegacyDevice/WP543_16M
   DEVICE_TITLE := Compex WP543/WPJ543 (16MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
 endef
 LEGACY_DEVICES += WP543_16M
 
 define LegacyDevice/WPE72_8M
   DEVICE_TITLE := Compex WPE72/WPE72NX (8MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
 endef
 LEGACY_DEVICES += WPE72_8M
 
 define LegacyDevice/WPE72_16M
   DEVICE_TITLE := Compex WPE72/WPE72NX (16MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
 endef
 LEGACY_DEVICES += WPE72_16M
 
 define LegacyDevice/WNR2200
   DEVICE_TITLE := NETGEAR WNR2200
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WNR2200
 
@@ -327,7 +327,7 @@ LEGACY_DEVICES += EAP7660D
 
 define LegacyDevice/JA76PF
   DEVICE_TITLE := jjPlus JA76PF
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-hwmon-core kmod-i2c-core kmod-hwmon-lm75
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-hwmon-core kmod-i2c-core kmod-hwmon-lm75
 endef
 LEGACY_DEVICES += JA76PF
 
@@ -338,26 +338,26 @@ LEGACY_DEVICES += JA76PF2
 
 define LegacyDevice/JWAP003
   DEVICE_TITLE := jjPlus JWAP003
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
 endef
 LEGACY_DEVICES += JWAP003
 
 define LegacyDevice/PB42
   DEVICE_TITLE := Atheros PB42 reference board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
 endef
 LEGACY_DEVICES += PB42
 
 define LegacyDevice/PB44
   DEVICE_TITLE := Atheros PB44 reference board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 \
 	  vsc7385-ucode-pb44 vsc7395-ucode-pb44
 endef
 LEGACY_DEVICES += PB44
 
 define LegacyDevice/MZKW04NU
   DEVICE_TITLE := Planex MZK-W04NU
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += MZKW04NU
 
@@ -378,37 +378,37 @@ LEGACY_DEVICES += WRT400N
 
 define LegacyDevice/WZRHPG300NH
   DEVICE_TITLE := Buffalo WZR-HP-G300NH
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WZRHPG300NH
 
 define LegacyDevice/WZRHPG300NH2
   DEVICE_TITLE := Buffalo WZR-HP-G300NH2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WZRHPG300NH2
 
 define LegacyDevice/WZRHPAG300H
   DEVICE_TITLE := Buffalo WZR-HP-AG300H
-  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WZRHPAG300H
 
 define LegacyDevice/WZRHPG450H
   DEVICE_TITLE := Buffalo WZR-HP-G450H
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WZRHPG450H
 
 define LegacyDevice/WZR600DHP
   DEVICE_TITLE := Buffalo WZR-600DHP
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WZR600DHP
 
 define LegacyDevice/WZR450HP2
   DEVICE_TITLE := Buffalo WZR-450HP2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WZR450HP2
 
diff --git a/target/linux/ar71xx/image/generic-tp-link.mk b/target/linux/ar71xx/image/generic-tp-link.mk
index 90cd2a0362..7423347252 100644
--- a/target/linux/ar71xx/image/generic-tp-link.mk
+++ b/target/linux/ar71xx/image/generic-tp-link.mk
@@ -35,7 +35,7 @@ TARGET_DEVICES += archer-c58-v1
 define Device/archer-c59-v1
   $(Device/archer-cxx)
   DEVICE_TITLE := TP-LINK Archer C59 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca9888-ct
   BOARDNAME := ARCHER-C59-V1
   TPLINK_BOARD_ID := ARCHER-C59-V1
   DEVICE_PROFILE := ARCHERC59V1
@@ -85,7 +85,7 @@ TARGET_DEVICES += archer-c60-v2
 define Device/archer-c5-v1
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := TP-LINK Archer C5 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := ARCHER-C5
   DEVICE_PROFILE := ARCHERC7
   TPLINK_HWID := 0xc5000001
@@ -95,7 +95,7 @@ TARGET_DEVICES += archer-c5-v1
 define Device/archer-c7-v1
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK Archer C7 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := ARCHER-C7
   DEVICE_PROFILE := ARCHERC7
   TPLINK_HWID := 0x75000001
@@ -105,7 +105,7 @@ TARGET_DEVICES += archer-c7-v1
 define Device/archer-c7-v2
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := TP-LINK Archer C7 v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := ARCHER-C7-V2
   DEVICE_PROFILE := ARCHERC7
   TPLINK_HWID := 0xc7000002
@@ -118,7 +118,7 @@ TARGET_DEVICES += archer-c7-v2
 define Device/archer-c7-v2-il
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := TP-LINK Archer C7 v2 (IL)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := ARCHER-C7-V2
   DEVICE_PROFILE := ARCHERC7
   TPLINK_HWID := 0xc7000002
@@ -129,7 +129,7 @@ TARGET_DEVICES += archer-c7-v2-il
 define Device/tl-wdr7500-v3
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK Archer C7 v3
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := ARCHER-C7
   DEVICE_PROFILE := ARCHERC7
   TPLINK_HWID := 0x75000003
@@ -139,7 +139,7 @@ TARGET_DEVICES += tl-wdr7500-v3
 define Device/archer-c7-v4
   $(Device/archer-cxx)
   DEVICE_TITLE := TP-LINK Archer C7 v4
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := ARCHER-C7-V4
   TPLINK_BOARD_ID := ARCHER-C7-V4
   IMAGE_SIZE := 15104k
@@ -281,7 +281,7 @@ TARGET_DEVICES += re450-v1
 define Device/tl-mr6400-v1
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK TL-MR6400 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-net kmod-usb-net-rndis kmod-usb-serial kmod-usb-serial-option adb-enablemodem
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-net kmod-usb-net-rndis kmod-usb-serial kmod-usb-serial-option adb-enablemodem
   BOARDNAME := TL-MR6400
   DEVICE_PROFILE := TLMR6400
   TPLINK_HWID := 0x64000001
@@ -291,7 +291,7 @@ TARGET_DEVICES += tl-mr6400-v1
 define Device/tl-wdr3500-v1
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK TL-WDR3500 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WDR3500
   DEVICE_PROFILE := TLWDR4300
   TPLINK_HWID := 0x35000001
@@ -332,7 +332,7 @@ TARGET_DEVICES += tl-wdr4310-v1
 define Device/tl-wdr4900-v2
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK TL-WDR4900 v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WDR4900-v2
   DEVICE_PROFILE := TLWDR4900V2
   TPLINK_HWID := 0x49000002
@@ -342,7 +342,7 @@ TARGET_DEVICES += tl-wdr4900-v2
 define Device/tl-wdr6500-v2
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK TL-WDR6500 v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   KERNEL := kernel-bin | patch-cmdline | lzma | uImage lzma
   KERNEL_INITRAMFS := kernel-bin | patch-cmdline | lzma | uImage lzma | tplink-v1-header
   BOARDNAME := TL-WDR6500-v2
@@ -384,7 +384,7 @@ TARGET_DEVICES += tl-wr1043n-v5
 define Device/tl-wr1043nd-v1
   $(Device/tplink-8m)
   DEVICE_TITLE := TP-LINK TL-WR1043N/ND v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WR1043ND
   DEVICE_PROFILE := TLWR1043
   TPLINK_HWID := 0x10430001
@@ -394,7 +394,7 @@ TARGET_DEVICES += tl-wr1043nd-v1
 define Device/tl-wr1043nd-v2
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK TL-WR1043N/ND v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WR1043ND-v2
   DEVICE_PROFILE := TLWR1043
   TPLINK_HWID := 0x10430002
@@ -411,7 +411,7 @@ TARGET_DEVICES += tl-wr1043nd-v3
 define Device/tl-wr1043nd-v4
   $(Device/tplink-safeloader)
   DEVICE_TITLE := TP-LINK TL-WR1043N/ND v4
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WR1043ND-v4
   DEVICE_PROFILE := TLWR1043
   TPLINK_HWID :=  0x10430004
@@ -426,7 +426,7 @@ TARGET_DEVICES += tl-wr1043nd-v4
 define Device/tl-wr2543-v1
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK TL-WR2543N/ND v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WR2543N
   DEVICE_PROFILE := TLWR2543
   TPLINK_HWID := 0x25430001
@@ -438,7 +438,7 @@ TARGET_DEVICES += tl-wr2543-v1
 define Device/tl-wr710n-v1
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK TL-WR710N v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := TL-WR710N
   DEVICE_PROFILE := TLWR710
   TPLINK_HWID := 0x07100001
@@ -458,7 +458,7 @@ TARGET_DEVICES += tl-wr710n-v2.1
 define Device/tl-wr810n-v1
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK TL-WR810N v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := TL-WR810N
   DEVICE_PROFILE := TLWR810
   TPLINK_HWID := 0x08100001
@@ -477,7 +477,7 @@ TARGET_DEVICES += tl-wr810n-v2
 define Device/tl-wr842n-v1
   $(Device/tplink-8m)
   DEVICE_TITLE := TP-LINK TL-WR842N/ND v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-MR3420
   DEVICE_PROFILE := TLWR842
   TPLINK_HWID := 0x08420001
@@ -487,7 +487,7 @@ TARGET_DEVICES += tl-wr842n-v1
 define Device/tl-wr842n-v2
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := TP-LINK TL-WR842N/ND v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WR842N-v2
   DEVICE_PROFILE := TLWR842
   TPLINK_HWID := 0x8420002
@@ -497,7 +497,7 @@ TARGET_DEVICES += tl-wr842n-v2
 define Device/tl-wr842n-v3
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := TP-LINK TL-WR842N/ND v3
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WR842N-v3
   DEVICE_PROFILE := TLWR842
   TPLINK_HWID := 0x08420003
@@ -507,7 +507,7 @@ TARGET_DEVICES += tl-wr842n-v3
 define Device/tl-wr902ac-v1
   $(Device/tplink-safeloader)
   DEVICE_TITLE := TP-LINK TL-WR902AC v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport \
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport \
 	kmod-ath10k-ct ath10k-firmware-qca9887-ct -swconfig -uboot-envtools
   BOARDNAME := TL-WR902AC-V1
   DEVICE_PROFILE := TLWR902
@@ -523,7 +523,7 @@ TARGET_DEVICES += tl-wr902ac-v1
 define Device/tl-wr942n-v1
   $(Device/archer-cxx)
   DEVICE_TITLE := TP-LINK TL-WR942N v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WR942N-V1
   TPLINK_BOARD_ID := TLWR942NV1
   DEVICE_PROFILE := TLWR942
diff --git a/target/linux/ar71xx/image/generic-ubnt.mk b/target/linux/ar71xx/image/generic-ubnt.mk
index 5caad50b0a..5a4517f81f 100644
--- a/target/linux/ar71xx/image/generic-ubnt.mk
+++ b/target/linux/ar71xx/image/generic-ubnt.mk
@@ -43,7 +43,7 @@ endef
 # UBNT_CHIP e.g. one of (ar7240, ar933x, ar934x)
 # UBNT_VERSION e.g. one of (6.0.0, 8.5.0)
 define Device/ubnt
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   DEVICE_PROFILE := UBNT
   IMAGE_SIZE := 7552k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env)ro,7552k(firmware),256k(cfg)ro,64k(EEPROM)ro
@@ -121,7 +121,7 @@ endef
 TARGET_DEVICES += ubnt-unifi
 
 define Device/ubnt-unifiac
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   DEVICE_PROFILE := UBNT
   IMAGE_SIZE := 7744k
   MTDPARTS := spi0.0:384k(u-boot)ro,64k(u-boot-env)ro,7744k(firmware),7744k(ubnt-airos)ro,128k(bs),256k(cfg)ro,64k(EEPROM)ro
@@ -239,7 +239,7 @@ endef
 TARGET_DEVICES += ubdev01
 
 define Device/ubnt-routerstation
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
   DEVICE_PROFILE := UBNT
   IMAGE_SIZE := 16128k
   IMAGES := sysupgrade.bin factory.bin
diff --git a/target/linux/ar71xx/image/generic.mk b/target/linux/ar71xx/image/generic.mk
index 30a8b34483..8f495f54b8 100644
--- a/target/linux/ar71xx/image/generic.mk
+++ b/target/linux/ar71xx/image/generic.mk
@@ -94,7 +94,7 @@ endef
 
 define Device/ap121f
   DEVICE_TITLE := ALFA Network AP121F
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage -swconfig
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage -swconfig
   BOARDNAME := AP121F
   IMAGE_SIZE := 16064k
   CONSOLE := ttyATH0,115200
@@ -107,7 +107,7 @@ TARGET_DEVICES += ap121f
 
 define Device/ap531b0
   DEVICE_TITLE := Rockeetech AP531B0
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := AP531B0
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env)ro,16000k(firmware),64k(art)ro
@@ -139,7 +139,7 @@ endef
 
 define Device/arduino-yun
   DEVICE_TITLE := Arduino Yun
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := Yun
   IMAGE_SIZE := 15936k
   CONSOLE := ttyATH0,250000
@@ -149,7 +149,7 @@ TARGET_DEVICES += arduino-yun
 
 define Device/bsb
   DEVICE_TITLE := Smart Electronics Black Swift board
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := BSB
   IMAGE_SIZE := 16000k
   CONSOLE := ttyATH0,115200
@@ -159,7 +159,7 @@ TARGET_DEVICES += bsb
 
 define Device/carambola2
   DEVICE_TITLE := 8devices Carambola2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := CARAMBOLA2
   IMAGE_SIZE := 16000k
   CONSOLE := ttyATH0,115200
@@ -179,14 +179,14 @@ TARGET_DEVICES += cf-e316n-v2
 define Device/cf-e320n-v2
   $(Device/cf-e316n-v2)
   DEVICE_TITLE := COMFAST CF-E320N v2
-  DEVICE_PACKAGES += kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES += kmod-usb2
   BOARDNAME := CF-E320N-V2
 endef
 TARGET_DEVICES += cf-e320n-v2
 
 define Device/cf-e355ac-v1
   DEVICE_TITLE := COMFAST CF-E355AC v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct \
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct \
 	-swconfig -uboot-envtools
   BOARDNAME := CF-E355AC-V1
   IMAGE_SIZE := 16192k
@@ -197,7 +197,7 @@ TARGET_DEVICES += cf-e355ac-v1
 define Device/cf-e355ac-v2
   $(Device/cf-e355ac-v1)
   DEVICE_TITLE := COMFAST CF-E355AC v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9888-ct \
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9888-ct \
 	-swconfig -uboot-envtools
   BOARDNAME := CF-E355AC-V2
 endef
@@ -205,7 +205,7 @@ TARGET_DEVICES += cf-e355ac-v2
 
 define Device/cf-e375ac
   DEVICE_TITLE := COMFAST CF-E375AC
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9888-ct \
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9888-ct \
 	-uboot-envtools
   BOARDNAME := CF-E375AC
   IMAGE_SIZE := 16000k
@@ -215,7 +215,7 @@ TARGET_DEVICES += cf-e375ac
 
 define Device/cf-e380ac-v1
   DEVICE_TITLE := COMFAST CF-E380AC v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct \
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct \
 	-swconfig -uboot-envtools
   BOARDNAME := CF-E380AC-V1
   IMAGE_SIZE := 16128k
@@ -234,7 +234,7 @@ TARGET_DEVICES += cf-e380ac-v2
 
 define Device/cf-e385ac
   DEVICE_TITLE := COMFAST CF-E385AC
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9984-ct \
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9984-ct \
 	-uboot-envtools
   BOARDNAME := CF-E385AC
   IMAGE_SIZE := 16000k
@@ -244,7 +244,7 @@ TARGET_DEVICES += cf-e385ac
 
 define Device/cf-e520n
   DEVICE_TITLE := COMFAST CF-E520N
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 -swconfig -uboot-envtools
+  DEVICE_PACKAGES := kmod-usb2 -swconfig -uboot-envtools
   BOARDNAME := CF-E520N
   IMAGE_SIZE := 8000k
   MTDPARTS := spi0.0:64k(u-boot)ro,64k(art)ro,8000k(firmware),64k(art-backup)ro
@@ -286,7 +286,7 @@ TARGET_DEVICES += cpe870
 define Device/dragino2
   BOARDNAME := DRAGINO2
   CONSOLE := ttyATH0,115200
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   DEVICE_TITLE := Dragino 2 (MS14)
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,16000k(firmware),64k(config)ro,64k(art)ro
@@ -295,7 +295,7 @@ TARGET_DEVICES += dragino2
 
 define Device/e1700ac-v2-16M
   DEVICE_TITLE := Qxwlan E1700AC v2 (16MB flash)
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct kmod-usb-core \
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct \
 	kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := E1700AC-V2
   SUPPORTED_DEVICES := e1700ac-v2
@@ -315,7 +315,7 @@ TARGET_DEVICES += e1700ac-v2-8M
 
 define Device/e558-v2-16M
   DEVICE_TITLE := Qxwlan E558 v2 (16MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 -swconfig
+  DEVICE_PACKAGES := kmod-usb2 -swconfig
   BOARDNAME := E558-V2
   SUPPORTED_DEVICES := e558-v2
   IMAGE_SIZE := 15936k
@@ -334,7 +334,7 @@ TARGET_DEVICES += e558-v2-8M
 
 define Device/e600g-v2-16M
   DEVICE_TITLE := Qxwlan E600G v2 (16MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 -swconfig
+  DEVICE_PACKAGES := kmod-usb2 -swconfig
   BOARDNAME := E600G-V2
   SUPPORTED_DEVICES := e600g-v2
   IMAGE_SIZE := 15936k
@@ -353,7 +353,7 @@ TARGET_DEVICES += e600g-v2-8M
 
 define Device/e600gac-v2-16M
   DEVICE_TITLE := Qxwlan E600GAC v2 (16MB flash)
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-usb-core \
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct \
 	kmod-usb2 -swconfig
   BOARDNAME := E600GAC-V2
   SUPPORTED_DEVICES := e600gac-v2
@@ -373,7 +373,7 @@ TARGET_DEVICES += e600gac-v2-8M
 
 define Device/e750a-v4-16M
   DEVICE_TITLE := Qxwlan E750A v4 (16MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 -swconfig
+  DEVICE_PACKAGES := kmod-usb2 -swconfig
   BOARDNAME := E750A-V4
   SUPPORTED_DEVICES := e750a-v4
   IMAGE_SIZE := 15936k
@@ -392,7 +392,7 @@ TARGET_DEVICES += e750a-v4-8M
 
 define Device/e750g-v8-16M
   DEVICE_TITLE := Qxwlan E750G v8 (16MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 -swconfig
+  DEVICE_PACKAGES := kmod-usb2 -swconfig
   BOARDNAME := E750G-V8
   SUPPORTED_DEVICES := e750g-v8
   IMAGE_SIZE := 15936k
@@ -411,7 +411,7 @@ TARGET_DEVICES += e750g-v8-8M
 
 define Device/ew-balin
   DEVICE_TITLE := Embedded Wireless Balin Platform
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-chipidea
+  DEVICE_PACKAGES := kmod-usb-chipidea
   BOARDNAME := EW-BALIN
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),16000k(firmware),64k(art)ro
@@ -435,7 +435,7 @@ TARGET_DEVICES += ew-dorin-router
 
 define Device/rme-eg200
   DEVICE_TITLE := eTactica EG-200
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ledtrig-oneshot \
+  DEVICE_PACKAGES := kmod-usb2 kmod-ledtrig-oneshot \
 	kmod-usb-serial kmod-usb-serial-ftdi \
 	kmod-usb-storage \
 	kmod-fs-ext4
@@ -448,7 +448,7 @@ TARGET_DEVICES += rme-eg200
 
 define Device/weio
   DEVICE_TITLE := WeIO
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := WEIO
   IMAGE_SIZE := 16000k
   CONSOLE := ttyATH0,115200
@@ -458,7 +458,7 @@ TARGET_DEVICES += weio
 
 define Device/gl-ar150
   DEVICE_TITLE := GL.iNet GL-AR150
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := GL-AR150
   IMAGE_SIZE := 16000k
   CONSOLE := ttyATH0,115200
@@ -468,7 +468,7 @@ TARGET_DEVICES += gl-ar150
 
 define Device/gl-ar300
   DEVICE_TITLE := GL.iNet GL-AR300
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := GL-AR300
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env)ro,16000k(firmware),64k(art)ro
@@ -477,7 +477,7 @@ TARGET_DEVICES += gl-ar300
 
 define Device/gl-ar300m
   DEVICE_TITLE := GL.iNet GL-AR300M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := GL-AR300M
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),16000k(firmware),64k(art)ro
@@ -486,7 +486,7 @@ TARGET_DEVICES += gl-ar300m
 
 define Device/gl-ar750
   DEVICE_TITLE := GL.iNet GL-AR750
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-usb-core \
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct \
 	kmod-usb2 kmod-usb-storage
   BOARDNAME := GL-AR750
   SUPPORTED_DEVICES := gl-ar750
@@ -499,7 +499,7 @@ TARGET_DEVICES += gl-ar750
 
 define Device/gl-ar750s
   DEVICE_TITLE := GL.iNet GL-AR750S
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-usb-core \
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct \
 	kmod-usb2 kmod-usb-storage
   BOARDNAME := GL-AR750S
   SUPPORTED_DEVICES := gl-ar750s
@@ -512,7 +512,7 @@ TARGET_DEVICES += gl-ar750s
 
 define Device/gl-domino
   DEVICE_TITLE := GL.iNet Domino Pi
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := DOMINO
   IMAGE_SIZE := 16000k
   CONSOLE := ttyATH0,115200
@@ -522,7 +522,7 @@ TARGET_DEVICES += gl-domino
 
 define Device/gl-mifi
   DEVICE_TITLE := GL.iNet GL-MiFi
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := GL-MIFI
   IMAGE_SIZE := 16000k
   CONSOLE := ttyATH0,115200
@@ -546,7 +546,7 @@ TARGET_DEVICES += gl-usb150
 define Device/lan-turtle
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := Hak5 LAN Turtle
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage \
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage \
 	-kmod-ath9k -swconfig -uboot-envtools -wpad-basic
   BOARDNAME := LAN-TURTLE
   DEVICE_PROFILE := LANTURTLE
@@ -558,7 +558,7 @@ TARGET_DEVICES += lan-turtle
 
 define Device/lima
   DEVICE_TITLE := 8devices Lima
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := LIMA
   IMAGE_SIZE := 15616k
   MTDPARTS := spi0.0:256k(u-boot)ro,256k(u-boot-env)ro,256k(art)ro,-(firmware)
@@ -588,7 +588,7 @@ TARGET_DEVICES += mr16
 
 define Device/dr342
   DEVICE_TITLE := Wallys DR342
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 -swconfig
+  DEVICE_PACKAGES := kmod-usb2 -swconfig
   BOARDNAME := DR342
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:192k(u-boot)ro,64k(u-boot-env),64k(partition-table)ro,16000k(firmware),64k(art)ro
@@ -607,7 +607,7 @@ endef
 
 define Device/dr531
   DEVICE_TITLE := Wallys DR531
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := DR531
   IMAGE_SIZE := 7808k
   MTDPARTS := spi0.0:192k(u-boot)ro,64k(u-boot-env),64k(partition-table)ro,7808k(firmware),64k(art)ro
@@ -616,7 +616,7 @@ TARGET_DEVICES += dr531
 
 define Device/wndr3700
   DEVICE_TITLE := NETGEAR WNDR3700
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-wndr3700-usb
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-wndr3700-usb
   BOARDNAME := WNDR3700
   NETGEAR_KERNEL_MAGIC := 0x33373030
   NETGEAR_BOARD_ID := WNDR3700
@@ -692,7 +692,7 @@ TARGET_DEVICES += cr3000
 
 define Device/cr5000
   DEVICE_TITLE := PowerCloud Systems CR5000
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-usb-core
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := CR5000
   DEVICE_PROFILE := CR5000
   IMAGE_SIZE := 7808k
@@ -703,7 +703,7 @@ TARGET_DEVICES += cr5000
 define Device/packet-squirrel
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := Hak5 Packet Squirrel
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 \
+  DEVICE_PACKAGES := kmod-usb2 \
 	-kmod-ath9k -swconfig -uboot-envtools -wpad-basic
   BOARDNAME := PACKET-SQUIRREL
   DEVICE_PROFILE := PACKETSQUIRREL
@@ -715,7 +715,7 @@ TARGET_DEVICES += packet-squirrel
 
 define Device/pqi-air-pen
   DEVICE_TITLE := PQI Air Pen
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
   BOARDNAME := PQI-AIR-PEN
   IMAGE_SIZE := 7744k
   CONSOLE := ttyATH0,115200
@@ -726,7 +726,7 @@ TARGET_DEVICES += pqi-air-pen
 define Device/antminer-s1
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := Antminer-S1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-crypto-manager kmod-i2c-gpio-custom kmod-usb-hid
+  DEVICE_PACKAGES := kmod-usb2 kmod-crypto-manager kmod-i2c-gpio-custom kmod-usb-hid
   BOARDNAME := ANTMINER-S1
   DEVICE_PROFILE := ANTMINERS1
   TPLINK_HWID := 0x04440101
@@ -737,7 +737,7 @@ TARGET_DEVICES += antminer-s1
 define Device/antminer-s3
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := Antminer-S3
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-crypto-manager kmod-i2c-gpio-custom kmod-usb-hid
+  DEVICE_PACKAGES := kmod-usb2 kmod-crypto-manager kmod-i2c-gpio-custom kmod-usb-hid
   BOARDNAME := ANTMINER-S3
   DEVICE_PROFILE := ANTMINERS3
   TPLINK_HWID := 0x04440301
@@ -748,7 +748,7 @@ TARGET_DEVICES += antminer-s3
 define Device/antrouter-r1
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := Antrouter-R1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := ANTROUTER-R1
   DEVICE_PROFILE := ANTROUTERR1
   TPLINK_HWID := 0x44440101
@@ -759,7 +759,7 @@ TARGET_DEVICES += antrouter-r1
 define Device/el-m150
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := EasyLink EL-M150
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := EL-M150
   DEVICE_PROFILE := ELM150
   TPLINK_HWID := 0x01500101
@@ -770,7 +770,7 @@ TARGET_DEVICES += el-m150
 define Device/el-mini
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := EasyLink EL-MINI
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := EL-MINI
   DEVICE_PROFILE := ELMINI
   TPLINK_HWID := 0x01530001
@@ -781,7 +781,7 @@ TARGET_DEVICES += el-mini
 define Device/gl-inet-6408A-v1
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := GL.iNet 6408
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := GL-INET
   DEVICE_PROFILE := GLINET
   TPLINK_HWID := 0x08000001
@@ -792,7 +792,7 @@ TARGET_DEVICES += gl-inet-6408A-v1
 define Device/gl-inet-6416A-v1
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := GL.iNet 6416
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := GL-INET
   DEVICE_PROFILE := GLINET
   TPLINK_HWID := 0x08000001
@@ -802,7 +802,7 @@ TARGET_DEVICES += gl-inet-6416A-v1
 
 define Device/jwap230
   DEVICE_TITLE := jjPlus JWAP230
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := JWAP230
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),16000k(firmware),64k(art)ro
@@ -820,7 +820,7 @@ TARGET_DEVICES += koala
 
 define Device/r36a
   DEVICE_TITLE := ALFA Network R36A
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport -swconfig
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport -swconfig
   BOARDNAME := R36A
   SUPPORTED_DEVICES := r36a
   IMAGE_SIZE := 15872k
@@ -832,7 +832,7 @@ TARGET_DEVICES += r36a
 
 define Device/r602n
   DEVICE_TITLE := P&W R602N
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := R602N
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env)ro,16000k(firmware),64k(art)ro
@@ -841,7 +841,7 @@ TARGET_DEVICES += r602n
 
 define Device/rut900
   DEVICE_TITLE := Teltonika RUT900
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 -uboot-envtools
+  DEVICE_PACKAGES := kmod-usb2 -uboot-envtools
   BOARDNAME := RUT900
   SUPPORTED_DEVICES := rut900
   IMAGE_SIZE := 15552k
@@ -874,7 +874,7 @@ TARGET_DEVICES += mc-mac1200r
 define Device/minibox-v1
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := GainStrong MiniBox V1.0
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := MINIBOX-V1
   DEVICE_PROFILE := MINIBOXV1
   TPLINK_HWID := 0x3C000201
@@ -886,7 +886,7 @@ TARGET_DEVICES += minibox-v1
 define Device/minibox-v3.2
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := Gainstrong MiniBox V3.2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca9887-ct -swconfig
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca9887-ct -swconfig
   BOARDNAME := MINIBOX-V3.2
   DEVICE_PROFILE := MINIBOXV32
   TPLINK_HWID := 0x3C00010C
@@ -905,7 +905,7 @@ TARGET_DEVICES += oolite-v1
 define Device/oolite-v5.2
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := GainStrong Oolite V5.2
-  DEVICE_PACKAGES := ath10k-firmware-qca9887-ct kmod-ath10k-ct kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := ath10k-firmware-qca9887-ct kmod-ath10k-ct kmod-usb2
   BOARDNAME := OOLITE-V5-2
   DEVICE_PROFILE := OOLITEV52
   TPLINK_HWID := 0x3C00010B
@@ -924,7 +924,7 @@ TARGET_DEVICES += oolite-v5.2-dev
 define Device/omy-g1
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := OMYlink OMY-G1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := OMY-G1
   DEVICE_PROFILE := OMYG1
   TPLINK_HWID := 0x06660101
@@ -943,7 +943,7 @@ TARGET_DEVICES += omy-x1
 define Device/onion-omega
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := Onion Omega
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-i2c-core kmod-i2c-gpio-custom kmod-spi-bitbang kmod-spi-dev kmod-spi-gpio kmod-spi-gpio-custom kmod-usb-serial
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage kmod-i2c-core kmod-i2c-gpio-custom kmod-spi-bitbang kmod-spi-dev kmod-spi-gpio kmod-spi-gpio-custom kmod-usb-serial
   BOARDNAME := ONION-OMEGA
   DEVICE_PROFILE := OMEGA
   TPLINK_HWID := 0x04700001
@@ -953,7 +953,7 @@ TARGET_DEVICES += onion-omega
 
 define Device/sc1750
   DEVICE_TITLE := Abicom SC1750
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := SC1750
   IMAGE_SIZE := 15744k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),15744k(firmware),128k(APConfig),128k(kplog),64k(ART)
@@ -962,7 +962,7 @@ TARGET_DEVICES += sc1750
 
 define Device/sc300m
   DEVICE_TITLE := Abicom SC300M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := SC300M
   IMAGE_SIZE := 15744k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),15744k(firmware),128k(APConfig),128k(kplog),64k(ART)
@@ -971,7 +971,7 @@ TARGET_DEVICES += sc300m
 
 define Device/sc450
   DEVICE_TITLE := Abicom SC450
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := SC450
   IMAGE_SIZE := 15744k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),15744k(firmware),128k(APConfig),128k(kplog),64k(ART)
@@ -990,7 +990,7 @@ TARGET_DEVICES += smart-300
 define Device/som9331
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := OpenEmbed SOM9331
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-i2c-core kmod-i2c-gpio-custom kmod-spi-bitbang kmod-spi-dev kmod-spi-gpio kmod-spi-gpio-custom kmod-usb-serial
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage kmod-i2c-core kmod-i2c-gpio-custom kmod-spi-bitbang kmod-spi-dev kmod-spi-gpio kmod-spi-gpio-custom kmod-usb-serial
   BOARDNAME := SOM9331
   DEVICE_PROFILE := SOM9331
   TPLINK_HWID := 0x04800054
@@ -1000,7 +1000,7 @@ TARGET_DEVICES += som9331
 
 define Device/sr3200
   DEVICE_TITLE := YunCore SR3200
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := SR3200
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),16000k(firmware),64k(art)ro
@@ -1017,7 +1017,7 @@ TARGET_DEVICES += xd3200
 
 define Device/t830
   DEVICE_TITLE := YunCore T830
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := T830
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),16000k(firmware),64k(art)ro
@@ -1030,7 +1030,7 @@ TARGET_DEVICES += t830
 define Device/tellstick-znet-lite
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := TellStick ZNet Lite
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-acm kmod-usb-serial kmod-usb-serial-pl2303
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-acm kmod-usb-serial kmod-usb-serial-pl2303
   BOARDNAME := TELLSTICK-ZNET-LITE
   DEVICE_PROFILE := TELLSTICKZNETLITE
   TPLINK_HWID := 0x00726001
@@ -1041,7 +1041,7 @@ TARGET_DEVICES += tellstick-znet-lite
 define Device/ts-d084
   $(Device/tplink-8mlzma)
   DEVICE_TITLE := PISEN TS-D084
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := TS-D084
   DEVICE_PROFILE := TSD084
   TPLINK_HWID := 0x07030101
@@ -1063,7 +1063,7 @@ TARGET_DEVICES += n5q
 
 define Device/NBG6616
   DEVICE_TITLE := ZyXEL NBG6616
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-usb-storage kmod-rtc-pcf8563 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-usb-storage kmod-rtc-pcf8563 kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := NBG6616
   KERNEL_SIZE := 2048k
   IMAGE_SIZE := 15323k
@@ -1113,7 +1113,7 @@ TARGET_DEVICES += c-55
 
 define Device/hiwifi-hc6361
   DEVICE_TITLE := HiWiFi HC6361
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage \
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage \
 	kmod-fs-ext4 kmod-nls-iso8859-1 e2fsprogs
   BOARDNAME := HiWiFi-HC6361
   DEVICE_PROFILE := HIWIFI_HC6361
@@ -1164,7 +1164,7 @@ TARGET_DEVICES += dir-869-a1
 define Device/mynet-n600
   $(Device/seama)
   DEVICE_TITLE := Western Digital My Net N600
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := MYNET-N600
   IMAGE_SIZE := 15808k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env)ro,64k(devdata)ro,64k(devconf)ro,15872k(firmware),64k(radiocfg)ro
@@ -1175,7 +1175,7 @@ TARGET_DEVICES += mynet-n600
 define Device/mynet-n750
   $(Device/seama)
   DEVICE_TITLE := Western Digital My Net N750
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := MYNET-N750
   IMAGE_SIZE := 15808k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env)ro,64k(devdata)ro,64k(devconf)ro,15872k(firmware),64k(radiocfg)ro
@@ -1186,7 +1186,7 @@ TARGET_DEVICES += mynet-n750
 define Device/qihoo-c301
   $(Device/seama)
   DEVICE_TITLE := Qihoo C301
-  DEVICE_PACKAGES :=  kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES :=  kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := QIHOO-C301
   IMAGE_SIZE := 15744k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),64k(devdata),64k(devconf),15744k(firmware),64k(warm_start),64k(action_image_config),64k(radiocfg)ro;spi0.1:15360k(upgrade2),1024k(privatedata)
@@ -1223,7 +1223,7 @@ TARGET_DEVICES += dap-2695-a1
 
 define Device/wam250
   DEVICE_TITLE := Samsung WAM250
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 -swconfig
+  DEVICE_PACKAGES := kmod-usb2 -swconfig
   BOARDNAME := WAM250
   IMAGE_SIZE := 15872k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env),128k(nvram)ro,15872k(firmware),64k(art)ro
@@ -1236,7 +1236,7 @@ TARGET_DEVICES += wam250
 define Device/wifi-pineapple-nano
   $(Device/tplink-16mlzma)
   DEVICE_TITLE := Hak5 WiFi Pineapple NANO
-  DEVICE_PACKAGES := kmod-ath9k-htc kmod-usb-core kmod-usb2 kmod-usb-storage \
+  DEVICE_PACKAGES := kmod-ath9k-htc kmod-usb2 kmod-usb-storage \
 	-swconfig -uboot-envtools
   BOARDNAME := WIFI-PINEAPPLE-NANO
   DEVICE_PROFILE := WIFIPINEAPPLENANO
@@ -1248,7 +1248,7 @@ TARGET_DEVICES += wifi-pineapple-nano
 
 define Device/wlr8100
   DEVICE_TITLE := Sitecom WLR-8100
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-usb3 \
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-usb3 \
 	kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := WLR8100
   IMAGE_SIZE := 15424k
@@ -1257,7 +1257,7 @@ endef
 TARGET_DEVICES += wlr8100
 
 define Device/wpj-16m
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   MTDPARTS := spi0.0:192k(u-boot)ro,16128k(firmware),64k(art)ro
   IMAGE_SIZE := 16128k
 endef
@@ -1305,7 +1305,7 @@ TARGET_DEVICES += wpj563
 
 define Device/wrtnode2q
   DEVICE_TITLE := WRTnode2Q
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage
   BOARDNAME := WRTNODE2Q
   IMAGE_SIZE := 16064k
   MTDPARTS := spi0.0:192k(u-boot)ro,64k(u-boot-env),64k(art)ro,16064k(firmware),16384k@0x0(fullflash)
@@ -1334,7 +1334,7 @@ TARGET_DEVICES += fritz300e
 define Device/fritz4020
   $(call Device/AVM)
   DEVICE_TITLE := AVM FRITZ!Box 4020
-  DEVICE_PACKAGES += kmod-usb-core kmod-usb2 kmod-usb-storage
+  DEVICE_PACKAGES += kmod-usb2 kmod-usb-storage
   BOARDNAME := FRITZ4020
   SUPPORTED_DEVICES := fritz4020
   IMAGE_SIZE := 15232k
diff --git a/target/linux/ar71xx/image/mikrotik.mk b/target/linux/ar71xx/image/mikrotik.mk
index 23d348b6a9..91b11f3c7f 100644
--- a/target/linux/ar71xx/image/mikrotik.mk
+++ b/target/linux/ar71xx/image/mikrotik.mk
@@ -1,6 +1,6 @@
 define Device/mikrotik
   PROFILES := Default
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
   BOARD_NAME := routerboard
   LOADER_TYPE := elf
   KERNEL_NAME := vmlinux.bin.lzma
diff --git a/target/linux/ar71xx/image/nand.mk b/target/linux/ar71xx/image/nand.mk
index 96365e6529..8cf2e98234 100644
--- a/target/linux/ar71xx/image/nand.mk
+++ b/target/linux/ar71xx/image/nand.mk
@@ -17,7 +17,7 @@ endef
 
 define Device/c-60
   DEVICE_TITLE := AirTight C-60
-  DEVICE_PACKAGES := kmod-spi-gpio kmod-usb-core kmod-usb2 kmod-ath9k
+  DEVICE_PACKAGES := kmod-spi-gpio kmod-usb2 kmod-ath9k
   BOARDNAME := C-60
   BLOCKSIZE := 64k
   KERNEL_SIZE := 3648k
@@ -31,7 +31,7 @@ TARGET_DEVICES += c-60
 
 define Device/domywifi-dw33d
   DEVICE_TITLE := DomyWifi DW33D
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := DW33D
   IMAGE_SIZE := 16000k
   MTDPARTS := spi0.0:256k(u-boot)ro,64k(u-boot-env)ro,14528k(rootfs),1472k(kernel),64k(art)ro,16000k@0x50000(firmware);ar934x-nfc:96m(rootfs_data),32m(backup)ro
@@ -41,7 +41,7 @@ TARGET_DEVICES += domywifi-dw33d
 
 define Device/hiveap-121
   DEVICE_TITLE := Aerohive HiveAP-121
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-i2c-gpio-custom kmod-spi-gpio kmod-ath9k kmod-tpm-i2c-atmel
+  DEVICE_PACKAGES := kmod-usb2 kmod-i2c-gpio-custom kmod-spi-gpio kmod-ath9k kmod-tpm-i2c-atmel
   BOARDNAME := HiveAP-121
   BLOCKSIZE := 128k
   PAGESIZE := 2048
@@ -72,7 +72,7 @@ TARGET_DEVICES += mr18
 
 define Device/rambutan
   DEVICE_TITLE := 8devices Rambutan
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := RAMBUTAN
   BLOCKSIZE := 128KiB
   MTDPARTS := ar934x-nfc:3M(u-boot)ro,2M(u-boot-env),1M(art),122M(ubi)
@@ -87,7 +87,7 @@ TARGET_DEVICES += rambutan
 define Device/wi2a-ac200i
   SUPPORTED_DEVICES = $(1)
   DEVICE_TITLE := Nokia WI2A-AC200i
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath9k kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath9k kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := WI2A-AC200i
   BLOCKSIZE := 64k
   KERNEL_SIZE := 3648k
@@ -101,7 +101,7 @@ TARGET_DEVICES += wi2a-ac200i
 
 define Device/z1
   DEVICE_TITLE := Meraki Z1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-spi-gpio kmod-ath9k kmod-owl-loader
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-spi-gpio kmod-ath9k kmod-owl-loader
   BOARDNAME := Z1
   BLOCKSIZE := 64k
   MTDPARTS := ar934x-nfc:128K(loader1)ro,8064K(kernel),128K(loader2)ro,8064K(recovery),114560K(ubi),128K(origcaldata)ro
@@ -114,19 +114,19 @@ TARGET_DEVICES += z1
 
 define LegacyDevice/R6100
   DEVICE_TITLE := NETGEAR R6100
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += R6100
 
 define LegacyDevice/WNDR3700V4
   DEVICE_TITLE := NETGEAR WNDR3700v4
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WNDR3700V4
 
 define LegacyDevice/WNDR4300V1
   DEVICE_TITLE := NETGEAR WNDR4300v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WNDR4300V1
 
diff --git a/target/linux/ar71xx/image/tiny-legacy-devices.mk b/target/linux/ar71xx/image/tiny-legacy-devices.mk
index bcf77de443..7f63d19de0 100644
--- a/target/linux/ar71xx/image/tiny-legacy-devices.mk
+++ b/target/linux/ar71xx/image/tiny-legacy-devices.mk
@@ -1,6 +1,6 @@
 define LegacyDevice/F9K1115V2
   DEVICE_TITLE := Belkin AC1750DB (F9K1115V2)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb3 kmod-usb-ledtrig-usbport \
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb3 kmod-usb-ledtrig-usbport \
         kmod-ath10k-ct ath10k-firmware-qca988x-ct
 endef
 LEGACY_DEVICES += F9K1115V2
@@ -82,13 +82,13 @@ LEGACY_DEVICES += DIR601B1
 
 define LegacyDevice/WP543_4M
   DEVICE_TITLE := Compex WP543/WPJ543 (4MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
 endef
 LEGACY_DEVICES += WP543_4M
 
 define LegacyDevice/WPE72_4M
   DEVICE_TITLE := Compex WPE72/WPE72NX (4MB flash)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
 endef
 LEGACY_DEVICES += WPE72_4M
 
@@ -104,7 +104,7 @@ LEGACY_DEVICES += WNR2000V3
 
 define LegacyDevice/WNR2000V4
   DEVICE_TITLE := NETGEAR WNR2000V4
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 LEGACY_DEVICES += WNR2000V4
 
diff --git a/target/linux/ar71xx/image/tiny-tp-link.mk b/target/linux/ar71xx/image/tiny-tp-link.mk
index 5b0ab3e970..e738393caf 100644
--- a/target/linux/ar71xx/image/tiny-tp-link.mk
+++ b/target/linux/ar71xx/image/tiny-tp-link.mk
@@ -4,7 +4,7 @@ include ./common-tp-link.mk
 define Device/tl-mr10u-v1
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-MR10U v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := TL-MR10U
   DEVICE_PROFILE := TLMR10U
   TPLINK_HWID := 0x00100101
@@ -15,7 +15,7 @@ TARGET_DEVICES += tl-mr10u-v1
 define Device/tl-mr11u-v1
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-MR11U v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-MR11U
   DEVICE_PROFILE := TLMR11U
   TPLINK_HWID := 0x00110101
@@ -33,7 +33,7 @@ TARGET_DEVICES += tl-mr11u-v2
 define Device/tl-mr12u-v1
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-MR12U v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-MR13U
   DEVICE_PROFILE := TLMR12U
   TPLINK_HWID := 0x00120101
@@ -52,7 +52,7 @@ TARGET_DEVICES += tl-mr13u-v1
 define Device/tl-mr3020-v1
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-MR3020 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-MR3020
   DEVICE_PROFILE := TLMR3020
   TPLINK_HWID := 0x30200001
@@ -80,7 +80,7 @@ TARGET_DEVICES += tl-mr3040-v2
 define Device/tl-mr3220-v1
   $(Device/tplink-4m)
   DEVICE_TITLE := TP-LINK TL-MR3220 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-MR3220
   DEVICE_PROFILE := TLMR3220
   TPLINK_HWID := 0x32200001
@@ -90,7 +90,7 @@ TARGET_DEVICES += tl-mr3220-v1
 define Device/tl-mr3220-v2
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-MR3220 v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-MR3220-v2
   DEVICE_PROFILE := TLMR3220
   TPLINK_HWID := 0x32200002
@@ -101,7 +101,7 @@ TARGET_DEVICES += tl-mr3220-v2
 define Device/tl-mr3420-v1
   $(Device/tplink-4m)
   DEVICE_TITLE := TP-LINK TL-MR3420 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-MR3420
   DEVICE_PROFILE := TLMR3420
   TPLINK_HWID := 0x34200001
@@ -111,7 +111,7 @@ TARGET_DEVICES += tl-mr3420-v1
 define Device/tl-mr3420-v2
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-MR3420 v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-MR3420-v2
   DEVICE_PROFILE := TLMR3420
   TPLINK_HWID := 0x34200002
@@ -322,7 +322,7 @@ TARGET_DEVICES += tl-wa901nd-v5
 define Device/tl-wdr3320-v2
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-WDR3320 v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   BOARDNAME := TL-WDR3320-v2
   DEVICE_PROFILE := TLWDR3320V2
   TPLINK_HWID := 0x33200002
@@ -342,7 +342,7 @@ TARGET_DEVICES += tl-wr1041n-v2
 define Device/tl-wr703n-v1
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-WR703N v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := TL-WR703N
   DEVICE_PROFILE := TLWR703
   TPLINK_HWID := 0x07030101
@@ -353,7 +353,7 @@ TARGET_DEVICES += tl-wr703n-v1
 define Device/tl-wr710n-v2
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-WR710N v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := TL-WR710N
   DEVICE_PROFILE := TLWR710
   TPLINK_HWID := 0x07100002
@@ -364,7 +364,7 @@ TARGET_DEVICES += tl-wr710n-v2
 define Device/tl-wr720n-v3
   $(Device/tplink-4mlzma)
   DEVICE_TITLE := TP-LINK TL-WR720N v3
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := TL-WR720N-v3
   DEVICE_PROFILE := TLWR720
   TPLINK_HWID := 0x07200103
diff --git a/target/linux/ar71xx/image/tiny.mk b/target/linux/ar71xx/image/tiny.mk
index b318d81537..f89d9df83c 100644
--- a/target/linux/ar71xx/image/tiny.mk
+++ b/target/linux/ar71xx/image/tiny.mk
@@ -21,7 +21,7 @@ endef
 
 define Device/zbt-we1526
   DEVICE_TITLE := Zbtlink ZBT-WE1526
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   BOARDNAME := ZBT-WE1526
   IMAGE_SIZE := 16000k
   KERNEL_SIZE := 1472k
diff --git a/target/linux/ar71xx/mikrotik/profiles/00-default.mk b/target/linux/ar71xx/mikrotik/profiles/00-default.mk
index 2b2670f07b..1dfc62dbb3 100644
--- a/target/linux/ar71xx/mikrotik/profiles/00-default.mk
+++ b/target/linux/ar71xx/mikrotik/profiles/00-default.mk
@@ -8,7 +8,7 @@
 define Profile/Default
 	NAME:=Default Profile
 	PACKAGES:= \
-		kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport nand-utils
+		kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport nand-utils
 	PRIORITY := 1
 endef
 
diff --git a/target/linux/ar71xx/nand/profiles/00-default.mk b/target/linux/ar71xx/nand/profiles/00-default.mk
index 06ab790389..6e618113a5 100644
--- a/target/linux/ar71xx/nand/profiles/00-default.mk
+++ b/target/linux/ar71xx/nand/profiles/00-default.mk
@@ -8,7 +8,7 @@
 define Profile/Default
 	NAME:=Default Profile
 	PACKAGES:= \
-		kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
+		kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
 	PRIORITY := 1
 endef
 
diff --git a/target/linux/ar71xx/tiny/profiles/00-default.mk b/target/linux/ar71xx/tiny/profiles/00-default.mk
index d6d76086fd..edddeb3bf6 100644
--- a/target/linux/ar71xx/tiny/profiles/00-default.mk
+++ b/target/linux/ar71xx/tiny/profiles/00-default.mk
@@ -1,7 +1,7 @@
 define Profile/Default
 	NAME:=Default Profile (all drivers)
 	PACKAGES:= \
-		kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
+		kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
 	PRIORITY := 1
 endef
 
diff --git a/target/linux/arc770/generic/profiles/00-default.mk b/target/linux/arc770/generic/profiles/00-default.mk
index 798478b616..2ca93ddb04 100644
--- a/target/linux/arc770/generic/profiles/00-default.mk
+++ b/target/linux/arc770/generic/profiles/00-default.mk
@@ -7,7 +7,7 @@
 
 define Profile/Default
 	NAME:=Default Profile (all drivers)
-	PACKAGES:= kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-ath9k-htc wpad-basic
+	PACKAGES:= kmod-usb-ohci kmod-usb2 kmod-ath9k-htc wpad-basic
 endef
 
 define Profile/Default/Description
diff --git a/target/linux/archs38/generic/profiles/00-default.mk b/target/linux/archs38/generic/profiles/00-default.mk
index 747967df94..ec9bbbb19f 100644
--- a/target/linux/archs38/generic/profiles/00-default.mk
+++ b/target/linux/archs38/generic/profiles/00-default.mk
@@ -7,7 +7,7 @@
 
 define Profile/Default
 	NAME:=Default Profile (all drivers)
-	PACKAGES:= kmod-usb-core kmod-usb2 kmod-ath9k-htc wpad-basic
+	PACKAGES:= kmod-usb2 kmod-ath9k-htc wpad-basic
 endef
 
 define Profile/Default/Description
diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index c8d31b87e9..ae64e86c4d 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -6,7 +6,7 @@ define Device/tplink_archer-a7-v5
   IMAGE_SIZE := 15104k
   DEVICE_MODEL := Archer A7
   DEVICE_VARIANT := v5
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   TPLINK_BOARD_ID := ARCHER-A7-V5
   BOARDNAME := ARCHER-A7-V5
   SUPPORTED_DEVICES += archer-a7-v5
@@ -55,7 +55,7 @@ define Device/tplink_archer-c59-v1
   DEVICE_MODEL := Archer C59
   DEVICE_VARIANT := v1
   TPLINK_BOARD_ID := ARCHER-C59-V1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca9888-ct
   SUPPORTED_DEVICES += archer-c59-v1
 endef
 TARGET_DEVICES += tplink_archer-c59-v1
@@ -100,7 +100,7 @@ define Device/tplink_archer-c5-v1
   ATH_SOC := qca9558
   DEVICE_MODEL := Archer C5
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   TPLINK_HWID := 0xc5000001
   SUPPORTED_DEVICES += archer-c5
 endef
@@ -111,7 +111,7 @@ define Device/tplink_archer-c7-v1
   ATH_SOC := qca9558
   DEVICE_MODEL := Archer C7
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   TPLINK_HWID := 0x75000001
   SUPPORTED_DEVICES += archer-c7
 endef
@@ -122,7 +122,7 @@ define Device/tplink_archer-c7-v2
   ATH_SOC := qca9558
   DEVICE_MODEL := Archer C7
   DEVICE_VARIANT := v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   TPLINK_HWID := 0xc7000002
   SUPPORTED_DEVICES += archer-c7
   IMAGES += factory-us.bin factory-eu.bin
@@ -137,7 +137,7 @@ define Device/tplink_archer-c7-v4
   IMAGE_SIZE := 15104k
   DEVICE_MODEL := Archer C7
   DEVICE_VARIANT := v4
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   TPLINK_BOARD_ID := ARCHER-C7-V4
   BOARDNAME := ARCHER-C7-V4
   SUPPORTED_DEVICES += archer-c7-v4
@@ -150,7 +150,7 @@ define Device/tplink_archer-c7-v5
   IMAGE_SIZE := 15360k
   DEVICE_MODEL := Archer C7
   DEVICE_VARIANT := v5
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   TPLINK_BOARD_ID := ARCHER-C7-V5
   BOARDNAME := ARCHER-C7-V5
   SUPPORTED_DEVICES += archer-c7-v5
@@ -257,7 +257,7 @@ define Device/tplink_archer-d50-v1
   DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := Archer D50
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
   BOARDNAME := ARCHER-D50-V1
   IMAGE_SIZE := 7808k
   TPLINK_HWID := 0xC1200001
@@ -333,7 +333,7 @@ define Device/tplink_tl-wdr3600-v1
   ATH_SOC := ar9344
   DEVICE_MODEL := TL-WDR3600
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x36000001
   SUPPORTED_DEVICES += tl-wdr4300
 endef
@@ -344,7 +344,7 @@ define Device/tplink_tl-wdr4300-v1
   ATH_SOC := ar9344
   DEVICE_MODEL := TL-WDR4300
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x43000001
   SUPPORTED_DEVICES += tl-wdr4300
 endef
@@ -355,7 +355,7 @@ define Device/tplink_tl-wdr4900-v2
   ATH_SOC := qca9558
   DEVICE_MODEL := TL-WDR4900
   DEVICE_VARIANT := v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x49000002
 endef
 TARGET_DEVICES += tplink_tl-wdr4900-v2
@@ -384,7 +384,7 @@ define Device/tplink_tl-wr710n-v1
   ATH_SOC := ar9331
   DEVICE_MODEL := TL-WR710N
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-chipidea2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-chipidea2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x07100001
   SUPPORTED_DEVICES += tl-wr710n
 endef
@@ -395,7 +395,7 @@ define Device/tplink_tl-wr842n-v1
   ATH_SOC := ar7241
   DEVICE_MODEL := TL-WR842N/ND
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x8420001
 endef
 TARGET_DEVICES += tplink_tl-wr842n-v1
@@ -405,7 +405,7 @@ define Device/tplink_tl-wr842n-v2
   ATH_SOC := ar9341
   DEVICE_MODEL := TL-WR842N/ND
   DEVICE_VARIANT := v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x8420002
   SUPPORTED_DEVICES += tl-wr842n-v2
 endef
@@ -416,7 +416,7 @@ define Device/tplink_tl-wr842n-v3
   ATH_SOC := qca9533
   DEVICE_MODEL := TL-WR842N
   DEVICE_VARIANT := v3
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x8420003
   SUPPORTED_DEVICES += tl-wr842n-v3
 endef
@@ -427,7 +427,7 @@ define Device/tplink_tl-wr1043nd-v1
   ATH_SOC := ar9132
   DEVICE_MODEL := TL-WR1043N/ND
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x10430001
   SUPPORTED_DEVICES += tl-wr1043nd
 endef
@@ -438,7 +438,7 @@ define Device/tplink_tl-wr1043nd-v2
   ATH_SOC := qca9558
   DEVICE_MODEL := TL-WR1043N/ND
   DEVICE_VARIANT := v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x10430002
   SUPPORTED_DEVICES += tl-wr1043nd-v2
 endef
@@ -449,7 +449,7 @@ define Device/tplink_tl-wr1043nd-v3
   ATH_SOC := qca9558
   DEVICE_MODEL := TL-WR1043N/ND
   DEVICE_VARIANT := v3
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x10430003
   SUPPORTED_DEVICES += tl-wr1043nd-v3
 endef
@@ -461,7 +461,7 @@ define Device/tplink_tl-wr1043nd-v4
   IMAGE_SIZE := 15552k
   DEVICE_MODEL := TL-WR1043N/ND
   DEVICE_VARIANT := v4
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x10430004
   TPLINK_BOARD_ID := TLWR1043NDV4
   SUPPORTED_DEVICES += tl-wr1043nd-v4
@@ -484,7 +484,7 @@ define Device/tplink_tl-wr2543-v1
   ATH_SOC := ar7242
   DEVICE_MODEL := TL-WR2543N/ND
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x25430001
   IMAGE/sysupgrade.bin := append-rootfs | mktplinkfw sysupgrade -v 3.13.99 | \
     append-metadata | check-size $$$$(IMAGE_SIZE)
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 6db083861f..f33918923d 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -35,7 +35,7 @@ endef
 # UBNT_VERSION e.g. one of (6.0.0, 8.5.0)
 define Device/ubnt
   DEVICE_VENDOR := Ubiquiti
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   IMAGE_SIZE := 7552k
   UBNT_BOARD := XM
   UBNT_VERSION := 6.0.0
@@ -198,7 +198,7 @@ TARGET_DEVICES += ubnt_unifiac-mesh-pro
 define Device/ubnt_unifiac-pro
   $(Device/ubnt_unifiac)
   DEVICE_MODEL := UniFi AC-Pro
-  DEVICE_PACKAGES += kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES += kmod-usb2
   SUPPORTED_DEVICES += ubnt-unifiac-pro
 endef
 TARGET_DEVICES += ubnt_unifiac-pro
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index eed0e2b683..defc6ae90c 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -176,7 +176,7 @@ define Device/buffalo_bhr-4grv
   ATH_SOC := ar7242
   DEVICE_VENDOR := Buffalo
   DEVICE_MODEL := BHR-4GRV
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   IMAGE_SIZE := 32256k
   IMAGES += factory.bin tftp.bin
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE)
@@ -203,7 +203,7 @@ define Device/buffalo_wzr-hp-ag300h
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE)
   IMAGE/factory.bin := $$(IMAGE/default) | buffalo-enc WZR-HP-AG300H 1.99 | buffalo-tag WZR-HP-AG300H 3
   IMAGE/tftp.bin := $$(IMAGE/default) | buffalo-tftp-header
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
   SUPPORTED_DEVICES += wzr-hp-ag300h
 endef
 TARGET_DEVICES += buffalo_wzr-hp-ag300h
@@ -213,7 +213,7 @@ define Device/buffalo_wzr-hp-g302h-a1a0
   DEVICE_VENDOR := Buffalo
   DEVICE_MODEL := WZR-HP-G302H
   DEVICE_VARIANT := A1A0
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   IMAGE_SIZE := 32128k
   IMAGES += factory.bin tftp.bin
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE)
@@ -227,7 +227,7 @@ define Device/buffalo_wzr-hp-g450h
   ATH_SOC := ar7242
   DEVICE_VENDOR := Buffalo
   DEVICE_MODEL := WZR-HP-G450H/WZR-450HP
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   IMAGE_SIZE := 32256k
   IMAGES += factory.bin tftp.bin
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE)
@@ -271,7 +271,7 @@ define Device/comfast_cf-e5
   ATH_SOC := qca9531
   DEVICE_VENDOR := COMFAST
   DEVICE_MODEL := CF-E5/E7
-  DEVICE_PACKAGES := rssileds kmod-leds-gpio kmod-usb-core kmod-usb2 kmod-usb-net \
+  DEVICE_PACKAGES := rssileds kmod-leds-gpio kmod-usb2 kmod-usb-net \
 	kmod-usb-net-qmi-wwan -swconfig -uboot-envtools
   IMAGE_SIZE := 16192k
 endef
@@ -358,7 +358,7 @@ define Device/dlink_dir-825-b1
   DEVICE_VARIANT := B1
   IMAGE_SIZE := 6208k
   IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
   SUPPORTED_DEVICES += dir-825-b1
 endef
 TARGET_DEVICES += dlink_dir-825-b1
@@ -368,7 +368,7 @@ define Device/dlink_dir-825-c1
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DIR-825
   DEVICE_VARIANT := C1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
   SUPPORTED_DEVICES += dir-825-c1
   IMAGE_SIZE := 15936k
   IMAGES := factory.bin sysupgrade.bin
@@ -384,7 +384,7 @@ define Device/dlink_dir-835-a1
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DIR-835
   DEVICE_VARIANT := A1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-leds-reset kmod-owl-loader
+  DEVICE_PACKAGES := kmod-usb2 kmod-leds-reset kmod-owl-loader
   SUPPORTED_DEVICES += dir-835-a1
   IMAGE_SIZE := 15936k
   IMAGES := factory.bin sysupgrade.bin
@@ -402,7 +402,7 @@ define Device/dlink_dir-859-a1
   DEVICE_MODEL := DIR-859
   DEVICE_VARIANT := A1
   IMAGE_SIZE := 15872k
-  DEVICE_PACKAGES :=  kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES :=  kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
   SEAMA_SIGNATURE := wrgac37_dlink.2013gui_dir859
   SUPPORTED_DEVICES += dir-859-a1
 endef
@@ -538,7 +538,7 @@ TARGET_DEVICES += glinet_gl-ar150
 
 define Device/glinet_gl-ar300m-common-nor
   ATH_SOC := qca9531
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   IMAGE_SIZE := 16000k
   SUPPORTED_DEVICES += gl-ar300m
 endef
@@ -581,7 +581,7 @@ define Device/glinet_gl-x750
   ATH_SOC := qca9531
   DEVICE_VENDOR := GL.iNet
   DEVICE_MODEL := GL-X750
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
   IMAGE_SIZE := 16000k
 endef
 TARGET_DEVICES += glinet_gl-x750
@@ -604,7 +604,7 @@ define Device/iodata_wn-ac1167dgr
   IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | \
     append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
     senao-header -r 0x30a -p 0x61 -t 2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
 endef
 TARGET_DEVICES += iodata_wn-ac1167dgr
 
@@ -617,7 +617,7 @@ define Device/iodata_wn-ac1600dgr
   IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | \
     append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
     senao-header -r 0x30a -p 0x60 -t 2 -v 200
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
 endef
 TARGET_DEVICES += iodata_wn-ac1600dgr
 
@@ -631,7 +631,7 @@ define Device/iodata_wn-ac1600dgr2
     append-kernel | pad-to $$$$(BLOCKSIZE) | \
     append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
     senao-header -r 0x30a -p 0x60 -t 2 -v 200
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
 endef
 TARGET_DEVICES += iodata_wn-ac1600dgr2
 
@@ -644,7 +644,7 @@ define Device/iodata_wn-ag300dgr
   IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | \
     append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
     senao-header -r 0x30a -p 0x47 -t 2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
 endef
 TARGET_DEVICES += iodata_wn-ag300dgr
 
@@ -667,7 +667,7 @@ define Device/librerouter_librerouter-v1
   DEVICE_MODEL := LibreRouter
   DEVICE_VARIANT := v1
   IMAGE_SIZE := 7936k
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
 endef
 TARGET_DEVICES += librerouter_librerouter-v1
 
@@ -767,7 +767,7 @@ define Device/pcs_cr5000
   ATH_SOC := ar9344
   DEVICE_VENDOR := PowerCloud Systems
   DEVICE_MODEL := CR5000
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-core
+  DEVICE_PACKAGES := kmod-usb2
   IMAGE_SIZE := 7808k
   SUPPORTED_DEVICES += cr5000
 endef
@@ -776,7 +776,7 @@ TARGET_DEVICES += pcs_cr5000
 define Device/netgear_wndr3x00
   ATH_SOC := ar7161
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
   $(Device/netgear_ath79)
 endef
 
@@ -833,7 +833,7 @@ define Device/pisen_ts-d084
   ATH_SOC := ar9331
   DEVICE_VENDOR := PISEN
   DEVICE_MODEL := TS-D084
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-chipidea2
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-chipidea2
   TPLINK_HWID := 0x07030101
 endef
 TARGET_DEVICES += pisen_ts-d084
@@ -860,7 +860,7 @@ define Device/pisen_wmm003n
   ATH_SOC := ar9331
   DEVICE_VENDOR := PISEN
   DEVICE_MODEL := Cloud Easy Power (WMM003N)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-chipidea2
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-chipidea2
   TPLINK_HWID := 0x07030101
 endef
 TARGET_DEVICES += pisen_wmm003n
@@ -903,7 +903,7 @@ define Device/rosinson_wr818
   DEVICE_VENDOR := Rosinson
   DEVICE_MODEL := WR818
   IMAGE_SIZE := 15872k
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
 endef
 TARGET_DEVICES += rosinson_wr818
 
@@ -912,7 +912,7 @@ define Device/trendnet_tew-823dru
   DEVICE_VENDOR := Trendnet
   DEVICE_MODEL := TEW-823DRU
   DEVICE_VARIANT := v1.0R
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
   SUPPORTED_DEVICES += tew-823dru
   IMAGE_SIZE := 15296k
   IMAGES := factory.bin sysupgrade.bin
@@ -929,7 +929,7 @@ define Device/wd_mynet-n750
   DEVICE_VENDOR := Western Digital
   DEVICE_MODEL := My Net N750
   IMAGE_SIZE := 15872k
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   SEAMA_SIGNATURE := wrgnd13_wd_av
   SUPPORTED_DEVICES += mynet-n750
 endef
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index 7fa07d3a3d..db4ff9c6f0 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -3,7 +3,7 @@ define Device/glinet_gl-ar300m-nand
   DEVICE_VENDOR := GL.iNet
   DEVICE_MODEL := GL-AR300M
   DEVICE_VARIANT := NAND
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
   KERNEL_SIZE := 2048k
   BLOCKSIZE := 128k
   PAGESIZE := 2048
diff --git a/target/linux/ath79/image/tiny-tp-link.mk b/target/linux/ath79/image/tiny-tp-link.mk
index 71d165fdc2..f81beb2534 100644
--- a/target/linux/ath79/image/tiny-tp-link.mk
+++ b/target/linux/ath79/image/tiny-tp-link.mk
@@ -16,7 +16,7 @@ define Device/tplink_tl-mr3020-v1
   ATH_SOC := ar9331
   DEVICE_MODEL := TL-MR3020
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-chipidea2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-chipidea2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x30200001
   SUPPORTED_DEVICES += tl-mr3020
 endef
@@ -27,7 +27,7 @@ define Device/tplink_tl-mr3040-v2
   ATH_SOC := ar9331
   DEVICE_MODEL := TL-MR3040
   DEVICE_VARIANT := v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-chipidea2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-chipidea2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x30400002
   SUPPORTED_DEVICES += tl-mr3040-v2
 endef
@@ -39,7 +39,7 @@ define Device/tplink_tl-mr3220-v1
   DEVICE_MODEL := TL-MR3220
   DEVICE_VARIANT := v1
   TPLINK_HWID := 0x32200001
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += tl-mr3220-v1
 endef
 TARGET_DEVICES += tplink_tl-mr3220-v1
@@ -50,7 +50,7 @@ define Device/tplink_tl-mr3420-v1
   DEVICE_MODEL := TL-MR3420
   DEVICE_VARIANT := v1
   TPLINK_HWID := 0x34200001
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += tl-mr3420-v1
 endef
 TARGET_DEVICES += tplink_tl-mr3420-v1
diff --git a/target/linux/ath79/image/tiny.mk b/target/linux/ath79/image/tiny.mk
index fb93cb60f5..8f867575af 100644
--- a/target/linux/ath79/image/tiny.mk
+++ b/target/linux/ath79/image/tiny.mk
@@ -17,7 +17,7 @@ define Device/pqi_air-pen
   ATH_SOC := ar9330
   DEVICE_VENDOR := PQI
   DEVICE_MODEL := Air-Pen
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2
+  DEVICE_PACKAGES := kmod-usb2
   IMAGE_SIZE := 7680k
   SUPPORTED_DEVICES += pqi-air-pen
 endef
diff --git a/target/linux/ath79/nand/profiles/00-default.mk b/target/linux/ath79/nand/profiles/00-default.mk
index 06ab790389..6e618113a5 100644
--- a/target/linux/ath79/nand/profiles/00-default.mk
+++ b/target/linux/ath79/nand/profiles/00-default.mk
@@ -8,7 +8,7 @@
 define Profile/Default
 	NAME:=Default Profile
 	PACKAGES:= \
-		kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
+		kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
 	PRIORITY := 1
 endef
 
diff --git a/target/linux/gemini/Makefile b/target/linux/gemini/Makefile
index 3afc643023..1efa2ae10f 100644
--- a/target/linux/gemini/Makefile
+++ b/target/linux/gemini/Makefile
@@ -24,7 +24,7 @@ KERNELNAME:=zImage dtbs
 include $(INCLUDE_DIR)/target.mk
 
 DEFAULT_PACKAGES += \
-	kmod-usb-core kmod-usb-fotg210 \
+	kmod-usb-fotg210 \
 	kmod-usb-ledtrig-usbport \
 	kmod-leds-gpio kmod-ledtrig-heartbeat \
 	kmod-gpio-button-hotplug
diff --git a/target/linux/ipq806x/Makefile b/target/linux/ipq806x/Makefile
index 19ed015ebc..6dc1cfca79 100644
--- a/target/linux/ipq806x/Makefile
+++ b/target/linux/ipq806x/Makefile
@@ -19,7 +19,7 @@ include $(INCLUDE_DIR)/target.mk
 DEFAULT_PACKAGES += \
 	kmod-leds-gpio kmod-gpio-button-hotplug swconfig \
 	kmod-ata-core kmod-ata-ahci kmod-ata-ahci-platform \
-	kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport \
+	kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport \
 	kmod-usb3 kmod-usb-dwc3-of-simple kmod-usb-phy-qcom-dwc3 \
 	kmod-ath10k-ct wpad-basic \
 	uboot-envtools
diff --git a/target/linux/ixp4xx/generic/profiles/200-NSLU2.mk b/target/linux/ixp4xx/generic/profiles/200-NSLU2.mk
index 6a54f74bf3..55073602a0 100644
--- a/target/linux/ixp4xx/generic/profiles/200-NSLU2.mk
+++ b/target/linux/ixp4xx/generic/profiles/200-NSLU2.mk
@@ -8,7 +8,7 @@
 define Profile/NSLU2
   NAME:=Linksys NSLU2
   PACKAGES:=-wpad-basic -kmod-ath5k kmod-scsi-core \
-	kmod-usb-core kmod-usb-ohci-pci kmod-usb2-pci kmod-usb-storage \
+	kmod-usb-ohci-pci kmod-usb2-pci kmod-usb-storage \
 	kmod-fs-ext4
 endef
 
diff --git a/target/linux/ixp4xx/generic/profiles/300-NAS100d.mk b/target/linux/ixp4xx/generic/profiles/300-NAS100d.mk
index 28ac79c41c..a50eec09e0 100644
--- a/target/linux/ixp4xx/generic/profiles/300-NAS100d.mk
+++ b/target/linux/ixp4xx/generic/profiles/300-NAS100d.mk
@@ -10,7 +10,7 @@ define Profile/NAS100d
   PACKAGES:=kmod-ath5k \
 	kmod-scsi-core \
 	kmod-ata-core kmod-ata-artop \
-	kmod-usb-core kmod-usb2-pci kmod-usb-storage \
+	kmod-usb2-pci kmod-usb-storage \
 	kmod-fs-ext4
 endef
 
diff --git a/target/linux/ixp4xx/generic/profiles/400-DSMG600RevA.mk b/target/linux/ixp4xx/generic/profiles/400-DSMG600RevA.mk
index c8b53a841b..fe2b1ccc64 100644
--- a/target/linux/ixp4xx/generic/profiles/400-DSMG600RevA.mk
+++ b/target/linux/ixp4xx/generic/profiles/400-DSMG600RevA.mk
@@ -11,7 +11,7 @@ define Profile/DSMG600RevA
 	kmod-ath5k \
 	kmod-scsi-core \
 	kmod-ata-core kmod-ata-artop \
-	kmod-usb-core kmod-usb-uhci kmod-usb2-pci kmod-usb-storage \
+	kmod-usb-uhci kmod-usb2-pci kmod-usb-storage \
 	kmod-fs-ext4
 endef
 
diff --git a/target/linux/ixp4xx/generic/profiles/500-USR8200.mk b/target/linux/ixp4xx/generic/profiles/500-USR8200.mk
index 959c399e92..a4c1f7f430 100644
--- a/target/linux/ixp4xx/generic/profiles/500-USR8200.mk
+++ b/target/linux/ixp4xx/generic/profiles/500-USR8200.mk
@@ -8,7 +8,7 @@
 define Profile/USR8200
   NAME:=USRobotics USR8200
   PACKAGES:=-wpad-basic kmod-scsi-core \
-	kmod-usb-core kmod-usb-uhci kmod-usb2-pci kmod-usb-storage \
+	kmod-usb-uhci kmod-usb2-pci kmod-usb-storage \
 	kmod-fs-ext4 kmod-firewire kmod-firewire-ohci kmod-firewire-sbp2
 endef
 
diff --git a/target/linux/ixp4xx/harddisk/profiles/100-FSG3.mk b/target/linux/ixp4xx/harddisk/profiles/100-FSG3.mk
index 21f5e1fd43..489ef083a8 100644
--- a/target/linux/ixp4xx/harddisk/profiles/100-FSG3.mk
+++ b/target/linux/ixp4xx/harddisk/profiles/100-FSG3.mk
@@ -9,7 +9,7 @@ define Profile/FSG3
   NAME:=Freecom FSG-3
   PACKAGES:= \
 	kmod-ath5k \
-	kmod-usb-core kmod-usb-uhci kmod-usb2-pci kmod-usb-storage \
+	kmod-usb-uhci kmod-usb2-pci kmod-usb-storage \
 	kmod-fs-ext4 kmod-fs-reiserfs
 endef
 
diff --git a/target/linux/mediatek/image/mt7622.mk b/target/linux/mediatek/image/mt7622.mk
index 4d648804f0..c49de88d41 100644
--- a/target/linux/mediatek/image/mt7622.mk
+++ b/target/linux/mediatek/image/mt7622.mk
@@ -2,7 +2,7 @@ define Device/MTK-RFB1
   DEVICE_TITLE := MTK7622 rfb1 AP
   DEVICE_DTS := mt7622-rfb1
   DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb3 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb3 \
 			kmod-ata-core kmod-ata-ahci-mtk
 endef
 TARGET_DEVICES += MTK-RFB1
@@ -11,7 +11,7 @@ define Device/MTK-LYNX-RFB1
   DEVICE_TITLE := MTK7622 Lynx rfb1 AP
   DEVICE_DTS := mt7622-lynx-rfb1
   DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb3 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb3 \
 			kmod-ata-core kmod-ata-ahci-mtk
 endef
 TARGET_DEVICES += MTK-LYNX-RFB1
@@ -20,7 +20,7 @@ define Device/BPI-R64
   DEVICE_TITLE := Banana Pi R64
   DEVICE_DTS := mt7622-bananapi-bpi-r64
   DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb3 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb3 \
 			kmod-ata-core kmod-ata-ahci-mtk
 endef
 TARGET_DEVICES += BPI-R64
diff --git a/target/linux/ramips/image/rt288x.mk b/target/linux/ramips/image/rt288x.mk
index 79bb054d98..460df28538 100644
--- a/target/linux/ramips/image/rt288x.mk
+++ b/target/linux/ramips/image/rt288x.mk
@@ -52,7 +52,7 @@ define Device/belkin_f5d8235-v1
   DEVICE_VENDOR := Belkin
   DEVICE_MODEL := F5D8235
   DEVICE_VARIANT := V1
-  DEVICE_PACKAGES := kmod-switch-rtl8366s kmod-usb-core kmod-usb-ohci \
+  DEVICE_PACKAGES := kmod-switch-rtl8366s kmod-usb-ohci \
     kmod-usb-ohci-pci kmod-usb2 kmod-usb2-pci kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += f5d8235-v1
 endef
diff --git a/target/linux/ramips/image/rt305x.mk b/target/linux/ramips/image/rt305x.mk
index 0124a21f1f..fac2a689a2 100644
--- a/target/linux/ramips/image/rt305x.mk
+++ b/target/linux/ramips/image/rt305x.mk
@@ -27,7 +27,7 @@ define Device/7links_px-4885-4m
   DEVICE_VENDOR := 7Links
   DEVICE_MODEL := PX-4885
   DEVICE_VARIANT := 4M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb2 kmod-usb-ohci \
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb2 kmod-usb-ohci \
 	kmod-usb-ledtrig-usbport kmod-leds-gpio
   SUPPORTED_DEVICES += px-4885-4M
 endef
@@ -39,7 +39,7 @@ define Device/7links_px-4885-8m
   DEVICE_VENDOR := 7Links
   DEVICE_MODEL := PX-4885
   DEVICE_VARIANT := 8M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb2 kmod-usb-ohci \
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb2 kmod-usb-ohci \
 	kmod-usb-ledtrig-usbport kmod-leds-gpio
   SUPPORTED_DEVICES += px-4885-8M
 endef
@@ -110,7 +110,7 @@ define Device/allnet_all5002
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := Allnet
   DEVICE_MODEL := ALL5002
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport \
           kmod-i2c-core kmod-i2c-gpio kmod-hwmon-lm92 kmod-gpio-pcf857x
   SUPPORTED_DEVICES += all5002
 endef
@@ -121,7 +121,7 @@ define Device/allnet_all5003
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := Allnet
   DEVICE_MODEL := ALL5003
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport \
           kmod-i2c-core kmod-i2c-gpio kmod-hwmon-lm92 kmod-gpio-pcf857x
   SUPPORTED_DEVICES += all5003
 endef
@@ -133,7 +133,7 @@ define Device/alphanetworks_asl26555-16m
   DEVICE_VENDOR := Alpha
   DEVICE_MODEL := ASL26555
   DEVICE_VARIANT := 16M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += asl26555 asl26555-16M
 endef
 TARGET_DEVICES += alphanetworks_asl26555-16m
@@ -143,7 +143,7 @@ define Device/alphanetworks_asl26555-8m
   IMAGE_SIZE := 7744k
   DEVICE_VENDOR := Alpha
   DEVICE_MODEL := ASL26555
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += asl26555 asl26555-8M
 endef
 TARGET_DEVICES += alphanetworks_asl26555-8m
@@ -183,7 +183,7 @@ define Device/asiarf_awm002-evb-4m
   DEVICE_VENDOR := AsiaRF
   DEVICE_MODEL := AWM002-EVB
   DEVICE_VARIANT := 4M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 \
 		kmod-i2c-core kmod-i2c-gpio
   SUPPORTED_DEVICES += awm002-evb-4M
 endef
@@ -195,7 +195,7 @@ define Device/asiarf_awm002-evb-8m
   DEVICE_VENDOR := AsiaRF
   DEVICE_MODEL := AWM002-EVB/AWM003-EVB
   DEVICE_VARIANT := 8M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 \
 		kmod-i2c-core kmod-i2c-gpio
   SUPPORTED_DEVICES += awm002-evb-8M
 endef
@@ -269,7 +269,7 @@ define Device/aztech_hw550-3g
   DEVICE_MODEL := HW550-3G
   DEVICE_ALT0_VENDOR := Allnet
   DEVICE_ALT0_MODEL := ALL0239-3G
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += hw550-3g
 endef
 TARGET_DEVICES += aztech_hw550-3g
@@ -290,7 +290,7 @@ define Device/belkin_f7c027
   IMAGE_SIZE := 7616k
   DEVICE_VENDOR := Belkin
   DEVICE_MODEL := F7C027
-  DEVICE_PACKAGES := -kmod-usb-core -kmod-usb-dwc2 -kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := --kmod-usb-dwc2 -kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += f7c027
 endef
 TARGET_DEVICES += belkin_f7c027
@@ -327,7 +327,7 @@ define Device/dlink_dcs-930
   IMAGE_SIZE := 3776k
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DCS-930
-  DEVICE_PACKAGES := kmod-video-core kmod-video-uvc kmod-sound-core kmod-usb-audio kmod-usb-core kmod-usb-dwc2
+  DEVICE_PACKAGES := kmod-video-core kmod-video-uvc kmod-sound-core kmod-usb-audio kmod-usb-dwc2
   SUPPORTED_DEVICES += dcs-930
 endef
 TARGET_DEVICES += dlink_dcs-930
@@ -338,7 +338,7 @@ define Device/dlink_dcs-930l-b1
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DCS-930L
   DEVICE_VARIANT := B1
-  DEVICE_PACKAGES := kmod-video-core kmod-video-uvc kmod-sound-core kmod-usb-audio kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-video-core kmod-video-uvc kmod-sound-core kmod-usb-audio kmod-usb-ohci kmod-usb2
   SUPPORTED_DEVICES += dcs-930l-b1
 endef
 TARGET_DEVICES += dlink_dcs-930l-b1
@@ -524,7 +524,7 @@ define Device/fon_fonera-20n
 	edimax-header -s RSDK -m NL1T -f 0x50000 -S 0xc0000
   DEVICE_VENDOR := Fon
   DEVICE_MODEL := Fonera 2.0N
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += fonera20n
 endef
 TARGET_DEVICES += fon_fonera-20n
@@ -537,7 +537,7 @@ define Device/hame_mpr-a1
   DEVICE_VENDOR := HAME
   DEVICE_MODEL := MPR
   DEVICE_VARIANT := A1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-ledtrig-netdev
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-ledtrig-netdev
   SUPPORTED_DEVICES += mpr-a1
 endef
 TARGET_DEVICES += hame_mpr-a1
@@ -549,7 +549,7 @@ define Device/hame_mpr-a2
   DEVICE_VENDOR := HAME
   DEVICE_MODEL := MPR
   DEVICE_VARIANT := A2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-ledtrig-netdev
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-ledtrig-netdev
   SUPPORTED_DEVICES += mpr-a2
 endef
 TARGET_DEVICES += hame_mpr-a2
@@ -560,7 +560,7 @@ define Device/hauppauge_broadway
   UIMAGE_NAME:= Broadway Kernel Image
   DEVICE_VENDOR := Hauppauge
   DEVICE_MODEL := Broadway
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += broadway
 endef
 TARGET_DEVICES += hauppauge_broadway
@@ -582,7 +582,7 @@ define Device/hootoo_ht-tm02
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := HooToo
   DEVICE_MODEL := HT-TM02
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += ht-tm02
 endef
 TARGET_DEVICES += hootoo_ht-tm02
@@ -613,7 +613,7 @@ define Device/intenso_memory2move
   DEVICE_VENDOR := Intenso
   DEVICE_MODEL := Memory 2 Move
   DEVICE_PACKAGES := kmod-ledtrig-netdev kmod-ledtrig-timer \
-		kmod-usb-core kmod-usb2 kmod-usb-storage kmod-scsi-core \
+		kmod-usb2 kmod-usb-storage kmod-scsi-core \
 		kmod-fs-ext4 kmod-fs-vfat block-mount
   SUPPORTED_DEVICES += m2m
 endef
@@ -729,7 +729,7 @@ define Device/nixcore_x1-16m
   DEVICE_VENDOR := Nixcore
   DEVICE_MODEL := X1
   DEVICE_VARIANT := 16M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-i2c-core kmod-i2c-ralink kmod-spi-dev
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-i2c-core kmod-i2c-ralink kmod-spi-dev
   SUPPORTED_DEVICES += nixcore-x1 nixcore-x1-16M
 endef
 TARGET_DEVICES += nixcore_x1-16m
@@ -740,7 +740,7 @@ define Device/nixcore_x1-8m
   DEVICE_VENDOR := Nixcore
   DEVICE_MODEL := X1
   DEVICE_VARIANT := 8M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-i2c-core kmod-i2c-ralink kmod-spi-dev
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-i2c-core kmod-i2c-ralink kmod-spi-dev
   SUPPORTED_DEVICES += nixcore-x1 nixcore-x1-8M
 endef
 TARGET_DEVICES += nixcore_x1-8m
@@ -750,7 +750,7 @@ define Device/olimex_rt5350f-olinuxino
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := OLIMEX
   DEVICE_MODEL := RT5350F-OLinuXino
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 \
 		kmod-i2c-core kmod-i2c-ralink \
 		kmod-spi-dev
   SUPPORTED_DEVICES += rt5350f-olinuxino
@@ -762,7 +762,7 @@ define Device/olimex_rt5350f-olinuxino-evb
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := OLIMEX
   DEVICE_MODEL := RT5350F-OLinuXino-EVB
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 \
 		kmod-i2c-core kmod-i2c-ralink \
 		kmod-spi-dev
   SUPPORTED_DEVICES += rt5350f-olinuxino-evb
@@ -846,7 +846,7 @@ define Device/poray_m3
 	$$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | poray-header -B M3 -F 4M
   DEVICE_VENDOR := Poray
   DEVICE_MODEL := M3
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ledtrig-netdev \
+  DEVICE_PACKAGES := kmod-usb2 kmod-ledtrig-netdev \
 	kmod-ledtrig-timer
   SUPPORTED_DEVICES += m3
 endef
@@ -861,7 +861,7 @@ define Device/poray_m4-4m
   DEVICE_VENDOR := Poray
   DEVICE_MODEL := M4
   DEVICE_VARIANT := 4M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ledtrig-netdev \
+  DEVICE_PACKAGES := kmod-usb2 kmod-ledtrig-netdev \
 	kmod-ledtrig-timer
   SUPPORTED_DEVICES += m4-4M
 endef
@@ -876,7 +876,7 @@ define Device/poray_m4-8m
   DEVICE_VENDOR := Poray
   DEVICE_MODEL := M4
   DEVICE_VARIANT := 8M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ledtrig-netdev kmod-ledtrig-timer
+  DEVICE_PACKAGES := kmod-usb2 kmod-ledtrig-netdev kmod-ledtrig-timer
   SUPPORTED_DEVICES += m4-8M
 endef
 TARGET_DEVICES += poray_m4-8m
@@ -889,7 +889,7 @@ define Device/poray_x5
 	$$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | poray-header -B X5 -F 8M
   DEVICE_VENDOR := Poray
   DEVICE_MODEL := X5/X6
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ledtrig-netdev kmod-ledtrig-timer
+  DEVICE_PACKAGES := kmod-usb2 kmod-ledtrig-netdev kmod-ledtrig-timer
   SUPPORTED_DEVICES += x5
 endef
 TARGET_DEVICES += poray_x5
@@ -902,7 +902,7 @@ define Device/poray_x8
 	$$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | poray-header -B X8 -F 8M
   DEVICE_VENDOR := Poray
   DEVICE_MODEL := X8
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ledtrig-netdev kmod-ledtrig-timer
+  DEVICE_PACKAGES := kmod-usb2 kmod-ledtrig-netdev kmod-ledtrig-timer
   SUPPORTED_DEVICES += x8
 endef
 TARGET_DEVICES += poray_x8
@@ -975,7 +975,7 @@ define Device/tenda_3g150b
   UIMAGE_NAME:= Linux Kernel Image
   DEVICE_VENDOR := Tenda
   DEVICE_MODEL := 3G150B
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += 3g150b
 endef
 TARGET_DEVICES += tenda_3g150b
@@ -986,7 +986,7 @@ define Device/tenda_3g300m
   UIMAGE_NAME := 3G150M_SPI Kernel Image
   DEVICE_VENDOR := Tenda
   DEVICE_MODEL := 3G300M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += 3g300m
 endef
 TARGET_DEVICES += tenda_3g300m
@@ -1042,7 +1042,7 @@ define Device/unbranded_a5-v11
 	$$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | poray-header -B A5-V11 -F 4M
   DEVICE_VENDOR := 
   DEVICE_MODEL := A5-V11
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
   SUPPORTED_DEVICES += a5-v11
 endef
 TARGET_DEVICES += unbranded_a5-v11
@@ -1083,7 +1083,7 @@ define Device/upvel_ur-326n4g
   IMAGE_SIZE := 3776k
   DEVICE_VENDOR := UPVEL
   DEVICE_MODEL := UR-326N4G
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += ur-326n4g
 endef
 TARGET_DEVICES += upvel_ur-326n4g
@@ -1093,7 +1093,7 @@ define Device/upvel_ur-336un
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := UPVEL
   DEVICE_MODEL := UR-336UN
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += ur-336un
 endef
 TARGET_DEVICES += upvel_ur-336un
@@ -1104,7 +1104,7 @@ define Device/vocore_vocore-16m
   DEVICE_VENDOR := VoCore
   DEVICE_MODEL := VoCore
   DEVICE_VARIANT := 16M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 \
 		kmod-i2c-core kmod-i2c-ralink \
 		kmod-spi-dev
   SUPPORTED_DEVICES += vocore vocore-16M
@@ -1117,7 +1117,7 @@ define Device/vocore_vocore-8m
   DEVICE_VENDOR := VoCore
   DEVICE_MODEL := VoCore
   DEVICE_VARIANT := 8M
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 \
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 \
 		kmod-i2c-core kmod-i2c-ralink \
 		kmod-spi-dev
   SUPPORTED_DEVICES += vocore vocore-8M
@@ -1130,7 +1130,7 @@ define Device/wansview_ncs601w
   DEVICE_VENDOR := Wansview
   DEVICE_MODEL := NCS601W
   DEVICE_PACKAGES := kmod-video-core kmod-video-uvc \
-		kmod-usb-core kmod-usb-ohci
+		kmod-usb-ohci
   SUPPORTED_DEVICES += ncs601w
 endef
 TARGET_DEVICES += wansview_ncs601w
@@ -1149,7 +1149,7 @@ define Device/zorlik_zl5900v2
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := Zorlik
   DEVICE_MODEL := ZL5900V2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-ledtrig-netdev
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-ledtrig-netdev
 endef
 TARGET_DEVICES += zorlik_zl5900v2
 
@@ -1159,7 +1159,7 @@ define Device/zyxel_keenetic
   IMAGE_SIZE := 3776k
   DEVICE_VENDOR := ZyXEL
   DEVICE_MODEL := Keenetic
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ehci kmod-usb-ledtrig-usbport
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ehci kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += kn
 endef
 TARGET_DEVICES += zyxel_keenetic
diff --git a/target/linux/ramips/image/rt3883.mk b/target/linux/ramips/image/rt3883.mk
index de888a31b0..b0243bfe81 100644
--- a/target/linux/ramips/image/rt3883.mk
+++ b/target/linux/ramips/image/rt3883.mk
@@ -12,7 +12,7 @@ define Device/asus_rt-n56u
   IMAGE/sysupgrade.bin += | mkrtn56uimg -s
   DEVICE_VENDOR := Asus
   DEVICE_MODEL := RT-N56U
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 swconfig
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 swconfig
   SUPPORTED_DEVICES += rt-n56u
 endef
 TARGET_DEVICES += asus_rt-n56u
@@ -23,7 +23,7 @@ define Device/belkin_f9k1109v1
   DEVICE_VENDOR := Belkin
   DEVICE_MODEL := F9K1109
   DEVICE_VARIANT := Version 1.0
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 swconfig
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 swconfig
   IMAGE_SIZE := 7808k
   KERNEL := kernel-bin | append-dtb | lzma -d16 | uImage lzma
   # Stock firmware checks for this uImage image name during upload.
@@ -40,7 +40,7 @@ define Device/dlink_dir-645
   SEAMA_SIGNATURE := wrgn39_dlob.hans_dir645
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DIR-645
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 swconfig
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 swconfig
   SUPPORTED_DEVICES += dir-645
 endef
 TARGET_DEVICES += dlink_dir-645
@@ -75,7 +75,7 @@ define Device/omnima_hpm
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Omnima
   DEVICE_MODEL := HPM
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2
   SUPPORTED_DEVICES += hpm
 endef
 TARGET_DEVICES += omnima_hpm
@@ -89,7 +89,7 @@ define Device/samsung_cy-swr1100
   SEAMA_SIGNATURE := wrgnd10_samsung_ss815
   DEVICE_VENDOR := Samsung
   DEVICE_MODEL := CY-SWR1100
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 swconfig
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 swconfig
   SUPPORTED_DEVICES += cy-swr1100
 endef
 TARGET_DEVICES += samsung_cy-swr1100
@@ -103,7 +103,7 @@ define Device/sitecom_wlr-6000
 	senao-header -r 0x0202 -p 0x41 -t 2
   DEVICE_VENDOR := Sitecom
   DEVICE_MODEL := WLR-6000
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 swconfig
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 swconfig
   SUPPORTED_DEVICES += wlr-6000
 endef
 TARGET_DEVICES += sitecom_wlr-6000
diff --git a/target/linux/ramips/mt7620/profiles/00-default.mk b/target/linux/ramips/mt7620/profiles/00-default.mk
index 912d28880e..736a628195 100644
--- a/target/linux/ramips/mt7620/profiles/00-default.mk
+++ b/target/linux/ramips/mt7620/profiles/00-default.mk
@@ -7,7 +7,7 @@
 
 define Profile/Default
 	NAME:=Default Profile
-	PACKAGES:= kmod-usb-core kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
+	PACKAGES:= kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
 	PRIORITY:=1
 endef
 
diff --git a/target/linux/ramips/mt7621/profiles/00-default.mk b/target/linux/ramips/mt7621/profiles/00-default.mk
index bf293d3163..dbfd26ed79 100644
--- a/target/linux/ramips/mt7621/profiles/00-default.mk
+++ b/target/linux/ramips/mt7621/profiles/00-default.mk
@@ -9,7 +9,7 @@ define Profile/Default
 	NAME:=Default Profile
 	PRIORITY:=1
 	PACKAGES:=\
-		kmod-usb-core kmod-usb3 \
+		kmod-usb3 \
 		kmod-usb-ledtrig-usbport
 endef
 
diff --git a/target/linux/ramips/mt76x8/profiles/00-default.mk b/target/linux/ramips/mt76x8/profiles/00-default.mk
index 162ac14315..83886eee53 100644
--- a/target/linux/ramips/mt76x8/profiles/00-default.mk
+++ b/target/linux/ramips/mt76x8/profiles/00-default.mk
@@ -8,7 +8,7 @@
 define Profile/Default
 	NAME:=Default Profile
 	PRIORITY:=1
-	PACKAGES:= kmod-usb-core kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
+	PACKAGES:= kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
 endef
 
 define Profile/Default/Description
diff --git a/target/linux/ramips/rt305x/profiles/00-default.mk b/target/linux/ramips/rt305x/profiles/00-default.mk
index a8ca71610c..cc777a8fe4 100644
--- a/target/linux/ramips/rt305x/profiles/00-default.mk
+++ b/target/linux/ramips/rt305x/profiles/00-default.mk
@@ -9,7 +9,7 @@ define Profile/Default
 	NAME:=Default Profile
 	PRIORITY:=1
 	PACKAGES:=\
-		kmod-usb-core kmod-usb-dwc2 \
+		kmod-usb-dwc2 \
 		kmod-usb-ledtrig-usbport
 endef
 
diff --git a/target/linux/ramips/rt3883/profiles/00-default.mk b/target/linux/ramips/rt3883/profiles/00-default.mk
index c99029d7b1..b032fb0132 100644
--- a/target/linux/ramips/rt3883/profiles/00-default.mk
+++ b/target/linux/ramips/rt3883/profiles/00-default.mk
@@ -8,7 +8,7 @@
 define Profile/Default
 	NAME:=Default Profile
 	PRIORITY:=1
-	PACKAGES:=kmod-usb-core kmod-usb-ohci kmod-usb2 swconfig
+	PACKAGES:=kmod-usb-ohci kmod-usb2 swconfig
 endef
 
 define Profile/Default/Description
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
