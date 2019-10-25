Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DD1E4ABC
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 14:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a0bMtW0SyxkplbXoYwWzd9e4MKVlrk6iF2+dkdJ3JOo=; b=lomLtoJpxZtCS1
	9opSS+a7K9+eQ5UMKi+m8WWY3YduR3HBAkvnMpHvi3QXX7cEuESXneuSE1+jDA4RpMMJS8gy4fK96
	PKJX8zB2RMwucd2pHY8THPtgbBg4wIK8+AEjzHEoPgintcQnOFIxXpNEBZZ57oearWEy2kRg7E/FQ
	on9BPFXxaXr8IOpwuGtHQrBvrOcAsej/BFrXAWaIf/j0jKNuE7JjgToI0VOjaDn5yrxheyg09VoW9
	6sKHOi7+p+2AnY1HHXARcX/SO/vA1TCYmwJXEasWlh4X1PE1l1K/AwhH4mqLgkpFHyrcupuyWcGyT
	NZmQVfejbZDWg+x8Mz/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyMy-0007KN-Fn; Fri, 25 Oct 2019 12:07:04 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyMm-0007JM-Qu
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 12:06:54 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MxUfh-1i4GeG47K5-00xvUl for <openwrt-devel@lists.openwrt.org>; Fri, 25
 Oct 2019 14:06:50 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 25 Oct 2019 14:06:44 +0200
Message-Id: <20191025120645.3359-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:6YRe+LEvv7Rox9JeBIa4UkTurs4HKruuoJ3/kEqv96pQhri+xB/
 1Wt1+sUsDYLGXGcj7453vtrqFHZyliwStAFOVBQoBDXhpMnnGhb0KPknuNwjm23aWEmSFvY
 XmqwxfIZ+ddrkrBWC9RzpN2KqBd5ExKTanZTe+ecjcMQRlvGwy4up+U7TDbrt3aXKO3tgRh
 8XJD1+DfrNcG68jNrMU5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BNp/RNwSoBQ=:h+MWW+OCnGerEajkUUWiFd
 HkMBC4iwuqs5ZGcUEwlsM6n4lCW/6HN/Zidr5csLgyeHLa6sMSXo1Ukr+1GDnusHPlmJv6lUA
 uDbvZjdwI73UfQEdnwhXRvfZSuixoydkRh6aWFxU0Uc6SVvueKqpdi/a7Ax3LGSqIzNwggivp
 Ejyvqq2KNpqKv9IjN2IxbxszTef8414I+Vr74ISRaqHvDpANp2MKR+y8/ivt/E1w48iBL/vv3
 0qepWMAJZgkOMepXuTekkY9TorzSyrWuJLAddL/Go0IchTnjrk4T0WoZbeHpuVSkoEhtAWh7V
 /Bior7F/+7aimrciYG2AEgtoOXHdxAvMh7m7HyjLthg+IoA0SIqzshsfTXk1DYzuOtQO8iOFD
 3rSKkoFcI/OL5628VrWcEsk8aQ99akgiUOD4JLv/38v0/fi2EH5ibOUUut0qpYLBuzNRBWIBO
 6u5BWsfwKljcOPXxV9VSVNyQCSGec78M7HvbmUeVzntFccI/7u0Cuj3Sax6lYq2hp/ysN3fsf
 G/yvOdDqSyuHbOwfPyHtGi3mVGXGVcAWVMq0WYdb8Sj2U0IRCoRZ0ganoVdNwQCX8AdarKJFo
 UhQW4pvaDR7RsrL2NpJ/zMAAEOa2GDgMosntLt2Eaj01RhL3Z+mOUC5S4G+1wJqc8B/0BoUa/
 7VAIYOKw2CBmHTdSsRqyAwnFqA53zQBKuml1ydoQ6lFfYyseCRhV1A79Ke9bQ6cQo6dvqeSLh
 /rwZo70AwCWNEIk7yiRd7R9CSLcA5TRiLx5p6jKf17a4b+USjq3HDfiui2VbaxentyAs8kVcE
 RbplmcD2bH3FpluTFmBejQCLZfnObeeN9ZbiKVO+obviPpUqNldzDxFGn2Wj+Pv4diwiiYW08
 +9SRxGR2/VdZQtlN1EWHFgqooomyXAU6gtKHxJXlc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_050653_165882_38963881 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: remove redundant
 mtd-mac-address for WiFi
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

When caldata locations are defined with mediatek,mtd-eeprom the
MAC address is automatically read from offset +4. Thus, specifying
that location explicitly is redundant.

This patch removes those redundant definitions.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Not tested on device.
---
 target/linux/ramips/dts/mt7628an_netgear_r6120.dts           | 1 -
 target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts | 1 -
 target/linux/ramips/dts/rt3883_loewe_wmdr-143n.dts           | 3 +--
 3 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/target/linux/ramips/dts/mt7628an_netgear_r6120.dts b/target/linux/ramips/dts/mt7628an_netgear_r6120.dts
index e27406aed4..7fd8924145 100644
--- a/target/linux/ramips/dts/mt7628an_netgear_r6120.dts
+++ b/target/linux/ramips/dts/mt7628an_netgear_r6120.dts
@@ -133,7 +133,6 @@
 
 &wmac {
 	status = "okay";
-	mtd-mac-address = <&factory 0x4>;
 	mediatek,mtd-eeprom = <&factory 0x0>;
 };
 
diff --git a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
index 644882c6a2..538827b03f 100644
--- a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
+++ b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
@@ -196,7 +196,6 @@
 		reg = <0x0000 0 0 0 0>;
 		mediatek,mtd-eeprom = <&factory 0x8000>;
 		ieee80211-freq-limit = <5000000 6000000>;
-		mtd-mac-address = <&factory 0x8004>;
 	};
 };
 
diff --git a/target/linux/ramips/dts/rt3883_loewe_wmdr-143n.dts b/target/linux/ramips/dts/rt3883_loewe_wmdr-143n.dts
index 66711420ac..8cce0d5f38 100644
--- a/target/linux/ramips/dts/rt3883_loewe_wmdr-143n.dts
+++ b/target/linux/ramips/dts/rt3883_loewe_wmdr-143n.dts
@@ -64,6 +64,5 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0>;
-	mtd-mac-address = <&factory 0x4>;
+	ralink,mtd-eeprom = <&factory 0x0>;
 };
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
