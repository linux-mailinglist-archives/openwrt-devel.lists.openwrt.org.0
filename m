Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99624BDDCF
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 14:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E9U2tKTvR8wHa+j4HlOHB12Gv5XtqZ7uPNLCzMzQIk4=; b=ukteOGrjp6J/1o
	TpTAOfBa5sYr4B7kA0BFgtEjmBVwj+gLYJLIkyZ1+AQlLrVtGbkEtq1uEAxI5+VQ+ko0GMyOJCQcl
	dACkPsOrqch0D1uUk1VGTUZq4ynxfC9EjDqbhjn1/6YIV0iEKcv5ZOcpDdIkdK65HDJTQsYv58w1x
	qaReMXrAjOem1PRoELkFx7KvEDP/5jJYRbuyw1oHpxp84PW0cuvkrrc1qzeewJ+CoOA1WkiZUwm8v
	zXWdqpHNLr15fLAh6NCQEPompl2vbSaWhW4zemKUaqJmFbvum2Aw0fa5aLOreu4tRnGVXQDsfr+ji
	erNp0grNyxtpI/ItlnDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD68I-0001Ji-IV; Wed, 25 Sep 2019 12:10:58 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD67z-0001JO-Pd
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 12:10:41 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M58vU-1iECab3fd6-001BaH for <openwrt-devel@lists.openwrt.org>; Wed, 25
 Sep 2019 14:10:33 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Sep 2019 14:10:29 +0200
Message-Id: <20190925121029.1942-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:LTPHew0TwTEhq8cvw0r/OV2Rq5w50hTzwWuDQ3oDBroqYp79jvB
 AG2CESZxjXnepXv1B2pd65UT6ydAyLLQDUMZBGMpn4qtIfMEGNkroiwQd0hl8XISZMb3zx5
 rSxK5Bh23ExCGUyTWjRyHuxDcJbYxywTdAc7CrN+sBvwnzeOMOu/1oZKO/eFvQgd9Yf12bp
 qtEUN50B9A3ovEcdqtqhg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JxhWFJku7so=:Q3cdldKHhp1GRz5v2XZ0E5
 1at03ZGaI3Dt5+JfL/uZ5UGf0OmWh5PKWWFH6PA3NdMf+FApI0SNBgErNUzNvmWqCWLNEHQUM
 C6CSsjaIfngS8Iu8lDzZIZUjNYHzuSaTvMnRKYhmxmkE1JsjiBKxuTij9RcdIQBIyc5bGG/a6
 Y6Ni0PsOo1mPe5ObeFwdBeIDgGgUjiWygF4gokxi7KAffjf/m9XVCCzUyRHCVLm223Jq/zvjb
 zaDB8P2/YflNn9fzBFneWcpjtfPGeWVglqfX/aq/EaC2UNbmPOhWeIcEx/CjXMoj803OoRKLG
 IGDs7xKiMH/WJkkOjpIpsq1KaEj4KVuLEpD/nNs0LzxeD2QiTYY7Tu2yl6yChuu3uH6bkFS6N
 bIbzpcF12huCBExYBhnWg+JBtMym5Cabo56CcrXTjje1Z7rHVD9Y8NtSEwl1SXYgN3p9vkQLm
 /gN5mxZPIhBwhSaoo/9gJ1YUkL2fE8rTrAh5xT6TOfnyXQL+1CJgVH17bC1+AooLzS4gUwdfh
 l4TvLU9yxM04UCAf4aPBN5Sumw6jsDqAkwDUA/IyLC2hJRLJUJHvdlR9eE1uvv7bWSedQ5an3
 Mtwc45dD4+i1FGolaXvrz9Bs9B34tjSLtGt2pUIHPFxZXqes34KKnl4Az3mgANfiCyc+73mAd
 4lOjmgRK7sWxHf4ns/AV+u3y2qSLRO69Pq2OBPmN1n7w8QN7IVZzy9vQj9W8ezQi2Y5Y0dt0w
 W/1qdVSfJZujfB+H6sjCKb/Wjdf9TL4iwbTjUwyqkg25QZuI4Q7c/9YreeP58HEqEVyvdwoq/
 otoy+9IOMaImnccx7wUkQDtPOPvtAUGZLnrQP6+RZTfJqQxFjyNCIMgWkpctxrK0TQmha7/NS
 oixPU/ZjYDStsPCaj0U2AbIIeQNCI+0EXhicW7tRU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_051040_130038_9AC6BEE2 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: harmonize device vendor Zbtlink
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
