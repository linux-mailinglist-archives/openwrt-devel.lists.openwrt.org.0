Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCB41E84BC
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 19:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maOS/bPGDLbcHmb/RWVCSwNXEUaWRO/EH5BOMfEiOmU=; b=VteQgmmpT4PGI3
	asrDeWAoCNJVQCb3+kzwqxTpfA1SikxftqQVwNUjxpbri4vBVVLognXc1KpvOCwwgDzNIW79w+042
	2Uv9ox2CkZYMZa1f0f0lCRcaOGa9PVtS7AF4CJrfDAohKIGrKqh9OdfluttgyGnDp9p0997o4cbH6
	jJqoIOiCvkShLSWSzRHSpzMNSfGAgWx9bFxwFBjOqWhwsBqLxslnZGNyApOR5hibRtueCfH6prLuC
	9EaawwVFetI2dQnRDpr97jb2p9iIoQHiAQT+Pjz3LOxIvjF9RNTGN6G2yKTC7W+xjEWCeBqNibHhJ
	/9GEsOZ3MNUNNWGf2gRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeijd-0004II-RX; Fri, 29 May 2020 17:23:57 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeijE-0003v3-DV
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 17:23:35 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MVeDs-1jWyz54Bgi-00RVW7; Fri, 29 May 2020 19:23:28 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 29 May 2020 19:22:38 +0200
Message-Id: <20200529172238.43399-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:A7lbDJY56G6fmaZRuvekP/6WXl11pb8cIgXDPjo643vwpejARVz
 D9+Nm1tF9F97Jzyj9RVVa/uHKUNrAEwQsuKdYZ2FMCBKGxji77k8n6CtbwiU+tqmgH4PPg6
 Ko25UY3eZy1RHVGQs0bUiUG1GXE9D23DxMv3Wl9hPKdvPmGsaj2suYebnQvMw+5/XplLixm
 uPbT7yxfbkZOFI2r1khLA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GDfaRYICll8=:ger14bg2sn6SzIFhjtj/S8
 V2Yq2N9JIfYLjTZyA1T94XaeIgb1TCnnmCyj7n4LDsh+3PTjmBcNeaH2s7XBcGUoJCO2zpinX
 oKUZC7B85DLJ8hhE8q2Qi6ynPxygebnSLlmTQN7AIIBtVk322X9jCN1Z4U5dOcRvL9ddaliAi
 iXHLi8UeuQeo2KH+lj0GgbsOiJILNRxvj3nopIMSUYPHzW0F6IwO+lD5FSdjryC5eRYOkxR4v
 syJFxnKM4KrkfHsSguqTiyYs4xDQlfRSEzdxhRLG2lXaamUmdtaHr9leY1gg/YmPTty40/Hws
 +nBOrunPw8A6svb8M5SvKv2yPE8djJbzAoIJE7HTtG+QfdqqeUW6miAXduXIOvWwzCJLCOMG3
 jqS1IPl5CtDknevZ4W39LPTFtV8LjKLxeBmYBG0BZFYlaH9PFTaY/ellD69Xh3e8UjFxJbJmp
 jvte2uJfZxerraJ+ZFyzM9gzFPWj11001JXZa1nA55N3K7SJCM5/1CnRamMpbng0/8N0KLjhA
 701N9HYESq7B52ZoSDIWX3lBBzhnSMPIWUHogJDDwCww83yQNj5pa90JOidhyDSLF+b4abZxo
 YSYzRYiY1jpC8VGQoTUlXLj7XnNESjlF4JzkiadJ4i7C9zZCpgu1F7hk2MfxXhoZaxKBRPm21
 CAdKqWO7CsvXlWB5igoEZdbuL0skaDqb3u6SDPZ0xGwTnTiKkJ1t3my7FZdCVnwLN0EhjTcdd
 Rk0nVk0hIRPJxkC9e6Nq+T5uBbyrjB/uK/9TwzIm5NieYNM4g4Fi+29jkA6N85YGBlWulOreP
 opJRJjst5wUXCKMmqOJ1tmtgGJpOdsKvXcirTI621WfPgMZlVzZzhEuNsevffQQcJ3Xvxlq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102332_743510_4DB9BA75 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The prefix "DEVICE_" for Make variables is only used for per-device
variables with the only exception of DEVICE_TYPE. This is misleading
as it leads people to incorrectly assume it can be set per device like
all the other DEVICE_* variables, as has been observed in the past.

This renames this (rarely used) variable to clearly indicate that
it's not a device-dependent variable, and stays in line with the
DEFAULT_PACKAGES variable.

Note that there is also a (single) package in the packages feed that
needs to be updated.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 include/target.mk              | 4 ++--
 package/utils/busybox/Makefile | 2 +-
 target/linux/arc770/Makefile   | 2 +-
 target/linux/archs38/Makefile  | 2 +-
 target/linux/oxnas/Makefile    | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/target.mk b/include/target.mk
index a2ceb7f783..8374de2ebd 100644
--- a/include/target.mk
+++ b/include/target.mk
@@ -10,7 +10,7 @@ ifneq ($(__target_inc),1)
 __target_inc=1
 
 # default device type
-DEVICE_TYPE?=router
+DEFAULT_TYPE?=router
 
 # Default packages - the really basic set
 DEFAULT_PACKAGES:=base-files libc libgcc busybox dropbear mtd uci opkg netifd fstools uclient-fetch logd urandom-seed urngd
@@ -53,7 +53,7 @@ else
 endif
 
 # Add device specific packages (here below to allow device type set from subtarget)
-DEFAULT_PACKAGES += $(DEFAULT_PACKAGES.$(DEVICE_TYPE))
+DEFAULT_PACKAGES += $(DEFAULT_PACKAGES.$(DEFAULT_TYPE))
 
 filter_packages = $(filter-out -% $(patsubst -%,%,$(filter -%,$(1))),$(1))
 extra_packages = $(if $(filter wpad-mini wpad-basic wpad nas,$(1)),iwinfo)
diff --git a/package/utils/busybox/Makefile b/package/utils/busybox/Makefile
index 01441d1e87..81dde74d0b 100644
--- a/package/utils/busybox/Makefile
+++ b/package/utils/busybox/Makefile
@@ -94,7 +94,7 @@ endif
 define Build/Configure
 	rm -f $(PKG_BUILD_DIR)/.config
 	touch $(PKG_BUILD_DIR)/.config
-ifeq ($(DEVICE_TYPE),nas)
+ifeq ($(DEFAULT_TYPE),nas)
 	echo "CONFIG_HDPARM=y" >> $(PKG_BUILD_DIR)/.config
 endif
 	grep 'CONFIG_BUSYBOX_$(BUSYBOX_SYM)' $(TOPDIR)/.config | sed -e "s,\\(# \)\\?CONFIG_BUSYBOX_$(BUSYBOX_SYM)_\\(.*\\),\\1CONFIG_\\2,g" >> $(PKG_BUILD_DIR)/.config
diff --git a/target/linux/arc770/Makefile b/target/linux/arc770/Makefile
index 018d6e5448..d1f3e2dc82 100644
--- a/target/linux/arc770/Makefile
+++ b/target/linux/arc770/Makefile
@@ -13,7 +13,7 @@ SUBTARGETS:=generic
 
 KERNEL_PATCHVER:=4.14
 
-DEVICE_TYPE:=basic
+DEFAULT_TYPE:=basic
 
 define Target/Description
 	Synopsys DesignWare boards
diff --git a/target/linux/archs38/Makefile b/target/linux/archs38/Makefile
index 5b3650ef8d..891583b2d2 100644
--- a/target/linux/archs38/Makefile
+++ b/target/linux/archs38/Makefile
@@ -14,7 +14,7 @@ SUBTARGETS:=generic
 
 KERNEL_PATCHVER:=5.4
 
-DEVICE_TYPE:=basic
+DEFAULT_TYPE:=basic
 
 define Target/Description
 	Synopsys DesignWare boards
diff --git a/target/linux/oxnas/Makefile b/target/linux/oxnas/Makefile
index 750eddbcbb..10d05e914f 100644
--- a/target/linux/oxnas/Makefile
+++ b/target/linux/oxnas/Makefile
@@ -5,7 +5,7 @@ BOARD:=oxnas
 BOARDNAME:=PLXTECH/Oxford NAS782x/OX8xx
 SUBTARGETS:=ox810se ox820
 FEATURES:=gpio ramdisk rtc squashfs
-DEVICE_TYPE:=nas
+DEFAULT_TYPE:=nas
 
 KERNEL_PATCHVER:=5.4
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
