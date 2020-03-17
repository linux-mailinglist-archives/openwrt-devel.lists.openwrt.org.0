Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA9618877D
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 15:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AW69lAjQKV514zayepYbdt57+dDmMQdIf66dUZOrodY=; b=kX9GD3S702L9hu
	We1oujuv4L1P8Xi3JCYcEuOQrYj9XdBIgo0h0dQIS+toscrl9JwuCiQ0hTsv2/y6yNKrAr0mvImuZ
	/54iOxqP9/QQHv62pAFhX0QZulH74NKVyY4mez+qxYtI5M/oR2jEtHQZEQjbhS4XfX6rAxeQKh40O
	k2Rew4jiFXOiFSk1dN7ffUaw8BBTJipayHV1VBGgsoBSucBT9BD8iUcj0c6yXWrliakOEQv21Mb9G
	HdFcWZ6fhuWCLz1SHodYi0FY5901gjrPsarrU3bD/XZe1mAl5CQ+nScdZKfI+nWv6cv860Fn9Fns7
	+cThbR5ZJqW5+gw7lfyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDBo-00085t-PJ; Tue, 17 Mar 2020 14:27:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDBi-00085V-G6
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 14:27:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id y30so11817446pga.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Mar 2020 07:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bq/S5fW/SoODdkyJ7QDWRrrphwAHsHHb5LfARbI32Q8=;
 b=YqSvT+hruWSYMSIsinSOTWMM1F5mN5qSL8mthmsMDW0SXrOz+FbFvLtXmlNZ2ca4ll
 oAlLFt+5oIfH7XuzYyvyiM9HZ+Srao8jMvBCU8JSf/Y3qZEFXwI7Lym1B8+Vlzpphpiu
 pfrKAEJqOSaMz6T/BrlYHTlezGivs/SxlWsV99WN6gAVs/eRnZGwg/S2NHbx+WBbTOQn
 ZjVkVgNPhadeIRVt8Ya+17BbTSSqwSaRv5mrKCO2RVbiG5KgqEuQ+UJENQAGS5cMa1oE
 r30eG+KARtNzcB4P3/IERIqNl4JgPzPiZP/VDXmLOPi9LJo5hbZAgR4KKL0UmnsxRelo
 LK/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bq/S5fW/SoODdkyJ7QDWRrrphwAHsHHb5LfARbI32Q8=;
 b=HeyUlA59O+ZMrap85OlgQENLz/xAeRqYlboECHBo/NfVbTK/tpVxDQSpZztMq1IDG3
 2Mj3Wze1BxUc0o8QETkiwjNkQL41Z858W7KSE5sTgn18E+DJETNdsAP3hdshtsLvwz7p
 iDJRddvadMdHcQ2zSWlfHJOQYtM9rVDg3htdhIguxCZXZoAr43EW6jgyWNxr/XlVCPoy
 6kwjxbL41sZvDop4S2exXv0330Ev0HGfp3Mj4Yh8yEPnhW8wOuThxn7WyQbaNvqxWXho
 mOZ93jCfXNtJerpF4TkUtFHSrHi/AaaUNkKgcIjeSh1RqPnb+lK+yrO/CpzMS2XgToW2
 rU6g==
X-Gm-Message-State: ANhLgQ1OZGGH9uwaA7JX6bHDGvhSGTjuxF4cee+XYWis1JYUsnEyjCrm
 YCvK0uTY3GL82OvDL1HCkY/l6sx0
X-Google-Smtp-Source: ADFU+vtc5Lg5S9Wad5kaBoT6tjan1z1Fvo62aimjWfgAb2cl3W18P+ymPJLOUVTR2K1YqIuMu7/1bg==
X-Received: by 2002:a63:4e22:: with SMTP id c34mr5556972pgb.263.1584455241007; 
 Tue, 17 Mar 2020 07:27:21 -0700 (PDT)
Received: from computer.lan (119246229239.ctinets.com. [119.246.229.239])
 by smtp.gmail.com with ESMTPSA id r29sm2948072pgm.17.2020.03.17.07.27.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 07:27:20 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Mar 2020 22:27:13 +0800
Message-Id: <20200317142713.13667-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_072722_561691_C0060168 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jeffery.to[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] cryptodev-linux: Fix error when compiling
 with 5.4 kernel
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

Currently, cryptodev-linux fails to compile with a
'"crypto_givcipher_type" undefined' error for targets on the 5.4 kernel,
e.g. armvirt[1].

This backports an upstream patch[2] that fixes this error.

[1]: https://downloads.openwrt.org/snapshots/faillogs/aarch64_generic/base/cryptodev-linux/compile.txt
[2]: https://github.com/cryptodev-linux/cryptodev-linux/commit/f971e0cd4a0ebe59fb2e8e17240399bf6901b09b

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 package/kernel/cryptodev-linux/Makefile       |  2 +-
 ...x-module-loading-with-Linux-v5.0-rc5.patch | 50 +++++++++++++++++++
 2 files changed, 51 insertions(+), 1 deletion(-)
 create mode 100644 package/kernel/cryptodev-linux/patches/010-Fix-module-loading-with-Linux-v5.0-rc5.patch

diff --git a/package/kernel/cryptodev-linux/Makefile b/package/kernel/cryptodev-linux/Makefile
index da18c714b0..9bea63ebd1 100644
--- a/package/kernel/cryptodev-linux/Makefile
+++ b/package/kernel/cryptodev-linux/Makefile
@@ -11,7 +11,7 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=cryptodev-linux
 PKG_VERSION:=1.10
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE_URL:=https://codeload.github.com/$(PKG_NAME)/$(PKG_NAME)/tar.gz/$(PKG_NAME)-$(PKG_VERSION)?
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
diff --git a/package/kernel/cryptodev-linux/patches/010-Fix-module-loading-with-Linux-v5.0-rc5.patch b/package/kernel/cryptodev-linux/patches/010-Fix-module-loading-with-Linux-v5.0-rc5.patch
new file mode 100644
index 0000000000..5909f6dfb3
--- /dev/null
+++ b/package/kernel/cryptodev-linux/patches/010-Fix-module-loading-with-Linux-v5.0-rc5.patch
@@ -0,0 +1,50 @@
+From f971e0cd4a0ebe59fb2e8e17240399bf6901b09b Mon Sep 17 00:00:00 2001
+From: "Derald D. Woods" <woods.technical@gmail.com>
+Date: Sun, 10 Feb 2019 13:22:19 -0600
+Subject: [PATCH] Fix module loading with Linux v5.0-rc5
+
+This commit fixes this module load error:
+[...]
+[   29.112091] cryptodev: loading out-of-tree module taints kernel.
+[   29.128906] cryptodev: Unknown symbol crypto_givcipher_type (err -2)
+[   29.188842] cryptodev: Unknown symbol crypto_givcipher_type (err -2)
+modprobe: can't load module cryptodev (extra/cryptodev.ko): unknown symbol in module, or unknown parameter
+[...]
+
+Upstream Linux support for unused GIVCIPHER, and others, was dropped here:
+
+c79b411eaa72 (crypto: skcipher - remove remnants of internal IV generators)
+
+Signed-off-by: Derald D. Woods <woods.technical@gmail.com>
+---
+ cryptlib.c | 9 +++++++--
+ 1 file changed, 7 insertions(+), 2 deletions(-)
+
+diff --git a/cryptlib.c b/cryptlib.c
+index 6e66698..4a87037 100644
+--- a/cryptlib.c
++++ b/cryptlib.c
+@@ -38,7 +38,9 @@
+ #include "cryptodev_int.h"
+ #include "cipherapi.h"
+ 
++#if (LINUX_VERSION_CODE < KERNEL_VERSION(5, 0, 0))
+ extern const struct crypto_type crypto_givcipher_type;
++#endif
+ 
+ static void cryptodev_complete(struct crypto_async_request *req, int err)
+ {
+@@ -157,8 +159,11 @@ int cryptodev_cipher_init(struct cipher_data *out, const char *alg_name,
+ 
+ #if (LINUX_VERSION_CODE >= KERNEL_VERSION(4, 8, 0))
+ 		tfm = crypto_skcipher_tfm(out->async.s);
+-		if ((tfm->__crt_alg->cra_type == &crypto_ablkcipher_type) ||
+-		    (tfm->__crt_alg->cra_type == &crypto_givcipher_type)) {
++		if ((tfm->__crt_alg->cra_type == &crypto_ablkcipher_type)
++#if (LINUX_VERSION_CODE < KERNEL_VERSION(5, 0, 0))
++		    || (tfm->__crt_alg->cra_type == &crypto_givcipher_type)
++#endif
++							) {
+ 			struct ablkcipher_alg *alg;
+ 
+ 			alg = &tfm->__crt_alg->cra_ablkcipher;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
