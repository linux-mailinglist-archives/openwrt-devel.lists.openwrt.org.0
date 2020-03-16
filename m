Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F30D187260
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 19:32:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IQiZrHSSpfmGs0Z6EvIaSafB2mceCdEoimfLQiDgCfY=; b=a9f7dpBv9yqki9
	8Ddi0pvjCgIwZ211OdlTAow6rpj8QvRVf6C7UhquIpcPUfaO7mlJASeBdJpWVxJuUnO06borAVD3s
	WUT/+QJAvPXlAcy95DITdWWxHbEAGWvfGw3h8PeHQhgFHGvLbBvEaRvaLtwAZc0mu55dfkH6/ynUN
	a6gazkn84N6z2n7kOzZAZHFlpZxY1YC2FJ0F0dEQkV68pmmNJ2gVDB4QjwczQJW9KPAnxTQUwus7d
	QQuw35+Ane3ScMggmdTeX+lApUxWg4OWVnl+BJoCmWQSPdADQbMr7d8EWpOdm8H5L6jA0HSVF0VWN
	DzN9LGX2gi70HdMbALZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDuXf-0006zo-Pl; Mon, 16 Mar 2020 18:32:47 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDuXW-0006ye-23
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 18:32:40 +0000
Received: (wp-smtpd smtp.tlen.pl 7491 invoked from network);
 16 Mar 2020 19:32:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1584383553; bh=f06WK2bROQoBKwnDS4NQff8dPJriUKswW4JcenbeJrY=;
 h=From:To:Subject;
 b=BtcYeAYKCBiPyFPzv2N/hWe0OpBzPtDJyLFzDxQ1Wm3PhvOaa+XX0q02NSyjM04G4
 IQ1RZQjnVbFzlvCmxeiaT18covJ55SmWN787Nixhl1VggO96BeNrh1F0bA1Kda5IgM
 4B5ftHsL955eb+NEHq3tjy1zz42Q37KKmYJy2G1g=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 16 Mar 2020 19:32:33 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 19:32:07 +0100
Message-Id: <20200316183210.90142-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-WP-MailID: 92fdbade00f84f0a4733f83fe22934cb
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [QXME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_113238_422096_8B4BD572 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/4] kernel: move TEO governor to generic
 config
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

This new symbol popped up in few places. Disable it in generic config.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/armvirt/64/config-5.4      | 1 -
 target/linux/bcm27xx/bcm2708/config-5.4 | 1 -
 target/linux/bcm27xx/bcm2709/config-5.4 | 1 -
 target/linux/bcm27xx/bcm2710/config-5.4 | 1 -
 target/linux/bcm27xx/bcm2711/config-5.4 | 1 -
 target/linux/generic/config-5.4         | 1 +
 target/linux/ipq40xx/config-5.4         | 1 -
 target/linux/ipq806x/config-5.4         | 1 -
 target/linux/kirkwood/config-5.4        | 1 -
 target/linux/mediatek/mt7629/config-5.4 | 1 -
 target/linux/octeontx/config-5.4        | 1 -
 target/linux/oxnas/config-5.4           | 1 -
 target/linux/x86/config-5.4             | 1 -
 13 files changed, 1 insertion(+), 12 deletions(-)

diff --git a/target/linux/armvirt/64/config-5.4 b/target/linux/armvirt/64/config-5.4
index f910d06ac870..c69ad8943f59 100644
--- a/target/linux/armvirt/64/config-5.4
+++ b/target/linux/armvirt/64/config-5.4
@@ -106,7 +106,6 @@ CONFIG_COMMON_CLK_VERSATILE=y
 CONFIG_CPU_IDLE=y
 # CONFIG_CPU_IDLE_GOV_LADDER is not set
 CONFIG_CPU_IDLE_GOV_MENU=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_PM=y
 CONFIG_CRYPTO_AES_ARM64=y
 CONFIG_CRYPTO_AES_ARM64_BS=y
diff --git a/target/linux/bcm27xx/bcm2708/config-5.4 b/target/linux/bcm27xx/bcm2708/config-5.4
index 57c176d1681b..a25d0ff86d55 100644
--- a/target/linux/bcm27xx/bcm2708/config-5.4
+++ b/target/linux/bcm27xx/bcm2708/config-5.4
@@ -123,7 +123,6 @@ CONFIG_CPU_HAS_ASID=y
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
 CONFIG_CPU_IDLE_GOV_MENU=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_PABRT_V6=y
 CONFIG_CPU_PM=y
 # CONFIG_CPU_THERMAL is not set
diff --git a/target/linux/bcm27xx/bcm2709/config-5.4 b/target/linux/bcm27xx/bcm2709/config-5.4
index 6713aef789b3..b1dff62b664c 100644
--- a/target/linux/bcm27xx/bcm2709/config-5.4
+++ b/target/linux/bcm27xx/bcm2709/config-5.4
@@ -154,7 +154,6 @@ CONFIG_CPU_HAS_ASID=y
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
 CONFIG_CPU_IDLE_GOV_MENU=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_PABRT_V7=y
 CONFIG_CPU_PM=y
 CONFIG_CPU_RMAP=y
diff --git a/target/linux/bcm27xx/bcm2710/config-5.4 b/target/linux/bcm27xx/bcm2710/config-5.4
index 7527c3fdd961..f14041206f80 100644
--- a/target/linux/bcm27xx/bcm2710/config-5.4
+++ b/target/linux/bcm27xx/bcm2710/config-5.4
@@ -202,7 +202,6 @@ CONFIG_CPU_FREQ_STAT=y
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
 CONFIG_CPU_IDLE_GOV_MENU=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_PM=y
 CONFIG_CPU_RMAP=y
 # CONFIG_CPU_THERMAL is not set
diff --git a/target/linux/bcm27xx/bcm2711/config-5.4 b/target/linux/bcm27xx/bcm2711/config-5.4
index a813eb586cdd..b3ad48e03c33 100644
--- a/target/linux/bcm27xx/bcm2711/config-5.4
+++ b/target/linux/bcm27xx/bcm2711/config-5.4
@@ -206,7 +206,6 @@ CONFIG_CPU_FREQ_STAT=y
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
 CONFIG_CPU_IDLE_GOV_MENU=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_PM=y
 CONFIG_CPU_RMAP=y
 # CONFIG_CPU_THERMAL is not set
diff --git a/target/linux/generic/config-5.4 b/target/linux/generic/config-5.4
index c4821ca6a392..51eb02d77fbf 100644
--- a/target/linux/generic/config-5.4
+++ b/target/linux/generic/config-5.4
@@ -915,6 +915,7 @@ CONFIG_CONSTRUCTORS=y
 # CONFIG_CPU_FREQ_STAT_DETAILS is not set
 # CONFIG_CPU_IDLE is not set
 # CONFIG_CPU_IDLE_GOV_MENU is not set
+# CONFIG_CPU_IDLE_GOV_TEO is not set
 # CONFIG_CPU_IDLE_MULTIPLE_DRIVERS is not set
 # CONFIG_CPU_ISOLATION is not set
 # CONFIG_CPU_NO_EFFICIENT_FFS is not set
diff --git a/target/linux/ipq40xx/config-5.4 b/target/linux/ipq40xx/config-5.4
index f94eb78b34c2..86fabe601004 100644
--- a/target/linux/ipq40xx/config-5.4
+++ b/target/linux/ipq40xx/config-5.4
@@ -112,7 +112,6 @@ CONFIG_CPU_HAS_ASID=y
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
 CONFIG_CPU_IDLE_GOV_MENU=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_IDLE_MULTIPLE_DRIVERS=y
 CONFIG_CPU_PABRT_V7=y
 CONFIG_CPU_PM=y
diff --git a/target/linux/ipq806x/config-5.4 b/target/linux/ipq806x/config-5.4
index d07c02f423f2..c9c50c91bc4a 100644
--- a/target/linux/ipq806x/config-5.4
+++ b/target/linux/ipq806x/config-5.4
@@ -113,7 +113,6 @@ CONFIG_CPU_HAS_ASID=y
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
 CONFIG_CPU_IDLE_GOV_MENU=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_IDLE_MULTIPLE_DRIVERS=y
 CONFIG_CPU_PABRT_V7=y
 CONFIG_CPU_PM=y
diff --git a/target/linux/kirkwood/config-5.4 b/target/linux/kirkwood/config-5.4
index 68eb6569575b..e149631f0ea1 100644
--- a/target/linux/kirkwood/config-5.4
+++ b/target/linux/kirkwood/config-5.4
@@ -81,7 +81,6 @@ CONFIG_CPU_FEROCEON=y
 # CONFIG_CPU_ICACHE_DISABLE is not set
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_PABRT_LEGACY=y
 CONFIG_CPU_PM=y
 CONFIG_CPU_THUMB_CAPABLE=y
diff --git a/target/linux/mediatek/mt7629/config-5.4 b/target/linux/mediatek/mt7629/config-5.4
index 861ce4222bef..5ca8444c361e 100644
--- a/target/linux/mediatek/mt7629/config-5.4
+++ b/target/linux/mediatek/mt7629/config-5.4
@@ -112,7 +112,6 @@ CONFIG_CPU_HAS_ASID=y
 CONFIG_CPU_IDLE=y
 # CONFIG_CPU_IDLE_GOV_LADDER is not set
 CONFIG_CPU_IDLE_GOV_MENU=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_PABRT_V7=y
 CONFIG_CPU_PM=y
 CONFIG_CPU_RMAP=y
diff --git a/target/linux/octeontx/config-5.4 b/target/linux/octeontx/config-5.4
index 4db69184c235..a75bf78d357a 100644
--- a/target/linux/octeontx/config-5.4
+++ b/target/linux/octeontx/config-5.4
@@ -172,7 +172,6 @@ CONFIG_CONTIG_ALLOC=y
 CONFIG_CPU_IDLE=y
 # CONFIG_CPU_IDLE_GOV_LADDER is not set
 CONFIG_CPU_IDLE_GOV_MENU=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_IDLE_MULTIPLE_DRIVERS=y
 CONFIG_CPU_PM=y
 CONFIG_CPU_RMAP=y
diff --git a/target/linux/oxnas/config-5.4 b/target/linux/oxnas/config-5.4
index 5e187ca4c7d2..973bbc79dda9 100644
--- a/target/linux/oxnas/config-5.4
+++ b/target/linux/oxnas/config-5.4
@@ -97,7 +97,6 @@ CONFIG_CPU_CP15=y
 CONFIG_CPU_CP15_MMU=y
 # CONFIG_CPU_DCACHE_WRITETHROUGH is not set
 # CONFIG_CPU_ICACHE_DISABLE is not set
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_PABRT_LEGACY=y
 CONFIG_CPU_PM=y
 CONFIG_CPU_THUMB_CAPABLE=y
diff --git a/target/linux/x86/config-5.4 b/target/linux/x86/config-5.4
index 3207025bbfdf..4fd590321e65 100644
--- a/target/linux/x86/config-5.4
+++ b/target/linux/x86/config-5.4
@@ -93,7 +93,6 @@ CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
 CONFIG_CPU_FREQ_STAT=y
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
-# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_SUP_AMD=y
 CONFIG_CPU_SUP_CENTAUR=y
 CONFIG_CPU_SUP_CYRIX_32=y
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
