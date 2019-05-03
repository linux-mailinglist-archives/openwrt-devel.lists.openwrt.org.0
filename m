Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196D913489
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7syY6jriN1Mps0EVrZu0yG5Zl+mvn6/umIdz4soj/ds=; b=Fgh9ralBwMVh/K
	HJ+9yeIFl55V7oYjnf/TNagBPhcS/0VWsk4wR+3DCf0FP3rtsG0xU9Qv9oV54DE1osSbx7ylRzPb1
	FjulgjKgpXNd8oisjZRZeWlF9AY4r1wgXtYOZlHtlB3d2sPTMBL1XQVV2CIW2R8uL54CYw5bvyqZ6
	zjae1+NjjhLbTolFkmWCRn2H6+4lXGcTiGCC+bizMCIOIzzKZxHKT47Ho8vizHp2f4lTneRZZbLgL
	rxYmObbcXCuw8Ei6W/3adOawpD2ezcMA6g72jc2cpxPn02g0rikXMQaynffVylfrytA0Wcwr56i9K
	LIR2m7ULVavE2AA5m4jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfB0-0007j8-0Q; Fri, 03 May 2019 20:53:02 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAh-0007Xe-3Q
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:45 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 3B587A0011;
 Fri,  3 May 2019 22:52:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id Uyqeu85Y_-IF; Fri,  3 May 2019 22:52:27 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:51:57 +0200
Message-Id: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135243_297806_58F1DE44 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 00/10] kernel: Kernel Self Protection
 Project/Recommended Settings
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This activates and deactivates some of the options suggested on the 
Kernel Self Protection Project/Recommended Settings wiki page
https://kernsec.org/wiki/index.php/Kernel_Self_Protection_Project/Recommended_Settings

Hauke Mehrtens (10):
  Kernel: Activate CONFIG_HARDENED_USERCOPY
  kernel: Activate CONFIG_ARM64_SW_TTBR0_PAN
  kernel: Remove CONFIG_DEBUG_RODATA and CONFIG_DEBUG_SET_MODULE_RONX
  kernel: Remove CONFIG_COMPAT
  kernel: Activate CONFIG_SYN_COOKIES for all targets
  kernel: Do not set CONFIG_DEVMEM or CONFIG_DEVKMEM
  kernel: Deactivate CONFIG_BINFMT_MISC
  x86: Activate CONFIG_X86_SMAP
  cns3xxx: Activate CONFIG_CPU_SW_DOMAIN_PAN
  gemini: Make kernel text and rodata read-only

 target/linux/armvirt/64/config-default        | 11 -----------
 target/linux/at91/config-4.9                  |  1 -
 target/linux/brcm2708/bcm2710/config-4.14     |  2 --
 target/linux/cns3xxx/config-4.14              |  1 -
 target/linux/cns3xxx/config-4.19              |  1 -
 target/linux/gemini/config-4.14               |  4 ----
 target/linux/gemini/config-4.19               |  4 ----
 target/linux/generic/config-4.14              |  7 ++++---
 target/linux/generic/config-4.19              |  8 +++++---
 target/linux/generic/config-4.9               |  4 +++-
 target/linux/layerscape/armv7/config-4.14     |  3 ---
 target/linux/layerscape/armv8_32b/config-4.14 |  3 ---
 target/linux/layerscape/armv8_64b/config-4.14 | 16 ----------------
 target/linux/malta/be64/config-default        |  6 ------
 target/linux/malta/le64/config-default        |  6 ------
 target/linux/mediatek/mt7622/config-4.14      | 12 ------------
 target/linux/mvebu/cortexa53/config-default   |  2 --
 target/linux/mvebu/cortexa72/config-default   |  2 --
 target/linux/octeon/config-4.14               |  6 ------
 target/linux/octeon/config-4.19               |  7 -------
 target/linux/octeontx/config-4.14             | 12 ------------
 target/linux/omap/config-4.14                 |  1 -
 target/linux/samsung/s5pv210/config-4.14      |  1 -
 target/linux/sunxi/config-4.14                |  1 -
 target/linux/sunxi/config-4.19                |  1 -
 target/linux/sunxi/cortexa53/config-4.14      |  2 --
 target/linux/sunxi/cortexa53/config-4.19      |  2 --
 target/linux/uml/config/x86_64                |  1 -
 target/linux/x86/config-4.14                  |  3 +--
 target/linux/x86/config-4.19                  |  3 +--
 target/linux/zynq/config-4.14                 |  1 -
 31 files changed, 14 insertions(+), 120 deletions(-)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
