Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C547411E458
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 14:07:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f4E/6Ykb3CIUU9eZayvcQrYmfK6Zq+6/FwZgR98VYDI=; b=o8CE+ndoWZUiisXr2BIN5FB5p
	uoy3/xRlMEAAg29X4lWlMrdwX0WGl/tM+vQYQfqOW5rSKJ5giS3h18rCa9jKE5u/pTutKU9j+NS4G
	CsNOaC9+j7MuoMT7TkKmwEYQVXLMIAM0sK6/byz0UO2JVIA69Vo34nfdgEzuDQiut55BPsxXdZ5q6
	0CDzudGge1tD4FDw2bD/B2cXb6s1uLzle3bcs2m5VJa/Ebq9S8Q3DtVDM031f7iEi7VGWulNCTj8I
	0FEQgGBuIN1cO6Mx+eUkAsobUmVeFvkxRSfdyO6YRj4eHJ+j5dP0K4sFaKctfDIygH6vn33CDIdNm
	xRhvMkIqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifkfD-0005zD-6K; Fri, 13 Dec 2019 13:07:23 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifkf5-0005y8-2H
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 13:07:17 +0000
Received: from pd95fd344.dip0.t-ipconnect.de ([217.95.211.68]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1ifkf2-0005a8-Js; Fri, 13 Dec 2019 14:07:12 +0100
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191213111146.1492-1-freifunk@adrianschmutzler.de>
From: John Crispin <john@phrozen.org>
Message-ID: <89b69073-cddb-5b08-d555-08efd97dd9f0@phrozen.org>
Date: Fri, 13 Dec 2019 14:07:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191213111146.1492-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_050715_280405_B8F517D2 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFT PATCH v2] mediatek: split base-files into
 subtargets
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 13/12/2019 12:11, Adrian Schmutzler wrote:
> This splits some base-files across subtargets, as done previously
> on ath79 and ramips and also introduced for mt7629 subtarget here
> already.
> 
> While at it, apply the following fixes:
> - Remove lots of trailing whitespaces
> - Remove wildcard on unielec,u7623-02-emmc-512m
> - Remove inconsistent quotation marks in cases
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Acked-by: John Crispin <john@phrozen.org>
I'll be doing some cleanups to the target next week and will look at the 
plaform_check issue
> 
> ---
> 
> Changes in v2:
> - rebase
> 
> Note that the "left-over" platform_check_image for mt7622 looks odd.
> I kept the original logic for now.
> ---
>   .../mt7622/base-files/etc/board.d/02_network  | 29 ++++++++++++++
>   .../mt7622/base-files/lib/upgrade/platform.sh | 25 ++++++++++++
>   .../base-files/etc/board.d/02_network         |  8 ++--
>   .../base-files/lib/preinit/07_set_iface_mac   |  2 +-
>   .../base-files/lib/preinit/79_move_config     |  0
>   .../base-files/lib/upgrade/platform.sh        | 38 +++++++++----------
>   6 files changed, 78 insertions(+), 24 deletions(-)
>   create mode 100755 target/linux/mediatek/mt7622/base-files/etc/board.d/02_network
>   create mode 100755 target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh
>   rename target/linux/mediatek/{ => mt7623}/base-files/etc/board.d/02_network (85%)
>   rename target/linux/mediatek/{ => mt7623}/base-files/lib/preinit/07_set_iface_mac (97%)
>   rename target/linux/mediatek/{ => mt7623}/base-files/lib/preinit/79_move_config (100%)
>   rename target/linux/mediatek/{ => mt7623}/base-files/lib/upgrade/platform.sh (50%)
> 
> diff --git a/target/linux/mediatek/mt7622/base-files/etc/board.d/02_network b/target/linux/mediatek/mt7622/base-files/etc/board.d/02_network
> new file mode 100755
> index 0000000000..d719a35dec
> --- /dev/null
> +++ b/target/linux/mediatek/mt7622/base-files/etc/board.d/02_network
> @@ -0,0 +1,29 @@
> +#!/bin/sh
> +
> +. /lib/functions.sh
> +. /lib/functions/uci-defaults.sh
> +. /lib/functions/system.sh
> +
> +mediatek_setup_interfaces()
> +{
> +	local board="$1"
> +
> +	case $board in
> +	esac
> +}
> +
> +mediatek_setup_macs()
> +{
> +	local board="$1"
> +
> +	case $board in
> +	esac
> +}
> +
> +board_config_update
> +board=$(board_name)
> +mediatek_setup_interfaces $board
> +mediatek_setup_macs $board
> +board_config_flush
> +
> +exit 0
> diff --git a/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh b/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh
> new file mode 100755
> index 0000000000..396c814ab7
> --- /dev/null
> +++ b/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh
> @@ -0,0 +1,25 @@
> +platform_do_upgrade() {
> +	local board=$(board_name)
> +	case "$board" in
> +	*)
> +		default_do_upgrade "$1"
> +		;;
> +	esac
> +}
> +
> +PART_NAME=firmware
> +
> +platform_check_image() {
> +	local board=$(board_name)
> +
> +	[ "$#" -gt 1 ] && return 1
> +
> +	case "$board" in
> +	*)
> +		echo "Sysupgrade is not supported on your board yet."
> +		return 1
> +		;;
> +	esac
> +
> +	return 0
> +}
> diff --git a/target/linux/mediatek/base-files/etc/board.d/02_network b/target/linux/mediatek/mt7623/base-files/etc/board.d/02_network
> similarity index 85%
> rename from target/linux/mediatek/base-files/etc/board.d/02_network
> rename to target/linux/mediatek/mt7623/base-files/etc/board.d/02_network
> index faa2434241..3b71ffe3aa 100755
> --- a/target/linux/mediatek/base-files/etc/board.d/02_network
> +++ b/target/linux/mediatek/mt7623/base-files/etc/board.d/02_network
> @@ -9,12 +9,12 @@ mediatek_setup_interfaces()
>   	local board="$1"
>   
>   	case $board in
> -	'mediatek,mt7623a-rfb-emmc')
> +	mediatek,mt7623a-rfb-emmc)
>   		ucidef_set_interface_lan "lan0 lan1 lan2 lan3"
>   		ucidef_set_interface_wan eth1
>   		;;
> -	'bananapi,bpi-r2'|\
> -	"unielec,u7623"*)
> +	bananapi,bpi-r2|\
> +	unielec,u7623-02-emmc-512m)
>   		ucidef_set_interfaces_lan_wan "lan0 lan1 lan2 lan3" "wan"
>   		;;
>   	esac
> @@ -25,7 +25,7 @@ mediatek_setup_macs()
>   	local board="$1"
>   
>   	case $board in
> -	"unielec,u7623"*)
> +	unielec,u7623-02-emmc-512m)
>   		mac=$(cat /sys/class/net/wan/address)
>   		ucidef_set_interface_macaddr "wan" $mac
>   		;;
> diff --git a/target/linux/mediatek/base-files/lib/preinit/07_set_iface_mac b/target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac
> similarity index 97%
> rename from target/linux/mediatek/base-files/lib/preinit/07_set_iface_mac
> rename to target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac
> index 3d04000738..7a73a2d84d 100644
> --- a/target/linux/mediatek/base-files/lib/preinit/07_set_iface_mac
> +++ b/target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac
> @@ -10,7 +10,7 @@ preinit_set_mac_address() {
>   	. /lib/functions/system.sh
>   
>   	case $(board_name) in
> -	"unielec,u7623"*)
> +	unielec,u7623-02-emmc-512m)
>   		if [ -b $RECOVERY_PART ]; then
>   			insmod nls_cp437
>   			insmod nls_iso8859-1
> diff --git a/target/linux/mediatek/base-files/lib/preinit/79_move_config b/target/linux/mediatek/mt7623/base-files/lib/preinit/79_move_config
> similarity index 100%
> rename from target/linux/mediatek/base-files/lib/preinit/79_move_config
> rename to target/linux/mediatek/mt7623/base-files/lib/preinit/79_move_config
> diff --git a/target/linux/mediatek/base-files/lib/upgrade/platform.sh b/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh
> similarity index 50%
> rename from target/linux/mediatek/base-files/lib/upgrade/platform.sh
> rename to target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh
> index 9c99ee1c18..39dcb8e831 100755
> --- a/target/linux/mediatek/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh
> @@ -1,7 +1,7 @@
> -platform_do_upgrade() {
> +platform_do_upgrade() {
>   	local board=$(board_name)
>   	case "$board" in
> -	"unielec,u7623"*)
> +	unielec,u7623-02-emmc-512m)
>   		#Keep the persisten random mac address (if it exists)
>   		mkdir -p /tmp/recovery
>   		mount -o rw,noatime /dev/mmcblk0p1 /tmp/recovery
> @@ -26,29 +26,29 @@ platform_do_upgrade() {
>   
>   PART_NAME=firmware
>   
> -platform_check_image() {
> -	local board=$(board_name)
> -	local magic="$(get_magic_long "$1")"
> +platform_check_image() {
> +	local board=$(board_name)
> +	local magic="$(get_magic_long "$1")"
>   
> -	[ "$#" -gt 1 ] && return 1
> +	[ "$#" -gt 1 ] && return 1
>   
> -	case "$board" in
> +	case "$board" in
>   	bananapi,bpi-r2|\
> -	"unielec,u7623"*)
> -		[ "$magic" != "27051956" ] && {
> +	unielec,u7623-02-emmc-512m)
> +		[ "$magic" != "27051956" ] && {
>   			echo "Invalid image type."
> -			return 1
> -		}
> -		return 0
> -		;;
> +			return 1
> +		}
> +		return 0
> +		;;
>   
> -	*)
> +	*)
>   		echo "Sysupgrade is not supported on your board yet."
> -		return 1
> -		;;
> -	esac
> +		return 1
> +		;;
> +	esac
>   
> -	return 0
> +	return 0
>   }
>   
>   platform_copy_config_emmc() {
> @@ -61,7 +61,7 @@ platform_copy_config_emmc() {
>   
>   platform_copy_config() {
>   	case "$(board_name)" in
> -	"unielec,u7623"*)
> +	unielec,u7623-02-emmc-512m)
>   		platform_copy_config_emmc
>   		;;
>   	esac
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
