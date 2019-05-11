Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5931A8D6
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 19:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-Id:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8bp/b/xVK+qkAVSD4fTG2ka9BWj1F3AZ0+k1VEdYym0=; b=Axr
	0CqBLevhShTMfT6r73cH3S1lSDY9+y6bHqGTvxcx3oVmKdgoVUTmbBnYYuaxuuUgcXiqrrBgQZLsx
	My6sIxu0kv0gMONZwOdV0D/zjrAWMZJAbEyBEkCwTnMQsIM022nK0tg5QnRVdA7YQjIi2+LAt8uyh
	xGJPj+QdmfbphAjQr1OI93UTqfLI2JznD6Q7+k/I+wUkhtaaTzN0cVPAA/MHzSEatiDtQHWu1ul6/
	aKo6xbQyMcEhTDALMv1kfFmZfOJdrP3p9pnOYPV+/WGt4fODmiwmfsjlQjLy95KjxOowyBf91pqW8
	dedbd+RjqH9q7cm+OeMcVmI/q/KisLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPVwm-000627-Ny; Sat, 11 May 2019 17:38:08 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPVwT-0005pE-5w
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 17:37:51 +0000
Received: (wp-smtpd smtp.tlen.pl 10939 invoked from network);
 11 May 2019 19:37:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557596262; bh=McVr07+hEyYNIc4J6Z5f+fJ6Sz2BO2wzvlv8UGA/Wo0=;
 h=From:To:Subject;
 b=jHL5zIzJhkH9DOdRmwV8gfSFfOANX02bh4LWU0+EP5sK6bFWvVHdXJ/OeDYScr4rD
 pKYQiw+cJpwVklXlb/rmZGrhfSghdLYhHfq2Swqsm59/jCaCYJIlZBo86ewF5xaR1j
 SCJsz5ueY+QNzNd7DRbJbLvlmBEdMFRjMZgI3JZo=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 May 2019 19:37:42 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 19:37:27 +0200
Message-Id: <20190511173735.5549-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-WP-MailID: 072301118b0fd5dba6551c8c39cb7fbb
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [IYOE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_103749_545577_3451FF59 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3 0/8] mvebu: cleanups,
 improvments and new ESPRESSObin variants
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8423123855978949011=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8423123855978949011==
Content-Type: text/plain; charset=true
Content-Transfer-Encoding: 8bit

This series drops unnecessary cruft and improves image code, so that
it's better aligned with most well maintained targets in OpenWrt.
Additionally it introduces image for three ESPRESSObin variants.

Changes in v3:
Rebase

mvebu: use device-tree board detection:
change also device strings in uboot-envtools package

Changes in v2:
mvebu: remove unnecessary code building dtbs:
also adjust path to dtb in omnia-medkit-initramfs recipe

Rename
mvebu: add vendor to device names
 to
mvebu: align device names to vendor_device format
in result of changing most device names to pattern found in dts
compatible string, suggested by Petr Štetiar.

mvebu: use device-tree board detection
adjusted to changes in
mvebu: align device names to vendor_device format

Tomasz Maciej Nowak (8):
  mvebu: remove unnecessary code building dtbs
  mvebu: image: stack repeated variables
  mvebu: image: introduce BOOT_SCRIPT variable
  mvebu: image: improve readability of device recipes
  mvebu: image: don't create unnecessarily shell variables
  mvebu: align device names to vendor_device format
  mvebu: use device-tree board detection
  mvebu: add images for additional ESPRESSObin boards

 package/boot/uboot-envtools/files/mvebu       |  26 ++--
 package/boot/uboot-mvebu/Makefile             |   2 +-
 .../mvebu/base-files/etc/board.d/01_leds      |  22 +--
 .../mvebu/base-files/etc/board.d/02_network   |  60 ++++----
 target/linux/mvebu/base-files/etc/diag.sh     |  16 +--
 .../base-files/etc/init.d/linksys_recovery    |   2 +-
 .../base-files/etc/uci-defaults/03_wireless   |   4 +-
 .../base-files/etc/uci-defaults/04_mambafan   |   2 +-
 target/linux/mvebu/base-files/lib/mvebu.sh    |  94 ------------
 .../mvebu/base-files/lib/preinit/01_sysinfo   |   9 --
 .../base-files/lib/preinit/06_set_iface_mac   |  14 +-
 .../base-files/lib/preinit/79_move_config     |   2 +-
 .../base-files/lib/preinit/81_linksys_syscfg  |   2 +-
 .../mvebu/base-files/lib/upgrade/platform.sh  |  10 +-
 .../mvebu/base-files/lib/upgrade/sdcard.sh    |   2 +-
 .../marvell/armada-3720-espressobin-emmc.dts  |  28 ++++
 .../armada-3720-espressobin-v7-emmc.dts       |  43 ++++++
 .../marvell/armada-3720-espressobin-v7.dts    |  31 ++++
 target/linux/mvebu/image/Makefile             |  64 ++++-----
 .../image/armada-388-clearfog-base.bootscript |  27 ----
 .../image/armada-macchiatobin.bootscript      |  10 --
 ...fog-pro.bootscript => clearfog.bootscript} |   6 +-
 target/linux/mvebu/image/cortex-a53.mk        |  43 +++---
 target/linux/mvebu/image/cortex-a72.mk        |  34 ++---
 target/linux/mvebu/image/cortex-a9.mk         | 135 ++++++++++--------
 .../linux/mvebu/image/gen_mvebu_sdcard_img.sh |   4 +-
 ...db.bootscript => generic-arm64.bootscript} |   2 +-
 .../image/globalscale-espressobin.bootscript  |  10 --
 .../patches-4.14/105-build_new_dtbs.patch     |  10 --
 ...l-armada37xx-Add-emmc-sdio-pinctrl-d.patch |  40 ++++++
 ...l-armada-37xx-Enable-emmc-on-espress.patch |  49 +++++++
 ...da-3720-espressobin-correct-spi-node.patch |   2 +-
 ...l-armada-3720-espressobin-add-ports-.patch |  26 ++++
 33 files changed, 442 insertions(+), 389 deletions(-)
 delete mode 100755 target/linux/mvebu/base-files/lib/mvebu.sh
 delete mode 100644 target/linux/mvebu/base-files/lib/preinit/01_sysinfo
 create mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
 create mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
 create mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts
 delete mode 100644 target/linux/mvebu/image/armada-388-clearfog-base.bootscript
 delete mode 100644 target/linux/mvebu/image/armada-macchiatobin.bootscript
 rename target/linux/mvebu/image/{armada-388-clearfog-pro.bootscript => clearfog.bootscript} (78%)
 rename target/linux/mvebu/image/{armada-3720-db.bootscript => generic-arm64.bootscript} (82%)
 delete mode 100644 target/linux/mvebu/image/globalscale-espressobin.bootscript
 delete mode 100644 target/linux/mvebu/patches-4.14/105-build_new_dtbs.patch
 create mode 100644 target/linux/mvebu/patches-4.14/513-arm64-dts-marvell-armada37xx-Add-emmc-sdio-pinctrl-d.patch
 create mode 100644 target/linux/mvebu/patches-4.14/514-arm64-dts-marvell-armada-37xx-Enable-emmc-on-espress.patch
 create mode 100644 target/linux/mvebu/patches-4.14/522-arm64-dts-marvell-armada-3720-espressobin-add-ports-.patch

-- 
2.21.0



--===============8423123855978949011==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8423123855978949011==--
