Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31AF8E64A
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 10:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zLbOVa6roVGPWakPpL13xQTR4HOXbhPVw1fNtYpel1M=; b=EamhR4tQ7P6FhA
	DZviUA8+wr/qG8+AyBji6YsvaZgtHeG6OPQdbw+yjpHjjU/p0e0pxRTeyVmfjMBbO7/TL9h67luK2
	BQ9eEEA7/isgCcMyAw7wIaRLQ4zDllW80KPmTlLezLuwRfctZxOJtkFstL0Dunp8+n1IDt5kzwjck
	3v2K/GuXmmhB46kc1F0PCtZz++QspU7EG19cDAR2Q1OnlzVRyNLtsY4wU7ewItPeGJNd2QcTVftcJ
	gfg9eUMnpafSgafNtFWVrMrpCF+3+eOsH00xwI50pT+qIYGzPtTFiAk0ORZu2jJWs30QXWWGmXpK4
	cMpCR2lfSuAHqCFyYjzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyB7L-0006hq-QQ; Thu, 15 Aug 2019 08:28:19 +0000
Received: from forward101j.mail.yandex.net ([2a02:6b8:0:801:2::101])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyB7B-0006hV-3v
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 08:28:11 +0000
Received: from mxback3o.mail.yandex.net (mxback3o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::1d])
 by forward101j.mail.yandex.net (Yandex) with ESMTP id 25DFC1BE0399
 for <openwrt-devel@lists.openwrt.org>; Thu, 15 Aug 2019 11:28:05 +0300 (MSK)
Received: from smtp3o.mail.yandex.net (smtp3o.mail.yandex.net
 [2a02:6b8:0:1a2d::27])
 by mxback3o.mail.yandex.net (nwsmtp/Yandex) with ESMTP id B6VWteKm4t-S5KqDugs; 
 Thu, 15 Aug 2019 11:28:05 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1565857685; bh=Sc7A/NhWgZASQny8O3Jt/ND2fleSnJcHyhBdKkNadL8=;
 h=To:Subject:From:Date:Message-ID;
 b=qO3Fv9VN3yuetByw/XikK0ooVfHLiHxfOQzG70fn3M33hYwWsxVV2c6H/jnIQlqBl
 AWhWwNDg6c1h9XR6uwn1LTk4d8xtsNS4RRCkoQDjAcAVt5tcuNzXpyseLa1cON3xce
 yC4R2Bv6QAuzYDuGP87+i/REmwObkcMX0RAc/no8=
Authentication-Results: mxback3o.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by smtp3o.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 d6S1CoF8i4-S4aShUWD; Thu, 15 Aug 2019 11:28:04 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
From: Serge Vasilugin <vasilugin@yandex.ru>
To: openwrt-devel@lists.openwrt.org
Message-ID: <62bc7812-4435-54d7-f5f4-30f5bed6d249@yandex.ru>
Date: Thu, 15 Aug 2019 15:28:03 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_012809_524682_B8527581 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:6b8:0:801:2:0:0:101 listed in] [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vasilugin[at]yandex.ru)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/3] kernel: rtl8367b: add configuration for
 extended interface 2
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
These interfaces correpond to EXT1 and EXT2 (ports 6 and 7 respectivly).
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
+#define    RTL8367B_DIS2_SKIP_MII_RXER_SHIFT    4
+#define    RTL8367B_DIS2_SKIP_MII_RXER    0x10
+#define    RTL8367B_DIS2_RGMII_SHIFT    0
+#define    RTL8367B_DIS2_RGMII_MASK    0xF
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
@@ -754,8 +844,9 @@ static int rtl8367b_extif_set_mode(struc
  	switch (mode) {
  	case RTL8367_EXTIF_MODE_RGMII:
  	case RTL8367_EXTIF_MODE_RGMII_33V:
-		REG_WR(smi, RTL8367B_CHIP_DEBUG0_REG, 0x0367);
+		REG_WR(smi, RTL8367B_CHIP_DEBUG0_REG, 0x0767);
  		REG_WR(smi, RTL8367B_CHIP_DEBUG1_REG, 0x7777);
+		REG_WR(smi, RTL8367B_CHIP_DEBUG2_REG, 0x01fd);
  		break;

  	case RTL8367_EXTIF_MODE_TMII_MAC:
@@ -785,9 +876,14 @@ static int rtl8367b_extif_set_mode(struc
  		return -EINVAL;
  	}

-	REG_RMW(smi, RTL8367B_DIS_REG,
-		RTL8367B_DIS_RGMII_MASK << RTL8367B_DIS_RGMII_SHIFT(id),
-		mode << RTL8367B_DIS_RGMII_SHIFT(id));
+	if(id < 2)
+		REG_RMW(smi, RTL8367B_DIS_REG,
+			RTL8367B_DIS_RGMII_MASK << RTL8367B_DIS_RGMII_SHIFT(id),
+			mode << RTL8367B_DIS_RGMII_SHIFT(id));
+	else
+		REG_RMW(smi, RTL8367B_DIS2_REG,
+			RTL8367B_DIS2_RGMII_MASK << RTL8367B_DIS2_RGMII_SHIFT,
+			mode << RTL8367B_DIS2_RGMII_SHIFT);

  	return 0;
  }
@@ -931,6 +1027,10 @@ static int rtl8367b_setup(struct rtl8366
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
