Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD7F16AABF
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 17:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qQUG9B6Qx3qgVKbVsWh3nWdoYaBkKubuLyVhvQFhpwM=; b=J+xedGFQOeOIri
	I0FBAgrpEnP9yTDd4Py/GkfcTwm7qh4yhn0h7NOcGkY/7SsyglmHrYkCtiYwxLyU0jA7uIm6/qxmY
	5o0vGFdMKCJiFSXYhqV18CdMFeqoW7Bw0kIhB1enUWcsHFc1I7GDdWVoP679mD6jN8aON4jWskfIb
	s/SPXEVTbthrWAwA78T1i3DtsN30HLN5tNDwn5HuQbFsV2QjassF64PSiFxOYjhHR2RhIIJz0S3ae
	ZD9DG8GB6ENHzi2CECT0i666cy1vzpiWCCQlGSCteyl5ja9OTTPShgAllDPjeXOdc9WABwiWsxDNl
	DFu+sgGak6ljb/4A2/sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GIT-0000hL-C4; Mon, 24 Feb 2020 16:09:29 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6GII-0000gc-UP
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 16:09:23 +0000
Received: from buildfff.adridolf.com ([188.193.188.142]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Ml6i4-1jrOLr3YkO-00lZ2i; Mon, 24 Feb 2020 17:09:03 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 24 Feb 2020 17:08:18 +0100
Message-Id: <20200224160818.34303-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:s78LyXy9XAnool1feuIskQceeKglrh1lWV7N9rd614lE4vZdsjC
 nZEmrPCaLFUCDjFaQddXlu+FtE512FLJlppR9gY1Cj5glPTPqSAqqCrOPeYGovUJJsaRRYl
 qz3Y+dSOdC0X73yiMJ1h5UF5RlpJFK8Of1h+0u3pdhWs+ENzNq56TjfWj45MX+GEBYjD3OH
 GG1/+SukN6r1xKyQz8ZSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VgKOjf/RdKQ=:eV422dZi2z3hSfcj/x/QDq
 J772QMMFLwjS5BPua+gJdlsOYME4n8IzxAX0b7gHUw/u9sMF1TQgSFO5wGAmurVICXtzdxdi2
 mJAkjue6maHmFX1/Z9hCMnmVjl9FoDrKQbq61ngiCXFJJ3pvLuqDrU48xLjzyYRdZGr+RZELm
 68r/jNPVv04xWVVlFSLnwLvLo1baGsOC1p/19h6U7f9oLiS/2KNtCNkPx3F3P1JExd0oPhQEg
 cAZxr9nV5g7RbnGIHK69diVA+z7yXpAL46NDE8xiLuFj4YT0y2zE6XtOWhPCMyTpuL0zCLsTB
 eaEBQBem5HOUNGDv5n+Dy7D6WpXs2CRZkcWdeg9xzq7WU0d9bTnWke2pbQId5s2N+6AP/mmuD
 yG4myujcsyefkyh5L24tg73AxHUlPE7KKV3aLXHV/SdUKXEDaxM2f0MR5hji0aN0iEpXD6MlL
 dNfMh4grmsXJPwE6WdgwBIcnECHjVYpmlZf1PiYCKsM5SmObE9jowXsSUbMfCT0LOrY8QXRgr
 E0fKhIfXO5aO78MMrxJzNWQmY/32R+YhY58NvxY2oyWDf6BfQzLj4FblUMs9Kiuv+giPjauDS
 7T1/t07pY+2al9pW3d/z/zx0jMt4Sa7hHYp4tBsaWKoZSnlUm+7emRDta6HkNiRVZFvEMoGlc
 RyS6XED/mnRQa6hp2lWl/ji1/cydqgFd6DXrGxWGzFeGOelcBCX4KYksi8Hb1D6K+o9Dhd0Ym
 hBj9yxqZsw9Qvuv0/E2vcq3rRjLrhiDbeGQci/LyMPm0RxDMNab27UIHkJKo1Nvkj1rRv72uw
 UVxAD4C1ZPasD5FnQ+IRYs839Too8mY6KhU4EgldC1V4Wd1q1eSP/xvg5qIG7CBZRAFQSx4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_080919_275820_CEF94B36 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] package: use PKG_VERSION only for upstream
 packages
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
 Andre Valentin <avalentin@marcant.net>, Daniel Golle <dgolle@allnet.de>,
 John Crispin <john@phrozen.org>,
 Matthias Schiffer <mschiffer@universe-factory.net>,
 Steven Barth <steven@midlink.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In the package guidelines, PKG_VERSION is supposed to be used
as "The upstream version number that we're downloading", while
PKG_RELEASE is referred to as "The version of this package Makefile".
Thus, the variables in a strict interpretation provide a clear
distinction between "their" (upstream) version in PKG_VERSION and
"our" (local OpenWrt trunk) version in PKG_RELEASE.

For local (OpenWrt-only) packages, this implies that those will only
need PKG_RELEASE defined, while PKG_VERSION does not apply following
a strict interpretation. While the majority of "our" packages actually
follow that scheme, there are also some that mix both variables or have
one of them defined but keep them at "1".

This is misleading and confusing, which can be observed by the fact that
there typically either one of the variables is never bumped or the
choice of the variable to increase depends on the person doing the change.

Consequently, this patch aims at clarifying the situation by consistently
using only PKG_RELEASE for "our" packages. To achieve that, PKG_VERSION
is removed there, bumping PKG_RELEASE where necessary to ensure the
resulting package version string is bigger than before.

Cc: Hans Dedecker <dedeckeh@gmail.com>
Cc: Felix Fietkau <nbd@nbd.name>
Cc: Andre Valentin <avalentin@marcant.net>
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Cc: Jo-Philipp Wich <jo@mein.io>
Cc: Steven Barth <steven@midlink.org>
Cc: Daniel Golle <dgolle@allnet.de>
Cc: John Crispin <john@phrozen.org>

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/kernel/om-watchdog/Makefile         | 1 -
 package/network/config/gre/Makefile         | 1 -
 package/network/config/ipip/Makefile        | 1 -
 package/network/config/qos-scripts/Makefile | 3 +--
 package/network/config/vti/Makefile         | 1 -
 package/network/config/vxlan/Makefile       | 2 +-
 package/network/config/xfrm/Makefile        | 1 -
 package/network/ipv6/464xlat/Makefile       | 2 +-
 package/network/ipv6/6in4/Makefile          | 3 +--
 package/network/ipv6/6rd/Makefile           | 3 +--
 package/network/ipv6/6to4/Makefile          | 3 +--
 package/network/ipv6/ds-lite/Makefile       | 3 +--
 package/network/ipv6/map/Makefile           | 3 +--
 package/network/utils/rssileds/Makefile     | 1 -
 package/network/utils/wwan/Makefile         | 3 +--
 package/system/urandom-seed/Makefile        | 3 +--
 package/system/zram-swap/Makefile           | 3 +--
 17 files changed, 11 insertions(+), 26 deletions(-)

diff --git a/package/kernel/om-watchdog/Makefile b/package/kernel/om-watchdog/Makefile
index 403069b816..a7e859dc8b 100644
--- a/package/kernel/om-watchdog/Makefile
+++ b/package/kernel/om-watchdog/Makefile
@@ -9,7 +9,6 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=om-watchdog
 PKG_RELEASE:=2
-PKG_VERSION:=1
 
 include $(INCLUDE_DIR)/package.mk
 
diff --git a/package/network/config/gre/Makefile b/package/network/config/gre/Makefile
index ca19f5d47c..b16dd72cde 100644
--- a/package/network/config/gre/Makefile
+++ b/package/network/config/gre/Makefile
@@ -8,7 +8,6 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=gre
-PKG_VERSION:=1
 PKG_RELEASE:=12
 PKG_LICENSE:=GPL-2.0
 
diff --git a/package/network/config/ipip/Makefile b/package/network/config/ipip/Makefile
index 458709038b..c262182558 100644
--- a/package/network/config/ipip/Makefile
+++ b/package/network/config/ipip/Makefile
@@ -8,7 +8,6 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=ipip
-PKG_VERSION:=1
 PKG_RELEASE:=3
 PKG_LICENSE:=GPL-2.0
 
diff --git a/package/network/config/qos-scripts/Makefile b/package/network/config/qos-scripts/Makefile
index abaeaeb981..85b221b4b3 100644
--- a/package/network/config/qos-scripts/Makefile
+++ b/package/network/config/qos-scripts/Makefile
@@ -8,8 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=qos-scripts
-PKG_VERSION:=1.3.1
-PKG_RELEASE:=1
+PKG_RELEASE:=1.3.1
 PKG_LICENSE:=GPL-2.0
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
diff --git a/package/network/config/vti/Makefile b/package/network/config/vti/Makefile
index ee7c0d11e8..ffac77ab91 100644
--- a/package/network/config/vti/Makefile
+++ b/package/network/config/vti/Makefile
@@ -8,7 +8,6 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=vti
-PKG_VERSION:=1
 PKG_RELEASE:=3
 PKG_LICENSE:=GPL-2.0
 
diff --git a/package/network/config/vxlan/Makefile b/package/network/config/vxlan/Makefile
index 5850c443e7..82ff867fbd 100644
--- a/package/network/config/vxlan/Makefile
+++ b/package/network/config/vxlan/Makefile
@@ -1,7 +1,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=vxlan
-PKG_VERSION:=2
+PKG_RELEASE:=2
 PKG_LICENSE:=GPL-2.0
 
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/network/config/xfrm/Makefile b/package/network/config/xfrm/Makefile
index 1d0766f568..1b3b99adb0 100644
--- a/package/network/config/xfrm/Makefile
+++ b/package/network/config/xfrm/Makefile
@@ -2,7 +2,6 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=xfrm
-PKG_VERSION:=1
 PKG_RELEASE:=2
 PKG_LICENSE:=GPL-2.0
 
diff --git a/package/network/ipv6/464xlat/Makefile b/package/network/ipv6/464xlat/Makefile
index f4dce2e77d..c792323235 100644
--- a/package/network/ipv6/464xlat/Makefile
+++ b/package/network/ipv6/464xlat/Makefile
@@ -1,7 +1,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=464xlat
-PKG_VERSION:=12
+PKG_RELEASE:=12
 
 PKG_SOURCE_DATE:=2018-01-16
 PKG_MAINTAINER:=Hans Dedecker <dedeckeh@gmail.com>
diff --git a/package/network/ipv6/6in4/Makefile b/package/network/ipv6/6in4/Makefile
index 8ff4730e74..da0aeeb3ba 100644
--- a/package/network/ipv6/6in4/Makefile
+++ b/package/network/ipv6/6in4/Makefile
@@ -8,8 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=6in4
-PKG_VERSION:=25
-PKG_RELEASE:=1
+PKG_RELEASE:=25
 PKG_LICENSE:=GPL-2.0
 
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/network/ipv6/6rd/Makefile b/package/network/ipv6/6rd/Makefile
index 47f20414fc..9836ae9361 100644
--- a/package/network/ipv6/6rd/Makefile
+++ b/package/network/ipv6/6rd/Makefile
@@ -8,8 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=6rd
-PKG_VERSION:=9
-PKG_RELEASE:=4
+PKG_RELEASE:=10
 PKG_LICENSE:=GPL-2.0
 
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/network/ipv6/6to4/Makefile b/package/network/ipv6/6to4/Makefile
index 32d7b325aa..dfb66aaae2 100644
--- a/package/network/ipv6/6to4/Makefile
+++ b/package/network/ipv6/6to4/Makefile
@@ -8,8 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=6to4
-PKG_VERSION:=12
-PKG_RELEASE:=2
+PKG_RELEASE:=13
 PKG_LICENSE:=GPL-2.0
 
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/network/ipv6/ds-lite/Makefile b/package/network/ipv6/ds-lite/Makefile
index 198b6ebcc7..502da366a9 100644
--- a/package/network/ipv6/ds-lite/Makefile
+++ b/package/network/ipv6/ds-lite/Makefile
@@ -8,8 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=ds-lite
-PKG_VERSION:=7
-PKG_RELEASE:=4
+PKG_RELEASE:=8
 PKG_LICENSE:=GPL-2.0
 
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/network/ipv6/map/Makefile b/package/network/ipv6/map/Makefile
index f05f216a4c..5d0e0bbd3d 100644
--- a/package/network/ipv6/map/Makefile
+++ b/package/network/ipv6/map/Makefile
@@ -8,8 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=map
-PKG_VERSION:=4
-PKG_RELEASE:=13
+PKG_RELEASE:=5
 PKG_LICENSE:=GPL-2.0
 
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/network/utils/rssileds/Makefile b/package/network/utils/rssileds/Makefile
index 7a59314693..2444ecc283 100644
--- a/package/network/utils/rssileds/Makefile
+++ b/package/network/utils/rssileds/Makefile
@@ -8,7 +8,6 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=rssileds
-PKG_VERSION:=0.2
 PKG_RELEASE:=2
 PKG_LICNESE:=GPL-2.0+
 
diff --git a/package/network/utils/wwan/Makefile b/package/network/utils/wwan/Makefile
index bb829b5e2c..9834354e2e 100644
--- a/package/network/utils/wwan/Makefile
+++ b/package/network/utils/wwan/Makefile
@@ -1,8 +1,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wwan
-PKG_VERSION:=2019-04-29
-PKG_RELEASE=4
+PKG_RELEASE:=5
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=
diff --git a/package/system/urandom-seed/Makefile b/package/system/urandom-seed/Makefile
index aa13765a52..d86add9e1b 100644
--- a/package/system/urandom-seed/Makefile
+++ b/package/system/urandom-seed/Makefile
@@ -1,8 +1,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=urandom-seed
-PKG_VERSION:=1.0
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 PKG_LICENSE:=GPL-2.0
 
 PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
diff --git a/package/system/zram-swap/Makefile b/package/system/zram-swap/Makefile
index ee5e85927f..ddc71abfe5 100644
--- a/package/system/zram-swap/Makefile
+++ b/package/system/zram-swap/Makefile
@@ -8,8 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=zram-swap
-PKG_VERSION:=1.1
-PKG_RELEASE:=4
+PKG_RELEASE:=5
 
 PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
