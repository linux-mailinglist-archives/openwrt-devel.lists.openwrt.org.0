Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1395E1A22DE
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 15:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmzOoaa7Uy6qD2g6PBcx94hE60XHMi3a0CZJ9ZPFJzE=; b=VCZhkqD2SuVPiL
	NeBP3SppwwxrKSabduKOUD6tl9YRTDlmTI0nrG4eEmI8ZSIRw7mn/vybnhHu1oF7zVX/w0mu6j3R7
	V+1CGJqRt2hSFYWlo6xkxzjNk2M/10g4l+/2h6NLU4295k+YM70M4Ok/EEzeCTvO4pqZMNFz7gXlJ
	/5J4ZqvEPcyOp6WzmaHaV6CPzADmNgQIoEcgx4vCd0153Q1jd399L+iuc8O9N+p+7QRLmFmNJNjhc
	qjwJFzstQjrZm/QMS1ICo86MYfrxlbWsv8+Rir/gCVwmX75nxuZ6o3EQcdTx3dLWYo+++D5vbMOfu
	oyMXFkxcVQItl1eJPeUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAgY-0000BM-2h; Wed, 08 Apr 2020 13:24:06 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMAfs-0007vA-Gy
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 13:23:26 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MSqbe-1jjnfl0oVa-00UKLE; Wed, 08 Apr 2020 15:23:19 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Apr 2020 15:22:27 +0200
Message-Id: <20200408132229.3873-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408132229.3873-1-freifunk@adrianschmutzler.de>
References: <20200408132229.3873-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:bHKrI7TKqbnUi6nAPbOTRWWhnW7l8BzlXo0qb/kMMtEFS9qjM51
 mbyBjiqRnlTu2dce8fIELnhqgFyTYlIzjMfWEEutf1LB4Tc3mZXn2I4AedEO3wlwahVjdRq
 4fIZ7hlneRJZ4apNhV1iJizI94l+BSDRBnwm4j5ailrq8w51KDsp+AbB7aJArL6HjzyCuJz
 4VPFzg2vsuTbe5c3tQrFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cuKpnUG2jKs=:PtxXIpgMwuUQ7UnLr2eTlw
 VQ5WhOuVsoV4tAaRuWuASTs8y/6PRRAqgbRYTFm/LHTCvHw7Bk+y1Kfb6oq0uozx5PFjFm6pJ
 rUirV+8jmvr7erNQA5G7stbt1QjRBkAXK2zPjBVFHRU7rGVZ6Z/Zie0jZNvcj8RLLZC2iTqrr
 y25vFcSMRFbtk+Sm7zs9sweip5chsIVN9lKKOH3DDMLaRoivsskVDsGrUOXEPpQ0MnquMKt0y
 5DIv1/57TIo/xl7gm1bW4hoT4Ym05gh9cI2be/9JJA9p5tKWbCBa9ek/8t+Hll4nfDOJcU6sN
 gOUySp0Aw3s60iEElpsIE5BKkmVAmIg+fgLaGchM1TCSIBXVt+swB2TYRtJbAPCR5HOlJlLCW
 cDL/ZWc9iBjXw+SztH79NornGWP93Eo62SAQS11b26eJ5Okua+hTrbXIaXk9t/Uk1Xl2CvqKG
 PJsrXKgdPM8TV+ff3JTVvxBKQuWdKNsmAmTNfGcREyYyZ5MSSuADPnifwkTPNwJDsFeXNuNuD
 6jSChcZ/qvEulXKw+r3m3Pr1P/xZi9c/O6p3E0xb+t2VhiAhlKhdMxCPMMVqeWT7hxWlH4zt7
 ZNjGsWUFQnhJUAoO+joavh+ncLMJJdh5Izwz+9eWnql1jEQenriAS/UBg/rCJ+afiN0MGCuHV
 THh6Sf7F4QwYIaLLqc+ZtcPq0qSwJpARIWeI+zeOzP0pmMi0xMkKyjGhvg8Jr5uXvvnLMqdwn
 rM+OrXp61pRMti0DCt0avXUeN5mKEJcRpYyJUvbSYKRdPp2pYDXE8qPUuDsrzHDkhKRrwijLZ
 w1UdjnPtlmSaZUecCramk/6/CAbDnjqwkKTSw3ELd7hHvFOept6tUzJjdratVFhLtTTEbDJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_062324_870337_08A9D72E 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFC PATCH 1/3] ath79: fix wmac initialization for
 Zyxel NBG6716
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
Cc: Guillaume Lefebvre <guillaume@zelig.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Guillaume Lefebvre <guillaume@zelig.ch>

2.4 GHz Wifi on ath79 is set up in 10-ath9k-eeprom, but in ar71xx
it was done with ath79_register_wmac.

Thus, the following errors are observed on the device:
ath: phy1: Unable to initialize hardware; initialization status: -5
ath9k 18100000.wmac: failed to initialize device
ath9k: probe of 18100000.wmac failed with error -5

This patch changes the ath79 support to properly use wmac as well.
This will also require fixing the MAC address in a different way.

Signed-off-by: Guillaume Lefebvre <guillaume@zelig.ch>
[several adjustments to 10-fix-wifi-mac, use correct MAC address,
rewrite commit message]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

While the device seems to come up correctly now, the MAC adjustment
is not working (random MAC address for 2g).
---
 .../linux/ath79/dts/qca9558_zyxel_nbg6716.dts  |  2 ++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom     |  4 ----
 .../etc/hotplug.d/ieee80211/10-fix-wifi-mac    | 18 ++++++++++++++++++
 3 files changed, 20 insertions(+), 4 deletions(-)
 create mode 100644 target/linux/ath79/nand/base-files/etc/hotplug.d/ieee80211/10-fix-wifi-mac

diff --git a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
index 4ad65c31e8..a495bb187b 100644
--- a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
+++ b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
@@ -262,6 +262,8 @@
 
 &wmac {
 	status = "okay";
+
+	mtd-cal-data = <&art 0x1000>;
 };
 
 &pcie1 {
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index d2f8bae1ca..f5fae46dfb 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -15,10 +15,6 @@ case "$FIRMWARE" in
 	netgear,wndr4500-v3)
 		caldata_extract "caldata" 0x1000 0x440
 		;;
-	zyxel,nbg6716)
-		caldata_extract "art" 0x1000 0x440
-		ath9k_patch_mac $(mtd_get_mac_ascii u-boot-env ethaddr)
-		;;
 	*)
 		caldata_die "board $board is not supported yet"
 		;;
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/ieee80211/10-fix-wifi-mac b/target/linux/ath79/nand/base-files/etc/hotplug.d/ieee80211/10-fix-wifi-mac
new file mode 100644
index 0000000000..1940a5a576
--- /dev/null
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/ieee80211/10-fix-wifi-mac
@@ -0,0 +1,18 @@
+[ "$ACTION" = "add" ] || exit 0
+
+PHYNBR=${DEVPATH##*/phy}
+
+[ -n $PHYNBR ] || exit 0
+
+. /lib/functions.sh
+. /lib/functions/system.sh
+
+board=$(board_name)
+
+case $board in
+	zyxel,nbg6716)
+		# Set mac address for ath9k device
+		[ "$PHYNBR" -eq 1 ] && \
+			mtd_get_mac_ascii u-boot-env ethaddr > /sys${DEVPATH}/macaddress
+		;;
+esac
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
