Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5887832073
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Jun 2019 20:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JtNA3UcyNpP+DOLZDaOhyM5HdRSKN7Dfl1R2ZtKPrpk=; b=cRmsWtSURJU/lYpeddi5F0Gah5
	ogJUoRoAjK6tos0gxbt3h4bnmPGttSs1PaLx/pLLBYU8lvomncXQmD0a6sjaVwd7H0wEX7GorQrho
	qOoDwQ1B+PoQodLHmiOAKLA11aRHBCXkcIEksYIFx6CDAAacDqaF4n+KxYkiNxV/Mce+fNWZW45fI
	L0mmDTP6s3VJHOHMI2oCkhVxPELY3IpS28wnXsWXR8b0lx6OVjInU6NJTDFdJcjQ9loQ+plM2s9o+
	4xbJAvfuaWb32BRQAPWui/jju029hQm6ZG46VQRU4u3zqkdFG7fQZgjt9bJKrVzJpcFSJ5FKkr06L
	Y/+RP5WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX8ls-0004F1-4c; Sat, 01 Jun 2019 18:30:24 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX8ks-0001rC-0W
 for openwrt-devel@lists.openwrt.org; Sat, 01 Jun 2019 18:29:24 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,538,1549954800"; d="scan'208";a="37197817"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jun 2019 11:29:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with ShadowRedundancy id 15.1.1713.5; 
 Sat, 1 Jun 2019 18:19:03 +0000
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 30 May 2019 17:08:01 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 30 May 2019 17:06:49 -0700
Message-ID: <0d8efaac06fc143a95d11724ffac9b180b62c7c7.1559260744.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559260743.git.sandeep.sheriker@microchip.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_112922_156796_4EFA7F3D 
X-CRM114-Status: UNSURE (   9.16  )
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
Subject: [OpenWrt-Devel] [patch v1 04/11] uboot-at91: fix -Wformat-security
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

add patch to fix -Wformat-security warnings.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/uboot-at91/Makefile                            |  2 +-
 .../boot/uboot-at91/patches/001-fix-Wformat-security.patch  | 13 +++++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)
 create mode 100644 package/boot/uboot-at91/patches/001-fix-Wformat-security.patch

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index c17f1e0..547b72f 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -131,7 +131,7 @@ UBOOT_TARGETS := \
 define Build/Compile
   +$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
      CROSS_COMPILE=$(TARGET_CROSS) \
-	 DTC=$(LINUX_DIR)/scripts/dtc/dtc \
+	 DTC=$(PKG_BUILD_DIR)/scripts/dtc/dtc \
      KCFLAGS="$(filter-out -fstack-protector \
       -mfloat-abi=hard, $(TARGET_CFLAGS)) -mfloat-abi=soft"
 endef
diff --git a/package/boot/uboot-at91/patches/001-fix-Wformat-security.patch b/package/boot/uboot-at91/patches/001-fix-Wformat-security.patch
new file mode 100644
index 0000000..18f9af7
--- /dev/null
+++ b/package/boot/uboot-at91/patches/001-fix-Wformat-security.patch
@@ -0,0 +1,13 @@
+diff --git a/cmd/version.c b/cmd/version.c
+index b2fffe9..bcbbeb1 100644
+--- a/cmd/version.c
++++ b/cmd/version.c
+@@ -18,7 +18,7 @@ static int do_version(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
+ {
+	char buf[DISPLAY_OPTIONS_BANNER_LENGTH];
+
+-	printf(display_options_get_banner(false, buf, sizeof(buf)));
++	printf("%s",display_options_get_banner(false, buf, sizeof(buf)));
+ #ifdef CC_VERSION_STRING
+	puts(CC_VERSION_STRING "\n");
+ #endif
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
