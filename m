Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4399AAF8
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 11:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8STRam181Bk8OW9ugJFhY56z3wEIW1+75Vs3L83Btpk=; b=G4gCvG3ZBSUUVn
	IkYhcPj+DbriIkhpEmKm3XiBa/dt0ZDW3VSntCyKZQGifqLGsJsiTnsqHrN9t2/4uupqtfGbjslVl
	fVW4jFR5lwD3I2SCKr1YANuk4pCGOHhazSlTl3xO+AYHwVY3BQlHcWrJPQ+m8Q1bKafYSeZ7PqUuE
	mhl+TydEalXklhtlbPF/jG7OyUUBqkfUtner8LAC8oO8icRQRDI9lJd7w7CGE8KHMmeEwoUZTyxUT
	p1sDmLVtOXOZSk7fT9eX/Pqm3CyrC+U/GXkak+gcr42GNx/HxEfaNSpMBbkOvG+WelbD/iUl7rPQC
	pXY4sSYyf+XhsC83CoDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15UH-0000at-7Z; Fri, 23 Aug 2019 09:04:01 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Ty-0000aj-62
 for openwrt-devel@bombadil.infradead.org; Fri, 23 Aug 2019 09:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dK6h77VFVtSd+HO0KNYczFfZsucsqHfzW+FnAuaLHT0=; b=3QNiCaJ17BbmH7zq/8N1K0QbbL
 UkMa8erbt80M+gM2Hrj7ApvbkRtPEIWgvKOkj+eahTdRVyfoAgJA5ZJg8oJUPJeOh9X8oxpxMhtFP
 l6UYrj6e5zg7sXrnP/K69F7JUqTbH45oyTnLMACuDVOZX9spOx1zat2Dac9K0ZY7E5Yus16A9FB8T
 1OESXmhq1APrwdiH1CuDYtWZc3r+G65fVSj6ne9zFug+kGfBCp2hjYGSCO45GDfCqws/yhRqq5WVc
 a/oHdtnT3SmuwRsaBEcwA1eTAw2zxSw1iqB5Ftu89+von11tqEvCd82KRbOX+GeaSM7t/GRxyV6U2
 dn6cQLxg==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Ts-0007ZO-GF
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 09:03:40 +0000
Received: from localhost.localdomain (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 6C883200007;
 Fri, 23 Aug 2019 09:02:53 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 23:02:38 -1000
Message-Id: <20190823090237.9471-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] treewide: add Generic subtarget if missing
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
Cc: Sergey Ryazanov <ryazanov.s.a@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>, Tim Harvey <tharvey@gateworks.com>,
 Luka Perkov <luka@openwrt.org>, Jason Wu <jason.wu.misc@gmail.com>,
 Alexander Couzens <lynxis@fe80.eu>, John Crispin <john@phrozen.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

As in 853e4dd OpenWrt should follow a unified structure, where every
device has a target/subtarget combination, if there is only one
subtarget, call it "Generic". This introduces predictable filenames.

CC: Alexander Couzens <lynxis@fe80.eu>
CC: Felix Fietkau <nbd@nbd.name>
CC: Jason Wu <jason.wu.misc@gmail.com>
CC: John Crispin <john@phrozen.org>
CC: Luka Perkov <luka@openwrt.org>
CC: Roman Yeryomin <roman@advem.lv>
CC: Sergey Ryazanov <ryazanov.s.a@gmail.com>
CC: Tim Harvey <tharvey@gateworks.com>
CC: Tomasz Maciej Nowak <tomek_n@o2.pl>

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/ath25/Makefile              | 1 +
 target/linux/ath25/generic/target.mk     | 1 +
 target/linux/cns3xxx/Makefile            | 1 +
 target/linux/cns3xxx/generic/target.mk   | 1 +
 target/linux/gemini/Makefile             | 1 +
 target/linux/gemini/generic/target.mk    | 1 +
 target/linux/imx6/Makefile               | 1 +
 target/linux/imx6/generic/target.mk      | 1 +
 target/linux/kirkwood/Makefile           | 1 +
 target/linux/kirkwood/generic/target.mk  | 1 +
 target/linux/octeon/Makefile             | 1 +
 target/linux/octeon/generic/target.mk    | 1 +
 target/linux/octeontx/Makefile           | 1 +
 target/linux/octeontx/generic/target.mk  | 1 +
 target/linux/omap/Makefile               | 1 +
 target/linux/omap/generic/target.mk      | 1 +
 target/linux/pistachio/Makefile          | 1 +
 target/linux/pistachio/generic/target.mk | 1 +
 target/linux/rb532/Makefile              | 1 +
 target/linux/rb532/generic/target.mk     | 1 +
 target/linux/tegra/Makefile              | 1 +
 target/linux/tegra/generic/target.mk     | 1 +
 target/linux/zynq/Makefile               | 1 +
 target/linux/zynq/generic/target.mk      | 1 +
 24 files changed, 24 insertions(+)
 create mode 100644 target/linux/ath25/generic/target.mk
 create mode 100644 target/linux/cns3xxx/generic/target.mk
 create mode 100644 target/linux/gemini/generic/target.mk
 create mode 100644 target/linux/imx6/generic/target.mk
 create mode 100644 target/linux/kirkwood/generic/target.mk
 create mode 100644 target/linux/octeon/generic/target.mk
 create mode 100644 target/linux/octeontx/generic/target.mk
 create mode 100644 target/linux/omap/generic/target.mk
 create mode 100644 target/linux/pistachio/generic/target.mk
 create mode 100644 target/linux/rb532/generic/target.mk
 create mode 100644 target/linux/tegra/generic/target.mk
 create mode 100644 target/linux/zynq/generic/target.mk

diff --git a/target/linux/ath25/Makefile b/target/linux/ath25/Makefile
index cb8b7ec1be..a253b4ceb3 100644
--- a/target/linux/ath25/Makefile
+++ b/target/linux/ath25/Makefile
@@ -10,6 +10,7 @@ ARCH:=mips
 BOARD:=ath25
 BOARDNAME:=Atheros AR231x/AR5312
 FEATURES:=squashfs low_mem small_flash
+SUBTARGETS:=generic
 MAINTAINER:=Sergey Ryazanov <ryazanov.s.a@gmail.com>
 
 KERNEL_PATCHVER:=4.14
diff --git a/target/linux/ath25/generic/target.mk b/target/linux/ath25/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/ath25/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/cns3xxx/Makefile b/target/linux/cns3xxx/Makefile
index f21ad06248..7930b959b6 100644
--- a/target/linux/cns3xxx/Makefile
+++ b/target/linux/cns3xxx/Makefile
@@ -12,6 +12,7 @@ BOARDNAME:=Cavium Networks Econa CNS3xxx
 FEATURES:=squashfs fpu gpio pcie usb usbgadget
 CPU_TYPE:=mpcore
 CPU_SUBTYPE:=vfp
+SUBTARGETS:=generic
 MAINTAINER:=Felix Fietkau <nbd@nbd.name>, \
 	    Koen Vandeputte <koen.vandeputte@ncentric.com>
 KERNEL_PATCHVER:=4.19
diff --git a/target/linux/cns3xxx/generic/target.mk b/target/linux/cns3xxx/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/cns3xxx/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/gemini/Makefile b/target/linux/gemini/Makefile
index 3afc643023..1f1486f0c5 100644
--- a/target/linux/gemini/Makefile
+++ b/target/linux/gemini/Makefile
@@ -11,6 +11,7 @@ BOARD:=gemini
 BOARDNAME:=Cortina Systems CS351x
 FEATURES:=squashfs pci rtc usb dt gpio display ext4 rootfs-part boot-part
 CPU_TYPE:=fa526
+SUBTARGETS:=generic
 MAINTAINER:=Roman Yeryomin <roman@advem.lv>
 
 KERNEL_PATCHVER:=4.19
diff --git a/target/linux/gemini/generic/target.mk b/target/linux/gemini/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/gemini/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/imx6/Makefile b/target/linux/imx6/Makefile
index ac4300f7eb..570898cb9c 100644
--- a/target/linux/imx6/Makefile
+++ b/target/linux/imx6/Makefile
@@ -12,6 +12,7 @@ BOARDNAME:=Freescale i.MX 6
 FEATURES:=audio display fpu gpio pcie rtc usb usbgadget squashfs targz nand ubifs boot-part rootfs-part
 CPU_TYPE:=cortex-a9
 CPU_SUBTYPE:=neon
+SUBTARGETS:=generic
 MAINTAINER:=Luka Perkov <luka@openwrt.org>
 
 KERNEL_PATCHVER:=4.19
diff --git a/target/linux/imx6/generic/target.mk b/target/linux/imx6/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/imx6/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/kirkwood/Makefile b/target/linux/kirkwood/Makefile
index adc7a496e1..e185eca093 100644
--- a/target/linux/kirkwood/Makefile
+++ b/target/linux/kirkwood/Makefile
@@ -11,6 +11,7 @@ BOARD:=kirkwood
 BOARDNAME:=Marvell Kirkwood
 FEATURES:=usb nand squashfs ramdisk
 CPU_TYPE:=xscale
+SUBTARGETS:=generic
 MAINTAINER:=Luka Perkov <luka@openwrt.org>
 
 KERNEL_PATCHVER:=4.14
diff --git a/target/linux/kirkwood/generic/target.mk b/target/linux/kirkwood/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/kirkwood/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/octeon/Makefile b/target/linux/octeon/Makefile
index aa73b0e5c0..e965cb83fd 100644
--- a/target/linux/octeon/Makefile
+++ b/target/linux/octeon/Makefile
@@ -11,6 +11,7 @@ BOARD:=octeon
 BOARDNAME:=Cavium Networks Octeon
 FEATURES:=squashfs ramdisk pci usb
 CPU_TYPE:=octeonplus
+SUBTARGETS:=generic
 MAINTAINER:=John Crispin <john@phrozen.org>
 
 KERNEL_PATCHVER:=4.19
diff --git a/target/linux/octeon/generic/target.mk b/target/linux/octeon/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/octeon/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/octeontx/Makefile b/target/linux/octeontx/Makefile
index e7f6b2d3c4..dee0f9ec54 100644
--- a/target/linux/octeontx/Makefile
+++ b/target/linux/octeontx/Makefile
@@ -10,6 +10,7 @@ ARCH:=aarch64
 BOARD:=octeontx
 BOARDNAME:=Octeon-TX
 FEATURES:=targz pcie gpio rtc usb fpu
+SUBTARGETS:=generic
 
 MAINTAINER:=Tim Harvey <tharvey@gateworks.com>
 
diff --git a/target/linux/octeontx/generic/target.mk b/target/linux/octeontx/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/octeontx/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/omap/Makefile b/target/linux/omap/Makefile
index 3e5c921d61..fadc312892 100644
--- a/target/linux/omap/Makefile
+++ b/target/linux/omap/Makefile
@@ -13,6 +13,7 @@ BOARDNAME:=TI OMAP3/4/AM33xx
 FEATURES:=usb usbgadget ext4 targz fpu audio display nand squashfs
 CPU_TYPE:=cortex-a8
 CPU_SUBTYPE:=vfpv3
+SUBTARGETS:=generic
 
 KERNEL_PATCHVER:=4.14
 
diff --git a/target/linux/omap/generic/target.mk b/target/linux/omap/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/omap/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/pistachio/Makefile b/target/linux/pistachio/Makefile
index dab7f0d62b..0920036982 100644
--- a/target/linux/pistachio/Makefile
+++ b/target/linux/pistachio/Makefile
@@ -12,6 +12,7 @@ BOARDNAME:=MIPS pistachio
 FEATURES:=fpu usb usbgadget squashfs targz nand
 CPU_TYPE:=24kc
 CPU_SUBTYPE:=24kf
+SUBTARGETS:=generic
 MAINTAINER:=
 
 KERNEL_PATCHVER:=4.14
diff --git a/target/linux/pistachio/generic/target.mk b/target/linux/pistachio/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/pistachio/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/rb532/Makefile b/target/linux/rb532/Makefile
index 5aa8a6dc55..2b65b9bcd3 100644
--- a/target/linux/rb532/Makefile
+++ b/target/linux/rb532/Makefile
@@ -10,6 +10,7 @@ ARCH:=mipsel
 BOARD:=rb532
 BOARDNAME:=Mikrotik RouterBoard 532
 FEATURES:=pci targz squashfs minor nand
+SUBTARGETS:=generic
 MAINTAINER:=Roman Yeryomin <roman@advem.lv>
 
 KERNEL_PATCHVER:=4.14
diff --git a/target/linux/rb532/generic/target.mk b/target/linux/rb532/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/rb532/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/tegra/Makefile b/target/linux/tegra/Makefile
index db58bf53d1..a5b533af25 100644
--- a/target/linux/tegra/Makefile
+++ b/target/linux/tegra/Makefile
@@ -12,6 +12,7 @@ BOARDNAME := NVIDIA Tegra
 FEATURES := audio boot-part display ext4 fpu gpio pci pcie rootfs-part rtc squashfs usb
 CPU_TYPE := cortex-a9
 CPU_SUBTYPE := vfpv3
+SUBTARGETS:=generic
 MAINTAINER := Tomasz Maciej Nowak <tomek_n@o2.pl>
 
 KERNEL_PATCHVER := 4.19
diff --git a/target/linux/tegra/generic/target.mk b/target/linux/tegra/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/tegra/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/zynq/Makefile b/target/linux/zynq/Makefile
index bcd36ffe2c..3566464450 100644
--- a/target/linux/zynq/Makefile
+++ b/target/linux/zynq/Makefile
@@ -12,6 +12,7 @@ BOARDNAME:=Xilinx Zynq 7000 SoCs
 FEATURES:=fpu gpio rtc usb usbgadget boot-part rootfs-part squashfs
 CPU_TYPE:=cortex-a9
 CPU_SUBTYPE:=neon
+SUBTARGETS:=generic
 MAINTAINER:=Jason Wu <jason.wu.misc@gmail.com>
 
 # future support SUBTARGETS: for both zynq and zynqmp
diff --git a/target/linux/zynq/generic/target.mk b/target/linux/zynq/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/zynq/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
-- 
2.23.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
