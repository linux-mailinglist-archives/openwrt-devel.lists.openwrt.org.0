Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E946F10570A
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K9NyU9SHLUqVHUtG6qSC1+KJ/DS53+IWhCdU8OFqtDw=; b=D3MbhpYhVqsO0D
	6tC2fPQIQC4qwMFXe6SYs74JDHkozV/vbW7xfc/tHZRob43YY5lhbngDW1amYWyhrzmLUvuhTpe+C
	RStl6GT/W7TIZxTQ5OlhzL1QNpxgnHGqFLGblpCz4qaznEfV21KF0Mp7QWSyDCJMMhgPQIgguVs4Y
	9x+BKquxSfkcU9+LzEH1E7dxGwY6rrnKkvrCX8rd5OZAOx+of3yE8dTqdw91dawyFzAchtSt4m3m6
	xx5UVmbjb9ssQX9nmfy0N168vfU41lLAgX6ST4nwZRBRGoghY2adgEcbJP80yBd3jS9qYPWF/H8+K
	HZ/lluiDjJ/v11T3U/hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpHY-0006xp-Gn; Thu, 21 Nov 2019 16:26:12 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF3-0002nM-Qk
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:44 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 9912A60010;
 Thu, 21 Nov 2019 16:23:25 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:10 +0100
Message-Id: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082338_134418_4EA2A071 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH v2 00/12] dm-verity support
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

This is the second iteration of my patch series adding support for
dm-verity in OpenWRT. See below for some introduction about the
purpose of this series.

Changes since v1
================

- Rebase the patch series on the latest master.

- Make sure all patches have @bootlin.com as author, and not some
  stale @free-electrons.com

- Switch to using the upstream kernel patches to set up a DM target at
  boot time using the kernel command line, rather than patches that
  were submitted years ago and not merged.

- Make sure kernel patches are provided for both 4.14 and 4.19

- Drop the SOURCE_DATE_EPOCH usage when creating the mksquashfs image.

- Format the cryptsetup patch properly.

- Only build the host tools if CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED is
  enabled

- Instead of unconditionally enabling the necessary kernel options for
  dm-verity support, we now add the appropriate options to
  config/Config-kernel.in, and select them only when needed.

- Drop empty Host/Configure rule in tools/libaio/Makefile

Introduction
============

dm-verity is a Linux kernel Device Mapper target that verifies that
the data in a block device has not been tampered with, by checking it
at runtime against a hash tree, itself verified by a root hash, which
is passed from a trusted source. dm-verity only supports read
operations, so we only support the read-only squashfs root filesystem
in this series.

This "hash tree" is a bunch of metadata that needs to be stored on
non-volatile storage. It can be appended to the filesystem data, or
stored on a separate block device/partition. We have chosen to support
only the case where it is appended to the filesystem data.

In the proposed series:

 - Patches 1-5 introduce new host packages. The first four are simply
   dependencies needed for cryptsetup, which is the tool used to
   generate the hash tree at build time.

 - Patch 6 extends the mkits.sh script so that a U-Boot script can be
   embedded in a FIT image. Indeed, to set up a dm-verity device at
   boot time, you need to pass a lot of details to the kernel that
   describe the dm-verity device, including the root hash. Those
   details need to be trusted: having them as part of the FIT image
   allows to leverage the signing capabilities of FIT images.

 - Patch 7 extends config/Config-kernel.in to be able to enable the
   appropriate kernel options for dm-verity support.

 - Patch 8 allows to create a FIT image with an embedded U-Boot
   script, leveraging the feature added in patch 6.

 - Patch 9 adds the code itself that generates the dm-verity capable
   squashfs image, and a script that produces the U-Boot script with
   the various parameters needed to setup the DM device at boot time.

 - Patch 10 adds two kernel patches that allow setting up a DM device
   at boot time, which have been backported from the upstream kernel,
   while patch 10 updates the kernel configuration to enable the
   appropriate option for dm-verity.

 - Patches 11 and 12 are just related to enabling this mechanism on
   Armada XP GP, which is the platform I used to work on this topic.

This work was tested on Armada XP GP, with both MMC and NAND storage.

One aspect that is not solved by this patch series is the logic in the
fstools programs to set up the overlay at boot time. Indeed, when
there is a squashfs filesystem, fstools assumes that it can use the
space after the squashfs filesystem for its overlay (in the MMC
storage case). It is not the case with dm-verity, because we have the
hash tree after the squashfs filesystem. This is something I intend to
work on.

Thomas Petazzoni

Thomas Petazzoni (12):
  tools/libaio: new package
  tools/lvm2: new package
  tools/popt: new package
  tools/libjson-c: new package
  tools/cryptsetup: new package
  scripts/mkits.sh: extend with -s option to include a U-Boot script
  config/Config-kernel.in: add options to enable dm-verity related
    kernel features
  include/image-commands.mk: extend Build/fit for U-Boot script
    integration
  include/image.mk: add support for building a dm-verity enabled
    squashfs image
  target/linux/generic: backport patches adding DM_INIT functionality
  target/linux/mvebu: enable UBI factory image on Armada XP GP
  target/linux/mvebu: generate a FIT image on Armada XP GP with
    dm-verity

 config/Config-images.in                       |   8 +
 config/Config-kernel.in                       |  15 +
 include/image-commands.mk                     |   1 +
 include/image.mk                              |  17 +-
 scripts/mkits.sh                              |  22 +-
 scripts/prepare-dm-verity-uboot-script.sh     |  41 ++
 ...-to-directly-boot-to-a-mapped-device.patch | 668 ++++++++++++++++++
 ...-init-fix-max-devices-targets-checks.patch |  48 ++
 ...hang-in-early-create-error-condition.patch |  49 ++
 ...ion-dm-init-fix-multi-device-example.patch |  45 ++
 ...-to-directly-boot-to-a-mapped-device.patch | 668 ++++++++++++++++++
 ...-init-fix-max-devices-targets-checks.patch |  48 ++
 ...hang-in-early-create-error-condition.patch |  49 ++
 ...ion-dm-init-fix-multi-device-example.patch |  45 ++
 target/linux/mvebu/image/cortex-a9.mk         |  15 +
 tools/Makefile                                |   3 +
 tools/cryptsetup/Makefile                     |  28 +
 .../patches/0001-dont-use-c89.patch           |  11 +
 tools/libaio/Makefile                         |  30 +
 tools/libjson-c/Makefile                      |  25 +
 tools/lvm2/Makefile                           |  47 ++
 tools/popt/Makefile                           |  22 +
 22 files changed, 1900 insertions(+), 5 deletions(-)
 create mode 100755 scripts/prepare-dm-verity-uboot-script.sh
 create mode 100644 target/linux/generic/backport-4.14/390-dm-add-support-to-directly-boot-to-a-mapped-device.patch
 create mode 100644 target/linux/generic/backport-4.14/391-dm-init-fix-max-devices-targets-checks.patch
 create mode 100644 target/linux/generic/backport-4.14/392-dm-ioctl-fix-hang-in-early-create-error-condition.patch
 create mode 100644 target/linux/generic/backport-4.14/393-Documentation-dm-init-fix-multi-device-example.patch
 create mode 100644 target/linux/generic/backport-4.19/400-dm-add-support-to-directly-boot-to-a-mapped-device.patch
 create mode 100644 target/linux/generic/backport-4.19/401-dm-init-fix-max-devices-targets-checks.patch
 create mode 100644 target/linux/generic/backport-4.19/402-dm-ioctl-fix-hang-in-early-create-error-condition.patch
 create mode 100644 target/linux/generic/backport-4.19/403-Documentation-dm-init-fix-multi-device-example.patch
 create mode 100644 tools/cryptsetup/Makefile
 create mode 100644 tools/cryptsetup/patches/0001-dont-use-c89.patch
 create mode 100644 tools/libaio/Makefile
 create mode 100644 tools/libjson-c/Makefile
 create mode 100644 tools/lvm2/Makefile
 create mode 100644 tools/popt/Makefile

-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
