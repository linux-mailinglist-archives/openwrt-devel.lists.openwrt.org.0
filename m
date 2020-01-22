Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D5D145EE5
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 00:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I3e6g7b4s2AZ4lfSjNo+lcIZhwBCGI6ccChs4OpqC6A=; b=N6x97LMLZuYTZW
	MJPfth6k2yecGE09ytcMyTq1r7DuADoC6fgzL0Zs4LZZOb8t9SzCr5exB7k2G2Qqc8Su+7osc8/Je
	qkaLnCg424uEdJAS8B+Vsya1mLupTGCdUx9cLFk+xC+h/nb7n1gCDubwtGxaYw6Eh9D3CKN8iFLbn
	rzkjvhC4w91zhlmEVwKzz6TUh1Qu83t4W+L2+DW88IEagnV3DrXrdsFI/idCIYCnUxas/hz5oGMXJ
	atfGLAJl3y8ABe/b4ayDddZcMjYX1rUjqs7KzIwH3DytGivErb6y+15yFy9ZIR8nvCyDNSfiMQkJn
	khcplrMvCBTyJdYVebjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuOzH-0001xg-FM; Wed, 22 Jan 2020 23:00:39 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuOz5-0001xF-BD
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 23:00:30 +0000
Received: by mail-pg1-x543.google.com with SMTP id 4so312283pgd.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Jan 2020 15:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fkKcn759VatwukfsyA4BakmFgRHzb3rOhkiIRy9KKHc=;
 b=WnjRi6H/PrrkDqdkoZqMpclSsUXhJeNnayPWfdVOblfuBqLcbG39ASRbvxkAdwHTW2
 9e1WZvOhZDnzm5WBKmb/1VJ3yAI/scnr/jwKs4jOwvLwMGRQ99XdWIc9i2ITtdRkpdMd
 RowvqqNx7jlnArBr8O1du3SFBc6PD46z5sv/MByigekPV3TE+RunAHva/BW1TDFbs4w5
 0rt3PuQ7PueM1huEmZKVooiG5+DNBBB6CL/j6/7Vw+1QparVFhWS8gwTdAOFuBmu5z80
 UAQZ4fYWDciCS0PR3scOZ58kMN6zLXIfmhY7PsULusYeTY+h3XQpeUWdZBMw+uDDqkh2
 Lu4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fkKcn759VatwukfsyA4BakmFgRHzb3rOhkiIRy9KKHc=;
 b=jNgBoNlnSvk4lZZH4XGXv2q5+uUwClj7E0j4Z9oPV/Uam8Sz5/hwIOyItTw9Pg31X+
 +l5+bvNdZFVYPAjFpTYGOss6tplAN5K2upqpKSNclcgKq70Ch00bXtPnZVMymerZgK+C
 W/qkBlheHU+Pl6TtVMfpocV56ojTpOt78zkT0sbmfl0SqXsbXe1FceEbhkd5ggCI/g6U
 U7xKorHFIsnNHoBpNf48dekaaslyvyUGULC2o8TnJuSXO8lBr+5SNO5zvwvHH1ua9btd
 7801r7V3Q2rUTwn0gu9FuPQIxZ9g2lXN0slCml7xsiopebY8Jtl0+w2VytivERkwrD2M
 HlFg==
X-Gm-Message-State: APjAAAVEy4czOqUfnUDRpOB9ban38qCd7IJuz2ZocJI1FI8Q7EDx++4U
 lNW9nSxbyl5Pav7Vcb7hE1wycU4I
X-Google-Smtp-Source: APXvYqy4Rf0rf0+VjydnA4OFBmXq+/FbH72tYzz3O4i6TsK6+a0YQmrmX1BkTSrY387uytfvve7PAQ==
X-Received: by 2002:a63:d543:: with SMTP id v3mr623085pgi.285.1579734025832;
 Wed, 22 Jan 2020 15:00:25 -0800 (PST)
Received: from trapnas.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id b8sm5586pfr.64.2020.01.22.15.00.24
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 15:00:24 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 22 Jan 2020 15:00:22 -0800
Message-Id: <20200122230022.16876-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_150027_410232_C45D9CA5 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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

Several users have been reporting crashing issues with the ethernet
driver.

One source says that this is a silicon bug in mt7621:
https://github.com/openwrt/mt76/issues/211#issuecomment-569687506

A user that has been testing this has seen greater than 2-3 days uptime
of the ethernet interface with this change:
https://forum.openwrt.org/t/mtk-soc-eth-watchdog-timeout-after-r11573/50000/12

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../files-4.14/drivers/net/ethernet/mediatek/gsw_mt7621.c     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt7621.c b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt7621.c
index 89be239007..bd0e555e35 100644
--- a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt7621.c
+++ b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/gsw_mt7621.c
@@ -98,8 +98,8 @@ static void mt7621_hw_init(struct mt7620_gsw *gsw, struct device_node *np)
 	mt7530_mdio_w32(gsw, 0x7000, 0x3);
 	usleep_range(10, 20);
 
-	if ((rt_sysc_r32(SYSC_REG_CHIP_REV_ID) & 0xFFFF) == 0x0101) {
-		/* (GE1, Force 1000M/FD, FC ON, MAX_RX_LENGTH 1536) */
+	if ((rt_sysc_r32(SYSC_REG_CHIP_REV_ID) & 0xFFFF) >= 0x0101) {
+		/* (GE1, Force 1000M/FD, FC OFF, MAX_RX_LENGTH 1536) */
 		mtk_switch_w32(gsw, 0x2305e30b, GSW_REG_MAC_P0_MCR);
 		mt7530_mdio_w32(gsw, 0x3600, 0x5e30b);
 	} else {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
