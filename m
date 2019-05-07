Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687C5158BE
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 May 2019 07:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XN+pAT8xkEKyksiVlbCQApFW5AcStOY0yJ/bTC59hDE=; b=JYF9L6jSnHX3ZI
	vCLDmkUBZkVgObydcQ3ZFB835J6GkXQ3CHmwfoFvy8H6B6xaA+tIdVyNoJwoFeTcaT7jIh0lOB8Xe
	ViJkIx6u+DjlHNlKTiUuvYq1QL74ycrpiUyEnCeKK49qpEt8DJbuMtMQ/8T3nCxree1lmIpl+WAYe
	MCfTla+62QJmq4v1rkDId8ubShpQZefos3NAXEKeEuh/zDRqVr9JAz5P6hWvRuT3KxNJTxo4+9eX6
	QmVsfRU9dwRqbiNrJYSI+Z/6PvLh2rUmXAU7MA9hB4lwU0Fhz2O4XAFOmjpM34Fde2jP/XQwStAqq
	RZDlqpPrJFROnP6fFwLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNsKB-0007fk-Vo; Tue, 07 May 2019 05:07:31 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNsK5-0007fP-E4
 for openwrt-devel@lists.openwrt.org; Tue, 07 May 2019 05:07:27 +0000
Received: by mail-ed1-x542.google.com with SMTP id e24so17432824edq.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 May 2019 22:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wmN+I+e0S9fSzpfKBEq4/4NBt3xfvelUSB8YsWwVruo=;
 b=W2SdZ3l7otRqXWhkVhqhpLTBS8SJQ4zzkZEV29JleNBDoIpHhEqNOWw6DJs6DFgnPO
 8hE6kV6p2kUMTCt9v4xu76Yh7K+L1qLIp1fk2H1hoeDk9qYjVk43UP7mQKMrtjFoWL3D
 bNPukXqAV+Rcf85oA+UPYIB0MUTW15QgcBvg+yOL6+RrmpPh0RBC0jnulrFsxsRrSO5T
 6zh5RabHu8tpNbSWYTWWP+2TVyemQ3KFoA82KLhuUmsTSBtj8UwnVeeSQVx1CVqbK9J/
 lFjE0nig56zbtMAwe4s3pPw+OFBENIlxlmkKFxqK7mRsPK2OfSo8idSilXa9aUgdFsWI
 cXtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wmN+I+e0S9fSzpfKBEq4/4NBt3xfvelUSB8YsWwVruo=;
 b=YgPYc4t5CHJhbWodFxjMI+whTvGfYy+tBX+TkB2QTKQ0GHJM8fDZPGRWAPv+LW/LDM
 9QSOuo1D+vffD99rSGw+hk4MHhUEo7TfJ2DqjiA/D7l1GcoINhB/TA91huuwnHwFNT/f
 CtsPC4fmOSFsW9DVpvgkCNAdGySE7EPzHCLZrjsQICEMy40dMc538QhtB5wxGkQg7Sal
 I+8EOLvcAfxRRAfQff4pL4zaa/n8hDVfLDrLLIn+ovZEuARRwhF44n01DRtR0pb6LHH9
 7Y7fOdpzlSd4bRBftdwt/ZYdxni/HGIK2drUSTi0/IiYV371o4ZVl0Zpn3xIrbNZFZco
 P3nw==
X-Gm-Message-State: APjAAAXzqLp9Adcb/byp60Iq0foRDnvM+lZDh4PwbhY8z2BAugJGmdPM
 Vi15kDNXCifl6tDUWJvuJpbmClqh
X-Google-Smtp-Source: APXvYqyXFPyIzNKgtpEIYmoJ8E4LJMdpAhrF0eoHoj6zTeCbgtd6kGKVnD0hYlZ7cW/EFUADEeAPng==
X-Received: by 2002:a50:aad9:: with SMTP id r25mr29943190edc.266.1557205642577; 
 Mon, 06 May 2019 22:07:22 -0700 (PDT)
Received: from localhost.localdomain ([2a02:168:6806:0:488a:517d:fdd7:fdca])
 by smtp.gmail.com with ESMTPSA id c8sm1070496ejs.87.2019.05.06.22.07.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 22:07:21 -0700 (PDT)
From: Klaus Kudielka <klaus.kudielka@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 May 2019 07:07:07 +0200
Message-Id: <20190507050707.3709-1-klaus.kudielka@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_220725_504121_092C987B 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (klaus.kudielka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v3 1/2] base-files: improve
 lib/upgrade/common.sh
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Tomasz Maciej Nowak <tomek_n@o2.pl>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Klaus Kudielka <klaus.kudielka@gmail.com>, linus.walleij@linaro.org,
 Christian Lamparter <chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Recently, upgrade device autodetection has been added to the mvebu target.
This exposes some shortcomings of the generic export_bootdevice function,
e.g. on the Turris Omnia: export_bootdevice silently reports the root
partition to be the boot device. This makes the sysupgrade process fail at
several places.

Fix this by clearly distinguishing between /proc/cmdline arguments which
specify the boot disk, and those which specify the root partition. Only in
the latter case, strip off the partition, and do it consistently.  Include
/dev/mmcblk* and /dev/sd* as potential arguments to "root=".

The root of the problem is that the *existing* export_bootdevice in
/lib/upgrade/common.sh behaves differently, if the kernel is booted with
root=/dev/..., or if it is booted with root=PARTUUID=...

In the former case, it reports back major/minor of the root partition,
in the latter case it reports back major/minor of the complete boot disk.

The targets mentioned below have added workarounds to this behaviour, by
specifying *negative* increments to the export_partdevice function.

And then came the mvebu target to use export_bootdevice / export_partdevice
as well. Now, different subtargets boot differently, and the workaround
would be even more complex.

I think now is the time to make export_bootdevice behave consistently,
and to report major/minor of the boot disk, period.

Consequently, those targets, which boot with root=/dev/... *and* use
export_bootdevice / export_partdevice, have to be adapted to use
positive increments, otherwise they are broken by the change
to export_bootdevice.

v2:

Remove workarounds for the old, inconsistent behaviour from the following
targets: apm821xx, brcm2708, omap, sunxi.  The targets affected were easy
to spot with find & grep.

v3:

Make export_bootdevice more generic. It now accepts
root=PARTUUID=<pseudo PARTUUID for MBR> (any partition) and
root=/dev/* (any partition).

Fixes: 4e8345ff68 ("mvebu: base-files: autodetect upgrade device")

Signed-off-by: Klaus Kudielka <klaus.kudielka@gmail.com>
---
 .../base-files/files/lib/upgrade/common.sh    | 32 +++++++++++--------
 .../apm821xx/base-files/lib/upgrade/wdbook.sh | 11 ++-----
 .../base-files/lib/upgrade/platform.sh        | 11 ++-----
 .../base-files/lib/preinit/79_move_config     |  2 +-
 .../omap/base-files/lib/upgrade/platform.sh   |  7 ++--
 .../base-files/lib/preinit/79_move_config     |  2 +-
 .../sunxi/base-files/lib/upgrade/platform.sh  |  7 ++--
 7 files changed, 33 insertions(+), 39 deletions(-)

diff --git a/package/base-files/files/lib/upgrade/common.sh b/package/base-files/files/lib/upgrade/common.sh
index b3a29fb32..bbedeefd2 100644
--- a/package/base-files/files/lib/upgrade/common.sh
+++ b/package/base-files/files/lib/upgrade/common.sh
@@ -101,35 +101,41 @@ get_magic_long() {
 }
 
 export_bootdevice() {
-	local cmdline uuid disk uevent line
+	local cmdline bootdisk rootpart uuid blockdev uevent line
 	local MAJOR MINOR DEVNAME DEVTYPE
 
 	if read cmdline < /proc/cmdline; then
 		case "$cmdline" in
 			*block2mtd=*)
-				disk="${cmdline##*block2mtd=}"
-				disk="${disk%%,*}"
+				bootdisk="${cmdline##*block2mtd=}"
+				bootdisk="${bootdisk%%,*}"
 			;;
 			*root=*)
-				disk="${cmdline##*root=}"
-				disk="${disk%% *}"
+				rootpart="${cmdline##*root=}"
+				rootpart="${rootpart%% *}"
 			;;
 		esac
 
-		case "$disk" in
-			PARTUUID=[a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9]-02)
-				uuid="${disk#PARTUUID=}"
-				uuid="${uuid%-02}"
-				for disk in $(find /dev -type b); do
-					set -- $(dd if=$disk bs=1 skip=440 count=4 2>/dev/null | hexdump -v -e '4/1 "%02x "')
+		case "$bootdisk" in
+			/dev/*)
+				uevent="/sys/class/block/${bootdisk##*/}/uevent"
+			;;
+		esac
+
+		case "$rootpart" in
+			PARTUUID=[a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9]-[a-f0-9][a-f0-9])
+				uuid="${rootpart#PARTUUID=}"
+				uuid="${uuid%-[a-f0-9][a-f0-9]}"
+				for blockdev in $(find /dev -type b); do
+					set -- $(dd if=$blockdev bs=1 skip=440 count=4 2>/dev/null | hexdump -v -e '4/1 "%02x "')
 					if [ "$4$3$2$1" = "$uuid" ]; then
-						uevent="/sys/class/block/${disk##*/}/uevent"
+						uevent="/sys/class/block/${blockdev##*/}/uevent"
 						break
 					fi
 				done
 			;;
 			/dev/*)
-				uevent="/sys/class/block/${disk##*/}/uevent"
+				uevent="/sys/class/block/${rootpart##*/}/../uevent"
 			;;
 		esac
 
diff --git a/target/linux/apm821xx/base-files/lib/upgrade/wdbook.sh b/target/linux/apm821xx/base-files/lib/upgrade/wdbook.sh
index 2287e0619..c19127114 100644
--- a/target/linux/apm821xx/base-files/lib/upgrade/wdbook.sh
+++ b/target/linux/apm821xx/base-files/lib/upgrade/wdbook.sh
@@ -7,7 +7,7 @@ mbl_do_platform_check() {
 
 	[ "$#" -gt 1 ] && return 1
 
-	export_bootdevice && export_partdevice diskdev -2 || {
+	export_bootdevice && export_partdevice diskdev 0 || {
 		echo "Unable to determine upgrade device"
 		return 1
 	}
@@ -36,7 +36,7 @@ mbl_do_platform_check() {
 mbl_do_upgrade() {
 	local diskdev partdev diff
 
-	export_bootdevice && export_partdevice diskdev -2 || {
+	export_bootdevice && export_partdevice diskdev 0 || {
 		echo "Unable to determine upgrade device"
 		return 1
 	}
@@ -70,10 +70,6 @@ mbl_do_upgrade() {
 
 	#iterate over each partition from the image and write it to the boot disk
 	while read part start size; do
-		# root is /dev/sd[a|b]2 and not /dev/sd[a|b] this causes some problem
-		# one of which is this offset, I'm not sure what's the best fix, so
-		# here's a WA.
-		let part=$((part - 2))
 		if export_partdevice partdev $part; then
 			echo "Writing image to /dev/$partdev..."
 			get_image "$@" | dd of="/dev/$partdev" ibs="512" obs=1M skip="$start" count="$size" conv=fsync
@@ -90,8 +86,7 @@ mbl_do_upgrade() {
 mbl_copy_config() {
 	local partdev
 
-	# Same as above /dev/sd[a|b]2 is root, so /boot is -1
-	if export_partdevice partdev -1; then
+	if export_partdevice partdev 1; then
 		mount -t ext4 -o rw,noatime "/dev/$partdev" /mnt
 		cp -af "$CONF_TAR" /mnt/
 		umount /mnt
diff --git a/target/linux/brcm2708/base-files/lib/upgrade/platform.sh b/target/linux/brcm2708/base-files/lib/upgrade/platform.sh
index 62eede53d..37e479272 100644
--- a/target/linux/brcm2708/base-files/lib/upgrade/platform.sh
+++ b/target/linux/brcm2708/base-files/lib/upgrade/platform.sh
@@ -9,7 +9,7 @@ platform_check_image() {
 
 	[ "$#" -gt 1 ] && return 1
 
-	export_bootdevice && export_partdevice diskdev -2 || {
+	export_bootdevice && export_partdevice diskdev 0 || {
 		echo "Unable to determine upgrade device"
 		return 1
 	}
@@ -38,7 +38,7 @@ platform_check_image() {
 platform_do_upgrade() {
 	local diskdev partdev diff
 
-	export_bootdevice && export_partdevice diskdev -2 || {
+	export_bootdevice && export_partdevice diskdev 0 || {
 		echo "Unable to determine upgrade device"
 		return 1
 	}
@@ -72,10 +72,6 @@ platform_do_upgrade() {
 
 	#iterate over each partition from the image and write it to the boot disk
 	while read part start size; do
-		# root is /dev/sd[a|b]2 and not /dev/sd[a|b] this causes some problem
-		# one of which is this offset, I'm not sure what's the best fix, so
-		# here's a WA.
-		let part=$((part - 2))
 		if export_partdevice partdev $part; then
 			echo "Writing image to /dev/$partdev..."
 			get_image "$@" | dd of="/dev/$partdev" ibs="512" obs=1M skip="$start" count="$size" conv=fsync
@@ -92,8 +88,7 @@ platform_do_upgrade() {
 platform_copy_config() {
 	local partdev
 
-	# Same as above /dev/sd[a|b]2 is root, so /boot is -1
-	if export_partdevice partdev -1; then
+	if export_partdevice partdev 1; then
 		mkdir -p /boot
 		[ -f /boot/kernel.img ] || mount -t vfat -o rw,noatime "/dev/$partdev" /boot
 		cp -af "$CONF_TAR" /boot/
diff --git a/target/linux/omap/base-files/lib/preinit/79_move_config b/target/linux/omap/base-files/lib/preinit/79_move_config
index c11258868..83171b3ba 100644
--- a/target/linux/omap/base-files/lib/preinit/79_move_config
+++ b/target/linux/omap/base-files/lib/preinit/79_move_config
@@ -6,7 +6,7 @@ move_config() {
 
 	. /lib/upgrade/common.sh
 
-	if export_bootdevice && export_partdevice partdev -1; then
+	if export_bootdevice && export_partdevice partdev 1; then
 		if mount -t vfat -o rw,noatime "/dev/$partdev" /mnt; then
 			if [ -f /mnt/sysupgrade.tgz ]; then
 				mv -f /mnt/sysupgrade.tgz /
diff --git a/target/linux/omap/base-files/lib/upgrade/platform.sh b/target/linux/omap/base-files/lib/upgrade/platform.sh
index 88ef4790e..abe910b15 100644
--- a/target/linux/omap/base-files/lib/upgrade/platform.sh
+++ b/target/linux/omap/base-files/lib/upgrade/platform.sh
@@ -1,7 +1,7 @@
 platform_check_image() {
 	local diskdev partdev diff
 
-	export_bootdevice && export_partdevice diskdev -2 || {
+	export_bootdevice && export_partdevice diskdev 0 || {
 		echo "Unable to determine upgrade device"
 		return 1
 	}
@@ -28,7 +28,7 @@ platform_check_image() {
 platform_copy_config() {
 	local partdev
 
-	if export_partdevice partdev -1; then
+	if export_partdevice partdev 1; then
 		mount -t vfat -o rw,noatime "/dev/$partdev" /mnt
 		cp -af "$CONF_TAR" /mnt/
 		umount /mnt
@@ -38,7 +38,7 @@ platform_copy_config() {
 platform_do_upgrade() {
 	local diskdev partdev diff
 
-	export_bootdevice && export_partdevice diskdev -2 || {
+	export_bootdevice && export_partdevice diskdev 0 || {
 		echo "Unable to determine upgrade device"
 		return 1
 	}
@@ -74,7 +74,6 @@ platform_do_upgrade() {
 	get_image "$@" | dd of="$diskdev" bs=1024 skip=8 seek=8 count=1016 conv=fsync
 	#iterate over each partition from the image and write it to the boot disk
 	while read part start size; do
-		part="$(($part - 2))"
 		if export_partdevice partdev $part; then
 			echo "Writing image to /dev/$partdev..."
 			get_image "$@" | dd of="/dev/$partdev" ibs="512" obs=1M skip="$start" count="$size" conv=fsync
diff --git a/target/linux/sunxi/base-files/lib/preinit/79_move_config b/target/linux/sunxi/base-files/lib/preinit/79_move_config
index c11258868..83171b3ba 100644
--- a/target/linux/sunxi/base-files/lib/preinit/79_move_config
+++ b/target/linux/sunxi/base-files/lib/preinit/79_move_config
@@ -6,7 +6,7 @@ move_config() {
 
 	. /lib/upgrade/common.sh
 
-	if export_bootdevice && export_partdevice partdev -1; then
+	if export_bootdevice && export_partdevice partdev 1; then
 		if mount -t vfat -o rw,noatime "/dev/$partdev" /mnt; then
 			if [ -f /mnt/sysupgrade.tgz ]; then
 				mv -f /mnt/sysupgrade.tgz /
diff --git a/target/linux/sunxi/base-files/lib/upgrade/platform.sh b/target/linux/sunxi/base-files/lib/upgrade/platform.sh
index 88ef4790e..abe910b15 100644
--- a/target/linux/sunxi/base-files/lib/upgrade/platform.sh
+++ b/target/linux/sunxi/base-files/lib/upgrade/platform.sh
@@ -1,7 +1,7 @@
 platform_check_image() {
 	local diskdev partdev diff
 
-	export_bootdevice && export_partdevice diskdev -2 || {
+	export_bootdevice && export_partdevice diskdev 0 || {
 		echo "Unable to determine upgrade device"
 		return 1
 	}
@@ -28,7 +28,7 @@ platform_check_image() {
 platform_copy_config() {
 	local partdev
 
-	if export_partdevice partdev -1; then
+	if export_partdevice partdev 1; then
 		mount -t vfat -o rw,noatime "/dev/$partdev" /mnt
 		cp -af "$CONF_TAR" /mnt/
 		umount /mnt
@@ -38,7 +38,7 @@ platform_copy_config() {
 platform_do_upgrade() {
 	local diskdev partdev diff
 
-	export_bootdevice && export_partdevice diskdev -2 || {
+	export_bootdevice && export_partdevice diskdev 0 || {
 		echo "Unable to determine upgrade device"
 		return 1
 	}
@@ -74,7 +74,6 @@ platform_do_upgrade() {
 	get_image "$@" | dd of="$diskdev" bs=1024 skip=8 seek=8 count=1016 conv=fsync
 	#iterate over each partition from the image and write it to the boot disk
 	while read part start size; do
-		part="$(($part - 2))"
 		if export_partdevice partdev $part; then
 			echo "Writing image to /dev/$partdev..."
 			get_image "$@" | dd of="/dev/$partdev" ibs="512" obs=1M skip="$start" count="$size" conv=fsync
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
