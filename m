Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 562662CD84
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 19:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R1qHBi5YLNNPLYc3QnY1LYYNQx7RM/j9x4+pDbq7oJE=; b=XtIsSfWHBOP5Ra
	jMFizKg9+aU8hhL19Cwbe9lYVDtGRE3FtewqC8triVtrbgXVoPc7scmsBSui1nQA2jfEKffXLzMPG
	LBdmpgkHXA7D2n7/0NIzdjoN1gtKzbpDc+B7I3Cn91+iYXkgb23yOUVbldRzyCNmrtqFbGn89horp
	tAKr92PajF5IJgIRq4+KacCPS+yMpaXNMEGXrj617nDad6D5YIINfb9t44lBVnfQ7y9qwQ9f3IGeJ
	3ld4YV0hprXcYcgaGnGBT8KevMl7oE71EHkVOucipekIqHSO4Pwh3/fuUAzIkuyRia/8Rpk08RSF8
	R6Tl611XEZhL5FSHZMWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfoO-0000Sd-9x; Tue, 28 May 2019 17:22:56 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfoC-0000RW-W2
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 17:22:50 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,523,1549954800"; d="scan'208";a="32110471"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2019 10:22:26 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5;
 Tue, 28 May 2019 10:22:25 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 May 2019 10:21:08 -0700
Message-ID: <cover.1559063195.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102248_586853_D7392795 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [OpenWrt-Devel, 0/7] at91 patch series.
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
 This patch series is dependent on patch series 
 
at91: Update kernel to version 4.14 

Regards,
Sandeep Sheriker M

Sandeep Sheriker M (2):
  at91:renaming subtraget legacy to sam9x
  uboot-at91: bump linux4sam_5.8 to linux4sam_6.0

Sandeep Sheriker Mallikarjun (5):
  at91bootstrap: bump v3.8.10 to v3.8.12
  at91: Generate sdcard images for at91sam9x5ek boards.
  at91: generate fit image
  at91: default sdcard image on sd1
  at91: Add uboot environment's

 package/boot/at91bootstrap/Makefile                | 24 +++++++++--
 package/boot/uboot-at91/Makefile                   | 29 +++++++++-----
 .../patches/001-fix-Wformat-security.patch         | 13 ++++++
 target/linux/at91/Makefile                         |  5 ++-
 target/linux/at91/image/Makefile                   | 46 ++++++++++++++++------
 target/linux/at91/image/{legacy.mk => sam9x.mk}    | 16 +++++---
 target/linux/at91/image/uboot-env.txt              | 14 +++++++
 target/linux/at91/legacy/target.mk                 |  7 ----
 target/linux/at91/{legacy => sam9x}/config-default |  0
 target/linux/at91/sam9x/target.mk                  |  7 ++++
 10 files changed, 122 insertions(+), 39 deletions(-)
 create mode 100644 package/boot/uboot-at91/patches/001-fix-Wformat-security.patch
 rename target/linux/at91/image/{legacy.mk => sam9x.mk} (90%)
 create mode 100644 target/linux/at91/image/uboot-env.txt
 delete mode 100644 target/linux/at91/legacy/target.mk
 rename target/linux/at91/{legacy => sam9x}/config-default (100%)
 create mode 100644 target/linux/at91/sam9x/target.mk

-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
