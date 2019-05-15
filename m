Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEC21F46F
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 14:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WJSwM04kRLMG5++nU0MFUlmed+OqfnQQ41Ho/WXY75A=; b=E35nkxB9e414V5
	Kt/8thWCRqxhx3M1QTljxyI4MCgMvjc19yEoy6if+XIMrLES0jD3PoASuHdMmIVVoCG6/gw/PF1bm
	7MfHQ+5KOm+hz6XP37jVC+EKOpRa9ypDwVz6ROH2ns39PVIs62zg7LTgqF4MkIy4zSVjT+YBqelOz
	RPRgDIMle7IOPM/Q6seP/cxpGFV/RvyoEDJdVyPJDFajwVZfm4fHcoyAsi9YDbgyYVfdcGE1cgBET
	zfq+qMuONGYTgjJsv/q6Sivk2XtkzOGh6SCnz+47E5IvnTTPc3VHlBoiGOymFoVBABdOhi//8kvtg
	hsHIH2WBGsSefoGRoYrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQt4v-0001fu-Ut; Wed, 15 May 2019 12:32:13 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQt4n-0001fY-Gt
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 12:32:07 +0000
Received: by mail-pl1-x62d.google.com with SMTP id a5so1265723pls.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 05:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+MWQzYizBt1pcCi6h9gOkEBdqJG2ydwxouh9L6lIJCg=;
 b=rnPxtd5DE2MKXAk5+Iv+iyNCcN5vLnekbi6kWnB0bMwsYwMJ4AYELkWE2fx8kSC/jF
 j7Lcq83NFwFYc1MSv+tnaQzwn/FhPsg0WVpxI8WJZkrZ/BUsVKjXs3TqfXsDM1Taewog
 q3MkRaSsjK7vhCuZ/lrGXHMoH/x6oRD+hdFrx+9aszcjzdNIH++uzyFvmKva9Xc975GT
 Yz/iFvplZf3ROEJVaT/qhvOtdpsqW1fUD0mZ5NDtK2oc++d5GbcpKG+KZdjDQ5VW7qxY
 hzM5JVns/ovK2mquchzW8hyrBkFQFhp/fUvqb8t2jTRwUzLSQ75OeIA88xqX5AZbKb0P
 K/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+MWQzYizBt1pcCi6h9gOkEBdqJG2ydwxouh9L6lIJCg=;
 b=ODYGoDkA/pwKscg75d93edvJmbGE5MgXp8IXNuGpCGkRiYjawCajCsf2TqKUWtROWk
 e9ZfUJRgQf3DkIqEHU5ymV0d6kCRudt1z+EGb+A/qRPpeHoOOlAcVQ1DmJzpk94/9Bg7
 2UoW1/CU+9DNGif7qGLkQlvN8n0dQ81TiqtBZbcHkTUb7wBhUEtsPOZA4TWeBwMsTBFX
 fulR7yvDWmq/iEipdIE05LQMPSI77iLDsJYDRrKNoZ8szJst6ensvECH1WSByuWnYW9u
 BlA7Mfb28aW5nrhtSmbE9Qn9XytWtCgJK40b69VpQgwhpczhmWZm7dp6SgzIbm2/tDr+
 pd6g==
X-Gm-Message-State: APjAAAXhkJhilLeBrThcmlXhuJwuig07FrvehCiupscckcG4RCWAtFGK
 0/IaZXaGkTJJzL13fsZokol4bLJA
X-Google-Smtp-Source: APXvYqyHsdRQM8OXknEPKUcwW7UV7mPb3Zd5Qe8ikLKkmHbEVC8CnL22z8c1xKFgD2NrWI6vwE2JCg==
X-Received: by 2002:a17:902:2bca:: with SMTP id
 l68mr41855938plb.301.1557923524229; 
 Wed, 15 May 2019 05:32:04 -0700 (PDT)
Received: from localhost.localdomain (tswc1c008.netvigator.com. [219.76.15.8])
 by smtp.gmail.com with ESMTPSA id
 l15sm2177005pgb.71.2019.05.15.05.32.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 05:32:03 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 May 2019 20:31:52 +0800
Message-Id: <20190515123152.27834-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_053205_561301_63E8DADD 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] build: include BUILD_VARIANT in
 PKG_BUILD_DIR
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This changes the default PKG_BUILD_DIR to take BUILD_VARIANT into
account (if set), so that packages do not need to manually override
PKG_BUILD_DIR just to handle variants.

This also updates most base packages with variants to use the updated
default PKG_BUILD_DIR.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
v2: updated PKG_BUILD_DIR in include/kernel.mk, removed undefines

 include/kernel.mk                         | 2 +-
 include/package.mk                        | 2 +-
 package/libs/ustream-ssl/Makefile         | 2 --
 package/network/services/hostapd/Makefile | 2 --
 package/network/services/odhcpd/Makefile  | 2 --
 package/network/services/openvpn/Makefile | 1 -
 package/network/services/ppp/Makefile     | 2 --
 package/network/utils/iproute2/Makefile   | 2 --
 package/network/utils/iw/Makefile         | 1 -
 package/network/utils/tcpdump/Makefile    | 1 -
 package/system/ucert/Makefile             | 2 --
 package/utils/px5g/Makefile               | 1 -
 12 files changed, 2 insertions(+), 18 deletions(-)

diff --git a/include/kernel.mk b/include/kernel.mk
index 3195090a0a..24ece77e0f 100644
--- a/include/kernel.mk
+++ b/include/kernel.mk
@@ -77,7 +77,7 @@ else
   TARGET_MODULES_DIR:=$(LINUX_TARGET_DIR)/$(MODULES_SUBDIR)
 
   ifneq ($(TARGET_BUILD),1)
-    PKG_BUILD_DIR ?= $(KERNEL_BUILD_DIR)/$(PKG_NAME)$(if $(PKG_VERSION),-$(PKG_VERSION))
+    PKG_BUILD_DIR ?= $(KERNEL_BUILD_DIR)/$(if $(BUILD_VARIANT),$(PKG_NAME)-$(BUILD_VARIANT)/)$(PKG_NAME)$(if $(PKG_VERSION),-$(PKG_VERSION))
   endif
 endif
 
diff --git a/include/package.mk b/include/package.mk
index 569ad647d6..015117bd3a 100644
--- a/include/package.mk
+++ b/include/package.mk
@@ -11,7 +11,7 @@ all: $(if $(DUMP),dumpinfo,$(if $(CHECK),check,compile))
 
 include $(INCLUDE_DIR)/download.mk
 
-PKG_BUILD_DIR ?= $(BUILD_DIR)/$(PKG_NAME)$(if $(PKG_VERSION),-$(PKG_VERSION))
+PKG_BUILD_DIR ?= $(BUILD_DIR)/$(if $(BUILD_VARIANT),$(PKG_NAME)-$(BUILD_VARIANT)/)$(PKG_NAME)$(if $(PKG_VERSION),-$(PKG_VERSION))
 PKG_INSTALL_DIR ?= $(PKG_BUILD_DIR)/ipkg-install
 PKG_BUILD_PARALLEL ?=
 PKG_USE_MIPS16 ?= 1
diff --git a/package/libs/ustream-ssl/Makefile b/package/libs/ustream-ssl/Makefile
index a15f3d8ab8..3b23d30b31 100644
--- a/package/libs/ustream-ssl/Makefile
+++ b/package/libs/ustream-ssl/Makefile
@@ -10,8 +10,6 @@ PKG_SOURCE_VERSION:=23a3f2830341acd1db149175baf7315a33bd0edb
 PKG_MIRROR_HASH:=289bef5dac684015b6a40cfd72cf1c8c297bb77cf2efd54e562b628ba3afd83d
 CMAKE_INSTALL:=1
 
-PKG_BUILD_DIR=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_SOURCE_SUBDIR)
-
 PKG_LICENSE:=ISC
 PKG_LICENSE_FILES:=
 
diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 235f178bc9..05789dbe6b 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -67,8 +67,6 @@ ifeq ($(LOCAL_VARIANT),mesh)
   CONFIG_VARIANT:=full
 endif
 
-PKG_BUILD_DIR=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
-
 include $(INCLUDE_DIR)/package.mk
 
 STAMP_CONFIGURED:=$(STAMP_CONFIGURED)_$(CONFIG_WPA_MSG_MIN_PRIORITY)
diff --git a/package/network/services/odhcpd/Makefile b/package/network/services/odhcpd/Makefile
index a588af0ea6..83cfdd235b 100644
--- a/package/network/services/odhcpd/Makefile
+++ b/package/network/services/odhcpd/Makefile
@@ -19,8 +19,6 @@ PKG_MIRROR_HASH:=27a0802a01bc6334c6c602b71d8521a2472b82d2bf67be63ae380f56234b0fb
 PKG_MAINTAINER:=Hans Dedecker <dedeckeh@gmail.com>
 PKG_LICENSE:=GPL-2.0
 
-PKG_BUILD_DIR=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
-
 PKG_INSTALL:=1
 PKG_CONFIG_DEPENDS:=CONFIG_PACKAGE_odhcpd_$(BUILD_VARIANT)_ext_cer_id
 
diff --git a/package/network/services/openvpn/Makefile b/package/network/services/openvpn/Makefile
index f01b74d8aa..538be5d51d 100644
--- a/package/network/services/openvpn/Makefile
+++ b/package/network/services/openvpn/Makefile
@@ -18,7 +18,6 @@ PKG_SOURCE_URL:=\
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_HASH:=a42f53570f669eaf10af68e98d65b531015ff9e12be7a62d9269ea684652f648
 
-PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 
 PKG_INSTALL:=1
diff --git a/package/network/services/ppp/Makefile b/package/network/services/ppp/Makefile
index a588540a5d..1235d18471 100644
--- a/package/network/services/ppp/Makefile
+++ b/package/network/services/ppp/Makefile
@@ -23,8 +23,6 @@ PKG_CPE_ID:=cpe:/a:samba:ppp
 PKG_RELEASE_VERSION:=2.4.7
 PKG_VERSION:=$(PKG_RELEASE_VERSION).git-$(PKG_SOURCE_DATE)
 
-PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
-
 PKG_BUILD_DEPENDS:=libpcap
 
 PKG_BUILD_PARALLEL:=1
diff --git a/package/network/utils/iproute2/Makefile b/package/network/utils/iproute2/Makefile
index 8617a8ef2f..2d69f1c1f3 100644
--- a/package/network/utils/iproute2/Makefile
+++ b/package/network/utils/iproute2/Makefile
@@ -19,8 +19,6 @@ PKG_BUILD_DEPENDS:=iptables
 PKG_LICENSE:=GPL-2.0
 PKG_CPE_ID:=cpe:/a:iproute2_project:iproute2
 
-PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
-
 include $(INCLUDE_DIR)/kernel.mk
 include $(INCLUDE_DIR)/package.mk
 include $(INCLUDE_DIR)/nls.mk
diff --git a/package/network/utils/iw/Makefile b/package/network/utils/iw/Makefile
index 58cf8319f5..64438a1931 100644
--- a/package/network/utils/iw/Makefile
+++ b/package/network/utils/iw/Makefile
@@ -15,7 +15,6 @@ PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@KERNEL/software/network/iw
 PKG_HASH:=1e38ea794a223525b2ea7fe78fd14f2a56121e62e21ba5f9dbe8c494b35b5c0d
 
-PKG_BUILD_DIR:=$(BUILD_DIR)/iw-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 PKG_LICENSE:=GPL-2.0
 
diff --git a/package/network/utils/tcpdump/Makefile b/package/network/utils/tcpdump/Makefile
index 712617fd25..74ef2cd204 100644
--- a/package/network/utils/tcpdump/Makefile
+++ b/package/network/utils/tcpdump/Makefile
@@ -16,7 +16,6 @@ PKG_SOURCE_URL:=http://www.us.tcpdump.org/release/ \
 	http://www.tcpdump.org/release/
 PKG_HASH:=798b3536a29832ce0cbb07fafb1ce5097c95e308a6f592d14052e1ef1505fe79
 
-PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
 PKG_BUILD_PARALLEL:=1
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
diff --git a/package/system/ucert/Makefile b/package/system/ucert/Makefile
index 0bcd89de89..6c1db9390d 100644
--- a/package/system/ucert/Makefile
+++ b/package/system/ucert/Makefile
@@ -17,8 +17,6 @@ PKG_LICENSE_FILES:=COPYING
 
 PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>
 
-PKG_BUILD_DIR=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
-
 include $(INCLUDE_DIR)/package.mk
 include $(INCLUDE_DIR)/host-build.mk
 include $(INCLUDE_DIR)/cmake.mk
diff --git a/package/utils/px5g/Makefile b/package/utils/px5g/Makefile
index 7b5748425d..592d19663d 100644
--- a/package/utils/px5g/Makefile
+++ b/package/utils/px5g/Makefile
@@ -10,7 +10,6 @@ include $(TOPDIR)/rules.mk
 PKG_NAME:=px5g
 PKG_RELEASE:=8
 PKG_LICENSE:=LGPL-2.1
-PKG_BUILD_DIR:=$(BUILD_DIR)/px5g-$(BUILD_VARIANT)
 
 PKG_USE_MIPS16:=0
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
