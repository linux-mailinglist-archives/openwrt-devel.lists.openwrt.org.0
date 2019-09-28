Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD914C1198
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 19:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ogc8tJ6SasZ1EvyV0N0w7dviiF8fzzL/cX73RECmtEo=; b=B1OUey9Ok35kCJ
	bAC6EwF1evXGYNR5NFTpBO2WiG6s2f9OKvzD/mL4mygZvnSbcM3m+VBHS7bzUs/rz+XaO7VyDSj5K
	OINHwtqDneAnDlfio7aO/FL9yDk+nxfa8HitjYz43mjN3ctiuSUcND3RXxOobE6EkEQmn95uMW82n
	DIWAUyxHAR3U1aSfkw1nXs/MHpMB3klz2xbSQe/K2obzeFvDWSyvqpw0XRVLgDaxuImEo+B9+gmX2
	5PdzViLYFyg5AXmHYrX10tkoIfveWepAQkXagYq2SHUUT7q0SbSQMbALvMx6lW6TERtY6EmR1uH80
	SaK4vQebfIogUATeKWCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEGhe-0006Jz-Kb; Sat, 28 Sep 2019 17:40:18 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEGhV-0006Jd-Vj
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 17:40:11 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 02B963DEE3;
 Sat, 28 Sep 2019 10:40:07 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Sep 2019 10:39:57 -0700
Message-Id: <20190928173958.20199-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_104010_020638_FACB1174 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 1/2] ath79: Correct glinet,
 gl-ar300m-lite in 02_network
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

Previously, the board name for the GL-AR300M-Lite was incorrect
in 02_network, resulting in an unintended, fall-through condition
when initializing the network configuration.

While builds prior to commit 8dde11d521 (merged June 5, 2019)
    ath79: dts: drop "simple-mfd" for gmacs in SoC dtsi
functioned properly, the error was noted in resolving first-boot
connectivity issues related to the single-phy nature of the device
and the "swap" of eth0 and eth1 related to that commit.

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/base-files/etc/board.d/02_network | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 15371a1dd9..0de17adb9d 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -19,7 +19,7 @@ ath79_setup_interfaces()
 	devolo,dvl1750i|\
 	devolo,dvl1750x|\
 	engenius,ecb1750|\
-	glinet,ar300m-lite|\
+	glinet,gl-ar300m-lite|\
 	netgear,ex6400|\
 	netgear,ex7300|\
 	ocedo,koala|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
