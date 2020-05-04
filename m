Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA351C310B
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 03:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c09VT4n46KkGGpPh/3Oks0nsXviXdwLEBo5efcK3ARk=; b=Ej3WC2JSMoPc+M
	mM+wg8VMtUHA5NVYiZ4yQHPcsKMfrkcdWtPqxhzly897jPcXpU11uO3DFuul9dUTXd+W9BCBIaO2o
	1K1KfzagJQ71aGoQdePJy9jnlk7COlw2uAJoeiwM3WmEBYMVN6LmKZv4GM9hGqAMxA0KOvpbXoPMz
	+h0GPwMc8P+/ROaEgs0IdzO2AomvGbidgML1JFPHCEBoGzCwr1DEwCeKac1Z72amdCHoE3S3u+vf9
	v2s0QiXb/88lUxBtlmoWiIZCZVqRBrMkboZRQOtzl7gMI/P69J9eqOarGU+idIq1wgQzA5Ftac90p
	OqE+cGCDpL/oYwzRLxug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVPsJ-0002iW-D7; Mon, 04 May 2020 01:26:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVPs9-0002dh-7r
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 01:26:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id l18so8224729wrn.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 May 2020 18:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mNsZPUiV9+xSaMa2roWW8HYuxPN39f89A+JvtNpMfi4=;
 b=YWU8AcSWfgJ/ajFTQctBjpvzl02hcDn0Yx0ZqT5DrilivEHGEyp6nF82ucI46e1Tph
 Xl8iOwx8OT7FkUDvnXU8CA7cV9tJ+Xmca7oIiGpuWbtCg85HFY/yfD/xEy5oK+yh2tsG
 3qvVoNMad9SXzDX0CBI/wIPE5L9uyKYa3ljEjPkUghOAL58Uawhi/Cx5j5mk22ftxJ/z
 +EkZOURsa6ScHvXPFtTeBHu5QC6NGp0mFHx71LbzTce92BReVOaSrsSeEi+qiKLtZjeW
 oXlXLeI83ejx4QgroT63qjxJuk0CA1xRGcspYfCKLyOhatHrsC9kd10SY8CQOVpKcbZd
 fLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mNsZPUiV9+xSaMa2roWW8HYuxPN39f89A+JvtNpMfi4=;
 b=aKHlZO5rliOSQWPiadlDTpeQZTY6HZx+9BUa0yHheU8H9139V8OcU8XG86+FWa1NTS
 2A9BNJiiNjNrWttblyolJWutbg1o5UUHZqPagHD7H++qZjdcloqH9N3ylPmVh3GvbcK5
 o9ilYh6sqEEi44vPC3dbVe4sOPUXUYFgrj2Ns3GQ9FoeB14Z4ccesdbjBJsu/3PXrPmA
 FH4GQzPO23tYD2V/KPe5/OM4gdQfwd5/O/9WXQAp7rzydvGW4QpFZRJd9dRvm5SERdej
 KSpsdyYdP0rryyZM1Fm64gkOwQf+79FgYh7CJBDa8ore/a//nwrLa2BChvAEZGUaX65R
 Bbkg==
X-Gm-Message-State: AGi0PuYnq1VrvoXETznIPb68GQBUeLFwPE+iekbixSV0MhXMJ1Fd1T4y
 6N23BbhAK94B5n8z3s7IYahZpfkwsX8=
X-Google-Smtp-Source: APiQypI2ICadfPrm+/CEvTqGFdJoQRqauk5wCdK+BGlepl0qRFCWYBTwxKDUE4VzHAyxdO/FzKxxJw==
X-Received: by 2002:adf:ec07:: with SMTP id x7mr10976803wrn.416.1588555575395; 
 Sun, 03 May 2020 18:26:15 -0700 (PDT)
Received: from localhost
 (2a01-036d-0111-e9cb-bcb8-585e-52bc-b843.pool6.digikabel.hu.
 [2a01:36d:111:e9cb:bcb8:585e:52bc:b843])
 by smtp.gmail.com with ESMTPSA id w10sm17705387wrg.52.2020.05.03.18.26.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 03 May 2020 18:26:14 -0700 (PDT)
From: Szabolcs Hubai <szab.hu@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	gch981213@gmail.com
Date: Mon,  4 May 2020 03:25:55 +0200
Message-Id: <20200504012555.7029-2-szab.hu@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504012555.7029-1-szab.hu@gmail.com>
References: <CAJsYDVLn4mxcSnm9uURVeXtom64mOunOKCfYVew0ynDuDahB7w@mail.gmail.com>
 <20200504012555.7029-1-szab.hu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_182617_283858_54DB7008 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [RFC,
 PATCH] ramips: mt7621: use OKLI lzma-loader for D-Link DIR-860L B1
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
Cc: Szabolcs Hubai <szab.hu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In commit ce1957100411b0a751d6431d36def9c28048b4dc this device started
using lzma-loader to enable booting bigger kernels from flash.

Chuanhong Guo noted [0], if the kernel can be put at a fixed offset
in flash, we could compress lzma loader separately and let u-boot
decompress only the loader.

This patch use this OKLI method for sysupgrade and factory images.

[0]
http://lists.infradead.org/pipermail/openwrt-devel/2020-April/022926.html

Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>
---
 target/linux/ramips/image/Makefile            | 20 +++++++++++++++++++
 .../ramips/image/lzma-loader/src/loader.c     |  2 +-
 target/linux/ramips/image/mt7621.mk           |  9 ++++++++-
 3 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/target/linux/ramips/image/Makefile b/target/linux/ramips/image/Makefile
index f93ea8ab2a..76568d7c6c 100644
--- a/target/linux/ramips/image/Makefile
+++ b/target/linux/ramips/image/Makefile
@@ -88,6 +88,26 @@ define Build/loader-kernel
 	$(call Build/loader-common,LOADER_DATA="$@")
 endef
 
+define Build/loader-okli-compile
+	$(call Build/loader-common,FLASH_OFFS=$(LOADER_FLASH_OFFS) FLASH_MAX=0)
+endef
+
+# Arguments: <output name> <kernel offset> <loader type>
+define Build/loader-okli-with-type
+	dd if=$(KDIR)/loader-$(word 1,$(1)).$(word 3,$(1)) bs=$(word 2,$(1)) conv=sync of="$@.new"
+	cat "$@" >> "$@.new"
+	mv "$@.new" "$@"
+endef
+
+# Arguments: <output name> <kernel offset>
+define Build/loader-okli
+	$(call Build/loader-okli-with-type,$(word 1,$(1)) $(word 2,$(1)) $(LOADER_TYPE))
+endef
+
+define Build/append-loader-okli
+	cat "$(KDIR)/loader-$(word 1,$(1)).$(LOADER_TYPE)" >> "$@"
+endef
+
 define Build/relocate-kernel
 	rm -rf $@.relocate
 	$(CP) ../../generic/image/relocate $@.relocate
diff --git a/target/linux/ramips/image/lzma-loader/src/loader.c b/target/linux/ramips/image/lzma-loader/src/loader.c
index c73b60b351..8b7756b931 100644
--- a/target/linux/ramips/image/lzma-loader/src/loader.c
+++ b/target/linux/ramips/image/lzma-loader/src/loader.c
@@ -28,7 +28,7 @@
 #include "printf.h"
 #include "LzmaDecode.h"
 
-#define AR71XX_FLASH_START	0x1f000000
+#define AR71XX_FLASH_START	0x10000000
 #define AR71XX_FLASH_END	0x1fe00000
 
 #define KSEG0			0x80000000
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 88db43cb65..9438e5c09e 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -221,7 +221,14 @@ define Device/dlink_dir-860l-b1
   BLOCKSIZE := 64k
   SEAMA_SIGNATURE := wrgac13_dlink.2013gui_dir860lb
   LOADER_TYPE := bin
-  KERNEL := kernel-bin | append-dtb | lzma | loader-kernel | \
+  LOADER_FLASH_OFFS := 0x501040
+  COMPILE := loader-$(1).bin loader-$(1).lzma
+  COMPILE/loader-$(1).bin := loader-okli-compile
+  COMPILE/loader-$(1).lzma := append-loader-okli $(1) | pad-to 32k | \
+	relocate-kernel | lzma
+  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49 | \
+	loader-okli-with-type $(1) 4096 lzma
+  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | loader-kernel | \
 	relocate-kernel | lzma -a0 | uImage lzma
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := D-Link
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
