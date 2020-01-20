Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DF71432FB
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 21:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlmZEtmKfMf8QLzsLmer9nBa8nlKMMrPHQblXPn/nPE=; b=apQsyLDW4FIScA
	1nMosMUsaoh/G3fgV6wP7bt9J60MdfFkrFrQj9nMpP+tLHT1LwwXEQyTRV6FqujRl4h3QEc9YK5V5
	WtLhw9ejM5XflkJeX37P9Su8K8w2JIW/96Lm4js6q4DZUrfxuE5JgjXeiEFysVhSan2GPaTVqf9Mj
	DCxDs0m9F20I/q20fwo5WcWyLYR7cTSxuefnjorAijSMWsCFurZEaxHt5jZBjQwldAIo7NQCsXbF6
	r+gBmZj49uUHULBUVFSNCY8YdNREIDqizI5GDevelOvnLJdt/CpbjKtXzqaR9tOJZNOgEhtZ6NE/Y
	8tWo9HOg2/4DTPBvENaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdsf-0004dW-Uk; Mon, 20 Jan 2020 20:42:41 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdsI-0004Qw-Me
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 20:42:20 +0000
Received: (wp-smtpd smtp.wp.pl 4332 invoked from network);
 20 Jan 2020 21:42:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579552935; bh=1xo1Nl3wBGymW7UNCupElP7ibBYf9cBMmiiVxSZKWVc=;
 h=From:To:Cc:Subject;
 b=W61ZCKwxpXxiCcHsognA6I+UxL/egQ6Mi0rjuZCAi3Wkrrosre002dxqAt6LQYsA6
 nn9HrfE4qWby/uJWla34FidxERIyQGea9XpE63yh0+cMrgXIUeunxTBj4cGtqT3UC3
 sFaJXuzJiyyAnzW1mTn+MH53k17t/Fv3LuFE31Ds=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Jan 2020 21:42:15 +0100
Date: Mon, 20 Jan 2020 21:19:29 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20200120211929.38482d3f@kosmio.komorska>
In-Reply-To: <20200120211811.22199957@kosmio.komorska>
References: <20200120211811.22199957@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 70668386b967e6a02ef38bea3e45636d
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [8RN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_124219_264371_D14BD999 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 1/2] ath79: WNDR3700v2: add dash before
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
index 800e1c7a7d..ae7bf26e27 100644
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
+  SUPPORTED_DEVICES += wndr3700 netgear,wndr3700v2
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
