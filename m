Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD7B141DA8
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 12:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQ2dW7DJwODWk1GvgNOshy/9Mi95I3bPXh6csNAVnRM=; b=IGL8c7nu7EfWuH
	4CuZY3IJ36u2GchsOMm8Iz9qCifU4H6NN961/JNiPG3qVwwYJHQ4B2jvC1FePEzqkt4xIWrtOyKqG
	c0o0QJpx+CeTWw/fczzuwbpXLS35rd84zBSxMXl9Z4TZYJcpwp0BpGLBgMrQ+Tumfmv19Ssc9djpG
	HE2tv9pQpZZbKS/NttU+ahc5lwDhXqi/8G1Y+NqPfMCpihFgrTJJJv0MqgbHgS2027V7jhUuSqwxF
	gi9lMySuYYIy56K3KUZ91+VUU1fY0dgZrJCu1Ql8nEN65a+ud5t5rI6QiJDKgg1oKMlm9aPsA4RN3
	RkMgFvoa56UcHRPmVetw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it8vd-00060y-GT; Sun, 19 Jan 2020 11:39:41 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it8v9-0005bV-IB
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 11:39:14 +0000
Received: (wp-smtpd smtp.wp.pl 1731 invoked from network);
 19 Jan 2020 12:39:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579433946; bh=1gzGXc1aKHYsm4ejy5HsFTffeYvGG392SN31qQrN5zY=;
 h=From:To:Cc:Subject;
 b=JdAdA2KZFuAPB062q9KLf4ersbKownxBttUya4ISLYmEJfQvDzifDirmfWRF7MDTV
 GkSgZRIgurDM9xOrEKyWpGtGrCOkorabWl0BOqFNNpdFqsdVDIBYJOIQU1Ym3ffA2V
 83o9xqMtf2/ifqthThX4G0c+Vrx0CIVcAuynDISg=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 19 Jan 2020 12:39:06 +0100
Date: Sun, 19 Jan 2020 12:10:01 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20200119121001.71dd8822@kosmio.komorska>
In-Reply-To: <20200119120816.44406149@kosmio.komorska>
References: <20200119120816.44406149@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 1740b2f64c92e9a48c66d2bd9afc4b98
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [oTOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_033911_972276_D08DDF70 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: WNDR3700v2: add dash before
 version in device name
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adapt Netgear WNDR3700v2 device identification string to ath79 naming
scheme by changing from 'wndr3700v2' to 'wndr3700-v2' (affects config,
makefile, init scripts and device tree definition).

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 ...etgear_wndr3700v2.dts => ar7161_netgear_wndr3700-v2.dts} | 4 ++--
 .../linux/ath79/generic/base-files/etc/board.d/02_network   | 4 ++--
 .../base-files/etc/hotplug.d/firmware/10-ath9k-eeprom       | 4 ++--
 target/linux/ath79/image/generic.mk                         | 6 +++---
 4 files changed, 9 insertions(+), 9 deletions(-)
 rename target/linux/ath79/dts/{ar7161_netgear_wndr3700v2.dts => ar7161_netgear_wndr3700-v2.dts} (85%)

diff --git a/target/linux/ath79/dts/ar7161_netgear_wndr3700v2.dts b/target/linux/ath79/dts/ar7161_netgear_wndr3700-v2.dts
similarity index 85%
rename from target/linux/ath79/dts/ar7161_netgear_wndr3700v2.dts
rename to target/linux/ath79/dts/ar7161_netgear_wndr3700-v2.dts
index 76ef300a81..f3d27f2bdf 100644
--- a/target/linux/ath79/dts/ar7161_netgear_wndr3700v2.dts
+++ b/target/linux/ath79/dts/ar7161_netgear_wndr3700-v2.dts
@@ -4,8 +4,8 @@
 #include "ar7161_netgear_wndr3700.dtsi"
 
 / {
-	compatible = "netgear,wndr3700v2", "qca,ar7161";
-	model = "Netgear WNDR3700v2";
+	compatible = "netgear,wndr3700-v2", "qca,ar7161";
+	model = "Netgear WNDR3700 v2";
 };
 
 &partitions {
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index a96b504d5a..4c3305a304 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -178,7 +178,7 @@ ath79_setup_interfaces()
 			"0@eth0" "2:lan" "3:lan" "4:lan" "1:wan"
 		;;
 	netgear,wndr3700|\
-	netgear,wndr3700v2|\
+	netgear,wndr3700-v2|\
 	netgear,wndr3800|\
 	netgear,wndr3800ch)
 		ucidef_set_interface_wan "eth1"
@@ -379,7 +379,7 @@ ath79_setup_macs()
 		label_mac=$wan_mac
 		;;
 	netgear,wndr3700|\
-	netgear,wndr3700v2|\
+	netgear,wndr3700-v2|\
 	netgear,wndr3800)
 		lan_mac=$(macaddr_setbit_la "$(mtd_get_mac_binary art 0x0)")
 		;;
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 4158116256..0e6d63495d 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -109,7 +109,7 @@ case "$FIRMWARE" in
 	case $board in
 	buffalo,wzr-hp-ag300h|\
 	netgear,wndr3700|\
-	netgear,wndr3700v2|\
+	netgear,wndr3700-v2|\
 	netgear,wndr3800|\
 	netgear,wndr3800ch)
 		caldata_extract "art" 0x1000 0xeb8
@@ -127,7 +127,7 @@ case "$FIRMWARE" in
 	case $board in
 	buffalo,wzr-hp-ag300h|\
 	netgear,wndr3700|\
-	netgear,wndr3700v2|\
+	netgear,wndr3700-v2|\
 	netgear,wndr3800|\
 	netgear,wndr3800ch)
 		caldata_extract "art" 0x5000 0xeb8
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 800e1c7a7d..a65d14bc18 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -780,7 +780,7 @@ define Device/netgear_wndr3700
 endef
 TARGET_DEVICES += netgear_wndr3700
 
-define Device/netgear_wndr3700v2
+define Device/netgear_wndr3700-v2
   $(Device/netgear_wndr3x00)
   DEVICE_MODEL := WNDR3700
   DEVICE_VARIANT := v2
@@ -788,9 +788,9 @@ define Device/netgear_wndr3700v2
   NETGEAR_BOARD_ID := WNDR3700v2
   NETGEAR_HW_ID := 29763654+16+64
   IMAGE_SIZE := 15872k
-  SUPPORTED_DEVICES += wndr3700
+  SUPPORTED_DEVICES += wndr3700 wndr3700v2
 endef
-TARGET_DEVICES += netgear_wndr3700v2
+TARGET_DEVICES += netgear_wndr3700-v2
 
 define Device/netgear_wndr3800
   $(Device/netgear_wndr3x00)
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
