Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C74314F010
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rOmacIFR/JrpXtaWfCPl4MTAV9kTW2x9/Y4YuKd+K+8=; b=emREvUdpXjtIrGogrQsEi/Cfiu
	N6ssAvpJcq/wInml/CO21s85zdUMJusML+WNRPeOo5uBxc92AyeIIgHsjm2xE+q0PRNJ+PBi/ijg7
	0xdh0khV804THQzOne2Wn/VQ+hZNfgZ2jTse4NMqq+bl8I3XOyPradBzS0ieENs7ChGCXmb+fkkrj
	gCtZbYne68+gNKeko4Jk6ar7e4qKcSbJgvyytFFS8uH3opQ8VfxbiVtBW5v1Qv6GIbBCBzC1IJ4j3
	9XoH32G0PhrGVVH6afoBYRypvrnXG9LG1pkJ6WzISmW6gBWcCS4mIo7aheAzPnIKMivCZJhERmhag
	mE+jxOjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYWg-0007Va-0G; Fri, 31 Jan 2020 15:48:10 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYVV-0006Fz-Ti
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:46:59 +0000
Received: (wp-smtpd smtp.tlen.pl 10411 invoked from network);
 31 Jan 2020 16:46:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580485610; bh=nw8eM+t6dghTBXoFMFGSkluBPA8I7YJxouKwuaPO2WA=;
 h=From:To:Subject;
 b=tmsycf6k73NmO2eG8otml37FzfKvolMQ7zB46fOPj6P6W3ebLpgsV/QRAhcJSYIKN
 1J8E9/HOYVOarpbXvVj/VKVcR7SZInjg/Qcy+9BdmBB03uT6PYByEDaYcLOhwKn1cg
 42XuV+GIb5WF74CJTPF8dq/HAYXrSFjunjLfyyXs=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 16:46:50 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 16:46:16 +0100
Message-Id: <20200131154620.25773-5-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131154620.25773-1-tomek_n@o2.pl>
References: <20200131154620.25773-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 5fa14f2dba84db6660317aa970ede012
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [sSOk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_074658_124452_C2489890 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 4/8] mvebu: image: keep global DTS_DIR intact
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

Don't rewrite global DTS_DIR, instead, use proper variable for
specifying devices dts directory.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index d9e4b1acce..ae4d3b9594 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -91,7 +91,7 @@ endef
 
 define Device/Default-arm64
   BOOT_SCRIPT := generic-arm64
-  DTS_DIR := $(DTS_DIR)/marvell
+  DEVICE_DTS_DIR := $(DTS_DIR)/marvell
   IMAGES := sdcard.img.gz
   IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   KERNEL_NAME := Image
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
