Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB9510BC8
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ENjMgB+aXFxDO58+naEo1IcONaWUa6m/dwjevMILUQ=; b=KIzwsEbPymGvZX
	IbE0gjFr74DVHOvqSoW14/pcfSkovX719EvdPhLnpT4cNKN6oz8ila1WiGH4+BQfzOz8MlhxSYjqw
	34Nzz9bUPWi/asZsJAMvx0DQ/axI2u4qg1UMmvzq3rVVHWn0Fyr+J7Zw3ip0i3BnlXvlcBXH6bJ/Y
	lECZXFbHpfvCnM4OrJzXyK3X0JiCLLWLedIeQ2nygsIqHKt5X1mvWxNLZi3r7HHfvGqPeKNZd3l0v
	OuFxs4msPRlptM46chCYwD43AllCzWXNOI3Ky8U0vrP/J7urK9HfPwFC2AmWKjfrXx8TEW2O5qbQL
	f1qrMTha8D+095VLjM8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsiU-00038f-0A; Wed, 01 May 2019 17:08:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsiM-00038N-52
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:08:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id z28so3568664pfk.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 May 2019 10:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=sgU6kP3lXJ9QNo0kAIdw2pWG8PSWXofhOc+uStwULaE=;
 b=C21kk0wYsSN2Gzh19AKRNf6ksqBR2JpDKLrhpl6I4I8qvvNCUjKJr9lQD7sGDguz4P
 uDTJcDVGVS1bRHebCgIyRuBCbpC9jXQkG1t4BZMGuOJ4FaoyH50SpYr87MkI3qlL1aLL
 KNBKczf4mcBSoEt3To8gB3vrktH/H0Cnox9dENlDu8HyBKgsmSBRWr5gANv8Bfwyssdw
 Bi1qUYCNAAZgFECWfDsomHWwKdVbJ7g6mozTcsqfeUlYBn71x4QydTS4D2XR0qc7Lpn0
 hvVFsR3rfxB9DrLmGG0qtLzxJsK5Ir8iYBdTEadAvD3lHy5TLmHE2D/uJt05bk0c2UCD
 bS6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=sgU6kP3lXJ9QNo0kAIdw2pWG8PSWXofhOc+uStwULaE=;
 b=OlbGPrSsmgmRRkwcV4saU7TI1i9OOJ9TbJQfLxeyqzIo1870RDueGCVIoKa1c1PYLj
 M1yUR/o46doahYCMxo4TXipdqY3902n2axqsaNT58IHfx2WaVVV1JdjxDEPwvPn1iMdg
 hdXAPabc3CtN/Azwxtv2uAXe+eS88kCnJ0VDSyqYX399EpfHkqnzeXlQUAJ8J8M4Jsys
 oq/J3CWa32+4h0WXO0O6DmO0MLVttiOFv/wNzGMbD6u138PtunmNWvevgqNsEUaXYr5F
 h4RzbpU8EfB97RHVENanXu0v0YUVwjymXnJbzE4Q+g+MPMIXT1bKFef79kxyZM9d8ySA
 s2Bg==
X-Gm-Message-State: APjAAAU72BgOOszhzO4nUo+adCpLxlPP+NoMUKfyEmpAoPkBuahjlJnZ
 pAxT9WNwStr0usHokI+2LZHi0zpvJSE=
X-Google-Smtp-Source: APXvYqwT3Q0SSwidHC2De9xZFaMmR8hDDgQycX7kSAvBy62zvLhYmcbdKNcrOTJ3c8HEL3Cx/0Rvhw==
X-Received: by 2002:aa7:8b8b:: with SMTP id r11mr49054362pfd.130.1556730492671; 
 Wed, 01 May 2019 10:08:12 -0700 (PDT)
Received: from mangix-pc.lan (76-14-106-140.rk.wavecable.com. [76.14.106.140])
 by smtp.gmail.com with ESMTPSA id
 g13sm13183888pgr.63.2019.05.01.10.08.11
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 10:08:11 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 10:08:10 -0700
Message-Id: <20190501170810.5230-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_100814_197963_4581C243 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] nftables: Fix compilation with uClibc-ng
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Missing header for va_list.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 https://downloads.openwrt.org/snapshots/faillogs/arc_arc700/base/nftables/compile.txt
 actually shows the exact same change.
 package/network/utils/nftables/Makefile                |  2 +-
 .../network/utils/nftables/patches/010-uclibc-ng.patch | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)
 create mode 100644 package/network/utils/nftables/patches/010-uclibc-ng.patch

diff --git a/package/network/utils/nftables/Makefile b/package/network/utils/nftables/Makefile
index d1e995116d..d4f91a2c89 100644
--- a/package/network/utils/nftables/Makefile
+++ b/package/network/utils/nftables/Makefile
@@ -8,7 +8,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=nftables
 PKG_VERSION:=0.9.0
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:=https://netfilter.org/projects/$(PKG_NAME)/files
diff --git a/package/network/utils/nftables/patches/010-uclibc-ng.patch b/package/network/utils/nftables/patches/010-uclibc-ng.patch
new file mode 100644
index 0000000000..4de1d1c324
--- /dev/null
+++ b/package/network/utils/nftables/patches/010-uclibc-ng.patch
@@ -0,0 +1,10 @@
+--- a/include/gmputil.h
++++ b/include/gmputil.h
+@@ -7,6 +7,7 @@
+ #include <gmp.h>
+ #else
+ #include <mini-gmp.h>
++#include <stdarg.h>
+ #include <stdio.h>
+ /* mini-gmp doesn't come with gmp_vfprintf, so we use our own minimal variant */
+ extern int mpz_vfprintf(FILE *fp, const char *format, va_list args);
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
