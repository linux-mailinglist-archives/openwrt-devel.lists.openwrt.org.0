Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2F66C051
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 19:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=unsopD2SZewwgfXAOJAmjMjyXV6iYkEq52ZV+LHKKG8=; b=bHLDBRaMp7Nq8Z
	76uF21eFrUmW6Ur9eF9syW9TyrrCezhxPhtkz/oP4QFAZf6i/vTvcUS0XCBCPj5FeU3dNe02VtxsO
	0hWX/CoiUEvUhQAZc/hvDiNqMHbne4V9hVyWRXTQLCQ1NjFkP+dBu/y/OrImWSA7xGBoNKh1/l4Km
	ME3BSKbAm8c1hhDSpzT6xuY03GP66ERVbchJAblbntmolH5MFccuzbgFS7tLERPVtsIAuH75meKqg
	AGb9SVjEzmOKQ3Nbc2zy36tRY+8qffkXRXJgXFccZ3DnwgSGB4Fc3WoQjV7KYYbyhfnqEKq7Ycq9e
	GkSvNlmuTCwPH4wma80g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnne3-0006S6-D9; Wed, 17 Jul 2019 17:23:11 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnndg-0006NL-Ft
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 17:22:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id z28so24482695ljn.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 10:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tGcyvF2MK9w0bqxlRAa0wixK4KHSMjB7diAbp+dTkS8=;
 b=mP4Dy+YS/bn7VtMNq7eH5IyVGS2ursn13N6l/VSLh4mwZj7k+JvtD5wIICpTZj83XZ
 20QS52R2B98n8pSYdlHq9fjDi6aTznYiC97uz4Eu5KFTuiPTsqToQA9OPCBxEATeSWU5
 NINkRr9sokRrQlA8g9qaulk4m3J6FdTCJvEDEHvR9YkHYTYEkHMAcj8T3iCrdtuYinOE
 wpA4a60IrjMaZ6hPx3baalYRI/ssf6JMMh951yuHsf5PUXOsHh7Zkj1aAwQNh7hjTtQ/
 Fi6wJWunHQEER7993JyHvPQwdRUJPCmz5lcWgXyEtqc2VrFrpee7245Q8xXTi1vvt8aV
 6vDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tGcyvF2MK9w0bqxlRAa0wixK4KHSMjB7diAbp+dTkS8=;
 b=ObFs0VcnnJwBjPI4skYKSTEWl4ahDrWQcnaU/exbO5LZ+Hp+ul+TNFy73qZ4Mg1X7h
 FdKLLc464bagHhJWyRADwTL9t/qxG08MPmkoCOl3zw8gmFxZX6a/hsMcPtJCRt68uTJL
 /p9JkNeJJUzoGPi+Jf6VsTgfV+01bsO111CY61L0NQW86Rk7X20cfXrT147btAmDqOiS
 djVtvYLUUGgSo545WtUgdHMrYlkGBcz7PGi9yZnlktxo6VGl2dDSNnzJCNjsODwdqNQL
 Q8lQGBxFshX3SnbL1X8tqgw398wpDsuqqzPDF3PntSP14DWEYrkyFS2dqidiivK7tC8b
 4egw==
X-Gm-Message-State: APjAAAUpwI/9AQ33GZu4WQ5dj+Cjfivp4K6Lu3VdNGPwKrXNj8qz3NXk
 8bcE4IoobmEI0zlprnqJhwUOFQ==
X-Google-Smtp-Source: APXvYqxtpZp34Qo8AyySmB+CT7e+MtTIIkmb5flj9GBv8GWm72R35KpnNAolNQGlXJfj3j3AdBUQyw==
X-Received: by 2002:a2e:7604:: with SMTP id r4mr21617866ljc.225.1563384166484; 
 Wed, 17 Jul 2019 10:22:46 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id 2sm4568350lji.94.2019.07.17.10.22.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 10:22:44 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 17 Jul 2019 19:22:40 +0200
Message-Id: <20190717172240.8169-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_102248_564931_FAD39EC8 
X-CRM114-Status: GOOD (  14.12  )
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
Subject: [OpenWrt-Devel] [PATCH] gemini: Fix up flash accesses
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

The SL93512r and the NAS4220B have Redboot partition
tables (rely on these) and need to boot from mtdblock3.
Add two patches from upstream to fix this.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 ...-Switch-to-redboot-partition-parsing.patch | 104 ++++++++++++++++++
 ...dts-gemini-Mount-root-from-mtdblock3.patch |  36 ++++++
 2 files changed, 140 insertions(+)
 create mode 100644 target/linux/gemini/patches-4.19/0022-RM-dts-gemini-Switch-to-redboot-partition-parsing.patch
 create mode 100644 target/linux/gemini/patches-4.19/0023-ARM-dts-gemini-Mount-root-from-mtdblock3.patch

diff --git a/target/linux/gemini/patches-4.19/0022-RM-dts-gemini-Switch-to-redboot-partition-parsing.patch b/target/linux/gemini/patches-4.19/0022-RM-dts-gemini-Switch-to-redboot-partition-parsing.patch
new file mode 100644
index 000000000000..12c899ea3020
--- /dev/null
+++ b/target/linux/gemini/patches-4.19/0022-RM-dts-gemini-Switch-to-redboot-partition-parsing.patch
@@ -0,0 +1,104 @@
+From cad2161e64aca9e1c94fd11b0d0f7b53c9e80de0 Mon Sep 17 00:00:00 2001
+From: Linus Walleij <linus.walleij@linaro.org>
+Date: Fri, 12 Jul 2019 22:57:11 +0200
+Subject: [PATCH 1/2] ARM: dts: gemini: Switch to redboot partition parsing
+
+This switches the kernel to parse the Redboot partitions
+in the SL93512r and the NAS4220B properly using the
+right compatible string instead of using hard-coded
+partitions.
+
+Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
+---
+ arch/arm/boot/dts/gemini-nas4220b.dts | 35 +++------------------------
+ arch/arm/boot/dts/gemini-sl93512r.dts | 35 +++------------------------
+ 2 files changed, 8 insertions(+), 62 deletions(-)
+
+--- a/arch/arm/boot/dts/gemini-nas4220b.dts
++++ b/arch/arm/boot/dts/gemini-nas4220b.dts
+@@ -81,37 +81,10 @@
+ 			/* 16MB of flash */
+ 			reg = <0x30000000 0x01000000>;
+ 
+-			partition@0 {
+-				label = "RedBoot";
+-				reg = <0x00000000 0x00020000>;
+-				read-only;
+-			};
+-			partition@20000 {
+-				label = "Kernel";
+-				reg = <0x00020000 0x00300000>;
+-			};
+-			partition@320000 {
+-				label = "Ramdisk";
+-				reg = <0x00320000 0x00600000>;
+-			};
+-			partition@920000 {
+-				label = "Application";
+-				reg = <0x00920000 0x00600000>;
+-			};
+-			partition@f20000 {
+-				label = "VCTL";
+-				reg = <0x00f20000 0x00020000>;
+-				read-only;
+-			};
+-			partition@f40000 {
+-				label = "CurConf";
+-				reg = <0x00f40000 0x000a0000>;
+-				read-only;
+-			};
+-			partition@fe0000 {
+-				label = "FIS directory";
+-				reg = <0x00fe0000 0x00020000>;
+-				read-only;
++			partitions {
++				compatible = "redboot-fis";
++				/* Eraseblock at 0xfe0000 */
++				fis-index-block = <0x1fc>;
+ 			};
+ 		};
+ 
+--- a/arch/arm/boot/dts/gemini-sl93512r.dts
++++ b/arch/arm/boot/dts/gemini-sl93512r.dts
+@@ -143,37 +143,10 @@
+ 			/* 16MB of flash */
+ 			reg = <0x30000000 0x01000000>;
+ 
+-			partition@0 {
+-				label = "BOOT";
+-				reg = <0x00000000 0x00020000>;
+-				read-only;
+-			};
+-			partition@120000 {
+-				label = "Kern";
+-				reg = <0x00020000 0x00300000>;
+-			};
+-			partition@320000 {
+-				label = "Ramdisk";
+-				reg = <0x00320000 0x00600000>;
+-			};
+-			partition@920000 {
+-				label = "Application";
+-				reg = <0x00920000 0x00600000>;
+-			};
+-			partition@f20000 {
+-				label = "VCTL";
+-				reg = <0x00f20000 0x00020000>;
+-				read-only;
+-			};
+-			partition@f40000 {
+-				label = "CurConf";
+-				reg = <0x00f40000 0x000a0000>;
+-				read-only;
+-			};
+-			partition@fe0000 {
+-				label = "FIS directory";
+-				reg = <0x00fe0000 0x00020000>;
+-				read-only;
++			partitions {
++				compatible = "redboot-fis";
++				/* Eraseblock at 0xfe0000 */
++				fis-index-block = <0x1fc>;
+ 			};
+ 		};
+ 
diff --git a/target/linux/gemini/patches-4.19/0023-ARM-dts-gemini-Mount-root-from-mtdblock3.patch b/target/linux/gemini/patches-4.19/0023-ARM-dts-gemini-Mount-root-from-mtdblock3.patch
new file mode 100644
index 000000000000..2c2ddfaaf45f
--- /dev/null
+++ b/target/linux/gemini/patches-4.19/0023-ARM-dts-gemini-Mount-root-from-mtdblock3.patch
@@ -0,0 +1,36 @@
+From b40cd2116ea0ba3584db12ab9dab7e02dd1e3333 Mon Sep 17 00:00:00 2001
+From: Linus Walleij <linus.walleij@linaro.org>
+Date: Fri, 12 Jul 2019 22:59:39 +0200
+Subject: [PATCH 2/2] ARM: dts: gemini: Mount root from mtdblock3
+
+The third mtdblock device named "Application" is where we
+want to mount our root filesystem.
+
+Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
+---
+ arch/arm/boot/dts/gemini-nas4220b.dts | 2 +-
+ arch/arm/boot/dts/gemini-sl93512r.dts | 2 +-
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+--- a/arch/arm/boot/dts/gemini-nas4220b.dts
++++ b/arch/arm/boot/dts/gemini-nas4220b.dts
+@@ -20,7 +20,7 @@
+ 	};
+ 
+ 	chosen {
+-		bootargs = "console=ttyS0,19200n8";
++		bootargs = "console=ttyS0,19200n8 root=/dev/mtdblock3 rw rootfstype=squashfs,jffs2 rootwait";
+ 		stdout-path = &uart0;
+ 	};
+ 
+--- a/arch/arm/boot/dts/gemini-sl93512r.dts
++++ b/arch/arm/boot/dts/gemini-sl93512r.dts
+@@ -24,7 +24,7 @@
+ 	};
+ 
+ 	chosen {
+-		bootargs = "console=ttyS0,19200n8 root=/dev/sda1 rw rootwait";
++		bootargs = "console=ttyS0,19200n8 root=/dev/mtdblock3 rw rootfstype=squashfs,jffs2 rootwait";
+ 		stdout-path = &uart0;
+ 	};
+ 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
