Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90DD8E647
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 10:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3z62a6aBSOxi7l+ucfXcPf1Sac5KqnA6VKCwkz2er+4=; b=qLzPW7CVUXixRv
	4hRQbYrEkxYwh65omhJzdSdY4laC/aH7U4dgGMHT528BuX9KgeZLsPg/TfqCYcwlQW6EjNJvh7Lbo
	m25fd+fx08gwghS/txafZ6JxvSvfMQtbs+9bpK7Zy3oIiJ6H8XdsHMr8p3HcoSzlDuz7Dvo2RPLPe
	dJQ3dON1iujvveooGlrukcu8seaHS5+tZbUdnYOMFErU/CO6seEYHaE9cJ2rJY6tHEfhJ2do26pph
	Bam+K83jVGgpnVbOCOpEdda3U8PuNAZzw4UKh6WXzPx9H00JlX9a4RfUkKz5Qby6RBrFS60q5Hhor
	ENmBj+uJRBPizBkowhNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyB6S-0006NX-IQ; Thu, 15 Aug 2019 08:27:24 +0000
Received: from forward101p.mail.yandex.net ([77.88.28.101])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyB6H-0006N5-VH
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 08:27:15 +0000
Received: from mxback6j.mail.yandex.net (mxback6j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::10f])
 by forward101p.mail.yandex.net (Yandex) with ESMTP id C013D3281B88
 for <openwrt-devel@lists.openwrt.org>; Thu, 15 Aug 2019 11:27:09 +0300 (MSK)
Received: from smtp4j.mail.yandex.net (smtp4j.mail.yandex.net
 [2a02:6b8:0:1619::15:6])
 by mxback6j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id 8gOTq4mDGf-R980NdZE; 
 Thu, 15 Aug 2019 11:27:09 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1565857629; bh=FLKi2Ub6benYkUHRvnECs0L263jV2E0Kr9FkmQMsK9I=;
 h=To:Subject:From:Date:Message-ID;
 b=Ci+9qNAx0TPS+qDRo86qixyzv8V75UwhkdEx30yNGDbH/Y/zT0Nq5isJm1jyFYFWT
 Z3Uq0dkZBj8eCPEll/j2xbC6k+BpgAwXFe0V1fvFULGV/gCZz9sh5COb3YTyZ45n0W
 IilH1wHTYClkvYYZt6BWs2b9ZGaUy0XLuXYZbXVk=
Authentication-Results: mxback6j.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by smtp4j.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 R0Io3QVDA2-R8taNB7V; Thu, 15 Aug 2019 11:27:08 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
From: Serge Vasilugin <vasilugin@yandex.ru>
To: openwrt-devel@lists.openwrt.org
Message-ID: <e0eb9887-28eb-a008-96e2-66d4de81ff11@yandex.ru>
Date: Thu, 15 Aug 2019 15:27:08 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_012714_191441_A46419F0 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [77.88.28.101 listed in list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH 1/3] kernel: rtl8366_smi: explicitly set phy
 addr for switch
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

By default rtl8366_smi use phy addr 0 at mii-bus to access switch registers.
This patch allow to set it explicitly in dts-file:

	rtl8367 {
		compatible = "realtek,rtl8367b";
		phy_id = <29>; /* switch address at mii-bus */
		realtek,extif2 = <1 0 1 1 1 1 1 1 2>;
		mii-bus = <&mdio>;
		cpu-port = <7>;
	}

Use default 0 address if not set.
Backward compatibility tested on tplink archer c2 v1 (rtl8367rb switch)

Signed-off-by: Serge Vasilugin <vasilugin@yandex.ru>

--- a/target/linux/generic/files/drivers/net/phy/rtl8366_smi.c
+++ b/target/linux/generic/files/drivers/net/phy/rtl8366_smi.c
@@ -256,7 +256,7 @@ static int __rtl8366_smi_read_reg(struct rtl8366_smi 
*smi, u32 addr, u32 *data)

  int __rtl8366_mdio_read_reg(struct rtl8366_smi *smi, u32 addr, u32 *data)
  {
-	u32 phy_id = MDC_REALTEK_PHY_ADDR;
+	u32 phy_id = smi->phy_id;
  	struct mii_bus *mbus = smi->ext_mbus;

  	BUG_ON(in_interrupt());
@@ -293,7 +293,7 @@ int __rtl8366_mdio_read_reg(struct rtl8366_smi *smi, 
u32 addr, u32 *data)

  static int __rtl8366_mdio_write_reg(struct rtl8366_smi *smi, u32 addr, 
u32 data)
  {
-	u32 phy_id = MDC_REALTEK_PHY_ADDR;
+	u32 phy_id = smi->phy_id;
  	struct mii_bus *mbus = smi->ext_mbus;

  	BUG_ON(in_interrupt());
@@ -1558,6 +1558,12 @@ int rtl8366_smi_probe_of(struct platform_device 
*pdev, struct rtl8366_smi *smi)
  		goto try_gpio;
  	}

+	of_property_read_u32(np, "phy_id", &smi->phy_id);
+	if(smi->phy_id < 0) {
+		smi->phy_id = MDC_REALTEK_PHY_ADDR;
+	}
+	dev_info(&pdev->dev,
+		"switch phy addr=%d\n", smi->phy_id);
  	return 0;

  try_gpio:
--- a/target/linux/generic/files/drivers/net/phy/rtl8366_smi.h
+++ b/target/linux/generic/files/drivers/net/phy/rtl8366_smi.h
@@ -64,6 +64,7 @@ struct rtl8366_smi {
  	u8			dbg_vlan_4k_page;
  #endif
  	struct mii_bus		*ext_mbus;
+	int phy_id;
  };

  struct rtl8366_vlan_mc {
---
serge

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
