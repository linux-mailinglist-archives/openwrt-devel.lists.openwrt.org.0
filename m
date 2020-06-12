Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7481F7BBD
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jun 2020 18:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B6s+aWobaB5O6LW8+tXVc+gAx/ZTv4IC+WN/zkj9pHY=; b=e99uq6/xeNT5Yd
	9RXax9SR7aSX9UjvFWNT2enf+ITh0wjszeZQtXjYZXCTxOwyW3D1FMP9HakjeO0XQYEpTLEn6K4L1
	ubkmjlepsh0b1sWUEqGQejjA6vcxw8QQHfxGcu+e67VpQzyp4+Oh2e2eJYU9EaRr1gdhDtrN50pYl
	8AUV1KvrStH1ZcWrslbAcXfocuXkcBzGWF5pql7sv+XY1w+c/HizQIQqiK1bDbTw57L3MrID047Xx
	I81YFdO8qfGVGy9xhRZ+YmyAvzCirRK2+DzFagYDgkfBUzocVsQPamOCwnIv+E7ZXk2YXoBxTm8N2
	a4rgMdKs9fni2iSThuMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjmlG-0000cu-K0; Fri, 12 Jun 2020 16:42:34 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjml9-0000cP-IR
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jun 2020 16:42:29 +0000
Received: from mail-oln040092254103.outbound.protection.outlook.com
 ([40.92.254.103] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <iancooper@hotmail.com>) id 1jjml4-0000Dl-TE
 for openwrt-devel@openwrt.org; Fri, 12 Jun 2020 12:42:23 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0aO7Iib1fjRdBilcUSNRtXpHFSba8BdYyTn46pPOONcLHTm37OVwISGh2yoHDvboDhkyPeQ91JRpQyQdC9f/9Z9lxtZfpSQP5aF2O2/NIvk13VqVibP6kjMaRrikbBdfpukstHe8wnqs39v7zU9UWMJ8Oev8NW7XG2ZtBpDrgslODmA7K92pjlMcaN2/4MhmBJ7wvEPgXWDA3PdzShIdHYO9fKpCa5O2CnhzLT+pMZXB6I/bhMSGATv1gPFJnhlt7JzozujNL46brTo5EDHtfg2jk017LaX33VfFIF7MOx/vb+cJ2LpDC6fNccXiRfkgECm++7Pp7EScq3vVGn9CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YoLhpatxsJNJNKnkLzHkN6POy5YZvvGCUqzWMTvpBE0=;
 b=OgrW2Wv0bCHYkMRfWQSZ/oskcpvbBPIOmEbXLag0hc3quh3ucilxdhfbsu3OunIPueyw92w2wAmidAZlz8yXlKi72EbrgFnIqDP+Ej1fNokFpUO7dFqOVclTWnORmYz5yI6TMRqCBeaT6HnwccNy/Z4YbwDMcjSRgQwmSgRnmCjdoDnjBHeN4t/bd6riEaK1VAVDIynmUipl7PHbBWz+BN2IvM7IA2PvukcRD4eAd+sl5yxJOr3WUEU1Jn/HltGUGKhoHoZ7l1x2urhFpijK0/ACdOg3uCRLf19/mFkoax7Qe3/3bgE9WAiWLO7vXC2dh2Tj5UhCdSqYMe7BogHA3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YoLhpatxsJNJNKnkLzHkN6POy5YZvvGCUqzWMTvpBE0=;
 b=jRLVmKHHR7xk1L7KzMdmRR/stXNqxab+nXwBGtlUEXA8v/FsdlRj8l5sAW6EgjIIQZmjG2BbpeF/C/e9LDZcd3avGOAJUaPQ2bWTbeWcNfth9a8hGoC4W6vd44vj7QTG/nLRq1Nfd0jcsu3wDGmWMUeZ9zwlcAAtrYeYwtsSj6eMNEvehfSLEDPoa8P57Vkc2SGfZtt7jLfwtcjntImS6rwzfhJmtKUyGIwHS7opwGC9uLF8XsLSAk/2J8ckmBFUAX1bPp1Sq6wZSEaebzNnwlBSWkSOpQpUYLuQAUIoonDo3l+nBAADyPi4YCT8wu3QxpDieoW46bsfzquoeMYH3A==
Received: from SG2APC01FT034.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::53) by
 SG2APC01HT084.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::481)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Fri, 12 Jun
 2020 16:41:58 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebd::4f) by SG2APC01FT034.mail.protection.outlook.com
 (2a01:111:e400:7ebd::204) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Fri, 12 Jun 2020 16:41:58 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:8F5BD33B0F816FBEE3DCC76836E62E3ACBF5D2022E52797C7232DA26DE0FCD04;
 UpperCasedChecksum:21003161F9BD9A361589C566CAFF6E77D639D369CC8E0A9AD5680599BB0B05B2;
 SizeAsReceived:7388; Count:46
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3088.025; Fri, 12 Jun 2020
 16:41:58 +0000
From: Ian Cooper <iancooper@hotmail.com>
To: openwrt-devel@openwrt.org
Date: Fri, 12 Jun 2020 17:41:39 +0100
Message-ID: <KU1PR01MB2022F8CCF214863C9CEA338BAD810@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: LO2P265CA0059.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::23) To KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2603:1096:802:23::18)
X-Microsoft-Original-Message-ID: <20200612164139.1289952-1-iancooper@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (80.3.14.56) by
 LO2P265CA0059.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:60::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Fri, 12 Jun 2020 16:41:57 +0000
X-Mailer: git-send-email 2.25.1
X-Microsoft-Original-Message-ID: <20200612164139.1289952-1-iancooper@hotmail.com>
X-TMN: [fB4NF4Tn9gzuMv85jHLwpfk5tyt0Uate]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 1f1419d2-d6f7-4fa1-839e-08d80eef860b
X-MS-TrafficTypeDiagnostic: SG2APC01HT084:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pDGqKrxYnw8YwrADXhBzLyJkghO1Tnh6V/lJDDIvOCtdadoI8WpQwC6Yf8kDyLRgJt3IXs9gXzhJl2lyZZP8EmU4uBXOrWpKSxbWv0cRwES45BgJhAiuM0OScH1dVZkR0r0zTtrpzst/Vpa9hPX+T8j7gHRluY2ADO1KobKLx8MjUAunqxo/fiJe57UXCtFIMlZ1cTdmVtDdSWki1PGZVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 8OmlX2CRpqk5hvSrkSxUI9kMrU7EoLKoF6lkDMOS98Ly5ok5bybhx2LxfFWA/Unpjm1ezFgUbX5lgSCEXwSD+OX5+jb3Qoi8tsQCZlaGdsD5xw/dLz/rs6Y1MmDe5ebKfNxJv3f4yee0oexVuAf3zw==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f1419d2-d6f7-4fa1-839e-08d80eef860b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2020 16:41:58.4107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT084
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  Allow the user to specify an alternative option-compatible
 gzip utility such as the parallel pigz gzip utility,
 which speeds up compression
 of target images and archives considerably. Signed-off-by: Ian Cooper ---
 On my 4-core i7-4790s, it takes a full 10 minutes to build the images for
 my x86_64 build as there are lots of packages included in the image. 
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: config-images.in]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (iancooper[at]hotmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.254.103 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_094227_908088_1D5B9B3A 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] build: allow alternative gzip image
 compression utility
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Allow the user to specify an alternative option-compatible gzip
utility such as the parallel pigz gzip utility, which speeds up
compression of target images and archives considerably.

Signed-off-by: Ian Cooper <iancooper@hotmail.com>
---
On my 4-core i7-4790s, it takes a full 10 minutes to build the images
for my x86_64 build as there are lots of packages included in the image.

The largest part of this time is the gzip compression. The pigz utility
is much faster, even on my limited 4 cores. Below is the timing of a
make target/install for the gzip and pigz utilities

using gzip on 4-core i7-4790

real    9m48.480s
user    8m41.578s
sys     0m44.228s

using pigz on 4-core i7-4790

real    3m34.367s
user    11m23.081s
sys     0m49.984s

 config/Config-images.in   | 10 ++++++++++
 include/image-commands.mk |  2 +-
 include/image.mk          | 10 ++++++----
 3 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/config/Config-images.in b/config/Config-images.in
index 4c54ac9399..7c3bc2760e 100644
--- a/config/Config-images.in
+++ b/config/Config-images.in
@@ -287,4 +287,14 @@ menu "Target Images"
 		  it will be mounted by PARTUUID which makes the kernel find the
 		  appropriate disk automatically.
 
+	config TARGET_IMAGE_COMPRESSION_UTILITY
+		string
+		prompt "Gzip image compression utility"
+		default "gzip"
+		help
+		  Specify the name of the image compression binary used to gzip
+		  compress images. This utility must be option compatible with
+		  gzip. A good alternative would be the parallel gzip utility
+		  pigz.
+
 endmenu
diff --git a/include/image-commands.mk b/include/image-commands.mk
index e7db7128b4..faba8658c0 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -174,7 +174,7 @@ define Build/lzma-no-dict
 endef
 
 define Build/gzip
-	gzip -f -9n -c $@ $(1) > $@.new
+	$(call qstrip,$(CONFIG_TARGET_IMAGE_COMPRESSION_UTILITY)) -f -9n -c $@ $(1) > $@.new
 	@mv $@.new $@
 endef
 
diff --git a/include/image.mk b/include/image.mk
index 984b64fb9c..61182a22ac 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -151,7 +151,7 @@ endef
 ifdef CONFIG_TARGET_IMAGES_GZIP
   define Image/Gzip
 	rm -f $(1).gz
-	gzip -9n $(1)
+	$(call qstrip,$(CONFIG_TARGET_IMAGE_COMPRESSION_UTILITY)) -9n $(1)
   endef
 endif
 
@@ -317,13 +317,15 @@ ifdef CONFIG_TARGET_ROOTFS_TARGZ
   define Image/Build/targz
 	$(TAR) -cp --numeric-owner --owner=0 --group=0 --mode=a-s --sort=name \
 		$(if $(SOURCE_DATE_EPOCH),--mtime="@$(SOURCE_DATE_EPOCH)") \
-		-C $(TARGET_DIR)/ . | gzip -9n > $(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-$(PROFILE_SANITIZED))-rootfs.tar.gz
+		-C $(TARGET_DIR)/ . | $(call qstrip,$(CONFIG_TARGET_IMAGE_COMPRESSION_UTILITY)) \
+		-9n > $(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-$(PROFILE_SANITIZED))-rootfs.tar.gz
   endef
 endif
 
 ifdef CONFIG_TARGET_ROOTFS_CPIOGZ
   define Image/Build/cpiogz
-	( cd $(TARGET_DIR); find . | cpio -o -H newc -R root:root | gzip -9n >$(BIN_DIR)/$(IMG_ROOTFS).cpio.gz )
+	( cd $(TARGET_DIR); find . | cpio -o -H newc -R root:root | \
+	$(call qstrip,$(CONFIG_TARGET_IMAGE_COMPRESSION_UTILITY)) -9n >$(BIN_DIR)/$(IMG_ROOTFS).cpio.gz )
   endef
 endif
 
@@ -567,7 +569,7 @@ define Device/Build/image
   .IGNORE: $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2))
 
   $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)).gz: $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2))
-	gzip -c -9n $$^ > $$@
+	$(call qstrip,$(CONFIG_TARGET_IMAGE_COMPRESSION_UTILITY)) -c -9n $$^ > $$@
 
   $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)): $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2))
 	cp $$^ $$@
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
