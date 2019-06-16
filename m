Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD4047463
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 13:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=452fHUKaA0/OpCPMD0ncZucmXvQwiLR38+Q2lAvVJj4=; b=juJhHnSHzp5iON
	RYEZFrJl47VLADIOKcmQoFEbpaZQCUdmsJCdbFyoqnB16OPU875MVB5zEzmPm/9x+Auztl1MfT8IK
	qmJZS6ByGzKsv98fFeBdRLQboBIgdAq1rxP4Q3R8JxxKK7tyezUrzr41WvJ9ncbCPY4muHVjwNs37
	4BELLUf5K+AwRgN3vBNPgEf6PDFv0ktbF1gWx6HXLs4WI2knPjDaoMraDuHuTlYGdWyLDY4fQ+n6u
	oHuRDqO9PnYUdHqSxaglnpDOWOuwClakoixS8DrL6FAHG9qBrPKK12KwbIxI1LncIr3lfdgxLyl+L
	rgrJsLWqnaC7aF3Mue/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcTfC-0002rL-KQ; Sun, 16 Jun 2019 11:49:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcTeu-0002qp-Hp
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 11:49:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id 207so6472363wma.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 04:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JEKGZL36k6y1iu8bDit2BhUp2LGE11duKNQpoUJDPL8=;
 b=aBQ5ReN1qw+YTgbxuy7ikeq+UIKw9Dl25PBJ+7M2OI7IT97bDn6hGMkDmfma6MAU3P
 8hSKj2R8EEeHVeyMPHKhqAOcdtw1E/3kVL2gVax1VSkfWet3YT+J2zU1eR/GcAL7e/CQ
 Lwyd4GGX9DLGIBrVR3d+bHnWdrpO6GOBHpA6ukcuMlSR8dW6NGrE1ZXrb3TaBoBIFUra
 Kr2UfI4rrlsVj9Z1nL/QshkE3OS8T1+w5CnM8QMTYQSAnaxAkK/CNjcCY5oNbpDD/v+O
 OOuxUzm7q1g3lJkMhQ3wF2C5ZaRmhKEDuuIIpdkfC4vMn3b383tJSz+vKNSE3qm5smYg
 9GVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JEKGZL36k6y1iu8bDit2BhUp2LGE11duKNQpoUJDPL8=;
 b=mwZ+Re98BpF9Tjm6TW3uu95TsSmjFwb5GnRla8n3A8PSx3YSGWKWKEFMnUJTDoedRh
 DV1f/HR7OquZKxF3+ZR7aYw3iSfeTnTuSyoRHEFETcAO4mpVovjZ7FnWf3naepT63Xrs
 U6U3YMIgEFGO4JsBK9H3Bq5Lynd/NErSks+Z6q2/Aee7h4/fa3NEkk+9HWrgKpTfhr2z
 Da5wyXa1St76kziS+o2mL9cLHbsNwX0Zr5qVD5TtZYEVQuslQoqL4b7kQItdrY7wcteM
 7HJfis4kG6JT9KPeCUHq2QJBLRdUFKC8aNEFS1vjlMcX3rmGldXZcS8c8Dcj59GqOvxC
 Ch3A==
X-Gm-Message-State: APjAAAVqgRYsgo0WY8klGcngaiudeZB6uTChelukLy2wgrDaLtCPjI0F
 KZDU5srcoXEKcCiHNCoZvbkpT7MvmuU=
X-Google-Smtp-Source: APXvYqxUuQlFPwJwnDN5VDD9Ty5l68455MdfD/Psc/kvE/CfiB2zNMuyFJ3jaL++kvNVmHRNliGSog==
X-Received: by 2002:a1c:3b45:: with SMTP id i66mr15468077wma.48.1560685753064; 
 Sun, 16 Jun 2019 04:49:13 -0700 (PDT)
Received: from debian64.daheim (pD9E29820.dip0.t-ipconnect.de.
 [217.226.152.32])
 by smtp.gmail.com with ESMTPSA id a81sm13737908wmh.3.2019.06.16.04.49.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 04:49:11 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hcTep-0001jQ-Ax; Sun, 16 Jun 2019 13:49:11 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 16 Jun 2019 13:49:11 +0200
Message-ID: <7807967.26YyYKSkP6@debian64>
In-Reply-To: <20190615214056.11729-2-lede@allycomm.com>
References: <20190615214056.11729-1-lede@allycomm.com>
 <20190615214056.11729-2-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_044916_617605_1D686C3A 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] ipq40xx: Linksys: sysupgrade:
 Ensure OEM volumes are removed
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
Cc: Jeff Kletsky <git-commits@allycomm.com>, Jeff Kletsky <lede@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Saturday, June 15, 2019 11:40:56 PM CEST Jeff Kletsky wrote:
> From: Jeff Kletsky <git-commits@allycomm.com>
> 
> When OEM volumes are present in the [alt_]firmware partition,
> sysupgrade will write a new kernel, but will fail to write
> the root file system. The next boot will hang indefinitely
> 
>     Waiting for root device /dev/ubiblock0_0...
> 
> Modified ipq40xx/base-files/lib/upgrade/linksys.sh
> to remove both `squashfs` and `ubifs` if found
> on the target firmware partition's UBI device.
> 
> Run-tested-on: Linksys EA8300
> 
> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>

Can you check if this is still working? Or if I broke it
when I was implementing the shellcheck changes?

https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=003c63f7b1102702fb4a0580683b21ded1ee1a3e

Cheers,
Christian

> ---
>  .../ipq40xx/base-files/lib/upgrade/linksys.sh | 22 +++++++++++--------
>  1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/linksys.sh b/target/linux/ipq40xx/base-files/lib/upgrade/linksys.sh
> index b8e6dd7352..a6cf5d8de9 100755
> --- a/target/linux/ipq40xx/base-files/lib/upgrade/linksys.sh
> +++ b/target/linux/ipq40xx/base-files/lib/upgrade/linksys.sh
> @@ -1,3 +1,5 @@
> +#!/bin/sh
> +
>  linksys_get_target_firmware() {
>  
>  	local cur_boot_part mtd_ubi0
> @@ -53,8 +55,12 @@ linksys_get_root_magic() {
>  }
>  
>  platform_do_upgrade_linksys() {
> +
>  	local magic_long="$(get_magic_long "$1")"
>  
> +	local rm_oem_fw_vols="squashfs ubifs"	# from OEM [alt_]rootfs UBI
> +	local vol
> +
>  	mkdir -p /var/lock
>  	local part_label="$(linksys_get_target_firmware)"
>  	touch /var/lock/fw_printenv.lock
> @@ -64,7 +70,7 @@ platform_do_upgrade_linksys() {
>  		exit 1
>  	fi
>  
> -	local target_mtd=$(find_mtd_part $part_label)
> +	local target_mtd=$(find_mtd_part "$part_label")
>  
>  	[ "$magic_long" = "73797375" ] && {
>  		CI_KERNPART="$part_label"
> @@ -74,8 +80,6 @@ platform_do_upgrade_linksys() {
>  			CI_UBIPART="alt_rootfs"
>  		fi
>  
> -		# remove "squashfs" vol (in case we are flashing over a stock image, which is also UBI)
> -
>  		local mtdnum="$( find_mtd_index "$CI_UBIPART" )"
>  		if [ ! "$mtdnum" ]; then
>  			echo "cannot find ubi mtd partition $CI_UBIPART"
> @@ -89,15 +93,14 @@ platform_do_upgrade_linksys() {
>  			ubidev="$( nand_find_ubi "$CI_UBIPART" )"
>  		fi
>  
> -		if [ "$ubidev" ]; then
> -			local squash_ubivol="$( nand_find_volume $ubidev squashfs )"
> -			# kill volume
> -			[ "$squash_ubivol" ] && ubirmvol /dev/$ubidev -N squashfs || true
> -		fi
> +		[ "$ubidev" ] && for vol in $rm_oem_fw_vols ; do
> +			ubirmvol "/dev/$ubidev" -N "$vol" 2>/dev/null
> +		done
>  
>  		# complete std upgrade
>  		nand_upgrade_tar "$1"
>  	}
> +
>  	[ "$magic_long" = "27051956" ] && {
>  		# This magic is for a uImage (which is a sysupgrade image)
>  		# check firmwares' rootfs types
> @@ -107,7 +110,8 @@ platform_do_upgrade_linksys() {
>  		if [ "$newroot" = "55424923" -a "$oldroot" = "55424923" ]; then
>  			# we're upgrading from a firmware with UBI to one with UBI
>  			# erase everything to be safe
> -			# - Is that really needed? Won't remove (or comment) the if, because it may be needed in a future device.
> +			# - Is that really needed? Won't remove (or comment) the if,
> +			#   because it may be needed in a future device.
>  			#mtd erase $part_label
>  			#get_image "$1" | mtd -n write - $part_label
>  			echo "writing \"$1\" UBI image to \"$part_label\" (UBI)..."
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
