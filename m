Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C6D18A94
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 15:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-Id:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VVMdU/F1KHobkn0fkjh2HeWMEqjg9CuhP/LFfUxp2Lg=; b=ixq
	FNdtMJJPBmrY9ObNBc/yMDEwvn1K+y4GWAE7xgpaLWGC/rI7T377W9pxh3YqJR+vwWFOh1RA9tuv0
	t3aJlhrzHcIpqPZ64gqXxzcvzPP1uGCnQCOdc5GWXtZ4DDUufMYkIPqTPnkwMANT/6ixL17T1/WW7
	NQ252nRAwb/F0fCvDut3X8tK9HxNEXi+idEegzWz23dxYTYCh0ncMVZ+gUAKogKt5LK3K6pPoED+P
	X/88x4L/pSVjt9KukU9Gsq2Qr+Wz2hl3l2TFDQnwzMlOgUvFzF+uVaLuB49ulhjiYARTmMBVTqw7f
	vVEeZplXdZP5vBdeo3wdLIhHa91xTXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj5t-0007kc-Ig; Thu, 09 May 2019 13:28:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj5G-0006wi-4a
 for openwrt-devel@bombadil.infradead.org; Thu, 09 May 2019 13:27:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uQwKpP+MRx/GRsyXHYmi/MQY9eF8wXIV9eJ3GC75izY=; b=eEbYU/T1rkQJjVm0E8NKEK+lk5
 XHukr87tyXuTvWkT3sftwKFxptKLpC2wNlNcO6QP+DXdcWYEx353MVmQMxUbkDwok1lir6kU3aTch
 g20Ogy3AKXsZwo5uB0ymmCBNZvtg9jTYX514QAxbHrQLOUQK7fXcs0ujL9NUBHes5sCMxKJYDVYSy
 yvDrQcwExttcBJTVyiAkddTcKZ5264TnUYjyHf6pTbObwKwjdA+sl4+VHD4xNyHY6ADVeLPr7RUfZ
 1gruOhPVW8Tz2fqhlejKhYAT0mFjR2sxiuKJFHAKq9R7Cw2R7eMDu/XXT1ScSA9ecGE4ZDU+MOcAb
 ZYjq2bjg==;
Received: from mx-out.tlen.pl ([193.222.135.148])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj5C-0003PB-76
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 13:27:36 +0000
Received: (wp-smtpd smtp.tlen.pl 6991 invoked from network);
 9 May 2019 15:26:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557408405; bh=uQwKpP+MRx/GRsyXHYmi/MQY9eF8wXIV9eJ3GC75izY=;
 h=From:To:Subject;
 b=hBJFMYBRS2QNuEqd4KdCtHHyFbW2PiB0p64cO2iGOO5lv9aanKsw/un0lAHWKvMQb
 zokt+zayeJQEkYOmL0N0hd8MtAG3GQ5SuG+R/lVluU8AmiTgfvgpcvQ4djDy5XgorV
 gvhVNsD09rxXKmkofd58xbhtDhP0eS4Ww7+KlY4Y=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 9 May 2019 15:26:44 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 15:26:20 +0200
Message-Id: <20190509132628.4671-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-WP-MailID: 1cc285a1ec4857bc2006b509d1269dfd
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EdPU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_092734_552113_99A83EAD 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 0/8] mvebu: cleanups,
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
Content-Type: multipart/mixed; boundary="===============0036987310250649620=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0036987310250649620==
Content-Type: text/plain; charset=true
Content-Transfer-Encoding: 8bit

This series drops unnecessary cruft and improves image code, so that
it's better aligned with most well maintained targets in OpenWrt.
Additionally it introduces image for three ESPRESSObin variants.

Series is applicable after "mvebu: fix board_name condition in
79_move_config" by Klaus Kudielka.
https://patchwork.ozlabs.org/patch/1097196

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
 32 files changed, 429 insertions(+), 376 deletions(-)
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



--===============0036987310250649620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0036987310250649620==--
