Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2BEB4E45
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 14:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aX+8dKo3E/LQMuR8ZyWI5/G6/oe9QshgniyvNsN2Pe0=; b=eFPtRoNBo3SImXg+oOIx5T8zkA
	QyIZ6aTnJgaPAFxel7Wr8jKPH2YmNUKbamHbsNeBI1gHTqVoHWzNyX2HERZQzd9qjzAHxIdfvrd0s
	g6qRxkwlQ4FZW+TNQjf/SLZa11T4rdpaqOLEmfCSryMcfGKlsY/rELmsmsI5LuDZaWg+E+0c6ZZ9y
	4SKb4uQDy9bY1m+lQe68aViBYPZ633vVUrvIgjIYwYM/Exh4o4DRQ+6AjQdeCBtSfuzFRpkj1ppdG
	Wik7fMUjhZbzEawxyLAaxVr8P3OqvB94cEqgDz3Wa07+Q246L0vD1y4ZeYiexWzMZ44/gCNPNyN7I
	ewPOMPPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACpm-0005hB-R3; Tue, 17 Sep 2019 12:43:54 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACp0-0005NO-Rh
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 12:43:08 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MUGmL-1ibOiq3AQ7-00RLqX for <openwrt-devel@lists.openwrt.org>; Tue, 17
 Sep 2019 14:43:03 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 14:43:00 +0200
Message-Id: <20190917124300.4505-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917124300.4505-1-freifunk@adrianschmutzler.de>
References: <20190917124300.4505-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:lIb20Lqaq0fc+tWBzPOk248KIbTYanmWpvtXl2gINDg+eMWTgE/
 zCbUfj010x+r+CdSmZoP/AKN38BuJSnwoKIa+cq1E7D7wL5bLRQaXQFTsX5+SwHTRfKuwOX
 tIhPo1xEJv9xTQOeXBJHcWLiN60Vm3+Vtd/WEUC0jSR1zQsGV4g5cIgWP3XWafdyFmnCxFT
 27C/ogoSDveytz/qSg98w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TnUx9tFll1k=:5DGuhg55INqLzaFqhqPibB
 C/FBbxePYGKOf/+lucm53djBKdS4la+H5L1ejhXyebY+FBnUEQN1FnTFnAqNTQ+k0lZFXDnxr
 F1zDpBhLHAKth0oVhTg2s64uABRXQPsGo+P7dk6iXvxQc5xxVEOdsXHwkaNGNG3O80Oa7c2Ol
 zjzWrzU89YPPDK+CcK1LFJHo9IXEBRwS8KF8Fr72INFR8Tce4GUAzH3bzH63r02Ap7Md1vqH/
 W0sRyxEM2AXeRWNwBaA5kqiJ6lJMaqjat0laOk40dgmq6fL4qkKk1jPr65xin+Btahx1lnHWj
 lUSKH8IXQ4mmRme0LSkI5E53XA8lpfgyRVtSaqE1Eq3QAnzfL6DYfWqsiIrOVohHd+XAmoW6G
 NV3YATHlffFUGsL3o6DT7zqAR0/+ANNzLDj8qsDnOfY5xGvucCXCr798pBaov61Vg9GgUrn6R
 smYuJrhDXDembOABDT4aOUuasMTYj37dwuzfG7lfSCkEsz/9pGVAue2QjWvWtFUg3MmBjQKf0
 wPYd9F2Jwn52UEf30B1Pirufzkfj+xih5uCVoKhCFGFM1+0ZcB6SwOjVva/AayNoNd+JStxV3
 k9roiZgmLDZL3xZHdLKyMIyKR9oJInMfgJVSawP/NLg6fF6swHYd10Aq+8VyypkWxc1bUQOTk
 ye2f0Y+ZawLYMWIcu2g8WTYJybamYKWKuJvgpd+RSr4U3/huuJWc3gEvjVBO0+jwzU3cRaBoA
 fAWkA3JoP9l8bdjmXtZBQmrfpei2tbQMUQ1N2UIGmtUwg969uO7Jd4i7I49mHreJn5mqmgSPM
 L+M0v0vFJ9oSJmFsnS+v6Pj5HkTJx4JKbK2HqAKLEXHC/D/KuVwUCLjLcrjyPJjKuKBE3eFs3
 d3zPR6lLLEL2j4bmSXiePd9Nj0DzxAgmJnXZtinzA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_054307_183914_A034F083 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ath79: add LED migration for several
 Archer Cxx devices
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

Several Archer Cxx devices were using board-specific LED names in
ar71xx, which were changed to "tp-link:*" in ath79.

This patch adds migration for them.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v2: Added C59v2, use new concept
---
 .../base-files/etc/uci-defaults/04_led_migration     | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
index 4e4e91c788..b23e5f7db6 100644
--- a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
@@ -10,13 +10,19 @@ case "$board" in
 engenius,epg5000)
 	migrate_leds ":wlan-2g=:wlan2g" ":wlan-5g=:wlan5g"
 	;;
-tplink,archer-c7-v2)
-	migrate_leds ":blue:=:green:"
-	;;
+tplink,archer-c25-v1|\
+tplink,archer-c58-v1|\
+tplink,archer-c59-v1|\
+tplink,archer-c59-v2|\
+tplink,archer-c60-v1|\
+tplink,archer-c60-v2|\
 tplink,archer-c7-v4|\
 tplink,archer-c7-v5)
 	migrate_leds "^$boardonly:=tp-link:"
 	;;
+tplink,archer-c7-v2)
+	migrate_leds ":blue:=:green:"
+	;;
 tplink,re355-v1)
 	migrate_leds "re355:=tp-link:"
 	;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
