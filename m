Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94711CCBA2
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4mO95ZauM7R5GvEBocAemWoIPuSivY+tH3L3/18UYk4=; b=ky7GVkaJnDcn0eOcfEitpTLhAP
	Nv3XRxCcnx4hgSTTJ+4vPZu6xuqkMIrTqoTSn24xIG7mWzztiT+d+8a+Dw5uYoHtcy3Ymivud/8ze
	aqnkIOsEx8m/DhCEhlWKSw1gZv+ByqlCZqgOrK6GXDLq0fRLAXM3Yc43uUBzhr8jwY7m5OJehhCTs
	ABXS/kztLpqYBq7MgTCiOkiJZfFTd981sl6iqduChnH7v/MYsEq4RA7tPWtcGecJtQYZ8hygd9vMS
	VKWkOVtHY8mbr0Hxgw6lR23g2xBD4SGuSMFg/eYbXqf9ntI3qZz8AvWmjDzP22doolEdzao+8AS2A
	vkmiK/IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnGp-00076F-OJ; Sun, 10 May 2020 14:49:36 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG5-0006CI-GI
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:53 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MbRXd-1iwooE0JgH-00bwIi for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:46 +0200
Message-Id: <20200510144754.10751-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:eYG0GQO868z7grgsqCiZhDw/JPTRQ5BFmK8Mf0siKjBA37EZ5YU
 oOKJZRPD1S8yjdxHL0vqragFu3n6ed1ERNNPrH5soYRj0/rVVNvTQv91x6KY85b/hvlBjwo
 lxCQ1utLHxdRk1BpwM07rE+KkzlhHwB/PNmgzY/rhLjDGI9NRfWuXUX4J3yFp8yKE9OG9s9
 1UHSseNLoc7n76VTdTF6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K39KUufq3UI=:vKmr9w7025TEtm8whRbKOI
 6faPTgwNxGOz5YlJBid2Y/r0otm1I/Tq1qBYPyvtHU9muBD+NQs2YT0+bH5zL22PRE8KpCDtD
 jBr2XRnnNZgQbzcqKvudwzrFKXh4+qK5bXlceympi1+v9PPoKcIQrE2a0TuvPIkvAKkXTYPpH
 adTD57S5oKsCTgbGFpm0lAz8qwRn+acpP5HProfggWqVLWQb2uXx9ktF9JeFfZCmsU5YbPiUn
 fDBIKIGEfUzImp3Zp7f9NLlAB1B3RfOKLWwUDRboqqtpuzVNfK/uZIY1WG8u/qlsFTvAGERp0
 4IFekF+9q98meEsShCAhFwpOjfbhMhEuxQvbJLFg+XGigOevfpN1VrwjngrIPyRq44RNw3bbL
 +rpyUVGd+qqYI0qhZl9Gqfrf4/q66tYDZ+JKRKgUCYfyyP68GPcn+nSiZquzFvBEXJFykjj5b
 n8gYpkEzJrdOoPhbvHR2BwdzvqJuWIpOgaJ6+iSRmJZ7/5E1plb0vDSkZfHXDyGHnZVuqqrXr
 +/I4/ZiB0PqYevj/oeHo5qiEmHp3cPzdBuUnVOc2HpjJt0+M01azBPZ6AgWjlRXBCOndRyaeB
 ml5BhlUe7M33vDKMj1DW50u7XWXX1xhq6kGF09aFIvedfvL9n7dRNpniPiDGOzhjZ8BmrWk9j
 P/W+svYyN1qorUY68Mvabslji5PLcJ0Wa37JyEM4RRq8h9rEEJ20JKxLKN2+ZGOe1TYySv97N
 YcPaf25ZAYrhp+2TcFvh+M4hUguHUIQSP+SPD69EXHjS2tHMd4e/TMJ6EkbKLQJ41b+5qPwrd
 jdQPWOVO+38iarQcg8DWhs2NXzunvDvB5AeKmWuUFTSrzLXdDbyOpBauppd1k7kyF8YVJLt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074849_871833_11BC2449 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.126.134 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 02/10] base-files: replace backticks by
 $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/bin/board_detect        |  2 +-
 .../files/etc/uci-defaults/13_fix-group-user     |  2 +-
 .../files/lib/preinit/30_failsafe_wait           |  2 +-
 package/base-files/files/lib/upgrade/nand.sh     |  8 ++++----
 package/base-files/files/sbin/pkg_check          | 16 ++++++++--------
 5 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/package/base-files/files/bin/board_detect b/package/base-files/files/bin/board_detect
index 441db6a08f..840bd0178d 100755
--- a/package/base-files/files/bin/board_detect
+++ b/package/base-files/files/bin/board_detect
@@ -5,7 +5,7 @@ CFG=$1
 [ -n "$CFG" ] || CFG=/etc/board.json
 
 [ -d "/etc/board.d/" -a ! -s "$CFG" ] && {
-	for a in `ls /etc/board.d/*`; do
+	for a in $(ls /etc/board.d/*); do
 		[ -x $a ] || continue;
 		$(. $a)
 	done
diff --git a/package/base-files/files/etc/uci-defaults/13_fix-group-user b/package/base-files/files/etc/uci-defaults/13_fix-group-user
index bf9febdfe4..74f501e8f7 100644
--- a/package/base-files/files/etc/uci-defaults/13_fix-group-user
+++ b/package/base-files/files/etc/uci-defaults/13_fix-group-user
@@ -1,6 +1,6 @@
 . /lib/functions.sh
 
-for file in `grep -sl Require-User /usr/lib/opkg/info/*.control`; do
+for file in $(grep -sl Require-User /usr/lib/opkg/info/*.control); do
 	file="${file##*/}"
 	file="${file%.control}"
 	add_group_and_user "${file}"
diff --git a/package/base-files/files/lib/preinit/30_failsafe_wait b/package/base-files/files/lib/preinit/30_failsafe_wait
index 85dca398fa..a2c2c386aa 100644
--- a/package/base-files/files/lib/preinit/30_failsafe_wait
+++ b/package/base-files/files/lib/preinit/30_failsafe_wait
@@ -91,7 +91,7 @@ failsafe_wait() {
 	grep -q 'failsafe=' /proc/cmdline && FAILSAFE=true && export FAILSAFE
 	if [ "$FAILSAFE" != "true" ]; then
 		fs_wait_for_key f 'to enter failsafe mode' $fs_failsafe_wait_timeout && FAILSAFE=true
-		[ -f "/tmp/failsafe_button" ] && FAILSAFE=true && echo "- failsafe button "`cat /tmp/failsafe_button`" was pressed -"
+		[ -f "/tmp/failsafe_button" ] && FAILSAFE=true && echo "- failsafe button "$(cat /tmp/failsafe_button)" was pressed -"
 		[ "$FAILSAFE" = "true" ] && export FAILSAFE && touch /tmp/failsafe
 	fi
 }
diff --git a/package/base-files/files/lib/upgrade/nand.sh b/package/base-files/files/lib/upgrade/nand.sh
index e7d7bf8d13..3ae06c6199 100644
--- a/package/base-files/files/lib/upgrade/nand.sh
+++ b/package/base-files/files/lib/upgrade/nand.sh
@@ -231,7 +231,7 @@ nand_upgrade_ubinized() {
 
 # Write the UBIFS image to UBI volume
 nand_upgrade_ubifs() {
-	local rootfs_length=`(cat $1 | wc -c) 2> /dev/null`
+	local rootfs_length=$((cat $1 | wc -c) 2> /dev/null)
 
 	nand_upgrade_prepare_ubi "$rootfs_length" "ubifs" "0" "0"
 
@@ -249,8 +249,8 @@ nand_upgrade_tar() {
 	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
 	board_dir=${board_dir%/}
 
-	local kernel_length=`(tar xf $tar_file ${board_dir}/kernel -O | wc -c) 2> /dev/null`
-	local rootfs_length=`(tar xf $tar_file ${board_dir}/root -O | wc -c) 2> /dev/null`
+	local kernel_length=$((tar xf $tar_file ${board_dir}/kernel -O | wc -c) 2> /dev/null)
+	local rootfs_length=$((tar xf $tar_file ${board_dir}/root -O | wc -c) 2> /dev/null)
 
 	local rootfs_type="$(identify_tar "$tar_file" ${board_dir}/root)"
 
@@ -307,7 +307,7 @@ nand_do_upgrade() {
 nand_do_platform_check() {
 	local board_name="$1"
 	local tar_file="$2"
-	local control_length=`(tar xf $tar_file sysupgrade-$board_name/CONTROL -O | wc -c) 2> /dev/null`
+	local control_length=$((tar xf $tar_file sysupgrade-$board_name/CONTROL -O | wc -c) 2> /dev/null)
 	local file_type="$(identify $2)"
 
 	[ "$control_length" = 0 -a "$file_type" != "ubi" -a "$file_type" != "ubifs" ] && {
diff --git a/package/base-files/files/sbin/pkg_check b/package/base-files/files/sbin/pkg_check
index 9968c9b78e..775e401b26 100755
--- a/package/base-files/files/sbin/pkg_check
+++ b/package/base-files/files/sbin/pkg_check
@@ -72,14 +72,14 @@ while [ "$1" ]; do
 	fi
 	[ $QUIET = yes ] || echo " * Checking package $1:"
 	ERR=""
-	CHECK="`sha256sum -c /usr/lib/opkg/info/$1.files-sha256sum 2> /dev/null`"
+	CHECK="$(sha256sum -c /usr/lib/opkg/info/$1.files-sha256sum 2> /dev/null)"
 
 	# Are the changed files config files?
-	if [ $? -ne 0 ] && [ "`cat "/usr/lib/opkg/info/$1.files-sha256sum"`" ]; then
-		NEWCHECK="`echo "$CHECK" | grep '^.*: OK$'`"
-		for i in `echo "$CHECK" | sed -n 's|^\(.*\): FAILED$|\1|p'`; do
-			if [ "`grep "^$i\$" "/usr/lib/opkg/info/$1.conffiles" 2> /dev/null`" ] || \
-			   [ "`echo "$i" | grep "^/etc/uci-defaults/"`" ]; then
+	if [ $? -ne 0 ] && [ "$(cat "/usr/lib/opkg/info/$1.files-sha256sum")" ]; then
+		NEWCHECK="$(echo "$CHECK" | grep '^.*: OK$')"
+		for i in $(echo "$CHECK" | sed -n 's|^\(.*\): FAILED$|\1|p'); do
+			if [ "$(grep "^$i\$" "/usr/lib/opkg/info/$1.conffiles" 2> /dev/null)" ] || \
+			   [ "$(echo "$i" | grep "^/etc/uci-defaults/")" ]; then
 				NEWCHECK="${NEWCHECK}${NL}${i}: CONFIGURED"
 			else
 				NEWCHECK="${NEWCHECK}${NL}${i}: FAILED"
@@ -91,7 +91,7 @@ while [ "$1" ]; do
 
 	# Do we have changed files or not?
 	if [ -z "$ERR" ]; then
-		[ $QUIET = yes ] || [ -z "`cat "/usr/lib/opkg/info/$1.files-sha256sum"`" ] || echo "$CHECK" | sed 's|^|   - |'
+		[ $QUIET = yes ] || [ -z "$(cat "/usr/lib/opkg/info/$1.files-sha256sum")" ] || echo "$CHECK" | sed 's|^|   - |'
 		[ $QUIET = yes ] || echo " * Package $1 is ok"
 		[ $QUIET = yes ] || echo
 	else
@@ -107,7 +107,7 @@ while [ "$1" ]; do
 			echo "Exiting on first change found!"
 			exit 1
 		fi
-		for i in `echo "$CHECK" | sed -n 's|^\(.*\): FAILED$|\1|p'`; do
+		for i in $(echo "$CHECK" | sed -n 's|^\(.*\): FAILED$|\1|p'); do
 			SUMMARY="${SUMMARY}${NL} - $1: $i"
 		done
 		echo
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
