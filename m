Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E3612D1A8
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 17:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d2ZwewzhgwMXb1Qnf7NdZp+louZ6qga1RSuyZtwBgDs=; b=goea7f16zXtgz1
	h2FOQn0oGzp3MPeL0uP5OAfi8S2UbRZ+fDXXvCKUX1rlIWiqyJMu4vSLAjqx71+xumZctm6GtQNlN
	U2BSzoqv92g5QZ1tZDfjz7zNMeXWPGybrBKQnResXJ03zNKVg03Dc0evLaoG8kAOlvCoP/igImeix
	c8rMf38Lv1iCR6d8SmS4LCCZudb8iC93q+yQxKJqxQBAbW0GIOZjCqOiBA9TpMeDJK+f/TOEDFhj7
	0gInmqps33R+q/2/W60xc/xJUdcgsSMQIrCbl3KuMPVF5b6qjdIxMXgxhLX27kSYKYYsnU/RAuXRW
	ARJDTYQQK1aq3wQqolJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilxU0-0000FF-BL; Mon, 30 Dec 2019 16:01:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilxTJ-0000Cl-PE
 for openwrt-devel@bombadil.infradead.org; Mon, 30 Dec 2019 16:00:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LBybaO8Y+vpTu/vdgzjG+KmTPad80IDY1H+jGv/+CCg=; b=uRMJ7S0TfDDIvvOtWrHyok6lvd
 RvsYFLvlAIr/4UULiticMPDAAebf38rRdag1/S57svmGTkXbip216sPvPKj33qHXtRs+3g0sCDETo
 UOaq1DNH704O4Zd6HZOsjPDoCF4qdTdDqCZC+3Uyp6BEW7CdsZc9ga7NBEGLSQy8Wfd6NOoYL1Uom
 tLJJ6cr/EgkBZqexf+HMj+tcvjUHqxgM3jBglL2GkrvCXf3nlJRHYhXRpLuYxiLf2QW77+e2yUJhU
 ay5DZ5KgWMU5YTKU+E2fzQW1xTXitFdnxFtaKL3cAxOOirXQ8LiePzuiXmD23N8LZzqGiG44kyDSX
 k8TiljGA==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilxTY-0005Bu-3n
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 16:01:06 +0000
X-QQ-mid: bizesmtp21t1577721553t4qp82b9
Received: from P65xSA.lan (unknown [112.94.100.96])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 23:59:13 +0800 (CST)
X-QQ-SSF: 0140000000300060E3F0B00A0000000
X-QQ-FEAT: 0ESs8nxzjD+F7DUg8McfjFY1xfTOGjUWwxKWFXVPd/9RBKqrAx8mgLDsfAJkW
 S5vCoDPNCM8RX6pesbe8UDrcw/OpLfjwF9R2qUYNm/6mDAi6t2fiG0wOIVtSfvMYQFSGMzm
 w+BmvmOiQIbeYfXT7dKo3orjKTmkrC7/gQHNcS6QhCHcQv1iea1yhxCNpcZurB+cdliROYF
 tKE1jgxcJnn2ApOU+SoUSaghSYQ0p/pcJvVAmz3+VRnLFJbKoTOSidnksSnEBcaQFoesH6R
 kj9be5nGvuSNexg4bqcxBxB6B28Hrx/Ij6gP1KVd4pCWFbRwWOSf1xLjgG/F6LRIYABjDb8
 e0GAsc0
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 23:59:12 +0800
Message-Id: <20191230155912.2130-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_160100_733360_903628A3 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7620: use throughput trigger on
 HiWiFi HC5x61
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
Remove HC5661 non-existent 5GHz LED

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts        | 6 +-----
 target/linux/ramips/dts/mt7620a_hiwifi_hc5761.dts        | 2 ++
 target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts        | 2 ++
 .../linux/ramips/mt7620/base-files/etc/board.d/01_leds   | 9 +--------
 4 files changed, 6 insertions(+), 13 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts b/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts
index 185e045de1..452541137a 100644
--- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts
+++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts
@@ -29,11 +29,7 @@
 		wlan2g {
 			label = "hc5661:blue:wlan2g";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
-		};
-
-		wlan5g {
-			label = "hc5661:blue:wlan5g";
-			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
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
index d88fdfb043..c71333654a 100755
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
