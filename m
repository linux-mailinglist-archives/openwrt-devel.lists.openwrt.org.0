Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB56BA1B0
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 12:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=97Q4jZJZtGRKB/l/lyTJUzoFON5IbhKHcQ8aNiNCqgg=; b=Y3d9z2sqvfQ6J1HiGsJNiRjYsq
	/dkPgKrawNU1Ti6y8IueRJoP0BSmOYg0TIoDSNTaMmtQndYhxiTO4mHWD6eTxviMJS7GnSbMscgeP
	+hzi2mI0znwN8SrqYDKE2086Qhi02qgqfVp/cOUFnHhhCJveUGX+nJ0HAC6hPxYvvaOJKYu62Rqdk
	hke91aAUqeB430/LZ+qvzyrEemptBscwZDOC9Wr0bAY4We0P3H3u4JHU+GobJmK1tMA+tEjM2QlIJ
	nm6GWueiURWtpULHsOKd1FcmlfAnt8TtaB9PQZNp7nxQjB5yTA5WGBduYdiN0VbA7x6JGaY2jMhqC
	5Zb1K8jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iByf7-00050a-RC; Sun, 22 Sep 2019 10:00:14 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBycW-0003VI-2Z
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 09:57:36 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MkEdF-1hngMc1cbZ-00kdZW for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Sep 2019 11:57:23 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 11:57:15 +0200
Message-Id: <20190922095717.1714-6-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
References: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:f6el3Jb/EUNxzYfcpJy3uaWBeDTiC4PVAX3CqrtlyNGtA/XTnke
 U8dWqV/FpmmxdyMEgJI4VI2qD83ez0pKIiIk0d9rPMWB4V8gk9/n/dsCmr0q7Je4yHhWKRT
 YzepDG7pVemz/bJtLiKF0zTON+LM8jWGxcetqy7KBCQ9z8TDv19mM5u4iTRyC4SAsc/RdVm
 aEEKb2zeurq47FAvpjo9Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qBUTYRlU2HA=:HHh7yT7/ZO5eRagWOW46I/
 O5hCDf/DDMIXgP1hT9S9vE+PTI9rplqUsXacroyBnwPoaiv2o1v379iI7IrWeN2+iQwBBCpq6
 xPCPoKAyjhv7TgpO7xN++WNOxrNg45/svAY9ziaGgI2MCf3f/pCKYiIJmyZSYL6KBARY7sZS2
 c96eb7iI88VMIJ0B28OkdTLCnYXkWBCDMezZ1O6b/oRmj5SdAACQdQW7EN9HfQTQoiky3IknV
 82oOAsnUqRHDyhcZ4NQOdnuTXd2u7p60+O16OuJCr63FDz5O4IkvMlMpFu2QLR+jkBIxcfLah
 j/D/LqxdEvtqCypaobcriYuvKyv61uZiSi+EKzJQweXP/v3J2Vn004X8b5XWOCBVbU7cCoEUX
 QgQQOOvbJbPKe4Yxl0/PHL2ClunRiEtutZFi478nLv3ev24dn2NHn8zeIyBwJvxFV0jNUIO/w
 i/hqxu7DLfB1G3yvAy8qzu+LdW/xwoEkXU/XBaPi1EvtvPnBfW0KxZ6+v+N/C7DMHJTbIxn2H
 Z+afBSLMl+hiH19Xx01zl77yPE6rSMlt81BY+i+khIDI9jbIh/4XlqNRDYF9QlDovLw98sh/B
 xy7b6reBIUJwy+sQbkZJ6qrDmIfnwi1uC8TijI6ao8pXbwtV0COf8aCRcASBKmPkSiPHI0osZ
 wbkCnx8dVWiaJ8HlzD1vwn02rGcyF2hZ6Les6W7W6zOVaKukxm/EdC98A8RIlaTucwJpJF1lp
 os/1106+ThMQSc9BtIEiomrIvmyniJnT4YrYm8CBjlst/gvwMZ2Fkq0P6/SKQw2eS5boKbIU/
 OsfXeBoBevmrhxCVDPxnh3HvlY6W2ytldsnotG2LgzTNu9eo7RkjxGAUetNMSYg92wzzEdwYv
 F7EqEGrwQNz8BCSOXwuOZTT1SBQq+xlo5xVgEV950=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_025732_443817_5B0735FB 
X-CRM114-Status: UNSURE (   7.80  )
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
Subject: [OpenWrt-Devel] [PATCH v2 5/7] ath79: set checksum when patching
 MAC address on ath10k
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

Several devices use ath10kcal_patch_mac, although all ath10k
eeproms have a checksum field and should use
ath10kcal_patch_mac_crc.
This might be because the field is not evaluated by the firmware at
the moment.

Nevertheless, this patch will use ath10kcal_patch_mac_crc for all
devices so the correct checksum is in place.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v2: New patch
---
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 3175d5a1f8..802ef4039e 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -26,33 +26,33 @@ case "$FIRMWARE" in
 		;;
 	dlink,dir-859-a1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(mtd_get_mac_ascii devdata "wlan5mac")
+		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata "wlan5mac")
 		;;
 	elecom,wrc-1750ghbk2-i)
 		caldata_extract "art" 0x5000 0x844
 		;;
 	engenius,ecb1750)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(mtd_get_mac_ascii u-boot-env athaddr)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii u-boot-env athaddr)
 		;;
 	engenius,epg5000|\
 	iodata,wn-ac1167dgr|\
 	iodata,wn-ac1600dgr2)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
 	engenius,ews511ap)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
 	glinet,gl-ar750|\
 	glinet,gl-ar750s)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
 		;;
 	glinet,gl-x750)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
 		;;
 	nec,wg800hp)
 		caldata_extract "art" 0x5000 0x844
@@ -61,11 +61,11 @@ case "$FIRMWARE" in
 	ocedo,koala|\
 	ocedo,ursus)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(mtd_get_mac_binary art 0xc)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_binary art 0xc)
 		;;
 	openmesh,om5p-ac-v2)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
+		ath10kcal_patch_mac_crc $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
 		;;
 	qihoo,c301)
 		caldata_extract "radiocfg" 0x5000 0x844
@@ -77,29 +77,29 @@ case "$FIRMWARE" in
 	tplink,archer-c7-v5|\
 	tplink,archer-c25-v1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) -1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary info 0x8) -1)
 		;;
 	tplink,archer-c5-v1|\
 	tplink,archer-c7-v2)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary u-boot 0x1fc00) -1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary u-boot 0x1fc00) -1)
 		;;
 	tplink,archer-d50-v1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary romfile 0xf100) +2)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary romfile 0xf100) +2)
 		;;
 	tplink,re350k-v1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary config 0x10008) +2)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary config 0x10008) +2)
 		;;
 	tplink,re355-v1|\
 	tplink,re450-v1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
+		ath10kcal_patch_mac_crc $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
 		;;
 	tplink,re450-v2)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
 		;;
 	ubnt,unifiac-lite|\
 	ubnt,unifiac-mesh|\
@@ -127,7 +127,7 @@ case "$FIRMWARE" in
 	netgear,ex6400|\
 	netgear,ex7300)
 		caldata_extract "caldata" 0x5000 0x2f20
-		ath10kcal_patch_mac $(mtd_get_mac_binary caldata 0xc)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_binary caldata 0xc)
 		;;
 	phicomm,k2t)
 		caldata_extract "art" 0x5000 0x2f20
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
