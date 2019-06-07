Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B438C38E26
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Jun 2019 16:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v23XtBQeS/+VtPQAcbHFQ8xSS80mwTK5JAfd41M06Oc=; b=Xyig5l2YVfJ/Ye
	GDEISTOZFehiYb+9rr9m2X5BUnUnc4pjyKarOCb+xZN3wdoDfEF4HBjMA4p3WdmiyO3hZThYZ1Wz1
	fxdI2WoUorOjp655R7IVTcawRdvJJYdCXZ2p6sCe+v+4i+TNBQqtLcuqNYGSeGSW7k10DCeBGf29S
	TUuGaBovmawAFQ/NV/yhwnRAvKX5prPA6aN9MXpJaYsYOsU8GXZGQ1jM1No7vMaB9/TPuAIKVJDcW
	lHsozbaaosUyVd8enh1VZBSEZ2wSEXAfTK4BtperzBMJyIARTrqHQAB927viMFwpQ6yxDKIUkY1f4
	Lf7T1GPQfF9cPQyRibKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGG5-0000Kp-2K; Fri, 07 Jun 2019 14:54:21 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGCP-0004uD-V3
 for openwrt-devel@lists.openwrt.org; Fri, 07 Jun 2019 14:50:40 +0000
Received: from [185.161.129.97] (helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <lynxis@fe80.eu>)
 id 1hZGCL-0008CJ-DB; Fri, 07 Jun 2019 14:50:29 +0000
From: Alexander Couzens <lynxis@fe80.eu>
To: Jo-Philipp Wich <jo@mein.io>
Date: Fri,  7 Jun 2019 16:50:19 +0200
Message-Id: <20190607145019.30060-1-lynxis@fe80.eu>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_075034_160591_85F44946 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH][buildbot] phase1: build kernel reproducible
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
Cc: openwrt-devel@lists.openwrt.org, Alexander Couzens <lynxis@fe80.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Set CONFIG_KERNEL_BUILD_DOMAIN and CONFIG_KERNEL_BUILD_USER to
buildbot@openwrt

Signed-off-by: Alexander Couzens <lynxis@fe80.eu>
---
 phase1/master.cfg | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/phase1/master.cfg b/phase1/master.cfg
index f5068675bafc..765d9dea0fd9 100644
--- a/phase1/master.cfg
+++ b/phase1/master.cfg
@@ -632,7 +632,7 @@ for target in targets:
 	factory.addStep(ShellCommand(
 		name = "newconfig",
 		description = "Seeding .config",
-		command = "printf 'CONFIG_TARGET_%s=y\\nCONFIG_TARGET_%s_%s=y\\n' >> .config" %(ts[0], ts[0], ts[1])
+		command = "printf 'CONFIG_TARGET_%s=y\\nCONFIG_TARGET_%s_%s=y\\nCONFIG_KERNEL_BUILD_DOMAIN=\"openwrt\"\\nCONFIG_KERNEL_BUILD_USER=\"buildbot\"\\n' >> .config" %(ts[0], ts[0], ts[1])
 	))
 
 	factory.addStep(ShellCommand(
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
