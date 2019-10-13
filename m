Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C5ED5894
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 00:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lIDC9XDw+qhjsLA66nDRCiBigufBzmdWD6uPOjxlXqI=; b=cADg1AE2ck3Zj6
	+8KhgDF2+qnw2E+0+gEkedvtlsmG+p6q5arEBtuWWYUUfJiaUw/D36gSPsG30kbyiXykjGs2G0jLa
	qAm4b45LaPR/+ZLRGwX1OHsn+C6KCv1y5V2Da8GnxZmMPTDAV8crCGQMd6d4wusxFJH3yOlDJIlG3
	zOIlgTmzQZiPU43wvr4ofR/Bnsvp5I8R4YlrZG3CZlOzvcdMh1tZwEkAbcPkvSkrL5D6IIT1d+siI
	APlDiUUxvdgVc9w5ZVNrUmsa9WQY61Hn6RjBOsks1uVJ03y8pvftXVitsUvda/+dMMEgNK4vvl4Uo
	9CsxizQpxAr9XucY/7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm9F-0007ks-7l; Sun, 13 Oct 2019 22:15:33 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iJm7o-0006Tn-B4
 for openwrt-devel@lists.openwrt.org; Sun, 13 Oct 2019 22:14:06 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F3D8800FA467A9013EC5C89.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3d:8800:fa46:7a90:13ec:5c89])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id CFFEB22BA2
 for <openwrt-devel@lists.openwrt.org>; Mon, 14 Oct 2019 00:14:00 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 14 Oct 2019 00:13:53 +0200
Message-Id: <20191013221353.186756-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151404_549449_548B9568 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mpc85xx: correct TP-LINK TL-WDR4900 MAC
 addresses
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

This commit fixes TP-Link TL-WDR4900 v1 MAC address assignment.
Previously, the MAC addrss was read for the ethernet from the "config"
partition. However, the content of this partition is dependent on the
firmware which was previously installed on the device.

Switch the MAC address source to the U-Boot partition, where the MAC
address is always present at a fixed partition. The partition was
previously already used for the WiFi MAC-addresses.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/mpc85xx/base-files/etc/board.d/02_network      | 2 +-
 .../mpc85xx/files/arch/powerpc/boot/dts/tl-wdr4900-v1.dts   | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/mpc85xx/base-files/etc/board.d/02_network b/target/linux/mpc85xx/base-files/etc/board.d/02_network
index f907fd2edb..aa33a4af96 100755
--- a/target/linux/mpc85xx/base-files/etc/board.d/02_network
+++ b/target/linux/mpc85xx/base-files/etc/board.d/02_network
@@ -21,7 +21,7 @@ ocedo,panda)
 tplink,tl-wdr4900-v1)
 	ucidef_add_switch "switch0" \
 		"0@eth0" "2:lan:1" "3:lan:2" "4:lan:3" "5:lan:4" "1:wan"
-	ucidef_set_interface_macaddr "wan" "$(mtd_get_mac_binary config 0x14c)"
+	ucidef_set_interface_macaddr "wan" "$(macaddr_add $(mtd_get_mac_binary u-boot 0x4fc00) 1)"
 	;;
 *)
 	ucidef_set_interfaces_lan_wan "eth0" "eth1"
diff --git a/target/linux/mpc85xx/files/arch/powerpc/boot/dts/tl-wdr4900-v1.dts b/target/linux/mpc85xx/files/arch/powerpc/boot/dts/tl-wdr4900-v1.dts
index 0e0d74c0d8..0998a4933a 100644
--- a/target/linux/mpc85xx/files/arch/powerpc/boot/dts/tl-wdr4900-v1.dts
+++ b/target/linux/mpc85xx/files/arch/powerpc/boot/dts/tl-wdr4900-v1.dts
@@ -49,7 +49,7 @@
 					#address-cells = <1>;
 					#size-cells = <1>;
 
-					partition@0 {
+					uboot: partition@0 {
 						reg = <0x0 0x0050000>;
 						label = "u-boot";
 						read-only;
@@ -67,7 +67,7 @@
 						label = "firmware";
 					};
 
-					config: partition@fe0000 {
+					partition@fe0000 {
 						reg = <0x00fe0000 0x00010000>;
 						label = "config";
 						read-only;
@@ -119,7 +119,7 @@
 		enet0: ethernet@b0000 {
 			phy-handle = <&phy0>;
 			phy-connection-type = "rgmii-id";
-			mtd-mac-address = <&config 0x144>;
+			mtd-mac-address = <&uboot 0x4fc00>;
 		};
 
 		enet1: ethernet@b1000 {
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
