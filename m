Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CB21432FA
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 21:42:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BCDfGweucsijC+/RdYkmq5INtmz8SVIbAr5nXEEBjqI=; b=W/5eRXvKP1BuWf
	iCOjgPa6BEosbuVc1QLVeFTBr86EerZxPHVt+QDYr10wO5LkaEVHzP3jS+kLt0sY6rEZoKBtk58Df
	GbjMbAyVpadTP5ST1SmdER9lDa4Yr5QFvdI2neFEmxJk51I4/k1e6gqrFwBJiE+4Yr0XzgZVEt4H2
	bzpYNSYDCmv96YkW8BayEFoE/U3td3Y6+eFFGlU0VqAWddbWCIepVyP1ZtyNmVcKFHoJYgYc9kbk4
	lj4uNMKmb1SsoKr8isjkII8Rn318IOLT6+3vnk3XCwK0Rr6l9bcQwXfLlvU2CRnAgM2jCPQvtebaA
	QnYWPTATTYuIlCFE9cfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdsR-0004Rs-En; Mon, 20 Jan 2020 20:42:27 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdsI-0004R0-UB
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 20:42:20 +0000
Received: (wp-smtpd smtp.wp.pl 7589 invoked from network);
 20 Jan 2020 21:42:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579552936; bh=ZkVe6Yh3tNILIxLo3TDE8imA+3UtZHME6R7OTCW+eHg=;
 h=From:To:Cc:Subject;
 b=Veo9tBlHsOaBI/w+Bpy7Qh7CTBjcKwHa52L3gKU8TnUTbBBg8HdGHrOHVqi1QtrvU
 f1omNptWDgzfkZlYCC/M1/YhhkjcWESbnOwPhs+q+kYvHl7n28CukHVHfacjwrasAm
 fUYuyQOh77Hl5QmQLYcVO7SAbtGRzmjyR0FGL82E=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Jan 2020 21:42:16 +0100
Date: Mon, 20 Jan 2020 21:34:02 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20200120213402.35e9c810@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: c013f5cb8bf8d56a6fe7e5598d955713
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [gbOR]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_124219_262278_E9191BC9 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ath79: fix SUPPORTED_DEVICES for WNDR4300
 and WNDR3700v4
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Kernel partition increase to 4 MiBs for Netgear WNDR3700v4 and WNDR4300
routers breaks sysupgrade image compatibility with ar71xx builds.
Therefore, SUPPORTED_DEVICES variable has to be removed for both devices
from target makefile.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ath79/image/nand.mk | 2 --
 1 file changed, 2 deletions(-)

diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index f6929cd88e..95ddca26b0 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -138,7 +138,6 @@ define Device/netgear_wndr3700-v4
   NETGEAR_KERNEL_MAGIC := 0x33373033
   NETGEAR_BOARD_ID := WNDR3700v4
   NETGEAR_HW_ID := 29763948+128+128
-  SUPPORTED_DEVICES += wndr3700v4
   $(Device/netgear_ath79_nand)
 endef
 TARGET_DEVICES += netgear_wndr3700-v4
@@ -149,7 +148,6 @@ define Device/netgear_wndr4300
   NETGEAR_KERNEL_MAGIC := 0x33373033
   NETGEAR_BOARD_ID := WNDR4300
   NETGEAR_HW_ID := 29763948+0+128+128+2x2+3x3
-  SUPPORTED_DEVICES += wndr4300
   $(Device/netgear_ath79_nand)
 endef
 TARGET_DEVICES += netgear_wndr4300
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
