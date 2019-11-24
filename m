Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDF010834A
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 Nov 2019 13:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jviQwhJhmxeS1nFHz8V3p67hvED41yjIgoTic39fEP8=; b=vAvTQDFet4rf2B
	fcsRcBwGZRMwCFR+npIvGP3m/ssHMn1DPcxP0pRG96uAHqe3ZvIRi3SQre4R3EdayOuO7R84J9olJ
	O0iMP/LwioFV0bd2LFK1zo7gpWmH5nGpsCjuwH6oHzY8/LJhnkUqHGiiPXzm5+FMBpB2rmEMzgrTM
	xPe8wm+NxGFHvu0XE/zdhmXaxSevvRIPpuF/I9aKf3wBY+qv12CUAiIfOuPyrVsaylD/5H3TOKKZp
	PEfok9cNrVhNDeOpaDAL45dRQ4QduUunVJQCG7B6kkY8wksVwkRHnKUCHVRwrf2pWTaR4EMo3VFSx
	CPMJtd+XaWipElkfmpPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYr16-0006Ln-LM; Sun, 24 Nov 2019 12:29:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYr0z-0006Ld-LH
 for openwrt-devel@bombadil.infradead.org; Sun, 24 Nov 2019 12:29:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kWXZ556zqy44NBjFg+ZLzGseDzo1MZfKs9d/pbXLCLE=; b=Vyt9Mbm+HzTEotiP74WWVCN/ew
 PsvCcZd422Ls+CyOiEZjaWLPQxbcyn2MVnaI3T2MirJGWiSp9ejG+xsQnJ6Phu29aYDPG3mRSb6wd
 gM8o9yjuY07VU5Ib6KtmE9RW/WT6Yim8TujEymB7au1H6s5L0oCZOa03Z0B0jmWBSLov7XsYnSvlL
 CQHoJvCMSYyg0Gx3jDQZZVl2h7dlJud8w572bXInmGhSd9Du2a3eNozBA0vkefVPJ0jMswot/YM96
 Bnlh9Gc5p0uXbZusaRrR66/i5WWd/A0VvxQWjYq6Ie7lBb5BmVLCFgNa+cd2ERbyBCmoJ8soZChAv
 NtD3CLIA==;
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYr0r-0000CG-56
 for openwrt-devel@lists.openwrt.org; Sun, 24 Nov 2019 12:29:16 +0000
X-QQ-mid: bizesmtp18t1574598475tfvwfwbb
Received: from example.com (unknown [112.19.108.59])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Sun, 24 Nov 2019 20:27:54 +0800 (CST)
X-QQ-SSF: 0120000000200050E142B00B0000000
X-QQ-FEAT: G+i3tiPQOk6cNtfkCUT9CA0JsPz7FtQU9ZLc8JUZI96BL2NXpWm80Xu62IQMp
 7ICMBiGk5BHWH+ZHwyYk43ChQvQPgsmSfv/+cNjjB481k1Tq5ruREBWDxHeEOA/xqe+clzt
 Huk3Fxg66ySQ4HMFC9vh0DUmZLhWZBVmy+vyYt3XovwimlVZyz9F0jYoV+yAFC70t0xvmDG
 kEmT66O4jSEYOcmQN5fu6NrtEFET6MDOIRSScGsrPomr0+0X+fHWBNKM3tQAe46eLScOpWd
 ABaAuYp+xmbnyI54cBEvTlcY1CPL7yVa/geXNKhC7soCp/LMQ5LN/NeH5pUq+gwB4oiBgIw
 q6OX8rT
X-QQ-GoodBg: 0
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 24 Nov 2019 20:27:53 +0800
Message-Id: <20191124122753.6180-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ccache: update to 3.7.6
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

Update ccache to 3.7.6

Release notes:
https://ccache.dev/releasenotes.html#_ccache_3_7_6

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 tools/ccache/Makefile                       | 4 ++--
 tools/ccache/patches/100-honour-copts.patch | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/ccache/Makefile b/tools/ccache/Makefile
index a29474c02b..50a1a412a8 100644
--- a/tools/ccache/Makefile
+++ b/tools/ccache/Makefile
@@ -8,11 +8,11 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/target.mk
 
 PKG_NAME:=ccache
-PKG_VERSION:=3.7.4
+PKG_VERSION:=3.7.6
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://github.com/ccache/ccache/releases/download/v$(PKG_VERSION)
-PKG_HASH:=04c0af414b8cf89e541daed59735547fbfd323b1aaa983da0216f6b6731e6836
+PKG_HASH:=73e2633ac9bca387b5a39c72a8f85634670c4091dab639228c433898163c86c0
 
 include $(INCLUDE_DIR)/host-build.mk
 
diff --git a/tools/ccache/patches/100-honour-copts.patch b/tools/ccache/patches/100-honour-copts.patch
index 6eda3443d3..97bacae2d2 100644
--- a/tools/ccache/patches/100-honour-copts.patch
+++ b/tools/ccache/patches/100-honour-copts.patch
@@ -1,6 +1,6 @@
 --- a/src/ccache.c
 +++ b/src/ccache.c
-@@ -2197,6 +2197,7 @@ calculate_object_hash(struct args *args,
+@@ -2224,6 +2224,7 @@ calculate_object_hash(struct args *args,
  			"CPLUS_INCLUDE_PATH",
  			"OBJC_INCLUDE_PATH",
  			"OBJCPLUS_INCLUDE_PATH", // clang
-- 
2.24.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
