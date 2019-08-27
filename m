Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D319F618
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 00:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/SekItDnp3MjSYUDhlCUUBE14YGaPqMHhhVHA1S4aJo=; b=ZoYWvnMSrKIyGzDs4GGuCo4Hz
	X8hGI/ObiKclFEmW46/Kk1bUeQgwl6UTlMgo27nOvFP3Wbm5FA7Wv9xrdFk3Tr6xjgwNscytv9r1K
	2IPiFnwC5211bSRRWJeaJIkA/PWR3fj8xdIuKys115dqSHnYXtB/ATD4ovN39QyWMN7PhVZo3KVH0
	E2m3RfpeXn5n6N2UQgCH2EJk004+NekGpWrisx7fBfdJMEZf9kFi724BwDxtg+PFXGWZyG6yw8P3Q
	3IMXcS9jfFel0A+p689vZxuMKI0y3OPpLKnzNC5zZcQ+sGcVVzhw1gdap1lE5tas4X5R1ICDV3Zpt
	IUiI32oTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2juB-0001iB-RT; Tue, 27 Aug 2019 22:25:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ju0-0001hn-RZ
 for openwrt-devel@lists.openwrt.org; Tue, 27 Aug 2019 22:25:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id z11so396010wrt.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 27 Aug 2019 15:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=OT/6lQI2/zH0AzyRpoLMa0tiU7e2sMTeU4KdW092LuQ=;
 b=UMbcZiiVayxWOwNuavjSL3PTQL8orPGn44ZFQqcni5PM2IJr7X6hPXoloTCLs9TLEf
 xVOYS86ubAdWYG9Lub3S0GaCcsP+Awv2aKnA9xiwWmX1sV3Ycy49ONefpQXod+XX4BtS
 UlSTt+wvO7yoTCTdPT/s/dXHnKsvDBkHk6J8RCREJHVxHAvv2NPLGpKT1Tl9zOcGwnNw
 FmtIxuU92UuSaBsC7WEHcbGjl1EAcCvZDsok0WjBSoeO1SRdOoZvVHtN/OBTRv4LhDPu
 HH/soRclZjfu+8Icsi34tpgUWVnntikLOWNQ97XqkfKnh9uZAG7FTHF/ywCY+JG6jNYt
 28qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=OT/6lQI2/zH0AzyRpoLMa0tiU7e2sMTeU4KdW092LuQ=;
 b=Au227Z9ESdfcoIdbOtgGpxqoYED+AiVhY/Gsx2uEsvk/5hSSgegUozEwXkjwAK57hF
 xANPyqiwsL6HyBB7pM8KrEH2FRM7rD6Kmy/FOU0CoZzTaam04E5iHnKioVeIDiFEP3vz
 sCCf7GeYXDEOgk2BwQajDhnB327sUa+UugATyUMNo01Oud1ABQEiN/yM2Pq0FxkTNZ3d
 s2Yyhpj8r1SHswQVbcG+7dY94oUoSiDO0bJqMfekxo9bqhC61mKMjZLnfwjptiDn8Wjs
 FqGbS82Evyx5uJiDpfJYAEEZrc9ieUAQBaQh+vRmExufXZO7zV4qYLN5kZfQjuWruImT
 n7Dg==
X-Gm-Message-State: APjAAAX8K77+OnKQYsNQ6iXBR/b/nN4BeFioyZOdTcAtBJOsZ8TUqd9u
 kAvMoiUHAVvpehiDaXD4LQUSfnht
X-Google-Smtp-Source: APXvYqxJuzRzDfrw9wcZrL2+YSP1EsgP+1aoCHe7mYzmrnLofHHYH5B18tnX26gcurVgLBGo1KX9ng==
X-Received: by 2002:a5d:5343:: with SMTP id t3mr408037wrv.156.1566944722688;
 Tue, 27 Aug 2019 15:25:22 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id e13sm344473wmh.44.2019.08.27.15.25.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 15:25:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 0a7349a0;
 Tue, 27 Aug 2019 22:25:20 +0000 (UTC)
Date: Wed, 28 Aug 2019 00:25:20 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: David Bauer <mail@david-bauer.net>
In-Reply-To: <20190827215711.14113-1-mail@david-bauer.net>
Message-ID: <alpine.LNX.2.21.99999.352.1908280024490.2253@localhost.localdomain>
References: <20190827215711.14113-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152524_889853_72A02A8D 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add factory image for NETGEAR
 R6220
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
Cc: openwrt-devel@lists.openwrt.org, dev@andreas-ziegler.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VERY apreciated! Thanks to all!!


On Tue, 27 Aug 2019, David Bauer wrote:

> Date: Tue, 27 Aug 2019 23:57:11
> From: David Bauer <mail@david-bauer.net>
> To: openwrt-devel@lists.openwrt.org
> Cc: dev@andreas-ziegler.de
> Subject: [OpenWrt-Devel] [PATCH] ramips: add factory image for NETGEAR R6220
> 
> This adds an easy-installation factory image for the NETGEAR R6220
> router. The factory image can either be flashed via the vendor Web-UI or
> the bootloader using nmrpflash.
>
> Tested with NETGEAR V1.1.0.86 firmware.
>
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
> target/linux/ramips/image/mt7621.mk | 7 ++++++-
> 1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
> index 5dc8efe7c5..a00e6280c7 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -397,7 +397,12 @@ define Device/netgear_r6220
>   KERNEL_SIZE := 4096k
>   IMAGE_SIZE := 28672k
>   UBINIZE_OPTS := -E 5
> -  IMAGES += kernel.bin rootfs.bin
> +  SERCOMM_HWID := AYA
> +  SERCOMM_HWVER := A001
> +  SERCOMM_SWVER := 0x0086
> +  IMAGES += factory.img kernel.bin rootfs.bin
> +  IMAGE/factory.img := pad-extra 2048k | append-kernel | pad-to 6144k | append-ubi | \
> +	pad-to $$$$(BLOCKSIZE) | sercom-footer | pad-to 128 | zip R6220.bin | sercom-seal
>   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
>   IMAGE/kernel.bin := append-kernel
>   IMAGE/rootfs.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
> -- 
> 2.23.0
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
