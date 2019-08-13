Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E1A8C45E
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 00:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BZPBVQQGIwioUsDMWxkYQH6pJGtjgcaHyDLD2mwAjyU=; b=ckd/7tWWEe1Rpb
	IS/2TEcyFTdR0oWJ80i/V9rAh8J1k7c7DwucqNHZ6ie49UiQQ4G+WgvOrEG+22W/olGOJq4LYoJSw
	H4ZKqpKphKnab57IXmqkEaeN4RoFlvO1LpuBwO1vpJGQ3OBCPFTC5v94sXbmoIeepPQMSrWfqOISE
	fb3lFdZpK9IXd7gLqiH7KS1mA6/2sSOCWPg1mb3iPoXqojXfi5XUZ1Vf5THmwaD7Csh/PMtpDSIn4
	e62kakkH4vnGsCJEjx0Nv9watbwaIAO2DMpTWoZKYWmbNO618SfXEr3J1G1U9C5t85Wp4rbygT8I6
	C64KVL/hQ1a8ZTrmAlZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxfRH-0006pH-Mu; Tue, 13 Aug 2019 22:38:47 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxfR8-0006p0-3g
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 22:38:40 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0E9300C93E3BF31CE7D483.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0e:9300:c93e:3bf3:1ce7:d483])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 9096D222B1;
 Wed, 14 Aug 2019 00:38:32 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 14 Aug 2019 00:38:24 +0200
Message-Id: <20190813223824.10520-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_153838_444221_30968445 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: fix AVM NAND caldata extraction
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The AVM Fritz!Box 7530 (and probably other AVM IPQ4019 NAND devices)
has it's caldata not stored consistently, but instead at currently
3 known possible offsets.

As we get a non-zero exit code from fritz_cal_extract, simply try all
three possible offsets on both bootloader partitions, until a matching
caldata for each radio is found.

Reported-by: Hauke Mehrtens <hauke@hauke-m.de>
Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../etc/hotplug.d/firmware/11-ath10k-caldata   | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 1e64b93a46..5f7e5f4923 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -112,7 +112,11 @@ case "$FIRMWARE" in
 		;;
 	avm,fritzrepeater-3000)
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x212 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader0") || \
-		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x212 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C800 -e 0x212 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader0") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x212 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader0") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x212 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C800 -e 0x212 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x212 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
 		;;
 	linksys,ea8300)
 		ath10kcal_extract "ART" 36864 12064
@@ -146,7 +150,11 @@ case "$FIRMWARE" in
 	avm,fritzbox-7530 |\
 	avm,fritzrepeater-3000)
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader0") || \
-		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C800 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader0") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader0") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C800 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
 		;;
 	compex,wpj428 |\
 	engenius,eap1300 |\
@@ -203,7 +211,11 @@ case "$FIRMWARE" in
 	avm,fritzbox-7530 |\
 	avm,fritzrepeater-3000)
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3C800 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader0") || \
-		/usr/bin/fritz_cal_extract -i 1 -s 0x3C800 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader0") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader0") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C800 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1") || \
+		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
 		;;
 	compex,wpj428 |\
 	engenius,eap1300 |\
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
