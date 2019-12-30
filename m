Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0154012D513
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 00:29:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2etDuNp84uZRZtll20jF0pLLRSdOscgiSJb3kLBMud4=; b=oTJek4OYlJaYjC7E9DICSdEeN6
	b0LMuAMBrgDY9/3da5BLxtCtqXsrOPIjJ57iDkkwpV5t2bCpCyDBjxB+PnAbBBIMcax0umEHmKFwZ
	HqBMoqIIzMD3ye7eIQeQEYBlfIrZZ3Q0nuz9kYdKWKgMTwze9yoLs3QDvRWoYSBXGWaKyTrZf0typ
	hv9gT9dOFG4ZZJuTpcpM2qqRZpMRle06YLBCeEd2CvJJ9RjBjE0W0NsCBgFA3A89cYa6Ay0vhxuJo
	sacDA5oKWzf+CNM4kOOwrrncTyXLY+G/nW8JUHN9Rkmkd6DpXmaU5i1rhqVnY1dYkjL2/oSUpBNSp
	xDDnQl1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im4TQ-0001DG-1J; Mon, 30 Dec 2019 23:29:20 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im4Sg-0000Tu-SK
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 23:28:40 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MmCyE-1jTxvy2FEG-00iFtU for <openwrt-devel@lists.openwrt.org>; Tue, 31
 Dec 2019 00:28:30 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 00:27:45 +0100
Message-Id: <20191230232747.5357-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191230232747.5357-1-freifunk@adrianschmutzler.de>
References: <20191230232747.5357-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:q7TlKPGFe4t4vuqAgsvWrg5xd5yKM62WOMgJ6GaaiGFp8W4imvg
 nPOnMbfnVhmDsYivO0HkpRJtPfoxh0Yu3yTOIwpmdhQa56+tyoYLAmePL6VmwI24CSQYl6G
 8YD/5tKzOvFdUmy7t4rlvWG2mTnow4Ui3PTeAQCE9DFLNqhsWPfJ1SAYcagA1amo5TCuf20
 BDb0yr/S60/cxhBPuzvqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:i8Qu+chcG9o=:WJJ14BGTWVY6TRJhbM1UWX
 7d0hwZMu45QYNlvn8Gh7AIaWsB4DDd9jVGnSn165GYQNVnYJN361Tthj074AU14e4Q4aaSYlW
 vHBoBcnHOxJb+3aia17zppb6E1ICPzH/L+OnQ6NhAsprrEOOYmdoDTbljWjbaueRFbqiViv7L
 ETSzK+SHZm6LNefFQl4WArE1cVlFhoDRjMji2Q8HGd5psb4Iu49/xziribLSialtf29TcS8q4
 x4gGR6XcvvjCrwuI0lVOCUrFJnOEh/AgQ7u5JcbUVYmVD1MNV02D2oFnpvGWICnWWLVUdhNLB
 XcI7VwU1H17IH7c+ir4p/D0tw1wX3iSt5Wul7+7nqRB5brDkrzIfHtaubhjz4K7Z1W1CQh0N4
 zofNusZyGT/2otN52jQ8T/NLTG4IkZmoORDHdDWyb1XyzZ5YmWMt2OjzeUhiDYiFmeSgtw9J/
 UF/ft3gGDAt4gcLtQ+F4fNC9Xl1J5YcCfiBpYizCZO4OhenuBhtXiiMoekhAAtBbM1HhUfPfe
 e/1SPb6v1PSjL1dP7Pai7i9tK7TTs9oEMMTJRQrix9S3Qe1J48RIeEYqesb3Ep1t6nq5Sp9sp
 kzA1ZQt0dWRDDghDM8nn7josThZqw1j5T9t/pvsfxRty3aXxvfr2ubkgUYXJ+LTWOgVW8NH49
 spg8b9Lnr9G2bFWqpllsCbYVmZ+tULLihWDYtd7XpmViyeBOmWG8dTeCy6Onlz2pQiicFgIUi
 SYfBHe7JrZbZAL/atIlD0X8Q19EmtGNa/A8TvUsb68UCYgPhfCcJwHwM0w47TcOHxa7blUojb
 CYzq2E4UUbfP3HB49Z3/BhjANHFFBMA9fHjLXt3z2Z6DWFkrQzA0zk2ZffjLoNm1gmMaH3r4W
 F06ytCOab6mLnIgfNZATJo2PLlnE3aCiMjd+s9+cs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_152835_365913_92A2F95B 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 2/4] brcm63xx: remove unneeded line break
 for DEVICE_PACKAGES
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

In brcm63xx image Makefile DEVICE_PACKAGE definitions are split
into multiple lines with no apparent need.

Merge them into one line to increase readability and maintainability.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/brcm63xx/image/bcm63xx.mk | 232 ++++++++-----------------
 1 file changed, 76 insertions(+), 156 deletions(-)

diff --git a/target/linux/brcm63xx/image/bcm63xx.mk b/target/linux/brcm63xx/image/bcm63xx.mk
index aa68befc13..8c58c25617 100644
--- a/target/linux/brcm63xx/image/bcm63xx.mk
+++ b/target/linux/brcm63xx/image/bcm63xx.mk
@@ -187,8 +187,7 @@ define Device/actiontec_r1000h
   CFE_CHIP_ID := 6368
   FLASH_MB := 32
   IMAGE_OFFSET := 0x20000
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES) $(BRCMWL_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES) $(BRCMWL_PACKAGES)
 endef
 TARGET_DEVICES += actiontec_r1000h
 
@@ -200,8 +199,7 @@ define Device/adb_a4001n
   CFE_BOARD_ID := 96328dg2x2
   CFE_CHIP_ID := 6328
   FLASH_MB := 8
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES) $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES) $(B43_PACKAGES)
 endef
 TARGET_DEVICES += adb_a4001n
 
@@ -213,8 +211,7 @@ define Device/adb_a4001n1
   CFE_BOARD_ID := 963281T_TEF
   CFE_CHIP_ID := 6328
   FLASH_MB := 16
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES) $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES) $(B43_PACKAGES)
 endef
 TARGET_DEVICES += adb_a4001n1
 
@@ -225,8 +222,7 @@ define Device/adb_av4202n
   IMAGE_OFFSET := 0x20000
   CFE_BOARD_ID := 96368_Swiss_S1
   CFE_CHIP_ID := 6368
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES) $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES) $(B43_PACKAGES)
 endef
 TARGET_DEVICES += adb_av4202n
 
@@ -238,8 +234,7 @@ define Device/alcatel_rg100a
   CFE_BOARD_ID := 96358VW2
   CFE_CHIP_ID := 6358
   BLOCK_SIZE := 0x20000
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES) $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES) $(B43_PACKAGES)
 endef
 TARGET_DEVICES += alcatel_rg100a
 
@@ -250,8 +245,7 @@ define Device/asmax_ar-1004g
   DEVICE_MODEL := AR 1004g
   CFE_BOARD_ID := 96348GW-10
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += asmax_ar-1004g
@@ -264,8 +258,7 @@ define Device/belkin_f5d7633
   CFE_BOARD_ID := 96348GW-10
   CFE_CHIP_ID := 6348
   BLOCK_SIZE := 0x20000
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += belkin_f5d7633
@@ -278,9 +271,7 @@ define Device/brcm_bcm96318ref
   IMAGES :=
   CFE_BOARD_ID := 96318REF
   CFE_CHIP_ID := 6318
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES) \
-    kmod-bcm63xx-udc
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES) kmod-bcm63xx-udc
 endef
 TARGET_DEVICES += brcm_bcm96318ref
 
@@ -291,9 +282,7 @@ define Device/brcm_bcm96318ref-p300
   IMAGES :=
   CFE_BOARD_ID := 96318REF_P300
   CFE_CHIP_ID := 6318
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES) \
-    kmod-bcm63xx-udc
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES) kmod-bcm63xx-udc
 endef
 TARGET_DEVICES += brcm_bcm96318ref-p300
 
@@ -304,9 +293,7 @@ define Device/brcm_bcm963268bu-p300
   IMAGES :=
   CFE_BOARD_ID := 963268BU_P300
   CFE_CHIP_ID := 63268
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES) \
-    kmod-bcm63xx-udc
+  DEVICE_PACKAGES := $(USB2_PACKAGES) kmod-bcm63xx-udc
 endef
 TARGET_DEVICES += brcm_bcm963268bu-p300
 
@@ -317,9 +304,7 @@ define Device/brcm_bcm963269bhr
   IMAGES :=
   CFE_BOARD_ID := 963269BHR
   CFE_CHIP_ID := 63268
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES) \
-    kmod-bcm63xx-udc
+  DEVICE_PACKAGES := $(USB2_PACKAGES) kmod-bcm63xx-udc
 endef
 TARGET_DEVICES += brcm_bcm963269bhr
 
@@ -332,8 +317,7 @@ define Device/bt_home-hub-2-a
   CFE_BOARD_ID := HOMEHUB2A
   CFE_CHIP_ID := 6358
   BLOCK_SIZE := 0x20000
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += bt_home-hub-2-a
 
@@ -344,8 +328,7 @@ define Device/bt_voyager-2110
   CFE_BOARD_ID := V2110
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --layoutver 5
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += bt_voyager-2110
@@ -357,8 +340,7 @@ define Device/bt_voyager-2500v-bb
   CFE_BOARD_ID := V2500V_BB
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --layoutver 5
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += bt_voyager-2500v-bb
@@ -372,8 +354,7 @@ define Device/comtrend_ar-5315u
   CFE_BOARD_ID := 96318A-1441N1
   CFE_CHIP_ID := 6318
   FLASH_MB := 16
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += comtrend_ar-5315u
 
@@ -385,8 +366,7 @@ define Device/comtrend_ar-5381u
   CFE_BOARD_ID := 96328A-1241N
   CFE_CHIP_ID := 6328
   FLASH_MB := 16
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += comtrend_ar-5381u
 
@@ -398,8 +378,7 @@ define Device/comtrend_ar-5387un
   CFE_BOARD_ID := 96328A-1441N1
   CFE_CHIP_ID := 6328
   FLASH_MB := 16
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += comtrend_ar-5387un
 
@@ -411,8 +390,7 @@ define Device/comtrend_ct-536plus
   DEVICE_ALT0_MODEL := CT-5621
   CFE_BOARD_ID := 96348GW-11
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += comtrend_ct-536plus
@@ -423,8 +401,7 @@ define Device/comtrend_ct-5365
   DEVICE_MODEL := CT-5365
   CFE_BOARD_ID := 96348A-122
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += comtrend_ct-5365
@@ -435,8 +412,7 @@ define Device/comtrend_ct-6373
   DEVICE_MODEL := CT-6373
   CFE_BOARD_ID := CT6373-1
   CFE_CHIP_ID := 6358
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += comtrend_ct-6373
 
@@ -449,8 +425,7 @@ define Device/comtrend_vr-3025u
   CFE_CHIP_ID := 6368
   BLOCK_SIZE := 0x20000
   FLASH_MB := 32
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += comtrend_vr-3025u
 
@@ -461,8 +436,7 @@ define Device/comtrend_vr-3025un
   CFE_BOARD_ID := 96368M-1341N
   CFE_CHIP_ID := 6368
   FLASH_MB := 8
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += comtrend_vr-3025un
 
@@ -473,8 +447,7 @@ define Device/comtrend_vr-3026e
   CFE_BOARD_ID := 96368MT-1341N1
   CFE_CHIP_ID := 6368
   FLASH_MB := 8
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
 endef
 TARGET_DEVICES += comtrend_vr-3026e
 
@@ -485,8 +458,7 @@ define Device/comtrend_wap-5813n
   CFE_BOARD_ID := 96369R-1231N
   CFE_CHIP_ID := 6368
   FLASH_MB := 8
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += comtrend_wap-5813n
 
@@ -498,8 +470,7 @@ define Device/d-link_dsl-2640b-b
   DEVICE_VARIANT := B2
   CFE_BOARD_ID := D-4P-W
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += d-link_dsl-2640b-b
@@ -513,8 +484,7 @@ define Device/d-link_dsl-2640u
   DEVICE_ALT0_MODEL := DSL-2640U/BRU/C
   CFE_BOARD_ID := 96338W2_E7T
   CFE_CHIP_ID := 6338
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += d-link_dsl-2640u
@@ -525,8 +495,7 @@ define Device/d-link_dsl-2650u
   DEVICE_MODEL := DSL-2650U
   CFE_BOARD_ID := 96358VW2
   CFE_CHIP_ID := 6358
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += d-link_dsl-2650u
 
@@ -540,8 +509,7 @@ define Device/d-link_dsl-274xb-c2
   DEVICE_ALT0_VARIANT := C2
   CFE_BOARD_ID := 96358GW
   CFE_CHIP_ID := 6358
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
 endef
 TARGET_DEVICES += d-link_dsl-274xb-c2
 
@@ -556,8 +524,7 @@ define Device/d-link_dsl-274xb-c3
   DEVICE_DTS := bcm6358_d-link_dsl-274xb-c2
   CFE_BOARD_ID := AW4139
   CFE_CHIP_ID := 6358
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
 endef
 TARGET_DEVICES += d-link_dsl-274xb-c3
 
@@ -574,8 +541,7 @@ define Device/d-link_dsl-274xb-f1
   IMAGES := cfe-EU.bin cfe-AU.bin
   IMAGE/cfe-AU.bin := cfe-bin --signature2 "4.06.01.AUF1" --pad 4
   IMAGE/cfe-EU.bin := cfe-bin --signature2 "4.06.01.EUF1" --pad 4
-  DEVICE_PACKAGES := \
-    $(ATH9K_PACKAGES)
+  DEVICE_PACKAGES := $(ATH9K_PACKAGES)
 endef
 TARGET_DEVICES += d-link_dsl-274xb-f1
 
@@ -590,8 +556,7 @@ define Device/d-link_dsl-275xb-d1
   CFE_BOARD_ID := AW5200B
   CFE_CHIP_ID := 6318
   FLASH_MB := 8
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += d-link_dsl-275xb-d1
 
@@ -601,8 +566,7 @@ define Device/d-link_dva-g3810bn-tl
   DEVICE_MODEL := DVA-G3810BN/TL
   CFE_BOARD_ID := 96358VW
   CFE_CHIP_ID := 6358
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += d-link_dva-g3810bn-tl
 
@@ -614,8 +578,7 @@ define Device/davolink_dv-201amr
   IMAGES := cfe-old.bin
   CFE_BOARD_ID := DV201AMR
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += davolink_dv-201amr
@@ -631,8 +594,7 @@ define Device/dynalink_rta770bw
   CFE_BOARD_ID := RTA770BW
   CFE_CHIP_ID := 6345
   CFE_EXTRAS += --layoutver 5
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += dynalink_rta770bw
@@ -645,8 +607,7 @@ define Device/dynalink_rta770w
   CFE_BOARD_ID := RTA770W
   CFE_CHIP_ID := 6345
   CFE_EXTRAS += --layoutver 5
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += dynalink_rta770w
@@ -658,8 +619,7 @@ define Device/dynalink_rta1025w
   CFE_BOARD_ID := RTA1025W_16
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --layoutver 5
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += dynalink_rta1025w
@@ -683,8 +643,7 @@ define Device/huawei_echolife-hg520v
   CFE_BOARD_ID := HW6358GW_B
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG520v"
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
 endef
 TARGET_DEVICES += huawei_echolife-hg520v
 
@@ -696,8 +655,7 @@ define Device/huawei_echolife-hg553
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG553" --tag-version 7
   BLOCK_SIZE := 0x20000
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += huawei_echolife-hg553
 
@@ -711,8 +669,7 @@ define Device/huawei_echolife-hg556a-a
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG556a" --tag-version 8
   IMAGE_OFFSET := 0x20000
-  DEVICE_PACKAGES := \
-    $(ATH9K_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(ATH9K_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += huawei_echolife-hg556a-a
 
@@ -726,8 +683,7 @@ define Device/huawei_echolife-hg556a-b
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG556a" --tag-version 8
   BLOCK_SIZE := 0x20000
-  DEVICE_PACKAGES := \
-    $(ATH9K_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(ATH9K_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += huawei_echolife-hg556a-b
 
@@ -741,8 +697,7 @@ define Device/huawei_echolife-hg556a-c
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG556a" --tag-version 8
   BLOCK_SIZE := 0x20000
-  DEVICE_PACKAGES := \
-    $(RT28_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(RT28_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += huawei_echolife-hg556a-c
 
@@ -756,8 +711,7 @@ define Device/huawei_echolife-hg622
   CFE_EXTRAS += --tag-version 7
   BLOCK_SIZE := 0x20000
   FLASH_MB := 16
-  DEVICE_PACKAGES := \
-    $(RT28_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(RT28_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += huawei_echolife-hg622
 
@@ -770,8 +724,7 @@ define Device/huawei_echolife-hg655b
   CFE_EXTRAS += --tag-version 7
   IMAGE_OFFSET := 0x20000
   FLASH_MB := 8
-  DEVICE_PACKAGES := \
-    $(RT28_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(RT28_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += huawei_echolife-hg655b
 
@@ -783,8 +736,7 @@ define Device/inteno_vg50
   IMAGES :=
   CFE_BOARD_ID := VW6339GU
   CFE_CHIP_ID := 63268
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += inteno_vg50
 
@@ -794,8 +746,7 @@ define Device/inventel_livebox-1
   DEVICE_VENDOR := Inventel
   DEVICE_MODEL := Livebox 1
   SOC := bcm6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB1_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB1_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += inventel_livebox-1
@@ -820,8 +771,7 @@ define Device/netgear_dg834gt-pn
   DEVICE_ALT0_MODEL := DG834PN
   CFE_BOARD_ID := 96348GW-10
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(ATH5K_PACKAGES)
+  DEVICE_PACKAGES := $(ATH5K_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += netgear_dg834gt-pn
@@ -834,8 +784,7 @@ define Device/netgear_dg834g-v4
   IMAGES :=
   CFE_BOARD_ID := 96348W3
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += netgear_dg834g-v4
@@ -849,8 +798,7 @@ define Device/netgear_dgnd3700-v1
   BLOCK_SIZE := 0x20000
   NETGEAR_BOARD_ID := U12L144T01_NETGEAR_NEWLED
   NETGEAR_REGION := 1
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += netgear_dgnd3700-v1
 
@@ -863,8 +811,7 @@ define Device/netgear_dgnd3800b
   BLOCK_SIZE := 0x20000
   NETGEAR_BOARD_ID := U12L144T11_NETGEAR_NEWLED
   NETGEAR_REGION := 1
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += netgear_dgnd3800b
 
@@ -876,8 +823,7 @@ define Device/netgear_evg2000
   BLOCK_SIZE := 0x20000
   NETGEAR_BOARD_ID := U12H154T90_NETGEAR
   NETGEAR_REGION := 1
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += netgear_evg2000
 
@@ -891,8 +837,7 @@ define Device/nucom_r5010un-v2
   CFE_BOARD_ID := 96328ang
   CFE_CHIP_ID := 6328
   FLASH_MB := 16
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
 endef
 TARGET_DEVICES += nucom_r5010un-v2
 
@@ -906,8 +851,7 @@ define Device/observa_vh4032n
   CFE_CHIP_ID := 6368
   BLOCK_SIZE := 0x20000
   FLASH_MB := 32
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += observa_vh4032n
 
@@ -919,8 +863,7 @@ define Device/pirelli_a226g
   CFE_BOARD_ID := DWV-S0
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature2 IMAGE --tag-version 8
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += pirelli_a226g
 
@@ -931,8 +874,7 @@ define Device/pirelli_a226m
   CFE_BOARD_ID := DWV-S0
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature2 IMAGE --tag-version 8
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += pirelli_a226m
 
@@ -944,8 +886,7 @@ define Device/pirelli_a226m-fwb
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature2 IMAGE --tag-version 8
   BLOCK_SIZE := 0x20000
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += pirelli_a226m-fwb
 
@@ -957,8 +898,7 @@ define Device/pirelli_agpf-s0
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature2 IMAGE --tag-version 8
   BLOCK_SIZE := 0x20000
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += pirelli_agpf-s0
 
@@ -969,8 +909,7 @@ define Device/sagem_fast-2404
   DEVICE_MODEL := F@st 2404
   CFE_BOARD_ID := F@ST2404
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += sagem_fast-2404
@@ -981,8 +920,7 @@ define Device/sagem_fast-2504n
   DEVICE_MODEL := F@st 2504N
   CFE_BOARD_ID := F@ST2504n
   CFE_CHIP_ID := 6362
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
 endef
 TARGET_DEVICES += sagem_fast-2504n
 
@@ -992,8 +930,7 @@ define Device/sagem_fast-2604
   DEVICE_MODEL := F@st 2604
   CFE_BOARD_ID := F@ST2604
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += sagem_fast-2604
@@ -1005,8 +942,7 @@ define Device/sagem_fast-2704n
   CFE_BOARD_ID := F@ST2704N
   CFE_CHIP_ID := 6318
   FLASH_MB := 8
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += sagem_fast-2704n
 
@@ -1018,8 +954,7 @@ define Device/sagem_fast-2704-v2
   CFE_BOARD_ID := F@ST2704V2
   CFE_CHIP_ID := 6328
   FLASH_MB := 8
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += sagem_fast-2704-v2
 
@@ -1031,8 +966,7 @@ define Device/sercomm_ad1018-nor
   DEVICE_VARIANT := SPI flash mod
   CFE_BOARD_ID := 96328avngr
   CFE_CHIP_ID := 6328
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += sercomm_ad1018-nor
 
@@ -1045,8 +979,7 @@ define Device/sfr_neufbox-4-sercomm-r0
   CFE_BOARD_ID := 96358VW
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "$(VERSION_DIST)-$(firstword $(subst -,$(space),$(REVISION)))"
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += sfr_neufbox-4-sercomm-r0
 
@@ -1058,8 +991,7 @@ define Device/sfr_neufbox-4-foxconn-r1
   CFE_BOARD_ID := 96358VW
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "$(VERSION_DIST)-$(firstword $(subst -,$(space),$(REVISION)))"
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += sfr_neufbox-4-foxconn-r1
 
@@ -1070,8 +1002,7 @@ define Device/sfr_neufbox-6-sercomm-r0
   CFE_BOARD_ID := NB6-SER-r0
   CFE_CHIP_ID := 6362
   CFE_EXTRAS += --rsa-signature "$(VERSION_DIST)-$(firstword $(subst -,$(space),$(REVISION)))"
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += sfr_neufbox-6-sercomm-r0
 
@@ -1082,8 +1013,7 @@ define Device/sky_sr102
   CFE_BOARD_ID := BSKYB_63168
   CFE_CHIP_ID := 63268
   CFE_EXTRAS += --rsa-signature "$(VERSION_DIST)-$(firstword $(subst -,$(space),$(REVISION)))"
-  DEVICE_PACKAGES := \
-    $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += sky_sr102
 
@@ -1097,8 +1027,7 @@ define Device/t-com_speedport-w-303v
   IMAGE/sysupgrade.bin := cfe-spw303v-bin | spw303v-bin
   CFE_BOARD_ID := 96358-502V
   CFE_CHIP_ID := 6358
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
 endef
 TARGET_DEVICES += t-com_speedport-w-303v
 
@@ -1108,8 +1037,7 @@ define Device/t-com_speedport-w-500v
   DEVICE_MODEL := Speedport W 500V
   CFE_BOARD_ID := 96348GW
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += t-com_speedport-w-500v
@@ -1121,8 +1049,7 @@ define Device/tecom_gw6000
   DEVICE_MODEL := GW6000
   CFE_BOARD_ID := 96348GW
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(BRCMWL_PACKAGES) $(USB1_PACKAGES)
+  DEVICE_PACKAGES := $(BRCMWL_PACKAGES) $(USB1_PACKAGES)
 endef
 TARGET_DEVICES += tecom_gw6000
 
@@ -1133,8 +1060,7 @@ define Device/tecom_gw6200
   CFE_BOARD_ID := 96348GW
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --rsa-signature "$(shell printf '\x99')"
-  DEVICE_PACKAGES := \
-    $(BRCMWL_PACKAGES) $(USB1_PACKAGES)
+  DEVICE_PACKAGES := $(BRCMWL_PACKAGES) $(USB1_PACKAGES)
 endef
 TARGET_DEVICES += tecom_gw6200
 
@@ -1146,8 +1072,7 @@ define Device/telsey_cpva502plus
   CFE_BOARD_ID := CPVA502+
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --signature "Telsey Tlc" --signature2 "99.99.999"
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += telsey_cpva502plus
@@ -1160,8 +1085,7 @@ define Device/telsey_cpva642
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature "Telsey Tlc" --signature2 "99.99.999" --second-image-flag "0"
   FLASH_MB := 8
-  DEVICE_PACKAGES := \
-    $(RT63_PACKAGES) $(USB2_PACKAGES)
+  DEVICE_PACKAGES := $(RT63_PACKAGES) $(USB2_PACKAGES)
 endef
 TARGET_DEVICES += telsey_cpva642
 
@@ -1174,8 +1098,7 @@ define Device/telsey_magic
   IMAGES :=
   CFE_BOARD_ID := MAGIC
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(RT63_PACKAGES)
+  DEVICE_PACKAGES := $(RT63_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += telsey_magic
@@ -1189,8 +1112,7 @@ define Device/tp-link_td-w8900gb
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --rsa-signature "$(shell printf 'PRID\x89\x10\x00\x02')"
   IMAGE_OFFSET := 0x20000
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += tp-link_td-w8900gb
@@ -1202,8 +1124,7 @@ define Device/usrobotics_usr9108
   DEVICE_MODEL := 9108
   CFE_BOARD_ID := 96348GW-A
   CFE_CHIP_ID := 6348
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES) $(USB1_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES) $(USB1_PACKAGES)
   DEFAULT := n
 endef
 TARGET_DEVICES += usrobotics_usr9108
@@ -1219,7 +1140,6 @@ define Device/zyxel_p870hw-51a-v2
   CFE_BOARD_ID := 96368VVW
   CFE_CHIP_ID := 6368
   CFE_EXTRAS += --rsa-signature "ZyXEL" --signature "ZyXEL_0001"
-  DEVICE_PACKAGES := \
-    $(B43_PACKAGES)
+  DEVICE_PACKAGES := $(B43_PACKAGES)
 endef
 TARGET_DEVICES += zyxel_p870hw-51a-v2
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
