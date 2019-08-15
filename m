Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCF38E650
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 10:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rvMBqaeMFhZtMm1OdSEDPpdmZiqgav3pFMiPrGUpZjc=; b=HA2Ypi5hG7zGJk
	JWBxFeO9ms7GJ+X7onHXszx9xXxqBAHmWSZXYf2SHvF/zr4eAJu1jkPxHAvKBTjc3Y4lZiBuwNokz
	wsqtZxJ4xY+ehfBjyX8j6ANgg/iAoSFr5Gw+6NIfSfwzsncwMFpGsm7mDJljn5jfkV3WQlKvwgXPW
	8UTJa/vvvKZg2qQpmAaLoAhfmuqpYOLYGD64Be/uzsJnAwaAVF4GFtqxDXWuY3ePqw3ozGKVRJAZT
	m9Ro0dCh62ITTTFUWSAPzNdk7j9ZryxIu3Fv243MSa3aN0kngHFM90D2nzk6Nctb/lLGQnmz0cSMp
	TKQEkhL++XxLNUPSfnqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyB7j-0006xL-Oe; Thu, 15 Aug 2019 08:28:43 +0000
Received: from forward100j.mail.yandex.net ([5.45.198.240])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyB7Y-0006wI-K8
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 08:28:34 +0000
Received: from mxback15o.mail.yandex.net (mxback15o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::66])
 by forward100j.mail.yandex.net (Yandex) with ESMTP id 7D49150E1093
 for <openwrt-devel@lists.openwrt.org>; Thu, 15 Aug 2019 11:28:29 +0300 (MSK)
Received: from smtp1j.mail.yandex.net (smtp1j.mail.yandex.net
 [2a02:6b8:0:801::ab])
 by mxback15o.mail.yandex.net (nwsmtp/Yandex) with ESMTP id KrSAbmYd1k-STbaCVhk;
 Thu, 15 Aug 2019 11:28:29 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1565857709; bh=jEroQOsx2qB/n4XP/Pymu3S0Ai7XNiJtmCvp9LXvl44=;
 h=To:Subject:From:Date:Message-ID;
 b=bNl/uQLZeWhqx6aWxtgGkKDfRqx7a+jpr9QYTKfeJwDpHG4slROz/SvKv1zpBWaz5
 b+ArrXAZ+tG4vPrPzixPoHexZbDokl1pU3kjzXQ3Yh/lF92K/Ru/WVKAe7L5wmmHjb
 TV04pMf8UNRKiLwUB+9wspoRA2JlhvOd4pysaquc=
Authentication-Results: mxback15o.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by smtp1j.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 Iq3mgEhB7S-SSeC9caT; Thu, 15 Aug 2019 11:28:28 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
From: Serge Vasilugin <vasilugin@yandex.ru>
To: openwrt-devel@lists.openwrt.org
Message-ID: <5220ceb2-5b9c-8486-3d44-b5da19d8a1f4@yandex.ru>
Date: Thu, 15 Aug 2019 15:28:28 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_012833_025697_87B0411E 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.45.198.240 listed in list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH 3/3] kernel: rtl8367b: initial support for
 Realtek switch rtl8367s
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
@@ -588,6 +588,20 @@
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
@@ -699,31 +713,38 @@
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
+	if( chip_num == 0x6367 || chip_num == 0x0597 || chip_num == 0x0276) {
+		initvals = rtl8367c_initvals0;
+		count = ARRAY_SIZE(rtl8367c_initvals0);
+	} else {
+		printk("check chip_num=0x%x ver=0x%x...\n", chip_num, chip_ver);
+		switch (rlvid) {
+		case 0:
+			initvals = rtl8367r_vb_initvals_0;
+			count = ARRAY_SIZE(rtl8367r_vb_initvals_0);
  		break;

-	case 1:
-		initvals = rtl8367r_vb_initvals_1;
-		count = ARRAY_SIZE(rtl8367r_vb_initvals_1);
+		case 1:
+			initvals = rtl8367r_vb_initvals_1;
+			count = ARRAY_SIZE(rtl8367r_vb_initvals_1);
  		break;

-	default:
-		dev_err(smi->parent, "unknow rlvid %u\n", rlvid);
-		return -ENODEV;
+		default:
+			dev_err(smi->parent, "unknow rlvid %u\n", rlvid);
+			return -ENODEV;
+		}
  	}

  	/* TODO: disable RLTP */
@@ -983,6 +1004,17 @@
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

@@ -1501,20 +1533,26 @@
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
-	}
+	if(chip_num == 0x6367 || chip_num == 0x0597 || chip_num == 0x0276) {
+		chip_name = "8367C";
+	} else
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

  	dev_info(smi->parent, "RTL%s chip found\n", chip_name);


---
serge

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
