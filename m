Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597F7E423D
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 05:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCDGaEIjxoyhE3DUmpw2UhZ88SPTeMS5gw2Z3ZZZBMA=; b=sWFfIOUYqGnTWz
	5hsRMEhiy/8NBkA9yCp0R1LMb45ylycJHhES9K7mlYMAyprw+B7sn4SooZeAsClJ1d2js6hOaXTCJ
	OwBJ2mqqBxrb3C/a6/RDP0RyLWyFDA+PTZNMI5AD3jI8SdAVTcFFOGMvaGuu2wTciyw7B4z5s8SAr
	0O3iM7UF7iii0x8rlIEauKU74PASegtUnlCUksXAsV093OYFcxfxNpIbGJhf71vJycLU1XOm0CP8s
	raj+mVv/hSm8E0rCEmZ1GseQnpCf2apXXElipkcpLtHpx1Mqei1vGNqWKlGUOjkXhlowI9rjJkdDf
	qOAXTLdTp+8XwvD4mzYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqkD-0008NF-97; Fri, 25 Oct 2019 03:58:33 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqjp-00087c-83
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 03:58:10 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 1771359C48;
 Thu, 24 Oct 2019 20:58:01 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 24 Oct 2019 20:57:53 -0700
Message-Id: <20191025035753.10050-3-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025035753.10050-1-lede@allycomm.com>
References: <20191025035753.10050-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_205809_300045_1EC006F8 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] sysupgrade: NAND: Prefer CONTROL for
 board, improve robustness
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Improve NAND-based sysupgrade for current and future upgrades

nand_upgrade_tar():

  * Use the CONTROL file specific to the running board
    to determine asset directory name in the tar file
    * Check for string `BOARD=board_name` directly rather than
      source-ing to allow for future formats, such as JSON
  * Check that either `kernel` or `root` exists in that directory
  * Fall back to the matching, board-specific directory itself
  * Fall back to legacy behavior of "first in tar t -f"
  * Abort writing if no kernel or root was found

  * Catch error return from nand_upgrade_prepare_ubi() and
    * Do not write kernel
    * Do not write rootfs
    * Call (new) nand_do_upgrade_abort()

nand_upgrade_prepare_ubi():

  * Don't destroy existing file system with zero-length rootfs
    (this error condition previously made the device unbootable)

nand_do_upgrade_abort():

  * Show failure message and error code
  * Give 5 s to read or interrupt

Cleaned up some shellcheck suggestions in areas edited.

Left untouched, as working, even if not supported by dash:
  local root_ubiblk="ubiblock${root_ubivol:3}"

Run-tested-on: EA8300 (NAND), GL-AR750S (NOR kernel, NAND rootfs)

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 .../base-files/files/lib/upgrade/common.sh    |   7 +-
 package/base-files/files/lib/upgrade/nand.sh  | 129 ++++++++++++++----
 2 files changed, 108 insertions(+), 28 deletions(-)

diff --git a/package/base-files/files/lib/upgrade/common.sh b/package/base-files/files/lib/upgrade/common.sh
index a986cc0b5c..818376d728 100644
--- a/package/base-files/files/lib/upgrade/common.sh
+++ b/package/base-files/files/lib/upgrade/common.sh
@@ -231,11 +231,16 @@ indicate_upgrade() {
 # $(1): path to image
 # $(2): (optional) pipe command to extract firmware, e.g. dd bs=n skip=m
 default_do_upgrade() {
+	local err
 	sync
 	if [ -n "$UPGRADE_BACKUP" ]; then
 		get_image "$1" "$2" | mtd $MTD_ARGS $MTD_CONFIG_ARGS -j "$UPGRADE_BACKUP" write - "${PART_NAME:-image}"
 	else
 		get_image "$1" "$2" | mtd $MTD_ARGS write - "${PART_NAME:-image}"
 	fi
-	[ $? -ne 0 ] && exit 1
+	err=$?
+	if [ $err -ne 0 ] ; then
+		>&2 echo "ERROR: default_do_upgrade mtd write error: $err"
+		exit 1
+	fi
 }
diff --git a/package/base-files/files/lib/upgrade/nand.sh b/package/base-files/files/lib/upgrade/nand.sh
index e7d7bf8d13..1a28539150 100644
--- a/package/base-files/files/lib/upgrade/nand.sh
+++ b/package/base-files/files/lib/upgrade/nand.sh
@@ -121,6 +121,11 @@ nand_upgrade_prepare_ubi() {
 	local has_kernel="${3:-0}"
 	local has_env="${4:-0}"
 
+	if [ -z "$rootfs_length" ] || [ "$rootfs_length" = 0 ] ; then
+		>&2 echo "ERROR: rootfs_length must be non-zero."
+		return 1
+	fi
+
 	local mtdnum="$( find_mtd_index "$CI_UBIPART" )"
 	if [ ! "$mtdnum" ]; then
 		echo "cannot find ubi mtd partition $CI_UBIPART"
@@ -195,16 +200,6 @@ nand_upgrade_prepare_ubi() {
 	return 0
 }
 
-nand_do_upgrade_success() {
-	local conf_tar="/tmp/sysupgrade.tgz"
-
-	sync
-	[ -f "$conf_tar" ] && nand_restore_config "$conf_tar"
-	echo "sysupgrade successful"
-	umount -a
-	reboot -f
-}
-
 # Flash the UBI image to MTD partition
 nand_upgrade_ubinized() {
 	local ubi_file="$1"
@@ -226,14 +221,18 @@ nand_upgrade_ubinized() {
 	sync
 	ubiformat "${mtddev}" -y -f "${ubi_file}"
 	ubiattach -p "${mtddev}"
+
 	nand_do_upgrade_success
 }
 
 # Write the UBIFS image to UBI volume
 nand_upgrade_ubifs() {
 	local rootfs_length=`(cat $1 | wc -c) 2> /dev/null`
+	local err
 
 	nand_upgrade_prepare_ubi "$rootfs_length" "ubifs" "0" "0"
+	err=$?
+	[ "$err" != 0 ] && nand_do_upgrade_abort "nand_upgrade_prepare_ubi returned '$err'"
 
 	local ubidev="$( nand_find_ubi "$CI_UBIPART" )"
 	local root_ubivol="$(nand_find_volume $ubidev $CI_ROOTPART)"
@@ -242,36 +241,85 @@ nand_upgrade_ubifs() {
 	nand_do_upgrade_success
 }
 
+nand_upgrade_tar_dir_has_assets() {
+	local tar_file="$1"
+	local board_dir="$2"
+
+	local asset
+
+	[ -z "$tar_file" ] && return 1
+
+	for asset in "${board_dir}/root" "${board_dir}/kernel" ; do
+		tar t -f "$tar_file" "$asset" | grep -Fxq "$asset" && return 0
+	done
+	return 1
+}
+
 nand_upgrade_tar() {
 	local tar_file="$1"
 	local kernel_mtd="$(find_mtd_index $CI_KERNPART)"
 
-	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
-	board_dir=${board_dir%/}
+	local dts_board
+	local control_file
+	local board_dir
+	local err
+
+	dts_board="$(board_name)"
+	echo "$dts_board" | grep -Fq , && \
+		dts_board="${dts_board%%,*}_${dts_board#*,}"
+
+	control_file="sysupgrade-${dts_board}/CONTROL"
+
+	# Accomodate future CONTROL formats, as long as BOARD=board_name present
+
+	board_dir="sysupgrade-$(tar x -O -f "$tar_file" "$control_file" | \
+		grep -m 1 -o -E "\bBOARD=[^[:space:]'\"]+" | \
+		cut -d = -f 2)"
+
+	if [ "$board_dir" = "sysupgrade-" ] ; then
+		>&2 echo "Unable to determine directory from '${control_file}'."
+		board_dir="sysupgrade-${dts_board}"
+	fi
+
+	if ! nand_upgrade_tar_dir_has_assets "$tar_file" "$board_dir" ; then
+		>&2 echo "No assets found for '${board_dir}/', falling back to legacy method."
+		board_dir=$(tar t -f "$tar_file" | grep -m 1 '^sysupgrade-.*/$')
+		board_dir=${board_dir%/}
+		if ! nand_upgrade_tar_dir_has_assets "$tar_file" "$board_dir" ; then
+			nand_do_upgrade_abort "No assets found for '${board_dir}/'."
+		fi
+	fi
 
-	local kernel_length=`(tar xf $tar_file ${board_dir}/kernel -O | wc -c) 2> /dev/null`
-	local rootfs_length=`(tar xf $tar_file ${board_dir}/root -O | wc -c) 2> /dev/null`
+	>&2 echo "Assets from '${board_dir}/'."
 
-	local rootfs_type="$(identify_tar "$tar_file" ${board_dir}/root)"
+	local kernel_length=$( (tar xf "$tar_file" "${board_dir}/kernel" -O | wc -c) 2> /dev/null )
+	local rootfs_length=$( (tar xf "$tar_file" "${board_dir}/root" -O | wc -c) 2> /dev/null )
 
-	local has_kernel=1
-	local has_env=0
+	local rootfs_type="$(identify_tar "$tar_file" "${board_dir}/root")"
 
-	[ "$kernel_length" != 0 -a -n "$kernel_mtd" ] && {
+	local has_ubi_kernel=1
+	local has_ubi_env=0
+
+	[ "$kernel_length" = 0 ] || [ -n "$kernel_mtd" ] && has_ubi_kernel=0
+
+	nand_upgrade_prepare_ubi "$rootfs_length" "$rootfs_type" "$has_ubi_kernel" "$has_ubi_env"
+	err=$?
+	[ "$err" != 0 ] && nand_do_upgrade_abort "nand_upgrade_prepare_ubi returned '$err'"
+
+	if [ "$kernel_length" != 0 ] && [ -n "$kernel_mtd" ] ; then
 		tar xf $tar_file ${board_dir}/kernel -O | mtd write - $CI_KERNPART
-	}
-	[ "$kernel_length" = 0 -o ! -z "$kernel_mtd" ] && has_kernel=0
+	fi
 
-	nand_upgrade_prepare_ubi "$rootfs_length" "$rootfs_type" "$has_kernel" "$has_env"
+	local ubidev="$(nand_find_ubi $CI_UBIPART)"
 
-	local ubidev="$( nand_find_ubi "$CI_UBIPART" )"
-	[ "$has_kernel" = "1" ] && {
+	if [ "$has_ubi_kernel" = "1" ] ; then
 		local kern_ubivol="$(nand_find_volume $ubidev $CI_KERNPART)"
 		tar xf $tar_file ${board_dir}/kernel -O | \
 			ubiupdatevol /dev/$kern_ubivol -s $kernel_length -
-	}
+	fi
 
 	local root_ubivol="$(nand_find_volume $ubidev $CI_ROOTPART)"
+
 	tar xf $tar_file ${board_dir}/root -O | \
 		ubiupdatevol /dev/$root_ubivol -s $rootfs_length -
 
@@ -279,18 +327,45 @@ nand_upgrade_tar() {
 }
 
 # Recognize type of passed file and start the upgrade process
+
 nand_do_upgrade() {
 	local file_type=$(identify $1)
 
 	[ ! "$(find_mtd_index "$CI_UBIPART")" ] && CI_UBIPART="rootfs"
 
 	case "$file_type" in
-		"ubi")		nand_upgrade_ubinized $1;;
-		"ubifs")	nand_upgrade_ubifs $1;;
-		*)		nand_upgrade_tar $1;;
+		"ubi")		nand_upgrade_ubinized "$1";;
+		"ubifs")	nand_upgrade_ubifs "$1";;
+		*)		nand_upgrade_tar "$1";;
 	esac
 }
 
+nand_do_upgrade_success() {
+	local conf_tar="/tmp/sysupgrade.tgz"
+
+	sync
+	[ -f "$conf_tar" ] && nand_restore_config "$conf_tar"
+	echo "sysupgrade completed"
+	umount -a
+	reboot -f
+}
+
+nand_do_upgrade_abort() {
+	>&2 echo "##### UPGRADE ABORTED: $1 #####"
+	>&2 echo "Rebooting in 5 seconds"
+	sleep 5
+	sync
+	umount -a
+	reboot -f
+}
+
+
+
+
+###
+### Use of image metadata and checks is highly encouraged over this "legacy" routine
+###
+
 # Check if passed file is a valid one for NAND sysupgrade. Currently it accepts
 # 3 types of files:
 # 1) UBI - should contain an ubinized image, header is checked for the proper
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
