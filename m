Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C1A4F0F8
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 01:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtNA3UcyNpP+DOLZDaOhyM5HdRSKN7Dfl1R2ZtKPrpk=; b=Q+iBQP4pAoEcob
	RpbpIDMwm5U1Lo6etVCENfzPbzM5yokldPDxcEWaxABHhOnJGLITRCvWc+G7dXmOMhx/dIgx4zSn7
	c6HyGyatd+oz+G44iFq3YiE4lcSTCS9q2dcly8UebpY8csMwrhxm5MyjEPSfZcoK34d1ij1LN/eME
	FczJ02JR80RMlEzT7HlQw2VcFBIoeHzMlaD8Vgz0K67ZW/g6RT8fIwvYdR09Paa++52bz0h5tR9wC
	X805bez4vdymetucrYICqrwBnyTZusdzJqTVccv2z4RY8vnmjH8y3Ene5r3plKZOpoZ/wDEmwtLEU
	pYG2zef+PCv/2th0UIEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heSax-0003pU-Dm; Fri, 21 Jun 2019 23:05:23 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heSZK-000126-HU
 for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 23:03:44 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,402,1557212400"; d="scan'208";a="37936974"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jun 2019 16:03:34 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 21 Jun 2019 16:03:37 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 21 Jun 2019 16:03:33 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 21 Jun 2019 16:02:12 -0700
Message-ID: <1561158139-13473-5-git-send-email-sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561158139-13473-1-git-send-email-sandeep.sheriker@microchip.com>
References: <1561158139-13473-1-git-send-email-sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_160342_638400_D3F2E43C 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [at91][patch v2 04/11] uboot-at91: fix
 -Wformat-security
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
Cc: sandeep.sheriker@microchip.com
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
