Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDDB1E9710
	for <lists+openwrt-devel@lfdr.de>; Sun, 31 May 2020 12:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1z6gw6n5A7xf2+aV7J5ee78xCEVyLKKale5SUzCppjk=; b=EnQvcm0s2Fz+1X
	niEoaVNixO40q9bee/lOqLEFAQ5/NOaA2CnWYqj8hn4+4rf7C3j1QsXL/FC1MFFuJ1H3adC+cKeZq
	4W+tsF3ksf9OynrcyDti02r9zfQCLRtXcvA1KJHLmYiAqOxDFmv5dXAz9irbRnz41gOtWOf3eHakh
	6d3692ar1eS4MawIJjw7ZHNS5DjOXalW/ZzuuQWDaUS1LRR2cvQkY9BJC9mngbPU5xieF5DbVVIUO
	P7iw9Ubfa0eJf8RHoXGQVDP77uqLyh/2nEosNQ+NUuVPDSri4HHN8sGZia/w+7INxiVbrPZsJ7y9n
	mgGxO1GQut6YN25HE9HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfLXl-0007jT-Vt; Sun, 31 May 2020 10:50:17 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfLXg-0005Ib-Gn
 for openwrt-devel@lists.openwrt.org; Sun, 31 May 2020 10:50:13 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id B4D74FCD48; Sun, 31 May 2020 12:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590922164;
 bh=QMHxS9WVrq7uv/iv/MrAgElJuzTNYdQepHyyN68Jh1w=;
 h=From:To:Subject:Date:From;
 b=aF/UfRjBI806vt4j5lIPuVpX466tStqqlaVFq4WnMB6PxNssJSdGaBksVJcSkBBXb
 2BAZO+sM4PNjR2X8tLC/XrwuKPslMGAD7F7kBgC4vfyyFX5pwunXAw3TWu/zd9hmWm
 qhdFo+tbcYwvxWljyOKo0IB/O/OKxFM1IeKs3yeg=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 0BA54FCD46
 for <openwrt-devel@lists.openwrt.org>; Sun, 31 May 2020 12:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590922164;
 bh=QMHxS9WVrq7uv/iv/MrAgElJuzTNYdQepHyyN68Jh1w=;
 h=From:To:Subject:Date:From;
 b=aF/UfRjBI806vt4j5lIPuVpX466tStqqlaVFq4WnMB6PxNssJSdGaBksVJcSkBBXb
 2BAZO+sM4PNjR2X8tLC/XrwuKPslMGAD7F7kBgC4vfyyFX5pwunXAw3TWu/zd9hmWm
 qhdFo+tbcYwvxWljyOKo0IB/O/OKxFM1IeKs3yeg=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 31 May 2020 12:49:16 +0200
Message-Id: <20200531104916.6041-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_035012_710688_80854C3B 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH] ramips: switch DIR-860L B1 DTS to generic
 wireless naming convention.
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

Switches the DIR-860L B1 DTS to the generic wifi naming convention.

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts b/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
index ce747deb28..336e696fe9 100644
--- a/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
+++ b/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
@@ -152,17 +152,19 @@
 };
 
 &pcie0 {
-	wifi0: mt76@0,0 {
+	wifi@0,0 {
+		compatible = "mediatek,mt76";
 		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&radio 0x2000>;
+		mediatek,mtd-eeprom = <&factory 0x2000>;
 		ieee80211-freq-limit = <5000000 6000000>;
 	};
 };
 
 &pcie1 {
-	wifi1: mt76@0,0 {
+	wifi@0,0 {
+		compatible = "mediatek,mt76";
 		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&radio 0x0>;
+		mediatek,mtd-eeprom = <&factory 0x0000>;
 		ieee80211-freq-limit = <2400000 2500000>;
 	};
 };
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
