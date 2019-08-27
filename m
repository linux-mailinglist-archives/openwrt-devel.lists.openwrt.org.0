Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233009E4D7
	for <lists+openwrt-devel@lfdr.de>; Tue, 27 Aug 2019 11:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TEo/o7/GD3iemJllL4CEMRwDeM5YkjuugKuf/wqncRg=; b=P3lvKnSCxhYyyo
	NepOZ7wkaEHpoL++qmSsaONLubyoPKk2fp9pR8KvapGQbj4gvMxUHN2qehcM3J2LkKcSE8AXVWmJI
	VfmhAkFNTvuSMqJOOgeghvE7sUsEgEgCFwcILz2X2rqEQGIMv8x2YINEgwFSBIFyCatGCIw8Dw32m
	AslW2sQG/Y5rAywsP++0ayi+iyYXfOVz6Zkx1zqdHGCoDbKYPw64olMCCH6gy1eQYw0KH/P8iskOO
	bVRFHdXJJXfLiO5AJWQtDwdXyfDYIiOFt9ZYQrzxgEF/5rMA345c+9Hkx0iTl4xsOLsdvcSB61wV4
	wYyjwtC7Xz3o7o51jK0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Y7g-0005xV-B4; Tue, 27 Aug 2019 09:50:44 +0000
Received: from forward100o.mail.yandex.net ([37.140.190.180])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Y6c-00040Y-IC
 for openwrt-devel@lists.openwrt.org; Tue, 27 Aug 2019 09:49:40 +0000
Received: from mxback18g.mail.yandex.net (mxback18g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:318])
 by forward100o.mail.yandex.net (Yandex) with ESMTP id 947574AC182B
 for <openwrt-devel@lists.openwrt.org>; Tue, 27 Aug 2019 12:49:34 +0300 (MSK)
Received: from smtp2o.mail.yandex.net (smtp2o.mail.yandex.net
 [2a02:6b8:0:1a2d::26])
 by mxback18g.mail.yandex.net (nwsmtp/Yandex) with ESMTP id XG8Aa5qCUY-nYreE323;
 Tue, 27 Aug 2019 12:49:34 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1566899374; bh=v0wVjMSWKllkr0x/pn1JBbXO5CBEE44331sr6KRsEs0=;
 h=To:Subject:From:Date:Message-ID;
 b=Y/gHUAUmbG138IzYIhc9ga+XhPHbcJGK+cTLYfVOnEcy4Ew3tToSRsfmPKwRuYCLr
 KQI2mVCYWYPl8phMn/ndVueL/B5KKPhJLEDJc9Cf4scWO36pmHlBhhmjotWb+OJ6we
 tqfIa4giCcFTnX2vuMzVpMP8/2nosW1POZkXxQQ0=
Authentication-Results: mxback18g.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by smtp2o.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 4ZK9XJX1WL-nXMaSw1N; Tue, 27 Aug 2019 12:49:34 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
From: Serge Vailugin <vasilugin@yandex.ru>
To: openwrt-devel@lists.openwrt.org
Message-ID: <117be9a8-4641-0033-1900-95f53af653e8@yandex.ru>
Date: Tue, 27 Aug 2019 16:49:33 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_024939_065169_3571AA2A 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [37.140.190.180 listed in list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH v2 3/3] kernel: rtl8367b: initial support
 for Realtek switch rtl8367s
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

 From driver point of view no differance between rtl8367b and rtl8367s
if it connected through EXT2 (rgmii only).
So this trivial patch add some identification and initialization only.
SGMII/HSGMII mode for EXT1 is not implemented for the sake of patch 
clairity.
It may be simple but without test device...

Signed-off-by: Serge Vasilugin <vasilugin@yandex.ru>

--- a/target/linux/generic/files/drivers/net/phy/rtl8367b.c
+++ b/target/linux/generic/files/drivers/net/phy/rtl8367b.c
@@ -588,6 +588,20 @@ static const struct rtl8367b_initval rtl
  	{0x133E, 0x000E}, {0x133F, 0x0010},
  };

+static const struct rtl8367b_initval rtl8367c_initvals0[] = {
+	{0x13c2, 0x0000}, {0x0018, 0x0f00}, {0x0038, 0x0f00}, {0x0058, 0x0f00},
+	{0x0078, 0x0f00}, {0x0098, 0x0f00}, {0x1d15, 0x0a69}, {0x2000, 0x1340},
+	{0x2020, 0x1340}, {0x2040, 0x1340}, {0x2060, 0x1340}, {0x2080, 0x1340},
+	{0x13eb, 0x15bb}, {0x1303, 0x06d6}, {0x1304, 0x0700}, {0x13E2, 0x003F},
+	{0x13F9, 0x0090}, {0x121e, 0x03CA}, {0x1233, 0x0352}, {0x1237, 0x00a0},
+	{0x123a, 0x0030}, {0x1239, 0x0084}, {0x0301, 0x1000}, {0x1349, 0x001F},
+	{0x18e0, 0x4004}, {0x122b, 0x641c}, {0x1305, 0xc000}, {0x1200, 0x7fcb},
+	{0x0884, 0x0003}, {0x06eb, 0x0001}, {0x00cf, 0xffff}, {0x00d0, 0x0007},
+	{0x00ce, 0x48b0}, {0x00ce, 0x48b0}, {0x0398, 0xffff}, {0x0399, 0x0007},
+	{0x0300, 0x0001}, {0x03fa, 0x0007}, {0x08c8, 0x00c0}, {0x0a30, 0x020e},
+	{0x0800, 0x0000}, {0x0802, 0x0000}, {0x09da, 0x0017}, {0x1d32, 0x0002},
+};
+
  static int rtl8367b_write_initvals(struct rtl8366_smi *smi,
  				  const struct rtl8367b_initval *initvals,
  				  int count)
@@ -699,31 +713,38 @@ static int rtl8367b_write_phy_reg(struct
  static int rtl8367b_init_regs(struct rtl8366_smi *smi)
  {
  	const struct rtl8367b_initval *initvals;
+	u32 chip_num;
  	u32 chip_ver;
  	u32 rlvid;
  	int count;
  	int err;

  	REG_WR(smi, RTL8367B_RTL_MAGIC_ID_REG, RTL8367B_RTL_MAGIC_ID_VAL);
+	REG_RD(smi, RTL8367B_CHIP_NUMBER_REG, &chip_num);
  	REG_RD(smi, RTL8367B_CHIP_VER_REG, &chip_ver);
-
  	rlvid = (chip_ver >> RTL8367B_CHIP_VER_RLVID_SHIFT) &
  		RTL8367B_CHIP_VER_RLVID_MASK;

-	switch (rlvid) {
-	case 0:
-		initvals = rtl8367r_vb_initvals_0;
-		count = ARRAY_SIZE(rtl8367r_vb_initvals_0);
-		break;
+	if (chip_num == 0x6367 || chip_num == 0x0597 || chip_num == 0x0276) {
+		initvals = rtl8367c_initvals0;
+		count = ARRAY_SIZE(rtl8367c_initvals0);
+	} else {
+		dev_info(smi->parent, "checking chip_num=0x%x ver=0x%x...\n", 
chip_num, chip_ver);
+		switch (rlvid) {
+		case 0:
+			initvals = rtl8367r_vb_initvals_0;
+			count = ARRAY_SIZE(rtl8367r_vb_initvals_0);
+			break;

-	case 1:
-		initvals = rtl8367r_vb_initvals_1;
-		count = ARRAY_SIZE(rtl8367r_vb_initvals_1);
-		break;
+		case 1:
+			initvals = rtl8367r_vb_initvals_1;
+			count = ARRAY_SIZE(rtl8367r_vb_initvals_1);
+			break;

-	default:
-		dev_err(smi->parent, "unknow rlvid %u\n", rlvid);
-		return -ENODEV;
+		default:
+			dev_err(smi->parent, "unknow rlvid %u\n", rlvid);
+			return -ENODEV;
+		}
  	}

  	/* TODO: disable RLTP */
@@ -983,6 +1004,17 @@ static int rtl8367b_setup(struct rtl8366
  			RTL8367B_PORT_MISC_CFG_EGRESS_MODE_ORIGINAL <<
  				RTL8367B_PORT_MISC_CFG_EGRESS_MODE_SHIFT);

+	/*
+	 * Enable for each phy port.
+	 */
+	for (i = 0; i < 5; i++) {
+		int data;
+		rtl8367b_read_phy_reg(smi, i, 0, &data);
+		data &= 0xF7FF;
+		data |= 0x200;
+		rtl8367b_write_phy_reg(smi, i, 0, data);
+	}
+
  	return 0;
  }

@@ -1501,19 +1533,26 @@ static int rtl8367b_detect(struct rtl836
  			"chip mode");
  		return ret;
  	}
-
-	switch (chip_ver) {
-	case 0x1000:
-		chip_name = "8367RB";
-		break;
-	case 0x1010:
-		chip_name = "8367R-VB";
-		break;
-	default:
-		dev_err(smi->parent,
-			"unknown chip num:%04x ver:%04x, mode:%04x\n",
-			chip_num, chip_ver, chip_mode);
-		return -ENODEV;
+	if (chip_num == 0x6367 || chip_num == 0x0597 || chip_num == 0x0276) {
+		chip_name = "8367C";
+	} else {
+		switch (chip_ver) {
+		case 0x1000:
+			chip_name = "8367RB";
+			break;
+		case 0x1010:
+			chip_name = "8367R-VB";
+			break;
+		case 0x0070: /* just hint - with wrong phy_id always read 0x0070 */
+			dev_err(smi->parent,
+				"wrong switch address %d (0 or 29)?\n", smi->phy_id);
+			/* fall through */
+		default:
+			dev_err(smi->parent,
+				"unknown chip num:%04x ver:%04x, mode:%04x\n",
+				chip_num, chip_ver, chip_mode);
+			return -ENODEV;
+		}
  	}

  	dev_info(smi->parent, "RTL%s chip found\n", chip_name);

---
serge

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
