Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BB31FA58
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 21:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Date:Sender:Content-Type:
	Subject:List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:
	From:List-Post:List-Id:Message-ID:MIME-Version:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Fd1S9Y1PnRT36UonZIgqBG9jwo/VI/Cn8Uq5AoMcp0k=; b=cwaZxRzEN1m4EvB+9Yx5/XINvR
	roLes+vapRD5iN99qKeCb9rzzWXK/vUlIu8v4Wol7u+nBec0yloyWyoAFQEhxBlO71t+n5lZT7DKT
	uGC8Vnfvu9y/guaeROMs0cJnKwOMTM4X1rx1LsqorVe0f70DuaQu7RAzQvq9Jp7e2zTgdFqRetOxo
	e5owSZNFm8nRPN3tCsTdDOXqqi/XEU2H7QrDScfc9O1necEpuxLiar0zZbExXoJOtUZ9sCwjoyVhs
	l0qgqGhfwKTJr3MwS6ZWYx46H6DInZfEPAleE0jhdrPfMsg0M+izPHvvfSarY+UBK3gGHe9VFOT8Z
	LWw3prLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzIu-0005tj-DE; Wed, 15 May 2019 19:11:04 +0000
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.40448.1557947460.2376.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Jan Hoffmann via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Jan Hoffmann <jan@3e8.eu>
X-Mailman-Version: 2.1.21
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Jan Hoffmann <jan@3e8.eu>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] ramips: add factory image for WNDR3700v5
Content-Type: multipart/mixed; boundary="===============7589857771443424695=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Date: Wed, 15 May 2019 19:11:04 +0000
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7589857771443424695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7589857771443424695==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from srv4.3e8.eu ([2001:67c:12a0:200::2])
	by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzIm-0005tE-Ee
	for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 19:10:59 +0000
Received: from localhost.localdomain (p200300C6CF1098A0852C1B8B6B504594.dip0.t-ipconnect.de [IPv6:2003:c6:cf10:98a0:852c:1b8b:6b50:4594])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by srv4.3e8.eu (Postfix) with ESMTPSA id 475D36002C;
	Wed, 15 May 2019 21:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=3e8.eu;
	s=mail20170724; t=1557947443;
	bh=O8+UBpoORx/Yfl0vLQYB24WpA7/NgUtvzcZheFmSxcM=;
	h=From:To:Cc:Subject:Date:From;
	b=QMzveRS/qINpSD6+E5jkysxeoSw3u4zu53hr+k3oN81herpoJR8H2CvSpWN/J6RZD
	 g6WgrBUI0bSX/F4SPVoPHp9fYtnC0K4hFQ4uZewmss4qZWdoWr9CQ8ytpTE+SMgZ2Q
	 kBtvtwohdmh2ze7hzfVJwHrD8MV2MiHC0ASEEKVtrOIrpQkpGJE7PGSuPbKJ3kwNrF
	 BT7DhcT8m9Da7nYraiTREjeifiV2Tszf7tEUzaFQAejcM5Z4/QARb9JFfo/Jq/QVt4
	 SDSxncWzb9Ursq0tVl6xVQSCGE46GULUcJeJ5+EHtniLuQoLy8ey7eeV2vu+7Ilxeb
	 W2aSPFPELA3FQ==
From: Jan Hoffmann <jan@3e8.eu>
To: openwrt-devel@lists.openwrt.org
Cc: Jan Hoffmann <jan@3e8.eu>
Subject: [PATCH] ramips: add factory image for WNDR3700v5
Date: Wed, 15 May 2019 21:10:21 +0200
Message-Id: <20190515191021.4871-1-jan@3e8.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_121056_930685_0BD63962 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

This uses the existing rules for Sercomm factory images and moves them
to the ramips image Makefile, so they can be used in all subtargets.

The new factory image for WNDR3700v5 can be flashed using nmrpflash.

Signed-off-by: Jan Hoffmann <jan@3e8.eu>
---
 target/linux/ramips/image/Makefile  | 14 ++++++++++++++
 target/linux/ramips/image/mt7621.mk | 11 ++++++++++-
 target/linux/ramips/image/mt76x8.mk | 16 ----------------
 3 files changed, 24 insertions(+), 17 deletions(-)

diff --git a/target/linux/ramips/image/Makefile b/target/linux/ramips/image/Makefile
index 6eef596caf..145dbf4ec5 100644
--- a/target/linux/ramips/image/Makefile
+++ b/target/linux/ramips/image/Makefile
@@ -10,6 +10,7 @@ include $(INCLUDE_DIR)/image.mk
 DEVICE_VARS += DTS IMAGE_SIZE NETGEAR_BOARD_ID NETGEAR_HW_ID
 DEVICE_VARS += BUFFALO_TAG_PLATFORM BUFFALO_TAG_VERSION BUFFALO_TAG_MINOR
 DEVICE_VARS += SEAMA_SIGNATURE SEAMA_MTDBLOCK
+DEVICE_VARS += SERCOMM_HWID SERCOMM_HWVER SERCOMM_SWVER
 
 loadaddr-y := 0x80000000
 loadaddr-$(CONFIG_TARGET_ramips_rt288x) := 0x88000000
@@ -132,6 +133,19 @@ define Build/zyimage
 	$(STAGING_DIR_HOST)/bin/zyimage $(1) $@
 endef
 
+define Build/sercom-seal
+	$(STAGING_DIR_HOST)/bin/mksercommfw \
+		-i $@ \
+		-b $(SERCOMM_HWID) \
+		-r $(SERCOMM_HWVER) \
+		-v $(SERCOMM_SWVER) \
+		$(1)
+endef
+
+define Build/sercom-footer
+	$(call Build/sercom-seal,-f)
+endef
+
 ralink_default_fw_size_4M=3866624
 ralink_default_fw_size_8M=8060928
 ralink_default_fw_size_16M=16121856
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 9e42404f64..671e7f378a 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -531,7 +531,16 @@ TARGET_DEVICES += mqmaker_witi-512m
 
 define Device/wndr3700v5
   DTS := WNDR3700V5
-  IMAGE_SIZE := $(ralink_default_fw_size_16M)
+  BLOCKSIZE := 64k
+  IMAGE_SIZE := 15232k
+  SERCOMM_HWID := AYB
+  SERCOMM_HWVER := A001
+  SERCOMM_SWVER := 0x1054
+  IMAGES += factory.img
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs
+  IMAGE/sysupgrade.bin := $$(IMAGE/default) | append-metadata | check-size $$$$(IMAGE_SIZE)
+  IMAGE/factory.img := pad-extra 320k | $$(IMAGE/default) | pad-to $$$$(BLOCKSIZE) | \
+	sercom-footer | pad-to 128 | zip WNDR3700v5.bin | sercom-seal
   DEVICE_TITLE := Netgear WNDR3700v5
   DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 wpad-basic
 endef
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index ba3354a8a6..0f7d22c942 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -2,22 +2,6 @@
 # MT76x8 Profiles
 #
 
-DEVICE_VARS += SERCOMM_HWID SERCOMM_HWVER SERCOMM_SWVER
-
-define Build/sercom-seal
-	$(STAGING_DIR_HOST)/bin/mksercommfw \
-		-i $@ \
-		-b $(SERCOMM_HWID) \
-		-r $(SERCOMM_HWVER) \
-		-v $(SERCOMM_SWVER) \
-		$(1)
-endef
-
-define Build/sercom-footer
-	$(call Build/sercom-seal,-f)
-endef
-
-
 define Device/tplink
   TPLINK_FLASHLAYOUT :=
   TPLINK_HWID :=
-- 
2.17.1



--===============7589857771443424695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7589857771443424695==--
