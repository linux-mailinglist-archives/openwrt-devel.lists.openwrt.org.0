Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2E7E4239
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 05:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CRzbpG+XArcf76xrtv86NIeV+p2IH3B3GpOiFaLo6vM=; b=LoqnCVztZjjaJA
	E60bxpre6Kwtp6Oq/D4s5ScHZER3eNe4J8O5uwn/6QosBAhtzKI/d3L6ADocogDMFfurTaxuZdRM3
	+R+VPUydpXSq8CywmQ0n5xibw5mF9cpyPefPYwxU4gZ7I3DGyf1uGE+WB+DLsjnwDeQJgvigeuy1o
	mW3XQVQ8liK7Dirpkcoc+yHzQKRw2/BuSXdYFsI/5mUyZQHNXyOdiWrS2d4XKnZyEgGAus48G2MRS
	AtzFQGLbrRc6qLNAzyJBFljoO6+DsQUwbrtCNQrqaZaqpooklU2aMLNjAWP09MF6jgc/Gjp3FmHOd
	pT1UTIIiaaoeOctoBV8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqh7-0007GE-Tx; Fri, 25 Oct 2019 03:55:21 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqh0-0007Fk-5e
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 03:55:16 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id A6C1859C3F;
 Thu, 24 Oct 2019 20:55:12 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 24 Oct 2019 20:54:59 -0700
Message-Id: <20191025035501.3063-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_205514_221730_0BA7D45F 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/2] ath79: Prepare NAND subtarget for
 upstream support of SPI
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


This submission is part of a series of commits that prepares for
use of SPI-NAND with the upstream Linux MTD framework for the ath79
target. The entire series of pending changes may be seen on GitHub[1].

The series also addresses upgrade issues associated with tar-style
files and metadata, allowing "force-less" upgrade paths from ar71xx
to ath79 builds, including from previous NOR builds to ath79 builds
that support NAND.

Addresses comments in previous PRs around SPI-NAND support, including
  #615  https://github.com/openwrt/openwrt/pull/615
  #1428 https://github.com/openwrt/openwrt/pull/1428#issuecomment-441594401
in the manner requested by @mkresin

> Please re-spin [PR 1428] as soon as we have kernel 4.19 support.

SPI-NAND support in this PR utilizes the upstream Linux framework, as
requested. Support for specific SPI-NAND devices present in target
devices was crafted, tested, and committed to upstream Linux in June
and just backported to OpenWrt with commit b9d58f7e06 (master).

The GL.iNet GL-AR300M and GL-AR750S devices are then supported using
NAND with this framework.


The commits have been resequenced here from the order in which they
were developed to provide clearer patches, rather than the original
"find a problem and fix it" order. As a result, the reasoning behind
some of the preliminary set of commits may not be completely clear
until the devices are added in subsequent commits.


Original development done on master prior to the 19.07 branch and the
change to Linux 4.19 for the ath79 target.

This series should be able to be backported to v19 by adding
KERNEL_PATCHVER:=4.19 to target/linux/ath79/nand/target.mk


Boot logs and/or upgrade logs of any configuration or transition
available on request.


==================
Roadmap of Commits
==================

These logical "chunks" of commits are denoted in my GitHub repo as
tags. The links within each chunk's description below will show the
commits and changes associated with each chunk.

The tags will be updated should this PR be rebased or changed prior to
merge, keeping the tag-based links usable.

In addition to the supplied links, the tags are available in clones of
my repo for local examination and exploration of the commits in this
PR, without the need to apply remote patches to a local repo.

* pr2184-00-merge_base
* pr2184-04-Prepare_ath79-nand_target
* pr2184-05-Enable_robust_upgrades
* pr2184-06-GL-AR300M_NAND_support
* pr2184-07-Add_GL-AR300M16
* pr2184-08-GL-AR750S_NAND_support

Accepted from Patchwork:

* pr2184-01-Add_I2C_support
* pr2184-02-uboot-envtools_support_for_GL-AR300M-Lite

Superseded by commit 5b6a809 and related:

* pr2184-03-Refactor_of_common_functions



=========================
Prepare ath79-nand Target
=========================


ath79: Remove legacy GL.iNet GL-AR300M NAND target
--------------------------------------------------

Removal for reimplementation confirmed with original author[2].


ath79: Prepare NAND subtarget for upstream support of SPI NAND
--------------------------------------------------------------

Use of subtarget-specific nand/base-files/ makes this a lot cleaner
and doesn't impact the generic or tiny targets.

Examination of the tiny target (and the one-board nature of
base-files/lib/functions/k2t.sh) suggest that a few kB might be saved
for the tiny target by similarly splitting out its own files from
those for the generic target. This refactoring of the generic and tiny
sub-targets was not performed. (See further
https://patchwork.ozlabs.org/patch/1181653/ by @adrianschmutzler for
the ath79 target and #2513 for the ramips target.)


https://github.com/jeffsf/openwrt/compare/jeffsf:pr2184-00-merge_base...jeffsf:pr2184-04-Prepare_ath79-nand_target



======================
Enable Robust Upgrades
======================


build: sysupgrade-tar alt-board= for legacy upgrades
----------------------------------------------------

Existing sysupgrade tooling on the ar71xx platform isn't able to
upgrade to ath79 NAND images, even with the use of SUPPORTED_DEVICES.


sysupgrade: NAND: Prefer CONTROL for board, improve robustness
--------------------------------------------------------------

Rather than taking the first directory found in the tar as that from
which the assets are obtained, trust the contents of the CONTROL file
found. Though the CONTROL file could be fed to sh, parse it somewhat
robustly to allow for a transition to JSON or other formats in the
future.

    grep -m 1 -o -E "\bBOARD=[^[:space:]'\"]+"

Exploration of legacy flashing revealed some "interesting" behavior of
the NAND upgrade process off the "happy path". The most egregious were
addressed.

Unmodified, nand_do_upgrade_success() continues to perform a reboot
rather than returning. This continues to prevent boards from checking
that the flash was successful prior to changing the next-boot
partition. Do to the invasiveness of changing this, it was not
refactored at this time. Future refactor of this should also consider
using the existing $CONF_TAR rather than the hard-coded local
conf_tar="/tmp/sysupgrade.tgz"

Error-checking was examined, but between the above concerns and the
challenges on getting return codes from pipelined commands under sh
(neither pipefail nor PIPESTATUS are available) it was not further
pursued. Initial thoughts were that non-zero error codes might be
split into those that were still bootable ("warnings") and those that
were not bootable ("errors"), perhaps as positive and negative for
ease of consistent implementation.


https://github.com/jeffsf/openwrt/compare/jeffsf:pr2184-04-Prepare_ath79-nand_target...jeffsf:pr2184-05-Enable_robust_upgrades



======================
GL-AR300M NAND Support
======================


With the previous support in place, the boards can be added. Features
such as access to NAND storage while booted under NOR (intentionally,
or as a result of boot-count based fail over) and flashing either
NOR-based or NAND-based firmware are provided.

Legacy NOR boards may be transitioned to full support of NAND without
serial, U-Boot access, or use of "force" in sysupgrade. For example

    Legacy NOR ==> glinet,gl-ar300m-nor ==> glinet,gl-ar300m-nand

Direct transition to glinet,gl-ar300m-nand from a NOR kernel is not
possible and is prevented by checks already in place within
sysupgrade. For example:

    LEDE_RELEASE="OpenWrt 18.06.2 r7676-cddd7b4c77"
    
            "model": {
                    "id": "gl-ar300m",
                    "name": "GL.iNet GL-AR300M"
            },
    
    root@OpenWrt:/# sysupgrade /tmp/OpenWrt-2019-06-29_0807-0700-ath79-nand-glinet_gl-ar300m-nand-squashfs-sysupgrade.bin 
    Invalid image type.
    Image check 'platform_check_image' failed.


jeffsf/openwrt@jeffsf:pr2184-05-Enable_robust_upgrades...jeffsf:pr2184-06-GL-AR300M_NAND_support



===============
Add GL-AR300M16
===============


As the glinet,gl-ar300m-nor board was moved to the NAND target in the
previous commits, there is not a "generic" build suitable for the
dual-port, NAND-less GL-AR300M16, or for users of the GL-AR300M that
do not need access to the NAND (which adds ~320 kB at this time).

This commit clearly disambiguates the "generic" (NOR-only) build and
its primary, intended device from the NAND-aware build.


jeffsf/openwrt@jeffsf:pr2184-06-GL-AR300M_NAND_support...jeffsf:pr2184-07-Add_GL-AR300M16



======================
GL-AR750S NAND Support
======================


Two variants are provided, one with root file system on NOR flash, the
other with it on NAND flash. Consistent with the OEM firmware at this
time, the kernel always resides on NOR flash.

As noted in the commit message, the "glinet,gl-ar750s-nand" board name
is reserved for a potential, future build that boots its kernel from
NAND flash. It is likely that change to the U-Boot would be required
to boot off NAND, either from the manufacturer or a third party. The
current U-Boot provides for updating itself through an HTTP interface,
without serial connectivity being required.


jeffsf/openwrt@jeffsf:pr2184-07-Add_GL-AR300M16...pr2184-08-GL-AR750S_NAND_support



[1] https://github.com/openwrt/openwrt/pull/2184
[2] http://lists.infradead.org/pipermail/openwrt-devel/2019-May/017190.html


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
