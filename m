Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408671B137F
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 19:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HfwCFS3h2j6j6adv0SGks5HBkwINkdz6IhQdDMVJKpU=; b=bdQJgKmOoh3xz8
	TjUKqUO+lBOv/YJ6aeHDAJu/gP5SAi151i264AlQXxz7Y0x4s89jfzmoafr6KEsoWCf916YVe8rcP
	yuf0yRZJpD2xBNewg82XaI2vWlLr/Scfag3zSOgoWX/2i27OaQXUpTtLMFW2syrCxVR7QNZHKF/uI
	9EhEPwgzsF6WmbhuT+nUssgMPB6F/nPb8/DaEblcPhyRgI2yunw+gJR7w+WnCY4EvOjE/eIwk+R1C
	GKxqqG3GJwe1yRiDoRMoyxJYmCN/8PnMF0EK3VrMuqCSePAdrjJSWG/ejkKzelWvRJeH2IilJUyok
	YDQMnE74/oyDSzP+6PdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaWz-0001Yc-9H; Mon, 20 Apr 2020 17:48:29 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaVx-0000bC-Cs
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 17:47:27 +0000
Received: (wp-smtpd smtp.tlen.pl 27404 invoked from network);
 20 Apr 2020 19:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1587404842; bh=f1pN7DB+QfPL1v3XVJgrRbOUMyiddm2I5ji9KZlOL4w=;
 h=From:To:Subject;
 b=hDTGtowULr5/NTJxK4mpcVkXWA2Dv4K+/2/+KwsrCxvFbGWGHmSxX11zQA6PdEB1g
 MC1lupWxo+f4k06N5ykuz+o7Mg0OyTWUxOTY80dICtrDGd5d9Iy4wnp6gcOC/zXe2T
 iPJ1t82LYa6eROdPl/qLRqH22rxHpYF+4Q5gCJPs=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Apr 2020 19:47:22 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 19:47:11 +0200
Message-Id: <20200420174711.52387-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-WP-MailID: 48f8756c7efff760797191dc8d1c5379
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [gcL9]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_104725_662115_21AB273B 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] mvebu: espressobin: fix SATA and USB 3.0
 ports detection
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

This commit removes changes from upstream commits:
8e18c8e58da6 arm64: dts: marvell: armada-3720-espressobin: declare SATA
PHY property
bd3d25b07342 arm64: dts: marvell: armada-37xx: link USB hosts with their
PHYs
For most boards which have factory bootloader this caused that devices
connected to USB 3.0 and SATA port were not detected. For them to
function users would need to upgrade the bootloader to version with ARM
Trusted Firmware 2.1 or later. Unfortunately there is no official
bootloader image with updated ATF component, therefore drop these
properties from nodes. This change was also tested briefly with
bootloader with updated ATF and the ports functioned properly.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 ...l-espressobin-remove-COMPHY-nodes-as.patch | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 target/linux/mvebu/patches-5.4/523-arm64-dts-marvell-espressobin-remove-COMPHY-nodes-as.patch

diff --git a/target/linux/mvebu/patches-5.4/523-arm64-dts-marvell-espressobin-remove-COMPHY-nodes-as.patch b/target/linux/mvebu/patches-5.4/523-arm64-dts-marvell-espressobin-remove-COMPHY-nodes-as.patch
new file mode 100644
index 000000000000..75c4688c75e4
--- /dev/null
+++ b/target/linux/mvebu/patches-5.4/523-arm64-dts-marvell-espressobin-remove-COMPHY-nodes-as.patch
@@ -0,0 +1,53 @@
+From e928880bd8b26fd704231549456ae7da88cecda6 Mon Sep 17 00:00:00 2001
+From: Tomasz Maciej Nowak <tmn505@gmail.com>
+Date: Mon, 20 Apr 2020 14:35:34 +0200
+Subject: [PATCH] arm64: dts: marvell: espressobin: remove COMPHY nodes
+ assignmet
+
+This commit removes changes from upstream commits:
+8e18c8e58da6 arm64: dts: marvell: armada-3720-espressobin: declare SATA
+PHY property
+bd3d25b07342 arm64: dts: marvell: armada-37xx: link USB hosts with their
+PHYs
+For most boards which have factory bootloader this caused that devices
+connected to USB 3.0 and SATA port were not detected. For them to
+function users would need to upgrade the bootloader to version with ARM
+Trusted Firmware 2.1 or later. Unfortunately there is no official
+bootloader image with updated ATF component, therefore drop these
+properties from nodes. This change was also tested briefly with
+bootloader with updated ATF and the ports functioned properly.
+
+Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>
+---
+ arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts | 8 ++++++--
+ 1 file changed, 6 insertions(+), 2 deletions(-)
+
+--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
++++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
+@@ -54,8 +54,6 @@
+ /* J6 */
+ &sata {
+ 	status = "okay";
+-	phys = <&comphy2 0>;
+-	phy-names = "sata-phy";
+ };
+ 
+ /* J1 */
+@@ -121,11 +119,17 @@
+ /* J7 */
+ &usb3 {
+ 	status = "okay";
++
++	/delete-property/ phys;
++	/delete-property/ phy-names;
+ };
+ 
+ /* J8 */
+ &usb2 {
+ 	status = "okay";
++
++	/delete-property/ phys;
++	/delete-property/ phy-names;
+ };
+ 
+ &mdio {
-- 
2.26.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
