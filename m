Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D37B32076
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Jun 2019 20:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g4Hf5RTK0O3SwXVteEvldf031XJr986+Hjikpz2wIfY=; b=NOQ11PAm7tPRqp
	mCBmkyx0E0Zcf9ejvcp/Mlc7Slr1IsCybOvUY5NQozwa6ZkTADvUxeqbuYQE4KyDA99O/TPowl7SN
	x1sB0QQB7jthGPTDVFEJipL3il8nBA7OI8d0hWN8S0wLp6hhBaWXADat/taTJwdxWor4xFf5FSDDu
	W/ONLKZeC8jp/WjKBkLLScc8WcF28SzHB1Z5hgtnSP9wm5CaIzcREXFWIE2ip1sczP9Hdsnl1NYd1
	gFGGosoBCQhoeXc8V5DaUsAcS1Bq8HHETDPMYOIW3cgnrdV/LiiYzbYS46IAWOcnUvOcxJAvcLu+k
	T/PKSJ/w3EFqw+bFTDiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX8mK-0004xz-NB; Sat, 01 Jun 2019 18:30:52 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX8ku-0001qf-70
 for openwrt-devel@lists.openwrt.org; Sat, 01 Jun 2019 18:29:27 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,538,1549954800"; d="scan'208";a="37197847"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jun 2019 11:29:17 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with ShadowRedundancy id 15.1.1713.5; 
 Sat, 1 Jun 2019 18:19:03 +0000
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 30 May 2019 17:08:00 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 30 May 2019 17:06:45 -0700
Message-ID: <cover.1559260743.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_112924_646225_E02889E3 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [patch v1 00/11] at91 patch series.
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,
 This patch series contains 

1. rework in creating sdcard images for different subtarget.
2. creating a fit images.
3. add support for sam9x5ek soc 
4. add uboot env file.
5. bump uboot & at91bootstrap to latest versions


Sandeep Sheriker M (11):
  uboot-at91: bump linux4sam_5.8 to linux4sam_6.0
  uboot-at91:add at91sam9x5ek soc
  uboot-at91: changed som1 ek default defconfigs
  uboot-at91: fix -Wformat-security
  at91bootstrap: bump v3.8.10 to v3.8.12
  at91bootstrap: add support for at91sam9x5ek
  at91bootstrap: add sama5d27_som1_eksd1_uboot as default defconfig
  at91: move at91-sdcard command to sama5.mk
  at91: add uboot environments
  at91: create fit image
  at91: create sdcard images for at91sam9x25 & at91sam9x25 boards.

 package/boot/at91bootstrap/Makefile                | 25 ++++++++++----
 package/boot/uboot-at91/Makefile                   | 25 +++++++++-----
 .../patches/001-fix-Wformat-security.patch         | 13 +++++++
 target/linux/at91/image/Makefile                   | 33 ++----------------
 target/linux/at91/image/sam9x.mk                   | 40 ++++++++++++++++++++++
 target/linux/at91/image/sama5.mk                   | 38 ++++++++++++++++++++
 target/linux/at91/image/uboot-env.txt              | 14 ++++++++
 7 files changed, 143 insertions(+), 45 deletions(-)
 create mode 100644 package/boot/uboot-at91/patches/001-fix-Wformat-security.patch
 create mode 100644 target/linux/at91/image/uboot-env.txt

-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
