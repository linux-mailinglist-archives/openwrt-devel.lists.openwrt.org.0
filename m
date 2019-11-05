Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D800F09F4
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 00:02:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=57WjmSCqOoBvttBoJ7N9+nW+A4TPh3HK0b6B9eOvC4g=; b=tN5wIRM0Kj6IFJ
	vbzqfNN3Y0KYuor5kmiq59wFWCrI2QbEfu1sBLIfpXAMf5iK+EUxM8mqHv/gf0RFtxrqkozs6/4Ch
	0EYIPKcs73doOdiQvsJVPn6rTjJncc6vcWN+F07JwcgF2XYxCFQjgmp5pvZV9sonSDtdejnbnIvjK
	xaO0CBhtIxkYWBSnpc01EQq5jUxcyLWtWX/pVbLxYQADT7qP/5EK/ihAdPWzo8fiLQf4UUuKOrQx4
	se/QCCWpH3CT/jMZWAr6dOZMqlIbrd2OmtcBV1ZdVDLPCXe9onwkscBJUJbA42g1sNfEaTOFMyCR4
	Nnwx+CBc3YBJs6/jysSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7pm-0003KB-Fc; Tue, 05 Nov 2019 23:01:58 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7pg-0003Jb-PJ
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 23:01:54 +0000
Received: by mail-ed1-x543.google.com with SMTP id r16so2934662edq.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 05 Nov 2019 15:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CyxLZcaKkTiL5Qa/tIgwJ9efUU+uOpjecvj/xWFkEIU=;
 b=VRkygZdR8zLqTI+9C0EllSWRZZjVZdggGCAvf1SLY1E8HqEmoI/lzb6q3SLHoD3ebh
 BxXbQBbVFHLmq0IoHx0Ruj34Ae7+6GRSEeA9BaX8hTYj8dVMhZvd7uSojESHht/tdwDi
 QO9rbpqUXJxK9/2l7oD+7rBBMsF1FgATteWUn/jIpIDFpnVn6ANOTVY8fO1MSwAVLfVI
 PefGQVQjCOXhiA0dFxzaGyvACR0gBAAma2p6ieQNbRs+vZ1eZEfBqwoEnRTZ+jXqwv1g
 7T39rjquXJRbaermZ1pNsljck4FRa14IRxpRVXMXovheBjoZGypwWDU60PFqWiFK79J0
 2+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CyxLZcaKkTiL5Qa/tIgwJ9efUU+uOpjecvj/xWFkEIU=;
 b=B0tk0eDxKHkrDGAxsoK+xI9EH/zWVMbaAW+Xl84KcKP7e/Qv5f1EZPmXQluKxSeYHU
 EhwDmMLdwrYlv9GtItnOHwIyZHuZxx97POZbRJXawP9h1Yun86bS6ffLgN6fY30cR/kS
 sDzjjXART/9PbNB6+RJO0yhfGUN3d9FOdR6eT7awJHukNcHLghu84pcvTRo1WaQhTp+e
 FlAiRDyaijQ2md1GSkcGs6OrgOD4ajWYS0lqBtmUx4GIsJ2qSBrHcoSgZXY3I0j2HYaC
 ToXZaX9/Ws20AM/iLI83pt+8wLoHqrCfRv2JLjiEGw11UGRDHS4zXbYgC5PrDAh3PvIP
 SVBA==
X-Gm-Message-State: APjAAAX9h0+h/PjvQtZpDqqFQ61Ez3/xYjGL9d4bUcl1rbSOQ79jC59J
 gWaHI44Wb2nP8ODTAy44ydpVcH68WjA=
X-Google-Smtp-Source: APXvYqykyGOmWFOxri5YK+m40H2qhJTfm21JKihwLe/xtDdAeb9CllUwXWu771ZidE1RCpSx2xrdhw==
X-Received: by 2002:a17:906:6d05:: with SMTP id
 m5mr21676876ejr.102.1572994910514; 
 Tue, 05 Nov 2019 15:01:50 -0800 (PST)
Received: from localhost.localdomain ([213.55.225.95])
 by smtp.googlemail.com with ESMTPSA id v20sm974230edr.69.2019.11.05.15.01.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 15:01:49 -0800 (PST)
From: brunompena@gmail.com
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 00:01:09 +0100
Message-Id: <20191105230109.121319-1-brunompena@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_150152_823285_F34AAE89 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (brunompena[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] fstools: Add support to read-only MTD
 partitions (eg. for recovery images)
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
Cc: Bruno Pena <brunompena@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Bruno Pena <brunompena@gmail.com>

Signed-off-by: Bruno Pena <brunompena@gmail.com>
---
 libfstools/mtd.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/libfstools/mtd.c b/libfstools/mtd.c
index 77c71ee..56dd1a9 100644
--- a/libfstools/mtd.c
+++ b/libfstools/mtd.c
@@ -36,20 +36,32 @@ struct mtd_volume {
 
 static struct driver mtd_driver;
 
+static int mtd_open_device(const char *dev)
+{
+	int ret;
+
+	if ((ret = open(dev, O_RDWR | O_SYNC)) > -1)
+		ULOG_INFO("Opened mtd device: %s (read-write)\n", dev);
+	else if ((ret = open(dev, O_RDONLY)) > -1)
+		ULOG_INFO("Opened mtd device: %s (read-only)\n", dev);
+
+	return ret;
+}
+
 static int mtd_open(const char *mtd, int block)
 {
 	FILE *fp;
 	char dev[PATH_MAX];
-	int i, ret, flags = O_RDWR | O_SYNC;
+	int i, ret;
 
 	if ((fp = fopen("/proc/mtd", "r"))) {
 		while (fgets(dev, sizeof(dev), fp)) {
 			if (sscanf(dev, "mtd%d:", &i) && strstr(dev, mtd)) {
 				snprintf(dev, sizeof(dev), "/dev/mtd%s/%d", (block ? "block" : ""), i);
-				ret = open(dev, flags);
+				ret = mtd_open_device(dev);
 				if (ret < 0) {
 					snprintf(dev, sizeof(dev), "/dev/mtd%s%d", (block ? "block" : ""), i);
-					ret = open(dev, flags);
+					ret = mtd_open_device(dev);
 				}
 				fclose(fp);
 				return ret;
@@ -58,7 +70,7 @@ static int mtd_open(const char *mtd, int block)
 		fclose(fp);
 	}
 
-	return open(mtd, flags);
+	return mtd_open_device(mtd);
 }
 
 static void mtd_volume_close(struct mtd_volume *p)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
