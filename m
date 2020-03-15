Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E206E185C34
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 12:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7gSKLa/mEx09xXHfD2gY/0BoNjm0w2NIomUJy/aBFKc=; b=r01iYR7a1eWT3VLSz9yOQVOc1M
	wEqCiYG22mw3qZiPdMQrxCGE6VK/Uaih7/9Q0gI8GRTmgPjOTf+fxzfpFt0WpCEom+nh53HxjB8yV
	+63jGmYwDR75vX0igJ/FHdxTJFviR0m85SvDxm+hBZAj72oSuRNWKl5dTSb/VGxU4ZDygohpgAcU6
	uSp9MAd8wh/5WJzGaH83bg1p/IfwiBlAi5h1vyqcyPLj//BtRjjWuxjMaTDXwCJax75lHst3vA31r
	1bBYliSd3qenjIyVdqcR3nj5jmySH1QWg857PYhCxIDAsbShj7lUrOLTrCNWnsrD8913blaia0FC1
	TER681qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDRfL-00052R-5u; Sun, 15 Mar 2020 11:42:47 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDRfD-000522-9N
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 11:42:40 +0000
Received: by mail-oi1-x241.google.com with SMTP id k18so14679494oib.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Mar 2020 04:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=0dJb4v14mHF6xyR4O/tcFtmgsJ8Y7xF3l7K5r1D5jQU=;
 b=G/wXL91TC+kWtuYOpRGfFPM9V3sUR65m/ND6ZP42F5TjOOlU2ofbEFgl/+dJBHPjCX
 Ri9j6g4Qf3qEnMhqqtGSU+Zc9flDDYDBoEFJje3wWajpdDQxa5JOII7qiXExda5JCGXP
 H5SWgGWT6Vlh+uD3E+OeCkmALjTyJmz6e2GheiCqm2L3q1o2+c4zyE9a6jcLBkS2r005
 6RzsCJk0OnQ5YD77pz49hv78PpMQ6iz0TdCgqBZwMvoDJ6SsAENaUYkxjSWT85tUPskV
 gty8UsMJXQcZsQsXCVC5AyZXW95fQ6RPhDdNw12EOcnSqiHfROf7A0NCOwKaXxJR/qVk
 s7Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=0dJb4v14mHF6xyR4O/tcFtmgsJ8Y7xF3l7K5r1D5jQU=;
 b=K2rVo0VagPwZbNzeJg5ealg+Ghfv0sRZIqki09Tp9Xbbc/G05F8bpF+lnI8Vp8IyBi
 OlnfrTWnPQ1c98ozCP87ABrOuNjyJ4X/3AidHFQvFFvxmgLQc7i6Ad5bG+AFQk8TiHUN
 mhkOkZf+X9Eu0V0/5GSSxNHKBY1NBe0A9Q8ABVaVpeBDIK/DoaGkgL9I8DIxADUDkGOa
 hSuIoY2H21lmwft6Sh2k2tHnv+5Bgq9F2isoEB4lAimL6CnnWWIo2rL+B3I8PZnjBmIy
 cMrM+xfJLjylI5sf5Q72YFLD12pE/KPOIHoTzupNCR12YZs0P7uJhNT6y0aov9uolskJ
 o7DA==
X-Gm-Message-State: ANhLgQ1DdBuEHalbg25f2swDm7HQ08E6w+TjZxhKCGYHYrqROI15rWDF
 2TIiGu9jgm0aKw47q5jDKtdX8mIWLV9ntM1/tpmdOIX9
X-Google-Smtp-Source: ADFU+vulZ7jFEvYWs5n8x8tGz2Xpt4gTzdyndcoy6O633yWPoWyE8ETDuso0oocXvYFZ83IX6Lo9vsAfVy/X0rlZxXU=
X-Received: by 2002:aca:4106:: with SMTP id o6mr13888473oia.173.1584272557239; 
 Sun, 15 Mar 2020 04:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200303191931.917613-1-robert.marko@sartura.hr>
In-Reply-To: <20200303191931.917613-1-robert.marko@sartura.hr>
From: Robert Marko <robert.marko@sartura.hr>
Date: Sun, 15 Mar 2020 12:42:27 +0100
Message-ID: <CA+HBbNGbkOFOmo91x_Di3BNtxfuzExLmf=G8S=+7FObcn7wqsQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_044239_468032_AD26D0E6 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ipq40xx: 5.4: fix networking PHY
 driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Mar 3, 2020 at 8:19 PM Robert Marko <robert.marko@sartura.hr> wrote:
>
> In 5.4 kernel old u32 array way of setting network features was dropped and linkmode is now the only way.
> So lets migrate the PHY driver to support linkmode.
> Also, now in order for gigabit to work, PHY driver needs to advertise PHY_GBIT_FEATURES instead of PHY_BASIC_FEATURES
>
Any chance of merging this?
Without this networking is broken in 5.4

> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
>  .../patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch |  6 +++---
>  .../706-ar40xx-abort-probe-on-missig-phy.patch        | 11 -----------
>  2 files changed, 3 insertions(+), 14 deletions(-)
>
> diff --git a/target/linux/ipq40xx/patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch b/target/linux/ipq40xx/patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch
> index 6df447fcd5..083de038a2 100644
> --- a/target/linux/ipq40xx/patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch
> +++ b/target/linux/ipq40xx/patches-5.4/705-net-add-qualcomm-ar40xx-phy.patch
> @@ -1837,8 +1837,8 @@
>  +      if (phydev->mdio.addr == 0)
>  +              ar40xx_priv->phy = phydev;
>  +
> -+      phydev->supported |= SUPPORTED_1000baseT_Full;
> -+      phydev->advertising |= ADVERTISED_1000baseT_Full;
> ++      linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, phydev->supported);
> ++      linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, phydev->advertising);
>  +      return 0;
>  +}
>  +
> @@ -1877,7 +1877,7 @@
>  +      .phy_id         = 0x004d0000,
>  +      .name           = "QCA Malibu",
>  +      .phy_id_mask    = 0xffff0000,
> -+      .features       = PHY_BASIC_FEATURES,
> ++      .features       = PHY_GBIT_FEATURES,
>  +      .probe          = ar40xx_phy_probe,
>  +      .remove         = ar40xx_phy_remove,
>  +      .config_init    = ar40xx_phy_config_init,
> diff --git a/target/linux/ipq40xx/patches-5.4/706-ar40xx-abort-probe-on-missig-phy.patch b/target/linux/ipq40xx/patches-5.4/706-ar40xx-abort-probe-on-missig-phy.patch
> index cda05bfb9f..19474bff0d 100644
> --- a/target/linux/ipq40xx/patches-5.4/706-ar40xx-abort-probe-on-missig-phy.patch
> +++ b/target/linux/ipq40xx/patches-5.4/706-ar40xx-abort-probe-on-missig-phy.patch
> @@ -1,16 +1,5 @@
>  --- a/drivers/net/phy/ar40xx.c
>  +++ b/drivers/net/phy/ar40xx.c
> -@@ -1808,8 +1808,8 @@ ar40xx_phy_probe(struct phy_device *phyd
> -       if (phydev->mdio.addr == 0)
> -               ar40xx_priv->phy = phydev;
> -
> --      phydev->supported |= SUPPORTED_1000baseT_Full;
> --      phydev->advertising |= ADVERTISED_1000baseT_Full;
> -+      phy_set_max_speed(phydev, SPEED_1000);
> -+      linkmode_copy(phydev->advertising, phydev->supported);
> -       return 0;
> - }
> -
>  @@ -2021,6 +2021,12 @@ static int ar40xx_probe(struct platform_
>         /* register switch */
>         swdev = &priv->dev;
> --
> 2.24.1
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
