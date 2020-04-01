Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A7119B4A1
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 19:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=duUZEJ6+lWz/ie8X+2gw1tRF2hRjliPyFPYk7mVr4XA=; b=DiANE2HVhh7iPK
	WNUAA5sbsjcxTyV8/PiSGS0sjKqhG8KglivoAt5l74AkdgiJaB4yvO8vAnMNWg245A/NsbOVf+3RZ
	kdlwrOf2xGpsDlFhltQ2IXbnK9DNYhansrVANEv1HI/udPw1OmsFQnzDnEPO+8x5fQoOcXMSfNluA
	deZBApvBpebohZq8DjsGFp2izeadE4HxpPRj+q9sCnjN/jO7BNqHdnxRN689nLInBItQDJ8oP2k94
	XzWfdQRkwKMI6vOujhQSOBi7yonfjNSP0PBWaX6BXLocCQMROMBmverzyrYfN7DvBlGR2WuvYE4Gn
	y7H3Gp7BM0/SDaO/OP3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJh6V-0006zv-Ey; Wed, 01 Apr 2020 17:24:39 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJh6L-0006zG-FP
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 17:24:33 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jJh7o-0004jW-CF; Wed, 01 Apr 2020 17:26:00 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Apr 2020 10:24:12 -0700
Message-Id: <1585761852-26624-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_102432_225188_6089A528 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] octeontx: switch to kernel 5.4
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

5.4 is stable on Gateworks Newport GW610x/GW620x/GW630x/GW640x

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 target/linux/octeontx/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/target/linux/octeontx/Makefile b/target/linux/octeontx/Makefile
index 19a264d..67addbd 100644
--- a/target/linux/octeontx/Makefile
+++ b/target/linux/octeontx/Makefile
@@ -11,8 +11,7 @@ BOARD:=octeontx
 BOARDNAME:=Octeon-TX
 FEATURES:=targz pcie gpio rtc usb fpu
 
-KERNEL_PATCHVER:=4.14
-KERNEL_TESTING_PATCHVER:=5.4
+KERNEL_PATCHVER:=5.4
 
 define Target/Description
 	Build images for Octeon-TX CN80XX/CN81XX based boards
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
