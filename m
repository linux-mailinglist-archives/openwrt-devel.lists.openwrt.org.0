Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7E299F49
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 21:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x8EfHaoXiGyKl+tf12DI77uGBsrHudo2EFVIqnxVTDk=; b=tHKcPL7SoA0l1l3yH8OyliJkiv
	GNkAKgvkUkmFnvvYf5pXYMJFTzsEhwlQsvz7wEsRc49NBwq4YINitizaI7od/ulNYbjnm9qh4l+HJ
	9AOXQ4JlnEDyR5PnJEAUpaWu3PFLTC0eDoeqHryV9cVP1F4bQBoRaOjVFpC3letqNIqVh4QzqZ6oX
	8mg2Ti6cqQrb+wCeJlhRAF1T3KTyr3zn7U3OuwRH9Lv5N1og3DHLCut1q+HU03G04fIPYhHUoqYAx
	aTmepm8t8Ektt+uFB1KfwMrfHfC+pdWp9pW1KZUySO7mRQOlx4XmrP/aaV3e59MTn0kGeiwUdV1MY
	cNy/TwUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0sJT-00020P-1i; Thu, 22 Aug 2019 18:59:59 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sIt-0001Xo-BU
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 18:59:26 +0000
Received: (wp-smtpd smtp.tlen.pl 24156 invoked from network);
 22 Aug 2019 20:59:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566500359; bh=+KfB8ZtyJDfU+nItn+usHiflkqAfQWST/gZbmX/3hc0=;
 h=From:To:Subject;
 b=ujgu7Td87kNshXZlWYAnHPOWxqzLeldLei91Z07vfRB67ARlalOaJlf6kvuH3NGqF
 o4U7uQRRds42XpjLO3k569YTWwUKM2lJXguDFlnpSQW2ZkTVtHjB85EXxWqXko8wgM
 xcGm70T49HCLy+7BME+1R9eqsRcGxK0H9kvW0O8I=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Aug 2019 20:59:19 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 20:59:05 +0200
Message-Id: <20190822185911.12336-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190822185911.12336-1-tomek_n@o2.pl>
References: <20190822185911.12336-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: ad0bc731d1d950cf483ca817cb64ec8a
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [8TPE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_115924_168538_87790D94 
X-CRM114-Status: UNSURE (   9.35  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/7] ath79: dts: fix ja76pf2 spi frequency
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
