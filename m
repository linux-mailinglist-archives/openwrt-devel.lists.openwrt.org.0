Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AEAEAFC6
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 13:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cjJSnS4LqtaTlao/IMdMBwXYGIcierbbjD8O2rsgODs=; b=VTxmPjLRXVc88T
	Fr8xSuIn9TZmvzFvXVbNZ1TtkzvYOUTAN5Ib3OldrzJjwq7ROTbfsFppVOUgdOTvtbMSyyLkvB4Yo
	UHK/AhzVmgxrnrKgF9bg3Xh0RwlKnDjz8Olox/4VAzFrMUyVcBw2YNt4Jh/TjGqecnaM/9RRKyJW4
	/uTagSiJSy9hi1EAdz1WKM0nNx+vCFLTDPdbtKBLVrum3bHC0bz/k1gEpSgl4Lt7SHVxbDqr977A5
	V5SxGEqyLFHjs2LUxvGpfdg/koJYF2SGwJjb0UedN677j6RbS2WJUaWFZzSZcZMsPXEI5SYl2dzHA
	i6ikjVtkHtws1zDuKAKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9BM-0004gw-5g; Thu, 31 Oct 2019 12:04:04 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9BE-0004gV-9j
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 12:03:57 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M72wT-1iKNUN0P79-008cfn for <openwrt-devel@lists.openwrt.org>; Thu, 31
 Oct 2019 13:03:52 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 31 Oct 2019 13:03:49 +0100
Message-Id: <20191031120349.1590-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:OgHo9yWhdrJjBKhzWy1PicfPTQNSd3RSP/bWIPg5jxqp1F7SH/1
 /1kKWJd4/uwlUgDbmBdQI3mN5H3Knm9FXhJg/p5nSWBvmTh+wO5v/0J7V7giQrOaBhkn4/X
 Q2wBawhMyNmJVIOzI97KxqRb0uKqayUonDRqOP1luCmrSpxrHpxHxq7x6VJO4KxPxLaUPv1
 7D5T3dFbyyzCmi6ekbZpw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nbnFJ5dYFjs=:RaMEpjanZVSlbbnYzkKBhT
 bSXacrVNRX48VlU6W4yNbgNsxCCA5kbSwsud7CpApQwjILGlDLlOqKAIpT6hdkZ9aqI7mtuYV
 7FrhOi3QFk6tKCBYar+yFiWx4HmowSgwjK1ROxEuoJIppPXR+ZN5rMvAuSKMai7JLF38WmWWt
 RlN0MCLE2dMFBe0IgaQPH1GMFib+kX8AuOFq9VsXJhITYU4rtQDOzphPlQM9+NYEZOQs02KB0
 waq5uEj+J0sa8p2Rno9jV9YkIx9sqZjyaW6EONEV/yIlaAL1mCaIte5CErmo7XCxyw4AN0OiN
 bG2JCjwj2YdETjo2/0HvV/QB00hWF+3fMrX0dbxkKikMtiil6Sey+fkZlMVVwUyMmiQ2XRUTs
 oqrXhha+oY5zIyGW1jwwonE2aWaweenzBmYWRI/xiEiTewPLOD08JpcjwiH0isWUj5ap5kyEs
 h6xdpLnyfYHx+VA3BbMOZJw4EfgXYbMWe1gDw3V+EWQkilQb+tkz96w5WCytKH4/TCbGdM6vf
 JKeBoXgx5Yx+s5v87rcg3KySo5B/XCuQtVZhWExx4O5o4TA2F2f9rEClkyFlQ/q6x/Gcgir6G
 Q6H9Hg2s/yUzoCX4piabSnVjDHWza5YUKcYzU0/x5PPFVoIGrzmmIYQsTFMfOZ0wjIcglqbv8
 wI2kw0RXAvWRe5morIPpXBZbBaiJZU3YjM9RQFiuPafMcf5uSMqpMLJ9fGrf3v/mp7nZGtjeq
 1/D/JahVacWt9B38IpYD5j0KrRDECgUlLDZroazI7OjPGttkN3yP5FgD3eKuIRQ8McUpkwsRt
 HrkKj3pEMFkLvirwj1KkBhAwSSGt7mXFJc4nbNRIIi7fxYP8WQnkru3S7jYn1WDQLBvNkqJ+r
 6Hp5wJeMG1Nkus9xydGVyePO3PlI5RLRcBuEDDqLk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_050356_632489_E0A75BBB 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: remove further redundant
 mtd-mac-address for wmac
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

This patch addresses the cases where the calibration data partition
is not labelled art, having been overlooked in the first patch.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts | 1 -
 target/linux/ath79/dts/ar9342_ubnt_wa.dtsi            | 1 -
 target/linux/ath79/dts/ar9342_ubnt_xw.dtsi            | 1 -
 target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts       | 1 -
 4 files changed, 4 deletions(-)

diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
index 2ace37ad68..b591925154 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
+++ b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
@@ -74,5 +74,4 @@
 	status = "okay";
 
 	mtd-cal-data = <&eeprom 0x1000>;
-	mtd-mac-address = <&eeprom 0x1002>;
 };
diff --git a/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi b/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
index df5cb4be69..30fa299638 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
+++ b/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
@@ -89,5 +89,4 @@
 
 	qca,disable-5ghz;
 	mtd-cal-data = <&eeprom 0x1000>;
-	mtd-mac-address = <&eeprom 0x1002>;
 };
diff --git a/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi b/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
index 76c5c5efca..24fe34b3a7 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
+++ b/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
@@ -116,7 +116,6 @@
 	status = "okay";
 
 	mtd-cal-data = <&eeprom 0x1000>;
-	mtd-mac-address = <&eeprom 0x1002>;
 };
 
 &eth0 {
diff --git a/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts b/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
index 590ec448e9..629899e1a2 100644
--- a/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
+++ b/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
@@ -95,5 +95,4 @@
 &wmac {
 	status = "okay";
 	mtd-cal-data = <&eeprom 0x1000>;
-	mtd-mac-address = <&eeprom 0x1002>;
 };
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
