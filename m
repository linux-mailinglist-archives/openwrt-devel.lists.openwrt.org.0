Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1014E144621
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 21:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UFe/2bCQCtpZZvGRNTpzFtULE1Q8m+fzYMmBE1y8N2M=; b=ozmcmZqfmUH7eN
	I4gm0c9/egs1EvZgU+asiUOqe0n8sEDJAJPJ6BMb6M6oRHtrBxOV+GIzuVpQFQZepSQVsj/fIPVkR
	gWzw1D8D+Eksi5LTwabBHInGIiemTs/jcTW096VxII+DmtxQNdOhASYxT0hgMLO33LAMun/uXzmEw
	vV5UUVPvkUCvyE1tjSjQ9a/hgPRjUK6bWEy6YeT8xBnrYlIrMohijP8QyyJDkOnAtpVnuESx690s+
	JizeagY40jn5ociPjeWATcXwUa0Ft/dkFWDOtitRgz9/QhOteQDQtBNHXQZW+0714JqRi7voAlKz/
	AFI+fnCKpdM+8JD5p2bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu0ZO-0007t3-Bv; Tue, 21 Jan 2020 20:56:18 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu0ZF-0007sV-By
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 20:56:12 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MqbI0-1jOvX20zui-00mb4i for <openwrt-devel@lists.openwrt.org>; Tue, 21
 Jan 2020 21:56:04 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 21:54:50 +0100
Message-Id: <20200121205450.1685-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:z3nA+CCs461DFPjQY2srJrSU60hmY/Z6w72DvH7dS67qkrf1QFY
 Fo14IvxhGeAZQYvlH0swP0ebSHywQP8pmytqyAD67uY5qtUkKMK1N60uhgE5Qc86FV0szYW
 gAwehWgsRu9KIUZ9ivJiLR80CcIgdfAgkaCSNdQm7IrvRGofc54WCuNIerqG5VtNYsi0QSQ
 NaSQxV5vcEImFErBlkCww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O305cIWv67g=:eoFFk8hszuKE9kBw1wJslm
 ZifU5fnJe+nAzIT87kzDtKqam/SamPk8QWF/JN/lMx3YgkcK+/GWZ01R6p3NPbWYjyHybeMo4
 m8uXCLsKL6j6tNZanhFNnaYydJO+TVrLFsyGMdgawIWDnbbJMbIXjAyTSUh3Hz3ArVQ1CVoLj
 oG7wfbyeU5XMcdqIPXktzUHXyfU/HRxjFptkIBZhtfVAMzaYJDSWrfiJ7ez9eCkgQi0q78Tea
 5Y+DSaUDyBTfnzEeTIuv8q2mzzFak3ao4HAVjeWAF5y5VyTPKkZ18VEhLndEicEhtjZ94ZwYp
 1XaacAlBfyETJBduDuC8pBAVAcR7SpN12dTNx/939EYgWdne8HZDP5373UhNWoJMpZIuoAfpI
 eG10/My0DVxav5z1quj0gDqf0OCt2fqqzSFGoT0IA39kOlNByOrC/9Mgl8v+7YhBmYlQ+bph8
 Iz8qg+raPzpjAgGOokTHWaNDICip5gs6pVFhZMgmUNUTiCed+3QUtR1mFG6X+U2HS8cQB7r0f
 MEsoIVIUzzrFIXB6VZs8tf7uqyYNGUFIAw4PQBdn/HATPO/DluneFJvAWlAmV7AQAupOKFP/8
 eQOGb8eraBWy1pAjSgGTDQ/Jmcj6yMrhXLXncJGoT4kf40yg28ycMJU+gfzH9/eQ6RhYvG6x2
 YhfmfmHEmtG0jF1huYouGfVIqhY7SJ0G0vxUCH5Ei30Vkz1yOC6tIHuZKc46q/R20Xo9iClh9
 O4THknSQ/njfEfR4fCEUwS3g1FpOt1p0VnQSlNbj//7ph9+679eJawPDF7uqRLjAggAyxwe8X
 cbmkNa+oMFlTs51UPPSkUIC7i1lYTelody9oqin/iwfujBC1gWekF8fZuB1l1UP+V2gOZvYk0
 GPisA/xvBqFhV91iJmWT5GT1P+KCR54vo45cAWncA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_125609_849083_C80B1B47 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: define SOC only once for uniform
 targets
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

In ramips, all devices in mt7621, mt76x8 and rt288x subtarget have
the same value set to the SOC variable individually.

This introduces a non-device-dependent variable COMMON_SOC, which
is used if no specific SOC is set for a device, and thus reduces
the number of redundant definitions drastically.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/image/Makefile  |  1 +
 target/linux/ramips/image/mt7621.mk | 68 +----------------------------
 target/linux/ramips/image/mt76x8.mk | 42 +-----------------
 target/linux/ramips/image/rt288x.mk | 10 +----
 4 files changed, 7 insertions(+), 114 deletions(-)

diff --git a/target/linux/ramips/image/Makefile b/target/linux/ramips/image/Makefile
index b6f82c1151..f2759cba1a 100644
--- a/target/linux/ramips/image/Makefile
+++ b/target/linux/ramips/image/Makefile
@@ -23,6 +23,7 @@ KERNEL_DTB = kernel-bin | append-dtb | lzma
 define Device/Default
   PROFILES = Default
   KERNEL := $(KERNEL_DTB) | uImage lzma
+  SOC := $(COMMON_SOC)
   DEVICE_DTS_DIR := ../dts
   DEVICE_DTS = $$(SOC)_$(1)
   IMAGES := sysupgrade.bin
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 6521361868..e9f90c517b 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -2,6 +2,8 @@
 # MT7621 Profiles
 #
 
+COMMON_SOC := mt7621
+
 KERNEL_DTB += -d21
 DEVICE_VARS += TPLINK_BOARD_ID TPLINK_HEADER_VERSION TPLINK_HWID TPLINK_HWREV
 
@@ -85,7 +87,6 @@ define Build/wr1201-factory-header
 endef
 
 define Device/afoundry_ew1200
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := AFOUNDRY
   DEVICE_MODEL := EW1200
@@ -96,7 +97,6 @@ endef
 TARGET_DEVICES += afoundry_ew1200
 
 define Device/alfa-network_quad-e4g
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := ALFA Network
   DEVICE_MODEL := Quad-E4G
@@ -106,7 +106,6 @@ endef
 TARGET_DEVICES += alfa-network_quad-e4g
 
 define Device/asiarf_ap7621-001
-  SOC := mt7621
   IMAGE_SIZE := 16000k
   DEVICE_VENDOR := AsiaRF
   DEVICE_MODEL := AP7621-001
@@ -115,7 +114,6 @@ endef
 TARGET_DEVICES += asiarf_ap7621-001
 
 define Device/asiarf_ap7621-nv1
-  SOC := mt7621
   IMAGE_SIZE := 16000k
   DEVICE_VENDOR := AsiaRF
   DEVICE_MODEL := AP7621-NV1
@@ -124,7 +122,6 @@ endef
 TARGET_DEVICES += asiarf_ap7621-nv1
 
 define Device/asus_rt-ac57u
-  SOC := mt7621
   DEVICE_VENDOR := ASUS
   DEVICE_MODEL := RT-AC57U
   IMAGE_SIZE := 16064k
@@ -134,7 +131,6 @@ endef
 TARGET_DEVICES += asus_rt-ac57u
 
 define Device/asus_rt-ac65p
-  SOC := mt7621
   DEVICE_VENDOR := ASUS
   DEVICE_MODEL := RT-AC65P
   IMAGE_SIZE := 51200k
@@ -151,7 +147,6 @@ endef
 TARGET_DEVICES += asus_rt-ac65p
 
 define Device/asus_rt-ac85p
-  SOC := mt7621
   DEVICE_VENDOR := ASUS
   DEVICE_MODEL := RT-AC85P
   IMAGE_SIZE := 51200k
@@ -168,7 +163,6 @@ endef
 TARGET_DEVICES += asus_rt-ac85p
 
 define Device/buffalo_wsr-1166dhp
-  SOC := mt7621
   IMAGE/sysupgrade.bin := trx | pad-rootfs | append-metadata
   IMAGE_SIZE := 15936k
   DEVICE_VENDOR := Buffalo
@@ -179,7 +173,6 @@ endef
 TARGET_DEVICES += buffalo_wsr-1166dhp
 
 define Device/buffalo_wsr-600dhp
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Buffalo
   DEVICE_MODEL := WSR-600DHP
@@ -190,7 +183,6 @@ TARGET_DEVICES += buffalo_wsr-600dhp
 
 define Device/dlink_dir-860l-b1
   $(Device/seama)
-  SOC := mt7621
   BLOCKSIZE := 64k
   SEAMA_SIGNATURE := wrgac13_dlink.2013gui_dir860lb
   KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
@@ -204,7 +196,6 @@ endef
 TARGET_DEVICES += dlink_dir-860l-b1
 
 define Device/d-team_newifi-d2
-  SOC := mt7621
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := Newifi
   DEVICE_MODEL := D2
@@ -214,7 +205,6 @@ endef
 TARGET_DEVICES += d-team_newifi-d2
 
 define Device/d-team_pbr-m1
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := PandoraBox
   DEVICE_MODEL := PBR-M1
@@ -225,7 +215,6 @@ endef
 TARGET_DEVICES += d-team_pbr-m1
 
 define Device/edimax_ra21s
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Edimax
   DEVICE_MODEL := RA21S
@@ -239,7 +228,6 @@ endef
 TARGET_DEVICES += edimax_ra21s
 
 define Device/edimax_rg21s
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Edimax
   DEVICE_MODEL := Gemini AC2600 RG21S
@@ -251,7 +239,6 @@ endef
 TARGET_DEVICES += edimax_rg21s
 
 define Device/elecom_wrc-1167ghbk2-s
-  SOC := mt7621
   IMAGE_SIZE := 15488k
   DEVICE_VENDOR := ELECOM
   DEVICE_MODEL := WRC-1167GHBK2-S
@@ -263,7 +250,6 @@ endef
 TARGET_DEVICES += elecom_wrc-1167ghbk2-s
 
 define Device/elecom_wrc-1900gst
-  SOC := mt7621
   IMAGE_SIZE := 11264k
   DEVICE_VENDOR := ELECOM
   DEVICE_MODEL := WRC-1900GST
@@ -274,7 +260,6 @@ endef
 TARGET_DEVICES += elecom_wrc-1900gst
 
 define Device/elecom_wrc-2533gst
-  SOC := mt7621
   IMAGE_SIZE := 11264k
   DEVICE_VENDOR := ELECOM
   DEVICE_MODEL := WRC-2533GST
@@ -285,7 +270,6 @@ endef
 TARGET_DEVICES += elecom_wrc-2533gst
 
 define Device/firefly_firewrt
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Firefly
   DEVICE_MODEL := FireWRT
@@ -295,7 +279,6 @@ endef
 TARGET_DEVICES += firefly_firewrt
 
 define Device/gehua_ghl-r-001
-  SOC := mt7621
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := GeHua
   DEVICE_MODEL := GHL-R-001
@@ -306,7 +289,6 @@ endef
 TARGET_DEVICES += gehua_ghl-r-001
 
 define Device/gnubee_gb-pc1
-  SOC := mt7621
   DEVICE_VENDOR := GnuBee
   DEVICE_MODEL := Personal Cloud One
   DEVICE_PACKAGES := kmod-ata-core kmod-ata-ahci kmod-usb3 kmod-sdhci-mt7620
@@ -315,7 +297,6 @@ endef
 TARGET_DEVICES += gnubee_gb-pc1
 
 define Device/gnubee_gb-pc2
-  SOC := mt7621
   DEVICE_VENDOR := GnuBee
   DEVICE_MODEL := Personal Cloud Two
   DEVICE_PACKAGES := kmod-ata-core kmod-ata-ahci kmod-usb3 kmod-sdhci-mt7620
@@ -324,7 +305,6 @@ endef
 TARGET_DEVICES += gnubee_gb-pc2
 
 define Device/hiwifi_hc5962
-  SOC := mt7621
   BLOCKSIZE := 128k
   PAGESIZE := 2048
   KERNEL_SIZE := 2097152
@@ -344,7 +324,6 @@ endef
 TARGET_DEVICES += hiwifi_hc5962
 
 define Device/iodata_wn-ax1167gr
-  SOC := mt7621
   IMAGE_SIZE := 15552k
   KERNEL_INITRAMFS := $$(KERNEL) | \
 	iodata-factory 7864320 4 0x1055 $(KDIR)/tmp/$$(KERNEL_INITRAMFS_PREFIX)-factory.bin
@@ -355,7 +334,6 @@ endef
 TARGET_DEVICES += iodata_wn-ax1167gr
 
 define Device/iodata_wn-gx300gr
-  SOC := mt7621
   IMAGE_SIZE := 7616k
   DEVICE_VENDOR := I-O DATA
   DEVICE_MODEL := WN-GX300GR
@@ -364,7 +342,6 @@ endef
 TARGET_DEVICES += iodata_wn-gx300gr
 
 define Device/iodata_wnpr2600g
-  SOC := mt7621
   DEVICE_VENDOR := I-O DATA
   DEVICE_MODEL := WNPR2600G
   IMAGE_SIZE := 13952k
@@ -376,7 +353,6 @@ endef
 TARGET_DEVICES += iodata_wnpr2600g
 
 define Device/iptime_a6ns-m
-  SOC := mt7621
   IMAGE_SIZE := 16128k
   UIMAGE_NAME := a6nm
   DEVICE_VENDOR := ipTIME
@@ -386,7 +362,6 @@ endef
 TARGET_DEVICES += iptime_a6ns-m
 
 define Device/iptime_a8004t
-  SOC := mt7621
   IMAGE_SIZE := 16128k
   UIMAGE_NAME := a8004t
   DEVICE_VENDOR := ipTIME
@@ -396,7 +371,6 @@ endef
 TARGET_DEVICES += iptime_a8004t
 
 define Device/jcg_jhr-ac876m
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   IMAGES += factory.bin
   IMAGE/factory.bin := $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | \
@@ -409,7 +383,6 @@ endef
 TARGET_DEVICES += jcg_jhr-ac876m
 
 define Device/lenovo_newifi-d1
-  SOC := mt7621
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := Newifi
   DEVICE_MODEL := D1
@@ -420,7 +393,6 @@ endef
 TARGET_DEVICES += lenovo_newifi-d1
 
 define Device/linksys_re6500
-  SOC := mt7621
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := Linksys
   DEVICE_MODEL := RE6500
@@ -430,7 +402,6 @@ endef
 TARGET_DEVICES += linksys_re6500
 
 define Device/mediatek_ap-mt7621a-v60
-  SOC := mt7621
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := Mediatek
   DEVICE_MODEL := AP-MT7621A-V60 EVB
@@ -439,7 +410,6 @@ endef
 TARGET_DEVICES += mediatek_ap-mt7621a-v60
 
 define Device/mediatek_mt7621-eval-board
-  SOC := mt7621
   BLOCKSIZE := 64k
   IMAGE_SIZE := 15104k
   DEVICE_VENDOR := MediaTek
@@ -449,7 +419,6 @@ endef
 TARGET_DEVICES += mediatek_mt7621-eval-board
 
 define Device/MikroTik
-  SOC := mt7621
   DEVICE_VENDOR := MikroTik
   BLOCKSIZE := 64k
   IMAGE_SIZE := 16128k
@@ -483,7 +452,6 @@ endef
 TARGET_DEVICES += mikrotik_rbm33g
 
 define Device/mqmaker_witi
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := MQmaker
   DEVICE_MODEL := WiTi
@@ -494,7 +462,6 @@ endef
 TARGET_DEVICES += mqmaker_witi
 
 define Device/mtc_wr1201
-  SOC := mt7621
   IMAGE_SIZE := 16000k
   DEVICE_VENDOR := MTC
   DEVICE_MODEL := Wireless Router WR1201
@@ -505,7 +472,6 @@ endef
 TARGET_DEVICES += mtc_wr1201
 
 define Device/netgear_ex6150
-  SOC := mt7621
   DEVICE_VENDOR := NETGEAR
   DEVICE_MODEL := EX6150
   DEVICE_PACKAGES := kmod-mt76x2 wpad-basic
@@ -518,7 +484,6 @@ endef
 TARGET_DEVICES += netgear_ex6150
 
 define Device/netgear_sercomm_nand
-  SOC := mt7621
   BLOCKSIZE := 128k
   PAGESIZE := 2048
   KERNEL_SIZE := 4096k
@@ -586,7 +551,6 @@ endef
 TARGET_DEVICES += netgear_r6850
 
 define Device/netgear_wndr3700-v5
-  SOC := mt7621
   BLOCKSIZE := 64k
   IMAGE_SIZE := 15232k
   SERCOMM_HWID := AYB
@@ -610,7 +574,6 @@ endef
 TARGET_DEVICES += netgear_wndr3700-v5
 
 define Device/netis_wf-2881
-  SOC := mt7621
   BLOCKSIZE := 128k
   PAGESIZE := 2048
   FILESYSTEMS := squashfs
@@ -627,7 +590,6 @@ endef
 TARGET_DEVICES += netis_wf-2881
 
 define Device/phicomm_k2p
-  SOC := mt7621
   IMAGE_SIZE := 15744k
   DEVICE_VENDOR := Phicomm
   DEVICE_MODEL := K2P
@@ -639,7 +601,6 @@ endef
 TARGET_DEVICES += phicomm_k2p
 
 define Device/planex_vr500
-  SOC := mt7621
   IMAGE_SIZE := 65216k
   DEVICE_VENDOR := Planex
   DEVICE_MODEL := VR500
@@ -649,7 +610,6 @@ endef
 TARGET_DEVICES += planex_vr500
 
 define Device/samknows_whitebox-v8
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := SamKnows
   DEVICE_MODEL := Whitebox 8
@@ -660,7 +620,6 @@ endef
 TARGET_DEVICES += samknows_whitebox-v8
 
 define Device/storylink_sap-g3200u3
-  SOC := mt7621
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := STORYLiNK
   DEVICE_MODEL := SAP-G3200U3
@@ -670,7 +629,6 @@ endef
 TARGET_DEVICES += storylink_sap-g3200u3
 
 define Device/telco-electronics_x1
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Telco Electronics
   DEVICE_MODEL := X1
@@ -679,7 +637,6 @@ endef
 TARGET_DEVICES += telco-electronics_x1
 
 define Device/thunder_timecloud
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Thunder
   DEVICE_MODEL := Timecloud
@@ -689,7 +646,6 @@ endef
 TARGET_DEVICES += thunder_timecloud
 
 define Device/totolink_a7000r
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   UIMAGE_NAME := C8340R1C-9999
   DEVICE_VENDOR := TOTOLINK
@@ -699,7 +655,6 @@ endef
 TARGET_DEVICES += totolink_a7000r
 
 define Device/adslr_g7
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := ADSLR
   DEVICE_MODEL := G7
@@ -708,7 +663,6 @@ endef
 TARGET_DEVICES += adslr_g7
 
 define Device/tplink-safeloader
-  SOC := mt7621
   DEVICE_VENDOR := TP-Link
   TPLINK_BOARD_ID :=
   TPLINK_HWID := 0x0
@@ -743,7 +697,6 @@ endef
 TARGET_DEVICES += tplink_re650-v1
 
 define Device/ubiquiti_edgerouterx
-  SOC := mt7621
   IMAGE_SIZE := 256768k
   FILESYSTEMS := squashfs
   KERNEL_SIZE := 3145728
@@ -766,7 +719,6 @@ endef
 TARGET_DEVICES += ubiquiti_edgerouterx-sfp
 
 define Device/unielec_u7621-06-16m
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := UniElec
   DEVICE_MODEL := U7621-06
@@ -777,7 +729,6 @@ endef
 TARGET_DEVICES += unielec_u7621-06-16m
 
 define Device/unielec_u7621-06-64m
-  SOC := mt7621
   IMAGE_SIZE := 65216k
   DEVICE_VENDOR := UniElec
   DEVICE_MODEL := U7621-06
@@ -788,7 +739,6 @@ endef
 TARGET_DEVICES += unielec_u7621-06-64m
 
 define Device/wevo_11acnas
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   UIMAGE_NAME := 11AC-NAS-Router(0.0.0)
   DEVICE_VENDOR := WeVO
@@ -800,7 +750,6 @@ endef
 TARGET_DEVICES += wevo_11acnas
 
 define Device/wevo_w2914ns-v2
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   UIMAGE_NAME := W2914NS-V2(0.0.0)
   DEVICE_VENDOR := WeVO
@@ -813,7 +762,6 @@ endef
 TARGET_DEVICES += wevo_w2914ns-v2
 
 define Device/xiaomi_mir3g
-  SOC := mt7621
   BLOCKSIZE := 128k
   PAGESIZE := 2048
   KERNEL_SIZE := 4096k
@@ -833,7 +781,6 @@ endef
 TARGET_DEVICES += xiaomi_mir3g
 
 define Device/xiaomi_mir3g-v2
-  SOC := mt7621
   IMAGE_SIZE := 14848k
   DEVICE_VENDOR := Xiaomi
   DEVICE_MODEL := Mi Router 3G
@@ -846,7 +793,6 @@ endef
 TARGET_DEVICES += xiaomi_mir3g-v2
 
 define Device/xiaomi_mir3p
-  SOC := mt7621
   BLOCKSIZE := 128k
   PAGESIZE := 2048
   KERNEL_SIZE:= 4096k
@@ -864,7 +810,6 @@ endef
 TARGET_DEVICES += xiaomi_mir3p
 
 define Device/xiaoyu_xy-c5
-  SOC := mt7621
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := XiaoYu
   DEVICE_MODEL := XY-C5
@@ -873,7 +818,6 @@ endef
 TARGET_DEVICES += xiaoyu_xy-c5
 
 define Device/xzwifi_creativebox-v1
-  SOC := mt7621
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := CreativeBox
   DEVICE_MODEL := v1
@@ -883,7 +827,6 @@ endef
 TARGET_DEVICES += xzwifi_creativebox-v1
 
 define Device/youhua_wr1200js
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := YouHua
   DEVICE_MODEL := WR1200JS
@@ -893,7 +836,6 @@ endef
 TARGET_DEVICES += youhua_wr1200js
 
 define Device/youku_yk-l2
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Youku
   DEVICE_MODEL := YK-L2
@@ -903,7 +845,6 @@ endef
 TARGET_DEVICES += youku_yk-l2
 
 define Device/zbtlink_zbt-we1326
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WE1326
@@ -914,7 +855,6 @@ endef
 TARGET_DEVICES += zbtlink_zbt-we1326
 
 define Device/zbtlink_zbt-we3526
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WE3526
@@ -924,7 +864,6 @@ endef
 TARGET_DEVICES += zbtlink_zbt-we3526
 
 define Device/zbtlink_zbt-wg2626
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WG2626
@@ -935,7 +874,6 @@ endef
 TARGET_DEVICES += zbtlink_zbt-wg2626
 
 define Device/zbtlink_zbt-wg3526-16m
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WG3526
@@ -947,7 +885,6 @@ endef
 TARGET_DEVICES += zbtlink_zbt-wg3526-16m
 
 define Device/zbtlink_zbt-wg3526-32m
-  SOC := mt7621
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WG3526
@@ -959,7 +896,6 @@ endef
 TARGET_DEVICES += zbtlink_zbt-wg3526-32m
 
 define Device/zio_freezio
-  SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := ZIO
   DEVICE_MODEL := FREEZIO
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index fe08c77c13..a709a1ee88 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -2,8 +2,9 @@
 # MT76x8 Profiles
 #
 
+COMMON_SOC := mt7628an
+
 define Device/alfa-network_awusfree1
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := ALFA Network
   DEVICE_MODEL := AWUSFREE1
@@ -12,7 +13,6 @@ endef
 TARGET_DEVICES += alfa-network_awusfree1
 
 define Device/buffalo_wcr-1166ds
-  SOC := mt7628an
   IMAGE_SIZE := 7936k
   BUFFALO_TAG_PLATFORM := MTK
   BUFFALO_TAG_VERSION := 9.99
@@ -30,7 +30,6 @@ endef
 TARGET_DEVICES += buffalo_wcr-1166ds
 
 define Device/cudy_wr1000
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   IMAGES += factory.bin
   IMAGE/factory.bin := $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | \
@@ -44,7 +43,6 @@ endef
 TARGET_DEVICES += cudy_wr1000
 
 define Device/d-team_pbr-d1
-  SOC := mt7628an
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := PandoraBox
   DEVICE_MODEL := PBR-D1
@@ -54,7 +52,6 @@ endef
 TARGET_DEVICES += d-team_pbr-d1
 
 define Device/duzun_dm06
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := DuZun
   DEVICE_MODEL := DM06
@@ -64,7 +61,6 @@ endef
 TARGET_DEVICES += duzun_dm06
 
 define Device/glinet_gl-mt300n-v2
-  SOC := mt7628an
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := GL.iNet
   DEVICE_MODEL := GL-MT300N
@@ -75,7 +71,6 @@ endef
 TARGET_DEVICES += glinet_gl-mt300n-v2
 
 define Device/glinet_vixmini
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := GL.iNet
   DEVICE_MODEL := VIXMINI
@@ -84,7 +79,6 @@ endef
 TARGET_DEVICES += glinet_vixmini
 
 define Device/hilink_hlk-7628n
-  SOC := mt7628an
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := HILINK
   DEVICE_MODEL := HLK-7628N
@@ -92,7 +86,6 @@ endef
 TARGET_DEVICES += hilink_hlk-7628n
 
 define Device/hiwifi_hc5661a
-  SOC := mt7628an
   IMAGE_SIZE := 15808k
   DEVICE_VENDOR := HiWiFi
   DEVICE_MODEL := HC5661A
@@ -101,7 +94,6 @@ endef
 TARGET_DEVICES += hiwifi_hc5661a
 
 define Device/hiwifi_hc5761a
-  SOC := mt7628an
   IMAGE_SIZE := 15808k
   DEVICE_VENDOR := HiWiFi
   DEVICE_MODEL := HC5761A
@@ -110,7 +102,6 @@ endef
 TARGET_DEVICES += hiwifi_hc5761a
 
 define Device/hiwifi_hc5861b
-  SOC := mt7628an
   IMAGE_SIZE := 15808k
   DEVICE_VENDOR := HiWiFi
   DEVICE_MODEL := HC5861B
@@ -119,7 +110,6 @@ endef
 TARGET_DEVICES += hiwifi_hc5861b
 
 define Device/iptime_a3
-  SOC := mt7628an
   IMAGE_SIZE := 7936k
   UIMAGE_NAME := a3
   DEVICE_VENDOR := ipTIME
@@ -129,7 +119,6 @@ endef
 TARGET_DEVICES += iptime_a3
 
 define Device/iptime_a604m
-  SOC := mt7628an
   IMAGE_SIZE := 7936k
   UIMAGE_NAME := a604m
   DEVICE_VENDOR := ipTIME
@@ -139,7 +128,6 @@ endef
 TARGET_DEVICES += iptime_a604m
 
 define Device/mediatek_linkit-smart-7688
-  SOC := mt7628an
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := MediaTek
   DEVICE_MODEL := LinkIt Smart 7688
@@ -149,7 +137,6 @@ endef
 TARGET_DEVICES += mediatek_linkit-smart-7688
 
 define Device/mediatek_mt7628an-eval-board
-  SOC := mt7628an
   BLOCKSIZE := 64k
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := MediaTek
@@ -160,7 +147,6 @@ endef
 TARGET_DEVICES += mediatek_mt7628an-eval-board
 
 define Device/mercury_mac1200r-v2
-  SOC := mt7628an
   IMAGE_SIZE := 7936k
   DEVICE_VENDOR := Mercury
   DEVICE_MODEL := MAC1200R
@@ -172,7 +158,6 @@ endef
 TARGET_DEVICES += mercury_mac1200r-v2
 
 define Device/netgear_r6120
-  SOC := mt7628an
   BLOCKSIZE := 64k
   IMAGE_SIZE := 15744k
   DEVICE_VENDOR := NETGEAR
@@ -193,7 +178,6 @@ endef
 TARGET_DEVICES += netgear_r6120
 
 define Device/onion_omega2
-  SOC := mt7628an
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Onion
   DEVICE_MODEL := Omega2
@@ -203,7 +187,6 @@ endef
 TARGET_DEVICES += onion_omega2
 
 define Device/onion_omega2p
-  SOC := mt7628an
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := Onion
   DEVICE_MODEL := Omega2+
@@ -213,7 +196,6 @@ endef
 TARGET_DEVICES += onion_omega2p
 
 define Device/rakwireless_rak633
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := Rakwireless
   DEVICE_MODEL := RAK633
@@ -222,7 +204,6 @@ endef
 TARGET_DEVICES += rakwireless_rak633
 
 define Device/skylab_skw92a
-  SOC := mt7628an
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Skylab
   DEVICE_MODEL := SKW92A
@@ -231,7 +212,6 @@ endef
 TARGET_DEVICES += skylab_skw92a
 
 define Device/tama_w06
-  SOC := mt7628an
   IMAGE_SIZE := 15040k
   DEVICE_VENDOR := Tama
   DEVICE_MODEL := W06
@@ -240,7 +220,6 @@ endef
 TARGET_DEVICES += tama_w06
 
 define Device/totolink_lr1200
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := TOTOLINK
   DEVICE_MODEL := LR1200
@@ -249,7 +228,6 @@ endef
 TARGET_DEVICES += totolink_lr1200
 
 define Device/tplink
-  SOC := mt7628an
   DEVICE_VENDOR := TP-Link
   TPLINK_FLASHLAYOUT :=
   TPLINK_HWID :=
@@ -268,7 +246,6 @@ DEVICE_VARS += TPLINK_FLASHLAYOUT TPLINK_HWID TPLINK_HWREV TPLINK_HWREVADD
 DEVICE_VARS += TPLINK_HVERSION
 
 define Device/tplink-safeloader
-  SOC := mt7628an
   DEVICE_VENDOR := TP-Link
   TPLINK_BOARD_ID :=
   TPLINK_HWID := 0x0
@@ -421,7 +398,6 @@ endef
 TARGET_DEVICES += tplink_tl-wr840n-v4
 
 define Device/tplink_tl-wr840n-v5
-  SOC := mt7628an
   IMAGE_SIZE := 3904k
   DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := TL-WR840N
@@ -497,7 +473,6 @@ endef
 TARGET_DEVICES += tplink_tl-wr902ac-v3
 
 define Device/unielec_u7628-01-16m
-  SOC := mt7628an
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := UniElec
   DEVICE_MODEL := U7628-01
@@ -508,7 +483,6 @@ endef
 TARGET_DEVICES += unielec_u7628-01-16m
 
 define Device/vocore_vocore2
-  SOC := mt7628an
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := VoCore
   DEVICE_MODEL := VoCore2
@@ -519,7 +493,6 @@ endef
 TARGET_DEVICES += vocore_vocore2
 
 define Device/vocore_vocore2-lite
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := VoCore
   DEVICE_MODEL := VoCore2-Lite
@@ -530,7 +503,6 @@ endef
 TARGET_DEVICES += vocore_vocore2-lite
 
 define Device/wavlink_wl-wn570ha1
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := Wavlink
   DEVICE_MODEL := WL-WN570HA1
@@ -539,7 +511,6 @@ endef
 TARGET_DEVICES += wavlink_wl-wn570ha1
 
 define Device/wavlink_wl-wn575a3
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := Wavlink
   DEVICE_MODEL := WL-WN575A3
@@ -549,7 +520,6 @@ endef
 TARGET_DEVICES += wavlink_wl-wn575a3
 
 define Device/widora_neo-16m
-  SOC := mt7628an
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Widora
   DEVICE_MODEL := Widora-NEO
@@ -560,7 +530,6 @@ endef
 TARGET_DEVICES += widora_neo-16m
 
 define Device/widora_neo-32m
-  SOC := mt7628an
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := Widora
   DEVICE_MODEL := Widora-NEO
@@ -570,7 +539,6 @@ endef
 TARGET_DEVICES += widora_neo-32m
 
 define Device/wiznet_wizfi630s
-  SOC := mt7628an
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := WIZnet
   DEVICE_MODEL := WizFi630S
@@ -578,7 +546,6 @@ endef
 TARGET_DEVICES += wiznet_wizfi630s
 
 define Device/wrtnode_wrtnode2p
-  SOC := mt7628an
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := WRTnode
   DEVICE_MODEL := WRTnode 2P
@@ -588,7 +555,6 @@ endef
 TARGET_DEVICES += wrtnode_wrtnode2p
 
 define Device/wrtnode_wrtnode2r
-  SOC := mt7628an
   IMAGE_SIZE := 32448k
   DEVICE_VENDOR := WRTnode
   DEVICE_MODEL := WRTnode 2R
@@ -598,7 +564,6 @@ endef
 TARGET_DEVICES += wrtnode_wrtnode2r
 
 define Device/xiaomi_mir4a-100m
-  SOC := mt7628an
   IMAGE_SIZE := 14976k
   DEVICE_VENDOR := Xiaomi
   DEVICE_MODEL := Mi Router 4A
@@ -608,7 +573,6 @@ endef
 TARGET_DEVICES += xiaomi_mir4a-100m
 
 define Device/xiaomi_miwifi-nano
-  SOC := mt7628an
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Xiaomi
   DEVICE_MODEL := MiWiFi Nano
@@ -618,7 +582,6 @@ endef
 TARGET_DEVICES += xiaomi_miwifi-nano
 
 define Device/zbtlink_zbt-we1226
-  SOC := mt7628an
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WE1226
@@ -626,7 +589,6 @@ endef
 TARGET_DEVICES += zbtlink_zbt-we1226
 
 define Device/zyxel_keenetic-extra-ii
-  SOC := mt7628an
   IMAGE_SIZE := 14912k
   BLOCKSIZE := 64k
   DEVICE_VENDOR := ZyXEL
diff --git a/target/linux/ramips/image/rt288x.mk b/target/linux/ramips/image/rt288x.mk
index 1b4880682a..ee4e555fdc 100644
--- a/target/linux/ramips/image/rt288x.mk
+++ b/target/linux/ramips/image/rt288x.mk
@@ -2,6 +2,8 @@
 # RT288X Profiles
 #
 
+COMMON_SOC := rt2880
+
 define Build/gemtek-header
 	if [ -f $@ ]; then \
 		mkheader_gemtek $@ $@.new $(1) && \
@@ -10,7 +12,6 @@ define Build/gemtek-header
 endef
 
 define Device/airlink101_ar670w
-  SOC := rt2880
   BLOCKSIZE := 64k
   DEVICE_VENDOR := Airlink
   DEVICE_MODEL := AR670W
@@ -24,7 +25,6 @@ endef
 TARGET_DEVICES += airlink101_ar670w
 
 define Device/airlink101_ar725w
-  SOC := rt2880
   IMAGE_SIZE := 3776k
   DEVICE_VENDOR := Airlink
   DEVICE_MODEL := AR725W
@@ -36,7 +36,6 @@ endef
 TARGET_DEVICES += airlink101_ar725w
 
 define Device/asus_rt-n15
-  SOC := rt2880
   BLOCKSIZE := 64k
   IMAGE_SIZE := 3776k
   DEVICE_VENDOR := Asus
@@ -47,7 +46,6 @@ endef
 TARGET_DEVICES += asus_rt-n15
 
 define Device/belkin_f5d8235-v1
-  SOC := rt2880
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := Belkin
   DEVICE_MODEL := F5D8235
@@ -59,7 +57,6 @@ endef
 TARGET_DEVICES += belkin_f5d8235-v1
 
 define Device/buffalo_wli-tx4-ag300n
-  SOC := rt2880
   BLOCKSIZE := 64k
   IMAGE_SIZE := 3776k
   DEVICE_VENDOR := Buffalo
@@ -70,7 +67,6 @@ endef
 TARGET_DEVICES += buffalo_wli-tx4-ag300n
 
 define Device/buffalo_wzr-agl300nh
-  SOC := rt2880
   BLOCKSIZE := 64k
   IMAGE_SIZE := 3776k
   DEVICE_VENDOR := Buffalo
@@ -81,7 +77,6 @@ endef
 TARGET_DEVICES += buffalo_wzr-agl300nh
 
 define Device/dlink_dap-1522-a1
-  SOC := rt2880
   BLOCKSIZE := 64k
   IMAGE_SIZE := 3712k
   DEVICE_VENDOR := D-Link
@@ -97,7 +92,6 @@ endef
 TARGET_DEVICES += dlink_dap-1522-a1
 
 define Device/ralink_v11st-fe
-  SOC := rt2880
   BLOCKSIZE := 64k
   IMAGE_SIZE := 3776k
   DEVICE_VENDOR := Ralink
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
