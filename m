Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0249014273
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 23:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3cjuYlWLOi6YUwjqwWPdjWs0FL5AXCeKnbihWx0B3K0=; b=mbTZZZea3jqCSgoXxqhHOKBxjC
	fBTwwDwJNHi7j28LUvaWUiR/Btad4qv1Abu7pN/+E3axpNyvQdz/7hwfRMV4bBLMvdPSNnjayYvqL
	48Gj7ptADMRkv+voIOPAFjawO5+a8Dy8Og73UCMReN2bqqjRd1/VM3oAs71vhRsp7toD/NTwWPq/w
	YpLNBstw2AiEwVM4TVOuzSxhv90Gd46K9A/ABq6E68NErNnG/ydc4+YHa9pzcz/i7OIYVl+uim8sN
	GvKHo3TxA2OLj+fONeM3ae3zqikYIiz+FmIG0cKxGCJHWcs89QyskRrQIXkcGJY5uklAjVJ30pSjw
	LovU+bWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNOV3-0005Ob-3V; Sun, 05 May 2019 21:16:45 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNOUv-0005Nx-VA
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 21:16:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EFEC93FB4;
 Sun,  5 May 2019 23:16:34 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 63889e7b;
 Sun, 5 May 2019 23:16:33 +0200 (CEST)
Date: Sun, 5 May 2019 23:16:33 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190505211633.GE81826@meh.true.cz>
References: <20190505122327.607-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190505122327.607-1-linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_141638_311966_E1D1E635 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Support sysupgrade on DIR-685
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Linus Walleij <linus.walleij@linaro.org> [2019-05-05 14:23:27]:

Hi,

I'm wondering, if it would be possible to hook (adding just a short
references, there are enough examples in the tree already) metadata into the
upgrade process instead, it would mean adding SUPPORTED_DEVICES to image/Makefile:

 define Device/Default
   ...
   SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
   ...
 endef

where SUPPORTED_DEVICES needs to match DT compatible (which probably does in
DIR-685 case).

> diff --git a/target/linux/gemini/base-files/lib/upgrade/platform.sh b/target/linux/gemini/base-files/lib/upgrade/platform.sh
> new file mode 100644
> index 000000000000..0c6fc44ee725
> --- /dev/null
> +++ b/target/linux/gemini/base-files/lib/upgrade/platform.sh

Needs REQUIRE_IMAGE_METADATA=1

> @@ -0,0 +1,54 @@
> +wrgg_get_image_magic() {
> +	get_image "$@" | dd bs=4 count=1 skip=8 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
> +}
> +
> +platform_find_part_size() {
> +	local first dev size erasesize name
> +	while read dev size erasesize name; do
> +		name=${name#'"'}; name=${name%'"'}
> +		[ "$name" = "$1" ] && {
> +			echo "$size"
> +			break
> +		}
> +	done < /proc/mtd
> +}
> +
> +platform_check_image() {
> +	local board=$(board_name)
> +	# TODO: check size of sysupgrade image

I would leave only useful comments.

> +
> +	case "$board" in
> +	dlink,dir-685 )
> +		local magic=$(wrgg_get_image_magic "$1")

with metadata in the image, this additional checking is not necessary anymore,
so you can just return 0 here.

> +		[ "$magic" != "21030820" ] && {
> +			echo "Invalid image. Bad magic for DIR-685."
> +			return 1
> +		}
> +		echo "Image looks OK"
> +		return 0
> +		;;
> +	esac
> +
> +	echo "Sysupgrade is not yet supported on $board."
> +	return 1
> +}
> +
> +platform_do_upgrade() {
> +	local board=$(board_name)
> +
> +	v "board=$board"
> +	case "$board" in
> +	dlink,dir-685 )
> +		# This will overwrite "firmware" which means that the
> +		# partitions "kernel", "rootfs" and "rootfs_data" get
> +		# overwritten in the flash. The "kernel" image has the
> +		# necessary boot loader magic attached to it, and after
> +		# the "rootfs" there is an empty space marker for "rootfs_data"

I find it quite misleading(rootfs_data would get probably overwritten only if
rootfs is bigger then the previous one) and I would simply remove this comment.
All the glory details are included in the image generation code already, so
this comment lack any value.

> +		PART_NAME=firmware
> +		default_do_upgrade "$ARGV"
> +		;;
> +	*)
> +
> +		;;
> +	esac
> +}
> diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
> index 8fec250f186a..a7001eb0068a 100644
> --- a/target/linux/gemini/image/Makefile
> +++ b/target/linux/gemini/image/Makefile
> @@ -143,9 +143,10 @@ define Device/dlink_dir-685
>  	DEVICE_PACKAGES := $(GEMINI_NAS_PACKAGES) \
>  			kmod-switch-rtl8366rb swconfig \
>  			kmod-rt2800-pci
> -	IMAGES := factory.bin
> +	IMAGES := factory.bin sysupgrade.bin
>  	# Pad to 128k erase blocks with 160 bytes WRGG header

>  	IMAGE/factory.bin := append-kernel | pad-offset 128k 160 | append-rootfs | dir685-pad-rootfs | dir685-image
> +	IMAGE/sysupgrade.bin := append-kernel | pad-offset 128k 160 | dir685-image | append-rootfs | dir685-pad-rootfs

IMAGE/sysupgrade.bin := append-kernel | pad-offset 128k 160 | dir685-image | append-rootfs | dir685-pad-rootfs | append-metadata

FYI images with metadata are going to play well in the future, when (if?) we
switch to signed images[1].

1. https://github.com/openwrt/openwrt/pull/1992

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
