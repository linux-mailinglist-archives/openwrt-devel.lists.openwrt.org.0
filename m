Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC8510B1A7
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 15:51:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0srTxSnlFV76hi1mH/gbemKhOgPEPYSWsSqL/ZYx2lg=; b=Fsm+i1+md1ystR
	snZBmxuP/AJnO7IxBzGbivn1f7pNaXrLuqnMD4Xs7TwZ+EsNoicbM6yH/sNE7eVqYcirb7XlGpXju
	gYDC77hTmkQaZFvgZGcSCUYJfXtuB/N3t0oyif6/OTdz7lMDDA7d1wZlU3XGSh+yoSoeDZPHL+8WR
	J8wl8qHD6cXrSiGwjbzEN9AZm78apYde01VW9C6q7GkbtusPHBwsy3lkeP4Xgb4d16bh66w+IQy0p
	rKxs2Nc8MP1VgzRLP/1aVnZFBKDLu8CcSaeX65AC03jXpeapC2iT7bVVT8S6sv6ccM7y3rO/CyYF+
	SXqNyM1ct1E2GbypXQLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZyeo-0001hF-Ak; Wed, 27 Nov 2019 14:51:06 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyeg-0001gv-1b
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 14:50:59 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 22a8670d;
 Wed, 27 Nov 2019 13:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=hylHCXzPm7oKl0QS99Trab8gVkU=; b=H5HMBL7urnlYRDPQsWOr
 PjOyEXvPN5xr6JRFI1VKXZW1CrptRC1rLUcYvisug0hoEZa8bb5DmYR8/tbd468s
 OGVtTZ7u2Ev+A3Yypd2i6wmwLwO2BC3ct5Dk0S3iBYK1aAbcA7KZKSq4pnuKkRzB
 wckaR3igN6neiiKuYjmQYy42CFWD5Pue/jL/PfACBW+WiXm4dodhf+h7xkZseViz
 aWjR3Ji0medlP6rwAySXcdH+E9NXR21vvIfXeRIDeJKjCfWwqWhXwnQWBZir3mbQ
 +hoL/nfWKr+MdJ7rceqIZs4O9Jlb+THJd+piLarsGhzdViQ0zefLzEpXDkhSGQB1
 nw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id acf3e338
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 27 Nov 2019 13:57:00 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 27 Nov 2019 15:50:49 +0100
Message-Id: <20191127145049.988153-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_065058_304362_FEEADB8E 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20191127
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

* messages: recalculate rekey max based on a one minute flood
* allowedips: safely dereference rcu roots
* socket: remove redundant check of new4
* allowedips: avoid double lock in selftest error case
* tools: add syncconf command

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 87aad9d..ea34b75 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20191012
+PKG_VERSION:=0.0.20191127
 PKG_RELEASE:=1
 
 PKG_SOURCE:=WireGuard-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/WireGuard/snapshot/
-PKG_HASH:=93573193c9c1c22fde31eb1729ad428ca39da77a603a3d81561a9816ccecfa8e
+PKG_HASH:=7d4e80a6f84564d4826dd05da2b59e8d17645072c0345d0fc0d197be176c3d06
 
 PKG_LICENSE:=GPL-2.0 Apache-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
