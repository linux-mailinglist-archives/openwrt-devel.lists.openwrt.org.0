Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FC46803E
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 18:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDpG80fItmKR/aiTVnmGAFJNbzixqv96QdBmAoO7A9k=; b=VEesf805T7Jyn6
	qToMVRGLoOWMZ6EC4Muk29AA5YNQlVWbXfZcm6jJg1fMN4+lnRDT7B4kcPrSmwXhG+5nt5o0BZn+W
	ugKGkZwurJMvCW3LEe38IBw7OwSGfWpQqBkRqTX0toqDFjXtyobIG2rZ/UMnIyF0WvKECyuihjXgT
	gARHCAvUYZX5uDOMUK3P137kM6PjRWvzEiAotv9cIEHBuqzgvkND1lEnWKEyFwrzSvYqs+SKB7Hc9
	b5li9WKoN5A4nT91++yQxr2jyE+A1LvktzqCUGJOYYbcqi+yBhW7vgdx2HeyDVVT6n8Qt4dUT/8U4
	CNw5F1Nd5betDDQeZ4KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmhTW-0000vp-Th; Sun, 14 Jul 2019 16:35:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmhSm-0007zv-1O
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 16:35:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id g2so6342571pfq.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 09:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/wT+GtzOuq2kiXQFoVZ+bW5avJCos8jADO+SBtV8lAM=;
 b=TcttI57voo1/EziL0bmywY1DNhamYoE0YWwZNOQtLJLyqHoSyMAgx+nTyjwz1RpCcR
 C+Xpnc52in8zFY6HB/Xpd3sNpyFM5CKe/6vf4bl4lF748ueMiiEmhIs8OTRF43dAMDRN
 XOBrCyKlByBUf2I/I+JnGGn/ZulzKEfwUsvlXW0voeVXN8WibhiL6gC4LSEoVIUQ4yXW
 56ogG6sej4OHSzh9LxfoM+7bubjj3iWrl58UDEn8GCHKzyyGIRMnXb5MAmXbil9qF7Qc
 3bHUhNOXZI7AfJyRfCuc2CWCirHJ3a1z28mXUKS2494Ne4xickfTy0Uf4B6joY2c06vP
 9ugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/wT+GtzOuq2kiXQFoVZ+bW5avJCos8jADO+SBtV8lAM=;
 b=DC5rDlCOxBBSEK1EzlRP753jqUTJ5IUXcFgNakh+uabRDavKiJxu6gTkZiXNJQ34/k
 jasufokilqvGVD8QIYX2vZEF1HrSpDFyWbW+cnVGtFtRao8ZFwT+PEIqUxvRojAqEbKy
 x4CzPzs3C/ndmarB4/nCbnut8irbGnoqUuUSnw+J/Md/2eX+is7D4sZfMaERfowoLjgR
 na4NDwWjF6B5LKPjptSXEmzidsKR9y2DBBTWJTPEsjtrRGyvPabirgyCXTeV00/+K5dp
 Sfyee0/a98klAcC+tyajV+HN6BzurzSNCgEfDIyyd6sLWdnUeWioCAgAhQOpqQuYK9+I
 Ntlw==
X-Gm-Message-State: APjAAAWgGlIGttme5TzL2ELPkqwQPdzb4dThWBCUKaFy0WaPGghbQq8T
 sIhVtCUP1dXZhLzUdp7Ou5Tewle5lqg=
X-Google-Smtp-Source: APXvYqyTtN7R62OYlqUL90DKfWStVYtR3k03+sB+SasuxbBMTmlVurUBa+wsVhntxbQ+PXyCXgXhCA==
X-Received: by 2002:a17:90a:360b:: with SMTP id
 s11mr24129809pjb.51.1563122097876; 
 Sun, 14 Jul 2019 09:34:57 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([27.155.236.112])
 by smtp.gmail.com with ESMTPSA id d17sm505805pgl.66.2019.07.14.09.34.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 09:34:57 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jul 2019 00:34:27 +0800
Message-Id: <20190714163428.26303-3-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190714163428.26303-1-gch981213@gmail.com>
References: <20190714163428.26303-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_093500_086188_4A399808 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Subject: [OpenWrt-Devel] [PATCH RFC 2/3] ramips: mt76x8: pinctrl: add a hack
 for ESD_MODE bit in GPIO1_MODE
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

This bit is used to specify sdxc pinmap for mt76x8. Details available
in patch description.

To properly solve this problem and the other pinctrl hack in mtk-mmc
driver we'll need to write a dedicated pinctrl driver for mt76x8,
with the support for configuring AGPIO_MODE and RGCTL registers as
well as specially handling GPIO reservation/pinctrl setup for ESDMODE.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../500-hack-mt76x8-pinctrl-esdmode.patch     | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 target/linux/ramips/patches-4.14/500-hack-mt76x8-pinctrl-esdmode.patch

diff --git a/target/linux/ramips/patches-4.14/500-hack-mt76x8-pinctrl-esdmode.patch b/target/linux/ramips/patches-4.14/500-hack-mt76x8-pinctrl-esdmode.patch
new file mode 100644
index 0000000000..af8ce1257a
--- /dev/null
+++ b/target/linux/ramips/patches-4.14/500-hack-mt76x8-pinctrl-esdmode.patch
@@ -0,0 +1,55 @@
+From: Chuanhong Guo <gch981213@gmail.com>
+Date: Sat, 13 Jul 2019 17:59:03 +0800
+Subject: [PATCH] ramips: hack: add esdmode pinctrl group
+
+Since mt76x8an ver1 eco2, SDXC pins can be switched to the
+following pinmap:
+sd_d1  -> PAD_I2S_SDI
+sd_d0  -> PAD_I2S_WS
+sd_cmd -> PAD_I2S_CLK
+sd_d3  -> PAD_I2C_SCLK
+sd_d2  -> PAD_I2C_SD
+sd_clk -> PAD_GPIO0
+sd_wp  -> PAD_TXD1
+sd_cd  -> PAD_RXD1
+
+To use this pinmap, one would need to set ESD_MODE bit (bit 15)
+to 1 in GPIO1_MODE and switch other used pads into GPIO mode.
+
+MTK called this pinmap "router mode" and the pinmap described
+in their datasheed is called "iot mode".
+
+This patch is hacky because:
+1. pinmux-rt2880 doesn't support reserving noncontiguous GPIO
+   pins so those GPIOs can't be properly reserved.
+2. it misused "gpio" function for "iot mode", due to the fact
+   that this mode doesn't reserve any GPIOs.
+
+Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
+---
+--- a/arch/mips/ralink/mt7620.c
++++ b/arch/mips/ralink/mt7620.c
+@@ -149,6 +149,7 @@ static struct rt2880_pmx_func refclk_grp
+ static struct rt2880_pmx_func perst_grp_mt7628[] = { FUNC("perst", 0, 36, 1) };
+ static struct rt2880_pmx_func wdt_grp_mt7628[] = { FUNC("wdt", 0, 38, 1) };
+ static struct rt2880_pmx_func spi_grp_mt7628[] = { FUNC("spi", 0, 7, 4) };
++static struct rt2880_pmx_func esd_mode_grp_mt7628[] = { FUNC("sdxc", 1, 0, 0) };
+ 
+ static struct rt2880_pmx_func sd_mode_grp_mt7628[] = {
+ 	FUNC("jtag", 3, 22, 8),
+@@ -297,6 +298,7 @@ static struct rt2880_pmx_func wled_an_gr
+ #define MT7628_GPIO_MODE_I2C		20
+ #define MT7628_GPIO_MODE_REFCLK		18
+ #define MT7628_GPIO_MODE_PERST		16
++#define MT7628_GPIO_MODE_ESDMODE	15
+ #define MT7628_GPIO_MODE_WDT		14
+ #define MT7628_GPIO_MODE_SPI		12
+ #define MT7628_GPIO_MODE_SDMODE		10
+@@ -319,6 +321,7 @@ static struct rt2880_pmx_group mt7628an_
+ 				1, MT7628_GPIO_MODE_I2C),
+ 	GRP("refclk", refclk_grp_mt7628, 1, MT7628_GPIO_MODE_REFCLK),
+ 	GRP("perst", perst_grp_mt7628, 1, MT7628_GPIO_MODE_PERST),
++	GRP_G("esdmode", esd_mode_grp_mt7628, 1, 0, MT7628_GPIO_MODE_ESDMODE),
+ 	GRP("wdt", wdt_grp_mt7628, 1, MT7628_GPIO_MODE_WDT),
+ 	GRP("spi", spi_grp_mt7628, 1, MT7628_GPIO_MODE_SPI),
+ 	GRP_G("sdmode", sd_mode_grp_mt7628, MT7628_GPIO_MODE_MASK,
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
