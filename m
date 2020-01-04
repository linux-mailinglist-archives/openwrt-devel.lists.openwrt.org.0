Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4668D130241
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 12:53:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=epKqeD8zsP68vHFJPjROGlAGWDciRunGjiD+VFLwc7Q=; b=deHuyErZhYARez
	GMxq/tt93XC+MLJe5E43arGzbaXSp9mgXH+mzcWwmFOPWVXYOWNfTg3/Zo9lLquVkE8R13UZjNYPz
	MscMnptJOoruUYpZAuq/UHb9HPyBIp+8+ZGV0k6zyVOJPo0+l5ptSe2DbSA0nMkLyzAsDyAnO0r8v
	cXGkr8k+1tRSEvavzlXr7Tt8N7Fv3uh+eUjG/Y4BGn2/UKHjWyQcTSzTJYju2Sgn4yxHpydSgfw/f
	hl4dlOEYibAsv+ZqjLNWnkW7yYjoAdcYVmynZPt4SjIAn6B9WRzrHFhjiCYWmHgtpgxvlSWFSOsDe
	v1zblUH5h/JgAEvdxnOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inhzi-0008Fu-Me; Sat, 04 Jan 2020 11:53:26 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inhzZ-0008FG-PR
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 11:53:19 +0000
Received: by mail-ed1-x541.google.com with SMTP id dc19so43672403edb.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 Jan 2020 03:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=U2/KcygDjjJ1MiRvXJMMBTOpodwoiwVWMkyToPLHvs8=;
 b=QkbKCMC6WoW1j9TI71spC2A1NPmMwa0Wdhz+AWJsumEM6EiSoZ+9RDfdX9Pu53VhoK
 P5KwOrJrlP/2cJnnBPXb9HBI4QlfqKhOx+N2ixoSvQjM4FYXZGL3VZe1GbxbVCkhrlc7
 JAP2StT6aD8s03ox4rGV2EjQNclC3NFdR7DEFd8o0bN2jGWLHLB0kYT5Aw9Pu4wwz46w
 wlsogmL4A/iFsfUdXeSub/cTZm+hXbDebBGsDWnPGOjl4Flo1cREy/Id+/MnCa4H7LD4
 YaV/4OiOIXAV+N8oY61XnxgDLPe5+ltWyyz4j4vBPf9o6Xn66ke2G9rGgO67mJ6k8NKg
 Hd4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=U2/KcygDjjJ1MiRvXJMMBTOpodwoiwVWMkyToPLHvs8=;
 b=hZ4hf2ISl5CF7ZqTOh3Z0LFy1lUeUj3eAT8ZafwP3UtC2V/Atdggk74XY5ZnhbDNTk
 6lRVpna3kdPK0rvwk1Q+fXE7LS65smtUJiU7PEcx7/4MGF4HA0rmxtNrdkJw9ScWTlbH
 1epilwgV1TGCChcokT4m5zBdtN7gOQmEMeyhdeNeMYx3b6CpZ4mmLVx+zPHqxlHL854I
 xbd3HYGAj4dO9yKQRNXCVx91oVMcqxtu7z0JJIRkYfaH32+cI2yvbnMXjjbP5TTGcnTv
 wEQcF+/z+bDpjMB+jVN8htaVUZjZ3bhUPXpSGXH673FBp3EE2iCUobN4pcWtxrkLHy60
 4UgA==
X-Gm-Message-State: APjAAAXpT4J6sViGXprQblMkDPJxzNqKmAewsb4IBACz8A7I4MHmu6yh
 TJKfG8IuGXTwaOKoo18iCriZS/7Eapw=
X-Google-Smtp-Source: APXvYqw8QPTh4HKHxJdgqyhYLx/Mmnnp11WVRx5W6rn5szM2TOZLfEn7eZbHLl4/n6bt2B8RPGu+5w==
X-Received: by 2002:a17:906:12cf:: with SMTP id
 l15mr99002711ejb.264.1578138794306; 
 Sat, 04 Jan 2020 03:53:14 -0800 (PST)
Received: from localhost.localdomain (31-10-150-76.cgn.dynamic.upc.ch.
 [31.10.150.76])
 by smtp.googlemail.com with ESMTPSA id n3sm7861722ejj.29.2020.01.04.03.53.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 04 Jan 2020 03:53:13 -0800 (PST)
From: Bruno Pena <brunompena@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 Jan 2020 12:52:08 +0100
Message-Id: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_035317_850007_70D6CDBD 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (brunompena[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only MTD
 partitions (eg. recovery images)
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch enables fstools to open read-only MTD partitions, which in
turn also enables OpenWrt to boot from read-only partitions.

The use of read-only partitions is of special importance for WiFi-only
devices, where a protected read-only recovery image can be used in case
something goes wrong with the main firmware (eg. user gets locked out
due to bad settings, flash of an unbootable dev firmware, etc).

Signed-off-by: Bruno Pena <brunompena@gmail.com>
---
 libfstools/mtd.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/libfstools/mtd.c b/libfstools/mtd.c
index 77c71ee..aae633e 100644
--- a/libfstools/mtd.c
+++ b/libfstools/mtd.c
@@ -36,20 +36,31 @@ struct mtd_volume {
 
 static struct driver mtd_driver;
 
+static int mtd_open_device(const char *dev)
+{
+	int ret;
+
+	ret = open(dev, O_RDWR | O_SYNC);
+	if (ret < 0)
+		ret = open(dev, O_RDONLY);
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
@@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, int block)
 		fclose(fp);
 	}
 
-	return open(mtd, flags);
+	return mtd_open_device(mtd);
 }
 
 static void mtd_volume_close(struct mtd_volume *p)
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
