Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B8974198
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 00:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kkhbReo1grqowk/6g4nk3AW5g5+JpEyIn8kq28OUo7Q=; b=DTev4nwdhwumPy
	9acnqw09vUXebuDLhCPQK0ubwHmISD8/gyIWoRyEeEGi3UkJ+jVDcA1DjFGcwM1qsfoz3muIcRk4j
	xJqO/m5rSk3uV1KBTkhBYwU1dFuzKI2YZF68ZFdvtkOXXNYIqtqguB4GEA4g3+MJi6fjENKvE2WOA
	QiMnGWmvluVZbTVEDLMgw5w8iS2Vm+nP15YqtwHocQlKZCwwh7BInOxbKygE01DIIwGZHZostg8uv
	PZ+6JKs1yLg6CAdVA99+1JQ1mMetPfnEJxdmMZw6AEyQAzSqmPsUxNoC6Hh+X1S7W7CvSJMxPMj17
	TTXgk1CESYZbOx4EcZoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqPzC-0000d8-1J; Wed, 24 Jul 2019 22:43:50 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqPyz-0000cn-EF
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 22:43:38 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N6sSV-1iTXJJ14rX-018IrC for <openwrt-devel@lists.openwrt.org>; Thu, 25
 Jul 2019 00:43:34 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 00:43:00 +0200
Message-Id: <20190724224300.35189-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:7hvG+gN6UTSNbD2b8VO0fUoR5XdQT/p+tt+jUh1dDImxlWRKytI
 +dMlUqIMhmT83YWig0zEJoQN8ixLPEF5FYzGGu8kXJv7n9Sn/My9XsjhugcC3zItIbRJKuA
 QuV1xwIwoGFIsPdEvff5IvY3Cs2Sjx98vQAiL/fkU81zrcEmRxbTa+vXGDvoXPBCO+UInDu
 pkKc+Pyjr4CZSqLqJmLUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3L+/IedPqtI=:H2NK3Y1v2Ge+ztJAUX8Qc/
 2stXpeSBhq4JmcnY3PwfGZYlotrLPc9q4pKW+gMq5GTNSY6p5u9hPojB7pL/ASy6sV4o7FS5W
 pW1yByuOqgCnAJgz568bguARaix+ashg+LWgOytTgqVLgtlJeQb5kXkNyGywEdnDP0w2guQ2C
 EgxfP+9c8vOB5fjb2Uh2tDVr395JW9N6XRhv4m4lh0PHirFi7wuE1w5DB/PsR4g5gu2H7FpP9
 YCrC+9At/4CPpjXuboI027DOm3wbaXHZLiVkaGWG5rO/naXj5grdku4bwlAk/iERijx6HORWu
 8c9K50U7fimJiSrSBzu3wdomLEAdjn8JIRvg4Yl9fpNx8Ks6uX0ayVWol6r/oZaKcAFmdqOzd
 E/71orG2DKwU3fd3drVBNVstHtMbPKdrQSpTASg7dfb4z+6sK8gutYlJ5anuF8e/Gp1VtQFiW
 vUNQcVadsbF/ZyZMxE2LOYIWFZwxPcm98lCMpH+znKpcybo1LGY+KagKQPHYwDC6fSPG8dG4m
 Qcq59K6jUXtc7Lkcm05yCmAhjZrJ1wM7NqIJh9YBPtk0SONynx4WbMykubh6rIHk1L70tZ2x1
 YrE2RnAAsBpXx9TlZkYGy4mQRkjUhdrtebcg01+23Jn2u8ciEoDdf08JUewd11ESzZweDqnRu
 q0KB7ED2/n6SliKKMnnnoEG8KvfdNc2LB6PfPlz5x+G+bEXvheWlKZrefze1ulC1Lfr4PVgeo
 RnZerkufm0OhiveV8By3yZq9kgCYeX3GTQKalMhBBbtt4HriayVaa56ZxCA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_154337_775876_04FE70F2 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH v2] ipq806x: Replace backticks by $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac      | 6 +++---
 target/linux/ipq806x/base-files/lib/upgrade/linksys.sh      | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/ipq806x/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ipq806x/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index 4b476e56ae..f0256fd259 100644
--- a/target/linux/ipq806x/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ipq806x/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -13,13 +13,13 @@ OPATH=${DEVPATH##/devices/platform/}
 OPATH=${OPATH%%/ieee*}
 
 # 10 radios is enough for anyone!
-for i in `seq 0 9`;
+for i in $(seq 0 9);
   do
-  BUS=`uci get wireless.@wifi-device[$i].path`
+  BUS=$(uci get wireless.@wifi-device[$i].path)
   if [ "$BUS " == "$OPATH " ]
       then
       PHYNAME=${DEVPATH##*ieee80211/}
-      NPHYNAME=`uci get wireless.@wifi-device[$i].phyname`
+      NPHYNAME=$(uci get wireless.@wifi-device[$i].phyname)
       if [ "$NPHYNAME " != " " ]
           then
           if [ "$PHYNAME " != "$NPHYNAME " ]
diff --git a/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh b/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh
index 2aa6e0f08c..a957bf1149 100644
--- a/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh
+++ b/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh
@@ -21,7 +21,7 @@ linksys_get_target_firmware() {
 			"${cur_boot_part}" "${mtd_ubi0}"
 	fi
 
-	cur_boot_part=`/usr/sbin/fw_printenv -n boot_part`
+	cur_boot_part=$(/usr/sbin/fw_printenv -n boot_part)
 
 	case $cur_boot_part in
 	1)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
