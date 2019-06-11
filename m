Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F002416D2
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 23:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w2nFOiYipJR54k/EJ0pw/X8Qma46TrM6dj2YhBtxE4I=; b=VegNIe4NRM4KvI
	LzPErVT6ON2Tv+NNrA0oel1eWkQVp1wkZbPBqThNlVczWMxaVi/GqruTa9V4i+4zXp2ZK1cV5fpaU
	cWL0PpEaZMnodli5+AkXISSPjX76KColandIckhypeRmTPkzSPANMQVxyyEl++sGpWXSYsrIHCUfW
	R6i5gzqWYIkGQT9DwCpWH1OERaccoLzo+2YcPBRi1wvd2LGFq0jV9xxwRAiqvUXvcEeztPUXisKw8
	nqaAsQUqOXh32hkFG/AkEPUNa9XilCV2RTZWmw0mpY2EPcuspyM2Jfm0AZ1v0UaFZIiCWl18h6ZWj
	U2kk71te+UDqypdIu6vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoHr-0005mr-6A; Tue, 11 Jun 2019 21:26:35 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoHk-0005mR-Ec
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 21:26:29 +0000
Received: by mail-lf1-x142.google.com with SMTP id y13so10393464lfh.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 14:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NFO024bM4vyJFsnUnaO0gQENYgFiQA8kde85g+7X52o=;
 b=mTfNWHezqR+25Loem6RNvFdznJyLuTtEITsqypENWmpJiAdA35mNaRT2v3xhlpWYj7
 DZWATlJQLn3GZS4MTBamFjSzt8zlb7AuPDH2Ig9lEcaeLes6rpJRDPU/W/vjONikXb4i
 U0Lzzt2K3cZ2MvODUsKKX/ON76C80CV1JRTmEN/zb4kJwjDUD+CCcvyCDV9dJhQ0CtND
 m/eBaR1HRzTCi9ij8Ol+tafD5T0VakqNl0nkulhM3G1y8GMj3hP2zbcuKTjjvlDNwxaM
 8EQdHzj4jSOnDozJ960MjmaTA+4AyThjQWZ2Ks4Sbrn/OgacyRi1vqco5LRLcvuv4NAa
 SuIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NFO024bM4vyJFsnUnaO0gQENYgFiQA8kde85g+7X52o=;
 b=FWwD+CUPfmkkm1EaTah0WiximcsZeZv43Kh8YTv8DSo7aY0Rrru4tEt3iMwtefCh/S
 nFZ2saOZlcQCFRP1Ye6+F9Huao5rron1wdjZJNczWSLJ1tKuofWxfijQD7hIwNmE1FDX
 FmjIPnfaFJxRv1YKPy/1CnhUd2GHM0Kiu6cj5mFLd/SI4A5cDxjQ7rxWda1emB0jRsPH
 Kk+ARS1zp7XKdhfzpPnJGxntkaAv0x0Bmo7kKip575QfjtKLzCoBuNpuhmBq2z9fGn8L
 f8feYFD8T2hAapAtACA6IZOnPemcM5M3g6hjOh6SclnGInHpFP5zNOve0JmcKas3GUT3
 bdyg==
X-Gm-Message-State: APjAAAXYrMK+s97P9FscoqqQHZdclGp7Z7sSctE0SZmRBDaJr8x9PE0z
 ziXOe2atwywMgLwUiahbEpK/7w==
X-Google-Smtp-Source: APXvYqyosGH975uzb3PdzF7qvciEe92IEjwaf4YsD1Dj5RTq/On7MzyXNR4tsIPfZQcjL7BFa6gDbA==
X-Received: by 2002:ac2:5094:: with SMTP id f20mr40668068lfm.186.1560288386241; 
 Tue, 11 Jun 2019 14:26:26 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id s12sm2756452lji.34.2019.06.11.14.26.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:26:24 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Tue, 11 Jun 2019 23:25:39 +0200
Message-Id: <20190611212539.31962-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_142628_503352_A0CBFA26 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] gemini: Make root filesystem writeable
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

The squashfs+jffs2 root filesystem only came up as read-only
and the config would not take:

[   25.600237] mount_root: Could not open mtd device: /dev/mtd4
[   25.634674] mount_root: reading rootfs_data failed
[   25.665346] mount_root: Could not open mtd device: /dev/mtd3
[   25.699802] mount_root: reading rootfs failed
[   25.726426] mount_root: mounting /dev/root

Well that is not very strange since the whole firmware partition
is made read-only in the device tree. Let's fix that by augmenting
the OpenWrt patch.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Refresh the patch so that it has the right patch format.
---
 ...gment-DIR-685-partition-table-for-OpenWrt.patch | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch b/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
index bb4076558df4..6ef931c16c00 100644
--- a/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
+++ b/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
@@ -1,7 +1,7 @@
-From 854934b0ce8e758ce581f5ddbc30e618ab46fbdb Mon Sep 17 00:00:00 2001
+From ea99e7570882df53478f9b5fa5886a6e92fc2c7f Mon Sep 17 00:00:00 2001
 From: Linus Walleij <linus.walleij@linaro.org>
 Date: Mon, 11 Mar 2019 15:44:29 +0100
-Subject: [PATCH 2/2] ARM: dts: Augment DIR-685 partition table for OpenWrt
+Subject: [PATCH] ARM: dts: Augment DIR-685 partition table for OpenWrt
 
 Rename the firmware partition so that the firmware MTD
 splitter will do its job, drop the rootfs arguments as
@@ -9,8 +9,8 @@ the MTD splitter will set this up automatically.
 
 Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
 ---
- arch/arm/boot/dts/gemini-dlink-dir-685.dts | 5 +++--
- 1 file changed, 3 insertions(+), 2 deletions(-)
+ arch/arm/boot/dts/gemini-dlink-dir-685.dts | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
 
 --- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
 +++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -23,7 +23,7 @@ Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
  		stdout-path = "uart0:19200n8";
  	};
  
-@@ -286,7 +286,8 @@
+@@ -286,9 +286,9 @@
  				 * this is called "upgrade" on the vendor system.
  				 */
  				partition@40000 {
@@ -31,5 +31,7 @@ Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
 +					compatible = "wrg";
 +					label = "firmware";
  					reg = <0x00040000 0x01f40000>;
- 					read-only;
+-					read-only;
  				};
+ 				/* RGDB, Residental Gateway Database? */
+ 				partition@1f80000 {
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
