Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5DEDF754
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 23:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vBq+UWlrooiB1cIrTgFRN0JFXgCnBvsuR2m/Aoy6AQs=; b=Z+2Fuv0/bo/4vl
	z5Fe1ih7ogxifX+pHcqTv/Iex3YHnGTNOSZmxKKnSaD2VINnKwDyYVJGaPszo6IVZyFFFK5beUH0W
	tHdHDLxrGcJdG11DhyyoMMD01fjNdg9jvPvIOT603bWVO8xd8wXkwiNOMqmcb8EQYZzb0ZKPY/hFF
	UNa9eXakJQyD8m3HJEtsApJW6DCZW+thuy9d3gztMxNGHfc99v9bHYjM5a6hZJ+5Bq2KfwktpI3/w
	3bDuA5e6uqyMnTYxPDlKFRzXsgOKh3SSakF8m1NuBMnsGPsBBj3ZL4vzeuctlQztCYC8SU6pNd9hz
	P9rN7iCDHySPjuWjvsaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMewb-0004FR-4H; Mon, 21 Oct 2019 21:10:25 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMewS-0003yB-Dg
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 21:10:18 +0000
Received: from localhost.localdomain (unknown [213.175.92.61])
 by mail.pbx.lv (MailSystem) with ESMTPSA id DE7CF1A60A7
 for <openwrt-devel@lists.openwrt.org>; Tue, 22 Oct 2019 00:10:09 +0300 (EEST)
From: Roman Yeryomin <roman@advem.lv>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Tue, 22 Oct 2019 00:10:04 +0300
Message-Id: <20191021211004.15360-1-roman@advem.lv>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_141016_641593_3B1C0627 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH 1/2] libubox: update to latest git HEAD
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

eb30a03 libubox, jshn: add option to write output to a file

Signed-off-by: Roman Yeryomin <roman@advem.lv>
---
 package/libs/libubox/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/libs/libubox/Makefile b/package/libs/libubox/Makefile
index 1c318b3e48..e5f4dcf8fe 100644
--- a/package/libs/libubox/Makefile
+++ b/package/libs/libubox/Makefile
@@ -5,9 +5,9 @@ PKG_RELEASE=1
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/libubox.git
-PKG_SOURCE_DATE:=2019-06-16
-PKG_SOURCE_VERSION:=ecf56174da9614a0b3107d33def463eefb4d7785
-PKG_MIRROR_HASH:=e3dd137d69848b8cf2dbc58d70452586dd4178b55977896ea3a9dedaf62c768c
+PKG_SOURCE_DATE:=2019-10-21
+PKG_SOURCE_VERSION:=eb30a03048f83e733a9530b5741808d7d0932ff2
+PKG_MIRROR_HASH:=04c0edc0df8c9336ca3d68d3e3536de42805837c72ceb5fb4ecaab87a59ff2cd
 CMAKE_INSTALL:=1
 
 PKG_LICENSE:=ISC
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
