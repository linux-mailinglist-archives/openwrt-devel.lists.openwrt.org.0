Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F93313DEE6
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 16:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pXP/3iRuKHMV73fYCR35jBYBsKziXvRpFm+/Fl4N/ds=; b=XhXk4otBT/UxOT
	BVlsAEkjiYkB8/kmaWsIm3/xGYGKibs6BKTdlO8IxnX+W6ky+J8SoJbiQubB/bYrJzkgxXIwU7AZC
	BQfZ2tjekT5hb4Uauw6RgGtCDLbiMZ+od5+Ea85hqLGq1biNOtZoOK1y13fbjLa0wroK00XlApptc
	WMJ4/B+0JloMRvNwQbOpyfMu9c8jZrmsq+OxkQWc/qEASHfrsZW53OU9oEX3KpAmlJlURmC15+Qwq
	dymN+V/7XUrKlu8tKXuorR/SIRHVf6XyFv+/UJBMiqrPKKOegMojvpvtZq4PQ3gaO9PLXjeH89WJZ
	rEcQg06URaDrnXNtZF+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7CQ-0008WQ-AD; Thu, 16 Jan 2020 15:36:46 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7CB-0008UQ-5e
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 15:36:37 +0000
X-QQ-mid: bizesmtp26t1579188901t82ssb2f
Received: from P65xSA.lan (unknown [112.94.100.230])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 23:35:01 +0800 (CST)
X-QQ-SSF: 0140000000200060E3F0B00A0000000
X-QQ-FEAT: lRUSrEWtKQDezetfLuAa+jq98HhqpmLJR4esq1IWhsVDL4g/iwraW7m30ovds
 kBeuodN9RWzAaXrCti6QfQNtKZeZoKoO3lA8Pt3tfmEFCi9IHkce6G/PhHQ4SsfrwXhOc7x
 6e+djVQJDS/0CAGbiUTc4TyUAtttIHlw0/9MuI0oa8nXHiY4geN2UK18AX4mUIc1tQir3Gs
 7VcBJml4+agaIPB+YNm36yJY1JVR8ThDABxt6fhZRyQQO9pzfp3Mmled6oBUYbTRyRneoGS
 f58i4homCzxnXxjnA3kc01Jm16wZTAYk4v2PootqwcLhakeEkOhwvY4oly5JT8PNtEVSyZG
 Oy47BvWtmxCGHBjGRc=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 23:35:00 +0800
Message-Id: <20200116153500.7966-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_073631_335746_A4319A9C 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.243.244.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ccache: update to 3.7.7
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Update ccache to 3.7.7

Release notes:
https://ccache.dev/releasenotes.html#_ccache_3_7_7

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 tools/ccache/Makefile                       | 4 ++--
 tools/ccache/patches/100-honour-copts.patch | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/ccache/Makefile b/tools/ccache/Makefile
index 50a1a412a8..4e99207872 100644
--- a/tools/ccache/Makefile
+++ b/tools/ccache/Makefile
@@ -8,11 +8,11 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/target.mk
 
 PKG_NAME:=ccache
-PKG_VERSION:=3.7.6
+PKG_VERSION:=3.7.7
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://github.com/ccache/ccache/releases/download/v$(PKG_VERSION)
-PKG_HASH:=73e2633ac9bca387b5a39c72a8f85634670c4091dab639228c433898163c86c0
+PKG_HASH:=b7c1d6d6fe42f18e424de92746af863e0bc85794da3d69e44300840c478c98cd
 
 include $(INCLUDE_DIR)/host-build.mk
 
diff --git a/tools/ccache/patches/100-honour-copts.patch b/tools/ccache/patches/100-honour-copts.patch
index 97bacae2d2..a3cef56213 100644
--- a/tools/ccache/patches/100-honour-copts.patch
+++ b/tools/ccache/patches/100-honour-copts.patch
@@ -1,6 +1,6 @@
 --- a/src/ccache.c
 +++ b/src/ccache.c
-@@ -2224,6 +2224,7 @@ calculate_object_hash(struct args *args,
+@@ -2220,6 +2220,7 @@ calculate_object_hash(struct args *args,
  			"CPLUS_INCLUDE_PATH",
  			"OBJC_INCLUDE_PATH",
  			"OBJCPLUS_INCLUDE_PATH", // clang
-- 
2.24.1




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
