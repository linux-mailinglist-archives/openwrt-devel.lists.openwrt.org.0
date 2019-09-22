Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB8FBA1AA
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 11:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qmMQ7G7cOCXCwLPLfBQy7yjygfF22fLnHvjwp0E0P2Q=; b=E0VccBXqroSBXaYW0yslLYXnMp
	MjWmNaLoq9TL4HCHnhsirkP+CThbGIY+0Ff8qUasmKes5V7+uzj1bWM9PyAYqBoRK5ILHjpFhnvCh
	nboZZkJ5VdFQWJNttOdkRYME1ZFWNeHOSPlffIb8N9kwnjYK+2jo1figs0b4rT354opbBcApHYNnu
	wtutNT8oL/SdF3XuHgULPCP8BPostz10WhJ+ImTUN8NFocEyjLGaN8lAN75cs1AMRy6jn1aZVUYhU
	6v5jhXliAsEjeA+oSGYS53fa4bCfi5qeRTILiPAdj2YJHbn04F27zqNcDGlzNQWhhP1bbcRWycEzR
	B8AGnjBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBydN-0003fb-0c; Sun, 22 Sep 2019 09:58:25 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBycV-0003VU-3M
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 09:57:33 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MC0HF-1iLdfj3jEj-00CPDO for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Sep 2019 11:57:22 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 11:57:12 +0200
Message-Id: <20190922095717.1714-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
References: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:XoNNFvJXXgtQbFs+tqf4CUPh1nqJuIBqZYepqXGX7HfGg5G1to3
 0zppKnOCNodim7UvjixdWcf29LGitAMW6IMgWu4rNzm6MNZo5nC6j7xYc1pmltRoYqGUbic
 Zy5P68muzu21q8NoweLaEOrSu4ChPyP7vaHdVULB/pu3JLXte+OjY8rYwYFI2Dv7gIPxaa3
 HzaNj9FlHqf7Gs39Bj0MQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wXuK20J2OrM=:ziz9je7m6rFDw25eLZaqxx
 69+7lEsxw6uWxYsG1AYZDck6Jtnn4GBEWfmtIBZCNSda+Sk6vkcJn5CJ/SM60cEJI9rOXabcu
 ouZrX0szCtFPqIzc/bFlSKGUD6L9545dSkr+Wequrma1bu3vKPm7NU6C0cUSXidhSqciJoJrV
 zDcBUsoZM21Dpqb1LrAjxkAo7xk6wulXZo+aSPuNoWB4IKMQMO/7RM8tG554M3EUPnvfZRn16
 E++mzR9yibojL9TXNqRo9cgH9ZkxMni8RdCrm68TsaC7kdyPvLlTWVL9rmFfrCyetUjMn0Yuq
 f5wY8msNvU+KJWNFnt0QnBA4vKbOGkcmqyJgUnsa4fTS5/OQZeaVISrokVTYx+TTVPWmmfTUg
 flTElPBKfpn3flV2etprBiv0l1BI+Tj4a3CUt3lmiec9sugq7EDe0eSTFFdtyEmtyxBBTxknt
 xZCO3Mw8p4KS1HSFotXMkBBwn+ahRqieyxHTz7gVABMjSutR79UgjNCL+ale/d1C88gpDnqUF
 wUjsXydFeCQViOXZRljNznY8fvcathbDi3U9/EksX22xtAO15aFyC2y0HSTn7J/5MUdD54yBE
 NjkzH23wJBf9c6rsta6czcfNwK6bm4mTiTCGadawMLjBdT8VwoXW3uSvPGh16PBSfbsGVu9xm
 9VsfbRILn5VFJ5Uq6fmoaAdFwXCnAb5xvV2meFZjdQ/eejTor94xAKewpMmFEXL2LH5OOs/vy
 eHhgfVTLto95ilt7eEXnaTi3AM63myfwCVVZ3Vdy4mVn5QtJy42SiVSNgoMAUAVpLtVhVYoXL
 c8QhN13ydL6RIrE/NPiB2wrCd1rXvR/kUx6tY1/kedqLj4co52jMKB6rnW2kOosJA7QpYW3eu
 EQvDgOyrDG2MoP4FYOlh8AZVHqA8iIKV4wc3wHTD4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_025731_434188_3EF941DA 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/7] base-files: move xor() from caldata
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

v2: rebase
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
index 7911d0aa1e..0cdd783315 100644
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
index 446b729a2b..d34146121a 100644
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
index 6f133c82a7..2c4a5a1799 100644
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
