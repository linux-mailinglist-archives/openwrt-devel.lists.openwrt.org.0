Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E9C16503
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 May 2019 15:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QxKCeDHnnVdRWbSVeKAviZW+Abb/5Nom7rxv6exOJRE=; b=e5e2dv5Dlz/pI8RbKG974WzwBS
	3IXXisxbNUq1gYnQY5aHdOan2ZJNpttOThCyTWzmN7OaXf7EChSs3j0ZLAavuf9bdDzp2MKf/za+d
	HQAwZE2G4JihdecaDDzXX1O3ueLtn6PXPQfO7gADYw0mqtt2RRvRO0YqRHn+/HnpFpIPANEMBY8Wu
	39T+SSqQfPTRg0e1iJquagYtqV6ZVcHrNmBfWQ+XVUzN22hLByIB1Eywwky3l6FOKPehnpI83LI6h
	Eo8wUGSx3iBk+9MH2c9Qa8ZAPQ9wGKa9Tkmz5Uwqk/ubfiOBg165Tuw7GNXf3kvJ66P7hd5A0Yd16
	jOYE6KLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0VK-0001vv-Ik; Tue, 07 May 2019 13:51:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0V7-0001vP-QD
 for openwrt-devel@lists.openwrt.org; Tue, 07 May 2019 13:51:24 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2A71532A6;
 Tue,  7 May 2019 15:51:19 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 02e286df;
 Tue, 7 May 2019 15:51:17 +0200 (CEST)
Date: Tue, 7 May 2019 15:51:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Klaus Kudielka <klaus.kudielka@gmail.com>
Message-ID: <20190507135117.GK81826@meh.true.cz>
References: <20190507050707.3709-1-klaus.kudielka@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507050707.3709-1-klaus.kudielka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065122_147151_DC09D697 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v3 1/2] base-files: improve
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: linus.walleij@linaro.org, openwrt-devel@lists.openwrt.org,
 Tomasz Maciej Nowak <tomek_n@o2.pl>, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Klaus Kudielka <klaus.kudielka@gmail.com> [2019-05-07 07:07:07]:

Hi,

as you seem passionate working on this improvements, I've changed status of
your v2 from Accepted to Superseded. FYI, patch 2/2 is having some issue to
reach the list and patchwork, maybe you need to resend it?

BTW it's a common practice to put the patch changelog after your commit
message, below the --- line, but above the diffstat, so it would be removed
during the merging process and won't be part of the final commit message, also
we don't put the newline between the tags, so it should probably be like this
(don't worry about this cosmetic change, it could be adjusted during merging,
so no need for v4 just because of this).

-- ynezz

> Fixes: 4e8345ff68 ("mvebu: base-files: autodetect upgrade device")
> Signed-off-by: Klaus Kudielka <klaus.kudielka@gmail.com>
> ---
> v2:
> 
>   Remove workarounds for the old, inconsistent behaviour from the following
>   targets: apm821xx, brcm2708, omap, sunxi.  The targets affected were easy
>   to spot with find & grep.
> 
> v3:
> 
>   Make export_bootdevice more generic. It now accepts
>   root=PARTUUID=<pseudo PARTUUID for MBR> (any partition) and
>   root=/dev/* (any partition).
>
>  .../base-files/files/lib/upgrade/common.sh    | 32 +++++++++++--------
>  .../apm821xx/base-files/lib/upgrade/wdbook.sh | 11 ++-----
>  .../base-files/lib/upgrade/platform.sh        | 11 ++-----
>  .../base-files/lib/preinit/79_move_config     |  2 +-
>  .../omap/base-files/lib/upgrade/platform.sh   |  7 ++--
>  .../base-files/lib/preinit/79_move_config     |  2 +-
>  .../sunxi/base-files/lib/upgrade/platform.sh  |  7 ++--
>  7 files changed, 33 insertions(+), 39 deletions(-)
> 
> diff --git a/package/base-files/files/lib/upgrade/common.sh b/package/base-files/files/lib/upgrade/common.sh
> index b3a29fb32..bbedeefd2 100644
> --- a/package/base-files/files/lib/upgrade/common.sh
> +++ b/package/base-files/files/lib/upgrade/common.sh
> @@ -101,35 +101,41 @@ get_magic_long() {
>  }
>  
>  export_bootdevice() {
> -	local cmdline uuid disk uevent line
> +	local cmdline bootdisk rootpart uuid blockdev uevent line
>  	local MAJOR MINOR DEVNAME DEVTYPE
>  
>  	if read cmdline < /proc/cmdline; then
>  		case "$cmdline" in
>  			*block2mtd=*)
> -				disk="${cmdline##*block2mtd=}"
> -				disk="${disk%%,*}"
> +				bootdisk="${cmdline##*block2mtd=}"
> +				bootdisk="${bootdisk%%,*}"
>  			;;
>  			*root=*)
> -				disk="${cmdline##*root=}"
> -				disk="${disk%% *}"
> +				rootpart="${cmdline##*root=}"
> +				rootpart="${rootpart%% *}"
>  			;;
>  		esac
>  
> -		case "$disk" in
> -			PARTUUID=[a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9]-02)
> -				uuid="${disk#PARTUUID=}"
> -				uuid="${uuid%-02}"
> -				for disk in $(find /dev -type b); do
> -					set -- $(dd if=$disk bs=1 skip=440 count=4 2>/dev/null | hexdump -v -e '4/1 "%02x "')
> +		case "$bootdisk" in
> +			/dev/*)
> +				uevent="/sys/class/block/${bootdisk##*/}/uevent"
> +			;;
> +		esac
> +
> +		case "$rootpart" in
> +			PARTUUID=[a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9][a-f0-9]-[a-f0-9][a-f0-9])
> +				uuid="${rootpart#PARTUUID=}"
> +				uuid="${uuid%-[a-f0-9][a-f0-9]}"
> +				for blockdev in $(find /dev -type b); do
> +					set -- $(dd if=$blockdev bs=1 skip=440 count=4 2>/dev/null | hexdump -v -e '4/1 "%02x "')
>  					if [ "$4$3$2$1" = "$uuid" ]; then
> -						uevent="/sys/class/block/${disk##*/}/uevent"
> +						uevent="/sys/class/block/${blockdev##*/}/uevent"
>  						break
>  					fi
>  				done
>  			;;
>  			/dev/*)
> -				uevent="/sys/class/block/${disk##*/}/uevent"
> +				uevent="/sys/class/block/${rootpart##*/}/../uevent"
>  			;;
>  		esac
>  
> diff --git a/target/linux/apm821xx/base-files/lib/upgrade/wdbook.sh b/target/linux/apm821xx/base-files/lib/upgrade/wdbook.sh
> index 2287e0619..c19127114 100644
> --- a/target/linux/apm821xx/base-files/lib/upgrade/wdbook.sh
> +++ b/target/linux/apm821xx/base-files/lib/upgrade/wdbook.sh
> @@ -7,7 +7,7 @@ mbl_do_platform_check() {
>  
>  	[ "$#" -gt 1 ] && return 1
>  
> -	export_bootdevice && export_partdevice diskdev -2 || {
> +	export_bootdevice && export_partdevice diskdev 0 || {
>  		echo "Unable to determine upgrade device"
>  		return 1
>  	}
> @@ -36,7 +36,7 @@ mbl_do_platform_check() {
>  mbl_do_upgrade() {
>  	local diskdev partdev diff
>  
> -	export_bootdevice && export_partdevice diskdev -2 || {
> +	export_bootdevice && export_partdevice diskdev 0 || {
>  		echo "Unable to determine upgrade device"
>  		return 1
>  	}
> @@ -70,10 +70,6 @@ mbl_do_upgrade() {
>  
>  	#iterate over each partition from the image and write it to the boot disk
>  	while read part start size; do
> -		# root is /dev/sd[a|b]2 and not /dev/sd[a|b] this causes some problem
> -		# one of which is this offset, I'm not sure what's the best fix, so
> -		# here's a WA.
> -		let part=$((part - 2))
>  		if export_partdevice partdev $part; then
>  			echo "Writing image to /dev/$partdev..."
>  			get_image "$@" | dd of="/dev/$partdev" ibs="512" obs=1M skip="$start" count="$size" conv=fsync
> @@ -90,8 +86,7 @@ mbl_do_upgrade() {
>  mbl_copy_config() {
>  	local partdev
>  
> -	# Same as above /dev/sd[a|b]2 is root, so /boot is -1
> -	if export_partdevice partdev -1; then
> +	if export_partdevice partdev 1; then
>  		mount -t ext4 -o rw,noatime "/dev/$partdev" /mnt
>  		cp -af "$CONF_TAR" /mnt/
>  		umount /mnt
> diff --git a/target/linux/brcm2708/base-files/lib/upgrade/platform.sh b/target/linux/brcm2708/base-files/lib/upgrade/platform.sh
> index 62eede53d..37e479272 100644
> --- a/target/linux/brcm2708/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/brcm2708/base-files/lib/upgrade/platform.sh
> @@ -9,7 +9,7 @@ platform_check_image() {
>  
>  	[ "$#" -gt 1 ] && return 1
>  
> -	export_bootdevice && export_partdevice diskdev -2 || {
> +	export_bootdevice && export_partdevice diskdev 0 || {
>  		echo "Unable to determine upgrade device"
>  		return 1
>  	}
> @@ -38,7 +38,7 @@ platform_check_image() {
>  platform_do_upgrade() {
>  	local diskdev partdev diff
>  
> -	export_bootdevice && export_partdevice diskdev -2 || {
> +	export_bootdevice && export_partdevice diskdev 0 || {
>  		echo "Unable to determine upgrade device"
>  		return 1
>  	}
> @@ -72,10 +72,6 @@ platform_do_upgrade() {
>  
>  	#iterate over each partition from the image and write it to the boot disk
>  	while read part start size; do
> -		# root is /dev/sd[a|b]2 and not /dev/sd[a|b] this causes some problem
> -		# one of which is this offset, I'm not sure what's the best fix, so
> -		# here's a WA.
> -		let part=$((part - 2))
>  		if export_partdevice partdev $part; then
>  			echo "Writing image to /dev/$partdev..."
>  			get_image "$@" | dd of="/dev/$partdev" ibs="512" obs=1M skip="$start" count="$size" conv=fsync
> @@ -92,8 +88,7 @@ platform_do_upgrade() {
>  platform_copy_config() {
>  	local partdev
>  
> -	# Same as above /dev/sd[a|b]2 is root, so /boot is -1
> -	if export_partdevice partdev -1; then
> +	if export_partdevice partdev 1; then
>  		mkdir -p /boot
>  		[ -f /boot/kernel.img ] || mount -t vfat -o rw,noatime "/dev/$partdev" /boot
>  		cp -af "$CONF_TAR" /boot/
> diff --git a/target/linux/omap/base-files/lib/preinit/79_move_config b/target/linux/omap/base-files/lib/preinit/79_move_config
> index c11258868..83171b3ba 100644
> --- a/target/linux/omap/base-files/lib/preinit/79_move_config
> +++ b/target/linux/omap/base-files/lib/preinit/79_move_config
> @@ -6,7 +6,7 @@ move_config() {
>  
>  	. /lib/upgrade/common.sh
>  
> -	if export_bootdevice && export_partdevice partdev -1; then
> +	if export_bootdevice && export_partdevice partdev 1; then
>  		if mount -t vfat -o rw,noatime "/dev/$partdev" /mnt; then
>  			if [ -f /mnt/sysupgrade.tgz ]; then
>  				mv -f /mnt/sysupgrade.tgz /
> diff --git a/target/linux/omap/base-files/lib/upgrade/platform.sh b/target/linux/omap/base-files/lib/upgrade/platform.sh
> index 88ef4790e..abe910b15 100644
> --- a/target/linux/omap/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/omap/base-files/lib/upgrade/platform.sh
> @@ -1,7 +1,7 @@
>  platform_check_image() {
>  	local diskdev partdev diff
>  
> -	export_bootdevice && export_partdevice diskdev -2 || {
> +	export_bootdevice && export_partdevice diskdev 0 || {
>  		echo "Unable to determine upgrade device"
>  		return 1
>  	}
> @@ -28,7 +28,7 @@ platform_check_image() {
>  platform_copy_config() {
>  	local partdev
>  
> -	if export_partdevice partdev -1; then
> +	if export_partdevice partdev 1; then
>  		mount -t vfat -o rw,noatime "/dev/$partdev" /mnt
>  		cp -af "$CONF_TAR" /mnt/
>  		umount /mnt
> @@ -38,7 +38,7 @@ platform_copy_config() {
>  platform_do_upgrade() {
>  	local diskdev partdev diff
>  
> -	export_bootdevice && export_partdevice diskdev -2 || {
> +	export_bootdevice && export_partdevice diskdev 0 || {
>  		echo "Unable to determine upgrade device"
>  		return 1
>  	}
> @@ -74,7 +74,6 @@ platform_do_upgrade() {
>  	get_image "$@" | dd of="$diskdev" bs=1024 skip=8 seek=8 count=1016 conv=fsync
>  	#iterate over each partition from the image and write it to the boot disk
>  	while read part start size; do
> -		part="$(($part - 2))"
>  		if export_partdevice partdev $part; then
>  			echo "Writing image to /dev/$partdev..."
>  			get_image "$@" | dd of="/dev/$partdev" ibs="512" obs=1M skip="$start" count="$size" conv=fsync
> diff --git a/target/linux/sunxi/base-files/lib/preinit/79_move_config b/target/linux/sunxi/base-files/lib/preinit/79_move_config
> index c11258868..83171b3ba 100644
> --- a/target/linux/sunxi/base-files/lib/preinit/79_move_config
> +++ b/target/linux/sunxi/base-files/lib/preinit/79_move_config
> @@ -6,7 +6,7 @@ move_config() {
>  
>  	. /lib/upgrade/common.sh
>  
> -	if export_bootdevice && export_partdevice partdev -1; then
> +	if export_bootdevice && export_partdevice partdev 1; then
>  		if mount -t vfat -o rw,noatime "/dev/$partdev" /mnt; then
>  			if [ -f /mnt/sysupgrade.tgz ]; then
>  				mv -f /mnt/sysupgrade.tgz /
> diff --git a/target/linux/sunxi/base-files/lib/upgrade/platform.sh b/target/linux/sunxi/base-files/lib/upgrade/platform.sh
> index 88ef4790e..abe910b15 100644
> --- a/target/linux/sunxi/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/sunxi/base-files/lib/upgrade/platform.sh
> @@ -1,7 +1,7 @@
>  platform_check_image() {
>  	local diskdev partdev diff
>  
> -	export_bootdevice && export_partdevice diskdev -2 || {
> +	export_bootdevice && export_partdevice diskdev 0 || {
>  		echo "Unable to determine upgrade device"
>  		return 1
>  	}
> @@ -28,7 +28,7 @@ platform_check_image() {
>  platform_copy_config() {
>  	local partdev
>  
> -	if export_partdevice partdev -1; then
> +	if export_partdevice partdev 1; then
>  		mount -t vfat -o rw,noatime "/dev/$partdev" /mnt
>  		cp -af "$CONF_TAR" /mnt/
>  		umount /mnt
> @@ -38,7 +38,7 @@ platform_copy_config() {
>  platform_do_upgrade() {
>  	local diskdev partdev diff
>  
> -	export_bootdevice && export_partdevice diskdev -2 || {
> +	export_bootdevice && export_partdevice diskdev 0 || {
>  		echo "Unable to determine upgrade device"
>  		return 1
>  	}
> @@ -74,7 +74,6 @@ platform_do_upgrade() {
>  	get_image "$@" | dd of="$diskdev" bs=1024 skip=8 seek=8 count=1016 conv=fsync
>  	#iterate over each partition from the image and write it to the boot disk
>  	while read part start size; do
> -		part="$(($part - 2))"
>  		if export_partdevice partdev $part; then
>  			echo "Writing image to /dev/$partdev..."
>  			get_image "$@" | dd of="/dev/$partdev" ibs="512" obs=1M skip="$start" count="$size" conv=fsync
> -- 
> 2.17.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
