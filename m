Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC64AF9040
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 14:11:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y9/GAKvX226pDyXeoDYviXTb2pSrAJJrAIPxWcLikQQ=; b=ZJy1h6JjM19f6G
	DH/sXn/1A980BJxrzMmaQNbQyZy33SDah/WTU06jYPijEJAzjjrsC+t2bMlCJWJMqega9ANW8NvdC
	TljGoPy6GynsKMIJly7bvQxXwVppggrYjZ3kdCrTF21zHMV5rW/cXx/cBpexjsHOlCUuxaP94Nnor
	aTXaJutDcCyaGcNgETq3DJ2+JGuY821oUFuai+i3ks+gkMfLu7fUsylqKB+trZB4oKvznm9LK39xw
	u9oZ2Q4PeitTz+tNWnUKCEm3mZDi6qJXV2u3Q6StCUe+jn8vZMiTWqgeqfbVephiX7X1vQWMeUbkL
	Xh/gTis/DdTKL90PROYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVwz-0004WF-Bc; Tue, 12 Nov 2019 13:11:17 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVwo-0004VV-NX
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 13:11:08 +0000
Received: (wp-smtpd smtp.wp.pl 30116 invoked from network);
 12 Nov 2019 14:11:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1573564261; bh=VOB7xzJesDtug6EJmF48hUeC1CnLgTwD31yVw2M8bGk=;
 h=From:To:Cc:Subject;
 b=RHoKB5eecbQEQ8Z3de5FsCin7pCijhRaUcLR1U5MeZ2stHZyMRgnjxSKfRr1NtbNn
 ZglsPL7+aDr7ILLheqO6+BWgJ3hmSz9OFfy1noayOYWUrGcTIGbORJpEuzgVhQHzSg
 FWKF8x4CPQ8FOvHRbvI7BoUlbyj5kU12DVHeu7d4=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 12 Nov 2019 14:11:01 +0100
Date: Tue, 12 Nov 2019 14:02:14 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191112140214.59f2971f@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 384170b4a95f7f2163932a1e50aacecf
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [QZPB]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_051107_118261_5A3029AE 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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

Netgear WNDR routers (AR9344 models) like WNDR4300 have 128 MiB of flash
memory but only first 32 MiB are used now - both by vendor's firmware and
OpenWrt. This patch concatenates two regions of flash memory: ubi part
of firmware partition and reserved (unused) space beyond 'caldata_backup'
while preserving ART backup. No data is wiped or moved away.
This increases area for OS ubi volumes from 23 to 119 Megabytes.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../linux/ath79/dts/ar9344_netgear_wndr.dtsi  | 25 +++++++++++++++----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
index 16a4e3f6e8..d5a699e774 100644
--- a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
+++ b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
@@ -97,6 +97,22 @@
 			linux,default-trigger = "usbport";
 		};
 	};
+
+	ubi-concat {
+		compatible = "mtd-concat";
+		devices = <&ubipart0 &ubipart1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ubi@8c0000 {
+				label = "ubi";
+				reg = <0x0 0x7700000>;
+			};
+		};
+	};
 };
 
 &pinmux {
@@ -155,8 +171,8 @@
 			reg = <0x6c0000 0x200000>;
 		};
 
-		ubi@8c0000 {
-			label = "ubi";
+		ubipart0: partition@8c0000 {
+			label = "ubipart0";
 			reg = <0x8c0000 0x1700000>;
 		};
 
@@ -172,10 +188,9 @@
 			read-only;
 		};
 
-		partition@2000000 {
-			label = "reserved";
+		ubipart1: partition@2000000 {
+			label = "ubipart1";
 			reg = <0x2000000 0x6000000>;
-			read-only;
 		};
 	};
 };
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
