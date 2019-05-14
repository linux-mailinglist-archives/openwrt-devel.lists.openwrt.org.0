Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002621C4FB
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 10:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TksQRoe9VZtHCaMeVJZujkwE04AoELHcbgw+S1q2fnk=; b=QnaLlOwAvjzLrm0JHvQv8+v09X
	VDc4IavhE1Yd+ddKefM0L23qr+7L/bNNv5byRfZCuafkAYYGb3hUJr3oQASgO175ewwAmwtpCQ71d
	RCl0ukAbBtNCJuqMVrHyERJqqFPx+EPjw5TJBKKeg6FzBl202lOSXfgY9k+VV37XEZX3w0zjw6ni7
	Au6rLjeMPA1vE2cCeXQPwgEUUpKRoSZ72x/DhcNUHes9ICUDJwlj+9+hSRZcidC4FBOW70M9CV8a4
	jdnnfV/6ZRpIVjJoHfj9M4O5ZYlC6d87KZG6IHqWJnlzwzj4aZBezUt/sZIrl+ICCr8I/NH7HlLXg
	9Te1xbQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSpm-0000lp-P9; Tue, 14 May 2019 08:30:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSpe-0000lQ-OT
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 08:30:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1B2CE435B;
 Tue, 14 May 2019 10:30:40 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 472a0653;
 Tue, 14 May 2019 10:30:38 +0200 (CEST)
Date: Tue, 14 May 2019 10:30:38 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190514083038.GA31332@meh.true.cz>
References: <20190512191317.32061-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512191317.32061-1-linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_013042_949976_9B1D5CA4 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Support sysupgrade on DIR-685
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

Linus Walleij <linus.walleij@linaro.org> [2019-05-12 21:13:17]:

Hi,

> --- /dev/null
> +++ b/target/linux/gemini/base-files/lib/upgrade/platform.sh
> @@ -0,0 +1,50 @@
> +REQUIRE_IMAGE_METADATA=1

once you set this, you don't need to check for the image magic, do you? If so,
please provide the reason for that. Generated image is simply going to contain
list of compatible boards in it's metadata JSON (comming from
SUPPORTED_DEVICES variable) so I think, that this generic check should be
enough.

> +wrgg_get_image_magic() {
> +	get_image "$@" | dd bs=4 count=1 skip=8 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
> +}

So you can drop this.

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

Why is this needed? I don't see it being used anywhere.

> +platform_check_image() {
> +	local board=$(board_name)
> +
> +	case "$board" in
> +	dlink,dir-685 )
> +		local magic=$(wrgg_get_image_magic "$1")
> +		[ "$magic" != "21030820" ] && {
> +			echo "Invalid image. Bad magic for DIR-685."
> +			return 1
> +		}
> +		echo "Image looks OK"

and this can be dropped as well.

> +		return 0
> +		;;
> +	esac
> +
> +	echo "Sysupgrade is not yet supported on $board."
> +	return 1
> +}

 platform_check_image() {
	local board=$(board_name)

	case "$board" in
	dlink,dir-685 )
		return 0
		;;
	esac

	echo "Sysupgrade is not yet supported on $board."
	return 1
 }

So this should be enough.

> diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
> index 8fec250f186a..3339cd2467a9 100644
> --- a/target/linux/gemini/image/Makefile
> +++ b/target/linux/gemini/image/Makefile
> +	SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
>  
> @@ -143,9 +144,11 @@ define Device/dlink_dir-685
> +	SUPPORTED_DEVICES += dlink,dir-685

You can drop this SUPPORTED_DEVICES as it's going to be created for you from
the device name by the code you've added above.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
