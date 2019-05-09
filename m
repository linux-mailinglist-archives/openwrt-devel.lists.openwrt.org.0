Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DC718ABC
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 15:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QFu639LAVKGW5DsI2pFd8/087iA1dU928WBB5m7y8xY=; b=NNOcrt4zqw7hKa
	wGA1Z/BFzuBsi48HsVmY/4dmqotMWKhpWab76a3UKdCaTzcCP9qLteHjrAJ80jssNzXlH+7MOTcH7
	IPF50Yy2uUI3PhNmH4C2cW7zB3sZFEv9mVhvQzA67ERa2rYVcMIsR8+/g25ND3eaYrpFy1GoQNLsG
	1iw8yH2w6NvjpZTRtAKcMMghn1b2uzpIWa2WqBbCkug7I3lQdvVtakJMF29jyO/5/Nz3ddcLS0N2C
	hP5Emu9Ua0oRV5j1dt9lk9J6vOOsRGCKqodxwZ6YrCBDDu3B0hrkRUPgmx+NtGnEFHstpg7uCUEbP
	xIjPjr+LB0c0/OCJOOpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj8r-00031m-QA; Thu, 09 May 2019 13:31:21 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj8h-0002zd-Q3
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 13:31:16 +0000
Received: from localhost.localdomain ([178.26.242.10]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MFb38-1hUkkc46gQ-00H6NR for <openwrt-devel@lists.openwrt.org>; Thu, 09
 May 2019 15:31:09 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 15:31:05 +0200
Message-Id: <20190509133105.6752-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:WyOUZUnrGKnA+11vZrHAt4sjH366IJX7dE6DTB8H3KTL8RulMbi
 WcjLfUcknbqRLDmy/YD3+zQOJ1ssfoygBPgZldoOkmviVoEfW1MYx2APQ7wHz708MbBqsuT
 e6p/mcytEW9wFlE9dXPjxl2M2cJhoYFUPuRhw7tY6/ruR4zYJzGtIFHc52KNtwZJhpey43Y
 yZTPXz/sFs0FRN8nTgjqQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wHbZwXpcR4Q=:DT/ZOaQVV6WlDOZMRbOOcv
 COuJAECQO0pk769QPlRQXPUljs9rp2TziUykN/KWpKcYPIiwNy8u1s/FHAvOTmBMDXcdXa4Is
 ubMI5ThvJuEAC5Kz2iEP0YS60ms/wnzH/Mt6iKSo1RT0eKFDxENl2OJr322g+p53dgxubUmO3
 r/p1gz/T8gBYMU0p+8h0Q6iSYPuwEPXRjfAC/AqBfm33VmL5gFrVrF1OSCfNQMQtg/qvavsEP
 RjZhmfEyQgE8nEskWp7TIKYrcDCi/KcjJTc0F0Z8bNzf3uNywo14SQBSNT2qQrpLg4pQjczAS
 H39ki43ia0HuGB4vGVxzGD8jUsv6KyXZtl3aKvPwm+Yj1v+DqBqSPgrMsC1+2AWqyj/fp0lyo
 17Qm6zG++ErgdNCT2NHUQUlGg5Y9WWttuuFlVvDkOOBT4qFxwe/NXfJm0iSfxzX2NMeHq8tCu
 vzAOEZvUjyjGZbhkGdTArknHm34Xharw3EsDAf+G+MSEZtgos3tORv7BufIr59AcmlobYKTSC
 lQtLl5FlbnKXoeUxwkXtE0g6LYw/tjwhXEIKY00o41LrGzo+/a7MoiljFoN/tsusYesZbLJCt
 alj8cWcMmcaWhu0bGfGQ7ilMDvNsOJ0jvi6ghJCgtMdIDqJaL5JBFAWJrQ67ghEn2f4LhZ3Vd
 I/d0DmXbiGg/JA4gLpdv9hOdLI9UXLj1Rt4vd4qjIB3UeCc92q+2KNNznbb09tzou4fDy1eCq
 Nypn9sF7mjl/CUMBA6fgF0Oq6wV6wR6PtfhucH9e8EMTru9h3iJI3k6muXQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_063112_143132_04F8CAC7 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH v2] ath79: Add missing read-only properties
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Add some read-only properties to protect partitions from
accidental changes.

Also fixed two whitespaces error on the way.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Changes in v2:
- Do not change read-only for u-boot-env partitions
---
 target/linux/ath79/dts/ar7241_ubnt_airrouter.dts       | 4 ++--
 target/linux/ath79/dts/qca9531_engenius_ews511ap.dts   | 1 +
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi   | 1 +
 target/linux/ath79/dts/qca9531_glinet_gl-x750.dts      | 1 +
 target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts    | 1 +
 target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts | 3 +++
 target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts | 1 +
 target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts | 4 ++++
 8 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
index 9e38bf8087..774a45f22d 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
@@ -30,9 +30,9 @@
 };
 
 &usb_phy {
-        status = "okay";
+	status = "okay";
 };
 
 &usb {
-        status = "okay";
+	status = "okay";
 };
diff --git a/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts b/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
index 62b6a766fc..4e0ae73d0d 100644
--- a/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
+++ b/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
@@ -118,6 +118,7 @@
 			art: partition@50000 {
 				label = "art";
 				reg = <0x050000 0x010000>;
+				read-only;
 			};
 
 			partition@60000 {
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
index ceb2bfa0ff..8b127ed1d8 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
@@ -99,6 +99,7 @@
 			art: partition@3 {
 				label = "art";
 				reg = <0xff0000 0x010000>;
+				read-only;
 			};
 		};
 	};
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
index 79cd51673a..ddaf7709b7 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
@@ -108,6 +108,7 @@
 			art: partition@50000 {
 				label = "art";
 				reg = <0x050000 0x010000>;
+				read-only;
 			};
 
 			partition@60000 {
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
index 439acaae85..378de5de90 100644
--- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
@@ -92,6 +92,7 @@
 			art: partition@50000 {
 				label = "art";
 				reg = <0x050000 0x010000>;
+				read-only;
 			};
 
 			partition@60000 {
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts b/target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts
index a9174df4fa..42db1d7a24 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts
@@ -39,16 +39,19 @@
 	info: info@f40000 {
 		label = "info";
 		reg = <0xf40000 0x020000>;
+		read-only;
 	};
 
 	config: config@f60000 {
 		label = "config";
 		reg = <0xf60000 0x050000>;
+		read-only;
 	};
 
 	partition@fc0000 {
 		label = "partition-table";
 		reg = <0xfc0000 0x010000>;
+		read-only;
 	};
 
 	art: art@ff0000 {
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts b/target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts
index c106a63eb8..7a88f56a02 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts
@@ -124,6 +124,7 @@
 			partition@20000 {
 				label = "uboot";
 				reg = <0x020000 0x10000>;
+				read-only;
 			};
 
 			partition@30000 {
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts
index 8059b48510..efe83cd5ee 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts
@@ -33,6 +33,7 @@
 	partition@40000 {
 		label = "partition-table";
 		reg = <0x040000 0x010000>;
+		read-only;
 	};
 
 	art: partition@50000 {
@@ -44,11 +45,13 @@
 	info: partition@60000 {
 		label = "info";
 		reg = <0x060000 0x020000>;
+		read-only;
 	};
 
 	partition@80000 {
 		label = "user-config";
 		reg = <0x080000 0x040000>;
+		read-only;
 	};
 
 	partition@c0000 {
@@ -60,5 +63,6 @@
 	partition@ff0000 {
 		label = "default-config";
 		reg = <0xff0000 0x010000>;
+		read-only;
 	};
 };
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
