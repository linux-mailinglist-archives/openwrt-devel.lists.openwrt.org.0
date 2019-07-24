Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2097174196
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 00:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=suDJGX0zwxSfx6wTQoKVC5W5aTJi3sNrHL3zYYUvVhs=; b=qceaxywMl/uQHc
	hy02iXIMUvuIH1oBnrVHPbi4o9cRyEejWGYCOlY7axZiqNCWyA80n+p3odLaBWZJKWw2VnpZHLlmf
	2QgplM6ZMWS3TU6btYNXCJGdGKknmhOKERzGSmWTaPcx2Bh3yHhkab/a8fu9F/oJm7iM/FRIOierK
	sEd9HV1fkzzhxXuVTXGNfmns82bDSgKETpxUgmvusTQcP6n23D7Y5aC2aOd/Xuv8LGykUReVL2fPA
	we2pMVA/bY8XPFexvbdUUKQS81RoqHkbXXcsvg2Z9Hmk3D8v+f3mbfQULyQnVh7oLUnDRtjhrD4Aj
	Wp1tzGwuJJvIvCLOPaZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqPxo-0000Ho-4O; Wed, 24 Jul 2019 22:42:24 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqPxc-0000H0-0p
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 22:42:13 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MxEYY-1iaNkO43Wi-00xcc7 for <openwrt-devel@lists.openwrt.org>; Thu, 25
 Jul 2019 00:42:09 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 00:41:32 +0200
Message-Id: <20190724224132.35016-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:76EkDq4H68R8Vl5xhF+w/6VbVNodeTqISNzMmHdlmewMhOQ4dyK
 guNh3/JzieF2bZ3dcpJIuoC0xR4wkRg1PO2De03GGhsBtJ3dwJpJZSMNmQNs/pO52TcdOir
 FHj6U15JB0r9hFGZXdLPBTyDxemOte0a7eqgGpi+5myHlbR1ad1mjrEYiHc2RqWGq5+Ekzt
 Y3/WrJ9GmE+ieUxhv8R3g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Nq2CeGUttfE=:dKJrW0p6XibXX/0DPwR3s2
 gvAds+SDE8C/YIm5qeZGbf4G+13S5pXQuAMq4B0AYrKRecJwhzbc+FmlLZSjoA/epJKvkDaqJ
 Q0BCUJC7mMkSzBY7yjSxoXX4o+0DosLiID6gvkzwaD2aUe1sfO4C57cdbJ/lesKcQOsKQkval
 OfbcByDkAPWKqbn7yKXQ6+3AvS8tRRuBYordj82I/+LlFXwh2eDkWVn+g/1824jSC+3WKlUUn
 7wAkv/iT+CaGE6+2DyXpgU37ew1mF9AuomvSSbINiKz6kYSRklcTo1FYYo4U8HFRWPifduL7S
 0QOVzIYSDWPm7XjV2DQEiatCvL4hKYB9yj0/fgfq8aonOG4NvxAJ/O73zwpgbFUBbPYcdukAx
 zncIf58SzzUee3fueKlmyZmEDn313IzTcNqaVO0JVS2mQihgeDCDSQjvWKGPrV7C1vjZW7eYz
 1MgjHuH+Qq/QrWgh5+zNMmILaMJc8Mjl8b0ITkoe+kfcEJsYPk0ZF2uERj6MQQXlSqtWuBUTz
 6WhFtPa47glG6cBk+hc8FtzeIPOdtgN6iCwVdRXYLFkKQ27H5GbgA1RoPIi/BQn4le4KCA8/M
 9pcFr6LTgPU42UQAVMfUGDfNOzgXASHzAUER3KkT7u9YWxdC8wIW9dk30Vs/C56MEzVJskE+j
 bTKTEyoJ7o3N+Fz7pmzSss8mRSLtxJ6U7m8ZUZfr48pYR4RAgYaiJkoWonP12YPuyNieD+2M5
 lRZK1HolUC3piOFw9B6DWEJMDGkobz8K0ej60r+pIdAnIyy199zqVOvGNrY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_154212_353132_FF240E1D 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH v2] mvebu: Replace backticks by $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/mvebu/base-files/lib/upgrade/linksys.sh | 2 +-
 target/linux/mvebu/base-files/sbin/fan_ctrl.sh       | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/mvebu/base-files/lib/upgrade/linksys.sh b/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
index 3f45d6cac5..ddf24836bc 100644
--- a/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
+++ b/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
@@ -6,7 +6,7 @@ linksys_get_target_firmware() {
 
 	local cur_boot_part mtd_ubi0
 
-	cur_boot_part=`/usr/sbin/fw_printenv -n boot_part`
+	cur_boot_part=$(/usr/sbin/fw_printenv -n boot_part)
 	if [ -z "${cur_boot_part}" ] ; then
 		mtd_ubi0=$(cat /sys/devices/virtual/ubi/ubi0/mtd_num)
 		case $(egrep ^mtd${mtd_ubi0}: /proc/mtd | cut -d '"' -f 2) in
diff --git a/target/linux/mvebu/base-files/sbin/fan_ctrl.sh b/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
index 06e462119d..4234668317 100755
--- a/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
+++ b/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
@@ -1,8 +1,8 @@
 #!/bin/sh
 
-CPU_TEMP=`cut -c1-2 /sys/class/hwmon/hwmon2/temp1_input`
-DDR_TEMP=`cut -c1-2 /sys/class/hwmon/hwmon1/temp1_input`
-WIFI_TEMP=`cut -c1-2 /sys/class/hwmon/hwmon1/temp2_input`
+CPU_TEMP=$(cut -c1-2 /sys/class/hwmon/hwmon2/temp1_input)
+DDR_TEMP=$(cut -c1-2 /sys/class/hwmon/hwmon1/temp1_input)
+WIFI_TEMP=$(cut -c1-2 /sys/class/hwmon/hwmon1/temp2_input)
 
 CPU_LOW=85
 CPU_HIGH=95
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
