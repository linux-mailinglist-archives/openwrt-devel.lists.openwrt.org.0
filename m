Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDD69E4D5
	for <lists+openwrt-devel@lfdr.de>; Tue, 27 Aug 2019 11:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CQJRHQbaOr+X/tndf73WLTBvND2aWNsoSkxRa9oC8VQ=; b=ULDcq/MCepS1Vi
	fFRzcCwBzpYTY2x2cpoPECNpyZiP7EK9tfo6tKAs5959e3zo93wwnd36zVagpJZxqr3fJ8WpbKQuu
	90F0QCbPo+YN9pJegQ3gLOXwO1KPnPOZSamj2uHGP9lT8Wan/F32L0yQ2FD2shL1RR5+h8GMCzieu
	wPdqweWYKSJRfVoKGAGAs5ztJ6iFjo6GP3icfsgp4rfroTjPZn9mpqMjMTxwtutnUT0z/gfZRWDuk
	mg0q0Nv0m8PgxzIlCwd+6DrIAzWeeMrqMYe8AtWbb1jyP8vHJ1Dhn1mFBXHDhLi3WPrkGLP0RHpEY
	xe16wLYSPgqoUTtzyZvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Y7K-0005SN-Ug; Tue, 27 Aug 2019 09:50:23 +0000
Received: from forward104o.mail.yandex.net ([37.140.190.179])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Y6W-0003y3-RF
 for openwrt-devel@lists.openwrt.org; Tue, 27 Aug 2019 09:49:35 +0000
Received: from mxback8o.mail.yandex.net (mxback8o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::22])
 by forward104o.mail.yandex.net (Yandex) with ESMTP id 6C8B394174C
 for <openwrt-devel@lists.openwrt.org>; Tue, 27 Aug 2019 12:49:28 +0300 (MSK)
Received: from smtp1j.mail.yandex.net (smtp1j.mail.yandex.net
 [2a02:6b8:0:801::ab])
 by mxback8o.mail.yandex.net (nwsmtp/Yandex) with ESMTP id 9NlmOw7Kec-nSWu7XeX; 
 Tue, 27 Aug 2019 12:49:28 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1566899368; bh=vUaJEGmIfoVRcyfsK6OwrbFheQYGKJ0l2EhiGnYtu7Y=;
 h=To:Subject:From:Date:Message-ID;
 b=jNO0BDsK3uKGoIW0kj2lwYTyJQf7TWJEnhNtiLFR10eDF7dQJTF+7AFqpLXWmGIa2
 8ZvD8rbUjwTgbmzFweNrZe/llszcOcUa67bajz3gnau9CpPz9eMvnM4qq+/Ou4C9kv
 ovb8FJ4o5diHHLZOfUYlEg2C1wEfYu0irrQOTZt0=
Authentication-Results: mxback8o.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by smtp1j.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 uz205QMTLk-nRAOBk7X; Tue, 27 Aug 2019 12:49:27 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
From: Serge Vailugin <vasilugin@yandex.ru>
To: openwrt-devel@lists.openwrt.org
Message-ID: <eb8f5946-b689-2330-da45-1399fd6b7dfc@yandex.ru>
Date: Tue, 27 Aug 2019 16:49:27 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_024933_856133_FDD4BAC2 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [37.140.190.179 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vasilugin[at]yandex.ru)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2 2/3] kernel: rtl8367b: add configuration
 for extended interface 2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Both rtl8367b and rtl8367s have two extended interface
rtl8367rb: 5 port + 2*RGMII/MII
rtl8367s:  5 port + SGMII/HSGMI + RGMII/MII
(?)rtl8367sb:  5 port + 2*RGMII/MII
These interfaces correspond to EXT1 and EXT2 (ports 6 and 7 respectivly).
Current driver don't support EXT2 configuration but notexisting EXT0 
(port 5).
This patch allow to configure EXT2 in dts-file:

	rtl8367rb {
		compatible = "realtek,rtl8367b";
		cpu_port = <7>;
		realtek,extif2 = <1 0 1 1 1 1 1 1 2>; /* configuration for EXT2 */
		mii-bus = <&mdio0>;
		phy_id = <29>;
	};

This patch is independent of the rtl8366_smi patch (set switch phy address)
and may be helpful for device with rtl8367rb connected through EXT2.

Signed-off-by: Serge Vasilugin <vasilugin@yandex.ru>

--- a/target/linux/generic/files/drivers/net/phy/rtl8367b.c
+++ b/target/linux/generic/files/drivers/net/phy/rtl8367b.c
@@ -137,19 +137,30 @@

  #define RTL8367B_CHIP_DEBUG1_REG		0x1304

+/* extif2 setup register */
+#define RTL8367B_CHIP_DEBUG2_REG		0x13e2
+
  #define RTL8367B_DIS_REG			0x1305
  #define   RTL8367B_DIS_SKIP_MII_RXER(_x)	BIT(12 + (_x))
  #define   RTL8367B_DIS_RGMII_SHIFT(_x)		(4 * (_x))
  #define   RTL8367B_DIS_RGMII_MASK		0x7

-#define RTL8367B_EXT_RGMXF_REG(_x)		(0x1306 + (_x))
+/* extif2 digital interface select */
+#define RTL8367B_DIS2_REG			0x13c3
+#define   RTL8367B_DIS2_SKIP_MII_RXER_SHIFT	4
+#define   RTL8367B_DIS2_SKIP_MII_RXER		0x10
+#define   RTL8367B_DIS2_RGMII_SHIFT		0
+#define   RTL8367B_DIS2_RGMII_MASK		0xF
+/* extif2 delay config register == 0x13c5 */
+#define RTL8367B_EXT_RGMXF_REG(_x)		((_x) == 2 ? 0x13c5 : 0x1306 + (_x))
  #define   RTL8367B_EXT_RGMXF_DUMMY0_SHIFT	5
  #define   RTL8367B_EXT_RGMXF_DUMMY0_MASK	0x7ff
  #define   RTL8367B_EXT_RGMXF_TXDELAY_SHIFT	3
  #define   RTL8367B_EXT_RGMXF_TXDELAY_MASK	1
  #define   RTL8367B_EXT_RGMXF_RXDELAY_MASK	0x7

-#define RTL8367B_DI_FORCE_REG(_x)		(0x1310 + (_x))
+/* extif2 digital interface force register == 0x13c4 */
+#define RTL8367B_DI_FORCE_REG(_x)		((_x) == 2 ? 0x13c4 : 0x1310 + (_x))
  #define   RTL8367B_DI_FORCE_MODE		BIT(12)
  #define   RTL8367B_DI_FORCE_NWAY		BIT(7)
  #define   RTL8367B_DI_FORCE_TXPAUSE		BIT(6)
@@ -754,8 +786,9 @@ static int rtl8367b_extif_set_mode(struct 
rtl8366_smi *smi, int id,
  	switch (mode) {
  	case RTL8367_EXTIF_MODE_RGMII:
  	case RTL8367_EXTIF_MODE_RGMII_33V:
-		REG_WR(smi, RTL8367B_CHIP_DEBUG0_REG, 0x0367);
+		REG_WR(smi, RTL8367B_CHIP_DEBUG0_REG, 0x0767);
  		REG_WR(smi, RTL8367B_CHIP_DEBUG1_REG, 0x7777);
+		REG_WR(smi, RTL8367B_CHIP_DEBUG2_REG, 0x01fd);
  		break;

  	case RTL8367_EXTIF_MODE_TMII_MAC:
@@ -785,9 +818,14 @@ static int rtl8367b_extif_set_mode(struct 
rtl8366_smi *smi, int id,
  		return -EINVAL;
  	}

-	REG_RMW(smi, RTL8367B_DIS_REG,
-		RTL8367B_DIS_RGMII_MASK << RTL8367B_DIS_RGMII_SHIFT(id),
-		mode << RTL8367B_DIS_RGMII_SHIFT(id));
+	if (id < 2)
+		REG_RMW(smi, RTL8367B_DIS_REG,
+			RTL8367B_DIS_RGMII_MASK << RTL8367B_DIS_RGMII_SHIFT(id),
+			mode << RTL8367B_DIS_RGMII_SHIFT(id));
+	else
+		REG_RMW(smi, RTL8367B_DIS2_REG,
+			RTL8367B_DIS2_RGMII_MASK << RTL8367B_DIS2_RGMII_SHIFT,
+			mode << RTL8367B_DIS2_RGMII_SHIFT);

  	return 0;
  }
@@ -931,6 +969,10 @@ static int rtl8367b_setup(struct rtl8366_smi *smi)
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

---
serge

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
