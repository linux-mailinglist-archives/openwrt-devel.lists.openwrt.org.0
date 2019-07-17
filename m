Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C586C053
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 19:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TmP4sLi7zXeunJQ4zB6grOhLlrrCYmLaiBMq202RrtM=; b=qtnxsoBMWmQQbC
	xIn93pjMgdaOOBpSLg3fM8CjGHAqXgDWF5Y+anNUXVtReqUm0B3p4DQjjZ+lJxReB/7IAQ/AhFFNB
	h9ozFohCRFBEbJD0xaALZMPwZaW7/i9Q6PnJgmK+clKXsM+0cvJrLAVXMIE70GWdEkka1BhA2DvEr
	BEchlqd4DeQu5LjNJuM8JxJLK1A72CF8jBaGOUhbvD3AF7PztHFjmzrqt6OcssW5pLhNDzpz04rnv
	7FtrW5vi8MgmdCgNqq/SzO639ryyV64Jmy6nSkWBj/E1XJDyW1mljPWdqzu9MSqzqKEaWpW4eIhD1
	kkNBVW4tZOXwh25zb+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnek-0006qM-Vl; Wed, 17 Jul 2019 17:23:55 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnneW-0006pw-44
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 17:23:41 +0000
Received: by mail-lj1-x242.google.com with SMTP id v24so24451677ljg.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 10:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/uIkLQQKVLFofdw5w4pQbebgGHDgIc+ODog1cMM4MGE=;
 b=Q1q47AgBA1fYNNGirW6Wfiwp0kgB7Qr5E/bhtbYLccCye7DHirbo+aYRmo91nYji7u
 4kSZq2wksgL+HbSMochrlThQ8Te1HwHgB0VovVLFxJO8ASWzkRfbPrXaUJIFCs28PfXl
 nXiTC9znUuyGVjvtxdNRE+u6zaiuI/xxiqyUSINyO38CVZPHpuZCH7teId1sFoTymG2K
 gzSrKWpJDpV0oZZpC5Wc+7AcjsGklQjZwlZ/xF/M2bO2W6/WCr1Zc/+qRmUfu99ERV6P
 SlYish9LhEnghDC7sqXlerwJY9bkWbrwaYZ+LIY2miu5/m+XO1+hv370pdIUJ5PVu6fv
 DOAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/uIkLQQKVLFofdw5w4pQbebgGHDgIc+ODog1cMM4MGE=;
 b=qMd6w9LK7UfTR5fEeN+SGAXrgIjWdQm0IZ62lFUUZrO0XRmjB+1A9rSiH6F0mKYPN4
 zG11knoL/HaMB3WyBAJCnEwXq7zL6jSJfVihSCB/cjrNT01gqO/4VL06MwoxNU9uE51K
 DresmeSfvcJRPMVtZVyKq4KJxmwQoC4RFefan1K1BsKHNXKmAfNUw4hLfPmC7fqZ+sue
 sVoonUW/Gi+6XeTNrnywR7SQ/DUoExH4UAIJwVlOZm6TkHXCNmtQynF3wcXplUmAS9YN
 xDK6PrXmQz1U6ruLbZjuPkcypNFz6irFpqVyIY2A4dHumf8Xt5ZsX1OsUGKdrph042QH
 lJFQ==
X-Gm-Message-State: APjAAAU3qHZknHlxC1sWveuCJL6NnQvAdssS/idl4u9Tp0o2c+SMn7cd
 6UYNIwvI/fKhn5qCXgIOCRnbXA==
X-Google-Smtp-Source: APXvYqyO/cydaVUEo0d8jLrE9/yALssfJM0pa847x/QEMZWaMOLDPsZiedxMIpApxwHCjV5CrGUqTw==
X-Received: by 2002:a2e:970d:: with SMTP id r13mr21563598lji.126.1563384218800; 
 Wed, 17 Jul 2019 10:23:38 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id c1sm3543659lfh.13.2019.07.17.10.23.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 10:23:37 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 17 Jul 2019 19:23:31 +0200
Message-Id: <20190717172332.8286-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_102340_174722_80CF1070 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/2] gemini: Add copy-kernel utility package
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

This package just contains a small Gemini-only assembler
bootstrap loop to copy the kernel from the two fragments
(previously zImage at 0x01600000 and initramdisk at 0x00800000)
into one big zImage of up to 8 MB at 0x00400000.

It will be built on demand from the Gemini image Makefile.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../linux/gemini/image/copy-kernel/.gitignore |  1 +
 .../linux/gemini/image/copy-kernel/Makefile   | 32 +++++++++++++
 .../gemini/image/copy-kernel/copy-kernel.S    | 45 +++++++++++++++++++
 3 files changed, 78 insertions(+)
 create mode 100644 target/linux/gemini/image/copy-kernel/.gitignore
 create mode 100644 target/linux/gemini/image/copy-kernel/Makefile
 create mode 100644 target/linux/gemini/image/copy-kernel/copy-kernel.S

diff --git a/target/linux/gemini/image/copy-kernel/.gitignore b/target/linux/gemini/image/copy-kernel/.gitignore
new file mode 100644
index 000000000000..e5939dfd9c2d
--- /dev/null
+++ b/target/linux/gemini/image/copy-kernel/.gitignore
@@ -0,0 +1 @@
+copy-kernel.bin
diff --git a/target/linux/gemini/image/copy-kernel/Makefile b/target/linux/gemini/image/copy-kernel/Makefile
new file mode 100644
index 000000000000..155c35968c68
--- /dev/null
+++ b/target/linux/gemini/image/copy-kernel/Makefile
@@ -0,0 +1,32 @@
+#
+# Makefile for Gemin kernel copy stub
+#
+# Copyright (C) 2019 Linus Walleij <linus.walleij@linaro.org>
+#
+# This program is free software; you can redistribute it and/or modify it
+# under the terms of the GNU General Public License version 2 as published
+# by the Free Software Foundation.
+#
+
+AS		:= $(CROSS_COMPILE)as
+OBJCOPY		:= $(CROSS_COMPILE)objcopy
+
+BIN_FLAGS	:= -O binary -S
+
+all: copy-kernel.bin
+
+# Don't build dependencies, this may die if $(CC) isn't gcc
+dep:
+
+install:
+
+%.o : %.S
+	$(AS) $(ASFLAGS) -k -o $@ $<
+
+%.bin: %.o
+	$(OBJCOPY) $(BIN_FLAGS) $< $@
+
+mrproper: clean
+
+clean:
+	rm -f copy-kernel.bin copy-kernel.o
diff --git a/target/linux/gemini/image/copy-kernel/copy-kernel.S b/target/linux/gemini/image/copy-kernel/copy-kernel.S
new file mode 100644
index 000000000000..a287e40defb6
--- /dev/null
+++ b/target/linux/gemini/image/copy-kernel/copy-kernel.S
@@ -0,0 +1,45 @@
+	// Arm assembly to copy the Gemini kernel on Storlink reference
+	// designs and derived devices with the same flash layout and
+	// boot loader.
+	//
+	// This will execute at 0x01600000
+	//
+	// Copies the kernel from two fragments (originally zImage
+	// and initramdisk) to 0x00400000 making space for a kernel
+	// image of up to 8 MB except for these 512 bytes used for
+	// this bootstrap.
+	//
+	// 0x01600200 .. 0x017fffff -> 0x00400000 .. 0x005ffdff
+	// 0x00800000 .. 0x00dfffff -> 0x005ffe00 .. 0x00bffdff
+
+	// Memory used for this bootstrap
+	.equ BOOT_HEADROOM,	0x200
+
+	.global _start // Stand-alone assembly code
+_start:
+	mov r1, #0x01600000
+	mov r2, #0x00400000
+	mov r3, #0x00200000
+	add r1, r1, #BOOT_HEADROOM
+	sub r3, r3, #BOOT_HEADROOM
+copyloop1:
+	ldr r0, [r1]
+	str r0, [r2]
+	add r1, r1, #4
+	add r2, r2, #4
+	sub r3, r3, #4
+	cmp r3, #0
+	bne copyloop1
+	mov r1, #0x00800000
+	mov r3, #0x00600000
+copyloop2:
+	ldr r0, [r1]
+	str r0, [r2]
+	add r1, r1, #4
+	add r2, r2, #4
+	sub r3, r3, #4
+	cmp r3, #0
+	bne copyloop2
+	mov r0, #0x00400000
+	// Let's go
+	mov pc, r0
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
