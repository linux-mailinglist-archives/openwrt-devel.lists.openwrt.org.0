Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E011EC0AD
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jun 2020 19:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTPD83XJocgzB0W/fGUNDLoPFQd8nGVhW23uNpKY9w8=; b=YN7zH3Hcx6A6/j
	Nl1Q6E0If6z1o2eqB/Pa3OQuQvTG/of/FtCGu14a8mdpE+8OiY5/shnrKKCSoG2IJqCXYY7R3JwiH
	cPq7xhdwF8UctbHZtyVxj5eYgSd4vdpro2Kht7ZzzK1qgnsK4OY3fhzpU66gswZLOkXRzVsf9KWpU
	dgOKbzPvVbf2MbDA5WXVQZ7mo5a99iWa8lrb5LEXoEVTfOnWtGF+ImaWwxMxODn7/hfWwKboz3Kx7
	hWDbCBLcbn9S/l+A++l4B/fwe9FqHyFV2bAznATSbuZhbPbMwy8xB9kLIzi0MJaaxZVMIOuTmfDEh
	5ELNqkbiCiQc8noEjkWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgAMA-0000lm-CZ; Tue, 02 Jun 2020 17:05:42 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgALz-0000fI-67
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jun 2020 17:05:35 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jgAOX-0007el-Vm; Tue, 02 Jun 2020 17:08:10 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org,
	Hauke Mehrtens <hauke@hauke-m.de>
Date: Tue,  2 Jun 2020 10:05:02 -0700
Message-Id: <1591117502-28100-2-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591117502-28100-1-git-send-email-tharvey@gateworks.com>
References: <1591117502-28100-1-git-send-email-tharvey@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_100531_361097_C1C7326F 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] octeontx: enable Cavium CPT and ZIP
 drivers
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The CPT module requires firmware which we add here as well.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
v2: added license file for firmware
---
 target/linux/octeontx/config-5.4                     |  11 +++++++++++
 target/linux/octeontx/files/firmware/cpt8x-mc-ae.out | Bin 0 -> 9760 bytes
 target/linux/octeontx/files/firmware/cpt8x-mc-se.out | Bin 0 -> 35584 bytes
 target/linux/octeontx/files/firmware/license.txt     |  11 +++++++++++
 4 files changed, 22 insertions(+)
 create mode 100644 target/linux/octeontx/files/firmware/cpt8x-mc-ae.out
 create mode 100644 target/linux/octeontx/files/firmware/cpt8x-mc-se.out
 create mode 100644 target/linux/octeontx/files/firmware/license.txt

diff --git a/target/linux/octeontx/config-5.4 b/target/linux/octeontx/config-5.4
index cfb8b19..9fcd12b 100644
--- a/target/linux/octeontx/config-5.4
+++ b/target/linux/octeontx/config-5.4
@@ -134,6 +134,7 @@ CONFIG_BLK_MQ_PCI=y
 CONFIG_BLK_MQ_VIRTIO=y
 CONFIG_BLK_PM=y
 CONFIG_BLK_SCSI_REQUEST=y
+CONFIG_CAVIUM_CPT=y
 CONFIG_CAVIUM_ERRATUM_22375=y
 CONFIG_CAVIUM_ERRATUM_23144=y
 CONFIG_CAVIUM_ERRATUM_23154=y
@@ -169,6 +170,7 @@ CONFIG_CRC16=y
 CONFIG_CRC7=y
 CONFIG_CRC_ITU_T=y
 CONFIG_CRC_T10DIF=y
+CONFIG_CRYPTO_ACOMP2=y
 CONFIG_CRYPTO_AEAD=y
 CONFIG_CRYPTO_AEAD2=y
 CONFIG_CRYPTO_AES_ARM64=y
@@ -183,6 +185,9 @@ CONFIG_CRYPTO_CRC32C=y
 CONFIG_CRYPTO_CRCT10DIF=y
 # CONFIG_CRYPTO_CRCT10DIF_ARM64_CE is not set
 CONFIG_CRYPTO_CRYPTD=y
+CONFIG_CRYPTO_DEFLATE=y
+CONFIG_CRYPTO_DEV_CAVIUM_ZIP=y
+CONFIG_CRYPTO_DEV_CPT=y
 CONFIG_CRYPTO_DRBG=y
 CONFIG_CRYPTO_DRBG_HMAC=y
 CONFIG_CRYPTO_DRBG_MENU=y
@@ -192,6 +197,7 @@ CONFIG_CRYPTO_GHASH_ARM64_CE=y
 CONFIG_CRYPTO_HASH=y
 CONFIG_CRYPTO_HASH2=y
 CONFIG_CRYPTO_HMAC=y
+CONFIG_CRYPTO_HW=y
 CONFIG_CRYPTO_JITTERENTROPY=y
 CONFIG_CRYPTO_LIB_SHA256=y
 CONFIG_CRYPTO_MANAGER=y
@@ -233,6 +239,8 @@ CONFIG_EEPROM_AT24=y
 CONFIG_EFI_EARLYCON=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
+CONFIG_EXTRA_FIRMWARE="cpt8x-mc-ae.out cpt8x-mc-se.out"
+CONFIG_EXTRA_FIRMWARE_DIR="firmware"
 CONFIG_F2FS_FS=y
 CONFIG_F2FS_FS_XATTR=y
 CONFIG_F2FS_STAT_FS=y
@@ -536,6 +544,7 @@ CONFIG_SERIAL_MCTRL_GPIO=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_XILINX_PS_UART=y
 CONFIG_SERIAL_XILINX_PS_UART_CONSOLE=y
+CONFIG_SGL_ALLOC=y
 CONFIG_SG_POOL=y
 CONFIG_SMP=y
 CONFIG_SPARSEMEM=y
@@ -599,4 +608,6 @@ CONFIG_WATCHDOG_CORE=y
 CONFIG_XARRAY_MULTI=y
 CONFIG_XPS=y
 CONFIG_XXHASH=y
+CONFIG_ZLIB_DEFLATE=y
+CONFIG_ZLIB_INFLATE=y
 CONFIG_ZONE_DMA32=y
diff --git a/target/linux/octeontx/files/firmware/cpt8x-mc-ae.out b/target/linux/octeontx/files/firmware/cpt8x-mc-ae.out
new file mode 100644
index 0000000000000000000000000000000000000000..39e63398fea133f1a882ceef432adaf8f051787a
GIT binary patch
literal 9760
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
Q9Xc*B?r`O;myZ?vFSTF0Bme*a

literal 0
HcmV?d00001

diff --git a/target/linux/octeontx/files/firmware/cpt8x-mc-se.out b/target/linux/octeontx/files/firmware/cpt8x-mc-se.out
new file mode 100644
index 0000000000000000000000000000000000000000..0bf1d6786e98ce03b359fca4b30c6e5a741a800e
GIT binary patch
literal 35584
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
K?ORf5xc9%4x4TdP

literal 0
HcmV?d00001

diff --git a/target/linux/octeontx/files/firmware/license.txt b/target/linux/octeontx/files/firmware/license.txt
new file mode 100644
index 0000000..531eaba
--- /dev/null
+++ b/target/linux/octeontx/files/firmware/license.txt
@@ -0,0 +1,11 @@
+Copyright (C) 2019 Marvell International Ltd.
+
+The software package is subject to the Marvell binary license that prohibits the
+licensee to modify the software, in any manner and that prohibits to distribute
+the software as a stand-alone product. Any use of the software, in all or in
+part, shall not be made subject to or otherwise contaminated by, a copyleft open
+source license (as defined by the Open Source Initiative), such as without
+limitation, GNU GPL or LGPL licenses.
+
+Any software which integrates this code or any part of it thereof, should
+include in its header the above license.
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
