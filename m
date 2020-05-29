Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991EA1E7D0D
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 14:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nK2zmBoHHX2S1MYH+TkeutABEaMbFtY/kcTeIJlCl+U=; b=cHAPWwyqUsZI15
	jAnSLVl1kmL3Spk0ZNORTf8FWrnpmyr5nQME4la173rbcKi2mgZ3kTBdRWrthiWB76PYyTUDz0QUc
	ubWCyRsNIW1QmentuyBIA5dOB2t/82tTE/s5etN6TMZ+86I2En8I9vKwatg0THJ86hTlcEIYAMdmk
	QhBuC4IDAdGKJxiZRQvrx+8oQIxj8LGzlr+Xw8/+3Ae5OW68qCzXiEUv1Oz01KF/JjiITfivbbzim
	Yp+BxGJCoKSceVrnTEhZ7ECGvYxQWDoM6dVhL/oxLHQwMo3rjp7OM6wDtq2saNdMtDex3ZVi5U+XW
	jRCwomI/4IVF2mNrqPhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jee0M-0006gJ-6O; Fri, 29 May 2020 12:20:54 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jee0G-0006fe-UG
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 12:20:50 +0000
Received: by mail-lf1-x144.google.com with SMTP id r125so1155161lff.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 May 2020 05:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5iIsWR4AygjnNNd/tOYGgjX8Jh6wl8na688W1k1fdv0=;
 b=QEQfxZSJj8howY6/wqyx+gr7C3Io6GFPpSTlyNwzSn4rdlzL4XXCacL7uypRBOeQDR
 KnYlrsQhXeTULUweY9lMCGnT3ZwAQ42V+3h0nacaQA1nOjAKatFai9pkbBusZHUdLd76
 Zs5zs2NuuCFisoHy4YUyjlLeAhZweIt5mqjIeRaOrmVbmF/fRPswDOTci8FO6xr2AbMG
 THAZxjOPs7gFG5wGhqRGwMvVqIQd6P8hjIn4V54dJtSdRm8WTfMXOX84M1Nv774OjfsI
 TjAw2S27J8rgpFsvPc0MapYb5yaS/i0vnrGu7t5CwC0H4CmOZ+gIII1Mr6GXGCfh5BQ3
 0Iaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5iIsWR4AygjnNNd/tOYGgjX8Jh6wl8na688W1k1fdv0=;
 b=Imjd2ECYK46Otv9ZhPKiMnKxLuyIhyepqeztda9RCyMoSR8/2mCGnCXfDFeFNP4O3u
 +fYuXdVeKJPUJD7Jz1ShPXU92pujJzRToR80DgOaEG4yATmuuyFE6i6RlA0eTlgFEcQ5
 uAFhe4++W6GKcoBdldVWHAN2yJhQnoFxeZesDDLBK2TunfiyIZQcDAk5/yq76YTkqEYq
 EGxQv7nqAielmJjRQ57jmOU4D79Wd5kf/XfuJOFX4B2W1zjif4f8oPspG30GXMnM+YXH
 tSyqRmILt9HzHTr6v2sq2Kw36esp4evI2885Y1ywrelCP210mG+b/4o5yzfRf8dN5KKU
 XRBQ==
X-Gm-Message-State: AOAM532dIu9d3YaYII19VgCNzTa9UH3vzZHgEZnDfKTp0ExARQBrt21M
 +89YUUetZuEPN6J7hdSzVlLB9D7frAc=
X-Google-Smtp-Source: ABdhPJzfqiKDF6O7IlFZz4GSO6uiZ7hB+fyaP2oAOkcJOlMl5AMwixOpq20CPkmR/FyZIUxOqqq0NQ==
X-Received: by 2002:a19:c187:: with SMTP id r129mr4356838lff.35.1590754844453; 
 Fri, 29 May 2020 05:20:44 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-8cdb225c.014-348-6c756e10.bbcust.telenor.se. [92.34.219.140])
 by smtp.gmail.com with ESMTPSA id f5sm1981867ljm.69.2020.05.29.05.20.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 05:20:43 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 29 May 2020 14:20:39 +0200
Message-Id: <20200529122039.1246329-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_052049_009972_6B68F8F2 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] build: reflect DEVICE_TYPE to top level
 config
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I made a patch to select a tool inside busybox by
default on NAS type boxes, but this does not properly
work because the package and image build processes are
cleanly separate entities.

I also noticed that this becomes a problem if you
build multiple profiles: maybe one of them is NAS
and one of them is a router. You still want the least
common denominator to decide: if you selected both
NAS:es and routers, build packages that will be
suitable for both NAS and routers.

To achieve this I reflect the DEVICE_TYPE up to the
Kconfig level and define two Kconfig symbols:

config DEVICE_TYPE_ROUTER
       bool

config DEVICE_TYPE_NAS
       bool

These will be set from the DEVICE_TYPE of each
profile and it is possible to select both.

I then modify the busybox config to take this into
account and conditionally build hdparm for
CONFIG_DEVICE_TYPE_NAS.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 include/image.mk               |  1 +
 include/target.mk              |  1 +
 package/utils/busybox/Makefile |  2 +-
 scripts/metadata.pm            |  2 ++
 scripts/target-metadata.pl     | 12 ++++++++++++
 5 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/include/image.mk b/include/image.mk
index 984b64fb9c73..8104c040a1f7 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -634,6 +634,7 @@ endef
 define Device/DumpInfo
 Target-Profile: DEVICE_$(1)
 Target-Profile-Name: $(DEVICE_DISPLAY)
+Target-Profile-Devicetype: $(DEVICE_TYPE)
 Target-Profile-Packages: $(DEVICE_PACKAGES)
 Target-Profile-hasImageMetadata: $(if $(foreach image,$(IMAGES),$(findstring append-metadata,$(IMAGE/$(image)))),1,0)
 Target-Profile-SupportedDevices: $(SUPPORTED_DEVICES)
diff --git a/include/target.mk b/include/target.mk
index 9bd4c14936c1..e6f26cbfdf3d 100644
--- a/include/target.mk
+++ b/include/target.mk
@@ -73,6 +73,7 @@ define Profile
 	echo "Target-Profile: $(1)"; \
 	$(if $(PRIORITY), echo "Target-Profile-Priority: $(PRIORITY)"; ) \
 	echo "Target-Profile-Name: $(NAME)"; \
+	echo "Target-Profile-Devicetype: $(DEVICE_TYPE)"; \
 	echo "Target-Profile-Packages: $(PACKAGES) $(call extra_packages,$(DEFAULT_PACKAGES) $(PACKAGES))"; \
 	echo "Target-Profile-Description:"; \
 	echo "$$$$$$$$$(call shvar,Profile/$(1)/Description)"; \
diff --git a/package/utils/busybox/Makefile b/package/utils/busybox/Makefile
index 01441d1e87d1..f504117f60f3 100644
--- a/package/utils/busybox/Makefile
+++ b/package/utils/busybox/Makefile
@@ -94,7 +94,7 @@ endif
 define Build/Configure
 	rm -f $(PKG_BUILD_DIR)/.config
 	touch $(PKG_BUILD_DIR)/.config
-ifeq ($(DEVICE_TYPE),nas)
+ifeq ($(CONFIG_DEVICE_TYPE_NAS),y)
 	echo "CONFIG_HDPARM=y" >> $(PKG_BUILD_DIR)/.config
 endif
 	grep 'CONFIG_BUSYBOX_$(BUSYBOX_SYM)' $(TOPDIR)/.config | sed -e "s,\\(# \)\\?CONFIG_BUSYBOX_$(BUSYBOX_SYM)_\\(.*\\),\\1CONFIG_\\2,g" >> $(PKG_BUILD_DIR)/.config
diff --git a/scripts/metadata.pm b/scripts/metadata.pm
index 1826a040a116..5062dba37ec0 100644
--- a/scripts/metadata.pm
+++ b/scripts/metadata.pm
@@ -140,6 +140,7 @@ sub parse_target_metadata($) {
 			$profile = {
 				id => $1,
 				name => $1,
+				device_type => "router",
 				has_image_metadata => 0,
 				supported_devices => [],
 				priority => 999,
@@ -150,6 +151,7 @@ sub parse_target_metadata($) {
 			push @{$target->{profiles}}, $profile;
 		};
 		/^Target-Profile-Name:\s*(.+)\s*$/ and $profile->{name} = $1;
+		/^Target-Profile-Devicetype:\s*(.+)\s*$/ and $profile->{device_type} = $1;
 		/^Target-Profile-hasImageMetadata:\s*(\d+)\s*$/ and $profile->{has_image_metadata} = $1;
 		/^Target-Profile-SupportedDevices:\s*(.+)\s*$/ and $profile->{supported_devices} = [ split(/\s+/, $1) ];
 		/^Target-Profile-Priority:\s*(\d+)\s*$/ and do {
diff --git a/scripts/target-metadata.pl b/scripts/target-metadata.pl
index ee0ab5a71811..fbd9fa70c08b 100755
--- a/scripts/target-metadata.pl
+++ b/scripts/target-metadata.pl
@@ -244,6 +244,12 @@ EOF
 				print "\tselect DEFAULT_$pkg\n";
 				$defaults{$pkg} = 1;
 			}
+			if ($profile->{device_type} =~ "router") {
+				print "\tselect DEVICE_TYPE_ROUTER\n";
+			}
+			if ($profile->{device_type} =~ "nas") {
+				print "\tselect DEVICE_TYPE_NAS\n";
+			}
 			my $help = $profile->{desc};
 			if ($help =~ /\w+/) {
 				$help =~ s/^\s*/\t  /mg;
@@ -328,6 +334,12 @@ config HAS_SUBTARGETS
 config HAS_DEVICES
 	bool
 
+config DEVICE_TYPE_ROUTER
+	bool
+
+config DEVICE_TYPE_NAS
+	bool
+
 config TARGET_BOARD
 	string
 
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
