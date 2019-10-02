Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9C0C9153
	for <lists+openwrt-devel@lfdr.de>; Wed,  2 Oct 2019 21:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=36Xvx3Cgow3bX8ahc5tOjyfflDsdF19delEcRasfnMY=; b=OdQJKWpqRhIr0U
	Sz7IgSb6XVWSw0cDM7eItMyukj6q6nT+/zHR3rLjyFL4qdOSKDO2xsC8nNbc7SMyiNqURJL6nxe08
	tyUTfBIJfUVWDcF6448tewpCQ6gk3Dj4CSqN++UbBOVbVBjLn0awa48FvO+QGX7ztoPU8Dego5vck
	ytuK97ZO+BhpInIrGO6OLReH03GWZ7gHRrERtofAnqiJEDSncbwikLCTj8/lIIQ6uQ3dZtPvJyw/E
	AvA6Um5Vz+iw6NcdhI3IiNSh2kvsZN4qKejeTrB70fkf9yzDMiYkLlWg24pYBHHbKXrc7BUSuNZln
	kNfSIwKhojKReqsXnZaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFjy1-000131-Oq; Wed, 02 Oct 2019 19:07:17 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFjxv-00012f-CM
 for openwrt-devel@lists.openwrt.org; Wed, 02 Oct 2019 19:07:12 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 53FDC43C73;
 Wed,  2 Oct 2019 12:06:28 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  2 Oct 2019 12:06:18 -0700
Message-Id: <20191002190618.28828-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_120711_422756_E9426A2A 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: Clean up GL-AR300M DTS/DTSI
 inclusions
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Modify GL-AR300M-Lite and GL-AR300M (NOR):

* Include qca9531_glinet_gl-ar300m.dtsi directly
  rather than qca9531_glinet_gl-ar300m-nor.dts

* Remove redundant inclusion of gpio.h and input.h

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts | 2 +-
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nor.dts  | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
index e29af5411d..b2cb5bc261 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "qca9531_glinet_gl-ar300m-nor.dts"
+#include "qca9531_glinet_gl-ar300m.dtsi"
 
 / {
 	compatible = "glinet,gl-ar300m-lite", "qca,qca9531";
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nor.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nor.dts
index 02196cf9c4..22e5ae4e74 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nor.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nor.dts
@@ -1,8 +1,5 @@
 /dts-v1/;
 
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-
 #include "qca9531_glinet_gl-ar300m.dtsi"
 
 / {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
