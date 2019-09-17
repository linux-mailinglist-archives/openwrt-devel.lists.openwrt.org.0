Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E0FB4DB8
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 14:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=om6lO9IugdBGHPuw44+AOobka5Y1zcfh6klo7a+nx1o=; b=TLwnJiCOAtLLq6J1ZJJk56MgRT
	quLhjetBSAsPKq7GM1LsGgVMJ3/6OWKXPv9Jm0ILQFCblSWGazPtKw2hwhgFLN4XAUnXnh0VnheNY
	8Q/p0ZfFa8or2EJJpuhK/Z6UeztE6mizREj/th3nCmfErpcK8XJUdsXxlnjwt19ll5EnsgKe54OtR
	RiueWcQXEiDabr9+y8lEjRlmGBI1xbtf5Qnehq8ZyVI8uiQw/xVNF1ln7QamC5spEN4W10AzO1+5J
	69la+xpQZYH8o5yHnZ8fMQSYzNVS5m3D2d6H082d6uy7+OQcON1SWdDWUxuNTa6gtDv1l6pVonzAw
	X2eHLhog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACVW-0004Ef-MD; Tue, 17 Sep 2019 12:22:58 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACV7-0004Dh-CD
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 12:22:35 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M5PVb-1iBa4s22nl-001QAM for <openwrt-devel@lists.openwrt.org>; Tue, 17
 Sep 2019 14:22:27 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 14:22:23 +0200
Message-Id: <20190917122223.2745-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917122223.2745-1-freifunk@adrianschmutzler.de>
References: <20190917122223.2745-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:8WdKDhacUCKf2e28TEefvBMCtDmZ83+1o15pIjAbXIWmIOh/69j
 Rap5F6tIzDdb1hcjuZ2fYvaI4FaxbPID0MjbSE5ScW6ec5VfePaI/2Ty+lbh2tVNQF5ORJ8
 yBeoRHOiMpR+O5yvqdUDsvZqQTS0oCIK00yicTQUS9CV715mw+i5+nGN/xVsrOjpCcXbh7c
 NnAoMIowT3QOFrUcMjdmw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WLiyT9AhK68=:dQYkNVBSdJC15Pnh/l/Jv0
 tgENIsDodpC7N8dV02D/2yHqWWv9BRETEm4CXjaInGot2oMxjouLmQ9ZsQZRphdo42pfLV3Jl
 GUukngmqLFvJGEm7ri4RVMypZTR9+QpCUD5eJ7lcAN+dti6ktlZJ2Fl0DDfV/iePkkyN1LJ8X
 9NcrI4eYhzcPwYa6JyPQvxF4Z4cM4zD+UqVYbn7qAfnb4qk9KR1kMGYLQDkuTUoYZYgWLvrLq
 Id14+zL9zvUKs2i7PtHHCrH1S/e6TSjtmVeqgBMgflooyo3C0DkNvypZbM8HSuVts+UmTOhjg
 OUjXuupOWU/ZuAefbd1/IDPMy56CgBPJGvkbwtpS6EXOlY6M3dykAsMGFWY7DCplh0bM4sa4d
 QQD6wXwlzBY7oGGoTccRLLmIAZwdemfSseL6qopDkNwoy8bIeNr5BHj7KAPeVvACBIrZ7zE7f
 /Vj173BKgtoNM3JAbKgH8k1ABAsJOF7sy4QLrVFtheBA3H8BTKdiu7tMx9jVqTadX6RJaYfB/
 Q92gKduS5KQOesr8wFH3KUVSc1lrI7onL1f/Ax6kw3bNDwEm/WH0t4Ded0HtLQYDEB7tFwVVU
 AWIOO2wkhUWMqZh+s7CjRoDZ9dATceb2CtaxkH4RDahYT3R1T0tE+zCBJzsultsJSnW6jC88O
 11a7WDJEEQU+Wu7jycXFZh8yMdGj+RHXdEuizjhzSrhnL7ooFrPniodr5GNgUsHzUwInJM35P
 73YjbgD6yigMSgKz5fWVv11eT+Z4rWMxhqsf6z3+fBKeDK3LY3o3nQM5ghcva1mRjhVdyoNp6
 I4DzMxArnWfdK4K9L6yZxGN8yYThIyKZTwhpwDRq3gsLpngUOP1Oc1xQKtoUyTRWD9xjea4Fw
 brcXP55DRc8OFMK2lbjoO/xLvVMA2Ayc6q0aIaKn4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_052233_707316_8C79041C 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 3/3] ramips: rearrange LEDs for ZBT-WE826
 devices to prevent delete-node
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

So far, for the ZBT-WE826-E the leds pulled from the DTSI are
deleted and then redefined. The config in the DTSI is then used
in two other DTSes for the ZBT-WE826 flash variants.

Since the block is effectively only used for two devices, this
moves led definitions to the device DTSes to prevent the use of
delete-node.
This seems more logical than created the config and then deleting
it again.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../dts/mt7620a_zbtlink_zbt-we826-16m.dts     | 21 +++++++++++++++++++
 .../dts/mt7620a_zbtlink_zbt-we826-32m.dts     | 21 +++++++++++++++++++
 .../dts/mt7620a_zbtlink_zbt-we826-e.dts       |  2 --
 .../ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi | 21 -------------------
 4 files changed, 42 insertions(+), 23 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-16m.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-16m.dts
index 7f2b2646b2..ff72640399 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-16m.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-16m.dts
@@ -5,6 +5,27 @@
 / {
 	compatible = "zbtlink,zbt-we826-16m", "zbtlink,zbt-we826", "ralink,mt7620a-soc";
 	model = "ZBT-WE826 (16M)";
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "zbt-we826:green:power";
+			gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
+		};
+
+		usb {
+			label = "zbt-we826:green:usb";
+			gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
+			trigger-sources = <&ohci_port1>, <&ehci_port1>;
+			linux,default-trigger = "usbport";
+		};
+
+		air {
+			label = "zbt-we826:green:wifi";
+			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts
index e7cdcab5e9..27613d54d6 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts
@@ -5,6 +5,27 @@
 / {
 	compatible = "zbtlink,zbt-we826-32m", "zbtlink,zbt-we826", "ralink,mt7620a-soc";
 	model = "ZBT-WE826 (32M)";
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "zbt-we826:green:power";
+			gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
+		};
+
+		usb {
+			label = "zbt-we826:green:usb";
+			gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
+			trigger-sources = <&ohci_port1>, <&ehci_port1>;
+			linux,default-trigger = "usbport";
+		};
+
+		air {
+			label = "zbt-we826:green:wifi";
+			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts
index 243126125b..d8f51f6692 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts
@@ -7,8 +7,6 @@
 	compatible = "zbtlink,zbt-we826-e", "zbtlink,zbt-we826", "ralink,mt7620a-soc";
 	model = "ZBT-WE826-E";
 
-	/delete-node/ leds;
-
 	leds {
 		compatible = "gpio-leds";
 
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi
index 41c6b07dbd..d66a7baddd 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi
@@ -17,27 +17,6 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	leds {
-		compatible = "gpio-leds";
-
-		led_power: power {
-			label = "zbt-we826:green:power";
-			gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
-		};
-
-		usb {
-			label = "zbt-we826:green:usb";
-			gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
-			trigger-sources = <&ohci_port1>, <&ehci_port1>;
-			linux,default-trigger = "usbport";
-		};
-
-		air {
-			label = "zbt-we826:green:wifi";
-			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
-		};
-	};
-
 	keys {
 		compatible = "gpio-keys";
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
