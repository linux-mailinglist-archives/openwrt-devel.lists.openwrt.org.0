Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E53ACF27
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 16:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UmrIHP7m4gsf6poR9Xmr8J2P0u4/jmFyxIHMfCTR9hg=; b=s//Vq4KKVpJo5vGJBm9eqPv1uz
	tBttaEKTGzXSnQiVabo0CXuWPOfCfyScsIUysAChiV91eptGKrNdcYvFum6upxYQN+7i+R1Ht05Fx
	1TRMI1fq/rdq1yLM0uzhuNqxXFy3ecpGFwBhlqQ+mGY3f/aKTVmg3lyeiuVSDsCodMuKZcy5jNX91
	/yE7h7h3zAm0TXCMLYtIhKbKDgDlIrKHaR1LqRNphlxVDFJl1XKb4XpGRk/WMJIJ3xPkoPP1uGsFb
	HIwIpRnYdmYXpLjVCXGjRanzgW3Qhka37NXIjrPIkwvVjhSDMIGA9LzBnWWcQWEwK8xSPytO051xW
	EYCIUh+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xuW-0007kg-Vp; Sun, 08 Sep 2019 14:11:25 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xu8-00072A-1z
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 14:11:03 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MFspV-1hvBWR1zQ7-00HNVR for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Sep 2019 16:10:56 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 16:10:49 +0200
Message-Id: <20190908141052.17443-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
References: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:dkeNhAE3Qi+L+/y/5Ha9CtgSbk2eAZjGEaPh6/9w0Js08QvzYge
 E017V7dAZmHzM0hTb7ybaMGihPeC6xPdLhCAhbYJnwkIl1+WyhQ0ZWaXzgAu0TIS+s40g0L
 xU1CcMiRMW1WT9K9Y6Y1nGzDqgdSkaFZbD3xw5suFZqdrJqZOGXFxIXotxx/F2Z7IuvV7qB
 7dEhZkgqrWzBqNOKfQ68A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OlLOiY56RiM=:vr+MPcCQUaZHBOunwtQQoh
 i9jd1qvqDJdpXxxUB2EF9ZIPVGgz7r6c6HHgLcrLqJ5retdz7xDus8bhHNU43DPtyGD5hDPx1
 TfndNFeX/0dXZUZUK9/Zdrba7d7WyancCCEKAs/qzG2rbTnE/uefOy8LdLELOEobOQJ8rD6iG
 oSr1aL53fNl1WMBx6zkc8O4Wrx+vMxRSSGdRfUXBI5f4wP+gdwLJFVYGk1lfKMhDqE73MOM2B
 TTsJWXolwBiI4GhCWMJUZoCtbNNt+xOIBYM2gM7RgpOOOyYJKN0QyBoiTrXnxBU1r9QMNncgo
 tKCL0ne8i33HUI/35o8qEe+RuxyD9EK6RPxNHQOBJ65QryblzNjke9zoBRUlUawpeagcuP0Ga
 Qa7of8YauiEpkUSWwTCAtY7hGv5loTDxsR5gRhT/lKB8w8ogjJ3AGY6dosiM4+H1TNLWeADR4
 /S0TW0c/dNrsKR8oP24QB+By+TAzwbU9BAiOEH+K1NZ2cvUGmiZD4TF2KGs5GDvCwpFk9k2g3
 JSGEYeyOpb6aMwyMVQ0QMmm+pgTqBPG+sGdhIzbUij7AHYc2R6vTBJ1we6ghoYmI8jZcq6OkQ
 PvndIxhzyU2wM7c+OsyhroA4Qbpc/zwGrjnG1aSr31RP3hNXCW6g5Sd1tVboBC6hm+Eq0Eluj
 p0Y+gyKjpBW2ZRj/npoBHgJab0NmiAG3OoHXwkGaOBh+RuAVMnN4A2PxxO5erdITZTn9MPV2A
 pgaDkt//wYrmjhr7j7QC2ubKpfYUjaN2fpxas6NNVA2xB4OHbH9Xx5BVBGM/u5L5nbZr7IFv+
 RfxAAXc18H90kjBlPFn3/rFT+/3RfFic0Pji36XwkEdeiHfMniJIwxf4oLixl9XxlEMLUhg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_071100_432518_EDA66EFC 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/4] base-files: move xor() from caldata
 extraction to functions.sh
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

The xor() function is defined in each of the caldata extraction
scripts for several targets. Move it to functions.sh to reduce
duplicate code.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/lib/functions.sh      | 16 ++++++++++++++++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom     | 15 ---------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata   | 18 +-----------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata   | 17 +----------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata   | 17 +----------------
 .../etc/hotplug.d/firmware/12-ath9k-eeprom     | 16 ----------------
 6 files changed, 19 insertions(+), 80 deletions(-)

diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index 860fc04510..81176431d1 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -17,6 +17,22 @@ NO_EXPORT=1
 LOAD_STATE=1
 LIST_SEP=" "
 
+# xor multiple hex values of the same length
+xor() {
+	local val
+	local ret="0x$1"
+	local retlen=${#1}
+
+	shift
+	while [ -n "$1" ]; do
+		val="0x$1"
+		ret=$((ret ^ val))
+		shift
+	done
+
+	printf "%0${retlen}x" "$ret"
+}
+
 append() {
 	local var="$1"
 	local value="$2"
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index f07dbf83c4..450f85b0fe 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -42,21 +42,6 @@ ath9k_eeprom_extract_reverse() {
 	printf "%b" "$caldata" > /lib/firmware/$FIRMWARE
 }
 
-xor() {
-	local val
-	local ret="0x$1"
-	local retlen=${#1}
-
-	shift
-	while [ -n "$1" ]; do
-		val="0x$1"
-		ret=$((ret ^ val))
-		shift
-	done
-
-	printf "%0${retlen}x" "$ret"
-}
-
 ath9k_patch_fw_mac() {
 	local mac=$1
 	local mac_offset=$(($2))
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index ed3432273c..6e79094e0c 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -1,23 +1,8 @@
 #!/bin/sh
 
+. /lib/functions.sh
 . /lib/functions/k2t.sh
 
-# xor multiple hex values of the same length
-xor() {
-	local val
-	local ret="0x$1"
-	local retlen=${#1}
-
-	shift
-	while [ -n "$1" ]; do
-		val="0x$1"
-		ret=$((ret ^ val))
-		shift
-	done
-
-	printf "%0${retlen}x" "$ret"
-}
-
 ath10kcal_die() {
 	echo "ath10cal: " "$*"
 	exit 1
@@ -79,7 +64,6 @@ ath10kcal_patch_mac_crc() {
 
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-. /lib/functions.sh
 . /lib/functions/system.sh
 
 board=$(board_name)
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index be57646128..dfb0a0cf76 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -1,20 +1,6 @@
 #!/bin/sh
 
-# xor multiple hex values of the same length
-xor() {
-	local val
-	local ret="0x$1"
-	local retlen=${#1}
-
-	shift
-	while [ -n "$1" ]; do
-		val="0x$1"
-		ret=$((ret ^ val))
-		shift
-	done
-
-	printf "%0${retlen}x" "$ret"
-}
+. /lib/functions.sh
 
 ath10kcal_die() {
 	echo "ath10cal: " "$*"
@@ -88,7 +74,6 @@ ath10kcal_is_caldata_valid() {
 
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-. /lib/functions.sh
 . /lib/functions/system.sh
 
 board=$(board_name)
diff --git a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index bdc36070f2..c0fb1db16d 100644
--- a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -1,20 +1,6 @@
 #!/bin/sh
 
-# xor multiple hex values of the same length
-xor() {
-	local val
-	local ret="0x$1"
-	local retlen=${#1}
-
-	shift
-	while [ -n "$1" ]; do
-		val="0x$1"
-		ret=$((ret ^ val))
-		shift
-	done
-
-	printf "%0${retlen}x" "$ret"
-}
+. /lib/functions.sh
 
 ath10kcal_die() {
 	echo "ath10cal: " "$*"
@@ -71,7 +57,6 @@ ath10kcal_patch_mac_crc() {
 
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-. /lib/functions.sh
 . /lib/functions/system.sh
 
 board=$(board_name)
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
index 82f6885221..5f3eb0cfe3 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
@@ -7,22 +7,6 @@
 . /lib/functions/system.sh
 . /lib/upgrade/nand.sh
 
-# xor multiple hex values of the same length
-xor() {
-	local val
-	local ret="0x$1"
-	local retlen=${#1}
-
-	shift
-	while [ -n "$1" ]; do
-		val="0x$1"
-		ret=$((ret ^ val))
-		shift
-	done
-
-	printf "%0${retlen}x" "$ret"
-}
-
 ath9k_eeprom_die() {
 	echo "ath9k eeprom: $*"
 	exit 1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
