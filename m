Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF521721A8
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 15:55:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b78ONjO5ySBCYuSVv5SOX0Z/gNW1GSGR3Qj+CQJVCWc=; b=OViWu8rbF1iqoT
	cf2ymNXupzVFA7GiDmlcQ40dbZBLZcrkOiGcr43osyMIsiHaF6RNl4bpS+iqtyJmeXOAYn8+8h4ln
	1rh6AX0wNOi6pbHDovrHwq73wSRi0mbbuS671Ge5T8WYzXfAa8EVRuPAKVEsHbWdo6Y2xWuC5fYK+
	sPDvbj/p7+UrIc8ms2G5YyOSaAT+2tKX1KG0is1hssthyXx/O/B28iBFsdA8fjTZ6qopSOwWWcInt
	rR9VV4yoH3Tc0luE+l4XLlzCCy93aRlgjai1tr7Gfd5eSKF1ZjVjMZSkQdM3phDZjJftDs60jdjLi
	nm378ZT+9DYpGW2io3FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7KZi-0002La-AF; Thu, 27 Feb 2020 14:55:42 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7KZN-0002CH-Ft
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 14:55:23 +0000
Received: from buildfff.adridolf.com ([188.193.229.61]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1My3Ad-1jKa3l1dHj-00zTEt; Thu, 27 Feb 2020 15:55:18 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 27 Feb 2020 15:54:30 +0100
Message-Id: <20200227145431.42534-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:NMUOQhOrXaX65GfBfU5/0W7iHW0snilBH1tMWqPgWSCySOd+2cy
 cev2jkPjTa9p4oF9cMSvLdNvxG+RfQVuKuqsTT+hXBxqO1XsiPZySLPzEPNUYcMC8AI0Jx9
 oOwfhj7NdBfIdyZfLNtwwRL5kx0fFfROSE7hwfLKtE9xN9RKStcY+qKIRGn/C01Rn+wE1n/
 4UQAla7pxFL/rNqTKKp1A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n5pJr/a0HmQ=:GOMFPO/VbEh5Y3mPhA9fmc
 rlqC7ebkmzTjq4kNmcdr7N9khv3IRL+MlkssWFewCVjfdwUJk9VqsjAYS9sWg1Nen69fsO8YJ
 mdw3JFh/8iF1JmawRsCFNIiD1XSxfTA4EBvxJp79BEl45Sv22nXpg+tXZ+1TjrnpSB2ho0Tc9
 8r+pnK0vW4o32Ajfo+ezIn2c/lIMLD9REkDi1FAPPFjhUkkEZSPd8nSBIs80dhlZ1emHhJ+Ij
 qxn6hWwU7Xl9UlfzJlN6drVJ54fXrQa49WCpXe9+3n1Z04tAJbSXO0tZMGaj2gZMUiyeJfvlT
 0TNoH78y0SK88DFlOZZa/9sHb7F+ksvg9hs3NqIQtXG36I7HjUCwyMCoDhdhaXFC34vgwF9tm
 cmjwfT3bOlL/guxQ4E22a3vQJ5y/xkX2NRYL5+Gp158tDRyNQI3t0HQKAJ3GsbOekra9U+HqJ
 lqijazIC+juEEQN3cGgQn5es2lBKfNd0j3MYcMF+XxF4CZyl4bBX+ZmYV/bqmoSO8L23mHSWm
 si9YWsKc3BSctKj/fUl0NZ51dmpS4VnYvFdyArE/EMkpKHSlLPqStqGJvrJ/CwqAWHih6wIqi
 4aD1raTvh9t35kMKKL2qG/emkG5lAoouH/bz+14y2mqeKCh4u8xMNon2boKhEPszt2LUUV1jk
 SlWgsDkazOH+6OoZUo6WVJc/qbFqJ41Gzs5UbyqLIPU12mrscW80JyIwdpvft92tZknk+imOK
 EEpTXWbK+Pq/TCEHcP/Nl8ar2kqUG68fPC4xTCW8ur7qTgxghxeREbBsguFcMw7rVRp9MKC8P
 S49HxbhuM+wVO0VbXQsGJV0KQVMaDkLjmNOvRnWc8ceyfJo/3WFPa24G1E5W9N7LwN5GBAj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_065521_814913_4ABE76CB 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] kirkwood: fix switch DTS node for
 EA4500 and EA3500
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
Cc: Marcin Fedan <mfedan@gmail.com>, Pawel Dembicki <paweldembicki@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Pawel Dembicki <paweldembicki@gmail.com>

Changes made in switch nodes in d42c9ce commit cause problems with
correct mvsw61xx detection. This commit undoes those changes.

Fixes: d42c9ce326aa ("kirkwood: add kernel 4.19 support")

Tested-by: Marcin Fedan <mfedan@gmail.com> [EA4500]
Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
[rebased, minor commit message/title adjustments]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../arm/boot/dts/kirkwood-linksys-audi.dts    | 23 ++++++--------
 .../kirkwood/patches-4.19/105-ea4500.patch    | 31 ++++++++-----------
 2 files changed, 22 insertions(+), 32 deletions(-)

diff --git a/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-linksys-audi.dts b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-linksys-audi.dts
index 0d00943dfd..05e24aa93f 100644
--- a/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-linksys-audi.dts
+++ b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-linksys-audi.dts
@@ -67,20 +67,15 @@
 		};
 	};
 
-	switches {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		mvsw61xx@10 {
-			compatible = "marvell,88e6171";
-			status = "okay";
-			reg = <0x10>;
-
-			mii-bus = <&mdio>;
-			cpu-port-0 = <5>;
-			cpu-port-1 = <6>;
-			is-indirect;
-		};
+	mvsw61xx {
+		compatible = "marvell,88e6171";
+		status = "okay";
+		reg = <0x10>;
+
+		mii-bus = <&mdio>;
+		cpu-port-0 = <5>;
+		cpu-port-1 = <6>;
+		is-indirect;
 	};
 
 	dsa {
diff --git a/target/linux/kirkwood/patches-4.19/105-ea4500.patch b/target/linux/kirkwood/patches-4.19/105-ea4500.patch
index 5948a1bdf1..3e6f936c5a 100644
--- a/target/linux/kirkwood/patches-4.19/105-ea4500.patch
+++ b/target/linux/kirkwood/patches-4.19/105-ea4500.patch
@@ -23,33 +23,28 @@
  		};
  
  		white-pulse {
-@@ -67,9 +72,23 @@
+@@ -67,9 +72,18 @@
  		};
  	};
  
 -	dsa {
 -		status = "disabled";
-+	switches {
-+		#address-cells = <1>;
-+		#size-cells = <0>;
- 
-+		mvsw61xx@10 {
-+			compatible = "marvell,88e6171";
-+			status = "okay";
-+			reg = <0x10>;
++	mvsw61xx@10 {
++		compatible = "marvell,88e6171";
++		status = "okay";
++		reg = <0x10>;
 +
-+			mii-bus = <&mdio>;
-+			cpu-port-0 = <5>;
-+			cpu-port-1 = <6>;
-+			is-indirect;
-+		};
++		mii-bus = <&mdio>;
++		cpu-port-0 = <5>;
++		cpu-port-1 = <6>;
++		is-indirect;
 +	};
-+
+ 
 +	dsa {
  		compatible = "marvell,dsa";
  		#address-cells = <2>;
  		#size-cells = <0>;
-@@ -161,22 +180,22 @@
+@@ -161,22 +175,22 @@
  		};
  
  		partition@200000 {
@@ -76,7 +71,7 @@
  			reg = <0x1EA0000 0x1760000>;
  		};
  
-@@ -207,53 +226,6 @@
+@@ -207,53 +221,6 @@
  
  &mdio {
  	status = "okay";
@@ -130,7 +125,7 @@
  };
  
  &uart0 {
-@@ -272,10 +244,14 @@
+@@ -272,10 +239,14 @@
  };
  
  /* eth1 is connected to the switch at port 6. However DSA only supports a
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
