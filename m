Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B53DAFB3D
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 13:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9TlFsLK0rb94b04zBHQHTgb4Q3CD2SQv/wtVNEkjzcw=; b=g13oSQksClSW9c
	eMyesJMv3i/1V7+0hWYqBQIKbfNCzjvn/dObl6CNyYkg0Oc7JutDr4rukt028UZMqTr0B3pcIiIs4
	enybpTN3EAoWce2MJlOOjihgI3s9TRZ9Ed6+6ifX39MTPfTSO7ke0uxVpL1H5My1JMiAnVxIilQ36
	YzpM7jGhZMexLgED4RVBdmsNEXK9Dkt64nHBD/GmvWaI3wc7s401jLI0qLT2E3rxUOh8wjvn2lCsd
	wIxXBbYpUqqxU1XG+9BnOgr8qpRELBcfaibnJHocHJGR05O7yd7NocDmb5X++R6+074a1f/XXwr5N
	gW9d7oUmsq0bnJo8HPSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80aU-0006NK-HH; Wed, 11 Sep 2019 11:15:02 +0000
Received: from jake.logic.tuwien.ac.at ([128.130.175.117])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i80aJ-0006MQ-Pu
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 11:14:53 +0000
Received: from t450.aithon.duckdns.org (morty.logic.tuwien.ac.at
 [128.130.175.112])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by jake.logic.tuwien.ac.at (Postfix) with ESMTPSA id D562DC015E;
 Wed, 11 Sep 2019 13:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=logic.at; s=dkim;
 t=1568200476; bh=HmpMRru3ZIZUG4q+SsBvbyQE6I7o3lSq+xeKvIMrD7c=;
 h=From:To:Cc:Subject:Date:From;
 b=jGa+hw3xfVB57EbkMrsFXo2qYhIcbfbRC2kuxwalNdEUqiPSGU2GSroWMvLrrp1Um
 lD9lyWH4dbd2YBviyKlr9D4zlprtozoGcc75KnRrlBCO2KYqbpSKkiKoZ04/q42t5r
 IYWvLnL1247UNdkTfJiq26NTNiIDPFW4jf4GhrzU=
Received: from localhost (t450.aithon.duckdns.org [local])
 by t450.aithon.duckdns.org (OpenSMTPD) with ESMTPA id 77457d4f;
 Wed, 11 Sep 2019 13:14:30 +0200 (CEST)
From: Ingo Feinerer <feinerer@logic.at>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Sep 2019 13:14:05 +0200
Message-Id: <20190911111405.82077-1-feinerer@logic.at>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_041452_165516_4DFD1E5F 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [128.130.175.117 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: [OpenWrt-Devel] [PATCH] umbim: update to latest git HEAD
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
Cc: Ingo Feinerer <feinerer@logic.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

184b707 umbim: add home provider query support

Signed-off-by: Ingo Feinerer <feinerer@logic.at>
---
 package/network/utils/umbim/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/network/utils/umbim/Makefile b/package/network/utils/umbim/Makefile
index 66d25718cf..417363f4da 100644
--- a/package/network/utils/umbim/Makefile
+++ b/package/network/utils/umbim/Makefile
@@ -5,9 +5,9 @@ PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/umbim.git
-PKG_SOURCE_DATE:=2019-03-11
-PKG_SOURCE_VERSION:=24f9dc71a624cecd67c181cec77b4101038a39d9
-PKG_MIRROR_HASH:=452bd6f1019ce53fd02119b12a8d6b13e946b73de02642e20e9fd85c482c452d
+PKG_SOURCE_DATE:=2019-09-11
+PKG_SOURCE_VERSION:=184b707ddaa0acee84d02e0ffe599cb8b67782bd
+PKG_MIRROR_HASH:=482ff69144f81fafed99035840f5a24e772472f2df2f3ac0219d6de791ac5835
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 
 PKG_LICENSE:=GPL-2.0
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
