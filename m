Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0921871ADF
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 16:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeUeVZgsMrLWD36CR0o5DcZxdTi4aqUsrIPufwy4v9I=; b=RTQIfP9TeD+zu1
	4/w1jd5l+K6YB0EHHhuo2juYTXQiBBxzsSvhD45ItbPiAc0Pcg/c225hFM+guirzYj7xg4owCzWSv
	cEIMvpd3qqGeKzwuNwunvYb3/Y4c9A1Mcw+VsbYdrfCPQ1+JuDg9MYMHeEhNv5ws0YF16ft4TQDUA
	0SDm2Vs2eoaUZdlTbw7z724abnUbUjrQcSktTIX5Kn7PKaoJhYsmLce+553YPIoMRdoSdp8CnliZ6
	RbMl9Pl4aEa8sdnUwEZQf/LlYWAa/KHjsg3mMGYXKxM4HPqrduOvZR4qXIldhUEzDhCu3R2MZ8kWQ
	Hd0mtTO8mslkosqhxtDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwBB-0004gk-B6; Tue, 23 Jul 2019 14:54:13 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwAw-0004gF-Tw
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 14:54:00 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 07:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="193091270"
Received: from mucrsb0001.imu.intel.com ([10.62.163.96])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jul 2019 07:53:57 -0700
From: Hauke Mehrtens <hauke.mehrtens@intel.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 23 Jul 2019 16:53:51 +0200
Message-Id: <20190723145351.9023-1-hauke.mehrtens@intel.com>
X-Mailer: git-send-email 2.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_075359_180993_F04535F8 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] toolchain: fix gcc depends on kernel headers
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
Cc: Hauke Mehrtens <hauke.mehrtens@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

GCC needs the kernel headers to compile.
Some GCC file includes asm/unistd.h which is provided by the kernel headers.
Normally the kernel headers build is very fast and ready before the gcc uses
it, but if it clones the kernel from a slow git repository it takes longer
and then it could be that the gcc already wants to use the kernel headers
before they are available. This patch fixes this problem by adding the
missing dependency.

Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
---
 toolchain/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/toolchain/Makefile b/toolchain/Makefile
index 0336b2f..23a5529 100644
--- a/toolchain/Makefile
+++ b/toolchain/Makefile
@@ -49,7 +49,7 @@ ifeq ($(CONFIG_EXTERNAL_TOOLCHAIN),)
 
   $(curdir)/gcc/initial/compile+=$(curdir)/binutils/compile
   $(curdir)/$(LIBC)/compile:=$(curdir)/gcc/initial/compile
-  $(curdir)/gcc/final/compile:=$(curdir)/$(LIBC)/compile
+  $(curdir)/gcc/final/compile:=$(curdir)/$(LIBC)/compile $(curdir)/kernel-headers/compile
   $(curdir)/$(LIBC)/utils/compile:=$(curdir)/gcc/final/compile
 endif
 
-- 
2.10.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
