Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BE11719DD
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 14:48:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=edg66OaZDMBkY8AksG7J2rHilUCOlio488RlCmHdLB4=; b=IxoYwZJu8WFeFDsniY6eegRUjC
	SUN1vcWf7Jw1D0V4VvEeEK/FdX1mGPSdw6clMr74e7yyUo9I4Bq2g+Z6cU8heUcH3TfuFq5KijsyP
	mk8eK9pEcFIIqRUoXkEnBkxVB4hVmGCdUnePFei5NylmNgKvS8xCLsQ4kTcjaQ2rfii04hmGZUrjk
	LTRBgw2lx78F6QEUwEtM9E9kHqy00SJsVP1GvWpDm9TDk+zHRbz6/r+99INseY4ywe4gqDCD7oWYJ
	E8arkM8juFqFyVzDqsn/D0eb+Km5ROGkxYtlF1EPITpWiqHDppPBH2Rk72VKXD+5xDfyGmwELTB0q
	4jjadyeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7JWq-0005IT-3Z; Thu, 27 Feb 2020 13:48:40 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JWW-00056J-NS
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 13:48:22 +0000
Received: from buildfff.adridolf.com ([188.193.229.61]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N1Ok1-1jYuSj2u8h-012rME for <openwrt-devel@lists.openwrt.org>; Thu, 27
 Feb 2020 14:48:14 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 27 Feb 2020 14:46:25 +0100
Message-Id: <20200227134625.48028-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227134625.48028-1-freifunk@adrianschmutzler.de>
References: <20200227134625.48028-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Ic2PasPmICcKhVATFl61vQErCkWIQrvseJG4bAwG03T7QfQogJN
 CzO9DSpa7tkKZicD8u+wuQcWGMyUa4166MciQmlSas+VayUU3PSC/xgwLDG0Du9KtFu1YfR
 rpBZdipoB2RGSKirir79PwQXTeXMkM0YPZOnzqx4Fo+RbCfnyJcSod4o4ycrT9EeqP+ZfA3
 qxo432L9CeD4n29Gm2MaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BfO4UsoMCR4=:eKdIx3yr3ZJMtywIXZpk0l
 aGZxYjfDX5HGmZrcvUqcevsWIvo5tFIDnqZnHJE3SS6gzr01hm7vinflrCt83k6HX/aqrzz+e
 GTFj0H7/qOoLnaWtmdvT4M0FmA2eBqCash4Dm8zk6s+p9RBoXrPF4tm44UpweIcvr0oM4ojtK
 hnoDa/OZCaurVywzn/68iUTMRP+SHvXRfd7BsHmHiGwGsvfwfLr+eDanyCuK5TGh1NCt9fPK3
 WBo3fy7IicbWH6IcDxIh7uPplB70eiN58w7Rwt+mtIDSZrVNt3LwnPzewyxsbyhV9718yen5G
 dXAY67SVD6U1Pi1gO8atix3P3q8yn0PBao99pouBenf0lcUvEuVq0uwMCdAF4nzKQdXh9xr35
 uvfOrIr5WO3k/wZdRN0fyNyHNR65iJdJgbgYF2bVy0WzYdjYsgaEDp4kAbjshxIw+bjY/bMBA
 FwtEcyo3Z3NOOggPOv6wfh2MTQK6H6TVB7zm7T7wChFyOkHnh6ZsiyT1MsxDl2PBRiodZ2zdR
 7dlhjUjN/as5vo5NhZRXltEs5ewMMcJaiWgvNEhN/tSfuyuCloGVxoZE2ENcj1I0wJDTQrdzK
 SbmJOfX4bZbfzWJ1cxpjOmJNwKSPlrtw47EZSNfm7EHlhs8elCJCnwLuuG7NI6e4u+E6tjZnG
 ZBVwH7ezJiAWQZQbpnm/J13urWsHvQNMXG/NfW7VOHBoBvRD+qzC6mkvpkoOswfsPGOvnb6IQ
 zyrCdqM+IalasDS3Mr3dvSh8FG+0P9y7rAf4g5PrlPxqRqeV4Xu81777dUu2Gmhov8E03nqJu
 +RYtexotAs55r1Bxc/zl5kjoMa6ClXS1khkv/yhHaLxPjvcKQxodeKYODDvd1jd6vckOMri
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_054821_054310_6136AF9A 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] ramips: fix and tidy up DTS for D-Link
 DIR-810L
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

This patch addresses several issues for D-Link DIR-810L:

- add correct button codes
- harmonize button node names
- use generic flash@0
- remove unused pin groups from state_default
- improve sorting of properties

The patch is only build-tested.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

If somebody owns this device, I'd be delighted about a test of both patches
in general as well as if somebody would test if higher SPI frequency is
possible.

---
 .../ramips/dts/mt7620a_dlink_dir-810l.dts      | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts b/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
index 0b1ca26ba4..514e9cc354 100644
--- a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
+++ b/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
@@ -23,20 +23,20 @@
 		reset {
 			label = "reset";
 			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
-			linux,code = <BTN_0>;
+			linux,code = <KEY_RESTART>;
 		};
 
 		wps {
 			label = "wps";
 			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
-			linux,code = <BTN_0>;
+			linux,code = <KEY_WPS_BUTTON>;
 		};
 	};
 
 	leds {
 		compatible = "gpio-leds";
 
-		led_power_green: power {
+		led_power_green: power_green {
 			label = "dir-810l:green:power";
 			gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
 		};
@@ -46,7 +46,7 @@
 			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
 		};
 
-		power2 {
+		power_orange {
 			label = "dir-810l:orange:power";
 			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
 		};
@@ -56,7 +56,7 @@
 &spi0 {
 	status = "okay";
 
-	m25p80@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <10000000>;
@@ -119,7 +119,7 @@
 
 &state_default {
 	gpio {
-		ralink,group = "mdio", "rgmii1", "i2c", "wled", "uartf";
+		ralink,group = "i2c", "uartf";
 		ralink,function = "gpio";
 	};
 };
@@ -130,9 +130,10 @@
 };
 
 &gsw {
-	mediatek,port4 = "ephy";
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
+	mediatek,port4 = "ephy";
 };
 
 &pcie {
@@ -140,9 +141,10 @@
 };
 
 &wmac {
-	ralink,mtd-eeprom = <&factory 0x0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pa_pins>;
+
+	ralink,mtd-eeprom = <&factory 0x0>;
 	mtd-mac-address = <&factory 0x28>;
 };
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
