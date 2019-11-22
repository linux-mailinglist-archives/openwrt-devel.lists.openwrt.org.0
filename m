Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FEC107259
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 13:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3F8fnHROLXCDo7Q3DdklUWdoilZujq59b+ADYK+v5Dc=; b=mO/V2kdnMvigI1
	I8MsJBT3i7K7PSDpX+TZNSRcQiiz6wnPTSATvX4EpN4WddsmOaxzxeDLXj2gnX6IBEzI7VpxgmbHG
	DvKGqgbF/DP99MmSOZQc+BjyqLKFz7XxIp6Yagj7JDH3oPgtooXGBb3n50V4RgQ5gDX2QPnfQFkZo
	wSlWjB3HHB30HlApxeaXqwPseEv76xKMInWiAdNs9B+WCIAgq67KhAdcxQPwn6D0QYs1lTmvgPn+g
	30HL8T/CeEUnOguLKyqvUEG5di4NJLfIcAtwaicftOwnFi6SP4bYt+Bj4wL2RCXjC97SaU9FlrtA9
	awvizSR4aUMvuyCqzN5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8Je-0006TM-Hw; Fri, 22 Nov 2019 12:45:38 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8JT-0006Rg-42
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 12:45:32 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1ML9ds-1iFuwB2vQY-00ICBe for <openwrt-devel@lists.openwrt.org>; Fri, 22
 Nov 2019 13:45:17 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 13:44:32 +0100
Message-Id: <20191122124432.42844-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:hAy7fPzwj6ran4a81uuixlgkmOdFNeffdXRSK6FVttLN1Oouz/B
 RlCQO2d/uUEZ0RXx6snsmo49XaHbWFzOvh8WK+y23AkH+p7S+ZZwWgTb0iqCLv3WoNrOxE9
 YNxOxiF8s5Yqj1Z3P2qCFd5UlatUsHSAgFhu5EKmBSd6Oskzom+XCi2ulde6DpqKmmnUVV+
 wBU1ruS+2aKi7NQVZXOKg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v+LaeGSfdDE=:vn3VCsMkpqpACIVNAYQ7+K
 n84GY0Fq3NWlXxZLF8rAQ+baDHN6jz7jtTVBpXPi0+FShBiSDoCjMqHPPYZWNTrsfBVfp5I+T
 MmeoQn6P2oTL00nRcTMv8KgXvfqdxC792X/3zj5lhNJ3RMAuEBRj/kE3uo347Gu1UUk7shV8f
 2NPRmfWVAt7H2BORNAbSSktpAaF8iYHtmxXlywDxSmG2uGS9HYr/w+8JTmc+Su+xKsknxeNKb
 wLXVjsPur6862+uAkJGFt19p8sTFYbB3lwZvMoK0LxeMEYOTfvVpEZB6dPjqEL971MsprKxGN
 tl4VGKA6b3gi4ViDbJRGOLMoParcXlrsMFMbwcT8rGGcZA69t/DngkJUja4FaJQGbLpTa+Oz4
 ha+6gmVtUsZMYZTQwg/jIF20ihYmnwZ1NhECFOCwD2fpqSncvs0pQPuXQ8ME3LcS2OV9Kug/Z
 4wCkyuUF/H+xDb4WDfyP6jC5QzbrG9JOLSAM/i70P1SmcTS4klls5Mhi8z6oS52Zs3EAIE42Y
 1yi2A5Q3CayZ0Pe6cmmJ82X5ulmqzvWhAMOJ/NtBRgsELm4u6mRB2RaMB5nfs/STsfAm8iuLJ
 Kf+jfqxO055Shv12wkS1aH/MYN0DtZYVOrgIeBTC8PtqTL1/ZYlR1TtVnl5h1FfKKBwCA2Ko5
 hnR32Ja4P3DeH6D71/qkVeyGxbVv2sDujxyW+KNVCjDjx2SAaxBfVJ/4dtbiNToY3rIV7Jbqy
 cPPJzwfm9+CxUrG3Vq26WsuLVfoxXB/yYWsnnZRXDhGaqntXB8cLeBa5U9hUd/JVgSiD7vKKp
 qrKGO/zF5xitwxQherl2+FxH3uwmAuKeiSzC9vBwRT6bdy1HEohAtfJAaXwulasbYf0idWmX8
 ReZ2NC06WqM/J7FoMumDeP5tdjzeP3Oc8hS/eIGWw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_044527_452114_408AD4E5 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: fix source of label MAC address for
 Ubiquiti XM devices
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

In d421a8b94489 ("ath79: read label MAC address from flash instead
of using phy0/phy1") the source of the label MAC address was changed
for devices just reading it from phy0. To get rid of the dependency
from phy startup, addresses were read directly from the flash
locations that are used to initialize the phy MAC addresses.

Unfortunately, it turned out that Ubiquiti XM devices seem to have
different flash locations than expected, and also seem to have
specific locations for different devices (all in art/EEPROM):

0xe012 AR9280 Nanostation M2 - 0x120c
0xe035 AR9280 Nanostation M3 - 0x120c
0xe1b2 AR9280 Rocket M2 - 0x120c
0xe1c3 AR9280 Rocket M3 - 0x120c
0xe1b5 AR9280 Rocket M5 - 0x120c
0xe2d5 AR9280 Bullet M2 Titanium - 0x120c
0xe2b5 AR9280 Nanobridge M5 - 0x120c
0xe202 AR9280 Bullet M2 - 0x120c
0xe232 AR9287 Nanobridge M2 - 0x110c
0xe4a2 AR9285 AirRouter - 0xa0bf
Picostation M2 - 0x120c and 0xa0bf
Nanostation Loco M2 - not in 0x120c, other locations not checked

An additional problem of the Ubiquiti device support in OpenWrt is
that we provide images that match several subvariants of the devices,
which might have different MAC address locations.

Given that reading the address from phy0 in 02_network _is_ working
for the ath79 target in general, it does not seem reasonable to
rebuild a complex MAC address retrieval mechanism which is already
present in the ath9k driver.

So, this patch reverts the label MAC address source for Ubiquiti XM
devices (and the Unifi AP) to /sys/class/ieee80211/phy0/macaddress.

This doesn't affect XW and Unifi AC devices, where the label MAC
address source is defined via device tree.

For alfa-network,ap121f the location 0x1002 is kept, as this has
been verified during device support preparation in PR #2199.

Fixes: d421a8b94489 ("ath79: read label MAC address from flash
instead of using phy0/phy1")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../generic/base-files/etc/board.d/02_network      | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 07f3c4e83c..be6df558a6 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -282,12 +282,7 @@ ath79_setup_macs()
 		lan_mac=$(mtd_get_mac_binary "Board data" 2)
 		label_mac=$lan_mac
 		;;
-	alfa-network,ap121f|\
-	ubnt,airrouter|\
-	ubnt,bullet-m|\
-	ubnt,nanostation-m|\
-	ubnt,rocket-m|\
-	ubnt,unifi)
+	alfa-network,ap121f)
 		label_mac=$(mtd_get_mac_binary art 0x1002)
 		;;
 	avm,fritz300e)
@@ -392,6 +387,13 @@ ath79_setup_macs()
 		wan_mac=$(mtd_get_mac_text mac 0x18)
 		label_mac=$wan_mac
 		;;
+	ubnt,airrouter|\
+	ubnt,bullet-m|\
+	ubnt,nanostation-m|\
+	ubnt,rocket-m|\
+	ubnt,unifi)
+		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		;;
 	ubnt,routerstation|\
 	ubnt,routerstation-pro)
 		wan_mac=$(fconfig -s -r -d $(find_mtd_part "RedBoot config") -n ar7100_esa)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
