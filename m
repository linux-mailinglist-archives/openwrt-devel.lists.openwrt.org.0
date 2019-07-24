Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2B673445
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 18:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2394vBW18ozfObUNAARY1RcgGvkAvvH6it951NFeNk=; b=kYinoOPoX5wSqN
	L9PKOW+JBAdxA8qi7wqjrpTINu31L5c10c0zM9MOJweQYZEr3f/7WgowviCMR2q1rga7Qsxh27GbV
	//Of8OWX9D5uIi5bGiXaI9COJs98dVv/YFqGrw4F8KXvTVG5MotCVfTfhjvjMr+nv8mqljJlflJkp
	3EEffzTGOtH/olP9wvB/tcPdzurLe6ajYOxqSiUxQjbL+d3nBuzUfp53LiuPGRiHdgCIfRcy4zAZR
	sZxa882TcoxCyJmXlBgIEDyIBb+0M5PjEb0Osr/olTJChCPXV8dY1/0VUN5KZyM9D8bWRP1KCLOmf
	YCaN5+q4FnzY2Sw4MwyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKXW-0006jm-FH; Wed, 24 Jul 2019 16:54:55 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKWz-0006gd-KK
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 16:54:23 +0000
Received: by mail-ot1-x342.google.com with SMTP id r6so48570801oti.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 24 Jul 2019 09:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D8CnBXuAX+GqDR08i7KcPIylaWpUOk6IWoHj32DH82k=;
 b=bOTG4loH1hDQMxF0wzJOh+/NJphg2tYv2TBKbdmwbnm3na9NLTfttdOj7FLdjbBn40
 Y9L53FoWKgZVijv9D5oiAWKFVWOyp5sT7p/4CY+aETHMfKLSzzvbc+Y2qrUfJVHkPRaL
 YElsqr4/UudujP0lPXppCzyxtexLvSeGR+WusqMRnaiUEiFZPiYNnV3zbWQuMzQHJ9ZC
 8XpOn2wnAPeEIM+ZA2yRq93lFIpubBxTrKtt8RYMHf5Hb4HjzCo/vUI0RoahCw3DwFO6
 i8wa3ellYyDm7KOAVu9z6yoIdpcFqOfu8Moep6X+3vr9CohP/jytvUeCsxTZa12N4fuU
 jALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D8CnBXuAX+GqDR08i7KcPIylaWpUOk6IWoHj32DH82k=;
 b=s/3yvYZESnFQzESB6rSdUtTTgniO0DIPwdRnj/ExNZi68wWEkvp35p/8GscCYSZD9w
 FzBTOTmMv5Gqa61+cIxxYwgMPFolVNtAA0OyGMG3U3QeymAFzpd5vVsQa9d+QKxokk9S
 WC7bhPPA7KjK8Rxw4aP7NquMg0TqJAceGRIFxO4QoKRQKQYB3U9oX+lFUbVZjdnvH3i2
 F9hF4xsnTzXATjsfRvCOAPMv7tER80IJhGmXDZRq2hv65P7WMdaksVv1EVYiNjlno1to
 z3oeewd8Hs308gswWqBGWGNblhO2IaDcIJ4tmjjx6jJkbL9ZN8x5Gr6YRlb19+zYW/j3
 9j3Q==
X-Gm-Message-State: APjAAAVJ30tNtL9OWNTxIn65lAh+bxv/WxNPYrvOz1fVifg5yoxOH6kS
 j05GLE5MAi0KZ3HdrAqiZ5S6oCdqj/RtKM5zwQ6fIj4z
X-Google-Smtp-Source: APXvYqwQ4RL2s5D9aVCm9n1N9rlJDa7CJQoNmF4XUTuRSl+ezHea9b03/sFDKT4pki7ObbOWFqT6u7C22FGBi527fwg=
X-Received: by 2002:a9d:390:: with SMTP id f16mr6420993otf.93.1563987258543;
 Wed, 24 Jul 2019 09:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190724133351.2283-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190724133351.2283-1-freifunk@adrianschmutzler.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 24 Jul 2019 09:54:07 -0700
Message-ID: <CAKxU2N8HPCaEb1WahtbfbVGnJ-XOcjWa5_2GU2Bn=3QV9fhBKA@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_095422_149572_47822B24 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Replace backticks by $(...)
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Jul 24, 2019 at 6:34 AM Adrian Schmutzler
<freifunk@adrianschmutzler.de> wrote:
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>  target/linux/mvebu/base-files/lib/upgrade/linksys.sh | 2 +-
>  target/linux/mvebu/base-files/sbin/fan_ctrl.sh       | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/target/linux/mvebu/base-files/lib/upgrade/linksys.sh b/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> index 3f45d6cac5..ddf24836bc 100644
> --- a/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> +++ b/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> @@ -6,7 +6,7 @@ linksys_get_target_firmware() {
>
>         local cur_boot_part mtd_ubi0
>
> -       cur_boot_part=`/usr/sbin/fw_printenv -n boot_part`
> +       cur_boot_part=$(/usr/sbin/fw_printenv -n boot_part)
>         if [ -z "${cur_boot_part}" ] ; then
>                 mtd_ubi0=$(cat /sys/devices/virtual/ubi/ubi0/mtd_num)
>                 case $(egrep ^mtd${mtd_ubi0}: /proc/mtd | cut -d '"' -f 2) in
egrep is deprecated as well. I'm assuming you're running these through
shellcheck.
> diff --git a/target/linux/mvebu/base-files/sbin/fan_ctrl.sh b/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> index 06e462119d..4234668317 100755
> --- a/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> +++ b/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> @@ -1,8 +1,8 @@
>  #!/bin/sh
>
> -CPU_TEMP=`cut -c1-2 /sys/class/hwmon/hwmon2/temp1_input`
> -DDR_TEMP=`cut -c1-2 /sys/class/hwmon/hwmon1/temp1_input`
> -WIFI_TEMP=`cut -c1-2 /sys/class/hwmon/hwmon1/temp2_input`
> +CPU_TEMP=$(cut -c1-2 /sys/class/hwmon/hwmon2/temp1_input)
> +DDR_TEMP=$(cut -c1-2 /sys/class/hwmon/hwmon1/temp1_input)
> +WIFI_TEMP=$(cut -c1-2 /sys/class/hwmon/hwmon1/temp2_input)
>
>  CPU_LOW=85
>  CPU_HIGH=95
> --
> 2.20.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
