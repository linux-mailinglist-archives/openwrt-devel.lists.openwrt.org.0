Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B1BCFD6F
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 17:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yeqPal41x6196eg1Hqo1oA5NPyeYTkaz9cj1Ot45/w4=; b=MXP5X5wuw4FjsK
	BRhSUlrq0uZOJk1DywYMPBB7/RbCI2WXr0nRVdnY6wwWDVKeyh+vEfdTDnWZoXeNklyq++vjBfIsT
	8FLHUJ/VO1RCfC0vwbj9qfsUXkN4JUI002KA50NjYE9jsRehXhfcjSwh737W+/MbH8LA5Gy0BdPuH
	SwiSdLBhZK50x4qbUwvjs4v5r26Hm7RTqmg2AaJrNt7YSsuhO2TZe2LenWVzxw2/YOsFzLj70X08L
	FkeO530XYmbWuOk/7h5iacHjJh6qRVwFPVnC6odABW7SoV/sJHLzE+M522g8MKRXyjPftC0ZilBJL
	3t96j8tyLRiuD7ValxKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrGG-0006Zu-6z; Tue, 08 Oct 2019 15:18:52 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrG9-0006ZE-9A
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 15:18:46 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M9npV-1iCejL3HzZ-005nl6; Tue, 08 Oct 2019 17:18:38 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  8 Oct 2019 17:18:35 +0200
Message-Id: <20191008151835.1856-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:dV2wQP7IKUS7D3PmNb04semka0gCH9Yz4kWi3xTFNmjF7Aa6qKR
 SYttZ56reEIEdvejD42Huxp1iVa/pDpLAWrElJ3MX3Zk7jEseByqViKuI+64BfViz1JLQXW
 mn+6uW3F8X8kAbyrHyh5m7ktcUijyjpS4d9s0U3e3Ev78OtmoSozfena21MP552qb5FccbQ
 gucsTdqzN7V+h7Hji/2Bw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+tsta6Dihc4=:UI2g2rp6ISRfbmAiKAf95F
 fIdAlGaELULvkp+CD4UujY2WXUMDvs9c4C36qcgR7Oa7nDDohtB/4aIgKYWXsZwTKlAGm7K4e
 0m20IYoIC/a9QxrSM67V/JdiefYJQpCQ1v3QOld49sbARh9KD5PquAKJm/suQD1gNTldgFRhH
 Y4sDMFch3o6J9PQKcu4yxE/X3ZZh2gjPrynO7QM9gac5BC8TJ1Gmak8S61C5alHZ5gzXYu+VZ
 MUG74/HwLF0xpw5aOLAjYUTiAESUflvx9SvgTwlVC9Z4RiNuOwHFcfEDmf2+Ig+F+qEeetF0O
 /LrRpnYL4cXE+jx2i/vBhqecLd/4/MtOp3GHbRB8Ix0mKDAVWdAq5ZE7GamRiRxazBwIQN2oQ
 Xo/Db5Gc/WtS2o76xS/foxmxZmHcnSa7G9Ot82CDGCTTfXxN7GLjJ/t+Qim84FGC+UVmAKEcD
 Am3Wt9nM3+4yKC5UmuTmz2fq/jwWlCFyrBMLFb/AFe+nd2xIhoTbkmICg9ve3uGmlyx2bX51d
 rsL5p617LPKvLuZn9qVRFsq7dVaMGwxjHRARaAUNxm2ya9FyLuXDhCPzdbuCdz+Y9PCYN5OEd
 dUbs4nXn/TrXQtnQi548WmUA9A/qXnMpUwgqjzb3oVW9dOrlVHd3H48d3dsC3v+bkCzoI53fu
 WXhtJLuTmigcztVtfaKHUge/iV/oVsYejz12JnIl8hQuNQpN/TeOr7EskpXJqeiRj2vaIYDL8
 UOXzN8W0dhBc1eS1qUL8HVlbQnNRxTULLSpDBF8NKNTlH5paQ/D1MHN6o7IZxfprH/RmgP03/
 a1j590DSydD8pt4IO5px7sP+43PayZS+WjP5mVasoUX2OYKPcqTz6WjSgXHsWsH/VKZGypCAF
 DBdUVCT4Gpv+wHj24YwHykYE7t4JWYvxcPA8SNLpw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_081845_615379_844D0741 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: fix patching ath9k MAC address for
 MyNet WiFi Range Extender
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
Cc: Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The code line patching ath9k MAC address for this device contains
a wrong number of arguments including an unset "$mac", which
looks like a typo or copy/paste mistake.

This has been introduced already in the device support commit
745dee11ac78 ("ath79: add support for WD My Net Wi-Fi Range
Extender").

This patch just removes the "$mac" argument, leaving a formally
valid line. (No on-device test has been performed.)

Cc: Christian Lamparter <chunkeey@gmail.com>

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 7911d0aa1e..91663896df 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -196,7 +196,7 @@ case "$FIRMWARE" in
 		;;
 	wd,mynet-wifi-rangeextender)
 		ath9k_eeprom_extract "art" 0x1000 0x1000
-		ath9k_patch_fw_mac $(nvram get wl0_hwaddr) "$mac" 0x2
+		ath9k_patch_fw_mac $(nvram get wl0_hwaddr) 0x2
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
