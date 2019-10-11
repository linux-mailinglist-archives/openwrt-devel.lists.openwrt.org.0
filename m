Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D4ED3C57
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 11:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xoELJxxK/s9A7mjiHwkeCTigicOw7+fzTzJb+HVdbpM=; b=G9OnRTJfrILMVmtD5HfBVMCQIi
	9eyIAKiCU4wtXTsTHk9H2g/4QO8wNd3QFE0kAsraCTxf4Z2KmHYYKEPlGFR95aBng2EQwDfTxEVER
	EkZamSS9/n1Dd+GvUiyfAzQTKGe0m7flpDOdt+IRXHuwsBPnsAur2cCFBZ+QqLfcewv0jvSKjCnUu
	y8zapWqR3ZUenLPLsKKimCQWL3zbj7yVV0ynE2x4Rui8metEE7tS6grOL3m+lGXcPReTgLLQHu793
	a9EUrxc/EJejenySHQuEVYoyf6ZynudtTDFnKTSUREkrWrTUSYeOhZAhZj3sezPEwF/HnI69sqfEo
	T6Clq9EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrH2-0000Lw-6E; Fri, 11 Oct 2019 09:31:48 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrGt-0000KS-9O
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 09:31:41 +0000
Received: (wp-smtpd smtp.wp.pl 32740 invoked from network);
 11 Oct 2019 11:31:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570786295; bh=UH56aZ7lF9ollpxbnbV+ZXmB9rXdvdsYGkR2609v0V4=;
 h=From:To:Subject;
 b=xOdC08n21cTB2EJ7clwvJjp0WacHRe1DQbCHoJIdd/Gp+8CmFdF0cRHySqw4Qonpd
 eDYXVLXgAJpU24FONWEZIVlUVoj2q2/xH8L6Zk9SRwE4t0r6474u002WXreRKz90qh
 Wl0H0pEfiZqUfwhihEtZ8IXZKNXJ7TjARPn2mUGE=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Oct 2019 11:31:35 +0200
Date: Fri, 11 Oct 2019 10:42:33 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191011104233.69bff813@kosmio.komorska>
In-Reply-To: <20191011104033.058b5e34@kosmio.komorska>
References: <20191011104033.058b5e34@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 601f25a2222fc0d4b216cb08cb9d01a2
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [sfPE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023139_785826_50084083 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] ar71xx: WNDR4300: fix WAN LED behaviour
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

Change WAN LED behaviour to be consistent with other Netgear
routers running OpenWrt. Instead of link speed, use amber colour
to indicate link status. Green LED should be used when Internet
connection is up and running.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ar71xx/base-files/etc/board.d/01_leds | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/target/linux/ar71xx/base-files/etc/board.d/01_leds b/target/linux/ar71xx/base-files/etc/board.d/01_leds
index d21a254b5a..e0bd761f89 100755
--- a/target/linux/ar71xx/base-files/etc/board.d/01_leds
+++ b/target/linux/ar71xx/base-files/etc/board.d/01_leds
@@ -1013,8 +1013,7 @@ wi2a-ac200i)
 	;;
 wndr3700v4|\
 wndr4300)
-	ucidef_set_led_switch "wan-green" "WAN (green)" "netgear:green:wan" "switch0" "0x20" "0x08"
-	ucidef_set_led_switch "wan-amber" "WAN (amber)" "netgear:amber:wan" "switch0" "0x20" "0x06"
+	ucidef_set_led_switch "wan-amber" "WAN (amber)" "netgear:amber:wan" "switch0" "0x20"
 	ucidef_set_led_usbport "usb" "USB" "netgear:green:usb" "usb1-port1"
 	ucidef_set_led_wlan "wlan2g" "WLAN2G" "netgear:green:wlan2g" "phy0tpt"
 	ucidef_set_led_wlan "wlan5g" "WLAN5G" "netgear:blue:wlan5g" "phy1tpt"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
