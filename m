Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E124AA45B
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 15:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wPq4gflKZp0BWlXkCc3JeyBG4MI7IQDB9aw76l3yr3s=; b=pb/M+fveIHovgb1HoV1ZUBpZyj
	U7Ily1IGbwFzoEZb2xz5vN9MwwrbuHjdGOBLYxbpoxfE2GyciyWtg4CNtELLEGC98x/fKLMw/KmfC
	0ZtotRHNOeh/tT0zIPgoOyLttQYS+3Hygxjh6OJDtaTw1is22PAXUVBRwWlmu9hQOyDxkl3aEa3Pt
	eLLGuyWCGfwfxY3IIvmRW3ItSujLygxPQjT7rx9Y+0PXE/V+kLbX86JPdaWOrPAIJ2ZJ4M8BZeqDI
	hdbYDbE5HNX2i3yf+7hdcOKhPvBwkt7C0EH6JIjP1ljOe91GO+lT7dFcdk8HVoaRurIynw+EOqYCe
	6KXrQtOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rmD-00087Y-57; Thu, 05 Sep 2019 13:26:17 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rlX-0007ao-GB
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 13:25:36 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MTRIg-1hirEz3re0-00ThUp for <openwrt-devel@lists.openwrt.org>; Thu, 05
 Sep 2019 15:25:30 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Sep 2019 15:25:25 +0200
Message-Id: <20190905132526.2376-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190905132526.2376-1-freifunk@adrianschmutzler.de>
References: <20190905132526.2376-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:MgOO3H0Izi9+kWv+BwgPgXVorFPcDiWeyg+jsMtVSADMV0RamRM
 hpiXaWrRDlAlu4cBfusxZae6UuIALdhYojI4sVw7sRjkUu76nTi53efdcRlxMS3C1CL7BLs
 GraHLaO6Ot1FNROridAJnn1uzuKgsGnj7iV2xoqk8/kAMixVZ+iQZnD289AMitYh183lvTd
 btInshYQ9bhnnR+dWjZpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OJ8HiPebVZI=:4DpnHUSsHz1MLVazyJfS1h
 QDYz8OM1Jd80O9jG/xHexWqwOrBxJOYrNTwjr4Jpj2htxFqUXkT+pf8wf2sntVDB/+RT/XO60
 FhHqDsBSsO3gn3lAbZfY2z/efC3Wcp6sC0ebS9KoEcacmUr1GkMaiCcjh10H0DFDF4y8Uktxl
 hYGpilQ4QwqzNvtmJ5Xi80ctOOeOB1JIVrdXj2PUcPSosfHYNHKrMkilsZw/gAh2oG/e+Tr9c
 F67zO6u1rZVsY3bkHTI83iH+ttJVxRTtsBy5ZprF8JViQo/lGtccrk2RoTR4yrSUWjgXI/q7i
 J765A55MmcID2GY0hT6wuQ3J2pi5Y5vkxPOFP/RJwAW1XaEnIAp9CG74PC9L+zDfswGBVEVO6
 vS4/B94X1EOtgiquc3NURsPK8qh3EJrKbApDSz4la7xLkGV5leqxqYwc5zi6sreIOoYcUrBNx
 DyZ2pt9cNslHAvEz/rCG0DNhsq5qNhWOGWvA2H27qqDtVDHnxPz0FbewnR8Yfv1WiEcTyY1Rm
 8jvOihAL4VssH6m8/PdmnCpcB/iPK52/01irtcdI85Dsr40HbahCQfrR/qUAFvBjKwj+C3I/F
 YCxDfMlIEHaC5ST+GSAjbGGdUaQyivsCsIM7vnxKnoTS7xfmtF9i9YvE7AaPwNRozWyqXlJBX
 67/6VCIbDRoDe1B20NRvrj4UHN4khxSoUbMw/jyi6qBTOCYlwYzsBRDI/gXsy/EzEgmw3fa4d
 NI72bMD/mKzgaKvxCaeFKZwgrGEl/T0u0wG8qVPgRqFOBsvrIHi4pY6xaBhmcmFQqz5UZ/VpP
 i7spvsLqcCPedixQxysT4xoGLVfv5MGdafs+BqMtTmDDxyiQQsLU1w1SCLPeZXac+jr4ngK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_062535_833309_C83E2A90 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/3] ath79: remove empty default case in
 10_fix_wifi_mac
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

This removes a useless empty default case.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac    | 2 --
 1 file changed, 2 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index 2e2179aee3..52efd8baaa 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -42,6 +42,4 @@ case "$board" in
 		[ "$PHYNBR" -eq 0 ] && \
 			macaddr_add "$(mtd_get_mac_text mac 0x18)" 1 > /sys${DEVPATH}/macaddress
 		;;
-	*)
-		;;
 esac
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
