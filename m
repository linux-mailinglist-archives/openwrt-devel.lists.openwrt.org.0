Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B69236541
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 22:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MNxJ2wywinTga7heF9A4Uz5bHGRxe8yPheRpMgUe1CQ=; b=OiLo0VM0T9YRtk
	yiv2Gg4Tq76IInl+9h9D8Rg3t1kw3XZfKbH9xXQFYDoEPTEHSKy8EpCE/KDlTwBZiFsBrOcG2dFg9
	ay5o+vNV+7C/sZl6ASOk0waYXZ1rxMz6MomKU80/VIhx1+9ampQtYrSsrX6KLmAB8R4bMTTbV99oW
	DJ9tHNqJmu36QlafVsapnFMiWLUUS0RTynMNVCX0Mu4mKQp9zcP5soiwXVxVJ/N+K7gkxpvXDNB0e
	RA4RMybNpg7JsAhGdEB5MEtTTmH4Nd+oYU3lU4QIIQo1I3Op6JJZw9PpZmhtlaFE0UVdLMnRQQS/G
	WMYMdgY0uhUdcztjjd8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcMD-000864-6R; Wed, 05 Jun 2019 20:18:01 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcM4-00083p-Au
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 20:17:54 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id B90DC22198;
 Wed,  5 Jun 2019 13:17:20 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Jun 2019 13:17:04 -0700
Message-Id: <20190605201706.27462-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_131752_445808_26FBBD7B 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/2] kernel: mtd: spinand: backport-4.19:
 Add'l chip support
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

This patch series brings in various chips supported by the upstream
SPI-NAND framework after 4.19 and through linux/next at this time.

There are significant changes to the driver in 5.x that add new
features that have not been backported as they are relatively invasive
and/or require changes in upper layers, such as UBI, to provide
benefit. These include:

 * 509198485bf2 mtd: spinand: Implement mtd->_max_bad_blocks
 * 377e517b5fa5 mtd: nand: Add max_bad_eraseblocks_per_lun info to memorg
 * 981d1aa0697c mtd: spinand: Use the spi-mem dirmap API

Those changes include the addition of a new bad-block limit parameter
to the chip descriptions. This has been backed out of the impacted
patch for the GD5F1GQ4UFxxG and noted in the OpenWrt patch file for
future reference.

Two "fixes" present in upstream 5.0 appear already present on 4.19.47,
and are noted in the related patch-commit message:

 * Fix the error/cleanup path in spinand_init()
 * Handle the case where PROGRAM LOAD does not reset the cache

All patches refreshed against 4.19.47

This patch series supersedes https://patchwork.ozlabs.org/patch/1099813/

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>

---

Jeff Kletsky (2):
  kernel: mtd: spinand: backport-4.19: Chip support through 5.1
  kernel: mtd: spinand: Backport GigaDevice "F" from linux/next

 ...nbond-Add-support-for-W25N01GV.patch (new) |  42 ++++
 ...l-support-for-Toshiba-TC58CVG2.patch (new) | 188 +++++++++++++++++
 ...d-support-for-GigaDevice-GD5FxGQ4xA.patch} |  12 +-
 ...d-macronix-Fix-ECC-Status-Read.patch (new) |  44 ++++
 ...t-for-all-Toshiba-Memory-produ.patch (new) | 141 +++++++++++++
 ...upport-for-GigaDevice-GD5F1GQ4UExxG.patch} |  13 +-
 ...ros-for-page-read-ops-with-thr.patch (new) |  86 ++++++++
 ...upport-for-two-byte-device-IDs.patch (new) |  48 +++++
 ...t-for-GigaDevice-GD5F1GQ4UFxxG.patch (new) | 197 ++++++++++++++++++
 9 files changed, 761 insertions(+), 10 deletions(-)
 create mode 100644 target/linux/generic/backport-4.19/421-v5.0-mtd-spinand-winbond-Add-support-for-W25N01GV.patch
 create mode 100644 target/linux/generic/backport-4.19/422-v5.0-mtd-spinand-Add-initial-support-for-Toshiba-TC58CVG2.patch
 rename target/linux/generic/backport-4.19/{450-v5.0-mtd-spinand-add-support-for-GigaDevice-GD5FxGQ4xA.patch => 423-v5.0-mtd-spinand-add-support-for-GigaDevice-GD5FxGQ4xA.patch} (94%)
 create mode 100644 target/linux/generic/backport-4.19/426-v5.1-mtd-spinand-macronix-Fix-ECC-Status-Read.patch
 create mode 100644 target/linux/generic/backport-4.19/427-v5.1-mtd-spinand-Add-support-for-all-Toshiba-Memory-produ.patch
 rename target/linux/generic/backport-4.19/{451-v5.1-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UExxG.patch => 428-v5.1-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UExxG.patch} (89%)
 create mode 100644 target/linux/generic/backport-4.19/431-v5.3-mtd-spinand-Define-macros-for-page-read-ops-with-thr.patch
 create mode 100644 target/linux/generic/backport-4.19/432-v5.3-mtd-spinand-Add-support-for-two-byte-device-IDs.patch
 create mode 100644 target/linux/generic/backport-4.19/433-v5.3-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UFxxG.patch

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
