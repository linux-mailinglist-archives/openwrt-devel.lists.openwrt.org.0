Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D1B186938
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 11:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LTQnmA4Zc0J+tmut0EYPR6XULQx6+Lv8lptklhzLwKM=; b=NBFxZUiIvVA2Hi
	XUsNqpbsxoukwvGaCVw7TBciD7xqiMlOIawKbHQc4Ws/ha5C94P0FY2m0ZAIuAHYIM/qREHWYqCSq
	nwcFS6zvGEkoM0drnNCH/5qCp8uT7kxO4c+aedm9VuwgyUrmI6W3rVJRIzPC3P/9SNo7FXKi/C0+z
	ONrX9+9hiit5tSrUoSjcTdn5DTF3sFbHftn6SU7JAXV6zjOpt7g08N17QvugrO/tCJP4ZGFfaMvP4
	FfQdFoE5WWqUL4vraasyaTL/sn49btFHohagDDACVxmKVYmV+OBIF3x3Mm9e+Mqhis4F6ldwMdMMb
	9LUnaGqKTpPiQ+sECwAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDn7f-0002Xv-3I; Mon, 16 Mar 2020 10:37:27 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDn7Y-0002XS-Uy
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 10:37:22 +0000
Received: by mail-pg1-x541.google.com with SMTP id u12so9508231pgb.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Mar 2020 03:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=76qj3STXTLAuOJFM6eObq7dRCtwtkEXwOZBDzpuMKl8=;
 b=Q3Ah0fGD5v9kd2/bVuabBEHwvU9G1XLmyqggOP2Nar33eqBguxqLnZc34QJRiKIp0H
 XPci7EibjXOXBNClRLrW0Dgl8KA725Tk1aiD2oMQJyLX1KwdtbwTIvENcMJLpkxSUMRr
 1WsVWvCk+9QEx9YrTPZX6SbcfifXdaLO72cENf7G2tn0rUbgK952LuNSNHCKFJHTr4hE
 xHl5dGn1iyYlxg1uU/6G06macRfWxR68qsmNJamkPrSPe56EWGI/G70RDHvPxxGotSku
 j3lKLrepEAQ7uPHCp25MBotfrKZs4Ownd91V5swIK4II2cykKbrAKXPspmN0pBXKDOHA
 crgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=76qj3STXTLAuOJFM6eObq7dRCtwtkEXwOZBDzpuMKl8=;
 b=phzfGeUxAFG5U5zmZmIvcLn4QKvXOJopJo9yuPaperKu8DfpUyIBQ2WvDhg4U6shN8
 ru92/cdJn0J18Z20ZejQK34t8Am+EuUFdzJ5LeGSlieNndcQ2k0rzojlf3MO+gXw7jPr
 aR17wQghq32xwH47pbss1es41Vbp5DIg6kT+3SG0/bU4ChUtubI2ckscaCn6CcZOXY/Q
 KqlPgUleWA7qiRukqHuTt6xPWgliy8xHpRuiSYC27/7M2/lK06oFvOfavNGiAYhZWPDI
 epAM47bbtQavRIpMmBrmDpT/lc3dJPQ/fqQULMYkPTLHj9Uqy0Om8y4bc3+jTJjJesEu
 KVfA==
X-Gm-Message-State: ANhLgQ3B9WwFY9N44ASSkzpzKK1jvI+2sVv/RQPFK49PA875pDvK5e4P
 neApVZrrbnyxbtU9PgQMrmvgYa4l
X-Google-Smtp-Source: ADFU+vsWGUr5rYN+lPetYLUh0aWrUFn68J49fyPvCKF/ooUO0hMjD/hMRftR6zLbH4fVUyyaPhacuQ==
X-Received: by 2002:a63:8f1a:: with SMTP id n26mr27404018pgd.355.1584355039420; 
 Mon, 16 Mar 2020 03:37:19 -0700 (PDT)
Received: from guoguo-omen.lan ([240e:379:94c:5c66:a2c4:5921:1bad:1475])
 by smtp.gmail.com with ESMTPSA id b25sm15703931pfp.201.2020.03.16.03.37.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 03:37:18 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 18:36:53 +0800
Message-Id: <20200316103654.545284-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_033721_021561_D365EAF8 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/2] generic: rtl8367b: add definition of
 debug reg
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

This commit adds definition of DEBUG0 and DEBUG1 registers and replace
magic values with proper register modifying.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../generic/files/drivers/net/phy/rtl8367b.c  | 35 ++++++++++++++++---
 1 file changed, 30 insertions(+), 5 deletions(-)

diff --git a/target/linux/generic/files/drivers/net/phy/rtl8367b.c b/target/linux/generic/files/drivers/net/phy/rtl8367b.c
index be9f74f888..ede8b21a64 100644
--- a/target/linux/generic/files/drivers/net/phy/rtl8367b.c
+++ b/target/linux/generic/files/drivers/net/phy/rtl8367b.c
@@ -133,9 +133,20 @@
 #define   RTL8367B_CHIP_MODE_MASK		0x7
 
 #define RTL8367B_CHIP_DEBUG0_REG		0x1303
-#define   RTL8367B_CHIP_DEBUG0_DUMMY0(_x)	BIT(8 + (_x))
+#define   RTL8367B_DEBUG0_SEL33(_x)		BIT(8 + (_x))
+#define   RTL8367B_DEBUG0_DRI_OTHER		BIT(7)
+#define   RTL8367B_DEBUG0_DRI_RG(_x)		BIT(5 + (_x))
+#define   RTL8367B_DEBUG0_DRI(_x)		BIT(3 + (_x))
+#define   RTL8367B_DEBUG0_SLR_OTHER		BIT(2)
+#define   RTL8367B_DEBUG0_SLR(_x)		BIT(_x)
 
 #define RTL8367B_CHIP_DEBUG1_REG		0x1304
+#define   RTL8367B_DEBUG1_DN_MASK(_x)		\
+	    GENMASK(6 + (_x)*8, 4 + (_x)*8)
+#define   RTL8367B_DEBUG1_DN_SHIFT(_x)		(4 + (_x) * 8)
+#define   RTL8367B_DEBUG1_DP_MASK(_x)		\
+	    GENMASK(2 + (_x) * 8, (_x) * 8)
+#define   RTL8367B_DEBUG1_DP_SHIFT(_x)		((_x) * 8)
 
 #define RTL8367B_DIS_REG			0x1305
 #define   RTL8367B_DIS_SKIP_MII_RXER(_x)	BIT(12 + (_x))
@@ -754,8 +765,22 @@ static int rtl8367b_extif_set_mode(struct rtl8366_smi *smi, int id,
 	switch (mode) {
 	case RTL8367_EXTIF_MODE_RGMII:
 	case RTL8367_EXTIF_MODE_RGMII_33V:
-		REG_WR(smi, RTL8367B_CHIP_DEBUG0_REG, 0x0367);
-		REG_WR(smi, RTL8367B_CHIP_DEBUG1_REG, 0x7777);
+		REG_RMW(smi, RTL8367B_CHIP_DEBUG0_REG,
+			RTL8367B_DEBUG0_SEL33(id),
+			RTL8367B_DEBUG0_SEL33(id));
+		if (id <= 1) {
+			REG_RMW(smi, RTL8367B_CHIP_DEBUG0_REG,
+				RTL8367B_DEBUG0_DRI(id) |
+					RTL8367B_DEBUG0_DRI_RG(id) |
+					RTL8367B_DEBUG0_SLR(id),
+				RTL8367B_DEBUG0_DRI_RG(id) |
+					RTL8367B_DEBUG0_SLR(id));
+			REG_RMW(smi, RTL8367B_CHIP_DEBUG1_REG,
+				RTL8367B_DEBUG1_DN_MASK(id) |
+					RTL8367B_DEBUG1_DP_MASK(id),
+				(7 << RTL8367B_DEBUG1_DN_SHIFT(id)) |
+					(7 << RTL8367B_DEBUG1_DP_SHIFT(id)));
+		}
 		break;
 
 	case RTL8367_EXTIF_MODE_TMII_MAC:
@@ -766,8 +791,8 @@ static int rtl8367b_extif_set_mode(struct rtl8366_smi *smi, int id,
 
 	case RTL8367_EXTIF_MODE_GMII:
 		REG_RMW(smi, RTL8367B_CHIP_DEBUG0_REG,
-		        RTL8367B_CHIP_DEBUG0_DUMMY0(id),
-			RTL8367B_CHIP_DEBUG0_DUMMY0(id));
+			RTL8367B_DEBUG0_SEL33(id),
+			RTL8367B_DEBUG0_SEL33(id));
 		REG_RMW(smi, RTL8367B_EXT_RGMXF_REG(id), BIT(6), BIT(6));
 		break;
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
