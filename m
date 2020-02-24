Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E1616ABDD
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 17:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6brgfdBjKrSk6cZIC/oE9K6+353HVEM3P0p6+/I1Iu4=; b=jgKIKeSYy56yrg
	c5nIe7fFtWXEKduXVpu5qLLyWzPSiFM3sStxEQ7DWyvYPr2BYJFNGLN79njudGe2mtDLWibLdeSVY
	RChHqCi9EK7r8iCrCHGJPkNMS7Datzb+zFL17vFXTNTHxNc48lKkF2VFTXbPHXhKm4mDQwjiHVCHN
	eQle2ow8T/LFg8xcU9YvZU1q29Bpw9R4m0mT4xwLYykgrF3e4GGV307Bn3hLQv6h1S3mCj7ZdhDcw
	2c1DCvxi+BXWzEcyt5MOhdDP+WBvC0+LQ1EjBJY19FKKVP9LcMRkhxvuz5Q5z+NCefWEgmy0ePwiV
	X6UUOKykaTKe/j0X4YkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GpP-0007aA-BZ; Mon, 24 Feb 2020 16:43:31 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6GpI-0007ZU-S2
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 16:43:27 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1j6GpF-0002DC-BN; Mon, 24 Feb 2020 17:43:22 +0100
Date: Mon, 24 Feb 2020 17:43:11 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20200224164311.GE48944@makrotopia.org>
References: <20200224160818.34303-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224160818.34303-1-freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_084325_066519_CF25D252 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] package: use PKG_VERSION only for
 upstream packages
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
Cc: Hans Dedecker <dedeckeh@gmail.com>, Jo-Philipp Wich <jo@mein.io>,
 Matthias Schiffer <mschiffer@universe-factory.net>,
 Daniel Golle <dgolle@allnet.de>, John Crispin <john@phrozen.org>,
 openwrt-devel@lists.openwrt.org, Andre Valentin <avalentin@marcant.net>,
 Steven Barth <steven@midlink.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Feb 24, 2020 at 05:08:18PM +0100, Adrian Schmutzler wrote:
> In the package guidelines, PKG_VERSION is supposed to be used
> as "The upstream version number that we're downloading", while
> PKG_RELEASE is referred to as "The version of this package Makefile".
> Thus, the variables in a strict interpretation provide a clear
> distinction between "their" (upstream) version in PKG_VERSION and
> "our" (local OpenWrt trunk) version in PKG_RELEASE.
> 
> For local (OpenWrt-only) packages, this implies that those will only
> need PKG_RELEASE defined, while PKG_VERSION does not apply following
> a strict interpretation. While the majority of "our" packages actually
> follow that scheme, there are also some that mix both variables or have
> one of them defined but keep them at "1".
> 
> This is misleading and confusing, which can be observed by the fact that
> there typically either one of the variables is never bumped or the
> choice of the variable to increase depends on the person doing the change.
> 
> Consequently, this patch aims at clarifying the situation by consistently
> using only PKG_RELEASE for "our" packages. To achieve that, PKG_VERSION
> is removed there, bumping PKG_RELEASE where necessary to ensure the
> resulting package version string is bigger than before.

Not sure, but I guess this may bring problems when people do
opkg show-upgradable
as removing PKG_VERSION may then result in the package manager
considering it a downgrade...?

I haven't tried nor looked into it in detail though.


Cheers


Daniel

> 
> Cc: Hans Dedecker <dedeckeh@gmail.com>
> Cc: Felix Fietkau <nbd@nbd.name>
> Cc: Andre Valentin <avalentin@marcant.net>
> Cc: Matthias Schiffer <mschiffer@universe-factory.net>
> Cc: Jo-Philipp Wich <jo@mein.io>
> Cc: Steven Barth <steven@midlink.org>
> Cc: Daniel Golle <dgolle@allnet.de>
> Cc: John Crispin <john@phrozen.org>
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>  package/kernel/om-watchdog/Makefile         | 1 -
>  package/network/config/gre/Makefile         | 1 -
>  package/network/config/ipip/Makefile        | 1 -
>  package/network/config/qos-scripts/Makefile | 3 +--
>  package/network/config/vti/Makefile         | 1 -
>  package/network/config/vxlan/Makefile       | 2 +-
>  package/network/config/xfrm/Makefile        | 1 -
>  package/network/ipv6/464xlat/Makefile       | 2 +-
>  package/network/ipv6/6in4/Makefile          | 3 +--
>  package/network/ipv6/6rd/Makefile           | 3 +--
>  package/network/ipv6/6to4/Makefile          | 3 +--
>  package/network/ipv6/ds-lite/Makefile       | 3 +--
>  package/network/ipv6/map/Makefile           | 3 +--
>  package/network/utils/rssileds/Makefile     | 1 -
>  package/network/utils/wwan/Makefile         | 3 +--
>  package/system/urandom-seed/Makefile        | 3 +--
>  package/system/zram-swap/Makefile           | 3 +--
>  17 files changed, 11 insertions(+), 26 deletions(-)
> 
> diff --git a/package/kernel/om-watchdog/Makefile b/package/kernel/om-watchdog/Makefile
> index 403069b816..a7e859dc8b 100644
> --- a/package/kernel/om-watchdog/Makefile
> +++ b/package/kernel/om-watchdog/Makefile
> @@ -9,7 +9,6 @@ include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=om-watchdog
>  PKG_RELEASE:=2
> -PKG_VERSION:=1
>  
>  include $(INCLUDE_DIR)/package.mk
>  
> diff --git a/package/network/config/gre/Makefile b/package/network/config/gre/Makefile
> index ca19f5d47c..b16dd72cde 100644
> --- a/package/network/config/gre/Makefile
> +++ b/package/network/config/gre/Makefile
> @@ -8,7 +8,6 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=gre
> -PKG_VERSION:=1
>  PKG_RELEASE:=12
>  PKG_LICENSE:=GPL-2.0
>  
> diff --git a/package/network/config/ipip/Makefile b/package/network/config/ipip/Makefile
> index 458709038b..c262182558 100644
> --- a/package/network/config/ipip/Makefile
> +++ b/package/network/config/ipip/Makefile
> @@ -8,7 +8,6 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=ipip
> -PKG_VERSION:=1
>  PKG_RELEASE:=3
>  PKG_LICENSE:=GPL-2.0
>  
> diff --git a/package/network/config/qos-scripts/Makefile b/package/network/config/qos-scripts/Makefile
> index abaeaeb981..85b221b4b3 100644
> --- a/package/network/config/qos-scripts/Makefile
> +++ b/package/network/config/qos-scripts/Makefile
> @@ -8,8 +8,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=qos-scripts
> -PKG_VERSION:=1.3.1
> -PKG_RELEASE:=1
> +PKG_RELEASE:=1.3.1
>  PKG_LICENSE:=GPL-2.0
>  
>  PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
> diff --git a/package/network/config/vti/Makefile b/package/network/config/vti/Makefile
> index ee7c0d11e8..ffac77ab91 100644
> --- a/package/network/config/vti/Makefile
> +++ b/package/network/config/vti/Makefile
> @@ -8,7 +8,6 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=vti
> -PKG_VERSION:=1
>  PKG_RELEASE:=3
>  PKG_LICENSE:=GPL-2.0
>  
> diff --git a/package/network/config/vxlan/Makefile b/package/network/config/vxlan/Makefile
> index 5850c443e7..82ff867fbd 100644
> --- a/package/network/config/vxlan/Makefile
> +++ b/package/network/config/vxlan/Makefile
> @@ -1,7 +1,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=vxlan
> -PKG_VERSION:=2
> +PKG_RELEASE:=2
>  PKG_LICENSE:=GPL-2.0
>  
>  include $(INCLUDE_DIR)/package.mk
> diff --git a/package/network/config/xfrm/Makefile b/package/network/config/xfrm/Makefile
> index 1d0766f568..1b3b99adb0 100644
> --- a/package/network/config/xfrm/Makefile
> +++ b/package/network/config/xfrm/Makefile
> @@ -2,7 +2,6 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=xfrm
> -PKG_VERSION:=1
>  PKG_RELEASE:=2
>  PKG_LICENSE:=GPL-2.0
>  
> diff --git a/package/network/ipv6/464xlat/Makefile b/package/network/ipv6/464xlat/Makefile
> index f4dce2e77d..c792323235 100644
> --- a/package/network/ipv6/464xlat/Makefile
> +++ b/package/network/ipv6/464xlat/Makefile
> @@ -1,7 +1,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=464xlat
> -PKG_VERSION:=12
> +PKG_RELEASE:=12
>  
>  PKG_SOURCE_DATE:=2018-01-16
>  PKG_MAINTAINER:=Hans Dedecker <dedeckeh@gmail.com>
> diff --git a/package/network/ipv6/6in4/Makefile b/package/network/ipv6/6in4/Makefile
> index 8ff4730e74..da0aeeb3ba 100644
> --- a/package/network/ipv6/6in4/Makefile
> +++ b/package/network/ipv6/6in4/Makefile
> @@ -8,8 +8,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=6in4
> -PKG_VERSION:=25
> -PKG_RELEASE:=1
> +PKG_RELEASE:=25
>  PKG_LICENSE:=GPL-2.0
>  
>  include $(INCLUDE_DIR)/package.mk
> diff --git a/package/network/ipv6/6rd/Makefile b/package/network/ipv6/6rd/Makefile
> index 47f20414fc..9836ae9361 100644
> --- a/package/network/ipv6/6rd/Makefile
> +++ b/package/network/ipv6/6rd/Makefile
> @@ -8,8 +8,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=6rd
> -PKG_VERSION:=9
> -PKG_RELEASE:=4
> +PKG_RELEASE:=10
>  PKG_LICENSE:=GPL-2.0
>  
>  include $(INCLUDE_DIR)/package.mk
> diff --git a/package/network/ipv6/6to4/Makefile b/package/network/ipv6/6to4/Makefile
> index 32d7b325aa..dfb66aaae2 100644
> --- a/package/network/ipv6/6to4/Makefile
> +++ b/package/network/ipv6/6to4/Makefile
> @@ -8,8 +8,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=6to4
> -PKG_VERSION:=12
> -PKG_RELEASE:=2
> +PKG_RELEASE:=13
>  PKG_LICENSE:=GPL-2.0
>  
>  include $(INCLUDE_DIR)/package.mk
> diff --git a/package/network/ipv6/ds-lite/Makefile b/package/network/ipv6/ds-lite/Makefile
> index 198b6ebcc7..502da366a9 100644
> --- a/package/network/ipv6/ds-lite/Makefile
> +++ b/package/network/ipv6/ds-lite/Makefile
> @@ -8,8 +8,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=ds-lite
> -PKG_VERSION:=7
> -PKG_RELEASE:=4
> +PKG_RELEASE:=8
>  PKG_LICENSE:=GPL-2.0
>  
>  include $(INCLUDE_DIR)/package.mk
> diff --git a/package/network/ipv6/map/Makefile b/package/network/ipv6/map/Makefile
> index f05f216a4c..5d0e0bbd3d 100644
> --- a/package/network/ipv6/map/Makefile
> +++ b/package/network/ipv6/map/Makefile
> @@ -8,8 +8,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=map
> -PKG_VERSION:=4
> -PKG_RELEASE:=13
> +PKG_RELEASE:=5
>  PKG_LICENSE:=GPL-2.0
>  
>  include $(INCLUDE_DIR)/package.mk
> diff --git a/package/network/utils/rssileds/Makefile b/package/network/utils/rssileds/Makefile
> index 7a59314693..2444ecc283 100644
> --- a/package/network/utils/rssileds/Makefile
> +++ b/package/network/utils/rssileds/Makefile
> @@ -8,7 +8,6 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=rssileds
> -PKG_VERSION:=0.2
>  PKG_RELEASE:=2
>  PKG_LICNESE:=GPL-2.0+
>  
> diff --git a/package/network/utils/wwan/Makefile b/package/network/utils/wwan/Makefile
> index bb829b5e2c..9834354e2e 100644
> --- a/package/network/utils/wwan/Makefile
> +++ b/package/network/utils/wwan/Makefile
> @@ -1,8 +1,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=wwan
> -PKG_VERSION:=2019-04-29
> -PKG_RELEASE=4
> +PKG_RELEASE:=5
>  
>  PKG_LICENSE:=GPL-2.0
>  PKG_LICENSE_FILES:=
> diff --git a/package/system/urandom-seed/Makefile b/package/system/urandom-seed/Makefile
> index aa13765a52..d86add9e1b 100644
> --- a/package/system/urandom-seed/Makefile
> +++ b/package/system/urandom-seed/Makefile
> @@ -1,8 +1,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=urandom-seed
> -PKG_VERSION:=1.0
> -PKG_RELEASE:=1
> +PKG_RELEASE:=2
>  PKG_LICENSE:=GPL-2.0
>  
>  PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
> diff --git a/package/system/zram-swap/Makefile b/package/system/zram-swap/Makefile
> index ee5e85927f..ddc71abfe5 100644
> --- a/package/system/zram-swap/Makefile
> +++ b/package/system/zram-swap/Makefile
> @@ -8,8 +8,7 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=zram-swap
> -PKG_VERSION:=1.1
> -PKG_RELEASE:=4
> +PKG_RELEASE:=5
>  
>  PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
>  
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
