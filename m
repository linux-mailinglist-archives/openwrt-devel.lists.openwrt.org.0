Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7948948A
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 23:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sggp7B0/bZ63gqLxO0CjdQMsRBffH6GjpCl/QEIt/Uc=; b=u8zncS/7qDP+JY
	xHs6wdZmzRm9rBmY1M2+1c0lrfAccAIEPI4tts3zMgf1RCLKF4c+1MCj+oeOuvxQwAXYxaxqjSfrM
	FlgDTi/IOGjUREXQVMGF6Iaopyt/2WA3HawpCGAyGOXRs4gc2fK1T+S65vNbkOW3Z04cCiD1dpdeJ
	36P8zjD1R0G1mGMaVVz6YEc4GRTUElYYhy6BuFFuzjc/B42t1b9vL0RKNjK4WentI+EbcF5GLx0aT
	vi8J9Pivl6iUS/lCjWXPWHdmndUtsFJmbnRb15SutZg9X9EvEpyZ0G4Ci8w0EMHtZipnFVPio76G/
	frzoadrDaqIjjkEWV1vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwvXI-0005HP-40; Sun, 11 Aug 2019 21:37:56 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwvXB-0005Ga-9j
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 21:37:51 +0000
Received: from dbauer-x250.ffda.io (unknown
 [IPv6:2001:67c:2ed8:100e:f11d:acff:365f:90c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 4893E222B1
 for <openwrt-devel@lists.openwrt.org>; Sun, 11 Aug 2019 23:37:39 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 11 Aug 2019 23:37:24 +0200
Message-Id: <20190811213724.3468-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_143749_488201_D6CA2550 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] lantiq: unify Fritz!Box LED mappings
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

This commit unifies the LED mapping of the AVM Fritz!Box routers, which
have a combined Power/DSL LED.

With the stock firmware, the Power LED has the following
characteristics:

 - Blink when DSL sync is being established
 - Solid when DSL sync is present

We can't completely resemble this behavior in OpenWrt. Currently, the
Power LED is completely off, when DSL sync is missing. This is not
really helpful, as a user might have the impression, that he bricked his
device.

Instead, map the Info-LED to the state of the DSL connection.
There is no consistent behavior for the Info-LED in the stock
firmware, as the user can set it's function by himself. The DSL
connection state is one possible option for the Info LED there.

Also use the red Power LED to indicate a running upgrade, in case the
board has a two-color Power LED.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2.dtsi  | 2 +-
 target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7312.dts     | 3 +--
 target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7320.dts     | 3 +--
 target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi    | 3 ++-
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2.dtsi
index f23d2d2cf5..02e9589969 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2.dtsi
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2.dtsi
@@ -15,7 +15,7 @@
 		led-boot = &power_green;
 		led-failsafe = &power_red;
 		led-running = &power_green;
-		led-upgrade = &power_green;
+		led-upgrade = &power_red;
 
 		led-dsl = &dsl;
 		led-internet = &info_green;
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7312.dts b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7312.dts
index 811f78f934..0190dd2f01 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7312.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7312.dts
@@ -18,8 +18,7 @@
 		led-running = &power;
 		led-upgrade = &power;
 
-		led-internet = &info_green;
-		led-dsl = &power;
+		led-dsl = &info_green;
 		led-wifi = &wlan;
 	};
 
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7320.dts b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7320.dts
index 40348b1d59..6c0dad873f 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7320.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7320.dts
@@ -18,8 +18,7 @@
 		led-running = &power;
 		led-upgrade = &power;
 
-		led-internet = &info_green;
-		led-dsl = &power;
+		led-dsl = &info_green;
 		led-wifi = &wlan;
 	};
 
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi
index 82546a3572..57033eb4a9 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi
@@ -17,7 +17,8 @@
 		led-boot = &power_green;
 		led-failsafe = &power_red;
 		led-running = &power_green;
-		led-upgrade = &power_green;
+		led-upgrade = &power_red;
+
 		led-dsl = &info_green;
 		led-wifi = &wifi;
 	};
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
