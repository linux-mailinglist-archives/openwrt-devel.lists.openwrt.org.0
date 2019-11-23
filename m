Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDC610803E
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 Nov 2019 21:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sZ+Dl/56j8xluETPOBTCeL/XC1W0DX2z+wkAKHmSYYk=; b=cosvNP1AIRzg7C
	lAuG/ScwyGi1DTG6vTZrnSvA8Vd8QdkrqXFV6b5vq81Gy0joEklLs3FTQYrjAUQuhIE4M8tDec7Dx
	4IKRrK2yG+Cu/BtUVnRTeMXDM/wZJImj7EZL2OdtWc+cki8o9+F33xvgGQ41TdT77/pcsEXnJdq9r
	1xpiXEOgGQTWphMbhSA4pJcL6Eqq4UnZB+pOKY2hZ5AAfH257v7sRXT8HxHAUb6KW+eEsCmg8hR+e
	1eXZMAxZy1hPkqVvgEC2d6S6vXRnbexqulfEX7Cjo51FbmkVPjRrYChQaV6ZJALcgDsOZRZWw/t8m
	/sZ9J02DjEs7Uu4uwXBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYbit-0002Z4-WE; Sat, 23 Nov 2019 20:09:40 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYbij-0002Yf-Ss
 for openwrt-devel@lists.openwrt.org; Sat, 23 Nov 2019 20:09:32 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F2FD500853DC40395BBEF91.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f2f:d500:853d:c403:95bb:ef91])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 7645B1FA94
 for <openwrt-devel@lists.openwrt.org>; Sat, 23 Nov 2019 21:09:23 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 Nov 2019 21:09:20 +0100
Message-Id: <20191123200920.290078-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_120930_078113_DEDEE821 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] tools/expat: change package source to GitHub
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

According to the SourceForge page, the project is migrating to GitHub.
Thus, change the source of the package to GitHub.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 tools/expat/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/expat/Makefile b/tools/expat/Makefile
index de7f2a0deb..f29264ea68 100644
--- a/tools/expat/Makefile
+++ b/tools/expat/Makefile
@@ -13,7 +13,7 @@ PKG_VERSION:=2.2.9
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_HASH:=f1063084dc4302a427dabcca499c8312b3a32a29b7d2506653ecc8f950a9a237
-PKG_SOURCE_URL:=@SF/expat
+PKG_SOURCE_URL:=https://github.com/libexpat/libexpat/releases/download/R_$(subst .,_,$(PKG_VERSION))
 
 HOST_BUILD_PARALLEL:=1
 
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
