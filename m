Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB09CD68C
	for <lists+openwrt-devel@lfdr.de>; Sun,  6 Oct 2019 19:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SIrxj8s1fSQBPilhoKyqfXfx3yORR5GzjDtUlE1vNLw=; b=dsv/hq9VpKhXc9
	uUVuWLl5F0l5vDxFsBXT8InDik+nEDIVQW4fkUDIShlS45c+IbGxxHMPfvQAVKdALXZHHE/gCgpS/
	UDpjsbplJNXXg4jabpUwb9Vg4gvZfnkoCO1nMn/Ow73r7LzneAKR1tGaIIRfReOk9SRdczKKKzME3
	PmjS90rnFMOZKiqLHNRx20AeRkDPOLdAsWis1YzzLmaOcfqFYDdZPOd26P7iStUgA6cxwbD42GA5u
	gu3k+vmmf7JPnjoOyo8/beGyE7CL8nSBdM1RHDhIh7qbwQ/OFTrYRyn/67U85tHcrfVN7qKe69kz8
	xBZ0w6OvUPONMyGv364A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHAf3-0000Yq-17; Sun, 06 Oct 2019 17:49:37 +0000
Received: from l5m.de ([84.200.74.160])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHAev-0000Y2-Ho
 for openwrt-devel@lists.openwrt.org; Sun, 06 Oct 2019 17:49:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by l5m.de (Postfix) with ESMTP id 94582107A7A
 for <openwrt-devel@lists.openwrt.org>; Sun,  6 Oct 2019 19:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 andreas-ziegler.de; h=content-transfer-encoding:mime-version
 :x-mailer:message-id:date:date:subject:subject:from:from
 :received:received; s=default; t=1570384139; bh=TeV8UUh71fcmFXcd
 vRqHrAmCeNiXPq4SpeB4qAwPnDg=; b=kWqZIA2v8h8Km2cZDRgt5VvjTTFtkpK4
 Bzujk8+5VeiMc87ZoGj1KUVH2iYppKFqTTPu4IsEl8dVQohxqvgrh8ovcc3Oq9Gt
 hM854OJn1xUtOJx575oNB+9GA9YdABW+cY4o+SADspTXRMin5aaUxXgmXWUjnFKw
 EFzhCH7+y3Y=
X-Virus-Scanned: Debian amavisd-new at l5m.de
Received: from l5m.de ([127.0.0.1])
 by localhost (l5m.de [127.0.0.1]) (amavisd-new, port 10024) with ESMTP
 id w4ZstYWxKs79 for <openwrt-devel@lists.openwrt.org>;
 Sun,  6 Oct 2019 19:48:59 +0200 (CEST)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:c22:7a3d:ae00:5461:46f6:252b:c661])
 by l5m.de (Postfix) with ESMTPSA id BF036107A5B
 for <openwrt-devel@lists.openwrt.org>; Sun,  6 Oct 2019 19:48:59 +0200 (CEST)
From: Andreas Ziegler <dev@andreas-ziegler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  6 Oct 2019 19:48:34 +0200
Message-Id: <20191006174834.3398181-1-dev@andreas-ziegler.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_104930_025573_5FF2C5B5 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for UniFi AC-LR
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

The Unifi AC-LR has identical hardware to the Unifi AC-Lite.
The antenna setup is different according to the vendor,
which explains the thicker enclosure.
Therefore, it is helpful to know the exact device variant,
instead of having "Ubiquiti UniFi-AC-LITE/MESH".

Signed-off-by: Andreas Ziegler <dev@andreas-ziegler.de>
---
 target/linux/ath79/base-files/etc/board.d/02_network     | 1 +
 .../base-files/etc/hotplug.d/firmware/11-ath10k-caldata  | 1 +
 target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts       | 9 +++++++++
 target/linux/ath79/image/generic-ubnt.mk                 | 7 +++++++
 4 files changed, 18 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 0de17adb9d..fe74bddbf1 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -50,6 +50,7 @@ ath79_setup_interfaces()
 	ubnt,nanostation-ac-loco|\
 	ubnt,rocket-m|\
 	ubnt,unifiac-lite|\
+	ubnt,unifiac-lr|\
 	ubnt,unifiac-mesh|\
 	ubnt,unifi|\
 	wd,mynet-wifi-rangeextender|\
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 446b729a2b..ba39cb3981 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -179,6 +179,7 @@ case "$FIRMWARE" in
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
 		;;
 	ubnt,unifiac-lite|\
+	ubnt,unifiac-lr|\
 	ubnt,unifiac-mesh|\
 	ubnt,unifiac-mesh-pro|\
 	ubnt,lap-120|\
diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
new file mode 100644
index 0000000000..a1e542ada6
--- /dev/null
+++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lr.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "qca9563_ubnt_unifiac-lite.dtsi"
+
+/ {
+	compatible = "ubnt,unifiac-lr", "qca,qca9563";
+	model = "Ubiquiti UniFi-AC-LR";
+};
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 4b2cee215c..13af092ee3 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -225,6 +225,13 @@ define Device/ubnt_unifiac-lite
 endef
 TARGET_DEVICES += ubnt_unifiac-lite
 
+define Device/ubnt_unifiac-lr
+  $(Device/ubnt_unifiac)
+  DEVICE_MODEL := UniFi AC-LR
+  SUPPORTED_DEVICES += unifiac-lite
+endef
+TARGET_DEVICES += ubnt_unifiac-lr
+
 define Device/ubnt_unifiac-mesh
   $(Device/ubnt_unifiac)
   DEVICE_MODEL := UniFi AC-Mesh
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
