Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83474F4B5
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 11:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7dAGZH3VfksrzhK45IvnM8ASbc0PxDIZ/R5OmIrPrBQ=; b=n2FCCYJ8/8Gx02
	IAX0SCCAcpNmif6YqHcG0kq8jk+lrIZzahyXj98TniJex86LzscYfpv3p1dvwubC+9v+q0wXiE5CI
	FIP/Qp94kK4u80LeU67zmKedZO34LvUdJ+tC6NDj2j0vCk7rDH+a+llxe0CP1/Rvax4FeLb/1MkD/
	HuaTe3eGEL1DphQMcP0wvcHSPga51XRreo/+1ZEOCnaArJvLGTZEaVnup534B/QDlO+dP208NP3z+
	lkhGm4HaSg2m+GYZpSFZc3n+FppL11juGL77Ma0g5TPVJu7iwPcY1U4MC8Ft4OYHlXgWnbQARz70L
	sKlFdtO81bVMDfhXH02g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hecOV-0003Dl-JR; Sat, 22 Jun 2019 09:33:11 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hecOO-0003D5-1E
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 09:33:05 +0000
Received: from localhost.localdomain ([188.194.85.108]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M4bA0-1he4A13yg2-001fMD for <openwrt-devel@lists.openwrt.org>; Sat, 22
 Jun 2019 11:33:00 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Jun 2019 11:31:56 +0200
Message-Id: <20190622093157.1372-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:TBe7GPOetWDUPcP3J1eOvPMouUQF1S1ANy0T1JI9CrOFcuVSfg6
 NLNGG68ey1gGN7TazGBmVlXuM5L5t0z+xs5zSi4SLdPzIg9v8jZAkBa0HW65eyvfYsh7dWM
 kNmbDRTuXF82V+OMdG0xoWraQnQg27s5c0ZuBemuw4Jb5S2gTSKmkskJecv4bd7mMtOVM7M
 pgiqiY7oN9JzNoBpFf+hw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:r4RkSuCDVSQ=:3jwijn9TStY2t5yMfrm2kf
 Gm6l3iHpVnj5bMx4xEDrx1FOSqScyDqj/7JeeJAYmrUit++10HBMXm3YrVC4LZaJTEg8yu8hf
 6fQ4JyCo2+/jDMvsDHO8qF+tETKjD7+XxY2M1qEDwqqTgmoFXqFIjSmvwqVbc01aq8QcIms4Y
 x9BMn+oiiuTXT8aw4b8IT6pNxh9tevGWas1PeJPB2SgZ+cCzT8yOoDH/j7UrLeuOncpa60kwx
 /ldSndkM8K2+fbx38Dl5ARLuQBTqom0nLUGYoLZW2Zq3k8dk0E18va7uxM4khcYjxNho1iCDf
 ea4b0y2c5O0xEXkEw4Nbzj5w0cpKnshZL4fOpP5l6RCo1sIqyT6AwnRifFyDma3VbE6gujQN0
 yZyK9j35fdRUugwPFBPUdDq3UtgAk+FGM/XB2KTlPuBbAGUZBqMX/liN+jKfGLxLH/xkPDFQH
 dmhdswvVhuDo9GQrICOuvRGwzSAHmRu8Xuj2qMcZv8Wm/b7GacVL/B+WpvoPELVtaur4GEqq+
 FwOP/R3LInSWu4moLnLYl5J6a5+Ayz4VLod+ZLI9Y5+t4ptJvw+8bN6ugFMCDv0WEirBcEZLD
 mHMUHHtm2BXWKlIrI9gW+KomtX/m1t8ST/ROp5oRqwXNf1kyfJ2G7IX9ilalcBn3U/vQUIXsq
 3VrCpQwCskwtHgo/lwcaxhi5W7twUPKqPShUY0zB+uyAdkeIxodXS9Wdu5NsdZpf0aQ7d66+v
 g7YY/iAmpL7NcNJz84XK0ao5u40dam0jUJBDIRN8SnDJN1+0NqCLbBKA27c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_023304_372290_B5FF942E 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] openwrt-19.07: ath79: Code style fixes
 in 10_fix_wifi_mac
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

This fixes one comparison and several useless echos.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac    | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index 2da2e8bfb0..bdb8b71ff7 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -1,6 +1,6 @@
 #!/bin/ash
 
-[ "$ACTION" == "add" ] || exit 0
+[ "$ACTION" = "add" ] || exit 0
 
 PHYNBR=${DEVPATH##*/phy}
 
@@ -17,18 +17,18 @@ case "$board" in
 		# There is no eeprom data for 5 GHz wlan in "art" partition
 		# which would allow to patch the macaddress
 		[ "$PHYNBR" -eq 1 ] && \
-			echo $(macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1) > /sys${DEVPATH}/macaddress
+			macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1 > /sys${DEVPATH}/macaddress
 		;;
 	iodata,wn-ac1600dgr)
 		# There is no eeprom data for 5 GHz wlan in "art" partition
 		# which would allow to patch the macaddress
 		[ "$PHYNBR" -eq 0 ] && \
-			echo $(macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1) > /sys${DEVPATH}/macaddress
+			macaddr_add "$(mtd_get_mac_ascii u-boot-env ethaddr)" 1 > /sys${DEVPATH}/macaddress
 		;;
 	phicomm,k2t)
 		# The K2T factory firmware does use LAN mac address as the 2.4G wifi mac address
 		[ "$PHYNBR" -eq 1 ] && \
-			echo $(k2t_get_mac "lan_mac") > /sys${DEVPATH}/macaddress
+			k2t_get_mac "lan_mac" > /sys${DEVPATH}/macaddress
 		;;
 	*)
 		;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
