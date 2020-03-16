Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97C6187261
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 19:33:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h3ezQi8EMfsJSZSD7+gt8vs8Wad+kB/lM6DDMbt8moA=; b=tzNzuG7OEHypEKGs8yX7LmLAw0
	F0wRNJppCyMeWJm1qygySJsgy+0ndpjVmrl6yCkE5MufWlu7qhaXFksqkE1ysIDcQou6ft8Z+8REB
	MYTZguZ5HpBUftGfu+g/HPeZyXLFDnjbwmJCfOoMwyczOJOGTax3EE0X5fBB8QqMKFrjcykiG+DsP
	Qz/gxCdbXHYuaZq7/xfgqnclEE92jUnQmxTu9deaizD06r19pUuhPZdeQMqcnk25jJynDFHp03TBi
	hHCd0PBW4UdmE7z8ymrc9EY6+YUb3lWuRjVThEtCLSFGooBaeOQ3Q/R/zt1eG+Vjqv7HIOhlZ1vGo
	YluEh8lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDuXs-0007DR-UZ; Mon, 16 Mar 2020 18:33:00 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDuXa-0006zc-7A
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 18:32:43 +0000
Received: (wp-smtpd smtp.tlen.pl 27072 invoked from network);
 16 Mar 2020 19:32:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1584383560; bh=0Altq2XbTUfnWEJsa5rwauXzzopRE2SH2HjsnfyMzWI=;
 h=From:To:Subject;
 b=EPsV9z27Ba35GcrlLQUSGdqEihvxS3W+UtfpagTIP5PzFO6PX1WnSsQzTN1QulBzY
 s0/FvIc/8XxdxPOpV6jrxibQKbBl75CjhtPB6RUdN1nBGea8eJdmcEtefC9VcvRMnx
 OKYarh4o7L1L0h9cymlDrLxd3VBhEnIofBGw/+jI=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 16 Mar 2020 19:32:40 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 19:32:10 +0100
Message-Id: <20200316183210.90142-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316183210.90142-1-tomek_n@o2.pl>
References: <20200316183210.90142-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 44a81df97947c4c3892fa82ebb030776
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [8YM0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_113242_424109_378FF642 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 4/4] tegra: switch to kernel 5.4
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

Build the latest kernel by default, since testing did not show any
regressions.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/tegra/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/tegra/Makefile b/target/linux/tegra/Makefile
index 6f7ca1861690..bfc3ed05a61a 100644
--- a/target/linux/tegra/Makefile
+++ b/target/linux/tegra/Makefile
@@ -14,7 +14,7 @@ CPU_TYPE := cortex-a9
 CPU_SUBTYPE := vfpv3
 MAINTAINER := Tomasz Maciej Nowak <tomek_n@o2.pl>
 
-KERNEL_PATCHVER := 4.19
+KERNEL_PATCHVER := 5.4
 KERNEL_TESTING_PATCHVER := 5.4
 
 include $(INCLUDE_DIR)/target.mk
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
