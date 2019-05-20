Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBC92425C
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 22:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uIsB6A9AODyjrYlBZ0yG+Hk6h574iusORlTBQYfvwWY=; b=kARvZPfs+CbjWH
	qbZ9gj3vonbzd+yt3QfrxI/NOOWqxJ4iOFjCN9zykb7dZxQzu1gApO/KDoqjkioQkoCS+uLU9+H71
	xxS4Do2t4073zGiYM9IjLdMMQk91RfygsfRH3/qIA8hDfu1kobbzOTctgz86yjt9jOhrDCqBpvLU3
	tyIeHcFxHpAnho9oci2lHl+sCUuSvXEEufT1Y3v4pPKiNsGPfjPuRrIWHzQ6OvBZeXFgjXdh5P0NS
	SlmfpEPK7T2rqUnX7UkekO6tSkZcMxt3M8AMUsDeR/IChUOQiNHRYGprW6IgOOM0Un0nlKYxNJCky
	Mlle4TxRAjoVsbxmKz1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSpL8-00040L-RA; Mon, 20 May 2019 20:56:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSpKz-0003zx-PT
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 20:56:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8FACC4FAC;
 Mon, 20 May 2019 22:56:45 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 88519229;
 Mon, 20 May 2019 22:56:44 +0200 (CEST)
Date: Mon, 20 May 2019 22:56:44 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190520205644.GA536@meh.true.cz>
References: <20190520202521.8587-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520202521.8587-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_135649_972209_A807B458 
X-CRM114-Status: GOOD (  10.05  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v3] gemini: Support sysupgrade on DIR-685
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Linus Walleij <linus.walleij@linaro.org> [2019-05-20 22:25:21]:

Hi,

I don't want to drag out more of your time so,

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

I've removed this (as we've agreed in v2)

> +platform_do_upgrade() {
> +	local board=$(board_name)
> +
> +	v "board=$board"

Fixed this leftover.

> +	case "$board" in
> +	dlink,dir-685 )
> +		PART_NAME=firmware
> +		default_do_upgrade "$ARGV"
> +		;;
> +	*)
> +
> +		;;
> +	esac

Cleaned up this.

> @@ -143,9 +144,11 @@ define Device/dlink_dir-685
> +	SUPPORTED_DEVICES += dlink,dir-685

Removed this.

>  endef
>  TARGET_DEVICES += dlink_dir-685

And merged[1] it into my staging tree, so please check it and let me know if
it's ok with you or if you prefer to go with v4, thanks.

1. https://git.openwrt.org/5f456d7acc

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
