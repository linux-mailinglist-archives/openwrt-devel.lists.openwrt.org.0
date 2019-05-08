Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC9B17FF3
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 May 2019 20:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F39A1wxps3lA6j6F5lp9pLlLOhA2ehsHGVAi4l1Em1I=; b=jtdFsP0IyN4sbk
	64Opi/M9VVYFwGbCnqQPz1kqxfwVXwcJXhi3TWtoLQ5bWMWjLHHq5OW/Uq+THKfnoz84sn5mBSHOX
	PcUxjFM1pvz241KFXRFCnsRik+Og5xlFmG1dxYuoiAohH/jsfAT9wQLC/az64p8v1DQUVovOY0PnG
	84Ae44EwFXyEFH3BrvSpj8/GhTT+jhBprHIMptJ25sja/RbSmxMlsHdb8v+KmgIlWPsfcTz9tGJYJ
	EZKQ57n9zc6DXFLuUO4bLaB1dENYSHq5sdY7CEYtC39mh01ibriCDhQByToOLTfUTOp3UzqQsVlnY
	HzDuF9t9N6xydMLKe86g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORVV-0006rq-LC; Wed, 08 May 2019 18:41:33 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORVN-0006rD-TD
 for openwrt-devel@lists.openwrt.org; Wed, 08 May 2019 18:41:27 +0000
Received: by mail-ed1-x544.google.com with SMTP id e24so22993037edq.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 May 2019 11:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uXTTh/LaXSJUhZ1AwNZKVaDlzUfPATTXZvMn1UHmeQY=;
 b=kHq2aw6/iB+GJUvELFSA0KYvQ79Xif76QtC1Ue3G2YCeOlKLmxdEYz1HNDhPC3BIc0
 98cOoDzZb3n1OP1pPfy7p2vYIapHAGP5hfK9rQYnPsC8p8P9TirJxAr3JAZgFEEcaDwi
 PwYpTdbAX1wzIjCRMDTW4F+c8osECHRqqusURDdqFqBodTolW9ykzAnMajQWcUPTERIX
 +rdOCSrfxn6sGIm8nZ94sM3noEbt4SQkdfyoDmgXD1wacJgPx0akkYc+B2SUGAlZQR4W
 MURCBD8G+g9fpqbvoykSBZkjuRq/lY/GvqQpltua1LBQ3yqOhrSCPCSRVACnttsRFBBg
 iPNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uXTTh/LaXSJUhZ1AwNZKVaDlzUfPATTXZvMn1UHmeQY=;
 b=pRbri1riYaLiqLDfOOz1xISpNHKnKXBEkgJcRKDGgWTZNpGlSwLEbBssREPc1rhBcf
 3+X5vhWPzOI30nnBRh4QJi4DOhu9RUrBuQNI3nUqCipBotsHGn/Mdc7r3nsBrIwb+Xij
 7KDdZulOHVibFtHxTtRv0/LlzyYDOSnbGnBOAIcUwKgvcVG4xMPHoHYKG6HK6kmuQ/e5
 kvN3jgCVzfkVfbHED30GAyX/kRQIlML03nA+E2dXKD/mUuKQvnWlxY+q0U1ByFyIgtsA
 NSI/aQvUhmMy88mJm+/vhxXxcxPt6c9h5xYBy5kWWr0Wz3gc8kq9os+84kWoYBDsfqQ3
 zMWg==
X-Gm-Message-State: APjAAAU8ihtSz78eEDFQdFcLkw+4wzFZr6Q03avWEUxC6cWNqozhicln
 iUnlSiEw2bUfNzB8whfKE3sX/AQR
X-Google-Smtp-Source: APXvYqwXVtIK0nn9a2YEl+iOz93dMP9PFtuKbyax7Jy5/rboRf707mrEbBo4W25e51PZFBdWFpSl8g==
X-Received: by 2002:a50:9203:: with SMTP id i3mr23640931eda.172.1557340883151; 
 Wed, 08 May 2019 11:41:23 -0700 (PDT)
Received: from mars.lan ([2a02:168:6806:0:299c:c7b9:f338:c755])
 by smtp.gmail.com with ESMTPSA id g7sm2769374ejl.73.2019.05.08.11.41.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 11:41:22 -0700 (PDT)
From: Klaus Kudielka <klaus.kudielka@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 May 2019 20:40:50 +0200
Message-Id: <20190508184051.4154-1-klaus.kudielka@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_114125_948208_E5B1EC5A 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (klaus.kudielka[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH RESEND V3 1/2] base-files: improve
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
the latter case, strip off the partition, and do it consistently.
root=PARTUUID=<pseudo PARTUUID for MBR> (any partition) and root=/dev/*
(any partition) are accepted.

The root of the problem is that the *existing* export_bootdevice in
/lib/upgrade/common.sh behaves differently, if the kernel is booted with
root=/dev/..., or if it is booted with root=PARTUUID=...

In the former case, it reports back major/minor of the root partition,
in the latter case it reports back major/minor of the complete boot disk.

Targets, which boot with root=/dev/... *and* use export_bootdevice /
export_partdevice, have added workarounds to this behaviour, by specifying
*negative* increments to the export_partdevice function.

Consequently, those targets have to be adapted to use positive increments,
otherwise they are broken by the change to export_bootdevice.

Fixes: 4e8345ff68 ("mvebu: base-files: autodetect upgrade device")
Signed-off-by: Klaus Kudielka <klaus.kudielka@gmail.com>
---
v2:

Remove workarounds for the old, inconsistent behaviour from the following
targets: apm821xx, brcm2708, omap, sunxi.

v3:

Make export_bootdevice more generic. It now accepts
root=PARTUUID=<pseudo PARTUUID for MBR> (any partition) and
root=/dev/* (any partition).

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
