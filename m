Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281D1128EAD
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 16:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jmzWmiEzdiXlhHQ+5YTAG/jAANNE9mKl1unLAem1zCE=; b=dy9fgQPM3DvMorM0E59PUYCf2B
	L0Iug1JShHWMh/yAA2pa12ZiD0plmcs/BivY5ru/cwJrhn9ROMSRqXq/+WNuCVV6TOZCytMhvT7nR
	3RS9OFdBQxdOumm4RpkcXR2IGttf4FUtZ2Lqpe0pvhOqgDhPHG8Nn6in54mYJNDZIBtrALMlB1aIk
	unUpykljoF33CI4jVwsGdTFZ3stdnzvYmCN0u/EPy1Gptx3cAFkuJIh2QfrSPBYTzT3PcgczD1ECs
	M8o+lh/Eq6W211saHb2MlMMGFgB8dAur3MBY4bM94qO7i8KVqMZZLemQE+wmtq6aK4YCH63dHB55T
	ejRBweIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij3Rl-0008DG-Oz; Sun, 22 Dec 2019 15:47:09 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij3RT-00082M-BX
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 15:46:53 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mtfa5-1ho3041QIJ-00v9fN for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Dec 2019 16:46:39 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Dec 2019 16:45:55 +0100
Message-Id: <20191222154555.1814-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191222154555.1814-1-freifunk@adrianschmutzler.de>
References: <20191222154555.1814-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:T47Hl1LZt13DhH+cOPn8OJtR6kpP9Xvey90s7UEi6d6VJRPo7dT
 /lDN1y/cB+gYcpqL+68kH6iVg6PvIVNltd8pwfO2VpH2aOiZ1cibOfDHFFTUFCmls5Gf7/3
 OCf+83CMt23HWCIgL3ojcK2n3L+DhtT7wGJ0R685AaOkby1KzfTkULdmP+Aiik9GZYlCbdM
 hvAf9BHPW0/HNSwIyiRBg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Yj+YSZvO5+M=:916l1AMjvccGB+KPONHLCZ
 BYHY6bdtKmLCjKInS1FPleF3Bily3Vk3i4QIe7z26HL16ziqu6vkRD4gWHTIc9/yhiDVztsI1
 7WwNclgIR0Zq+yOa064oXcr01PsK+k8CyStnleEUQ4YM9OR+WDJhyAaT31w/Euwe5sB1KG2go
 IMg3GvCUTfNcsKYrP2CUCFwmyKPiJwTmaT2U37wTbQOu3hiHnjrFA39lmYgijPK53uAS7LWfm
 sApAXiuOciRxL00nL/xqHNCV9iq2IpAy65XFCBsTjbhY2zeijMncBTJzZE392gNpyb1WQHDoW
 cETmlE4iQb42+W0oplY8YSvSllPuXG+2CiOedruaa3432tGh52SMSdjqSwajj4mexhrUnheva
 A/lozKGOj4FKdf2w/AJgtOTNYY2Ot5esrYMd2VAFvcwnCYhbkPGEfz9SF/RrKorkwyB0oF86E
 sHvhJGeeB3dhiYNCJ8Rv/byeQvpHwI7V7Nfu1bka5muw4sno3KNsC/fwaFMt+ulkklu2pZ0n+
 kclOD7LLBekq8BbVTG1D2v0v7yMCWmoax78Th1WZ51awAWcLFHzYRpGQzIi8cs/NpqlkvRPOM
 vE0v9KrXLqIuZQxROS6RNHV6DjD7MsYKytCyDggE4S+l7qRj+HUOqI/YnrTaRg1NRU6VJyFW1
 1o/wd+yKsgz9SNkTCTc1A1JA+w5Fau5/hCm2A1WtaBC7W4J1TQGpWTP5YQ9DtU6RtLti8BLKE
 MM5gd5VylWq9NAUAg/n9Jv9gR3RkWDWBPySXu/BKcqu7fgROHcnMiHRLiSAmugBI9iJfZqw4v
 7QtwV4kGCCbj7xZRr+di7oppLn8gnYnHefc6JiTu/HVkbShzeElCWKRVDygRVX0OlCkB95wxU
 xnVRv70Ljpzp/kAZaMz6/1DNF+p4Y1Ljx0WiJIPaY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_074651_688798_F8DD5D73 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 2/2] ipq806x: build DEVICE_DTS based on SOC
 and device name
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

This patch uses the SOC variable to calculate DTS names automatically
based on the SOC and the device definition node name.

This reduces redundancy and (by having to choose DTS name
appropriately) will unify the naming of a device in different places
(image/Makefile, DTS name, compatible, image name). This is supposed
to make life easier for developers and reviewers.

Since the kernel uses a "soc-device.dts" scheme for this target, we
use this for the derivation of DEVICE_DTS, too, leaving the DTS names
unchanged for this target.

Note that for some devices the kernel itself uses inconsistent names
(DTS naming scheme vs. compatible), leaving us with a manual overwrite
of DEVICE_DTS for those cases.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ipq806x/image/Makefile | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/target/linux/ipq806x/image/Makefile b/target/linux/ipq806x/image/Makefile
index 81f14b4756..33f68b7a60 100644
--- a/target/linux/ipq806x/image/Makefile
+++ b/target/linux/ipq806x/image/Makefile
@@ -16,6 +16,7 @@ define Device/Default
 	KERNEL_INITRAMFS_PREFIX := $$(IMG_PREFIX)-$(1)-initramfs
 	KERNEL_PREFIX := $$(IMAGE_PREFIX)
 	KERNEL_LOADADDR = 0x42208000
+	DEVICE_DTS = $$(SOC)-$(lastword $(subst _, ,$(1)))
 	SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
 	IMAGE/sysupgrade.bin = sysupgrade-tar | append-metadata
 	IMAGE/sysupgrade.bin/squashfs :=
@@ -81,7 +82,7 @@ endef
 
 define Device/buffalo_wxr-2533dhp
 	$(call Device/LegacyImage)
-	DEVICE_DTS := qcom-ipq8064-wxr-2533dhp
+	SOC := qcom-ipq8064
 	DEVICE_VENDOR := Buffalo
 	DEVICE_MODEL := WXR-2533DHP
 	BLOCKSIZE := 128k
@@ -102,7 +103,7 @@ define Device/compex_wpq864
 	DEVICE_MODEL := WPQ864
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
-	DEVICE_DTS := qcom-ipq8064-wpq864
+	SOC := qcom-ipq8064
 	DEVICE_PACKAGES := kmod-gpio-beeper
 endef
 TARGET_DEVICES += compex_wpq864
@@ -111,7 +112,7 @@ define Device/linksys_ea8500
 	$(call Device/LegacyImage)
 	DEVICE_VENDOR := Linksys
 	DEVICE_MODEL := EA8500
-	DEVICE_DTS := qcom-ipq8064-ea8500
+	SOC := qcom-ipq8064
 	PAGESIZE := 2048
 	BLOCKSIZE := 128k
 	KERNEL_SIZE := 3072k
@@ -129,7 +130,7 @@ define Device/nec_wg2600hp
 	$(call Device/LegacyImage)
 	DEVICE_VENDOR := NEC
 	DEVICE_MODEL := Aterm WG2600HP
-	DEVICE_DTS := qcom-ipq8064-wg2600hp
+	SOC := qcom-ipq8064
 	BLOCKSIZE := 64k
 	BOARD_NAME := wg2600hp
 	IMAGES := sysupgrade.bin
@@ -142,7 +143,7 @@ define Device/netgear_d7800
 	$(call Device/DniImage)
 	DEVICE_VENDOR := NETGEAR
 	DEVICE_MODEL := Nighthawk X4 D7800
-	DEVICE_DTS := qcom-ipq8064-d7800
+	SOC := qcom-ipq8064
 	KERNEL_SIZE := 4096k
 	NETGEAR_BOARD_ID := D7800
 	NETGEAR_HW_ID := 29764958+0+128+512+4x4+4x4
@@ -159,7 +160,7 @@ define Device/netgear_r7500
 	DEVICE_VENDOR := NETGEAR
 	DEVICE_MODEL := Nighthawk X4 R7500
 	DEVICE_VARIANT := v1
-	DEVICE_DTS := qcom-ipq8064-r7500
+	SOC := qcom-ipq8064
 	KERNEL_SIZE := 4096k
 	NETGEAR_BOARD_ID := R7500
 	NETGEAR_HW_ID := 29764841+0+128+256+3x3+4x4
@@ -176,7 +177,7 @@ define Device/netgear_r7500v2
 	DEVICE_VENDOR := NETGEAR
 	DEVICE_MODEL := Nighthawk X4 R7500
 	DEVICE_VARIANT := v2
-	DEVICE_DTS := qcom-ipq8064-r7500v2
+	SOC := qcom-ipq8064
 	KERNEL_SIZE := 4096k
 	NETGEAR_BOARD_ID := R7500v2
 	NETGEAR_HW_ID := 29764958+0+128+512+3x3+4x4
@@ -192,7 +193,7 @@ define Device/netgear_r7800
 	$(call Device/DniImage)
 	DEVICE_VENDOR := NETGEAR
 	DEVICE_MODEL := Nighthawk X4S R7800
-	DEVICE_DTS := qcom-ipq8065-r7800
+	SOC := qcom-ipq8065
 	KERNEL_SIZE := 4096k
 	NETGEAR_BOARD_ID := R7800
 	NETGEAR_HW_ID := 29764958+0+128+512+4x4+4x4+cascade
@@ -210,6 +211,7 @@ define Device/qcom_ipq8064-ap148
 	DEVICE_VENDOR := Qualcomm
 	DEVICE_MODEL := AP148
 	DEVICE_VARIANT := standard
+	SOC := qcom-ipq8064
 	DEVICE_DTS := qcom-ipq8064-ap148
 	KERNEL_INSTALL := 1
 	BLOCKSIZE := 128k
@@ -226,6 +228,7 @@ define Device/qcom_ipq8064-ap148-legacy
 	DEVICE_VENDOR := Qualcomm
 	DEVICE_MODEL := AP148
 	DEVICE_VARIANT := legacy
+	SOC := qcom-ipq8064
 	DEVICE_DTS := qcom-ipq8064-ap148
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
@@ -240,6 +243,7 @@ define Device/qcom_ipq8064-ap161
 	$(call Device/UbiFit)
 	DEVICE_VENDOR := Qualcomm
 	DEVICE_MODEL := AP161
+	SOC := qcom-ipq8064
 	DEVICE_DTS := qcom-ipq8064-ap161
 	KERNEL_INSTALL := 1
 	BLOCKSIZE := 128k
@@ -253,6 +257,7 @@ define Device/qcom_ipq8064-db149
 	$(call Device/FitImage)
 	DEVICE_VENDOR := Qualcomm
 	DEVICE_MODEL := DB149
+	SOC := qcom-ipq8064
 	DEVICE_DTS := qcom-ipq8064-db149
 	KERNEL_INSTALL := 1
 	BOARD_NAME := db149
@@ -265,7 +270,7 @@ define Device/tplink_c2600
 	DEVICE_VENDOR := TP-Link
 	DEVICE_MODEL := Archer C2600
 	DEVICE_VARIANT := v1
-	DEVICE_DTS := qcom-ipq8064-c2600
+	SOC := qcom-ipq8064
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
 	BOARD_NAME := c2600
@@ -283,7 +288,7 @@ define Device/tplink_vr2600v
 	KERNEL = kernel-bin | append-dtb | uImage none
 	KERNEL_NAME := zImage
 	KERNEL_SIZE := 3072k
-	DEVICE_DTS := qcom-ipq8064-vr2600v
+	SOC := qcom-ipq8064
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
 	BOARD_NAME := vr2600v
@@ -297,7 +302,7 @@ TARGET_DEVICES += tplink_vr2600v
 define Device/zyxel_nbg6817
 	DEVICE_VENDOR := ZyXEL
 	DEVICE_MODEL := NBG6817
-	DEVICE_DTS := qcom-ipq8065-nbg6817
+	SOC := qcom-ipq8065
 	KERNEL_SIZE := 4096k
 	BLOCKSIZE := 64k
 	BOARD_NAME := nbg6817
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
