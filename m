Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B824A4723D
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 23:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EK98ujFO1jvoMxUVxtvpBSL+hjg7CXMgnFx/WoElqMA=; b=hzP3BA1uIl+Clu
	9IHONSd/MLxVave5GsxAeHxd05kONrhoI0Mch6eTjHs6dKB1c1WaUHlxdX2JztJkpD8y5JdrlWEqE
	Uh53e8v+t25vkhrhS9Qq1hr37InEqqjjEhRi3sgOXbjhN/r/hh4keLb5uiBKweD5ELuIicxU5C7Hl
	KZbQr7AmBhtBEv/1540FJIykbrNzE3Xuh11DqIJNdwRUQRZSEQJTxlxbVeyVqzs0Al+0P/uTEVCmE
	HCEb+hjKzhHsDkNkRqlugk2GrNPVvLTDcZqjRETOsChyCOqVPMRIUyUyUNs1OkN5dJPtlMo9GC+1j
	lHXW+0WxF8w9NJIbY9Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcGQt-0005f5-AR; Sat, 15 Jun 2019 21:41:55 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcGQi-0005ea-0D
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 21:41:45 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 535CE25B56;
 Sat, 15 Jun 2019 14:41:12 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 14:40:56 -0700
Message-Id: <20190615214056.11729-2-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190615214056.11729-1-lede@allycomm.com>
References: <20190615214056.11729-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_144144_050731_8EF030A3 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/1] ipq40xx: Linksys: sysupgrade: Ensure
 OEM volumes are removed
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

When OEM volumes are present in the [alt_]firmware partition,
sysupgrade will write a new kernel, but will fail to write
the root file system. The next boot will hang indefinitely

    Waiting for root device /dev/ubiblock0_0...

Modified ipq40xx/base-files/lib/upgrade/linksys.sh
to remove both `squashfs` and `ubifs` if found
on the target firmware partition's UBI device.

Run-tested-on: Linksys EA8300

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 .../ipq40xx/base-files/lib/upgrade/linksys.sh | 22 +++++++++++--------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/linksys.sh b/target/linux/ipq40xx/base-files/lib/upgrade/linksys.sh
index b8e6dd7352..a6cf5d8de9 100755
--- a/target/linux/ipq40xx/base-files/lib/upgrade/linksys.sh
+++ b/target/linux/ipq40xx/base-files/lib/upgrade/linksys.sh
@@ -1,3 +1,5 @@
+#!/bin/sh
+
 linksys_get_target_firmware() {
 
 	local cur_boot_part mtd_ubi0
@@ -53,8 +55,12 @@ linksys_get_root_magic() {
 }
 
 platform_do_upgrade_linksys() {
+
 	local magic_long="$(get_magic_long "$1")"
 
+	local rm_oem_fw_vols="squashfs ubifs"	# from OEM [alt_]rootfs UBI
+	local vol
+
 	mkdir -p /var/lock
 	local part_label="$(linksys_get_target_firmware)"
 	touch /var/lock/fw_printenv.lock
@@ -64,7 +70,7 @@ platform_do_upgrade_linksys() {
 		exit 1
 	fi
 
-	local target_mtd=$(find_mtd_part $part_label)
+	local target_mtd=$(find_mtd_part "$part_label")
 
 	[ "$magic_long" = "73797375" ] && {
 		CI_KERNPART="$part_label"
@@ -74,8 +80,6 @@ platform_do_upgrade_linksys() {
 			CI_UBIPART="alt_rootfs"
 		fi
 
-		# remove "squashfs" vol (in case we are flashing over a stock image, which is also UBI)
-
 		local mtdnum="$( find_mtd_index "$CI_UBIPART" )"
 		if [ ! "$mtdnum" ]; then
 			echo "cannot find ubi mtd partition $CI_UBIPART"
@@ -89,15 +93,14 @@ platform_do_upgrade_linksys() {
 			ubidev="$( nand_find_ubi "$CI_UBIPART" )"
 		fi
 
-		if [ "$ubidev" ]; then
-			local squash_ubivol="$( nand_find_volume $ubidev squashfs )"
-			# kill volume
-			[ "$squash_ubivol" ] && ubirmvol /dev/$ubidev -N squashfs || true
-		fi
+		[ "$ubidev" ] && for vol in $rm_oem_fw_vols ; do
+			ubirmvol "/dev/$ubidev" -N "$vol" 2>/dev/null
+		done
 
 		# complete std upgrade
 		nand_upgrade_tar "$1"
 	}
+
 	[ "$magic_long" = "27051956" ] && {
 		# This magic is for a uImage (which is a sysupgrade image)
 		# check firmwares' rootfs types
@@ -107,7 +110,8 @@ platform_do_upgrade_linksys() {
 		if [ "$newroot" = "55424923" -a "$oldroot" = "55424923" ]; then
 			# we're upgrading from a firmware with UBI to one with UBI
 			# erase everything to be safe
-			# - Is that really needed? Won't remove (or comment) the if, because it may be needed in a future device.
+			# - Is that really needed? Won't remove (or comment) the if,
+			#   because it may be needed in a future device.
 			#mtd erase $part_label
 			#get_image "$1" | mtd -n write - $part_label
 			echo "writing \"$1\" UBI image to \"$part_label\" (UBI)..."
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
