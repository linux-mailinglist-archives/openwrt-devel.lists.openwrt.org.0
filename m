Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D7D41998
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 02:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uNjr1SiChEBL78u3XBkHNV3ZNTP4nW1JAooq2QEVIa0=; b=sF7flam1mHPFW6
	R1H4oGOLHCg+5ffC7w63YUivK2mc9RlsiDcOmWqhu11eX9vo5iQU9idF/aDjLZma5+r9PKey28+GC
	QAjVfLXSUPMlcwHWvGr0guwBLse1Ed/Z6t9bs1D11qVu4HxT00kEYRsqU5Hk2WFEIi74FigLFYvss
	VeH3T+fdld2gTKSVzH0HwDfplg974fZAA/V8sam8Li1w7VKk1BCEsRfALrLhjbTiKspdyMGnI2IvR
	01bbJ36LIFy96dLgirpF+2chitIY9s+Sm5GP6/sAsvFtuQ6yBUfLo8u6+YmjNVMdfOxa0wSBJjEOQ
	Wqh/Fd4oeFOuyVGPV2vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1harLu-0006Ny-9u; Wed, 12 Jun 2019 00:42:58 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1harLn-0006Nd-OC
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 00:42:53 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 0AA4F2444F;
 Tue, 11 Jun 2019 17:42:20 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 11 Jun 2019 17:42:08 -0700
Message-Id: <20190612004208.26914-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_174251_795501_743E42AE 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC] sysupgrade: Cross-flashing NOR/NAND proof of
 concept
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

Certain devices can have both NOR- and NAND-resident firmware, such as
the GL.iNet GL-AR300M. These devices can be booted with either firmware.
The GL-AR300M boot loader will automatically fail-over to NOR firmware
after three failed boots, providing end-user benefits when bad flashes
or other "no boot" situations occur.

THIS IS A PROOF OF CONCEPT

The "tricks" are that:

  * The kernel and software for both the NOR- and NAND-resident
    variants need to be able to read/write raw MTD as well as UBI.

  * The existing sysupgrade paths already prevent flashing of a
    NOR-intended image onto a NAND-based device, as well as the other
    way around. As such, even if a approach like this is accepted
    after these board names are "in the wild", sysupgrade will be
    "safe" on "old" builds against future additions to SUPPORTED_DEVICES.

  * The MTD partitioning for both variants need to define both NOR and
    NAND partitioning in a way that:

      * Early init does not try to mount the "wrong" root file system

      * sysupgrade can locate the "other" partitions

    This was accomplished in the commit sequence for the GL-AR300M
    (linked below) by defining the partitions in a common DTSI with a
    "neutered" partition label, prefixing it with nor_ or nand_, then
    setting the label as appropriate within the DTS for the specific
    build.

It can be used with buildable code for the GL.iNet AR300M that is
being prepared for submission and is presently available at

  https://github.com/jeffsf/openwrt/tree/ath79-nand-2019-06-11

or the latest, similarly named branch. Note that the above code has
not implemented SUPPORTED_DEVICES to allow cross-flashing, so that
sysupgrade -F will be required for those cases (at this time).

It intentionally does *not* switch to the flashed partition at this time.

Past removing my comments/notes in the source, I'd be interesting in
finding out if there are cases that I haven't thought of.

Run-tested-on: GL.iNet AR300M

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 .../ath79/base-files/lib/upgrade/platform.sh  | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/target/linux/ath79/base-files/lib/upgrade/platform.sh
index b6f720fd0a..110d459b27 100644
--- a/target/linux/ath79/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh
@@ -32,6 +32,67 @@ redboot_fis_do_upgrade() {
 	fi
 }
 
+nand_nor_do_upgrade() {
+	local upgrade_file="$1"
+
+	local magic
+	local found_nor_part
+
+	# If here, the metadata check has already passed (or --force)
+	# ath79:nand so far only uses uImage and tar files
+
+	magic=$(get_magic_long "$upgrade_file")
+	case "$magic" in
+
+	"27051956")	#define IH_MAGIC 0x27051956 /* [U-Boot] Image Magic Number */
+
+		found_nor_part="Not yet"
+		for pn in "$PART_NAME" "nor_${PART_NAME}" ; do		# firmware
+
+			if [ "$(find_mtd_index "$pn")" ] ; then
+				PART_NAME="$pn"
+				found_nor_part=''
+				>&2 printf "Running NOR upgrade\n"
+				default_do_upgrade "$upgrade_file"
+			fi
+		done
+		if [ -n "$found_nor_part" ] ; then
+			>&2 printf "ERROR: UPGRADE FAILED: Unable to locate '$PART_NAME' or 'nor_${PART_NAME}'\n"
+			sleep 5
+			exit 1
+		fi
+		;;
+
+
+	*)	# has to be a tar file of some sort
+
+		for pn in "$CI_KERNPART" "nand_${CI_KERNPART}" ; do	# kernel
+
+			if [ "$(find_mtd_index "$pn")" ] ; then
+				CI_KERNPART="$pn"
+				break
+			fi
+		done
+		for pn in "$CI_UBIPART" "nand_${CI_UBIPART}" ; do	# ubi
+
+			if [ "$(find_mtd_index "$pn")" ] ; then
+				CI_UBIPART="$pn"
+				break
+			fi
+		done
+		for pn in "$CI_ROOTPART" "nand_${CI_ROOTPART}" ; do	#rootfs
+
+			if [ "$(find_mtd_index "$pn")" ] ; then
+				CI_ROOTPART="$pn"
+				break
+			fi
+		done
+		>&2 printf "Running NAND upgrade\n"
+		nand_upgrade_tar "$upgrade_file"
+		;;
+	esac
+}
+
 platform_check_image() {
 	return 0
 }
@@ -47,6 +108,10 @@ platform_do_upgrade() {
 	ubnt,routerstation-pro)
 		redboot_fis_do_upgrade "$ARGV" kernel
 		;;
+	glinet,gl-ar300m-nand |\
+	glinet,gl-ar300m-nor)
+		nand_nor_do_upgrade "$ARGV"
+		;;
 	*-nand)
 		nand_do_upgrade "$ARGV"
 		;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
