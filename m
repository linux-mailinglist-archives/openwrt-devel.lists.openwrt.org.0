Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3664F18941
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 13:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vdr/+VHAEJoSj5HSawI60GuvJlKoF4WK5aENB5PQR6Y=; b=IgUMLiIXMvSOlj
	Z+goSGMAp7wLVBWuMjE3G5hL5PyDAUjs9n8RwLlANzqMtCu2dEXk1VpTyI9SU5aJfEucln1wxfaFu
	UDXrLc6R5nzs91I9y3t2S37/KSUgdyMiCJ40zrFgjXiwdEW66y3wQx8JkpIjIwVTUQXOhUZ8woKp6
	2gzL6Ra8V4EdB4TBCWrQcHZQCufkDHFixOKMZYJg0HGNKlOryEnSTrQ6i2jOSNhHOCWHeprpFyRTS
	8OgUgP/0saeyI8YkAe0R3jL/kBoYTVZs7lSHu/3c3xAdRdlRib48S/OGBaSfZs78hBIuXAy7g/K86
	J7grPDVgnXSrjOx2FJug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOhZf-0006Eb-K3; Thu, 09 May 2019 11:50:55 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOhZY-0006Du-K8
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 11:50:50 +0000
Received: from localhost.localdomain ([178.26.242.10]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mo6WJ-1gx5zc1EdP-00pck9 for <openwrt-devel@lists.openwrt.org>; Thu, 09
 May 2019 13:50:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 13:50:39 +0200
Message-Id: <20190509115039.6127-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:81pO3ElQ0Igs7GBWKUkuhQxkadvEfNSO3OHaeRePjbYGiTPtVT2
 mjW3DKgetw7QH/ZnlNV6BZ0g4cSa6HzQ9JG0APjSvYI7zyRe9rP3DWBIw8PS90DkAYCMNRD
 l72+XL/m59RvDaez/3u+H7Fpf7+iQgzoyJnkw7Glqj3fMDyNHfHPciqZWreF1C6gwNMYBpP
 LJV6Uk1AVpZXspIg+axlg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MJNpt4xjQkg=:IhwHu9RX1si7/Gg7Mr0cB7
 t8vgGzCFZkzuLOI5XudZpKzfynzLaOyQ8Qqjb2WxoT5inbVnh1Ui7WiUP6tUog5iGv2+shNU7
 z+4XuXG64tJqNnuBSZ8WEIRcXwDqcFQRnMQvWd97z7fRRFNU27xK0wvrEEhyHT583zrGyn5wW
 KKJurU2IAHYj5QFNOykFM/9JLTPIQuKKe6W2yFIYEaHMwls+ASieL2LGa2SSVaWSu3ejcoQ4C
 dUchf+sNmkN13pPdJa+2Fvans4BU/yDSVbs5fXaIMUVTB79e+1IftEmixVQAvkJ6XldkMnPws
 /C0p38qpvCjI3C8EmaIhBUGqZ7jWKPGR+HcTIyxLtp0BUEC0YJLX9Klfjxv0GI2UhGMTVgQS5
 q7StmJDabtrOGAqyHY8m3fSUVd9oDwwOeEEEG6Bmy8R6cVXfJgyfH4jGAwijT4PT9cKgRrRXN
 eupzBQ0pp6cRMN1cBpjm7BgS+j+xQ0RDJu0tgDEeT2Jwu6tuOwc2CP5MxbhGLhPhy+U6SL7cO
 9S2mS6oQ4GFU7JQMKKyWuxRvFojjU8X7vwVYHIqRxQ5UAGeG/663C1GFMlmxOg73CspC5iQQv
 SSfPczpZglUCW9w1ZqpsOr7IS6BFTn4eH5v6K/RNmBODJbhXXYcNzeDDlSKN8rGeqLS2zmyIR
 xb/+nqEjtWyZziIWfVvcqBs/vD2UuAYyFY3TmbBVtWcJYMePeIQvQuWdkMk08mZfRPC3OmGME
 QbVXJa2WFvN8nbNCUwGWr+pv+QvDqV+fare+kFLP/YgP1avJo0e/CxplUEo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_045048_966913_6DBF82B7 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] ath79: Add missing read-only properties
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The read-only properties for non-firmware partitions seem to have
been assigned rather randomly.
I went through the DTS files in ath79 and assigned the read-only
to all partitions that seem to require protection.

Also fixed a whitespace error on the way.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi          | 1 +
 target/linux/ath79/dts/ar7241_ubnt_airrouter.dts              | 4 ++--
 target/linux/ath79/dts/ar7241_ubnt_unifi.dts                  | 1 +
 target/linux/ath79/dts/ar7241_ubnt_xm.dtsi                    | 1 +
 target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi            | 1 +
 target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts   | 1 +
 target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts             | 1 +
 target/linux/ath79/dts/ar9330_pqi_air-pen.dts                 | 1 +
 target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts      | 1 +
 target/linux/ath79/dts/ar9342_iodata_etg3-r.dts               | 1 +
 target/linux/ath79/dts/ar9344_ocedo_raccoon.dts               | 1 +
 target/linux/ath79/dts/qca9531_engenius_ews511ap.dts          | 2 ++
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi          | 2 ++
 target/linux/ath79/dts/qca9531_glinet_gl-x750.dts             | 2 ++
 target/linux/ath79/dts/qca9531_yuncore_a770.dts               | 1 +
 target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts          | 1 +
 target/linux/ath79/dts/qca9558_engenius_epg5000.dts           | 1 +
 target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts | 1 +
 target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi            | 4 ++++
 target/linux/ath79/dts/qca9558_ocedo_koala.dts                | 1 +
 target/linux/ath79/dts/qca9558_ocedo_ursus.dts                | 1 +
 target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts        | 1 +
 target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts           | 2 ++
 target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts        | 3 +++
 target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts        | 1 +
 target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts        | 4 ++++
 26 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
index 8e934429a3..7d185825a1 100644
--- a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
+++ b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
@@ -79,6 +79,7 @@
 			partition@40000 {
 				reg = <0x40000 0x10000>;
 				label = "u-boot-env";
+				read-only;
 			};
 
 			partition@50000 {
diff --git a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
index 9e38bf8087..774a45f22d 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
@@ -30,9 +30,9 @@
 };
 
 &usb_phy {
-        status = "okay";
+	status = "okay";
 };
 
 &usb {
-        status = "okay";
+	status = "okay";
 };
diff --git a/target/linux/ath79/dts/ar7241_ubnt_unifi.dts b/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
index 27aec88cca..99a6677bd7 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
@@ -78,6 +78,7 @@
 			partition@1 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@2 {
diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi b/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
index 5466575229..88e6952b2e 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
+++ b/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
@@ -57,6 +57,7 @@
 			partition@1 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@2 {
diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
index 5165efa859..a9ff732b6e 100644
--- a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
@@ -87,6 +87,7 @@
 			partition@40000 {
 				reg = <0x40000 0x10000>;
 				label = "u-boot-env";
+				read-only;
 			};
 
 			ART: partition@50000 {
diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
index 97bfd0f842..2219497225 100644
--- a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
@@ -139,6 +139,7 @@
 			partition@40000 {
 				reg = <0x40000 0x10000>;
 				label = "u-boot-env";
+				read-only;
 			};
 
 			art: partition@50000 {
diff --git a/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts b/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
index 53df36760f..a219a3b6fa 100644
--- a/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
+++ b/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
@@ -102,6 +102,7 @@
 			partition@1 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@2 {
diff --git a/target/linux/ath79/dts/ar9330_pqi_air-pen.dts b/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
index 06f728b267..b1238288e6 100644
--- a/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
+++ b/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
@@ -92,6 +92,7 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			art: partition@50000 {
diff --git a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
index 43bec35fa2..4881f1b4f2 100644
--- a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
+++ b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
@@ -85,6 +85,7 @@
 			partition@1 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@2 {
diff --git a/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts b/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
index 9fce43fd4f..8b0ac7e402 100644
--- a/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
+++ b/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
@@ -72,6 +72,7 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@50000 {
diff --git a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
index 0875c319b9..c5b4775167 100644
--- a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
+++ b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
@@ -100,6 +100,7 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@50000 {
diff --git a/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts b/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
index 62b6a766fc..e64911b6b6 100644
--- a/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
+++ b/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
@@ -113,11 +113,13 @@
 			ubootenv: partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			art: partition@50000 {
 				label = "art";
 				reg = <0x050000 0x010000>;
+				read-only;
 			};
 
 			partition@60000 {
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
index ceb2bfa0ff..a68e5e9f64 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
@@ -88,6 +88,7 @@
 			partition@1 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@2 {
@@ -99,6 +100,7 @@
 			art: partition@3 {
 				label = "art";
 				reg = <0xff0000 0x010000>;
+				read-only;
 			};
 		};
 	};
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
index 79cd51673a..c3000dd85a 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
@@ -103,11 +103,13 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			art: partition@50000 {
 				label = "art";
 				reg = <0x050000 0x010000>;
+				read-only;
 			};
 
 			partition@60000 {
diff --git a/target/linux/ath79/dts/qca9531_yuncore_a770.dts b/target/linux/ath79/dts/qca9531_yuncore_a770.dts
index 18ad6307a1..9b9129d14e 100644
--- a/target/linux/ath79/dts/qca9531_yuncore_a770.dts
+++ b/target/linux/ath79/dts/qca9531_yuncore_a770.dts
@@ -98,6 +98,7 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@50000 {
diff --git a/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts b/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
index 995ecb3b73..5dce94e222 100644
--- a/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
+++ b/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
@@ -90,6 +90,7 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@50000 {
diff --git a/target/linux/ath79/dts/qca9558_engenius_epg5000.dts b/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
index 6179150fdb..d4863db147 100644
--- a/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
+++ b/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
@@ -126,6 +126,7 @@
 			partition@30000 {
 				label = "u-boot-env";
 				reg = <0x030000 0x010000>;
+				read-only;
 			};
 
 			partition@40000 {
diff --git a/target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts b/target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts
index 9e2f67977a..8dbbdf12ef 100644
--- a/target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts
+++ b/target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts
@@ -134,6 +134,7 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@50000 {
diff --git a/target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi b/target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi
index 21c25a5717..07209549cb 100644
--- a/target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi
+++ b/target/linux/ath79/dts/qca9558_netgear_ex7300.dtsi
@@ -156,6 +156,7 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			caldata: partition@50000 {
@@ -173,11 +174,13 @@
 			partition@70000 {
 				label = "config";
 				reg = <0x070000 0x010000>;
+				read-only;
 			};
 
 			partition@80000 {
 				label = "pot";
 				reg = <0x080000 0x010000>;
+				read-only;
 			};
 
 			partition@90000 {
@@ -189,6 +192,7 @@
 			partition@fc0000 {
 				label = "language";
 				reg = <0xfc0000 0x040000>;
+				read-only;
 			};
 		};
 	};
diff --git a/target/linux/ath79/dts/qca9558_ocedo_koala.dts b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
index 23835492a3..2b861ec8c0 100644
--- a/target/linux/ath79/dts/qca9558_ocedo_koala.dts
+++ b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
@@ -95,6 +95,7 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@50000 {
diff --git a/target/linux/ath79/dts/qca9558_ocedo_ursus.dts b/target/linux/ath79/dts/qca9558_ocedo_ursus.dts
index 1a92da3946..926cc70e4d 100644
--- a/target/linux/ath79/dts/qca9558_ocedo_ursus.dts
+++ b/target/linux/ath79/dts/qca9558_ocedo_ursus.dts
@@ -68,6 +68,7 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@50000 {
diff --git a/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts b/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
index 1e3cf40f71..fa74cf2344 100644
--- a/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
+++ b/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
@@ -114,6 +114,7 @@
 			partition@1 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			partition@2 {
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
index 439acaae85..de43fcda26 100644
--- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
@@ -87,11 +87,13 @@
 			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
+				read-only;
 			};
 
 			art: partition@50000 {
 				label = "art";
 				reg = <0x050000 0x010000>;
+				read-only;
 			};
 
 			partition@60000 {
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts b/target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts
index a9174df4fa..42db1d7a24 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-a7-v5.dts
@@ -39,16 +39,19 @@
 	info: info@f40000 {
 		label = "info";
 		reg = <0xf40000 0x020000>;
+		read-only;
 	};
 
 	config: config@f60000 {
 		label = "config";
 		reg = <0xf60000 0x050000>;
+		read-only;
 	};
 
 	partition@fc0000 {
 		label = "partition-table";
 		reg = <0xfc0000 0x010000>;
+		read-only;
 	};
 
 	art: art@ff0000 {
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts b/target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts
index c106a63eb8..7a88f56a02 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-c2-v3.dts
@@ -124,6 +124,7 @@
 			partition@20000 {
 				label = "uboot";
 				reg = <0x020000 0x10000>;
+				read-only;
 			};
 
 			partition@30000 {
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts
index 8059b48510..efe83cd5ee 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v5.dts
@@ -33,6 +33,7 @@
 	partition@40000 {
 		label = "partition-table";
 		reg = <0x040000 0x010000>;
+		read-only;
 	};
 
 	art: partition@50000 {
@@ -44,11 +45,13 @@
 	info: partition@60000 {
 		label = "info";
 		reg = <0x060000 0x020000>;
+		read-only;
 	};
 
 	partition@80000 {
 		label = "user-config";
 		reg = <0x080000 0x040000>;
+		read-only;
 	};
 
 	partition@c0000 {
@@ -60,5 +63,6 @@
 	partition@ff0000 {
 		label = "default-config";
 		reg = <0xff0000 0x010000>;
+		read-only;
 	};
 };
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
