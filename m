Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D455A1214A
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 19:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zDwvMbaamvDNjKRvGWU4SWWsWD5kI3nckyaI2fIWAc4=; b=m/+UFjZcciUwOj
	ecuF3iAaoFKCfGWIc+ewGnfxG7uVG+hOR69HRtBsxgAt4Ts5PbPnX4CfhwIXm4XUE7Qb8irVgdOXq
	O2UXMPXKhrN82C/WjM2tOFFkMZn/kIgUfwFiWRa4MBYCh3c0FKuGzZCOwFdtx+lKOyCM5gOkvmyKB
	YvylOpFlDnLRAf1eZp3RWQyUUKfPDE4Pp5XHmQ7cWH7dRx/ChX42SLxPmb4i6jMhPoV8mds91PNtb
	+4OuoS+HFxnEP4OtI14LEhtK5d3Jl9MHdnpTRPMEj9y2EdGEtNj/Z6ojtM3suCo7VQ4C+0kNDAoZj
	/vrifsnY5i0itEq/WQPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFtO-0000Mk-5E; Thu, 02 May 2019 17:53:10 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFtG-0000MO-Mw
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 17:53:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id 85so1401545pgc.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 10:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UQxxCC+SSzLlhDaozMB/OwVYhVrpOdFHBI2/7u77aMI=;
 b=GlWOKskAGsMEHBy1TpLF0y+pV9eRFiIxfrjUxJA/LQ484Ab2UKKXJf2AogpAODy3uX
 u9MjmJXOLwFPzFUkHO0IZ8VPVyn7v8B1xpHPouiIrVaL75xZteZP7tfh09syxPvl5ilF
 IdHz0D2H+W+c70aPBN5CYMkhZA6DsHu8pq7eCyRs9bOTloPOrTC2DcYIHEWLJ2LkApMe
 ZCe3JlJe3EH5Pel+yxkfQtDwD1+6SzB4mVQzq7ITeKR+7cuYwrkqIYEEj16N3mcrWs5q
 Bg9QxsbtL/lCIBYOVeLyyH+ir5t42rsfTfCdHBBL/vbfYgYckNpy2c6WOBZFDSdXwF5C
 g4sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UQxxCC+SSzLlhDaozMB/OwVYhVrpOdFHBI2/7u77aMI=;
 b=NFNvSgFNEtnLh784Foy/5LME469RylZTsG+zKqV5l3bYU76xGxW6ESyRCWRk8i80hw
 /4IFZgLgsLqHqI4lOAfIfoHo9uPytTzdV3CW9HkvPAa4ZGqyZD+4DdOnplOyRjI15zA7
 LpGfaC65CkDQfPs/CDR9ZzTjuvUwm6REHRBFUYY1l5LthivbflaDu0wtDWyxIb4gDv/+
 0KO9xWsOQF2MARZ+/m+pnCGSJTDQyy76lnH+/IY5vjmSkHdjk1rpDOtZbmtQuU60Co0n
 J4S0nxOFyLiLnjhxGlL5IdmYvl7q+Db+YZdTtvC9EvUKA1MXe3sLIO+ZnTgaOyOMVRDq
 8Ttg==
X-Gm-Message-State: APjAAAXAQa0BUT15pZUbYJwwnYjx97z9ScY0RHEu6ZTovTxgf9XmlQF8
 vAGYe+xZAEav7rtjKbGIMLeAl+qG
X-Google-Smtp-Source: APXvYqzuuMQpROvypEDFNRBi+sy3/48lERKz98BTH0o1TUgn2KUeeEVA+YgUFP8+3wnmsNqpxsFJGw==
X-Received: by 2002:a62:6ec6:: with SMTP id j189mr5762961pfc.195.1556819581526; 
 Thu, 02 May 2019 10:53:01 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id b128sm4637493pfa.167.2019.05.02.10.52.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 10:53:00 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 01:52:53 +0800
Message-Id: <20190502175253.22491-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_105302_776809_8C44B1C6 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] build: include BUILD_VARIANT in
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
 include/package.mk                        | 2 +-
 package/libs/ustream-ssl/Makefile         | 2 --
 package/network/services/hostapd/Makefile | 2 --
 package/network/services/odhcpd/Makefile  | 2 --
 package/network/services/openvpn/Makefile | 1 -
 package/network/services/ppp/Makefile     | 3 ++-
 package/network/utils/iproute2/Makefile   | 4 ++--
 package/network/utils/iw/Makefile         | 1 -
 package/network/utils/tcpdump/Makefile    | 1 -
 package/system/ucert/Makefile             | 2 --
 package/utils/px5g/Makefile               | 1 -
 11 files changed, 5 insertions(+), 16 deletions(-)

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
index e4a90384d4..0e11a1bb60 100644
--- a/package/network/services/ppp/Makefile
+++ b/package/network/services/ppp/Makefile
@@ -23,7 +23,8 @@ PKG_CPE_ID:=cpe:/a:samba:ppp
 PKG_RELEASE_VERSION:=2.4.7
 PKG_VERSION:=$(PKG_RELEASE_VERSION).git-$(PKG_SOURCE_DATE)
 
-PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
+# set by kernel.mk
+undefine PKG_BUILD_DIR
 
 PKG_BUILD_DEPENDS:=libpcap
 
diff --git a/package/network/utils/iproute2/Makefile b/package/network/utils/iproute2/Makefile
index 8617a8ef2f..00f0f2ae1d 100644
--- a/package/network/utils/iproute2/Makefile
+++ b/package/network/utils/iproute2/Makefile
@@ -19,9 +19,9 @@ PKG_BUILD_DEPENDS:=iptables
 PKG_LICENSE:=GPL-2.0
 PKG_CPE_ID:=cpe:/a:iproute2_project:iproute2
 
-PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
-
 include $(INCLUDE_DIR)/kernel.mk
+# set by kernel.mk
+undefine PKG_BUILD_DIR
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
