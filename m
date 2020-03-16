Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B9618693C
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 11:38:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqT9TAcdcZhKwpWa9ZlOgN82vpHi+9ave/2597YqSCw=; b=GHunjPu+mKclR2
	nZwBVG508z52MCZ7FiYp/MHrqiWiM6rdyGDrEos4pakq8usXS6EHKahSowljwrx70w4Ifxwcibm/n
	dVR2YNQEvEgQB5KGazmUR84B9l+3f+PzyPBmXUWybh0II/J3W78iW+I1pYaI0KXcc9FA6++UauO9q
	oPiOCycEKI4629A/mY5RjbzeOxqQ0GXGyGkGVSAGN4D6nMIgy5QuY5y1/1PbQW8P9RcmqstqyifzQ
	Gg8vzhcJww5UY3ANbWMNH07qZdYCYvFAp2CV0ViCvNG09qf66yuOU0OUZmZB+QX1T0cZl4BKQdf5D
	a95cgPxksk8VRGl0zvHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDn87-00034S-Ub; Mon, 16 Mar 2020 10:37:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDn80-000324-Gv
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 10:37:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id m5so9532514pgg.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Mar 2020 03:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u7c1dQmX6yCN2BxloaOM4b/PY9RSmJMOJsPi+zePyUE=;
 b=ptPd2rpIBSyu/9hUqfy+9v4tGp7QRikqPBv7K1cQNGeGaTuAfPPjRo6pVx7CYziWVb
 6Dk5IXYT7dVgkppOg2d2+Iv53/dYhsckL5GQ+qmoOwWwVBwY9XYA5UcV5oR6MhMwqX1O
 9jYtnzmv5M1qNp8DAYkehVtI36VxG1JA9c+aeITARUcd1C/e4BIBHxKe7K3pnOLN/zdH
 H5sFa/ZF8iNiz3cQq++H/ltHoFxFZTiZNAIF1yniQx/Y023ezdLCwFm1sQmBO9QRCy1/
 byJk/vrZW3BRQWJldBhFQwGdS3XGACARckSxu6MgFlKDs7qoEuOanRIn6TZ9J+742hN4
 5Pfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u7c1dQmX6yCN2BxloaOM4b/PY9RSmJMOJsPi+zePyUE=;
 b=DdTt8OBZSQHrnInJWhkgsJIKXPBQFm6NW9efLgLzvOb2mbnIQeqLs9aw+qTNEix5ar
 nagItg+aLTcQftMoJQXTkMg4X1kWoBQKaBIqNgB9OhKHjnIr2FnkNrQ5yMLMR+m52Kyh
 PZM7MmZTfc0wy8AJ56TNC8gBNxMcjkiDsMlHsQ17i7eFm0JA47lOM1mnw+aV/wM0Fwp0
 Km1H4mDnBaXOyZjb+0VKcq8I1HnB2dr4VMHdX7qmip/XT4Z99fmvTUj1ko1Gu0UkIrMC
 Ac71TJzCWwO+bnOEMFIhYHUkDKZGnQ9JLsNhs3JZx4mytAsBdgHkUeAhSO8zddHnHUOS
 bkUg==
X-Gm-Message-State: ANhLgQ3ECVjxetINYBcFbTjIO/FNYtUCO4hmHAlw2/FAWsN5sWxY8wnZ
 PaEti14FrCAizDZZB02JoQGSJybH1Lc=
X-Google-Smtp-Source: ADFU+vsmOeCpHx2JHr+xgob/Ox34Qr6JV3oiHmkemrA87i8oPLo/0FyHWANjfcgFViS0jqIPRea60A==
X-Received: by 2002:a63:67c5:: with SMTP id
 b188mr26156263pgc.111.1584355067320; 
 Mon, 16 Mar 2020 03:37:47 -0700 (PDT)
Received: from guoguo-omen.lan ([240e:379:94c:5c66:a2c4:5921:1bad:1475])
 by smtp.gmail.com with ESMTPSA id b25sm15703931pfp.201.2020.03.16.03.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 03:37:46 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 18:36:54 +0800
Message-Id: <20200316103654.545284-2-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200316103654.545284-1-gch981213@gmail.com>
References: <20200316103654.545284-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_033748_564692_FB14C1DC 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 2/2] kernel: rtl8367b: add configuration for
 extif2
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
Cc: Chuanhong Guo <gch981213@gmail.com>, Serge Vasilugin <vasilugin@yandex.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Serge Vasilugin <vasilugin@yandex.ru>

Both rtl8367b and rtl8367s have two extended interface
rtl8367rb: 5 port + 2*RGMII/MII
rtl8367s:  5 port + SGMII/HSGMI + RGMII/MII
(?)rtl8367sb:  5 port + 2*RGMII/MII
These interfaces correspond to EXT1 and EXT2 (ports 6 and 7 respectivly).

This patch allow to configure EXT2 in dts-file:

	rtl8367rb {
		compatible = "realtek,rtl8367b";
		cpu_port = <7>;
		realtek,extif2 = <1 0 1 1 1 1 1 1 2>;
		mii-bus = <&mdio0>;
		phy_id = <29>;
	};

Signed-off-by: Serge Vasilugin <vasilugin@yandex.ru>
[fix indent, replace magic value, alter commit message]
Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../generic/files/drivers/net/phy/rtl8367b.c  | 44 +++++++++++++++++--
 1 file changed, 40 insertions(+), 4 deletions(-)

diff --git a/target/linux/generic/files/drivers/net/phy/rtl8367b.c b/target/linux/generic/files/drivers/net/phy/rtl8367b.c
index ede8b21a64..1841001c9a 100644
--- a/target/linux/generic/files/drivers/net/phy/rtl8367b.c
+++ b/target/linux/generic/files/drivers/net/phy/rtl8367b.c
@@ -148,12 +148,28 @@
 	    GENMASK(2 + (_x) * 8, (_x) * 8)
 #define   RTL8367B_DEBUG1_DP_SHIFT(_x)		((_x) * 8)
 
+#define RTL8367B_CHIP_DEBUG2_REG		0x13e2
+#define   RTL8367B_DEBUG2_RG2_DN_MASK		GENMASK(8, 6)
+#define   RTL8367B_DEBUG2_RG2_DN_SHIFT		6
+#define   RTL8367B_DEBUG2_RG2_DP_MASK		GENMASK(5, 3)
+#define   RTL8367B_DEBUG2_RG2_DP_SHIFT		3
+#define   RTL8367B_DEBUG2_DRI_EXT2_RG		BIT(2)
+#define   RTL8367B_DEBUG2_DRI_EXT2		BIT(1)
+#define   RTL8367B_DEBUG2_SLR_EXT2		BIT(0)
+
 #define RTL8367B_DIS_REG			0x1305
 #define   RTL8367B_DIS_SKIP_MII_RXER(_x)	BIT(12 + (_x))
 #define   RTL8367B_DIS_RGMII_SHIFT(_x)		(4 * (_x))
 #define   RTL8367B_DIS_RGMII_MASK		0x7
 
-#define RTL8367B_EXT_RGMXF_REG(_x)		(0x1306 + (_x))
+#define RTL8367B_DIS2_REG			0x13c3
+#define   RTL8367B_DIS2_SKIP_MII_RXER_SHIFT	4
+#define   RTL8367B_DIS2_SKIP_MII_RXER		0x10
+#define   RTL8367B_DIS2_RGMII_SHIFT		0
+#define   RTL8367B_DIS2_RGMII_MASK		0xf
+
+#define RTL8367B_EXT_RGMXF_REG(_x)		\
+	  ((_x) == 2 ? 0x13c5 : 0x1306 + (_x))
 #define   RTL8367B_EXT_RGMXF_DUMMY0_SHIFT	5
 #define   RTL8367B_EXT_RGMXF_DUMMY0_MASK	0x7ff
 #define   RTL8367B_EXT_RGMXF_TXDELAY_SHIFT	3
@@ -780,6 +796,17 @@ static int rtl8367b_extif_set_mode(struct rtl8366_smi *smi, int id,
 					RTL8367B_DEBUG1_DP_MASK(id),
 				(7 << RTL8367B_DEBUG1_DN_SHIFT(id)) |
 					(7 << RTL8367B_DEBUG1_DP_SHIFT(id)));
+		} else {
+			REG_RMW(smi, RTL8367B_CHIP_DEBUG1_REG,
+				RTL8367B_DEBUG2_DRI_EXT2 |
+					RTL8367B_DEBUG2_DRI_EXT2_RG |
+					RTL8367B_DEBUG2_SLR_EXT2 |
+					RTL8367B_DEBUG2_RG2_DN_MASK |
+					RTL8367B_DEBUG2_RG2_DP_MASK,
+				RTL8367B_DEBUG2_DRI_EXT2_RG |
+					RTL8367B_DEBUG2_SLR_EXT2 |
+					(7 << RTL8367B_DEBUG2_RG2_DN_SHIFT) |
+					(7 << RTL8367B_DEBUG2_RG2_DP_SHIFT));
 		}
 		break;
 
@@ -810,9 +837,14 @@ static int rtl8367b_extif_set_mode(struct rtl8366_smi *smi, int id,
 		return -EINVAL;
 	}
 
-	REG_RMW(smi, RTL8367B_DIS_REG,
-		RTL8367B_DIS_RGMII_MASK << RTL8367B_DIS_RGMII_SHIFT(id),
-		mode << RTL8367B_DIS_RGMII_SHIFT(id));
+	if (id <= 1)
+		REG_RMW(smi, RTL8367B_DIS_REG,
+			RTL8367B_DIS_RGMII_MASK << RTL8367B_DIS_RGMII_SHIFT(id),
+			mode << RTL8367B_DIS_RGMII_SHIFT(id));
+	else
+		REG_RMW(smi, RTL8367B_DIS2_REG,
+			RTL8367B_DIS2_RGMII_MASK << RTL8367B_DIS2_RGMII_SHIFT,
+			mode << RTL8367B_DIS2_RGMII_SHIFT);
 
 	return 0;
 }
@@ -956,6 +988,10 @@ static int rtl8367b_setup(struct rtl8366_smi *smi)
 		err = rtl8367b_extif_init_of(smi, 1, "realtek,extif1");
 		if (err)
 			return err;
+
+		err = rtl8367b_extif_init_of(smi, 2, "realtek,extif2");
+		if (err)
+			return err;
 	} else {
 		err = rtl8367b_extif_init(smi, 0, pdata->extif0_cfg);
 		if (err)
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
