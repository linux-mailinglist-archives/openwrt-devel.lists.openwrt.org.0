Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB65E423E
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 05:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+CxZ906djbesYoOE4WCNwYX8W+XaU8UpyfUvidfBWQ=; b=ojK7eTS3NxB2sF
	EUBzLZqraix8WWTDOr8U2JYuOcdV6IUh4OBSRXP8Wfr9+hIvE/ApPw3T7uoE3mcCAv8pAk71P9g4S
	PLCpUle6Cwj49EIowwbkKMaSWuIfvvdhH0uvjywznqo2Q5bndZYZcQyRYOwb6ScZLdJExepAoCQfo
	INrdSzh9CdmnVbg3Z4+iOqVGP2PFcnWUChs3HHzJrnYSH9OE8sTu76xIfZvDAfng5+AtEliS7TP/A
	FqM9b66yfleLvGl4ibl+8dWMdAYT59xKzQzLnJA5TYABt4gAJipoyd18PaRsN/5gVEU/dp9r//qfr
	D67eT1S9TfQySn2XyU2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqkU-0000Ee-QZ; Fri, 25 Oct 2019 03:58:50 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqkJ-0000DR-50
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 03:58:40 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id EAC6E59C47;
 Thu, 24 Oct 2019 20:58:00 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 24 Oct 2019 20:57:52 -0700
Message-Id: <20191025035753.10050-2-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025035753.10050-1-lede@allycomm.com>
References: <20191025035753.10050-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_205839_198489_FCC47348 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] build: sysupgrade-tar alt-board= for
 legacy upgrades
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

Targets that use nand_do_platform_check() can't use SUPPORTED_DEVICES
as the check requires ./sysupgrade-legacy_boardname/CONTROL to be
non-zero length as extracted from the tar file. Previously, only
./sysupgrade-new_boardname/CONTROL was present.

This prevents upgrade without --force from, for example, ar71xx to ath79

Add an optional alt-board= parameter to parsing of sysupgrade-tar that
creates a directory at the expected location for the alt-board name,
copying over the CONTROL file.

The contents of CONTROL are unmodified by this commit.

Careful ordering of the tar file is required as existing builds
expect the kernel and root assets to be in the first directory
returned by tar -tf that matches sysupgrade-*/

Run-tested-on: EA8300, GL-AR300M, GL-AR750S

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 include/image-commands.mk |  1 +
 scripts/sysupgrade-tar.sh | 40 +++++++++++++++++++++++++++++++++------
 2 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 5dfd6a2c2f..011e30a7e3 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -321,6 +321,7 @@ endef
 define Build/sysupgrade-tar
 	sh $(TOPDIR)/scripts/sysupgrade-tar.sh \
 		--board $(if $(BOARD_NAME),$(BOARD_NAME),$(DEVICE_NAME)) \
+		--alt-boards "$(call param_get,alt-board,$(1))" \
 		--kernel $(call param_get_default,kernel,$(1),$(IMAGE_KERNEL)) \
 		--rootfs $(call param_get_default,rootfs,$(1),$(IMAGE_ROOTFS)) \
 		$@
diff --git a/scripts/sysupgrade-tar.sh b/scripts/sysupgrade-tar.sh
index b93b2584bb..5071a2f5f8 100755
--- a/scripts/sysupgrade-tar.sh
+++ b/scripts/sysupgrade-tar.sh
@@ -3,11 +3,17 @@
 . $TOPDIR/scripts/functions.sh
 
 board=""
+alt_boards=""
 kernel=""
 rootfs=""
 outfile=""
 err=""
 
+do_exit() {
+	[ -d "$tmpdir" ] && rm -rf "$tmpdir"
+	exit $err
+}
+
 while [ "$1" ]; do
 	case "$1" in
 	"--board")
@@ -16,6 +22,12 @@ while [ "$1" ]; do
 		shift
 		continue
 		;;
+	"--alt-boards")
+		alt_boards="$2"
+		shift
+		shift
+		continue
+		;;
 	"--kernel")
 		kernel="$2"
 		shift
@@ -39,7 +51,7 @@ while [ "$1" ]; do
 done
 
 if [ ! -n "$board" -o ! -r "$kernel" -a  ! -r "$rootfs" -o ! "$outfile" ]; then
-	echo "syntax: $0 [--board boardname] [--kernel kernelimage] [--rootfs rootfs] out"
+	echo "syntax: $0 [--board boardname] [--alt-boards 'alt board list'] [--kernel kernelimage] [--rootfs rootfs] out"
 	exit 1
 fi
 
@@ -54,6 +66,7 @@ if [ -z "$tmpdir" ]; then
 fi
 
 mkdir -p "${tmpdir}/sysupgrade-${board}"
+
 echo "BOARD=${board}" > "${tmpdir}/sysupgrade-${board}/CONTROL"
 if [ -n "${rootfs}" ]; then
 	case "$( get_fs_type ${rootfs} )" in
@@ -67,18 +80,33 @@ if [ -n "${rootfs}" ]; then
 fi
 [ -z "${kernel}" ] || cp "${kernel}" "${tmpdir}/sysupgrade-${board}/kernel"
 
-mtime=""
+# "Legacy" nand_upgrade_tar() finds asset directory with
+# $(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
+# and doesn't use CONTROL at all; add the "real" files first
+
+tar_args="--directory ${tmpdir} --sort=name --owner=0 --group=0 --numeric-owner \
+	 -vf ${tmpdir}/sysupgrade.tar"
 if [ -n "$SOURCE_DATE_EPOCH" ]; then
-	mtime="--mtime=@${SOURCE_DATE_EPOCH}"
+	tar_args="${tar_args} --mtime=@${SOURCE_DATE_EPOCH}"
 fi
 
-(cd "$tmpdir"; tar --sort=name --owner=0 --group=0 --numeric-owner -cvf sysupgrade.tar sysupgrade-${board} ${mtime})
+tar -c $tar_args $(ls -A "${tmpdir}")
 err="$?"
+[ "$err" != 0 ] && do_exit
+
+for ab in $alt_boards ; do
+	[ "$ab" = "$board" ] && continue
+	mkdir "${tmpdir}/sysupgrade-${ab}/"
+	cp -vp "${tmpdir}/sysupgrade-${board}/CONTROL" "${tmpdir}/sysupgrade-${ab}/"
+	tar -r $tar_args "sysupgrade-${ab}/CONTROL"
+	err="$?"
+	[ "$err" != 0 ] && do_exit
+done
+
 if [ -e "$tmpdir/sysupgrade.tar" ]; then
 	cp "$tmpdir/sysupgrade.tar" "$outfile"
 else
 	err=2
 fi
-rm -rf "$tmpdir"
 
-exit $err
+do_exit
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
