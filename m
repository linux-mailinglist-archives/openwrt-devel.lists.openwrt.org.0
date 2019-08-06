Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5E183051
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 13:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DhBmr2+qk5Ow04dvGpO8bmFMgJxpaOBabuwQ+vek+Xk=; b=QxbcT6B5fK4QK0b4QvfPr0jOB7
	bfaa9rM0HcBdbUj90/E4s6eSPQkfmzxf/aWPGMZMevnzam7flYSoe9NfmTSfd4vfz81D/7sEdQDVH
	F7nXpdowSGW1eGvYIwKFkasuNblgfTR/eggSpbm97P+O8w/RR/OJRmjuOPpgprJlj3PZWkFL4V+zZ
	sjb4l1UtEh/3wgjU5XTMZC192dSm5Wb/ZDxnAAQ3IRkfxCbRGMQIywR7I7g+Rie9MHRIfV1LhVrIm
	HaWqLKYlIG7/+xBe5b1DgOblFV4hchya+T2jWQOAjdmUSd9zJQtf8AKO4iCmebwX7JWKVkvcAdW8X
	gDVE2I0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxOi-00074e-6F; Tue, 06 Aug 2019 11:12:56 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxNC-00060e-5M
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 11:11:23 +0000
Received: (wp-smtpd smtp.wp.pl 4639 invoked from network);
 6 Aug 2019 13:11:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565089879; bh=W3fkokBZnsvG7y/DS52nA/zwVrko+b2i8skTfnNhJes=;
 h=From:To:Subject;
 b=EH0mPP9Z+yqYQZegriCc73q40wL9X6l76cMPoEA++8nJ8qOl/RXTgsCvMbu+fmvJ3
 DLSYkmDIP8Yxfj/n06yIDrK2b8JA42pdF6CuqxpzyIbbfhNt8jAMWKZdxWeCSQfLab
 Op9hAn8dZlyNnTXw8hR8uVM+7Qkdm1tHhUcSE1hg=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Aug 2019 13:11:19 +0200
Date: Tue, 6 Aug 2019 13:01:06 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190806130106.0d15cc51@kosmio.komorska>
In-Reply-To: <20190806125153.07c9b005@kosmio.komorska>
References: <20190806125153.07c9b005@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: f43011fc81b159a3c3a4eb948b8b021a
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [UdOE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_041122_384009_6387C5A1 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 6/7] ath79: WNR2200: use gpio_hog instead of
 gpio-export for USB power
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

To follow new best practice for DTS files, this patch changes
definition for GPIO pin 4 on Wifi chip (USB power control) from
'gpio-export' to 'gpio_hog'. Tested and confirmed to work.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../linux/ath79/dts/ar7241_netgear_wnr2200.dts  | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts
index 738fc55ec6..3b4eb7fa86 100644
--- a/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts
@@ -136,16 +136,6 @@
 			linux,default-trigger = "phy0tpt";
 		};
 	};
-
-	gpio-export {
-		compatible = "gpio-export";
-
-		gpio_usb_power {
-			gpio-export,name = "netgear:power:usb";
-			gpio-export,output = <1>;
-			gpios = <&ath9k 4 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };
 
 &spi {
@@ -213,6 +203,13 @@
 		qca,no-eeprom;
 		#gpio-cells = <2>;
 		gpio-controller;
+
+		usb {
+			gpio-hog;
+			line-name = "netgear:power:usb";
+			gpios = <4 GPIO_ACTIVE_HIGH>;
+			output-high;
+		};
 	};
 };
 
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
