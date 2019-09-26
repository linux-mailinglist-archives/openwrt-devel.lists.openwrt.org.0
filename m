Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684A6BF33F
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 14:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JpS6SGu7/dTPnIhbNj44VZZgTMKVjZHIU47T1KsUuEc=; b=aW/HaQHRYrwgQ6
	H2ldJsDAigHFLPNl/YWwrW4nD3b3XMGaUWVI6Y9CWUL8NS0WOVZJ3aEBvmI+8VrWlTdMwlNhXNMkr
	VyKyLW3HvDzjPTZJPGnUiciBDvCHW6Fo7HWxVPd/vQz3PF4CJPOi6jcRpef/ziftLegDvmaILz+vv
	ESp197v1j3OXQO7SspHT5PjvBtVR/uP7r2Q8BpwPK8VMDTGKCmDJxaZR5lGBCo2OfpgLzd688DN6W
	TM3ZPBsknYLQHAkqrJ78mhXuwNdd0bbpabsSVIl7wU0NDzTQbe9AmEmagsFvLcqP4PaAvra31uTC1
	yQA6m4QJEQLObSc7+/WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDT8R-0003bL-3m; Thu, 26 Sep 2019 12:44:39 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDT8K-0003ag-QA
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 12:44:34 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MkpjD-1hkR1x43Jf-00mIW3 for <openwrt-devel@lists.openwrt.org>; Thu, 26
 Sep 2019 14:44:27 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Sep 2019 14:44:22 +0200
Message-Id: <20190926124423.35613-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:DAUIIE++HnN1WWUvEEJWOsqFroxeUmshtVsHzNjka540dgKhUuV
 ajFayGg5ToC8002og6OijombN2QSqAr/tm68us86XVE2YxtO7yvIs8nSdEITlP7klcmimQD
 EV/IDnStmOBL9qgWrrAi5prJpstIKB9UHnJDnY2eCK4KRy7eJXXLJChBebkr3Q/BiDlAI+i
 8rPfQ0iYtSgMWEToIQj6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nxK6MrZO+vc=:dFZ6vt41+mn0ULN/XCeuwH
 FHdxX3nZy8VRiTLDIZfirbrL1uM0ukNVgg4mKCg4MbGquhiBWFnzbEm0uvKmrmju9ceQMHW8R
 A+L+K1H6OS/w3tR8zfMZbynnPiFiGxA97RGhv7gPq9/tOlza2P4NywWn/fXjCAtrVKqUXGFv1
 5+8UdupvhUCrYEAkHMbsB9zBhiBytHrbelwDawwBzhWiaUXiOG720BX12prFFfE2QwaYqWW4n
 3ftnproF1P9tggg2JagIGonrX9vVgXr81WAQUYeEyPGMo2PIPMxuofxvQ5G/o3fVtiXlxboWI
 aUwwJYQ27t5rPOQpyucPHXSC5yFgBRl0Z+pDzNBmupajkJTOKhDR5I8vk+OVemAG975jJ569I
 0BzyvKAt0MZjvpZ1OzngOKnTMMeYbFpxUgDvhGcx1pTkyJ7DvEJldWUitRWJxlv7/JpH/ni0s
 SYNYGcZcqd9ghVy0gznOP1Nh7uvY8qKwSAfqFqRMrZzqhp4oUV/4S5I6rPdWyIXw4xhLZrr2h
 FxjkQmpTrLxaz9iNdPDjnNj+bvFa/uopWZ840HEmllU32GZhTOxnJyMGmiWYE1UWw63YN1lOv
 7IFoYrer3vCaQWjzXF3oa4G0Hxy5b9+P4cB3/mk8mLA4/ngZlEI7iEZWrpseDpNfSQA0zaf/H
 /IQByxw22pWBMh/38Jz5zYXmbFPRAcxLllBl2aXwXTD5r6Kxm+1rsDHu6s3q8mJupmkMV7+H6
 UbwTH3q0j1A+2U7CreDjffTPp+Ze7KTolkROCNlLyoWNFdumd9USZuMInbWG2fkarG6Mghzfe
 szlmazmlcojIXoMeIFY0o7JXfg2nxIbaOsGvWNyvv4zaAJdBp0O1ciVoIsL8UWV2A+HmBKe5E
 VeXbZv1IgCqZCb+IGCWUL4TSc2Q5y3ueA1F/CsYZk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_054433_144254_67430795 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH v2 1/2] ramips: harmonize device vendor
 Zbtlink
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

Spelling of Zbtlink varies across image definitions and DTS files.

This patch uses Zbtlink consistently and also updates the model
in DTS files to contain the vendor in all cases.

This patch is cosmetical, as there should be no dependencies on
device model name in ramips anymore.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v2: No changes, just added second patch
---
 .../linux/ramips/dts/mt7620a_zbtlink_we1026-5g-16m.dts |  2 +-
 .../linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts  |  2 +-
 .../linux/ramips/dts/mt7620a_zbtlink_zbt-we826-16m.dts |  2 +-
 .../linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts |  2 +-
 .../linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts   |  2 +-
 target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts  |  2 +-
 target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts  |  2 +-
 target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts  |  2 +-
 .../linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-16m.dts |  2 +-
 .../linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-32m.dts |  2 +-
 target/linux/ramips/image/mt7621.mk                    | 10 +++++-----
 target/linux/ramips/image/mt76x8.mk                    |  2 +-
 12 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g-16m.dts b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g-16m.dts
index e2eb5b6329..a05e8d4b47 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g-16m.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g-16m.dts
@@ -37,7 +37,7 @@
 
 / {
 	compatible = "zbtlink,we1026-5g-16m", "ralink,mt7620a-soc";
-	model = "ZBT WE1026-5G (16M)";
+	model = "Zbtlink ZBT-WE1026-5G (16M)";
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts
index 70ad0f0b58..665dd5ba3c 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts
@@ -7,7 +7,7 @@
 
 / {
 	compatible = "zbtlink,zbt-ape522ii", "ralink,mt7620a-soc";
-	model = "ZBT-APE522II";
+	model = "Zbtlink ZBT-APE522II";
 
 	chosen {
 		bootargs = "console=ttyS0,115200";
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-16m.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-16m.dts
index 7f2b2646b2..d115b8a096 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-16m.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-16m.dts
@@ -4,7 +4,7 @@
 
 / {
 	compatible = "zbtlink,zbt-we826-16m", "zbtlink,zbt-we826", "ralink,mt7620a-soc";
-	model = "ZBT-WE826 (16M)";
+	model = "Zbtlink ZBT-WE826 (16M)";
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts
index e7cdcab5e9..94a67dd5de 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts
@@ -4,7 +4,7 @@
 
 / {
 	compatible = "zbtlink,zbt-we826-32m", "zbtlink,zbt-we826", "ralink,mt7620a-soc";
-	model = "ZBT-WE826 (32M)";
+	model = "Zbtlink ZBT-WE826 (32M)";
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts
index 243126125b..2496a16a29 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts
@@ -5,7 +5,7 @@
 
 / {
 	compatible = "zbtlink,zbt-we826-e", "zbtlink,zbt-we826", "ralink,mt7620a-soc";
-	model = "ZBT-WE826-E";
+	model = "Zbtlink ZBT-WE826-E";
 
 	/delete-node/ leds;
 
diff --git a/target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts b/target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts
index 819c851c73..d7c48c6d9f 100644
--- a/target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts
+++ b/target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts
@@ -7,7 +7,7 @@
 
 / {
 	compatible = "zbtlink,zbt-we1326", "mediatek,mt7621-soc";
-	model = "ZBT-WE1326";
+	model = "Zbtlink ZBT-WE1326";
 
 	aliases {
 		label-mac-device = &wifi1;
diff --git a/target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts b/target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts
index 7973626fad..b1d3e4e812 100644
--- a/target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts
+++ b/target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts
@@ -7,7 +7,7 @@
 
 / {
 	compatible = "zbtlink,zbt-we3526", "mediatek,mt7621-soc";
-	model = "ZBT-WE3526";
+	model = "Zbtlink ZBT-WE3526";
 
 	chosen {
 		bootargs = "console=ttyS0,115200";
diff --git a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts
index ca2044f73e..1a2a89a31e 100644
--- a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts
+++ b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts
@@ -7,7 +7,7 @@
 
 / {
 	compatible = "zbtlink,zbt-wg2626", "mediatek,mt7621-soc";
-	model = "ZBT-WG2626";
+	model = "Zbtlink ZBT-WG2626";
 
 	aliases {
 		led-boot = &led_status;
diff --git a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-16m.dts b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-16m.dts
index 9bf8b9bdb2..a9bd9180fd 100644
--- a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-16m.dts
+++ b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-16m.dts
@@ -4,7 +4,7 @@
 
 / {
 	compatible = "zbtlink,zbt-wg3526-16m", "zbtlink,zbt-wg3526", "mediatek,mt7621-soc";
-	model = "ZBT-WG3526 (16M)";
+	model = "Zbtlink ZBT-WG3526 (16M)";
 };
 
 &firmware {
diff --git a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-32m.dts b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-32m.dts
index 8e49e48b2b..e7add46d32 100644
--- a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-32m.dts
+++ b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526-32m.dts
@@ -4,7 +4,7 @@
 
 / {
 	compatible = "zbtlink,zbt-wg3526-32m", "zbtlink,zbt-wg3526", "mediatek,mt7621-soc";
-	model = "ZBT-WG3526 (32M)";
+	model = "Zbtlink ZBT-WG3526 (32M)";
 };
 
 &firmware {
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 816652ddaa..582fe3284e 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -805,7 +805,7 @@ TARGET_DEVICES += youku_yk-l2
 define Device/zbtlink_zbt-we1326
   MTK_SOC := mt7621
   IMAGE_SIZE := 16064k
-  DEVICE_VENDOR := ZBT
+  DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WE1326
   DEVICE_PACKAGES := \
 	kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-sdhci-mt7620 wpad-basic
@@ -816,7 +816,7 @@ TARGET_DEVICES += zbtlink_zbt-we1326
 define Device/zbtlink_zbt-we3526
   MTK_SOC := mt7621
   IMAGE_SIZE := 16064k
-  DEVICE_VENDOR := ZBT
+  DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WE3526
   DEVICE_PACKAGES := \
 	kmod-sdhci-mt7620 kmod-mt7603 kmod-mt76x2 \
@@ -827,7 +827,7 @@ TARGET_DEVICES += zbtlink_zbt-we3526
 define Device/zbtlink_zbt-wg2626
   MTK_SOC := mt7621
   IMAGE_SIZE := 16064k
-  DEVICE_VENDOR := ZBT
+  DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WG2626
   DEVICE_PACKAGES := \
 	kmod-ata-core kmod-ata-ahci kmod-sdhci-mt7620 kmod-mt76x2 kmod-usb3 \
@@ -839,7 +839,7 @@ TARGET_DEVICES += zbtlink_zbt-wg2626
 define Device/zbtlink_zbt-wg3526-16m
   MTK_SOC := mt7621
   IMAGE_SIZE := 16064k
-  DEVICE_VENDOR := ZBT
+  DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WG3526
   DEVICE_VARIANT := 16M
   DEVICE_PACKAGES := \
@@ -852,7 +852,7 @@ TARGET_DEVICES += zbtlink_zbt-wg3526-16m
 define Device/zbtlink_zbt-wg3526-32m
   MTK_SOC := mt7621
   IMAGE_SIZE := 32448k
-  DEVICE_VENDOR := ZBT
+  DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WG3526
   DEVICE_VARIANT := 32M
   DEVICE_PACKAGES := \
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 3179adc472..9ab16db064 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -578,7 +578,7 @@ TARGET_DEVICES += xiaomi_miwifi-nano
 define Device/zbtlink_zbt-we1226
   MTK_SOC := mt7628an
   IMAGE_SIZE := 7872k
-  DEVICE_VENDOR := ZBTlink
+  DEVICE_VENDOR := Zbtlink
   DEVICE_MODEL := ZBT-WE1226
 endef
 TARGET_DEVICES += zbtlink_zbt-we1226
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
