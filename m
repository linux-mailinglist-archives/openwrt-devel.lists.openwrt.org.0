Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5F572FF9
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 15:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dFdGqEpsdiZP9MLfqN2FOAGJzIs+VopRfq2t2yKR/MM=; b=BI9jZnD2YbSdbu
	zjYIFtlOpz7QI2wwxoGSzAzuT+E9N7IE02Q23aen62qnKELmkQKY+wSI4rG73cOZTvmoNm11eS/AY
	53d1V3w5l8cE6ELkf4mgNTlUSMUFVo1HsKhnVIgL2ftnvKkMAGEpPlpN1MJWt8iU7mVhQ3zGQgWSx
	ArTZUNFAO6CIdqG5V4fFnUSal65AVpFp0t6kgS/4Mzbj+p9aO3YcxDxpsd+fgHXkuhYGVVtaJLv+B
	EksOY4oF+Q8NzjNe+UhvKrTVjjb7K0Hy08Zc1Jc+YHupZEnIlyTiPtEpVcysA7uUzAfxba7+vBUp2
	TekVb5q7eIzy/LI+eTeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHPQ-0007Sm-KA; Wed, 24 Jul 2019 13:34:20 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHPJ-0007Re-3A
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 13:34:15 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MFL4B-1hbAK130Q5-00Fo71 for <openwrt-devel@lists.openwrt.org>; Wed, 24
 Jul 2019 15:34:08 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 15:33:51 +0200
Message-Id: <20190724133351.2283-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:G3ALsI6x+EdCAwO2So5/6TmApZXER85F+BnzjZIxzaLSAIYRjnl
 g8rnC0EQZ0B9+uCJKeZMtILuK5Pmru0ePco4BJwBxnl6TppnF/plCYy7q41HwJQPWd1qipc
 cb1dlYHSobDlib/FWrI/oUUIVtWq6bzniECCiW9We7gRGe47dezm/qqK6XP/RqLfZ3mtkBH
 LxGzsAamA4TvRy/gwg+xw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0sub4eYsPTo=:6SOvGz4BcIhugzUaD0AGDO
 Sythw1O9c3LFBXWotsD3XvYU/qA61MqfB0rgefRaJUrAYPSF68iOppcWa2QFUeyuK4mtqDGqH
 es/T98F1U8KwS/o38aDZQo/8o+lFtCgRKD3hzxtfcXrtqw91bFq2M05bKNUWt064yHikFKy9d
 965r1cQFcfGlwIr3kjvEv60QjnAgiA3PuTZzpgeFBOCA6szqEhLL3JkXUs7eI1zVxeJuBE64q
 VwJri6aiV60nqTVLmyzQ8P9/rOyIvtGQX+OgjEFjjJxd8TgJ7Tkr9CTvyOuEV5WWo2+I0F66w
 LxQyRItT9MKU3fj2lDvidYIksztm/NCS+npK3w2Ee9jL+sI6HoS0ozf2mbm3z2q+DFPBvSVHL
 3QKokk69dr8t4fKNvXOHTQbbq8LDdXQoHKj1zkJbu25hQUXF8eI3vHhIluhuoz8yBuf84G4iG
 i6FlyhonRHGoyQiD16xQUNxlsOhPdXVw7P8GvPYV59mlOUnBN7OH2s+AbbMt/W20Yirk1if1e
 M9sncOvwiI+5MjobHJF9q5m1TIek8GJt1ss4Ba0j78HEaxwUVndyRftIwE9yifw/Kl2nL/h/k
 BqoLcYT0+LWghooPhLaUzUBXqkjL6ayQmYn4nn6K5Gsr4Lf6injt/hhwdAzL65XvYrN7waPCS
 AxtqOE6v6zvSp3D2F2gRwLcL/Ilm7Un/6VB+xn3Rm7FFydSLyuG4iwyyN3/tJkfvP5DVXABZV
 2ato8JzO2uEtja4VJsELfJRz+jq6FayTp0j03+SJuA7ONx1bNoxhGXfs2uM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_063413_447202_1B637B8E 
X-CRM114-Status: UNSURE (   7.69  )
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
Subject: [OpenWrt-Devel] [PATCH] mvebu: Replace backticks by $(...)
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
