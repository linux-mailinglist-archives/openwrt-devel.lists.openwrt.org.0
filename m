Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2D177F06
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Jul 2019 12:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uV3gw7X+tpiU09jJqUt+BMPHpKZgRZJKv5WxZIBVfN4=; b=LLt7YLqFOxOVie
	16FY0S944daJFNbeaUE6mCeTiIqgfhxFcHkPPQrDn0I5ngk6jxD5NGzCiHb9/pONHKz6x5//FAxUU
	5abNfGxJUaJgDZOCPIvuJA/DgveVQS1AYwgxF+go/UBeZqmMWYc6gS6eGvf5+pq9a3MwaXtCJwz/z
	SnXgPqUbI25wDRoYq799l1CP7vSoNUSgVJcMVuOxTuJCyoyTi1OsuPkSAqWs+Ge8cr/tHmrpIMuFM
	E5LKX3CjLviSEv1JGIUq809CcJZSst7QB4expckK2rrb+Fm0tIWBhlgeSO3E67spxBj2jRt/IXA6N
	jSgfSS+fXBqn5hPPG5PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrg8p-0002Hd-Va; Sun, 28 Jul 2019 10:11:00 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrg8X-0002HJ-Pl
 for openwrt-devel@lists.openwrt.org; Sun, 28 Jul 2019 10:10:43 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 29531A61125; Sun, 28 Jul 2019 03:10:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 7BB74A610E1;
 Sun, 28 Jul 2019 03:10:34 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 28 Jul 2019 03:10:34 -0700
Message-ID: <87v9vm1nc5.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_031041_881124_2970FFD4 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] tools/scons: update scons to 3.1.0
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


Needed to build gpsd again, which is required by olsrd.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 tools/scons/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/scons/Makefile b/tools/scons/Makefile
index 5ec6554165..931b662f95 100644
--- a/tools/scons/Makefile
+++ b/tools/scons/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=scons
-PKG_VERSION:=3.0.5
+PKG_VERSION:=3.1.0
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=@SF/scons \
 		http://fossies.org/linux/misc/
-PKG_HASH:=df676f23dc6d4bfa384fc389d95dcd21ab907e6349d4c848958ba4befb73c73e
+PKG_HASH:=f3f548d738d4a2179123ecd744271ec413b2d55735ea7625a59b1b59e6cd132f
 
 include $(INCLUDE_DIR)/host-build.mk
 
-- 
2.22.0


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
