Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 669C98507A
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 17:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hDfASb9NcESPCQ3WdDftxnM3cZSFy1PhVo0MGbSSYY=; b=MOTH/Gvhe90F0+
	dnvECl42aVINzpRrYvqf7ZnBJH7NUBuZpk1xebobu4rPPnpWzKFHyYQ0+zB1gZRatfAFxbNMFN8ME
	OT3wae0e0s4RwDSlNSqWzTH6NTEPk/DMDuTgo256aWMemIUeFFEL3dgQl3giVbt3EjPuIY7FHF5wY
	a6UlGoXi7+9Mo4Xox8pGCyOtAeXeCb6zCIrMrlFBYV7MFx89Fa8kjYwQYzRB0DGBzb8GtF+q1cFCk
	kuDDf2tL0XaMUJD0TjHbKXhcQD1bT3eralSZenGnRHAPm2udncfF0jB/p5+rBUE6GpNF6LV7wgydD
	0vf+fkA0Tnvh+w4gQI1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOLj-0001Dx-57; Wed, 07 Aug 2019 15:59:39 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOK1-0008E0-Tj
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 15:57:55 +0000
Received: by mail-ot1-x342.google.com with SMTP id r21so100286523otq.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 08:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=LuoWSUbOJA5BcAeo4W6/tB3iHz8dcOnQufMEiK5Z6FE=;
 b=ba4scPR1HyL7mQP92a1HozkZicwAU58JaQo02ku6zgP8Nz9XJ9JYXZHTc/e7qTO/1o
 tWuPEnzbHPtRrRbPPq/+LeC2i0C0vuqahh8cr4JjfV0zStYMVWBiymPkc+o4nerdv2fH
 ybJn2okIHwYc2uufUrx5ONWnDnk6KBUt+GdMUh6TKFkrTjap+CORw863wtilMqUirpma
 We6vt4cD1lBz1bUmz4UN0u9MAWSJCAe8qW71vADXwC1jtBHsLRXdx7TkgugSLFgOLqbB
 e9qcMC5RRsLWj5/v6RcDv8IpoUIrwiO37PhRJ+r1Jp86Ldg+FoQNFlqEZOmc9gKiSm1J
 usxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=LuoWSUbOJA5BcAeo4W6/tB3iHz8dcOnQufMEiK5Z6FE=;
 b=ITLBmMTLl976WsqXA2DnkoNvHM5ZkJvV6L3X6WybR6tz22YPp35Y6Ga8mmgbZdWMYo
 Z0NTGeuvXcquJ32J7tuJ3DP5ExFPIlifRn03iB2xI5YWupKnupdEg5/U0+qUPNGSD3C2
 PF3m9DEsjKV50tlNdEtgPgbl1HUDNzQpiYcIft6aAeMY5bEe9YS5im2LcE5QxQRUu6Zt
 UJTXSbPGWBbjYRNkqAZjbYT8InDyIZLTUxR++LQ55uDsU+KqPPrSnobjW8ZKKPENmIjw
 ln4E5JPMYcpqUNc4eipYf/9QeZFA4Gkw5CZLBM6wVyDQ4RTa2Z8x/XMrzP90lhfV1CzB
 KMbw==
X-Gm-Message-State: APjAAAWJdqPVTIAv3C/uhEzr1mRVraWrUvy8g8SOMXWv4uGxiJsUCs+7
 VgyHx2piAhNHaunOVSapNeO4I10z/u+7n2QBPg/oLA==
X-Google-Smtp-Source: APXvYqzZvpOghS8nyz9Ei2WMU+NL/k86g0cU0PdEWMh4zsdv3OsNgmlCmXXd/CPayiZQP+9OVvZkVy7GfwedOBp+wGc=
X-Received: by 2002:a05:6808:b02:: with SMTP id
 s2mr417629oij.155.1565193472534; 
 Wed, 07 Aug 2019 08:57:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:2015:0:0:0:0 with HTTP; Wed, 7 Aug 2019 08:57:51
 -0700 (PDT)
In-Reply-To: <20190806131039.51484-2-freifunk@adrianschmutzler.de>
References: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
 <20190806131039.51484-2-freifunk@adrianschmutzler.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 7 Aug 2019 17:57:51 +0200
Message-ID: <CAKR_QVJo-ooRvEi=ODftEsrr0avW3_5TUcMO9eSud5EpOTtfZA@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085753_975017_B2AC2C42 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: fix IMAGE_SIZE for common
 TP-Link definitions
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

Looks like there were many doubts about image size over the years.

One thing that should be considered is use of OEM firmware, either in
case of just a single revert after OpenWrt flashing, or multiple
reverts/switching between OEM/OpenWrt firmwares.

Relevant in this case is config partition within OEM fw, and by
specifying OpenWrt image size to occupy all available flash space
between u-boot and art partitions destroys config contents which may
turn up very impractical for those that do frequent switching between
the two.

Further, config partition size also varies from device to device, some
have it 64KB others 128KB in size, at least what I observed with my
devices.

So, the correct image size for Archer C7 v1 turned out to be 0x7b0000

On 06/08/2019, Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:
> So far, IMAGE_SIZE is set as follows:
> tplink-4m*   3904k  0x3d0000
> tplink-8m*   7936k  0x7c0000
> tplink-16m* 15872k  0xf80000
>
> However, based on the size of firmware partitions in DTS it should
> be:
> tplink-4m*   3904k  0x3d0000
> tplink-8m*   8000k  0x7d0000
> tplink-16m* 16192k  0xfd0000
>
> All (!) 8m*/16m* devices actually follow the latter scheme, which
> is also consistent in terms of left free space for other
> partitions. Thus, fix it.
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>  target/linux/ath79/image/common-tp-link.mk | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/target/linux/ath79/image/common-tp-link.mk
> b/target/linux/ath79/image/common-tp-link.mk
> index da4616482a..d05ac028c7 100644
> --- a/target/linux/ath79/image/common-tp-link.mk
> +++ b/target/linux/ath79/image/common-tp-link.mk
> @@ -83,19 +83,19 @@ endef
>  define Device/tplink-8m
>    $(Device/tplink-nolzma)
>    TPLINK_FLASHLAYOUT := 8M
> -  IMAGE_SIZE := 7936k
> +  IMAGE_SIZE := 8000k
>  endef
>
>  define Device/tplink-8mlzma
>    $(Device/tplink)
>    TPLINK_FLASHLAYOUT := 8Mlzma
> -  IMAGE_SIZE := 7936k
> +  IMAGE_SIZE := 8000k
>  endef
>
>  define Device/tplink-16mlzma
>    $(Device/tplink)
>    TPLINK_FLASHLAYOUT := 16Mlzma
> -  IMAGE_SIZE := 15872k
> +  IMAGE_SIZE := 16192k
>  endef
>
>  define Device/tplink-safeloader
> --
> 2.20.1
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
