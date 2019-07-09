Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 743FA634BB
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jul 2019 13:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fVYdS68J9ryHk2dVOY9toKlynA4XZ2sguO4QrzaVvLM=; b=uyhj+l/Wq7gPAg
	c5ZW/XbeNDG+XsLd+cDpH2rcLtmCCLC0HUEgrq1yp+ecgLjYwykXiSWmUMLwxIt+mYs7bwcHVuqBP
	vSVRxtAP49/AggfBRr0g3q7bp6VM9/j0zNL3+HXdSAPdPHxos0mlID6tfTm5AcJmpP5od0RW14uIJ
	MnpZ2ahrWwVIf50MOBFsS9IaY3LAYZkEf0Rh67QRwaJW1U/fbxGtypmver9mMPCXI+9i/cmWFtL/J
	d1T2eH4E7NXwQwvCGgOUaaIBQHzpd27qZ6BwM9WLT/E5ahr5Qzawvm7Chzwh/+3s3CxFiyfeOh5/3
	Cm3UYP7GmMCWj+rpwu4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknwm-0004vU-P1; Tue, 09 Jul 2019 11:06:08 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknwX-0004up-MT
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jul 2019 11:05:55 +0000
Received: from localhost.localdomain ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MowT0-1iHLU32iju-00qPxl for <openwrt-devel@lists.openwrt.org>; Tue, 09
 Jul 2019 13:05:49 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  9 Jul 2019 13:05:46 +0200
Message-Id: <20190709110546.3023-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:jyJ3Dau491BRyyAR4a689HnDvgPuXOTfsqF4XNTQihmJRvnS+0C
 MsyhOIEz6/HrVJpSZv4FAoRE7V4piuBTdHOSamVpyEf4vQZgeo2V0YGnbCp4HWvu5h5i1CH
 ZS+sg9SjhaPpG3OULNCUNLzcgBnQy7wy3qti09klS5M8CLdnpvxC4GtwNnEIRCkHpUJTMTW
 LMSdu1p7wowHRtO09xPhg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fV8jGKnIeS4=:7kfuTl8pyknMQENIYIafmU
 iRrDswhoFCZtJ4M9ufWeEU7LsFCyfMkctJkDl1ynCQhFvSXcGJGEJhstVmNtqK8YqYZPzAIjY
 Z2uSFeu5KiGOqX2cuN1OYZqD0OxmeiN5WNYTG+2Dt6S1VFGEulsBDogZ7ij3YV1d5ujjM9XMh
 Jsj7BctRKlwyFT+SIpfuQYs9xjTrBlnc20lAAtt0BCY3G1LzZo6EaWx+UucKz+SK6XiYQoNjX
 aWWlamiZobX26dq8rDWg98N49GePgX4kZt7Fn2oj9+Dpp5cagcDmtgnAe8Ts5MEXWT+zfIK5X
 gvPR2rXqsbjlM6mu2O1d1z21TYB8kILnq9VEXe7x8t29JxgHkiPvdc9zPRaG8RUr3Mn+iVW1z
 firZk0NS2bFUh1vjaEN18S9xdK8Uhn5e6kUucfydxOt1VYpjsfGM3NCI+E8DEwXDr/huxuQgH
 Dqbpjud+/ztI3WfIwP9yHyDRLcXj1S3eA6WquEsAZlPa9YYujYOYmMqvD21QELocPusmfqNia
 uOKX17A8NZFKhK8cO1Dzv0wgfsLrC0DJGCkm9j23IdjuzgFwRYYQXhOBtAyIejRbwowIbCg8+
 XCdBFCpfjevpgPiXiqhsarFUn5U/jdySgpz7jt+OGHrHvVzoGVq/ZzIrs2blV/TS4TR6ixUMP
 8SgQX0pHMHup5VNg1ZkOjZsQpE43xouT5vjRcezTL7dR3TiVrub6p+I3JIATJ0E3dnFgzX674
 U80+rGyauNSbG3H0P5U/xDKxkNRygwghMgzD3il2idwIa9AX0efuMVvXOlY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_040554_033673_CD8105BA 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: Fix whitespace errors in
 11-ath10k-caldata
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
 .../ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 8f0ea1d0a5..2d4cfc8fd0 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -150,10 +150,10 @@ case "$FIRMWARE" in
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary u-boot 0x1fc00) -1)
 		;;
-        tplink,archer-d50-v1)
+	tplink,archer-d50-v1)
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary romfile 0xf100) +2)
-                ;;
+		;;
 	tplink,re350k-v1)
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary config 0x10008) +2)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
