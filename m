Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA25210C56
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nGvJm4KAS9Zzb6Ajj31OZfjlbA4TJWoiQ3ppbZkRH6I=; b=nAgPtocRXGVjmv
	fFkNjqV9QQWByfb9/08gDJ1mhw3LUvTA3FThdi/GrfTT3wIs42YTK+KL6WWoRubevbH/5cospH4Uv
	uXTqLcbOjcd11D7nIsXMzxceKpYPKmlAr+a50o7QrywnlfcpN/hg4B9Nf3m3fWokKtZXCNYMhM3rP
	5Dqf2JimWyU40ROyK9B6h8u2KXC1qx1h+ffr+RgrSzAyXdHa7wwLiio89M8inXCGcQJJdZ+OrAcbk
	XgMiRz/at7ZNLs44hQvD8UPzNfhLMknhxg9/dpjuIlot3T8qSb5vvW0eCRnO6x/QRmeb5cmmjXPLf
	OujkKpfSBnvctl7VTYQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtHB-0000yw-0I; Wed, 01 May 2019 17:44:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtGr-0000hK-I3
 for openwrt-devel@bombadil.infradead.org; Wed, 01 May 2019 17:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LSADupJgctZI+V2PrNdzVKlrqPV5gvGqW51sFwQP8tY=; b=cvpu7i037pgq7fWpmWp6VkbQMW
 XHo9v3BW7wa0PeqR30bheX0pYdQK1z2x03c4coNdGNbRT8X0EvpTNvT/jjdLDhvMokSqGJZLK0fH7
 3LnysRhJhzeuO2wv0N2eeimt29QeA/oKhh5NaKc5h6YOUxvkhAtYe3LGNthMOpVQVe9fbCjHqp/fW
 Bvc8BPetpztAxnhDinPaDamDUXAk2QZf8lXCa+/Za2aE+acK71pgaGZuTvZRK40X9j6zQp+47015s
 A4W6KQ3Hbn1NgsY6haa0/yWu2+IMpsLoasmxFmr9oaG9qu6qnYFNiTp9/nU016eB/BAAQ+oFs4lAH
 n0k2RMsA==;
Received: from mx-out.tlen.pl ([193.222.135.175])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtGm-0002bB-Ua
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:43:51 +0000
Received: (wp-smtpd smtp.tlen.pl 38189 invoked from network);
 1 May 2019 19:42:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556732550; bh=LSADupJgctZI+V2PrNdzVKlrqPV5gvGqW51sFwQP8tY=;
 h=From:To:Subject;
 b=NOGD3AOVO4svNFBi0ysWZxJUFQuPGQQHFB9C+5hUJ3ODjPy1C5FRvmDnVHaqtmPPK
 evgUe4vDQ4xLRPekq2HMakXukzp0sONmr7/OgI0Jy3NvftkTjBnjA28wQPV9S+2s6X
 TWg8DUpzKeL4EYzOHQRc2hmRcC05h6CMmaWWBzws=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 1 May 2019 19:42:30 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 19:42:16 +0200
Message-Id: <20190501174224.19089-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-WP-MailID: e88b30ef4e9593c5626ff135634ef3e5
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [YYPk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_134349_314992_4BB73BA9 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.175 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 0/8] mvebu: cleanups,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This series drops unnecessary cruft and improves image code, so that
it's better aligned with most well maintained targets in OpenWrt.
Additionally it introduces image for three ESPRESSObin variants.

Series is applicable after "mvebu: fix board_name condition in
79_move_config" by Klaus Kudielka.
https://patchwork.ozlabs.org/patch/1090367

Tomasz Maciej Nowak (8):
  mvebu: remove unnecessary code building dtbs
  mvebu: image: stack repeated variables
  mvebu: image: introduce BOOT_SCRIPT variable
  mvebu: image: improve readability of device recipes
  mvebu: image: don't create unnecessarily shell variables
  mvebu: add vendor to device names
  mvebu: use device-tree board detection
  mvebu: add images for additional ESPRESSObin boards

 package/boot/uboot-mvebu/Makefile             |   2 +-
 .../mvebu/base-files/etc/board.d/01_leds      |  22 ++--
 .../mvebu/base-files/etc/board.d/02_network   |  60 +++++-----
 target/linux/mvebu/base-files/etc/diag.sh     |  16 +--
 .../base-files/etc/init.d/linksys_recovery    |   2 +-
 .../base-files/etc/uci-defaults/03_wireless   |   4 +-
 .../base-files/etc/uci-defaults/04_mambafan   |   2 +-
 target/linux/mvebu/base-files/lib/mvebu.sh    |  94 ----------------
 .../mvebu/base-files/lib/preinit/01_sysinfo   |   9 --
 .../base-files/lib/preinit/06_set_iface_mac   |  14 +--
 .../base-files/lib/preinit/79_move_config     |   2 +-
 .../base-files/lib/preinit/81_linksys_syscfg  |   2 +-
 .../mvebu/base-files/lib/upgrade/platform.sh  |  10 +-
 .../mvebu/base-files/lib/upgrade/sdcard.sh    |   2 +-
 .../marvell/armada-3720-espressobin-emmc.dts  |  28 +++++
 .../armada-3720-espressobin-v7-emmc.dts       |  43 ++++++++
 .../marvell/armada-3720-espressobin-v7.dts    |  31 ++++++
 target/linux/mvebu/image/Makefile             |  62 +++++------
 .../image/armada-388-clearfog-base.bootscript |  27 -----
 .../image/armada-macchiatobin.bootscript      |  10 --
 ...fog-pro.bootscript => clearfog.bootscript} |   6 +-
 target/linux/mvebu/image/cortex-a53.mk        |  40 +++++--
 target/linux/mvebu/image/cortex-a72.mk        |  32 ++----
 target/linux/mvebu/image/cortex-a9.mk         | 103 ++++++++++--------
 .../linux/mvebu/image/gen_mvebu_sdcard_img.sh |   4 +-
 ...db.bootscript => generic-arm64.bootscript} |   2 +-
 .../image/globalscale-espressobin.bootscript  |  10 --
 .../patches-4.14/105-build_new_dtbs.patch     |  10 --
 ...l-armada37xx-Add-emmc-sdio-pinctrl-d.patch |  40 +++++++
 ...l-armada-37xx-Enable-emmc-on-espress.patch |  49 +++++++++
 ...da-3720-espressobin-correct-spi-node.patch |   2 +-
 ...l-armada-3720-espressobin-add-ports-.patch |  26 +++++
 32 files changed, 413 insertions(+), 353 deletions(-)
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


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
