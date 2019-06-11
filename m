Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90D43D551
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 20:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yOmg+uH61YmGsAqbnnEFbcvUJr+HLc3oeJmfOKCG5dI=; b=rNebieJGOdmXDR
	Ns7kSY95VClyrMFdE0q+so1CCfeBaKNT6UK58HRdrO4OSfd+WNHkMSoeP76rIRGXOYHpJ5CM8NO2K
	8p4gG70gtkrjnxdb25k0Oc0a6yYCHcGwbDjWefQANpDKvg0rKppi8gX1Pn4X7KAslSGOezvf4YeRM
	FC2bmBANncQvFwQQsshQt8icdy6J+o4FVKfYnyZom3pHicYgmGjo5cb2mk3lkdeR68RMsa0/WLfcI
	uHqKrk96o2z5X04CZUi+awDBIfr3ZjJDItajFx/pCNDqh5XG+FThSn1QUK4v4VeRO/fqQkG2a5BCx
	w+vqUy2eS4HuuRRWQc+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halJ7-00028o-2F; Tue, 11 Jun 2019 18:15:41 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halIl-0001yI-4Y
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 18:15:20 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 90B31242FD;
 Tue, 11 Jun 2019 11:14:47 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 11 Jun 2019 11:14:36 -0700
Message-Id: <20190611181438.8620-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_111519_284386_EDDAC4EF 
X-CRM114-Status: GOOD (  11.65  )
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Supersedes https://patchwork.ozlabs.org/project/openwrt/list/?series=112040
and addresses related comments

GigaDevice (and a future commit for Paragon) SPI NAND required for
use of SPI NAND on at least GL.iNet GL-AR300M and GL-AR750S, already
on the ath79 target on both openwrt-19./07 and master.

Existing ipq40xx-specific patch for Winbond W25N01GV removed.
Examination of the previous ipq40xx patch
patches-4.19/082-v4.20-mtd-spinand-winbond-Add-support-for-W25N01GV.patch
and the "generic" patch here confirm that they represent the same
content. Build test confirms that the compiled source remains the same.

Toshiba devices included to simplify any future patches by ensuring
that the diff context in spinand.h and core.c is consistent with
upstream Linux. (There are alphabetized lists of manufacturers.)

These drivers are only compiled when CONFIG_MTD_SPI_NAND=y is set by
the target.

These targets are only pistachio and ipq4019, with ath79/nand WIP.

As a result, they do not impact "tiny" boards, or the often
"value-focused" and low-resource ar71xx, ath79/generic, and ramips
boards.

A quick check of removing support of the Toshiba SPI NAND from a local
build here shows a change in kernel size in the image of only 366 bytes.
This is consistent with the changes being a set of structs
defining the device, and two, brief bits of code, one for decoding the
return status of ECC, the other to check the MID/DID.

The run-time impact is effectively zero; if the MID doesn't match, the
s/r returns.  It is only invoked only during driver-attachment probes,
not during "run time".

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>



Jeff Kletsky (2):
  kernel: mtd: spinand: backport-4.19: Chip support through 5.1
  kernel: mtd: spinand: Backport GigaDevice "F" from linux/next

 ...nd-winbond-Add-support-for-W25N01GV.patch} |  19 +-
 ...initial-support-for-Toshiba-TC58CVG2.patch | 188 +++++++++++++++++
 ...d-support-for-GigaDevice-GD5FxGQ4xA.patch} |  12 +-
 ...spinand-macronix-Fix-ECC-Status-Read.patch |  44 ++++
 ...support-for-all-Toshiba-Memory-produ.patch | 141 +++++++++++++
 ...upport-for-GigaDevice-GD5F1GQ4UExxG.patch} |  13 +-
 ...ne-macros-for-page-read-ops-with-thr.patch |  86 ++++++++
 ...-Add-support-for-two-byte-device-IDs.patch |  48 +++++
 ...support-for-GigaDevice-GD5F1GQ4UFxxG.patch | 197 ++++++++++++++++++
 9 files changed, 734 insertions(+), 14 deletions(-)
 rename target/linux/{ipq40xx/patches-4.19/082-v4.20-mtd-spinand-winbond-Add-support-for-W25N01GV.patch => generic/backport-4.19/421-v5.0-mtd-spinand-winbond-Add-support-for-W25N01GV.patch} (56%)
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
