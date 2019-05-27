Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2814F2B8D0
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 18:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:Message-ID:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=sjRHSZ1jxBLCLXdT9WUES1KWMSqvyxicfQZmBg1N+CA=; b=FbG
	so0odNzTsTZxPTIhH6uEJn0QWrINEM8bUtepP5awJTEV9ZpJMRsdkWu8l7HZPiMaBplH3prqST8K+
	TzvqR0ACVEUkbseo91PesDagRT9M/gNWX6SQ2Pe5FLsPTzWihho4zrKrHrQAg/5rV9YolwYR+c4Kw
	cOouCUDdB62mAnBMSIxeiNc9CUnxP8HRDzYGyrdjuZJfRRfJEtccbVVLaY8K7fkfKD/U0ymigg9i7
	XZK+o7XgrLVanGHMHPfXpumNo/TdahNZuutGBy3bLEheJEn5mQ4YnPpgvORzAapzm0PlHvrBfc6vl
	QjHIWK4+nkDHUAnJu1oKnW0jBR+iF/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIJV-00007t-AK; Mon, 27 May 2019 16:17:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIJO-00007L-JB
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 16:17:24 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BD0D849F3;
 Mon, 27 May 2019 18:17:19 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 7e97f7c5;
 Mon, 27 May 2019 18:17:18 +0200 (CEST)
Date: Mon, 27 May 2019 18:17:18 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20190527161718.GJ50588@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527124630.5042-3-tomek_n@o2.pl>
 <20190527124630.5042-4-tomek_n@o2.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_091722_784293_6232A350 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] x86: add preinit hook for
 bootloader upgrade
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tomasz Maciej Nowak <tomek_n@o2.pl> [2019-05-27 14:46:30]:

Hi,

> new file mode 100644
> index 0000000000..3a4e756b1e
> --- /dev/null
> +++ b/target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader

makes me wonder if this couldn't be made more generic as for example current
sysupgrade.tgz restoration, maybe adding platform_do_bootloader_upgrade hook
which would get called in some generic preinit script or something along these
lines.  Otherwise we're likely risking copy&pasting of similar functionality
to other platforms.

> +upgrade_bootloader() {
> +	local diskdev
> +
> +	. /lib/upgrade/common.sh
> +
> +	if [ ! -f /boot/grub/upgraded ] && export_bootdevice && export_partdevice diskdev 0; then
> +		echo "(hd0) /dev/$diskdev" > /tmp/device.map
> +		/usr/sbin/grub-bios-setup \
> +			-m "/tmp/device.map" \
> +			-d "/boot/grub" \
> +			-r "hd0,msdos1" \
> +			"/dev/$diskdev" \
> +		&& touch /boot/grub/upgraded

This looks like almost same code used in two places, probably could be
refactored in some common function used in both places?

> diff --git a/target/linux/x86/base-files/lib/upgrade/platform.sh b/target/linux/x86/base-files/lib/upgrade/platform.sh
> index 1a42fd3a11..05bbd97f3b 100644
> --- a/target/linux/x86/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/x86/base-files/lib/upgrade/platform.sh
> @@ -106,7 +106,8 @@ platform_do_upgrade() {
>  			-m "/tmp/device.map" \
>  			-d "/tmp/boot/boot/grub" \
>  			-r "hd0,msdos1" \
> -			"/dev/$diskdev"
> +			"/dev/$diskdev" \
> +		&& touch /boot/grub/upgraded

This probably should be in your other patch?

> Currently bootloader always stays on the same version as when first
> written to boot medium. That creates inconveniences as it always stays
> with same features or/and bugs. Users wishing to add support to
> additional modules or new version, would need to write the whole image,
> potentially destroying previous system configuration. To fix these, this
> commit adds additional routine to sysupgrade which upgrades
> unconditionally the bootloader to the latest state provided by OpenWrt.

[...]

> +	#upgrade bootloader

This kind of comments are quite useless, I would rather use properly named
function for self documenting code, like:

 if export_partdevice bootpart 1; then
     upgrade_bootloader
 fi

> +	if export_partdevice bootpart 1; then
> +		mkdir -p /tmp/boot
> +		mount -o rw,noatime "/dev/$bootpart" /tmp/boot
> +		echo "(hd0) /dev/$diskdev" > /tmp/device.map
> +
> +		echo "Upgrading bootloader on /dev/$diskdev..."
> +		grub-bios-setup \
> +			-m "/tmp/device.map" \
> +			-d "/tmp/boot/boot/grub" \
> +			-r "hd0,msdos1" \
> +			"/dev/$diskdev"
> +
> +		umount /tmp/boot
> +	fi

This looks similar to the above, could be probably shared.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
