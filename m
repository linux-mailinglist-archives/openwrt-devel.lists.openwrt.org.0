Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C49DD68040
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 18:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHy/PfxUj4r8KtYw1EFJVctvdhkGB8mP7Q6Hu2EwZTQ=; b=nb6vLM3UxtuYPl
	VF7PWcHV5n1PRaks61A4rhmRY8D0fAOmdvY3vJkYshFKPNM/zjViBrn5I2YchM8yfimc1ZjpTuEUl
	ZeA6FgdMSfRzEAbyEOjG025mynlv0h3VGRhQg9VbjYoeDX2SNaKMRdmktFSiNKxgm1fUWsPQBigkY
	SYiigZDGnFlke7y6tVIfZJ20sg65xc7Ttgk95AdgGsy2ROwANd4cFhy9hveJuvithRst27CWErDAG
	bOAFqcsI+/1u7ZpDBfQC2hHA8OZ/i0vLvTOLSOZgDXgnSdMSIS5CH61LROi5YiqXiTE7Jj4D/VG2p
	4UbaVsSOqe9xS6LG9aaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmhUA-0001WH-AN; Sun, 14 Jul 2019 16:36:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmhSn-0007zt-DX
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 16:35:03 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so6582940pgj.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 09:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gjbJF2HZJwlHFJJtbHjekUdFxuipkOnBe4DLEWwGRAI=;
 b=l9TtadNJzKIrl5ufdtKqhlkCyuuQ+1EK2eGjs/+7NVzaz43zKXddTvhzKSLc0q33u0
 36wRNyopJZGHEzy377JR7fJCgpmtM/GVUdayjfFQfQEkdv2R8ctQiD+Ns1Ueha/6sPJZ
 z+3slXKTFjnwC0kemN4OBBY/7h0ZihiRva7HsVDONX8tzeqwWcGxysiR3lTgss7xOcBz
 LqI8qJnFDSHDyubuyY7QbafeB4l2cRoq0fNQ4ACRgKeMOX2kB0DHzfYDjXLuzveYIDku
 MHdd4ZVCOiQZIZx5q6s+fysqWqJS4rDQ2nzuIBcOHq6YEDxymJRFiDJYcEo0HGxy1WMX
 7s/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gjbJF2HZJwlHFJJtbHjekUdFxuipkOnBe4DLEWwGRAI=;
 b=HgkJwDYG98T/53gCLpwNOiZCGJ4AZA+/sBB2Bu0k5LqepaKPSMVb3usKZ67cZme6/8
 Pg4S+F7fERzh+8WsXBdt8q44lfiuof1nUdVcCKu856TRUfsTRgoz+dy1yjkptMt/xNIp
 T5e8t62hKE9jTFEgmMTgTANO2q50XFoNHxRjVhPzbKjJmexjZxBrrRrSqiNji2r4esbs
 Zmsc8e1T327sXzoPuO3mq0LoyB66rfd7M+NBQu2lAjTjxiAwxoJn4VkBSC4PtqVDbKBu
 CS0MkevhzDTkKAOJgViSoYK5u6oXi8Y7EDXmoMjzznrJMWYzd8F6pNlxs4xGoUoE99By
 pABQ==
X-Gm-Message-State: APjAAAWshys0qEpOUhDtPxRPp58lwE2wWDP4yDnifdJjRnezZEJpZR3E
 r+pya1I17OsgbpoS8fcfOEL/Z2/xulY=
X-Google-Smtp-Source: APXvYqxFNOnAkAzej2ROhmoRXjI5daMXqzX0+UflNiacbcolRblXe0D1oygizGuZYJKUaZLNbZ74Jg==
X-Received: by 2002:a63:505a:: with SMTP id q26mr21824950pgl.18.1563122096141; 
 Sun, 14 Jul 2019 09:34:56 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([27.155.236.112])
 by smtp.gmail.com with ESMTPSA id d17sm505805pgl.66.2019.07.14.09.34.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 09:34:55 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jul 2019 00:34:26 +0800
Message-Id: <20190714163428.26303-2-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190714163428.26303-1-gch981213@gmail.com>
References: <20190714163428.26303-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_093501_466090_0129B191 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH RFC 1/3] ramips: mtk-mmc: mt76x8: check
 ESD_MODE before applying AGPIO_CFG
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Since mt76x8an ver1 eco2, SDXC pins can be switched to the
following pinmap:
sd_d1  -> PAD_I2S_SDI
sd_d0  -> PAD_I2S_WS
sd_cmd -> PAD_I2S_CLK
sd_d3  -> PAD_I2C_SCLK
sd_d2  -> PAD_I2C_SD
sd_clk -> PAD_GPIO0
sd_wp  -> PAD_TXD1
sd_cd  -> PAD_RXD1

To use this pinmap, one would need to set ESD_MODE bit (bit 15)
to 1 in GPIO1_MODE and switch other used pads into GPIO mode.
In this mode, we don't need to switch ethernet pins to digital
pad.

Check ESD_MODE bit before applying AGPIO_CFG and use rt_sysc_m32
to set it.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../ramips/files-4.14/drivers/mmc/host/mtk-mmc/sd.c  | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/target/linux/ramips/files-4.14/drivers/mmc/host/mtk-mmc/sd.c b/target/linux/ramips/files-4.14/drivers/mmc/host/mtk-mmc/sd.c
index 4ced4b6605..cb0aa4231a 100644
--- a/target/linux/ramips/files-4.14/drivers/mmc/host/mtk-mmc/sd.c
+++ b/target/linux/ramips/files-4.14/drivers/mmc/host/mtk-mmc/sd.c
@@ -2205,16 +2205,12 @@ static int msdc_drv_probe(struct platform_device *pdev)
 	struct msdc_host *host;
 	struct msdc_hw *hw;
 	int ret;
-	u32 reg;
 
 	//FIXME: this should be done by pinconf and not by the sd driver
-	if (ralink_soc == MT762X_SOC_MT7688 ||
-	    ralink_soc == MT762X_SOC_MT7628AN) {
-		/* set EPHY pads to digital mode */
-		reg = sdr_read32((void __iomem *)(RALINK_SYSCTL_BASE + 0x3c));
-		reg |= 0x1e << 16;
-		sdr_write32((void __iomem *)(RALINK_SYSCTL_BASE + 0x3c), reg);
-	}
+	if ((ralink_soc == MT762X_SOC_MT7688 ||
+	     ralink_soc == MT762X_SOC_MT7628AN) &&
+	    (!(rt_sysc_r32(0x60) & BIT(15))))
+		rt_sysc_m32(0xf << 17, 0xf << 17, 0x3c);
 
 	hw = &msdc0_hw;
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
