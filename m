Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CD6E4A1A
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 13:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GdymiurtbXDF/26xc4C4vTrIF1mdDtZd9LUK9Gulqv4=; b=RbspRYTozbmsuu
	qZOw7lo9FE5xdFMlB2CuiLTHTYT60PDbce3AeKBsCfbk989g0NusPJRR2M52uVaAoQ3lesxsCf/Pt
	z1papwFio2fWO0fj4trI+OUx4tYZQ+CHGbd9YVI3wYxVqMmEpR4SH/HIo6wgHQKlqhAKSrnDYblwT
	49BpLbrqBzW4qUBq67t9ibXtLIQPp7OWWROojQ65Df0lsUrYFt/r0LSp3zYvO9DRXgm0WeXKRIVwV
	Vpby8zJytaCH6Idl1X6sDlSuAdLTO/dYsHhiccmeSfX76wpRXqi4F/Bz4+Tgt/m/mG8Qx2iPO+4MO
	BU8TmqPDJlnN1Nq9/Aug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxvf-0001bf-Re; Fri, 25 Oct 2019 11:38:51 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxvY-0001al-9h
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 11:38:46 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MORMu-1idoUg0vd8-00PsGB for <openwrt-devel@lists.openwrt.org>; Fri, 25
 Oct 2019 13:38:40 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 25 Oct 2019 13:38:37 +0200
Message-Id: <20191025113837.2844-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:yGlyd6q5qmEB+XlNSDQTWtdQcXhZ/5T5zufN4WW/VsDNduJzjJN
 +MeE21J5sbBsfN2vEAZpJ8yRfHhaA9XaEz0q6chuVhiHzZhbDPovTH/l+dQf5+k5gSwtu+h
 4gitNSSQXaVF3bnZBwKHCMoudsEr1JYzhyYWGUzkXWKMGkvSNKpKI1/+kSd2UvYCo2mzDLJ
 9hjoWUQmcGsFfhXq0GEKA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jLZPAFOqixM=:UuxMt+HC4lfxlg+PrdlLUx
 vAjzZmOFEK5PhF0rSpM1p8OCAkBElkAuvSuLyCyaIKuVPNVSyxdTJRfqJJBzFFF8NO91xnRpQ
 Q14pzUxiyV8bgIpU9LOv2zFmk6RDo7S9en8uTcxKeGr733Wq/q1n7SRWwTwTlzl4DT05532z3
 MOgmxNTtt6zM9RkeAOqHHoJ7JJo0oEh3wDNhol99Qr7Tbup4YGYpt7OI3a3DpZrkckX93hfiO
 zjLPpLLuuDQHi08/LKIUJZdtUg5NlMRB2RAkYnl5LqZ6MGuGs2wKhCgPKbNveTTVjh6b9Trit
 1IkbZXUycC2B0Nw7bC3iMwBNQQBk64Ld8ggEuS4GY+rLMfvgp3w/uCKkPEZD5AxgFAQWAWSRA
 uNdPdWSu7HZ2cpGqxDVUuiC0uFAn5jXeYeB+GmVsjlha/ufujoKJaEY+lzqGiUNNkoMZK/zUw
 mlfhjr61HbEbIOtvN1l336I0ow/1UoqoAbVGXqGHXkwvDpXMdTDsM4VFZmxF/FblYT7HpEhz5
 BqP+BSMdzPFqDVoRDh4Y01dJcao6nw92SIG3Droh4BAHutjLGUgrEnW58KI1t8bo+EFXZVvw2
 wxdtXakhzsHMgXaEVKezZmgHZFui0+kWmhMeWg+BBPWBea9IeY16op0OlIG8EPuLW7Nv469io
 yzIGxS2ki8cWE8OjDAW1ovdeDeQcEfexqgS44pO1CgqPDzPwkjbKZP5LYicVvoJP+3f8VhT7X
 r1eUQ1eathKCff44youKwp4A5t1uSYR8pP3nkPWZ8Mar2E3KSktNd/5i9yZrrRX45++XfwV0F
 /1xi8WqI6EJMPWacaYnpZtC0iC6GKFUe6DdxloOFnuCERDSVcMfEZpd8VvI9MEOlQEetjgOLy
 ag7XWJvcPeJcNi/6hIOrfWEtC02ZzICqYVF+hik68=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_043844_637389_164F2F16 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: remove redundant mtd-mac-address for
 wmac
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

For several devices, wmac MAC address is set from art 0x1002
explicitly by using mtd-mac-address although mtd-cal-data is
pulled from art 0x1000.

With the MAC address in 0x1002, the driver should automatically
use it when reading caldata from 0x1000. Thus, remove the
redundant mtd-mac-address for those devices.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Not tested on the devices affected by this patch, but obviously
tested quite often with other device support PRs prior to merge.
---
 target/linux/ath79/dts/ar9331_8dev_carambola2.dts        | 1 -
 target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts | 1 -
 target/linux/ath79/dts/ar9331_etactica_eg200.dts         | 1 -
 target/linux/ath79/dts/ar9341_pcs_cr3000.dts             | 1 -
 target/linux/ath79/dts/ar9344_pcs_cr5000.dts             | 1 -
 target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts      | 1 -
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi     | 1 -
 target/linux/ath79/dts/qca9531_glinet_gl-x750.dts        | 1 -
 target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts      | 1 -
 9 files changed, 9 deletions(-)

diff --git a/target/linux/ath79/dts/ar9331_8dev_carambola2.dts b/target/linux/ath79/dts/ar9331_8dev_carambola2.dts
index 8af378ef92..cc0320d652 100644
--- a/target/linux/ath79/dts/ar9331_8dev_carambola2.dts
+++ b/target/linux/ath79/dts/ar9331_8dev_carambola2.dts
@@ -132,5 +132,4 @@
 &wmac {
 	status = "okay";
 	mtd-cal-data = <&art 0x1000>;
-	mtd-mac-address = <&art 0x1002>;
 };
diff --git a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
index 311a506b5d..639c6523d6 100644
--- a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
+++ b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
@@ -116,5 +116,4 @@
 &wmac {
 	status = "okay";
 	mtd-cal-data = <&art 0x1000>;
-	mtd-mac-address = <&art 0x1002>;
 };
diff --git a/target/linux/ath79/dts/ar9331_etactica_eg200.dts b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
index 5b9dbede97..079cc88767 100644
--- a/target/linux/ath79/dts/ar9331_etactica_eg200.dts
+++ b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
@@ -127,5 +127,4 @@
 &wmac {
 	status = "okay";
 	mtd-cal-data = <&art 0x1000>;
-	mtd-mac-address = <&art 0x1002>;
 };
diff --git a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
index 79611a687d..a6348d4cba 100644
--- a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
+++ b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
@@ -139,7 +139,6 @@
 	status = "okay";
 
 	mtd-cal-data = <&art 0x1000>;
-	mtd-mac-address = <&art 0x1002>;
 };
 
 &eth0 {
diff --git a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
index 8f8ae4afcf..6589101099 100644
--- a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
+++ b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
@@ -220,5 +220,4 @@
 	status = "okay";
 
 	mtd-cal-data = <&art 0x1000>;
-	mtd-mac-address = <&art 0x1002>;
 };
diff --git a/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts b/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
index d98cbe566d..57312f6ff4 100644
--- a/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
+++ b/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
@@ -143,7 +143,6 @@
 &wmac {
 	status = "okay";
 	mtd-cal-data = <&art 0x1000>;
-	mtd-mac-address = <&art 0x1002>;
 };
 
 &pinmux {
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
index b72aa65522..67a3331ab3 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
@@ -141,5 +141,4 @@
 &wmac {
 	status = "okay";
 	mtd-cal-data = <&art 0x1000>;
-	mtd-mac-address = <&art 0x1002>;
 };
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
index de28f6c3f0..ae4553a207 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
@@ -133,5 +133,4 @@
 &wmac {
 	status = "okay";
 	mtd-cal-data = <&art 0x1000>;
-	mtd-mac-address = <&art 0x1002>;
 };
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
index 4f65b2d2e2..dc3ea24ae6 100644
--- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
@@ -173,5 +173,4 @@
 &wmac {
 	status = "okay";
 	mtd-cal-data = <&art 0x1000>;
-	mtd-mac-address = <&art 0x1002>;
 };
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
