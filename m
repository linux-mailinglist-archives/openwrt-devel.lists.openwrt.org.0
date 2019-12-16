Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 970AF1205C6
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 13:31:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YhUTRgHDCnJaES6/LN07egZvNzqV5ZZVwXixGZPGZhk=; b=od2VZfTDyvPetMJNbj5iL5KOrm
	xLlJtdVhiUl7sdssO4TqSw2arUPeoruQVgYoqslR9F3OcwDWrBluargOYwfk8nQ/rsXYGmMB833dA
	j9K0yvc7SX2U/WirjV5pnDhxd5nV30UvmVU40wOolrII4A4/NWzQvwk5azuCo5RpWTkaugwroKYzR
	2jCjvnZLeR4wvA542MD6/AClEtF4RZ5VeTUUZ2wzbqFFHwbkKXabwk+1k5ELCSQNOMLU4j5OdJ5Cs
	y88fIAu+ApCrRpb96dGEd3y+eSCu9/i+v9QmQyupYp1UOFLWlT6qc1PdBNMZFzmZbtz4zAmjG5JgK
	0smEM78A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpWX-0000LJ-VT; Mon, 16 Dec 2019 12:30:54 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpWA-000093-6g
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 12:30:32 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M6EKU-1iebX807b6-006iB9 for <openwrt-devel@lists.openwrt.org>; Mon, 16
 Dec 2019 13:30:26 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Dec 2019 13:28:17 +0100
Message-Id: <20191216122817.22628-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216122817.22628-1-freifunk@adrianschmutzler.de>
References: <20191216122817.22628-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:erIjXItzfvNFIk52hCYZtBjVTwQ7BcppZMqWlv60rnTZIpkn1BD
 Cso+QUVB0z5N44ztXPNutJhFYtOzO9Y/NPOOIx/ySyO46KecDsFK1pJF8iCYCGn/oANN4gK
 R9XTkLV+VaNNkIqIRlYGYCBs0XCqeUyrS/waKKprFoTsDIoL3MUc7kH8wmGA5++oygh3Io0
 w1xsDsT1l6dkTvbq9U2Cg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mB6HGWZz3fk=:CX7T68RV30Fby7JILOS3GO
 pgf9OUMTqikOwopU/TZxk2BhcJWgaA68nVTEm/Ey6TWJUcJiRk+/+pRBuw8roWi865uVgfxG5
 mqAOJ8JTcJDm9ISpe2TZh50h9mTK9BTqVjwjU/NAfNmHlu9lcQTned7KOSzpJG7ujkBWJP2Mj
 2YVsviHIGgU/eHYtDtcS9aixu8y24PASl1QDC5qhLeg6q3vwI2JzbOwQrgq/GZuc3HooV+l/t
 KAJ1WEITK5IByrXvc3rQo634VC76E11Sh48mwzCfuK7QTPTcXJO0zrJqMjZfNDEyobcYIBjPz
 gd35MvD/0vGBE2vjpBH0yA5rhqdUJxijqhBqLvK2z9iFvu0PpYJMy7i/vg2IsFEN/nA/0flRk
 rdECQwGh/fRB90GC4Cgx6j1Wm7TgbY7s/77H2j9aCeHPJ7H2EmPHAbxkqCXTzJvxGo5PyldRv
 QcF7Bn2tndxt69ohnLvV8jewZI2gMhtJ1TDx9C8JlI/DcmYUZHG02lmKSrMq/xy7JcyRwDUpw
 FT2iOt5pxieG+7WmzzOAFsowPR1wSUagu6cqnOOe07Wt+dpT4DLliwejSHDyhK+zVfkrtvZEv
 Zk0EQhTZ/Uw/X0QDvLPJ/Nu5joXOCChBVr3eqrrecRnj86GZAldRaeD7pTY06lSNNI3mRyEkV
 MBn+8oIFXtpD000pwIbyqC3NCoVkKDaxXU/HrM8u1iwLVvK1DJWSZ4oNP2rR2GwIThUY4wexZ
 ZVN43IS+g3Df17Xtx7XOW1V5I9yo4jIb+5p440Sk7NR7ipxbRxcXgL0zk+/ygbGI5X6UfMeQV
 R+8DCx8lMR1gqAh0Ql3TN+oH+YQbPUl1nfJP+ACfpWJh3gOS4Jk4Tdwz1TSq72dhJxIL4oNXY
 g3XZWd+DSpvBG4FtLxK6ti1qjVNw7wWs6PX3zoZys=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043030_540722_26629DB8 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 4/4] lantiq: remove ar9_lantiq_easy50810.dts
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

This file seems to be orphaned, no device setup existing for it.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../boot/dts/lantiq/ar9_lantiq_easy50810.dts  | 73 -------------------
 1 file changed, 73 deletions(-)
 delete mode 100644 target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_lantiq_easy50810.dts

diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_lantiq_easy50810.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_lantiq_easy50810.dts
deleted file mode 100644
index 87ba62de33..0000000000
--- a/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_lantiq_easy50810.dts
+++ /dev/null
@@ -1,73 +0,0 @@
-/dts-v1/;
-
-#include "ar9.dtsi"
-
-/ {
-	compatible = "lantiq,easy50810", "lantiq,xway", "lantiq,ar9";
-	model = "Lantiq EASY50810";
-
-	chosen {
-		bootargs = "console=ttyLTQ0,115200";
-	};
-
-	memory@0 {
-		device_type = "memory";
-		reg = <0x0 0x2000000>;
-	};
-};
-
-&gpio {
-	pinctrl-names = "default";
-	pinctrl-0 = <&state_default>;
-
-	state_default: pinmux {
-		exin {
-			lantiq,groups = "exin1";
-			lantiq,function = "exin";
-		};
-	};
-};
-
-&gsw {
-	phy-mode = "rmii";
-};
-
-&localbus {
-	flash@0 {
-		compatible = "lantiq,nor";
-		bank-width = <2>;
-		reg = <0 0x0 0x2000000>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "uboot";
-				reg = <0x00000 0x10000>; /* 64 KB */
-			};
-
-			partition@10000 {
-				label = "uboot_env";
-				reg = <0x10000 0x10000>; /* 64 KB */
-			};
-
-			partition@20000 {
-				label = "firmware";
-				reg = <0x20000 0x3d0000>;
-			};
-
-			partition@400000 {
-				label = "rootfs";
-				reg = <0x400000 0x400000>;
-			};
-		};
-	};
-};
-
-&stp {
-	status = "okay";
-	lantiq,shadow = <0xfff>;
-	lantiq,groups = <0x3>;
-};
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
