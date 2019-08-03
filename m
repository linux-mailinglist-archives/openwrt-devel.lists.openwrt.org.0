Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7998084E
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 22:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rn733S73fTklOfElPJH5vx1a7i5QqAIPiHcrCDbil6Y=; b=pqOLICuXulvLnR
	GgbyUFWhRc5+1Hwl3c5qrIq93qtXwV7UlGa3a9vDKONEQ8o3TUg8Q7qNASPZ6ATEAXXWJxoE8bjd6
	8Z0XQMmTI2G6rPeo/nLBbrpcusghDED8kinFc5YGbUIy66shekS5RVV2GM1oGsJ4M0ehAE0gjexEr
	a55Pyumo3V3oywzZ7k7IEXAWIihHKwSK0w+DCmBbtY7Ccj+YcZ0m78WnwereLBRWTzV6/bhqdNlFS
	jMVGXdjtctT6Qxy1kQch2QrGQgl8arvysjrCcjuZnQI8vj02jIdat/8SzJD5UcOhfFFjcmhygMW0y
	ciajrjOvFmVYOhu9c9xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu0u4-00023F-RX; Sat, 03 Aug 2019 20:45:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu0tt-00022h-K0
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 20:45:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id d1so4923763pgp.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 03 Aug 2019 13:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t14AINrMcFsvMOUDKofnHW8W6S0XL3m0LMdKK6/ilEo=;
 b=R5bYEg5f2vYp34V+EgVMJL6Kfma6tNJ/ykHPU+k9lPdSGdROcKjH0V1WcLhBYxabqQ
 TndHFd1ZtWsLeeaD8eZ+AiWqzzvbk33mzanHAduhLPTRXIeQYGxyiCZhHBiF0Y7jnkx6
 dVUjiTkGmaZQigrUY3SCpN5eZLAvQBka3q/yEXin3Tt0HHCUUu6fO4RVUnxKlR1dl8GN
 lvHTTmm9/ELjZulFmQJnlyYVXq6061X04jHPm004wSNf1yT6gdobq11/MDMjz8BiTR1I
 0SnwF3KP/4rrg8z7VuywdyTnBCepDKeu+BkUxpWy2eKrVyal1P4uxAECI0u/l/EcxMVz
 iFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t14AINrMcFsvMOUDKofnHW8W6S0XL3m0LMdKK6/ilEo=;
 b=j6QcYcKh76w4Svup+TBXbhQ1sDMqFEpaQU+X4S5FIB06v01iffB22jEGC8OhmDow19
 dLsQDV11aJR4r1JpWEcySmUiSj4yw5+pkT9C4dyiNJRm9m6E+EkxDYmR3jPKKbIR5t2A
 Q3B5hKOzwdk4RLJ9fxUGSVhwe7YKN1Nx88RtfVK7MiIArRnO10FiswR5ZaMJl4Mg6ZuW
 n5oCS0BtopsFDTmoa5dQGZmRao/VvlDwBRBXveumWC+5hTP9XJpYh3DMjTFX9OslU2g4
 tqlDecCyQeoH/fxKU+H68XS9j0rXi7Vx6+abqtBgJMntmTA3Ku68sIb1AyqLtwDJXCvy
 6f9Q==
X-Gm-Message-State: APjAAAUlbFM9xVLLZYoSI+ktkbOJAUOO6Kr2+xAscweR/akmNAc83OdQ
 Ad7Ce5tyKfDHoPhnwfCgnHnU0CrA
X-Google-Smtp-Source: APXvYqxrPEpQooMkQ7FtyjMG5401+4BG8WIEVUjF5RcBrJB/TIj8GER8prU0xhP/cMEMnRJmapzxsQ==
X-Received: by 2002:a63:484a:: with SMTP id x10mr71620229pgk.430.1564865111716; 
 Sat, 03 Aug 2019 13:45:11 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id p67sm95652437pfg.124.2019.08.03.13.45.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 13:45:11 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  4 Aug 2019 04:45:06 +0800
Message-Id: <20190803204506.10551-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_134513_688810_B86F9F28 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3] build: include BUILD_VARIANT in
 PKG_BUILD_DIR
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
v3: rebased, use default PKG_BUILD_DIR for more packages

 include/kernel.mk                           | 2 +-
 include/package.mk                          | 2 +-
 package/boot/tfa-layerscape/Makefile        | 1 -
 package/kernel/lantiq/ltq-adsl-mei/Makefile | 1 -
 package/kernel/lantiq/ltq-atm/Makefile      | 1 -
 package/kernel/lantiq/ltq-deu/Makefile      | 1 -
 package/kernel/lantiq/ltq-ptm/Makefile      | 1 -
 package/libs/ustream-ssl/Makefile           | 2 --
 package/network/services/hostapd/Makefile   | 2 --
 package/network/services/odhcpd/Makefile    | 2 --
 package/network/services/openvpn/Makefile   | 1 -
 package/network/services/ppp/Makefile       | 2 --
 package/network/utils/iproute2/Makefile     | 2 --
 package/network/utils/iw/Makefile           | 1 -
 package/network/utils/tcpdump/Makefile      | 1 -
 package/system/ucert/Makefile               | 2 --
 package/utils/px5g/Makefile                 | 1 -
 17 files changed, 2 insertions(+), 23 deletions(-)

diff --git a/include/kernel.mk b/include/kernel.mk
index 975cf455c4..97d23661c9 100644
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
index 66137f211b..c541f6edf7 100644
--- a/include/package.mk
+++ b/include/package.mk
@@ -11,7 +11,7 @@ all: $(if $(DUMP),dumpinfo,$(if $(CHECK),check,compile))
 
 include $(INCLUDE_DIR)/download.mk
 
-PKG_BUILD_DIR ?= $(BUILD_DIR)/$(PKG_NAME)$(if $(PKG_VERSION),-$(PKG_VERSION))
+PKG_BUILD_DIR ?= $(BUILD_DIR)/$(if $(BUILD_VARIANT),$(PKG_NAME)-$(BUILD_VARIANT)/)$(PKG_NAME)$(if $(PKG_VERSION),-$(PKG_VERSION))
 PKG_INSTALL_DIR ?= $(PKG_BUILD_DIR)/ipkg-install
 PKG_BUILD_PARALLEL ?=
 PKG_USE_MIPS16 ?= 1
diff --git a/package/boot/tfa-layerscape/Makefile b/package/boot/tfa-layerscape/Makefile
index 28014e87f2..a34c52bc3b 100644
--- a/package/boot/tfa-layerscape/Makefile
+++ b/package/boot/tfa-layerscape/Makefile
@@ -15,7 +15,6 @@ PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://source.codeaurora.org/external/qoriq/qoriq-components/atf
 PKG_SOURCE_VERSION:=7e34aebe658c7c3439d2d68b0ce6b9776e8e6996
 PKG_MIRROR_HASH:=9cf0bc32fa589a0ee7c48c87898679e645341f29da1253d0ba5d2e82c6ea074d
-PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
 PKG_BUILD_DEPENDS:=uboot-layerscape tfa-layerscape/host
 
 include $(INCLUDE_DIR)/host-build.mk
diff --git a/package/kernel/lantiq/ltq-adsl-mei/Makefile b/package/kernel/lantiq/ltq-adsl-mei/Makefile
index 08e5775771..31e671e53f 100644
--- a/package/kernel/lantiq/ltq-adsl-mei/Makefile
+++ b/package/kernel/lantiq/ltq-adsl-mei/Makefile
@@ -8,7 +8,6 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=ltq-adsl-mei
 PKG_RELEASE:=1
-PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/ltq-adsl-mei-$(BUILD_VARIANT)/
 
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 PKG_CHECK_FORMAT_SECURITY:=0
diff --git a/package/kernel/lantiq/ltq-atm/Makefile b/package/kernel/lantiq/ltq-atm/Makefile
index 5d63983d2c..455d7b25e3 100644
--- a/package/kernel/lantiq/ltq-atm/Makefile
+++ b/package/kernel/lantiq/ltq-atm/Makefile
@@ -8,7 +8,6 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=ltq-atm
 PKG_RELEASE:=2
-PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/ltq-atm-$(BUILD_VARIANT)
 
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 PKG_LICENSE:=GPL-2.0+
diff --git a/package/kernel/lantiq/ltq-deu/Makefile b/package/kernel/lantiq/ltq-deu/Makefile
index af299d8883..7bc9e8532d 100644
--- a/package/kernel/lantiq/ltq-deu/Makefile
+++ b/package/kernel/lantiq/ltq-deu/Makefile
@@ -8,7 +8,6 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=ltq-deu
 PKG_RELEASE:=1
-PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/ltq-deu-$(BUILD_VARIANT)
 
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 PKG_LICENSE:=GPL-2.0+
diff --git a/package/kernel/lantiq/ltq-ptm/Makefile b/package/kernel/lantiq/ltq-ptm/Makefile
index 13831a2b6f..73fd63f42b 100644
--- a/package/kernel/lantiq/ltq-ptm/Makefile
+++ b/package/kernel/lantiq/ltq-ptm/Makefile
@@ -9,7 +9,6 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=ltq-ptm
 PKG_RELEASE:=1
-PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/ltq-ptm-$(BUILD_VARIANT)
 
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 PKG_LICENSE:=GPL-2.0+
diff --git a/package/libs/ustream-ssl/Makefile b/package/libs/ustream-ssl/Makefile
index ca9ad5d98b..b8d0967282 100644
--- a/package/libs/ustream-ssl/Makefile
+++ b/package/libs/ustream-ssl/Makefile
@@ -10,8 +10,6 @@ PKG_SOURCE_VERSION:=738e8d2489fc64f782affd1292388c66f6d69e82
 PKG_MIRROR_HASH:=29e69fce0a334746ed3a68d27f5ca5bffbfc144d04329335be47983fdd7cbdfd
 CMAKE_INSTALL:=1
 
-PKG_BUILD_DIR=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_SOURCE_SUBDIR)
-
 PKG_LICENSE:=ISC
 PKG_LICENSE_FILES:=
 
diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index e389efccb2..be2a9069c7 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -66,8 +66,6 @@ ifeq ($(LOCAL_VARIANT),mesh)
   CONFIG_VARIANT:=full
 endif
 
-PKG_BUILD_DIR=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
-
 include $(INCLUDE_DIR)/package.mk
 
 STAMP_CONFIGURED:=$(STAMP_CONFIGURED)_$(CONFIG_WPA_MSG_MIN_PRIORITY)
diff --git a/package/network/services/odhcpd/Makefile b/package/network/services/odhcpd/Makefile
index 6e2a1df506..9f378f9e62 100644
--- a/package/network/services/odhcpd/Makefile
+++ b/package/network/services/odhcpd/Makefile
@@ -19,8 +19,6 @@ PKG_MIRROR_HASH:=b9ad88274843584629a15ac4200f910e1f14734d7b02650a0305540733fb739
 PKG_MAINTAINER:=Hans Dedecker <dedeckeh@gmail.com>
 PKG_LICENSE:=GPL-2.0
 
-PKG_BUILD_DIR=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
-
 PKG_INSTALL:=1
 PKG_CONFIG_DEPENDS:=CONFIG_PACKAGE_odhcpd_$(BUILD_VARIANT)_ext_cer_id
 
diff --git a/package/network/services/openvpn/Makefile b/package/network/services/openvpn/Makefile
index 30c74789a4..aed9f43f80 100644
--- a/package/network/services/openvpn/Makefile
+++ b/package/network/services/openvpn/Makefile
@@ -18,7 +18,6 @@ PKG_SOURCE_URL:=\
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_HASH:=a42f53570f669eaf10af68e98d65b531015ff9e12be7a62d9269ea684652f648
 
-PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 
 PKG_INSTALL:=1
diff --git a/package/network/services/ppp/Makefile b/package/network/services/ppp/Makefile
index c8016dc619..10e7656ea4 100644
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
index 16b838052e..37a01a597e 100644
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
