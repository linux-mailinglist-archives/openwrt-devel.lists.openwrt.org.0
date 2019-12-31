Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5366712D980
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 15:36:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rUKLxdNEtgb1WKZu/mrij1nnl22evcuv9wdCsnsXexE=; b=gUoj8IfhnSbmuG
	mAvvF4nrlHzxCT9qiPsNPi8tKO6N8aOByXtkRUFlQpnAlkZ24HD3Ox+QYTN1Gs4D/+73YICyEJHZD
	1MEUx3CCgLRG/FuPCv+xIkNqj3w1/aE8Ksaizj44oWsxtmtGgVS1hNILUtG4HuXECSIYxb6f2/EiW
	UMMJ6f7yZUdvlmr4fIsdjSKDXUfmxgxDJ4DmFU9xICaRce9JWcjzd9caZ2KxTyJhyEo0SmLLaE5vq
	/nBFI0OAkh1Z9HYCnyIJ9AXyjhFzRP6FYTpvnA94Ug7r6uWD06JLT+mXkvkchA6AQM911d5e+UYnk
	8A8y6lAuriAoDnvQz69w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imIdW-0004D4-Qv; Tue, 31 Dec 2019 14:36:42 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imIdS-0004Cw-2U
 for openwrt-devel@bombadil.infradead.org; Tue, 31 Dec 2019 14:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yQ7nmjOWvCpsFx3bUjvQjgIIjsAjJ7m2qzVAE/R3Fo8=; b=0ZAn0p+o+Mb35gJoetZUbye3RO
 FlRRXKbtzY4+RzcK6LodECncdC0xJ0yPGIg1nqjLnPaiLoMcQxo+3Dc1m8+2vCE42gIl1G/KDNOpO
 Jk0+uUzIsD9ulbGDpnervJcT4vN3OItPLDZkRSx/Vb/adz2alYRyqzU0Dbqtdm2THY4+TVQRHMeRI
 cu8cZ/WVRbqjca2qC/W9i1NlCi9cIgEHTneYAzylSurx8dlE9KQE2/MApDXja0F0Be5Em94gWqq8U
 HGpNc6MJiLh7g4Z0y5l9B82UdCBkEL+JkVZk9vycharv8yu2H33xjtd8dTxMmnMsn9HwW6E+TWEkU
 1ZVQDTDQ==;
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imIdM-0003r4-Ad
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 14:36:36 +0000
X-QQ-mid: bizesmtp17t1577802948tbyl8qg5
Received: from P65xSA.lan (unknown [113.65.232.20])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 22:35:44 +0800 (CST)
X-QQ-SSF: 0140000000200060E3F0B00A0000000
X-QQ-FEAT: uPKj8ga2w7H5pgKRX8KnZFGL78VuLcm2qt/EnU29vc4HpbHzpatLDowXnAJed
 vlBe+BokW4BG/a2B7hh5eHXsN3Z/FwICWpmxz5c21ZtTCgcnOK4kJxgao8RNWjASBIiYtNM
 0tJsMHq3FOe+gdXOUgJ6t7CD1FNWsBoGDIwyZyPFbXL44VaLfmmJjU0hAvqN40rjx/rZjGY
 M39ydAGRk3P6M7qQfdLZlhgjEPEXYC9MRbjogu/dMHKg8lxjr62/KQlU9tvcasVnnE89sMx
 JlWETdVIHzZRoq3/NXLCUK4hckhMdkF0GMxCR0JR73di9dwoRbVrV4+B6ZGUwErHAfnEwFh
 98B0DUL
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 22:35:41 +0800
Message-Id: <20191231143541.17846-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] ramips: mt7620: use throughput trigger
 on HiWiFi HC5x61
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

Throughput trigger support for MT7620 has been added, so switch to it

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
Change since v1:
  Split out non-existent LED removal part

Tested on HC5761
---
 target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts        | 1 +
 target/linux/ramips/dts/mt7620a_hiwifi_hc5761.dts        | 2 ++
 target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts        | 2 ++
 .../linux/ramips/mt7620/base-files/etc/board.d/01_leds   | 9 +--------
 4 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts b/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts
index 074257ab86..452541137a 100644
--- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts
+++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts
@@ -29,6 +29,7 @@
 		wlan2g {
 			label = "hc5661:blue:wlan2g";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
 		};
 	};
 };
diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5761.dts b/target/linux/ramips/dts/mt7620a_hiwifi_hc5761.dts
index 265f7d9bb1..33ef8dd2aa 100644
--- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5761.dts
+++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5761.dts
@@ -29,11 +29,13 @@
 		wlan2g {
 			label = "hc5761:blue:wlan2g";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
 		};
 
 		wlan5g {
 			label = "hc5761:blue:wlan5g";
 			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
 		};
 	};
 };
diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts b/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
index 73f1a4079a..83a3a67ed0 100644
--- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
+++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
@@ -24,6 +24,7 @@
 		wlan2g {
 			label = "hc5861:blue:wlan2g";
 			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
 		};
 
 		internet {
@@ -34,6 +35,7 @@
 		wlan5g {
 			label = "hc5861:blue:wlan5g";
 			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
 		};
 
 		turbo {
diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
index 77a98fa095..02899d646d 100755
--- a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
@@ -111,19 +111,12 @@ glinet,gl-mt300n|\
 glinet,gl-mt750)
 	set_wifi_led "$boardname:wlan"
 	;;
-hiwifi,hc5661)
-	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x01"
-	set_wifi_led "$boardname:blue:wlan2g"
-	;;
+hiwifi,hc5661|\
 hiwifi,hc5761)
 	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x01"
-	ucidef_set_led_netdev "wifi5g" "wifi5g" "$boardname:blue:wlan5g" "wlan0"
-	ucidef_set_led_netdev "wifi2g" "wifi2g" "$boardname:blue:wlan2g" "wlan1"
 	;;
 hiwifi,hc5861)
 	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x20"
-	ucidef_set_led_netdev "wifi5g" "wifi5g" "$boardname:blue:wlan5g" "wlan0"
-	ucidef_set_led_netdev "wifi2g" "wifi2g" "$boardname:blue:wlan2g" "wlan1"
 	;;
 hnet,c108)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
-- 
2.24.1




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
