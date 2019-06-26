Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5BF56467
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 10:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yUmN+2ZNsIQbQtR7kEBE5VBngg3mCWr+3oC9dGsaqkc=; b=tWuPuBQtA8h8Ki
	7mzT8jKFDx3SrQ1FD2ZK/bGy4ZjlD77oPTKZJxGvcJNb+RH8AXhcP15w4dziVtRV44dDoFJ6pq2qp
	HHvy/2WqiNq2VVm+sNzuGwcipTmaURUu86R62mM/LCg2SrfaHGdmv+vm8qAjDnu+SnT0bwcmCjnuU
	Yu2fwHJ7Z5pHT/ZMi2yaxLUUWZUXPESUnvSneIXqOLsmTr2b5PjZmzZ8/7p81aNUB2Q9vE41iATFB
	xBiUCsqS4gfea6a1BgR25Th7pXujHwQUm5ytFuWePIJBx1dJ3sYtQqIWkRWkdu0EUiUnV6QqSZBC5
	dPOUzHdpBBbYjPBmDEYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg39i-0007fE-TU; Wed, 26 Jun 2019 08:19:50 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg39P-0007eN-NJ
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 08:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=ghgOJ+NnxFqXEF5Ie7v5eCi5cEbi6W96XZHE8CoUAxU=; 
 b=gCvg4I/xypqIHTONR2LJxN5yof6FeHbpEt3CZOyThvcdbn6c90riF81WObg6OEKLzxbK3XrEkecGsNs6dLsOQiMw7mvPtjkPbstIVx8j+QYZldjdRB5VhikpA0kNtMvjQ5nkAVxYruTcA9XZbtXVIhfdKADBA5myVBOwbZnqzm0=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 26 Jun 2019 10:19:23 +0200
Message-Id: <20190626081923.16521-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:563:31a4:bd89:e4a6
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1hg39R-000745-VT
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:563:31a4:bd89:e4a6]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1hg39R-000745-VT; Wed, 26 Jun 2019 10:19:34 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_011932_197440_B5CE30A8 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-NV1
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The AP7621-NV1 is basically an AP7621-001 with additional peripherals:

- +1 Ethernet Port (POE: 1x PD, 2x PSE)
- 2 SIM slots
- 3 PICe USB2.0 + 2 x UIM interface

Installation:
Same as on the AP7621-001. Overflash with sysupgrade -F.

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 target/linux/ramips/base-files/etc/board.d/02_network | 3 +++
 target/linux/ramips/dts/AP7621-NV1.dts                | 9 +++++++++
 target/linux/ramips/image/mt7621.mk                   | 9 +++++++++
 3 files changed, 21 insertions(+)
 create mode 100644 target/linux/ramips/dts/AP7621-NV1.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 02ef30cade..a276adb32c 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -42,6 +42,9 @@ ramips_setup_interfaces()
 	asiarf,ap7621-001)
 		ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
 		;;
+	asiarf,ap7621-nv1)
+		ucidef_add_switch "switch0" "0:wan" "2:lan" "3:lan" "6@eth0"
+		;;
 	3g150b|\
 	3g300m|\
 	a5-v11|\
diff --git a/target/linux/ramips/dts/AP7621-NV1.dts b/target/linux/ramips/dts/AP7621-NV1.dts
new file mode 100644
index 0000000000..aad222f155
--- /dev/null
+++ b/target/linux/ramips/dts/AP7621-NV1.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+#include "AP7621-001.dts"
+
+/ {
+	compatible = "asiarf,ap7621-nv1", "mediatek,mt7621-soc";
+	model = "AsiaRF AP7621-NV1";
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index dce24308b8..b32cdf4100 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -659,3 +659,12 @@ define Device/asiarf_ap7621-001
 endef
 TARGET_DEVICES += asiarf_ap7621-001
 
+define Device/asiarf_ap7621-nv1
+  DTS := AP7621-NV1
+  IMAGE_SIZE := $(ralink_default_fw_size_16M)
+  DEVICE_TITLE := AsiaRF AP7621-NV1
+  DEVICE_PACKAGES := \
+	kmod-sdhci-mt7620 kmod-mt76x2 kmod-usb3
+endef
+TARGET_DEVICES += asiarf_ap7621-nv1
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
