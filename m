Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D039931F91
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Jun 2019 16:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PI5QYDDuxsiO3OB3mHlm5Mbo9YzK21KM0os+qdiWGgw=; b=ToV31kbctkd1xo8KIy28bq4CUN
	kMS0cJ+aKz6KEUxZIUMdhnhaBNFuROMMyXbSeLjkZs4852qjZf1dANuLQz48exGO+DwbDvUrxll0+
	qlzkwrKg3UeoX283W21sxy/DNFvaHka63Iu5TKFJ65WFyWUsWyGIDv6Ka7WlCWiw+p7Tp25ppm8Oa
	2b+ayLzMcwSkh+JxlfewE1fY8e/puQEVY4/puWkaZc/FWurDwnknb1t4211NF9i7fwkzm7ec1zxzF
	EJiA7rvaEMTk4CyuMBz9A9WfaEoFvi2YAL5DEmDMgmiEYaxuaPCJwEDC82TKgoq0Id9ngvkLIyGic
	rVLrVxjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX4aS-0002nK-IQ; Sat, 01 Jun 2019 14:02:20 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX4Yw-0000aV-Mv
 for openwrt-devel@lists.openwrt.org; Sat, 01 Jun 2019 14:00:51 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,538,1549954800"; d="scan'208";a="35191650"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jun 2019 07:00:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with ShadowRedundancy id 15.1.1713.5; 
 Sat, 1 Jun 2019 14:00:17 +0000
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 30 May 2019 17:08:01 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 30 May 2019 17:06:54 -0700
Message-ID: <96373d23749b0dfe2d522e47921642c049ff65a4.1559260744.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559260743.git.sandeep.sheriker@microchip.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_070047_307443_9F22752F 
X-CRM114-Status: UNSURE (   7.05  )
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
Subject: [OpenWrt-Devel] [patch v1 09/11] at91: add uboot environments
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

add uboot environments to sdcard image

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/sama5.mk      | 11 ++++++++++-
 target/linux/at91/image/uboot-env.txt | 14 ++++++++++++++
 2 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/at91/image/uboot-env.txt

diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sama5.mk
index f4548fb..bce89a0 100644
--- a/target/linux/at91/image/sama5.mk
+++ b/target/linux/at91/image/sama5.mk
@@ -25,6 +25,15 @@ define Build/at91-sdcard
     $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd*/at91bootstrap.bin \
     ::BOOT.bin
 
+  $(CP) uboot-env.txt $@-uboot-env.txt
+  sed -i '2d;3d' $@-uboot-env.txt
+  sed -i '2i board='"$(DEVICE_NAME:at91-%=%)"'' $@-uboot-env.txt
+  sed -i '3i board_name='"$(DEVICE_NAME:at91-%=%)"'' $@-uboot-env.txt
+
+  mkenvimage -s 0x4000 -o $@-uboot.env $@-uboot-env.txt
+
+  mcopy -i $@.boot $@-uboot.env ::uboot.env
+
   ./gen_at91_sdcard_img.sh \
       $@.img \
       $@.boot \
@@ -34,7 +43,7 @@ define Build/at91-sdcard
 
   gzip -nc9 $@.img > $@
 
-  rm -f $@.img $@.boot )
+  rm -f $@.img $@.boot $@-uboot.env $@-uboot-env.txt)
 endef
 
 define Device/at91-sama5d2_xplained
diff --git a/target/linux/at91/image/uboot-env.txt b/target/linux/at91/image/uboot-env.txt
new file mode 100644
index 0000000..80d051b
--- /dev/null
+++ b/target/linux/at91/image/uboot-env.txt
@@ -0,0 +1,14 @@
+/* Do Not remove First 2 lines, Makefile will modify these lines with proper board names */
+board=at91sam9x25ek
+board_name=at91sam9x25ek
+bootargs=console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rw rootwait rootfstype=ext4
+bootargsd2=console=ttyS0,115200 earlyprintk root=/dev/mmcblk1p2 rw rootwait rootfstype=ext4
+bootargsxx=console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rw rootwait rootfstype=ext4
+bootcmd=run setbootargs; run fatload_mmc; bootm 0x21000000
+bootdelay=1
+fatload_mmc=if test ${board_name} = sama5d2_xplained || test ${board_name} = sama5d27_som1_ek; then fatload mmc 1:1 0x21000000 ${board_name}-fit.itb; else fatload mmc 0:1 0x21000000 ${board_name}-fit.itb; fi
+setbootargs=if test ${board_name} = sama5d2_xplained || test ${board_name} = sama5d27_som1_ek; then setenv bootargs ${bootargsd2}; else setenv bootargs ${bootargsxx}; fi
+ethact=gmac0
+stderr=serial
+stdin=serial
+stdout=serial
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
