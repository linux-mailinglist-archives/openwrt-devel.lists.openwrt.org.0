Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C145B04F
	for <lists+openwrt-devel@lfdr.de>; Sun, 30 Jun 2019 17:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9OiV3+vpZaACE9FPnW64wqtQBMdhqx8OXDGGXeJHFbE=; b=BY2ftblDgdAAV9
	hv41uop0RlkW/1WJnV7P9AGUr7TrUwACMrDQE54lR/jdtviz+56cX4Ld3XqGRLohzbQ6VS8Rtdp4W
	Kez3+1nZk+uWRddFe+QdKefOBzTI9BtHXqv9xRjoEhoDA8v11AW5bpVv19BoKcZBt7sFRU0rOzHcA
	Lm4viPCZBUBgnlpHu4g7HbJk4tSDTB+fHS5hpCx2Z+dhgIaa9U5qliMsCRabGJOaNiWfpTT8KJTHj
	/8vKlJbmix+Tr0uIjzTsVSTfa29C5EKrzRQ5TfBR2gt21hmZqDeI5QyC4m/W1HfQHs78UXhFuMtZi
	mKT4XpGFZSpYwNv65alA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhbR6-0007fv-VG; Sun, 30 Jun 2019 15:08:13 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhbQw-0007fb-1F
 for openwrt-devel@lists.openwrt.org; Sun, 30 Jun 2019 15:08:03 +0000
Received: by mail-lj1-x235.google.com with SMTP id k18so10433002ljc.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 30 Jun 2019 08:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ITy6StVcGsRT88Msoin+UkqYMgOMTGYUEVt3AOFU5pk=;
 b=QC0GxIZiWAWd9MYicdu6A65Wr3FG3jPBGlEevEqfxYdE59oqAblIVn//RWA4tIcobW
 sX4B2ZzYdZLO4qYmVC/Ntr9iLn4d1u65NvuwA55l0gurDuEAXrE2vHyXKMBXGSmAwufi
 u3OeAjmlzisqrhmCAF0O1tpZ7zChVNAS8OrGvlZQO5vqsUA6BNZ/pCTqnpA1qfKzoIUs
 FG3pXRL+Z3NC0h2X9SmH6eys6uV/CABbmt8G58TN1zKDmvX0fmrgeWriostfhkjOT73I
 r0mAJyzYLATgLsxFY87JxfWjObMDaIgAZttn39MFan9S3UiHt7Vyp5WRYFsCoTnI2kUX
 HCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ITy6StVcGsRT88Msoin+UkqYMgOMTGYUEVt3AOFU5pk=;
 b=mHYvp1QtDu1WLvaMfaxL6TlNv/CsOCUmxGvDTQVYZvqDnLPHpilwEIjYZ4VOyGDvGY
 O9Ug8rEwCLUnKIm2qaGGimBDApfmNsxI+HAF6Z84tT3ZNkpDgJppHCBrcIwfYo6J2W4c
 6A7sqE5w8QZjThRuATqMJI7H27EpFx+SYeByKqbCmhrZyob9KipLMWAY2YOEg2sP1X3Z
 WA3/DprtwnMqg+fl5LwtOwmsJNe4XtMiQ9B5d0K3sJPguexqZGb6MCwH5Xl+ibuhP+6y
 ygvLxr65JToPhCIMlOcUxxAJWK4GYr9f3as0BxpQ2Wx+K9pGDHGT0Y5Hw5l839zVuNGe
 HwkQ==
X-Gm-Message-State: APjAAAU5LBhTZGibX6sqbeRUS43s4gtUemOg+RboCqBpyr070Obcnyo3
 BjanseLdiPnT+/8U5/wx4NswHw==
X-Google-Smtp-Source: APXvYqy7z5P1ImQCKeFDwXLx78ZjR4hrqWpcuEWoBjpZi5kMwlUxohm17WWJKzfPhH94Fn2bOpHRYQ==
X-Received: by 2002:a2e:7619:: with SMTP id r25mr11217459ljc.199.1561907279627; 
 Sun, 30 Jun 2019 08:07:59 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id q25sm1512743lfo.60.2019.06.30.08.07.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 08:07:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Sun, 30 Jun 2019 17:07:56 +0200
Message-Id: <20190630150756.12439-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_080802_083296_062089AA 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] gemini: Add StorLink SL93512r images
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds image generation for the StorLink reference design
SL93512r. This board is now supported upstream in kernel
v4.19.

As this image structure is identical to SQ201 and Raidsonic,
we simply refer to this as "storlink-reference" from now on.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 target/linux/gemini/image/Makefile | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index 5901bbf0c9b2..7b5faa04fd0e 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -74,14 +74,15 @@ define Build/wiligear-image
 	mv $@.new $@
 endef
 
-# Create the special NAS4220B and Itian Square One SQ201 image
-# format with the squashfs and overlay inside the "rd.gz" file.
+# Create the default image format used by the StorLink reference design
+# SL93512r, Raidsonic NAS4220B and Itian Square One SQ201
+# with the squashfs and overlay inside the "rd.gz" file.
 # We pad it out to 6144K which is the size of the initramfs partition.
 #
 # The "application" partition is just blank. You can put anything
 # there when using OpenWRT. We just use that to create the
 # "sysupgrade" firmware image.
-define Build/nas4220b-sq201-images
+define Build/storlink-default-images
 	mkdir -p $@.tmp
 
 	mv $@ $@.tmp/rd.gz
@@ -162,15 +163,16 @@ define Device/dlink_dns-313
 endef
 TARGET_DEVICES += dlink_dns-313
 
-define Device/itian-raidsonic
+# Default images setup used by the StorLink reference designs
+define Device/storlink-reference
 	IMAGES := factory.bin
 	IMAGE/factory.bin := append-rootfs | pad-rootfs | pad-to 6144k | \
-		nas4220b-sq201-images $(1)
+		storlink-default-images $(1)
 	DEVICE_PACKAGES := $(GEMINI_NAS_PACKAGES)
 endef
 
 define Device/itian_sq201
-	$(Device/itian-raidsonic)
+	$(Device/storlink-reference)
 	DEVICE_TITLE := ITian Square One SQ201
 	DEVICE_DTS := gemini-sq201
 	DEVICE_PACKAGES += kmod-rt61-pci kmod-usb2-pci
@@ -178,13 +180,21 @@ endef
 TARGET_DEVICES += itian_sq201
 
 define Device/raidsonic_ib-4220-b
-	$(Device/itian-raidsonic)
+	$(Device/storlink-reference)
 	DEVICE_TITLE := Raidsonic NAS IB-4220-B
 	DEVICE_DTS := gemini-nas4220b
 	DEVICE_TYPE := nas
 endef
 TARGET_DEVICES += raidsonic_ib-4220-b
 
+define Device/storlink-sl93512r
+	$(Device/storlink-reference)
+	DEVICE_TITLE := StorLink SL93512r
+	DEVICE_DTS := gemini-sl93512r
+endef
+TARGET_DEVICES += storlink_sl93512r
+
+
 # The wiliboard images need some changes to be functional and buildable.
 #
 # The dts would need to use the ecoscentric,redboot-fis-partitions partition
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
