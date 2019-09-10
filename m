Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30D9AE7F5
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Sep 2019 12:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lFBEBrixXDzXrwwrppy/HyTMwELEAJfdaKzvcfVnOJU=; b=eQetZWQAoKyApO
	A/L0oTpWJuzq4N497jwKFhByvyWSdWnp/L9/Ai0Uqx035Cjd81gve2nNz/Kw3k+KiZzItwoppSrIE
	Xq/6IQtcs7BoC09K2aWmlfnIFC0KJf5tkPdkyWG3M356iKCsumPmdvBt/fuJLhnA9L4FYjvfqVbpi
	ZIYeEixZvdB3JEwSsdmqK4m5DqpxVHTtr9n8EU4HVMaRw+UGR3gNmhYPFEAjDRB8ViS55GywDql3x
	7XU+nfyRO4nJpyE4ZW7Jn/iCryNHh3HuKUZvD5o+T9qk8bPi6O+x9NOCbvjpswQLJmQL+xtBzwyjM
	YnRLJfxZd5/sMUmuQjXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dIH-0007m8-9R; Tue, 10 Sep 2019 10:22:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dIA-0007jX-CU
 for openwrt-devel@lists.openwrt.org; Tue, 10 Sep 2019 10:22:35 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so9540354pgl.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Sep 2019 03:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HAuUZs+9Qli1l8Bc0eGReAiMJpI6Lq/uLDhFHp+j5cM=;
 b=nuLD2X8gww8UgmHylgDmKY0wEkNBN6A/Ut3ZqtdVDqCpk4JUyNCqQi5gjl2cZ0BXUa
 MQ4U+OS0mwoxaJna5xE65YKtwS57kaTiHfNZKpHeqzINJn0iqPMWNw+EEDXMQj56lqfN
 /Gq86v7Om5wxh1rQ5O233PCBuw/HPn2c0iNBNZCfjWWt/goLKJNAJWmyLzoLIrKedaQp
 1lLL44CS9MW9EceTBSiYlj+MpIXM8vCws4B+FEnyQgJEZQmxcFOISiTS0kIwWS1AoTfd
 vb7cJBT9ap3fkbSnbrN3pEf5VkuocDT6zuBpKXrcW4U9N2pjEuVQ1CStafp1l2Jq9ECw
 SqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HAuUZs+9Qli1l8Bc0eGReAiMJpI6Lq/uLDhFHp+j5cM=;
 b=AUGb6ANgg5aall7o4ra0B6j5QPxBsijr3GzZrKm0a4KfcaLcnAgdaWWfgbVIYxwaQd
 pSh1073XIW0ASJ2dXwA9hAJAy09xj15V+qBHi7ohDiXq2rCAS3cZkBE8LrXR02wkGHwX
 iYh9pT5CUKVodod3pJx7enGuZ/KxTvAeWY/XKSsXDcbtFTVha7rEj65PB+kXzWseDANG
 N1aTARRtLdQ5gsIkAeaPV87gFjmWxYB28hNMnpknZVPoRhlhQ8qG3hMeKvGm23w00Djc
 I1IFJC6o8HvFsdqKXfKFAUB4Pw8BReTgxD/Qch8qMoOPIbYc01NI6zbg326k7kzjh9Ql
 xxLw==
X-Gm-Message-State: APjAAAXk8fCP+e4/oRElnZH5PdeMQEBibG5vFAsC4AQcDaCEGugTEq2s
 sICnJVq5Q1TFwvV2c8vFy5Q=
X-Google-Smtp-Source: APXvYqwrv7ojTOnNF2Kf8kucCoJSuSvdd2JziOFh9yRG6T8aly49wSvCf9NpJLCSJDRm3tpTgmecAA==
X-Received: by 2002:a62:61c5:: with SMTP id
 v188mr34475839pfb.194.1568110953145; 
 Tue, 10 Sep 2019 03:22:33 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id h186sm30439125pfb.63.2019.09.10.03.22.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Sep 2019 03:22:32 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: linus.walleij@linaro.org
Date: Tue, 10 Sep 2019 10:22:21 +0000
Message-Id: <20190910102221.125803-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_032234_424436_A4C99DB8 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] gemini: image: fix race condition when
 building copy-kernel.bin
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
Cc: roman@advem.lv, Yousong Zhou <yszhou4tech@gmail.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Make treat copy-kernel.o as intermediate and delete it when it's no
longer needed.  This can fail when the same submake was triggered
multiple times for different devices.

	arm-openwrt-linux-muslgnueabi-as  -k -o copy-kernel.o copy-kernel.S
	export MAKEFLAGS= ;make -w -C copy-kernel CROSS_COMPILE=arm-openwrt-linux-muslgnueabi-
	arm-openwrt-linux-muslgnueabi-objcopy -O binary -S copy-kernel.o copy-kernel.bin
	make[5]: Entering directory '/builder/shared-workdir/build/target/linux/gemini/image/copy-kernel'
	arm-openwrt-linux-muslgnueabi-objcopy -O binary -S copy-kernel.o copy-kernel.bin
	rm copy-kernel.o
	make[5]: Leaving directory '/builder/shared-workdir/build/target/linux/gemini/image/copy-kernel'
	# "App" partition is the rootfs
	arm-openwrt-linux-muslgnueabi-objcopy: 'copy-kernel.o': No such file
	Makefile:27: recipe for target 'copy-kernel.bin' failed
	make[5]: Leaving directory '/builder/shared-workdir/build/target/linux/gemini/image/copy-kernel'
	make[5]: *** [copy-kernel.bin] Error 1
	Makefile:244: recipe for target '/builder/shared-workdir/build/build_dir/target-arm_fa526_musl_eabi/linux-gemini/tmp/openwrt-gemini-storlink_sl93512r-ext4-factory.bin' failed
	make[4]: *** [/builder/shared-workdir/build/build_dir/target-arm_fa526_musl_eabi/linux-gemini/tmp/openwrt-gemini-storlink_sl93512r-ext4-factory.bin] Error 2

With this change, output files are directed to $(KDIR)

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 target/linux/gemini/image/Makefile             |  9 +++++----
 target/linux/gemini/image/copy-kernel/Makefile | 14 ++++++++++----
 2 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index 24402f6a9b..b4daa92670 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -7,8 +7,8 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/image.mk
 
-define Build/copy-kernel
-	$(MAKE) -C copy-kernel CROSS_COMPILE=$(TARGET_CROSS)
+define Build/copy-kernel.bin
+	$(call locked,$(MAKE) -C copy-kernel CROSS_COMPILE=$(TARGET_CROSS) O=$(KDIR),gemini-copy-kernel.bin)
 endef
 
 # Cook a "WRGG" image, this board is apparently one in the D-Link
@@ -93,11 +93,10 @@ endef
 define Build/storlink-default-images
 	mkdir -p $@.tmp
 
-	$(call Build/copy-kernel)
 	# "App" partition is the rootfs
 	mv $@ $@.tmp/hddapp.tgz
 	# 256 bytes copy routine
-	dd if=copy-kernel/copy-kernel.bin of=$@.tmp/zImage
+	dd if=$(KDIR)/copy-kernel.bin of=$@.tmp/zImage
 	$(call Image/pad-to,$@.tmp/zImage,512)
 	# Copy first part of the kernel into zImage
 	dd if=$(IMAGE_KERNEL) of=$@.tmp/zImage bs=1 seek=512 count=2096640
@@ -182,6 +181,8 @@ TARGET_DEVICES += dlink_dns-313
 
 # Default images setup used by the StorLink reference designs
 define Device/storlink-reference
+	COMPILE := copy-kernel-$(1).bin
+	COMPILE/copy-kernel-$(1).bin := copy-kernel.bin
 	IMAGES := factory.bin
 	IMAGE/factory.bin := append-rootfs | pad-rootfs | pad-to 6144k | \
 		storlink-default-images $(1)
diff --git a/target/linux/gemini/image/copy-kernel/Makefile b/target/linux/gemini/image/copy-kernel/Makefile
index 155c35968c..9ba283bb01 100644
--- a/target/linux/gemini/image/copy-kernel/Makefile
+++ b/target/linux/gemini/image/copy-kernel/Makefile
@@ -13,20 +13,26 @@ OBJCOPY		:= $(CROSS_COMPILE)objcopy
 
 BIN_FLAGS	:= -O binary -S
 
-all: copy-kernel.bin
+SRC_DIR		:= $(CURDIR)/
+OUT_DIR		:= $(if $(O),$(if $(patsubst %/,,$(O)),$(O)/,$(O)),$(SRC_DIR))
+
+all: $(OUT_DIR)copy-kernel.bin
 
 # Don't build dependencies, this may die if $(CC) isn't gcc
 dep:
 
 install:
 
-%.o : %.S
+$(OUT_DIR):
+	mkdir -p $(OUT_DIR)
+
+$(OUT_DIR)%.o : $(SRC_DIR)%.S | $(OUT_DIR)
 	$(AS) $(ASFLAGS) -k -o $@ $<
 
-%.bin: %.o
+$(OUT_DIR)%.bin: $(OUT_DIR)%.o
 	$(OBJCOPY) $(BIN_FLAGS) $< $@
 
 mrproper: clean
 
 clean:
-	rm -f copy-kernel.bin copy-kernel.o
+	rm -f $(OUT_DIR)copy-kernel.bin $(OUT_DIR)copy-kernel.o

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
