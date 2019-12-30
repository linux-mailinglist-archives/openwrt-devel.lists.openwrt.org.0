Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1F712CD1A
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 06:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T+/PUnFvT4nbjzF2qd9Clwj90FrQjE747OMV+DNrx4g=; b=NVimKT0lwrElLQ
	qOBWfg8pHXqH+MGgMczCGfQhH4tCxYnXrH9oyvDmTNqMREuqnA2SH8UE3jKBezKH3ozvq0kOFFZuM
	fyPP/vbiywRGV9r0/zG0zOunmTFuLBuquKgFdjoNHUa9hEWZKxhEfgDZQ+oS0dKjddCsvOadad5VS
	JI4uSmeZ7S3HKBcbX/N+C79enBGHk4BvNQymbAN18uJ2DcN7HgTxjAryFFhi/+Iqfl5npjP8y+UfV
	q4CyCRp2KcOG0qc9nAB/zdNohAqOXt9Pn0LiUCgREYXSZkkx5uwxek2hkr24MEEBE+oImqSSog9kl
	YTkzD0Ia14ue/8KGPoKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnxD-0006Db-7g; Mon, 30 Dec 2019 05:50:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnx2-0006DK-3S
 for openwrt-devel@bombadil.infradead.org; Mon, 30 Dec 2019 05:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ba1bxSWyWTARikB4ni4mMa9kvcZcVtxt9Adi4Bc/alI=; b=2vxv6ndSRMHP6zblEqgKOpd9Jo
 P3LrfQlHKH26S+nFOvqLkPvmquCIIpejxmgD6GIILs5vf/gZ5KZ6ehftxaBEVAT91xIaWga6p8P/R
 Dltt7ouStNdEZWeznVzH1+D5Nc6u7693NolJOIzg1C/hOqBq8DC2MBW/1zAmCyxmYQJtKRoz6xEGT
 Caz4Hktvo69tJilmTTNevVoPzPj/luKVwZJTuwv/daGSCzJStu6SrmFsE9s0ARHcqcbUsfpg2YuXa
 HdOyltTMAccPEAot2FaTOavbQXxDCy3Wp9gJKBWvqmPhG0+dNFu7qXvvzfgf0k4lGIXLerzlFTNFa
 P1Fibo2Q==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnwg-0004yM-CU
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 05:50:36 +0000
X-QQ-mid: bizesmtp20t1577684992twpdi271
Received: from P65xSA.lan (unknown [112.94.101.161])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 13:49:51 +0800 (CST)
X-QQ-SSF: 0140000000000060E2F0B00A0000000
X-QQ-FEAT: boruzj/uwqXgODpwM18Ki11mocw0pccHaT5hePt4DbJb+tgNvR0NxIx/Jzbzf
 seJxGcXHksVwOA6It4HLuVr+s1CHNSQXKc74B7qysysSI7T3ACyCGAFCo84k1Sqt1xR/2W2
 sVOVpokCr4DrqSiokIpcCGQoaGq83WAizHkXXeMbYxIbpyQ5vPxQzihSIU6njDJIMuZNrG0
 kiF8ep2DfDRHCKAc/5oHp9QKgH1D6GJWENlY2Pf613G3aS6thhFHF/L5gGu/ow1C9t+Vypu
 tq3PMHFhq0yP/incnXxobPww9GawiixrPxCHtPj6wDeOo4ABnVlXQ/SNf+jlQuOH0AId2fZ
 iq9L00F
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 13:49:51 +0800
Message-Id: <20191230054951.23621-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.206.16.166 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
Subject: [OpenWrt-Devel] [PATCH] iptables: update to 1.8.4
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

Update iptables to 1.8.4

ChangeLog:
  https://netfilter.org/projects/iptables/files/changes-iptables-1.8.4.txt

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 package/network/utils/iptables/Makefile              |  6 +++---
 .../utils/iptables/patches/600-shared-libext.patch   | 12 ++++++------
 .../patches/700-disable-legacy-revisions.patch       | 10 +++++-----
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/package/network/utils/iptables/Makefile b/package/network/utils/iptables/Makefile
index 7e8e6f7eaa..12efa94355 100644
--- a/package/network/utils/iptables/Makefile
+++ b/package/network/utils/iptables/Makefile
@@ -9,12 +9,12 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=iptables
-PKG_VERSION:=1.8.3
-PKG_RELEASE:=2
+PKG_VERSION:=1.8.4
+PKG_RELEASE:=1
 
 PKG_SOURCE_URL:=https://netfilter.org/projects/iptables/files
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
-PKG_HASH:=a23cac034181206b4545f4e7e730e76e08b5f3dd78771ba9645a6756de9cdd80
+PKG_HASH:=993a3a5490a544c2cbf2ef15cf7e7ed21af1845baf228318d5c36ef8827e157c
 
 PKG_FIXUP:=autoreconf
 PKG_FLAGS:=nonshared
diff --git a/package/network/utils/iptables/patches/600-shared-libext.patch b/package/network/utils/iptables/patches/600-shared-libext.patch
index f5c9c9d779..7b798b7fda 100644
--- a/package/network/utils/iptables/patches/600-shared-libext.patch
+++ b/package/network/utils/iptables/patches/600-shared-libext.patch
@@ -54,7 +54,7 @@
  initextb_func := $(addprefix ebt_,${pfb_build_static})
 --- a/iptables/Makefile.am
 +++ b/iptables/Makefile.am
-@@ -8,19 +8,22 @@ BUILT_SOURCES =
+@@ -7,19 +7,22 @@ BUILT_SOURCES =
  
  xtables_legacy_multi_SOURCES  = xtables-legacy-multi.c iptables-xml.c
  xtables_legacy_multi_CFLAGS   = ${AM_CFLAGS}
@@ -80,8 +80,8 @@
  endif
  xtables_legacy_multi_SOURCES += xshared.c iptables-restore.c iptables-save.c
  xtables_legacy_multi_LDADD   += ../libxtables/libxtables.la -lm
-@@ -30,7 +33,8 @@ if ENABLE_NFTABLES
- BUILT_SOURCES += xtables-config-parser.h
+@@ -28,7 +31,8 @@ xtables_legacy_multi_LDADD   += ../libxt
+ if ENABLE_NFTABLES
  xtables_nft_multi_SOURCES  = xtables-nft-multi.c iptables-xml.c
  xtables_nft_multi_CFLAGS   = ${AM_CFLAGS}
 -xtables_nft_multi_LDADD    = ../extensions/libext.a ../extensions/libext_ebt.a
@@ -90,13 +90,13 @@
  if ENABLE_STATIC
  xtables_nft_multi_CFLAGS  += -DALL_INCLUSIVE
  endif
-@@ -45,7 +49,8 @@ xtables_nft_multi_SOURCES += xtables-sav
+@@ -42,7 +46,8 @@ xtables_nft_multi_SOURCES += xtables-sav
  				xtables-eb-standalone.c xtables-eb.c \
  				xtables-eb-translate.c \
  				xtables-translate.c
 -xtables_nft_multi_LDADD   += ${libmnl_LIBS} ${libnftnl_LIBS} ${libnetfilter_conntrack_LIBS} ../extensions/libext4.a ../extensions/libext6.a ../extensions/libext_ebt.a ../extensions/libext_arpt.a
 +xtables_nft_multi_LDADD   += ${libmnl_LIBS} ${libnftnl_LIBS} ${libnetfilter_conntrack_LIBS}
 +xtables_nft_multi_LDFLAGS += -liptext4 -liptext6 -liptext_arpt
- # yacc and lex generate dirty code
- xtables_nft_multi-xtables-config-parser.o xtables_nft_multi-xtables-config-syntax.o: AM_CFLAGS += -Wno-missing-prototypes -Wno-missing-declarations -Wno-implicit-function-declaration -Wno-nested-externs -Wno-undef -Wno-redundant-decls
  xtables_nft_multi_SOURCES += xshared.c
+ xtables_nft_multi_LDADD   += ../libxtables/libxtables.la -lm
+ endif
diff --git a/package/network/utils/iptables/patches/700-disable-legacy-revisions.patch b/package/network/utils/iptables/patches/700-disable-legacy-revisions.patch
index 328f3af18d..86715fc8e7 100644
--- a/package/network/utils/iptables/patches/700-disable-legacy-revisions.patch
+++ b/package/network/utils/iptables/patches/700-disable-legacy-revisions.patch
@@ -1,6 +1,6 @@
 --- a/extensions/libxt_conntrack.c
 +++ b/extensions/libxt_conntrack.c
-@@ -1389,6 +1389,7 @@ static int conntrack3_mt6_xlate(struct x
+@@ -1387,6 +1387,7 @@ static int conntrack3_mt6_xlate(struct x
  }
  
  static struct xtables_match conntrack_mt_reg[] = {
@@ -8,7 +8,7 @@
  	{
  		.version       = XTABLES_VERSION,
  		.name          = "conntrack",
-@@ -1464,6 +1465,7 @@ static struct xtables_match conntrack_mt
+@@ -1462,6 +1463,7 @@ static struct xtables_match conntrack_mt
  		.alias	       = conntrack_print_name_alias,
  		.x6_options    = conntrack2_mt_opts,
  	},
@@ -16,7 +16,7 @@
  	{
  		.version       = XTABLES_VERSION,
  		.name          = "conntrack",
-@@ -1496,6 +1498,7 @@ static struct xtables_match conntrack_mt
+@@ -1494,6 +1496,7 @@ static struct xtables_match conntrack_mt
  		.x6_options    = conntrack3_mt_opts,
  		.xlate	       = conntrack3_mt6_xlate,
  	},
@@ -24,7 +24,7 @@
  	{
  		.family        = NFPROTO_UNSPEC,
  		.name          = "state",
-@@ -1526,6 +1529,8 @@ static struct xtables_match conntrack_mt
+@@ -1524,6 +1527,8 @@ static struct xtables_match conntrack_mt
  		.x6_parse      = state_ct23_parse,
  		.x6_options    = state_opts,
  	},
@@ -33,7 +33,7 @@
  	{
  		.family        = NFPROTO_UNSPEC,
  		.name          = "state",
-@@ -1555,6 +1560,7 @@ static struct xtables_match conntrack_mt
+@@ -1553,6 +1558,7 @@ static struct xtables_match conntrack_mt
  		.x6_parse      = state_parse,
  		.x6_options    = state_opts,
  	},
-- 
2.24.1





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
