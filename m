Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B068128FE9
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 21:58:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEOH+OxeK1DjqL0PfFsgvhuZnIuY69ZKigmA5Kc1/QM=; b=fthWYqQvpx9Gol
	xfkcTHiwWS7nV9O9FokkWhSP4+05/0XO7eSJSs0Er02vi+2418J7FuY4v0EDKRywBfZWiMP2vnxjo
	7BsSIpIXgC7eD3j8puwuTX9bA/JYNMLx6wmr0CUcNPHGltiGU9/twagGElGwTz24twOJ5BHO/o4ax
	2kqeshu/aVaEJ+PHvSOUkk2wGKS1lSN5QKr1l5xnIDe0Fo75afy3pLH62cpgWzC2vjyUeWKLyxapF
	pEw04RdHGHH+F2VqfZlCVEwQDZUQ0CRK49mJNLrM6i4+mMhL9ySsBPXaRnvA9xXNOFpEIaVCCNOT2
	mS6YGPHbVjYLUCJHdCLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij8Iw-0001eF-Lv; Sun, 22 Dec 2019 20:58:22 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij8IM-0000yS-F2
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 20:57:48 +0000
Received: (wp-smtpd smtp.wp.pl 22532 invoked from network);
 22 Dec 2019 21:57:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1577048261; bh=4WY/Smf4RtE+xKQU42Tt6Di0jKzv5dwW2s8ip0IjgY8=;
 h=From:To:Cc:Subject;
 b=eBn6Bd0X7M9XeMsBhJPc6r36UyRBIVJoK7Upvvm9LN0cQ5VJNSFCM7B3kXcqCPBh3
 8JXLGNcJ83K54EUpYEW/C8J/7vbato0y0rr9/c+plbG3X/iE9Vg90ay1LBFkcPrhaK
 tHrKUNhNYj3TA4j1aXukPtJ5JgwAkhNoloJhHZxM=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Dec 2019 21:57:41 +0100
Date: Sun, 22 Dec 2019 21:53:29 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191222215253.1538b661@kosmio.komorska>
In-Reply-To: <20191222215052.6901e39f@kosmio.komorska>
References: <20191222215052.6901e39f@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 43f25d910835e0d3c7df9bfbade2be45
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [8QNU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_125746_682444_57556E92 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 2/4] ath79: WNDR4300: increase kernel
 partition to 4M
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Increase kernel partition from 2 MiB to 4 MiB for Netgear WNDR routers
with NAND flash. Change affects following devices:
 * Netgear WNDR3700 v4
 * Netgear WNDR4300

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ath79/dts/ar9344_netgear_wndr.dtsi | 10 +++++-----
 target/linux/ath79/image/nand.mk                |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
index 38dd052f5f..dd212c0d88 100644
--- a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
+++ b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
@@ -106,9 +106,9 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			ubi@8c0000 {
+			ubi@ac0000 {
 				label = "ubi";
-				reg = <0x0 0x7700000>;
+				reg = <0x0 0x7500000>;
 			};
 		};
 	};
@@ -167,12 +167,12 @@
 
 		kernel@6c0000 {
 			label = "kernel";
-			reg = <0x6c0000 0x200000>;
+			reg = <0x6c0000 0x400000>;
 		};
 
-		ubipart0: partition@8c0000 {
+		ubipart0: partition@ac0000 {
 			label = "ubipart0";
-			reg = <0x8c0000 0x1700000>;
+			reg = <0xac0000 0x1500000>;
 		};
 
 		partition@6c0000 {
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index c6a1441ed9..5f893e0044 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -111,7 +111,7 @@ TARGET_DEVICES += glinet_gl-ar750s-nor
 define Device/netgear_ath79_nand
   DEVICE_VENDOR := NETGEAR
   DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
-  KERNEL_SIZE := 2048k
+  KERNEL_SIZE := 4096k
   BLOCKSIZE := 128k
   PAGESIZE := 2048
   IMAGE_SIZE := 25600k
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
