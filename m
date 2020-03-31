Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D0119A260
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 01:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4YRNTRHo2UvYfZ1zH2iq+K5oao2kz2N3tf11nUuq5EM=; b=oIMcetzfZQPqwN
	JH83PynzhMq3xx41FSpqfEG/p/Ih+fo3JPC7yovhafCz3zgehQvWomYLNd1g1YpThiLZ69TdOoYwa
	kHoTV/uXfEeS3uw6lWXXLTOg3dyLgp9wrbCPQmVmCp4+f/xM8ix8x/z1RHPTfR4aWA7qwM3EIykNz
	TKqkVCuYs5dI6Zz7QHRn80czWKan7Q/BWTel87m8r3yXshUmTRg2Iddiusu3uUq7R4B8+JEGpHXce
	hMx+6shGi/YxRCYQYXjICJdofQssvXJVkLIyLcFM5EPmgT6zeLMq0IC6TP/gb3g889XqsGlRA/02z
	+FAB2bhPoiQYic2yjCSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJQBG-000808-Pt; Tue, 31 Mar 2020 23:20:26 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJQBA-0007z9-D5
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 23:20:22 +0000
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B494B200002;
 Tue, 31 Mar 2020 23:20:14 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Mar 2020 13:20:09 -1000
Message-Id: <20200331232009.1948083-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_162020_713959_4866B60F 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mvebu/cortexa9: use Linksys codename as
 PROFILE
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

The PROFILE names of mvebu/cortexa9/Linksys devices are based on the
consumer names (like linksys_wrt1200ac) instead of the vendor codenames
(like linksys_caiman) which are however used in the rest of the build
system (plathform.sh, bootcount, 01_leds).

A running device is not able to know the profile used for its firmware
creation as `/tmp/sysinfo/board_name` points to the device tree
identifier (equal to Linksys codename) and `/tmp/sysinfo/model` is not
deterministically *convertible* to the PROFILE name.

The introduction of ALT titles (4ee3cf2b5a) allows to store consumer
names and make them available in the `menuconfig` so the profile name is
transparent to regular users.

This patch changes the mvebu/cortexa9/Linksys PROFILES to use the device
tree identifier aka Linksys codename as PROFILE name and uses the
consumer name as ALT title.

Device tree identifier and PROFILE are now identical except for a `,`
replacement with `_`, which is due to Makefile naming limitations.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
This is just a first step, we should follow the device tree identifier
for all other PROFILE as well.

 target/linux/mvebu/image/cortexa9.mk | 56 ++++++++++++++--------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/target/linux/mvebu/image/cortexa9.mk b/target/linux/mvebu/image/cortexa9.mk
index 85bfa94dbd..53fc7c84b3 100644
--- a/target/linux/mvebu/image/cortexa9.mk
+++ b/target/linux/mvebu/image/cortexa9.mk
@@ -42,80 +42,80 @@ define Device/linksys
   KERNEL_SIZE := 6144k
 endef
 
-define Device/linksys_wrt1200ac
+define Device/linksys_caiman
   $(call Device/linksys)
-  DEVICE_MODEL := WRT1200AC
+  DEVICE_MODEL := Caiman
   DEVICE_ALT0_VENDOR := Linksys
-  DEVICE_ALT0_MODEL := Caiman
+  DEVICE_ALT0_MODEL := WRT1200AC
   DEVICE_DTS := armada-385-linksys-caiman
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
   SUPPORTED_DEVICES := armada-385-linksys-caiman linksys,caiman
 endef
-TARGET_DEVICES += linksys_wrt1200ac
+TARGET_DEVICES += linksys_caiman
 
-define Device/linksys_wrt1900acs
+define Device/linksys_shelby
   $(call Device/linksys)
-  DEVICE_MODEL := WRT1900ACS
-  DEVICE_VARIANT := v1
+  DEVICE_MODEL := Shelby
+  DEVICE_ALT0_VENDOR := Linksys
+  DEVICE_ALT0_MODEL := WRT1900ACS
+  DEVICE_ALT0_VARIANT := v1
   DEVICE_ALT0_VENDOR := Linksys
   DEVICE_ALT0_MODEL := WRT1900ACS
   DEVICE_ALT0_VARIANT := v2
-  DEVICE_ALT1_VENDOR := Linksys
-  DEVICE_ALT1_MODEL := Shelby
   DEVICE_DTS := armada-385-linksys-shelby
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
   SUPPORTED_DEVICES := armada-385-linksys-shelby linksys,shelby
 endef
-TARGET_DEVICES += linksys_wrt1900acs
+TARGET_DEVICES += linksys_shelby
 
-define Device/linksys_wrt1900ac
+define Device/linksys_mamba
   $(call Device/linksys)
-  DEVICE_MODEL := WRT1900AC
-  DEVICE_VARIANT := v1
+  DEVICE_MODEL := Mamba
   DEVICE_ALT0_VENDOR := Linksys
-  DEVICE_ALT0_MODEL := Mamba
+  DEVICE_ALT0_MODEL :=  WRT1900AC
+  DEVICE_ALT0_VARIANT := v1
   DEVICE_DTS := armada-xp-linksys-mamba
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
   KERNEL_SIZE := 3072k
   SUPPORTED_DEVICES := armada-xp-linksys-mamba linksys,mamba
 endef
-TARGET_DEVICES += linksys_wrt1900ac
+TARGET_DEVICES += linksys_mamba
 
-define Device/linksys_wrt1900acv2
+define Device/linksys_cobra
   $(call Device/linksys)
-  DEVICE_MODEL := WRT1900AC
-  DEVICE_VARIANT := v2
+  DEVICE_MODEL := Cobra
   DEVICE_ALT0_VENDOR := Linksys
-  DEVICE_ALT0_MODEL := Cobra
+  DEVICE_ALT0_MODEL := WRT1900AC
+  DEVICE_ALT0VARIANT := v2
   DEVICE_DTS := armada-385-linksys-cobra
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
   SUPPORTED_DEVICES := armada-385-linksys-cobra linksys,cobra
 endef
-TARGET_DEVICES += linksys_wrt1900acv2
+TARGET_DEVICES += linksys_cobra
 
-define Device/linksys_wrt3200acm
+define Device/linksys_rango
   $(call Device/linksys)
-  DEVICE_MODEL := WRT3200ACM
+  DEVICE_MODEL := Rango
   DEVICE_ALT0_VENDOR := Linksys
-  DEVICE_ALT0_MODEL := Rango
+  DEVICE_ALT0_MODEL := WRT3200ACM
   DEVICE_DTS := armada-385-linksys-rango
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
   SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango
 endef
-TARGET_DEVICES += linksys_wrt3200acm
+TARGET_DEVICES += linksys_rango
 
-define Device/linksys_wrt32x
+define Device/linksys_venom
   $(call Device/linksys)
-  DEVICE_MODEL := WRT32X
+  DEVICE_MODEL := Venom
   DEVICE_ALT0_VENDOR := Linksys
-  DEVICE_ALT0_MODEL := Venom
+  DEVICE_ALT0_MODEL := WRT32X
   DEVICE_DTS := armada-385-linksys-venom
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
   KERNEL_SIZE := 3072k
   KERNEL := kernel-bin | append-dtb
   SUPPORTED_DEVICES := armada-385-linksys-venom linksys,venom
 endef
-TARGET_DEVICES += linksys_wrt32x
+TARGET_DEVICES += linksys_venom
 
 define Device/marvell_a370-db
   $(Device/NAND-512K)
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
