Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B435A993E7
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 14:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=db+oHLgJkg0NiigpVrIn1ZiEdbzsZAEhWYyYPoy4hl4=; b=OiA66u1q9dTfCT
	8oJ6P4PXjJVVPqwOxUtSB5FsszlTUYQoI/KLRr9g/Epir5hKinhb3vw2AyD4nIH22sw6RsOnYdzg3
	0/C5Qps/k9jeRaukw5+MnCNiNBmAW/CiR+QJn1dmHqPJucWAqkpxwhzLpiJ4RGy0CKmUMT3JPyXbl
	YVtG0KtzYWgKYxuOf5qUP+r+RwXiAHQ/NCDDhjM/rLqQ9IGh8jvH4/u+28FuyUEH5odgsXWyJTFlG
	eeFZXaGEsskD6jeOotkQDXkkkKhGLDdtNDd7R8/1OnMxN2n5rtaQfyuqgHuH9HkrG2MpMF7SC9nGr
	SVA4J8kJxAd662pLz4aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mJF-00049a-U7; Thu, 22 Aug 2019 12:35:21 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mIl-00036z-Sw
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 12:34:55 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MGQf5-1i2CP71ATN-00GpXz for <openwrt-devel@lists.openwrt.org>; Thu, 22
 Aug 2019 14:34:48 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 14:34:45 +0200
Message-Id: <20190822123445.1926-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:WfZAgngHKjso/Q8ciz7W/kIT7tiL+WjXZ/rLKqW0XEfIWQMZiNU
 aEytw8JxXGyTFwOYERywAsOXhDgX2uxn3evrKuMZ7QiKsfQko2HRiDnn92u6FRXOajaiLkT
 xrqKDVflBjv0RODU7RDbjwgHAtEnemXkgk5tQ8nQPT0+pGGxlbXYIljYSmPyuykG3A0z306
 RNNZlB6Ba6gpLArRlOimg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3lEEXYw824c=:pC5iTxqGOiDnonkjv93Zl8
 j2bQa5T8q1jPNwjitZuRKSU+9krTiWfRnJIUX2VJ3s01rCmZJelc/zcUJ58RiE9lgyXxnkrnV
 HlsveDd8YmAFMmC93BtmqRR3nQ3jJrh9ymUaHt4r4URbroti8WqyXaITU+tBtTjewclVV86Cy
 qyON6f8PdAWhMJpQST8S3eZ3LQmB59SPrnAbG5LOh2LDRZeI4cERPzgkqO4kgj7BeAswKNBbe
 axFE4gvB7TuJ+XOHcVUXmDDPURWBQHJbiow3WHIRJPVtCwxsFy51uCJy4h9N35zzI8e8IzjJr
 mGOq6nXCid4yd2FbMF0KiR2sqsGVrtxKTp9C14bZEsnhucQM9IkJKU9tuanbz79EMDRyaiHoo
 TjpnRiULLW8MMZE4XsVi3sUPfHJXR1nRmyZlcnx23GxyzKI6xiELKLHPC0O0dG/pBxKD2uDTs
 Mbze4D3cKNCNt4+3AQhQ64JYajDa/ff84RHqA9BCcIl2awrpxISlVk+MLXS0VWxIP8l2hNFyk
 tcpxuLZmzSvqzige3mKt8qsOLOkhG6LH4/yG1rM6rVb10WFjzR1UjvcpBX2t1F/i9qLt5iU7j
 31/sLRWFISCq8micchCxfbUe5URfXe8ALcT75w+GqBC1DP53XS9RH5ox6MC01R1fAjkO8XGeZ
 NdYWbWDO65DWjS9NOG8LW4P71dDt7hqcYjK9+oVxhr4F0WnUD9g6/iGPde1XXvqQToltSJTtp
 Hw3BZYWKQDjlNLe5Xdfg7++6Lr5fgX7dqh/kxiYJ4C1BLohnzJEqGMHgW3w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_053452_568570_C0CB1AED 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: sort device definitions in image/*
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

This applies alphabetic sorting to devices in image/* files.

For certain cases, this patch deviates from strict sorting, e.g.
to ensure that v10 comes after v9.

While at it, fix an indent and remove some useless empty lines.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

It would be nice if this was applied fast, as rebasing it won't be
fun.
---
 target/linux/ath79/image/common-buffalo.mk  |  16 +-
 target/linux/ath79/image/common-netgear.mk  |  20 +-
 target/linux/ath79/image/generic-tp-link.mk | 212 ++++++++++----------
 target/linux/ath79/image/generic-ubnt.mk    | 150 +++++++-------
 target/linux/ath79/image/generic.mk         | 205 +++++++++----------
 target/linux/ath79/image/tiny-tp-link.mk    |   1 -
 6 files changed, 301 insertions(+), 303 deletions(-)

diff --git a/target/linux/ath79/image/common-buffalo.mk b/target/linux/ath79/image/common-buffalo.mk
index 8870af691e..d62b7eea94 100644
--- a/target/linux/ath79/image/common-buffalo.mk
+++ b/target/linux/ath79/image/common-buffalo.mk
@@ -1,11 +1,3 @@
-define Build/buffalo-tftp-header
-	( \
-		echo -n -e "# Airstation Public Fmt1" | dd bs=32 count=1 conv=sync; \
-		dd if=$@; \
-	) > $@.new
-  mv $@.new $@
-endef
-
 define Build/buffalo-tag
 	$(eval product=$(word 1,$(1)))
 	$(eval hwver=$(word 2,$(1)))
@@ -18,4 +10,10 @@ define Build/buffalo-tag
 	mv $@.new $@
 endef
 
-
+define Build/buffalo-tftp-header
+	( \
+		echo -n -e "# Airstation Public Fmt1" | dd bs=32 count=1 conv=sync; \
+		dd if=$@; \
+	) > $@.new
+	mv $@.new $@
+endef
diff --git a/target/linux/ath79/image/common-netgear.mk b/target/linux/ath79/image/common-netgear.mk
index c722b82d27..8311222a91 100644
--- a/target/linux/ath79/image/common-netgear.mk
+++ b/target/linux/ath79/image/common-netgear.mk
@@ -1,5 +1,15 @@
 DEVICE_VARS += NETGEAR_KERNEL_MAGIC NETGEAR_BOARD_ID NETGEAR_HW_ID
 
+define Build/netgear-rootfs
+	mkimage \
+		-A mips -O linux -T filesystem -C none \
+		-M $(NETGEAR_KERNEL_MAGIC) \
+		-n '$(VERSION_DIST) filesystem' \
+		-d $(IMAGE_ROOTFS) $@.fs
+	cat $@.fs >> $@
+	rm -rf $@.fs
+endef
+
 define Build/netgear-squashfs
 	rm -rf $@.fs $@.squashfs
 	mkdir -p $@.fs/image
@@ -19,16 +29,6 @@ define Build/netgear-squashfs
 	rm -rf $@.squashfs $@.fs
 endef
 
-define Build/netgear-rootfs
-	mkimage \
-		-A mips -O linux -T filesystem -C none \
-		-M $(NETGEAR_KERNEL_MAGIC) \
-		-n '$(VERSION_DIST) filesystem' \
-		-d $(IMAGE_ROOTFS) $@.fs
-	cat $@.fs >> $@
-	rm -rf $@.fs
-endef
-
 define Build/netgear-uImage
 	$(call Build/uImage,$(1) -M $(NETGEAR_KERNEL_MAGIC))
 endef
diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index c8d31b87e9..d035d0a5db 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -36,6 +36,17 @@ define Device/tplink_archer-c25-v1
 endef
 TARGET_DEVICES += tplink_archer-c25-v1
 
+define Device/tplink_archer-c5-v1
+  $(Device/tplink-16mlzma)
+  ATH_SOC := qca9558
+  DEVICE_MODEL := Archer C5
+  DEVICE_VARIANT := v1
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  TPLINK_HWID := 0xc5000001
+  SUPPORTED_DEVICES += archer-c5
+endef
+TARGET_DEVICES += tplink_archer-c5-v1
+
 define Device/tplink_archer-c58-v1
   $(Device/tplink-safeloader-uimage)
   ATH_SOC := qca9561
@@ -60,6 +71,17 @@ define Device/tplink_archer-c59-v1
 endef
 TARGET_DEVICES += tplink_archer-c59-v1
 
+define Device/tplink_archer-c6-v2
+  $(Device/tplink-safeloader-uimage)
+  ATH_SOC := qca9563
+  IMAGE_SIZE := 7808k
+  DEVICE_MODEL := Archer C6
+  DEVICE_VARIANT := v2
+  TPLINK_BOARD_ID := ARCHER-C6-V2
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+endef
+TARGET_DEVICES += tplink_archer-c6-v2
+
 define Device/tplink_archer-c60-v1
   $(Device/tplink-safeloader-uimage)
   ATH_SOC := qca9561
@@ -84,28 +106,6 @@ define Device/tplink_archer-c60-v2
 endef
 TARGET_DEVICES += tplink_archer-c60-v2
 
-define Device/tplink_archer-c6-v2
-  $(Device/tplink-safeloader-uimage)
-  ATH_SOC := qca9563
-  IMAGE_SIZE := 7808k
-  DEVICE_MODEL := Archer C6
-  DEVICE_VARIANT := v2
-  TPLINK_BOARD_ID := ARCHER-C6-V2
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
-endef
-TARGET_DEVICES += tplink_archer-c6-v2
-
-define Device/tplink_archer-c5-v1
-  $(Device/tplink-16mlzma)
-  ATH_SOC := qca9558
-  DEVICE_MODEL := Archer C5
-  DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
-  TPLINK_HWID := 0xc5000001
-  SUPPORTED_DEVICES += archer-c5
-endef
-TARGET_DEVICES += tplink_archer-c5-v1
-
 define Device/tplink_archer-c7-v1
   $(Device/tplink-8mlzma)
   ATH_SOC := qca9558
@@ -157,6 +157,28 @@ define Device/tplink_archer-c7-v5
 endef
 TARGET_DEVICES += tplink_archer-c7-v5
 
+define Device/tplink_archer-d50-v1
+  ATH_SOC := qca9531
+  DEVICE_VENDOR := TP-Link
+  DEVICE_MODEL := Archer D50
+  DEVICE_VARIANT := v1
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  BOARDNAME := ARCHER-D50-V1
+  IMAGE_SIZE := 7808k
+  TPLINK_HWID := 0xC1200001
+  TPLINK_HWREV := 0x00000046
+  TPLINK_FLASHLAYOUT := 8Mqca
+  TPLINK_HWREVADD := 0x00000000
+  TPLINK_HVERSION := 3
+  KERNEL := kernel-bin | append-dtb | lzma
+  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | \
+        tplink-v2-header -s -V "ver. 1.0"
+  IMAGES := sysupgrade.bin
+  IMAGE/sysupgrade.bin := tplink-v2-image -s -V "ver. 2.0" | \
+        append-metadata | check-size $$$$(IMAGE_SIZE)
+endef
+TARGET_DEVICES += tplink_archer-d50-v1
+
 define Device/tplink_cpe210-v1
   $(Device/tplink-loader-okli)
   ATH_SOC := ar9344
@@ -252,28 +274,6 @@ define Device/tplink_cpe610-v1
 endef
 TARGET_DEVICES += tplink_cpe610-v1
 
-define Device/tplink_archer-d50-v1
-  ATH_SOC := qca9531
-  DEVICE_VENDOR := TP-Link
-  DEVICE_MODEL := Archer D50
-  DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
-  BOARDNAME := ARCHER-D50-V1
-  IMAGE_SIZE := 7808k
-  TPLINK_HWID := 0xC1200001
-  TPLINK_HWREV := 0x00000046
-  TPLINK_FLASHLAYOUT := 8Mqca
-  TPLINK_HWREVADD := 0x00000000
-  TPLINK_HVERSION := 3
-  KERNEL := kernel-bin | append-dtb | lzma
-  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | \
-        tplink-v2-header -s -V "ver. 1.0"
-  IMAGES := sysupgrade.bin
-  IMAGE/sysupgrade.bin := tplink-v2-image -s -V "ver. 2.0" | \
-        append-metadata | check-size $$$$(IMAGE_SIZE)
-endef
-TARGET_DEVICES += tplink_archer-d50-v1
-
 define Device/tplink_re350k-v1
   $(Device/tplink-safeloader)
   ATH_SOC := qca9558
@@ -360,68 +360,6 @@ define Device/tplink_tl-wdr4900-v2
 endef
 TARGET_DEVICES += tplink_tl-wdr4900-v2
 
-define Device/tplink_tl-wr810n-v1
-  $(Device/tplink-8mlzma)
-  ATH_SOC := qca9531
-  DEVICE_MODEL := TL-WR810N
-  DEVICE_VARIANT := v1
-  TPLINK_HWID := 0x8100001
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
-endef
-TARGET_DEVICES += tplink_tl-wr810n-v1
-
-define Device/tplink_tl-wr810n-v2
-  $(Device/tplink-8mlzma)
-  ATH_SOC := qca9533
-  DEVICE_MODEL := TL-WR810N
-  DEVICE_VARIANT := v2
-  TPLINK_HWID := 0x8100002
-endef
-TARGET_DEVICES += tplink_tl-wr810n-v2
-
-define Device/tplink_tl-wr710n-v1
-  $(Device/tplink-8mlzma)
-  ATH_SOC := ar9331
-  DEVICE_MODEL := TL-WR710N
-  DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-chipidea2 kmod-usb-ledtrig-usbport
-  TPLINK_HWID := 0x07100001
-  SUPPORTED_DEVICES += tl-wr710n
-endef
-TARGET_DEVICES += tplink_tl-wr710n-v1
-
-define Device/tplink_tl-wr842n-v1
-  $(Device/tplink-8m)
-  ATH_SOC := ar7241
-  DEVICE_MODEL := TL-WR842N/ND
-  DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
-  TPLINK_HWID := 0x8420001
-endef
-TARGET_DEVICES += tplink_tl-wr842n-v1
-
-define Device/tplink_tl-wr842n-v2
-  $(Device/tplink-8mlzma)
-  ATH_SOC := ar9341
-  DEVICE_MODEL := TL-WR842N/ND
-  DEVICE_VARIANT := v2
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
-  TPLINK_HWID := 0x8420002
-  SUPPORTED_DEVICES += tl-wr842n-v2
-endef
-TARGET_DEVICES += tplink_tl-wr842n-v2
-
-define Device/tplink_tl-wr842n-v3
-  $(Device/tplink-16mlzma)
-  ATH_SOC := qca9533
-  DEVICE_MODEL := TL-WR842N
-  DEVICE_VARIANT := v3
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
-  TPLINK_HWID := 0x8420003
-  SUPPORTED_DEVICES += tl-wr842n-v3
-endef
-TARGET_DEVICES += tplink_tl-wr842n-v3
-
 define Device/tplink_tl-wr1043nd-v1
   $(Device/tplink-8m)
   ATH_SOC := ar9132
@@ -492,3 +430,65 @@ define Device/tplink_tl-wr2543-v1
   SUPPORTED_DEVICES += tl-wr2543-v1
 endef
 TARGET_DEVICES += tplink_tl-wr2543-v1
+
+define Device/tplink_tl-wr710n-v1
+  $(Device/tplink-8mlzma)
+  ATH_SOC := ar9331
+  DEVICE_MODEL := TL-WR710N
+  DEVICE_VARIANT := v1
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb-chipidea2 kmod-usb-ledtrig-usbport
+  TPLINK_HWID := 0x07100001
+  SUPPORTED_DEVICES += tl-wr710n
+endef
+TARGET_DEVICES += tplink_tl-wr710n-v1
+
+define Device/tplink_tl-wr810n-v1
+  $(Device/tplink-8mlzma)
+  ATH_SOC := qca9531
+  DEVICE_MODEL := TL-WR810N
+  DEVICE_VARIANT := v1
+  TPLINK_HWID := 0x8100001
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
+endef
+TARGET_DEVICES += tplink_tl-wr810n-v1
+
+define Device/tplink_tl-wr810n-v2
+  $(Device/tplink-8mlzma)
+  ATH_SOC := qca9533
+  DEVICE_MODEL := TL-WR810N
+  DEVICE_VARIANT := v2
+  TPLINK_HWID := 0x8100002
+endef
+TARGET_DEVICES += tplink_tl-wr810n-v2
+
+define Device/tplink_tl-wr842n-v1
+  $(Device/tplink-8m)
+  ATH_SOC := ar7241
+  DEVICE_MODEL := TL-WR842N/ND
+  DEVICE_VARIANT := v1
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  TPLINK_HWID := 0x8420001
+endef
+TARGET_DEVICES += tplink_tl-wr842n-v1
+
+define Device/tplink_tl-wr842n-v2
+  $(Device/tplink-8mlzma)
+  ATH_SOC := ar9341
+  DEVICE_MODEL := TL-WR842N/ND
+  DEVICE_VARIANT := v2
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  TPLINK_HWID := 0x8420002
+  SUPPORTED_DEVICES += tl-wr842n-v2
+endef
+TARGET_DEVICES += tplink_tl-wr842n-v2
+
+define Device/tplink_tl-wr842n-v3
+  $(Device/tplink-16mlzma)
+  ATH_SOC := qca9533
+  DEVICE_MODEL := TL-WR842N
+  DEVICE_VARIANT := v3
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  TPLINK_HWID := 0x8420003
+  SUPPORTED_DEVICES += tl-wr842n-v3
+endef
+TARGET_DEVICES += tplink_tl-wr842n-v3
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 6db083861f..9b2ed44ffd 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -44,15 +44,6 @@ define Device/ubnt
 	append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | mkubntimage-split
 endef
 
-define Device/ubnt-xm
-  $(Device/ubnt)
-  DEVICE_PACKAGES += kmod-usb-ohci rssileds
-  UBNT_TYPE := XM
-  UBNT_CHIP := ar7240
-  ATH_SOC := ar7241
-  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
-endef
-
 define Device/ubnt-bz
   $(Device/ubnt)
   UBNT_TYPE := BZ
@@ -69,6 +60,15 @@ define Device/ubnt-wa
   ATH_SOC := ar9342
 endef
 
+define Device/ubnt-xm
+  $(Device/ubnt)
+  DEVICE_PACKAGES += kmod-usb-ohci rssileds
+  UBNT_TYPE := XM
+  UBNT_CHIP := ar7240
+  ATH_SOC := ar7241
+  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
+endef
+
 define Device/ubnt-xw
   $(Device/ubnt)
   UBNT_TYPE := XW
@@ -79,6 +79,18 @@ define Device/ubnt-xw
   ATH_SOC := ar9342
 endef
 
+define Device/ubnt_acb-isp
+  $(Device/ubnt)
+  ATH_SOC := qca9533
+  IMAGE_SIZE := 15744k
+  DEVICE_MODEL := airCube ISP
+  UBNT_BOARD := ACB-ISP
+  UBNT_TYPE := ACB
+  UBNT_CHIP := qca9533
+  IMAGES := sysupgrade.bin
+endef
+TARGET_DEVICES += ubnt_acb-isp
+
 define Device/ubnt_airrouter
   $(Device/ubnt-xm)
   DEVICE_MODEL := AirRouter
@@ -101,28 +113,6 @@ define Device/ubnt_bullet-m-xw
 endef
 TARGET_DEVICES += ubnt_bullet-m-xw
 
-define Device/ubnt_rocket-m
-  $(Device/ubnt-xm)
-  DEVICE_MODEL := Rocket-M
-  SUPPORTED_DEVICES += rocket-m
-endef
-TARGET_DEVICES += ubnt_rocket-m
-
-define Device/ubnt_nanostation-m
-  $(Device/ubnt-xm)
-  DEVICE_MODEL := Nanostation M
-  SUPPORTED_DEVICES += nano-m
-endef
-TARGET_DEVICES += ubnt_nanostation-m
-
-define Device/ubnt_nanostation-m-xw
-  $(Device/ubnt-xw)
-  DEVICE_MODEL := Nanostation M
-  DEVICE_VARIANT := XW
-  SUPPORTED_DEVICES += nano-m-xw
-endef
-TARGET_DEVICES += ubnt_nanostation-m-xw
-
 define Device/ubnt_lap-120
   $(Device/ubnt-wa)
   DEVICE_MODEL := LiteAP ac
@@ -160,6 +150,60 @@ define Device/ubnt_nanostation-ac-loco
 endef
 TARGET_DEVICES += ubnt_nanostation-ac-loco
 
+define Device/ubnt_nanostation-m
+  $(Device/ubnt-xm)
+  DEVICE_MODEL := Nanostation M
+  SUPPORTED_DEVICES += nano-m
+endef
+TARGET_DEVICES += ubnt_nanostation-m
+
+define Device/ubnt_nanostation-m-xw
+  $(Device/ubnt-xw)
+  DEVICE_MODEL := Nanostation M
+  DEVICE_VARIANT := XW
+  SUPPORTED_DEVICES += nano-m-xw
+endef
+TARGET_DEVICES += ubnt_nanostation-m-xw
+
+define Device/ubnt_rocket-m
+  $(Device/ubnt-xm)
+  DEVICE_MODEL := Rocket-M
+  SUPPORTED_DEVICES += rocket-m
+endef
+TARGET_DEVICES += ubnt_rocket-m
+
+define Device/ubnt_routerstation_common
+  DEVICE_PACKAGES := -kmod-ath9k -wpad-mini -uboot-envtools kmod-usb-ohci kmod-usb2 fconfig
+  DEVICE_VENDOR := Ubiquiti
+  ATH_SOC := ar7161
+  IMAGE_SIZE := 16128k
+  IMAGES += factory.bin
+  IMAGE/factory.bin := append-rootfs | pad-rootfs | mkubntimage | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | check-size $$$$(IMAGE_SIZE)
+#  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
+  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
+  KERNEL_INITRAMFS := kernel-bin | append-dtb
+endef
+
+define Device/ubnt_routerstation
+  $(Device/ubnt_routerstation_common)
+  DEVICE_MODEL := RouterStation
+  UBNT_BOARD := RS
+  UBNT_TYPE := RSx
+  UBNT_CHIP := ar7100
+  DEVICE_PACKAGES += -swconfig
+endef
+TARGET_DEVICES += ubnt_routerstation
+
+define Device/ubnt_routerstation-pro
+  $(Device/ubnt_routerstation_common)
+  DEVICE_MODEL := RouterStation Pro
+  UBNT_BOARD := RSPRO
+  UBNT_TYPE := RSPRO
+  UBNT_CHIP := ar7100pro
+endef
+TARGET_DEVICES += ubnt_routerstation-pro
+
 define Device/ubnt_unifi
   $(Device/ubnt-bz)
   DEVICE_MODEL := UniFi
@@ -202,47 +246,3 @@ define Device/ubnt_unifiac-pro
   SUPPORTED_DEVICES += ubnt-unifiac-pro
 endef
 TARGET_DEVICES += ubnt_unifiac-pro
-
-define Device/ubnt_routerstation_common
-  DEVICE_PACKAGES := -kmod-ath9k -wpad-mini -uboot-envtools kmod-usb-ohci kmod-usb2 fconfig
-  DEVICE_VENDOR := Ubiquiti
-  ATH_SOC := ar7161
-  IMAGE_SIZE := 16128k
-  IMAGES += factory.bin
-  IMAGE/factory.bin := append-rootfs | pad-rootfs | mkubntimage | check-size $$$$(IMAGE_SIZE)
-  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | check-size $$$$(IMAGE_SIZE)
-#  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
-  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
-  KERNEL_INITRAMFS := kernel-bin | append-dtb
-endef
-
-define Device/ubnt_routerstation
-  $(Device/ubnt_routerstation_common)
-  DEVICE_MODEL := RouterStation
-  UBNT_BOARD := RS
-  UBNT_TYPE := RSx
-  UBNT_CHIP := ar7100
-  DEVICE_PACKAGES += -swconfig
-endef
-TARGET_DEVICES += ubnt_routerstation
-
-define Device/ubnt_routerstation-pro
-  $(Device/ubnt_routerstation_common)
-  DEVICE_MODEL := RouterStation Pro
-  UBNT_BOARD := RSPRO
-  UBNT_TYPE := RSPRO
-  UBNT_CHIP := ar7100pro
-endef
-TARGET_DEVICES += ubnt_routerstation-pro
-
-define Device/ubnt_acb-isp
-  $(Device/ubnt)
-  ATH_SOC := qca9533
-  IMAGE_SIZE := 15744k
-  DEVICE_MODEL := airCube ISP
-  UBNT_BOARD := ACB-ISP
-  UBNT_TYPE := ACB
-  UBNT_CHIP := qca9533
-  IMAGES := sysupgrade.bin
-endef
-TARGET_DEVICES += ubnt_acb-isp
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 6f1ad5b708..5603d76787 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -6,21 +6,6 @@ DEVICE_VARS += ADDPATTERN_ID ADDPATTERN_VERSION
 DEVICE_VARS += SEAMA_SIGNATURE SEAMA_MTDBLOCK
 DEVICE_VARS += KERNEL_INITRAMFS_PREFIX
 
-define Build/cybertan-trx
-	@echo -n '' > $@-empty.bin
-	-$(STAGING_DIR_HOST)/bin/trx -o $@.new \
-		-f $(IMAGE_KERNEL) -F $@-empty.bin \
-		-x 32 -a 0x10000 -x -32 -f $@
-	-mv "$@.new" "$@"
-	-rm $@-empty.bin
-endef
-
-define Build/addpattern
-	-$(STAGING_DIR_HOST)/bin/addpattern -B $(ADDPATTERN_ID) \
-		-v v$(ADDPATTERN_VERSION) -i $@ -o $@.new
-	-mv "$@.new" "$@"
-endef
-
 define Build/add-elecom-factory-initramfs
   $(eval edimax_model=$(word 1,$(1)))
   $(eval product=$(word 2,$(1)))
@@ -43,6 +28,21 @@ define Build/add-elecom-factory-initramfs
   fi
 endef
 
+define Build/addpattern
+	-$(STAGING_DIR_HOST)/bin/addpattern -B $(ADDPATTERN_ID) \
+		-v v$(ADDPATTERN_VERSION) -i $@ -o $@.new
+	-mv "$@.new" "$@"
+endef
+
+define Build/cybertan-trx
+	@echo -n '' > $@-empty.bin
+	-$(STAGING_DIR_HOST)/bin/trx -o $@.new \
+		-f $(IMAGE_KERNEL) -F $@-empty.bin \
+		-x 32 -a 0x10000 -x -32 -f $@
+	-mv "$@.new" "$@"
+	-rm $@-empty.bin
+endef
+
 define Build/nec-enc
   $(STAGING_DIR_HOST)/bin/nec-enc \
     -i $@ -o $@.new -k $(1)
@@ -88,6 +88,7 @@ define Device/seama
   SEAMA_SIGNATURE :=
 endef
 
+
 define Device/8dev_carambola2
   ATH_SOC := ar9331
   DEVICE_VENDOR := 8devices
@@ -395,19 +396,6 @@ define Device/dlink_dir-835-a1
 endef
 TARGET_DEVICES += dlink_dir-835-a1
 
-define Device/dlink_dir-859-a1
-  $(Device/seama)
-  ATH_SOC := qca9563
-  DEVICE_VENDOR := D-Link
-  DEVICE_MODEL := DIR-859
-  DEVICE_VARIANT := A1
-  IMAGE_SIZE := 15872k
-  DEVICE_PACKAGES :=  kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
-  SEAMA_SIGNATURE := wrgac37_dlink.2013gui_dir859
-  SUPPORTED_DEVICES += dir-859-a1
-endef
-TARGET_DEVICES += dlink_dir-859-a1
-
 define Device/dlink_dir-842-c
   ATH_SOC := qca9563
   DEVICE_VENDOR := D-Link
@@ -449,6 +437,19 @@ define Device/dlink_dir-842-c3
 endef
 TARGET_DEVICES += dlink_dir-842-c3
 
+define Device/dlink_dir-859-a1
+  $(Device/seama)
+  ATH_SOC := qca9563
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DIR-859
+  DEVICE_VARIANT := A1
+  IMAGE_SIZE := 15872k
+  DEVICE_PACKAGES :=  kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  SEAMA_SIGNATURE := wrgac37_dlink.2013gui_dir859
+  SUPPORTED_DEVICES += dir-859-a1
+endef
+TARGET_DEVICES += dlink_dir-859-a1
+
 define Device/elecom_wrc-1750ghbk2-i
   ATH_SOC := qca9563
   DEVICE_VENDOR := ELECOM
@@ -694,6 +695,72 @@ define Device/nec_wg800hp
 endef
 TARGET_DEVICES += nec_wg800hp
 
+define Device/netgear_ex6400_ex7300
+  ATH_SOC := qca9558
+  NETGEAR_KERNEL_MAGIC := 0x27051956
+  NETGEAR_BOARD_ID := EX7300series
+  NETGEAR_HW_ID := 29765104+16+0+128
+  IMAGE_SIZE := 15552k
+  IMAGE/default := append-kernel | pad-offset $$$$(BLOCKSIZE) 64 | netgear-rootfs | pad-rootfs
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca99x0-ct
+  $(Device/netgear_ath79)
+endef
+
+define Device/netgear_ex6400
+  $(Device/netgear_ex6400_ex7300)
+  DEVICE_MODEL := EX6400
+endef
+TARGET_DEVICES += netgear_ex6400
+
+define Device/netgear_ex7300
+  $(Device/netgear_ex6400_ex7300)
+  DEVICE_MODEL := EX7300
+endef
+TARGET_DEVICES += netgear_ex7300
+
+define Device/netgear_wndr3x00
+  ATH_SOC := ar7161
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
+  $(Device/netgear_ath79)
+endef
+
+define Device/netgear_wndr3700
+  $(Device/netgear_wndr3x00)
+  DEVICE_MODEL := WNDR3700
+  DEVICE_VARIANT := v1
+  NETGEAR_KERNEL_MAGIC := 0x33373030
+  NETGEAR_BOARD_ID := WNDR3700
+  IMAGE_SIZE := 7680k
+  IMAGES += factory-NA.img
+  IMAGE/factory-NA.img := $$(IMAGE/default) | netgear-dni NA | check-size $$$$(IMAGE_SIZE)
+  SUPPORTED_DEVICES += wndr3700
+endef
+TARGET_DEVICES += netgear_wndr3700
+
+define Device/netgear_wndr3700v2
+  $(Device/netgear_wndr3x00)
+  DEVICE_MODEL := WNDR3700
+  DEVICE_VARIANT := v2
+  NETGEAR_KERNEL_MAGIC := 0x33373031
+  NETGEAR_BOARD_ID := WNDR3700v2
+  NETGEAR_HW_ID := 29763654+16+64
+  IMAGE_SIZE := 15872k
+  SUPPORTED_DEVICES += wndr3700v2
+endef
+TARGET_DEVICES += netgear_wndr3700v2
+
+define Device/netgear_wndr3800
+  $(Device/netgear_wndr3x00)
+  DEVICE_MODEL := WNDR3800
+  NETGEAR_KERNEL_MAGIC := 0x33373031
+  NETGEAR_BOARD_ID := WNDR3800
+  NETGEAR_HW_ID := 29763654+16+128
+  IMAGE_SIZE := 15872k
+  SUPPORTED_DEVICES += wndr3800
+endef
+TARGET_DEVICES += netgear_wndr3800
+
 define Device/ocedo_koala
   ATH_SOC := qca9558
   DEVICE_VENDOR := Ocedo
@@ -763,60 +830,15 @@ define Device/pcs_cr5000
 endef
 TARGET_DEVICES += pcs_cr5000
 
-define Device/netgear_wndr3x00
-  ATH_SOC := ar7161
-  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset kmod-owl-loader
-  $(Device/netgear_ath79)
-endef
-
-define Device/netgear_ex7300_ex6400
-  ATH_SOC := qca9558
-  NETGEAR_KERNEL_MAGIC := 0x27051956
-  NETGEAR_BOARD_ID := EX7300series
-  NETGEAR_HW_ID := 29765104+16+0+128
-  IMAGE_SIZE := 15552k
-  IMAGE/default := append-kernel | pad-offset $$$$(BLOCKSIZE) 64 | netgear-rootfs | pad-rootfs
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca99x0-ct
-  $(Device/netgear_ath79)
-endef
-
-define Device/netgear_ex6400
-  $(Device/netgear_ex7300_ex6400)
-  DEVICE_MODEL := EX6400
-endef
-TARGET_DEVICES += netgear_ex6400
-
-define Device/netgear_ex7300
-  $(Device/netgear_ex7300_ex6400)
-  DEVICE_MODEL := EX7300
-endef
-TARGET_DEVICES += netgear_ex7300
-
-define Device/netgear_wndr3700
-  $(Device/netgear_wndr3x00)
-  DEVICE_MODEL := WNDR3700
-  DEVICE_VARIANT := v1
-  NETGEAR_KERNEL_MAGIC := 0x33373030
-  NETGEAR_BOARD_ID := WNDR3700
-  IMAGE_SIZE := 7680k
-  IMAGES += factory-NA.img
-  IMAGE/factory-NA.img := $$(IMAGE/default) | netgear-dni NA | check-size $$$$(IMAGE_SIZE)
-  SUPPORTED_DEVICES += wndr3700
-endef
-TARGET_DEVICES += netgear_wndr3700
-
-define Device/netgear_wndr3700v2
-  $(Device/netgear_wndr3x00)
-  DEVICE_MODEL := WNDR3700
-  DEVICE_VARIANT := v2
-  NETGEAR_KERNEL_MAGIC := 0x33373031
-  NETGEAR_BOARD_ID := WNDR3700v2
-  NETGEAR_HW_ID := 29763654+16+64
-  IMAGE_SIZE := 15872k
-  SUPPORTED_DEVICES += wndr3700v2
+define Device/phicomm_k2t
+  ATH_SOC := qca9563
+  DEVICE_VENDOR := Phicomm
+  DEVICE_MODEL := K2T
+  IMAGE_SIZE := 15744k
+  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
+  DEVICE_PACKAGES := kmod-leds-reset kmod-ath10k-ct ath10k-firmware-qca9888-ct
 endef
-TARGET_DEVICES += netgear_wndr3700v2
+TARGET_DEVICES += phicomm_k2t
 
 define Device/pisen_ts-d084
   $(Device/tplink-8mlzma)
@@ -855,27 +877,6 @@ define Device/pisen_wmm003n
 endef
 TARGET_DEVICES += pisen_wmm003n
 
-define Device/netgear_wndr3800
-  $(Device/netgear_wndr3x00)
-  DEVICE_MODEL := WNDR3800
-  NETGEAR_KERNEL_MAGIC := 0x33373031
-  NETGEAR_BOARD_ID := WNDR3800
-  NETGEAR_HW_ID := 29763654+16+128
-  IMAGE_SIZE := 15872k
-  SUPPORTED_DEVICES += wndr3800
-endef
-TARGET_DEVICES += netgear_wndr3800
-
-define Device/phicomm_k2t
-  ATH_SOC := qca9563
-  DEVICE_VENDOR := Phicomm
-  DEVICE_MODEL := K2T
-  IMAGE_SIZE := 15744k
-  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
-  DEVICE_PACKAGES := kmod-leds-reset kmod-ath10k-ct ath10k-firmware-qca9888-ct
-endef
-TARGET_DEVICES += phicomm_k2t
-
 define Device/qihoo_c301
   $(Device/seama)
   ATH_SOC := ar9344
diff --git a/target/linux/ath79/image/tiny-tp-link.mk b/target/linux/ath79/image/tiny-tp-link.mk
index 71d165fdc2..c1d29f5b81 100644
--- a/target/linux/ath79/image/tiny-tp-link.mk
+++ b/target/linux/ath79/image/tiny-tp-link.mk
@@ -1,6 +1,5 @@
 include ./common-tp-link.mk
 
-
 define Device/tplink_tl-mr10u
   $(Device/tplink-4mlzma)
   ATH_SOC := ar9331
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
