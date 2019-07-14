Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E00FA67EDF
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 13:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T9WgPrnaIAvUqHo4bSpbVQ6yS9HGdv7AnXExqS55800=; b=cnyEh60A1EHQh1
	FZu7oM5/D7pTgnsQSv3AdZQBBFoJQueIeBIOZ8Hud5T94QWcZ7OTn9ER6kQtB4BtZpLubc3qkZ6t+
	96jr2zIFUM666St84G7fu2E3RhkQLAbvTfdt7nUiCTonwDHpJCwcSkESLLov1nIojdA7WdY0Pl1St
	blQ72EqUz/yFc87YRhHAnPoNSL6dt4GI6wSmUBGkkqeyeqqGjSP2b7vyIyzr8Man+VMdb0YvETKmU
	tYv7LeST1orkEMsLqwTFiQSRdILmc+duYRx2oApJnlInyrtNgmfz5P/Aia7Ixmlxq4KKr18qEUVev
	Wc0tzfvwEzHkoV70QnSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmctH-0001WU-Ms; Sun, 14 Jul 2019 11:42:03 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmct0-0001W3-8a
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 11:41:48 +0000
Received: by mail-lf1-x144.google.com with SMTP id q26so9164183lfc.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 04:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HTb7GF7zEw+HRXKmQH9nfyyN08aGwECXPJSAAIgfmiw=;
 b=VKIenwDZRX2a2EWIeDOlwoqbu2qNEWFgTRxvBP3FQDvdVMMCJKjREs2Sf1nnVytfMU
 fo9wksKTgflVIP4k0dfZQUv+0ru+gbsPtW7WAedQ0+jzist0bC+BxgzJHpaA8aAcFhbW
 zL1v57vHlW24m45qa1e3SVNif5iuNCHgtkAdY3XKUsCfd0Eb4zpL1f42wFZ770e1pGI+
 lLih2q9MSJ3NY175TGm/dgCzuep9gSUycclFg294rr8dYMMLpSnwehZIocS/xzIxZc2A
 dnwrNjuJbtbroUQ/EUjDxr0mFGChqqEZWWsnBD949qRo4VzRUOVRWcjvUFMC+KOKXGQJ
 P+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HTb7GF7zEw+HRXKmQH9nfyyN08aGwECXPJSAAIgfmiw=;
 b=iExlgVKS2Gk5Tl6U4XS7cfbZSalyt+X5RMtXm9zzJDB8eOVDhymG88eF4fE/olehi2
 P0JqtR6zA1D4y+fKDhQV0m0v+88gmYIGkr/rV/5XImdiF1GpbIwMAzaPviz5+aG+UsXR
 Ys1u/etGHdfsn5r8qpMtS6S/vAk+sCBFL2PYpz6rJQYccq+VGQDLszyR2mKrp/BbfZya
 PpzosONCoHb+aQK4IXnE9tsgkVxV6G02TsbP4YWsDNVscE4DAav12TNaS0DeVW3A3r8X
 HbZLEoNxCq9yeVu5e0EPooJW8VHPpRp+LnNptk2APvOzLd/JHGA15e06qiPvVOIv6WaD
 mHFQ==
X-Gm-Message-State: APjAAAXsEZUAj4/q6bFFM7+sPITL/CF5RR/GGuoTX3c06LK+CMbLeMCj
 QOzxDfSDXpZIBfxlTcO3gkAXx81u
X-Google-Smtp-Source: APXvYqwRDIy9lIPl30JrnoVORfxiCQVGQ1pR1KHuCNCRKUvDOo6LClgu4G82HyDXvu9y4ExcSUGnqw==
X-Received: by 2002:ac2:465e:: with SMTP id s30mr9150400lfo.19.1563104502542; 
 Sun, 14 Jul 2019 04:41:42 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan (155.51-175-192.customer.lyse.net.
 [51.175.192.155])
 by smtp.gmail.com with ESMTPSA id v86sm2509876lje.74.2019.07.14.04.41.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 04:41:41 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 14 Jul 2019 13:41:40 +0200
Message-Id: <20190714114140.18320-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_044146_334291_697ACE61 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] nftables: Update nftables & clean up
 dependencies
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
Cc: Rosen Penev <rosenp@gmail.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch does three things:

* Bumps nftables from 0.9.0 to 0.9.1 and remove a patch that was
accepted upstream.
* Cleans up the nftables-dependencies in netfilter.mk. All targets are
not at 4.14+, so there is no need to specify for example "ge 4.9.0" or
keep "lt 4.9.0" around.
* Fix building support for nftables sets. In 4.18 the configuration
symbol changed from CONFIG_NFT_SET_RBTREE and CONFIG_NFT_SET_HAS, to
CONFIG_NF_TABLES_SET.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 include/netfilter.mk                          | 17 ++++++-----
 package/network/utils/nftables/Makefile       |  4 +--
 .../nftables/patches/010-uclibc-ng.patch      | 28 -------------------
 3 files changed, 10 insertions(+), 39 deletions(-)
 delete mode 100644 package/network/utils/nftables/patches/010-uclibc-ng.patch

diff --git a/include/netfilter.mk b/include/netfilter.mk
index 179d4ed7b9..0ba9c10dca 100644
--- a/include/netfilter.mk
+++ b/include/netfilter.mk
@@ -337,12 +337,11 @@ $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NF_TABLES, $(P_XT)nf_tables
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NF_TABLES_INET, $(P_XT)nf_tables_inet, lt 4.17),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_EXTHDR, $(P_XT)nft_exthdr),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_META, $(P_XT)nft_meta),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_NUMGEN, $(P_XT)nft_numgen, ge 4.9.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_NUMGEN, $(P_XT)nft_numgen),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_CT, $(P_XT)nft_ct),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_SET_RBTREE, $(P_XT)nft_set_rbtree, ge 4.9.0),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_RBTREE, $(P_XT)nft_rbtree, lt 4.9.0),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_SET_HASH, $(P_XT)nft_set_hash, ge 4.9.0),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_HASH, $(P_XT)nft_hash, lt 4.9.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_SET_RBTREE, $(P_XT)nft_set_rbtree, le 4.17.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_SET_HASH, $(P_XT)nft_set_hash, le 4.17.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NF_TABLES_SET, $(P_XT)nf_tables_set, gt 4.17),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_COUNTER, $(P_XT)nft_counter),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_LOG, $(P_XT)nft_log),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_LIMIT, $(P_XT)nft_limit),))
@@ -352,8 +351,8 @@ $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NF_TABLES_IPV4, $(P_V4)nf_t
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_CHAIN_ROUTE_IPV4, $(P_V4)nft_chain_route_ipv4),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NF_TABLES_IPV6, $(P_V6)nf_tables_ipv6, lt 4.17),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_CHAIN_ROUTE_IPV6, $(P_V6)nft_chain_route_ipv6),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_REDIR, $(P_XT)nft_redir, ge 3.19.0),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_QUOTA, $(P_XT)nft_quota, ge 4.9.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_REDIR, $(P_XT)nft_redir),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_QUOTA, $(P_XT)nft_quota),))
 
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_ARP,CONFIG_NF_TABLES_ARP, $(P_V4)nf_tables_arp, lt 4.17),))
 
@@ -363,11 +362,11 @@ $(eval $(if $(NF_KMOD),$(call nf_add,NFT_BRIDGE,CONFIG_NFT_BRIDGE_REJECT, $(P_EB
 
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_NAT, $(P_XT)nft_nat),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_CHAIN_NAT_IPV4, $(P_V4)nft_chain_nat_ipv4),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_REDIR_IPV4, $(P_V4)nft_redir_ipv4, ge 3.19.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_REDIR_IPV4, $(P_V4)nft_redir_ipv4),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_MASQ, $(P_XT)nft_masq),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_MASQ_IPV4, $(P_V4)nft_masq_ipv4),))
 
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT6,CONFIG_NFT_REDIR_IPV6, $(P_V6)nft_redir_ipv6, ge 3.19.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT6,CONFIG_NFT_REDIR_IPV6, $(P_V6)nft_redir_ipv6),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT6,CONFIG_NFT_CHAIN_NAT_IPV6, $(P_V6)nft_chain_nat_ipv6),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT6,CONFIG_NFT_MASQ_IPV6, $(P_V6)nft_masq_ipv6),))
 
diff --git a/package/network/utils/nftables/Makefile b/package/network/utils/nftables/Makefile
index d4f91a2c89..0ffb2adc01 100644
--- a/package/network/utils/nftables/Makefile
+++ b/package/network/utils/nftables/Makefile
@@ -7,12 +7,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=nftables
-PKG_VERSION:=0.9.0
+PKG_VERSION:=0.9.1
 PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:=https://netfilter.org/projects/$(PKG_NAME)/files
-PKG_HASH:=ad8181b5fcb9ca572f444bed54018749588522ee97e4c21922648bb78d7e7e91
+PKG_HASH:=ead3bb68ed540bfbb87a96f2b69c3d65ab0c2a0c3f6e739a395c09377d1b4fce
 PKG_MAINTAINER:=Steven Barth <steven@midlink.org>
 PKG_LICENSE:=GPL-2.0
 
diff --git a/package/network/utils/nftables/patches/010-uclibc-ng.patch b/package/network/utils/nftables/patches/010-uclibc-ng.patch
deleted file mode 100644
index 760fde5186..0000000000
--- a/package/network/utils/nftables/patches/010-uclibc-ng.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From c65c4f9998587a0c705b3635215f25fa5680c0d3 Mon Sep 17 00:00:00 2001
-From: Rosen Penev <rosenp@gmail.com>
-Date: Fri, 3 May 2019 11:49:11 -0700
-Subject: gmputil: Add missing header for va_list
-
-Otherwise it errors with unknown type name when using uClibc.
-
-Signed-off-by: Rosen Penev <rosenp@gmail.com>
-Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
----
- include/gmputil.h | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/include/gmputil.h b/include/gmputil.h
-index 73959c17..ad63d67b 100644
---- a/include/gmputil.h
-+++ b/include/gmputil.h
-@@ -7,6 +7,7 @@
- #include <gmp.h>
- #else
- #include <mini-gmp.h>
-+#include <stdarg.h>
- #include <stdio.h>
- /* mini-gmp doesn't come with gmp_vfprintf, so we use our own minimal variant */
- extern int mpz_vfprintf(FILE *fp, const char *format, va_list args);
--- 
-cgit v1.2.1
-
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
