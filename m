Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880C63C9F3
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 13:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0tB8POSdB+SZ2e8YQ+rxRVZ/PmdykCOf4zC+GWmBkiA=; b=nym2KCbfu91ZkP
	gIL8c7pHLrQwHjYEtU0bV7M1MVO7Sdu10kRS6Q5khHqGWkpMcVB0I7L6PdEiaYWPxLfCFHnFgkpbw
	xQSApuTbBJECR9T6yO3sxuKHu8s4gi2Zw55eqVrHM3fHiJauJjZ3S8eyeLbr3ZS9d12xVEFekPeui
	eDt9L1fOeDUnP3inJ6Nhr/Q4Uq/7s+GQsyXoX/Xjg/NMTpJtyRfrH7gxcRwt+LlThYKvc0L9R/nA1
	un9R/vx/b0shA5rroom5AtPrFOvqWAeMYhzCKtBMGR68ssilSajmHhjgX2kDe0tOdeCdQ1Mgu3vac
	46UpAR0PqzVr8Av8L1Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haewr-0007eJ-R9; Tue, 11 Jun 2019 11:28:17 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haewj-0007dp-Ox
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 11:28:11 +0000
Received: from localhost.localdomain ([188.194.85.108]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MsqIi-1ghbS93EqG-00tE0f for <openwrt-devel@lists.openwrt.org>; Tue, 11
 Jun 2019 13:28:05 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 11 Jun 2019 13:28:02 +0200
Message-Id: <20190611112802.2912-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:qrGKvPS6Sroze1/mrKEQZu5iYsE+EonaFJHv+0HIZPejjvmsICM
 sEO4GWlO3daM+2bMzKlAGX2z0dBTSdC5i9BdFCzBk/zy5TqVv6SiR8IPhYIC2opYVafHmxh
 2xRerZpmvWSbQ7FDLYHZm62hZ2zQ/MHsP1R+C5rZkTV/PtBwtnhhDBvsDl3w6ypNTxg6YMu
 NwJgcBgyBokUPp/UC2vaw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ySst9h3sIsg=:qKUzpixFaYBBtocfH0XpFC
 v0G/v/3/VAAH5x7cfbHquVA4ymCjKbUCz61UHAZKusic7BOsdfL5AkSNiNLBgqWH7cQvtBRlm
 PWGn3uE+VPR7HJ0NZL6Pdh4uWzYPzyd5v3P5xtO+6z25JctNzOMyyoKYOYmLo+7nvqldxVg+6
 mPtVn/lN8HUQt6OsJlyhP8Q9A75GJzF3dd3nNRT+DnSdBnmFh7J4/EmbpSoTC0VSYTSyr1VRA
 9FKKxIb3xbiWRmSvDjJe0+mobhKKrFHu8riRA1qTzkxbrOk1DZPA036cAPgUPV3i5BoI64aX7
 XN+9I3ZGbBTbLpMRjvtrTP0a5FGb4mIwJZ+K2jpi2AhnutURtPgf1GAzslwMLbtkkcbqt3ULp
 0Ydpr6IY3tuFaPxugqQU5CMOPQIZrCsLg9MF+e5ykxfJMAqJ0Fi8M5OGllIjb3v+qhgQaFnv/
 R8HanDopAnOwfuTR+dzUuGpfcMRbftlReQJ+0l6ASyNCYg6TdttD6g2SboxmK2rBxsNdaQgo2
 4X+Yxmm/DTiBImvXRUI5zd1J0NPrz1qUUTBNjZ4H+j/baYXYZpKZUEGTkIPOKxD5H8jDQXXul
 Taa831GQq4rlOOAyInMaggYKLv5z6Vskv2PCdBkRMgSDyooZWqtsQfv0ca0n9k2PUAEAXbuSo
 nUWHUzaYuplde/G00xkrYYgC2yXQy+HOdwLs9PvsedXi72gOw3cBYNWmlpO5SXLtfRfhAdYXr
 qP+2Z1REgOMKQO3Mt5sd7/cgIUKQlLJi57sBOsf8FmuwohYdFGbbaXed8fA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_042810_101729_A78B06CB 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] ath79: Merge cases in 11-ath10k-caldata
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cosmetical patch that just merges two cases.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata      | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index b96c9a00b5..8f0ea1d0a5 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -137,14 +137,11 @@ case "$FIRMWARE" in
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
 		;;
-	tplink,archer-c25-v1)
-		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 8) -1)
-		;;
 	tplink,archer-a7-v5|\
 	tplink,archer-c2-v3|\
 	tplink,archer-c7-v4|\
-	tplink,archer-c7-v5)
+	tplink,archer-c7-v5|\
+	tplink,archer-c25-v1)
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 8) -1)
 		;;
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
