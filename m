Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F2EABB7E
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 16:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UmrIHP7m4gsf6poR9Xmr8J2P0u4/jmFyxIHMfCTR9hg=; b=KngAKSts63bqH/
	TG1jQIGWSM0Ih04a7hQZwHvME7nqycyoUlPgoEcV3aD1fmOvZ0C2rGpJfWHBLqanvp+qPS99VOiKT
	xAzuWE0EAStDB2OSNdatHVzapwigIs1AFxx02dJ/JarCve8PNYAaXZm60/ZqzwZeasr1Vvn/2DqNl
	m3MKaKDelvUUJZ2aTvfXv7DfbqDqV/y4p4cjtXGRC8z/oite8Yqge5rQXUTBlizphUVOQAQfgoWVa
	GMd9B5y7Mn1OkGLW+egkjuZU4WlQ1v2RhJfwXYFckayNSA5kISiAPNygJyS0U12Z9QW+b7u3Jyp3q
	qKMfKEoZRsA1Eci72mZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Fd1-0007yr-4P; Fri, 06 Sep 2019 14:54:23 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fcg-0007xH-Qj
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 14:54:04 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MQ6C0-1hkAP127cG-00Lzxu for <openwrt-devel@lists.openwrt.org>; Fri, 06
 Sep 2019 16:53:59 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 16:53:55 +0200
Message-Id: <20190906145356.5010-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:8Ao8qFSGfDPY8XfL3pDBuVVmsDVFbg0OCG7Y2z3eJXM6QmUPn+K
 /KDLEAF293dRhl9kzEv7dS4Yj6ISanH6d2Xogx+n7vxSn63j715jKNLxkjT1iFjTs8HnPm6
 ggXlpz6FL6V6gCWZM0ohyYKKBrahEMY1lNVF14PZjNDu2eU4pSObYzcnY91Xx39NjbiOqqf
 evM7iqhOPMQ1zhid3GOHg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zkfZTdXUyIA=:2oHfAKlemEpVoFDFf0qfM6
 9Gpn9yDB5vzSpQDy/p+011LCWt8eTbPiJRD7HjQaQ1rjnC664zK94E7WwOLCiimmJtorKtjfv
 X5dVvoexcdhyhcJIK98LD/0ZKN2bkmJjnlMQbLkhP7D5xmIXKbH9xPE0Wtz0OY2OPkWACaUOu
 A8yivMoNF/rBnDGKfSXOcKeARQVZL3lru0BO48Y12JD33fYFzyQKK8LwPPCW9NDROcL2faDPq
 gHcmc4v12Xjce9kLEI/mg3U41XG2+no6owLR17ZUJWoptpX3dhxRmI+WDIQYbGWs3jXCVeuF7
 LVwVHaKx7FVCwR8YwDLn4gBC85LRQwYwFbFFPZZOAH8vifu2Vz5/qFrBXHwN1qms+C+X/xiCK
 wmf5u2deDSaPUXGmAEGpBDQNZeq8Nh5avWDPiuCaY7aHoqJBtfSa8RH+uSJWG5YDG11mL/5ad
 lQbnL5IqhB0zQju6+9HBB35RHe99tk4Hqy1vRUR5rhYo2mtzJ8tb54NiMxJAZyPzxhr0P8Nzn
 +3K1W20OJKLxQK+LaX7BUoEId0A5m3E5nfeVSJGsTdw2XjkU1PlzHioFblj6kJrLnyVsJ+kU8
 YP4cmcmpe4iFq8Zq511P4qdlpiI9vNGSpHX6Wd9KtEyBG+ARcgeeeK0GA6CKwgD80U8oSQkrP
 DFcFz6zXu3JijjGZFnTd8BXaLSxlB/7mlY1JZkdja36eVdaBIp0t4ltFKBCij1jvSlMq9yC0n
 W1BfUOKraoi83uE7CktPJV6iYBygrEIM/Ik8uFB2SD0RrU1G4A252o8yYjLXMOGVOh4BU8dvl
 TROAWLZHhCEU2N1Rw/A5t2FLXYFLwnSPTP7GB6hM7o258rl1XmdZZKpyyfVGy5e2yVp0FLE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_075403_166604_6BA11FC6 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] base-files: move xor() from caldata
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
