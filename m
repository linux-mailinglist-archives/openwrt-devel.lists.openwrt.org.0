Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 507839B154
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 15:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x8EfHaoXiGyKl+tf12DI77uGBsrHudo2EFVIqnxVTDk=; b=ld58XRwl04SNNedlSdPCZG4K5o
	BL7oKwQNT+H7yNyHsd0hRBfEPe6SbLCa+lhspNbPSulamd/STN5dplYCc1Xo7/9ynvFl7CAky4JNr
	d4eypeYzFXDEme0HTsDEWl2qznwLNc27D4zOvh0I8aoh83Uk+4xxUVySFedtJYOdJCsZbeUtsGMSc
	KWtAURBWNWmZgODTdMXtPvYROR4HnxZ2t2ZsB5QX9oBAphB6Z59XmHLmD9WyId7jYxuw1FvL84+eA
	AJ4K+viBlLKFt1cqtVcdwWw0RXJne/zkQzc80akVlDJCSJEF0zehY+Cccq76zYcXoeiRA1IOIcZc9
	uY/e0RCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19yR-0006uH-Kx; Fri, 23 Aug 2019 13:51:27 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19y2-0006bC-Kx
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 13:51:04 +0000
Received: (wp-smtpd smtp.tlen.pl 14444 invoked from network);
 23 Aug 2019 15:51:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566568260; bh=+KfB8ZtyJDfU+nItn+usHiflkqAfQWST/gZbmX/3hc0=;
 h=From:To:Subject;
 b=IIfnKfIyd6dEYhY029XCyIIIuwFG5Q9cAu6RmOzNMDlosAraq1SAxOEr+kFaE/Ni2
 sARnpV1XcZiFzF60Tc220xeczMxC9WHbbjNBT+JWNrsJrS9ayRz6TkcgjFPAMxwaTS
 1AfBLC0a0I86cRtB/ZKy2g1+FTBHjz0rjv0pUdHw=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 23 Aug 2019 15:51:00 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 15:50:46 +0200
Message-Id: <20190823135052.2305-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823135052.2305-1-tomek_n@o2.pl>
References: <20190823135052.2305-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 3dfd031813a7ec951e3ab7b49a33d5d5
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [caME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065103_008420_7D7C5301 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 1/7] ath79: dts: fix ja76pf2 spi frequency
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

The frequency was filled acording the information from datasheet for
particular chip (Winbond 25Q128BVFG). Unfortunately this led to
coruption and introduced bad blocks on the chip. Reducing the frequency
to commonly used in ath79, made the board more stable and no new bad
blocks were spoted.

Fixes: b3a0c97 ("ath79: add support for jjPlus JA76PF2")
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts b/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
index 76f140fa55..b983d1b994 100644
--- a/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
+++ b/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
@@ -111,7 +111,7 @@
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <104000000>;
+		spi-max-frequency = <25000000>;
 
 		partitions {
 			#address-cells = <1>;
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
