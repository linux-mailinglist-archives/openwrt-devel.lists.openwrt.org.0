Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4CD72FFF
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 15:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yZEifLlDe3/3KaanH9Cxyp4KhhtdpUmi0ejgpDSXoRk=; b=BSc7aM3BkaK3Nb
	pDRa2IF75juB6+nwgGIjulUibfma39WyoNgntLdgh9ZVI3rLYw1C5jF20Oz/vx1ILNUORmWHd1OPA
	0kegVVq2uuYO+fend3mhd6KmJA+aTGwzO7Zw24+9s6rQ+LxRWmFHUDCcu3QjmbYmZomn9E7kJKgWS
	aEpEKLL8qxNBYMoFeh+aTXqrnGVBD80vAEqVffW0qK4Z2cVbLl7G8W8R+Tde/DkDKFJcCZ0dw0iP4
	amkMu94GXUkYGVs6aYD31znxOYafdL27lQEA5tb0+jGMtlaj7blLHu/kuhPI5yUmdFHqCRheGSrYt
	Vb9puPChZxSIYuZqJcBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHQu-0000cc-LM; Wed, 24 Jul 2019 13:35:52 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHQh-0000bO-F7
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 13:35:40 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mdva2-1iRG4k2QXm-00b4qG for <openwrt-devel@lists.openwrt.org>; Wed, 24
 Jul 2019 15:35:36 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 15:35:26 +0200
Message-Id: <20190724133526.2458-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:bT0vmAMJhkuDQml/OdvhbtsDil1fOFLCvdNwbNA4sGwj1jF6osB
 4c2hv848WmJMZysnK4EuVPrXRocLWCRrcP7LAJl8oGtp23UUETf/Nql7ERi+dxP+S7ScN0B
 eXaWJr/lM+Rat8aG4qt/obbTyfZcxPpfu5+mJ+X1VFZNIPI6UzYIZ7zeK5gNM/PdFF7wX40
 KPUQ1RS+XB8zfi3fGVNJQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W1AFAD/QvJE=:FztRE8XVvhKoyqvYKUM1Db
 AtgXFQMwLNzVIOEkwGJhMcM8CIsqWFpa4GMwgBVsfnO1TzuJToGroXS1qD49sHEfigBGN75c6
 tZ0btDHJJmkC3rKKnkEM4QL5B8agbgC9c6VAILwi/dAw7UHdOt59M5rDRo026pfgcxD+OUzxt
 A6f4Hut6Ra9ExD2rbvqsNcs+Amx+wvjoj/OualjVcQZRKIawjMQhl9EAUgvLgi2cPHnFqzPqo
 ZBAhGRCDgVEZYVhPM0nOBwUh28kV/lPEE8BJZXHtYABGF2UaJqk/PQMTOjhcxCwi5S3OID5Kh
 91/BLd/kMNwJ5s9GJpCksFlOkNNH2e6zDOTTHP2jbaQeDimCayFBGZ9HuKzwrFnmTNZUbdsKc
 tzmv+7L28EqNw/v6lmHGCi8kaRcbmcC58nvj/R+ToQqF/fURMXx+Q7Cr6mO0Kg1poyO/BamRe
 u8pi34rYsUBFNNl1aNYa3lhZRrkjMXOIsssCqu7r0jE70cfcjKTaGDPglTXbMtTcWAPcHRlkt
 DSTYvWoRdE9WG+9DCNYWj4yRbiZva4ik5Wr6jhUBRgmYnFwUfPfjo9n0r5LQjuywgPhl8XOzb
 0Am1nM0AnhzRcObzX9uqtOngqcfmOLEGcDkHSkHGM8J+HqJMzHOtEwqZ39sSQdSXewXi0dnae
 m4sLtc92yg7eigi93bc+YGlMVN29mTKsFBqjOpim5yMRVRZZ9SmX8akSUWMXcNGAH0W9yvHQQ
 9r946loLQKukz+mb61eE4Q5WMwmMdJI7n4k3cCT8kVi5IRT2Rl0xWADw69w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_063539_799114_DF25E1FC 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ipq806x: Replace backticks by $(...)
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
