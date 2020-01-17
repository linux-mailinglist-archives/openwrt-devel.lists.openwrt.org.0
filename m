Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F1B14102F
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 18:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7g4rz2jKnYOxy7zdP4Bl2Yhb0JFZLOzTDqf/3VKi24w=; b=TIGx6pK8/ibDAJ
	KYaEmvi4TAoNM6hDXaWs358Tdc28VB1O1x5+Km304Eg1K3hH6Ns8cqVozKZ2eaqQrR7j/1O3+oECZ
	2EHxpllQkg86qVDFwcGdczNKvXWOKTt9Iw/D+zB2QC0jyzxiB9gO5cYKWRyT4eWcfaF5ziiE8ofzf
	y34OZ8ZpTEJPsg+mAYskPg/UHjjQk9te4rzYlmxn121Lhwda1yQD5ReSB3D5i5usfgAf6muExgvKM
	Sc5PHYbugVwCJ4OamD/CZ8tjFkuUMnwxr4dlfcy6RXx/qTROugbtyRlqvbixuEI8oatKCeHxDDQL3
	2EwuBMOUrELl1Ga/EIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isVj1-0000hN-58; Fri, 17 Jan 2020 17:48:03 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isVir-0000gy-93
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 17:47:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 09:47:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,331,1574150400"; d="scan'208";a="426065666"
Received: from pon-swdev1.imu.intel.com ([10.91.128.250])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jan 2020 09:47:50 -0800
From: Hauke Mehrtens <hauke.mehrtens@intel.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 Jan 2020 18:47:33 +0100
Message-Id: <20200117174733.11695-1-hauke.mehrtens@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_094753_331469_7C65FEA3 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] build: Add KBUILD_HOSTLDLIBS
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
Cc: hauke@hauke-m.de, Hauke Mehrtens <hauke.mehrtens@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In Linux kernel commit 8377bd2b9ee1 ("kbuild: Rename HOST_LOADLIBES to
KBUILD_HOSTLDLIBS") HOST_LOADLIBES was renamed to KBUILD_HOSTLDLIBS.
This patch adapts the OpenWrt kernel build to this new variable. Without
this change the kernel host tools would not link against the libraries
found in the staging directory.

Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
---
 include/kernel.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/kernel.mk b/include/kernel.mk
index 38331768ed..b1b1e9e9c8 100644
--- a/include/kernel.mk
+++ b/include/kernel.mk
@@ -114,6 +114,7 @@ KERNEL_MAKE_FLAGS = \
 	KBUILD_BUILD_TIMESTAMP="$(KBUILD_BUILD_TIMESTAMP)" \
 	KBUILD_BUILD_VERSION="0" \
 	HOST_LOADLIBES="-L$(STAGING_DIR_HOST)/lib" \
+	KBUILD_HOSTLDLIBS="-L$(STAGING_DIR_HOST)/lib" \
 	CONFIG_SHELL="$(BASH)" \
 	$(if $(findstring c,$(OPENWRT_VERBOSE)),V=1,V='') \
 	$(if $(PKG_BUILD_ID),LDFLAGS_MODULE=--build-id=0x$(PKG_BUILD_ID)) \
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
