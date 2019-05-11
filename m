Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B1E1A7BE
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xoRKY9Aq5qPYrjKYHPm0dt7wsim6IgMMjFdq5+yGoSw=; b=Kwysl3VQJx4Qdc
	mFf0St2PzivQ9Ek20XfptvTDh5vTCcmomB0WU9O2RXSpCRiW4jLGq6zuTI45PNv01tjy1avxCYkth
	RWGKGlY/8fJU+7ygY38VgUi28DhgmdA08zQDju4YbtP9orifoIeIpE9QRMti6KUexJBpXso+XZ8xa
	wG299TF0g+svcIlJ7vQGRGTk7lezGd56mCegCjHocNaMrw8AjtAgR9ehfl4LfnPEjKtjdGExDjpUh
	r34dXV7AH7UZXA7upkZt4cwV1G9P1VAGNFkJ2HFY2dt6GUZDT8ZGCsFwTSv8NGbS+5kneK6s+X8rI
	xuBevpxNizDcRnYZOTtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQaB-000236-1T; Sat, 11 May 2019 11:54:27 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQZr-0001pM-On
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:54:09 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 83DB64E7C9;
 Sat, 11 May 2019 13:54:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id bHv_gLA3cqih; Sat, 11 May 2019 13:53:56 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:53:16 +0200
Message-Id: <20190511115320.12285-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045408_107524_FA1EE389 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/4] at91: Update kernel to version 4.14
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
Cc: c.mignanti@gmail.com, sandeepsheriker.mallikarjun@microchip.com,
 Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The next OpenWrt release will only contain support for kernel 4.14, to 
still support the at91 target update it to kernel 4.14.

This was only build tested, I do not have this device, could someone 
please run test it on some device and report the results back.

The patches are also available in this branch:
https://git.openwrt.org/?p=openwrt/staging/hauke.git;a=shortlog;h=refs/heads/kernel-4.14

Hauke Mehrtens (4):
  at91: Refresh kernel configuration
  at91: Clean up kernel configuration
  at91: Merge SAMA5 subtargets
  at91: Update kernel to version 4.14

 package/boot/at91bootstrap/Makefile           |  26 +-
 package/boot/uboot-at91/Makefile              |  22 +-
 target/linux/at91/Makefile                    |   4 +-
 target/linux/at91/{config-4.9 => config-4.14} | 150 +--
 target/linux/at91/image/Makefile              |  10 +-
 target/linux/at91/image/sama5.mk              |  71 ++
 target/linux/at91/image/sama5d2.mk            |  31 -
 target/linux/at91/image/sama5d3.mk            |  33 -
 target/linux/at91/image/sama5d4.mk            |  19 -
 target/linux/at91/legacy/config-default       |  28 +-
 .../100-ARM-at91-build-dtb-for-LMU5000.patch  |   2 +-
 .../101-ARM-at91-build-dtb-for-q5xr5.patch    |   2 +-
 .../102-ARM-at91-build-dtb-for-wb45n.patch    |   4 +-
 .../103-ARM-at91-build-dtb-for-wb50n.patch    |   2 +-
 ...RM-at91-build-dtb-for-sama5d2-ptc-Ek.patch |   5 +-
 ...-at91-build-dtb-for-sama5d27-SOM1-Ek.patch | 893 ------------------
 target/linux/at91/sama5/config-default        |   0
 target/linux/at91/sama5/target.mk             |  10 +
 target/linux/at91/sama5d2/config-default      |  44 -
 target/linux/at91/sama5d2/target.mk           |  10 -
 target/linux/at91/sama5d3/config-default      |  39 -
 target/linux/at91/sama5d3/target.mk           |  10 -
 target/linux/at91/sama5d4/config-default      |  39 -
 target/linux/at91/sama5d4/target.mk           |  10 -
 target/linux/generic/config-4.14              |   2 +
 target/linux/generic/config-4.19              |   2 +
 26 files changed, 214 insertions(+), 1254 deletions(-)
 rename target/linux/at91/{config-4.9 => config-4.14} (85%)
 create mode 100644 target/linux/at91/image/sama5.mk
 delete mode 100644 target/linux/at91/image/sama5d2.mk
 rename target/linux/at91/{patches-4.9 => patches-4.14}/100-ARM-at91-build-dtb-for-LMU5000.patch (80%)
 rename target/linux/at91/{patches-4.9 => patches-4.14}/101-ARM-at91-build-dtb-for-q5xr5.patch (82%)
 rename target/linux/at91/{patches-4.9 => patches-4.14}/102-ARM-at91-build-dtb-for-wb45n.patch (74%)
 rename target/linux/at91/{patches-4.9 => patches-4.14}/103-ARM-at91-build-dtb-for-wb50n.patch (85%)
 rename target/linux/at91/{patches-4.9 => patches-4.14}/105-ARM-at91-build-dtb-for-sama5d2-ptc-Ek.patch (98%)
 delete mode 100644 target/linux/at91/patches-4.9/104-ARM-at91-build-dtb-for-sama5d27-SOM1-Ek.patch
 create mode 100644 target/linux/at91/sama5/config-default
 create mode 100644 target/linux/at91/sama5/target.mk
 delete mode 100644 target/linux/at91/sama5d2/config-default
 delete mode 100644 target/linux/at91/sama5d2/target.mk
 delete mode 100644 target/linux/at91/sama5d3/config-default
 delete mode 100644 target/linux/at91/sama5d3/target.mk
 delete mode 100644 target/linux/at91/sama5d4/config-default
 delete mode 100644 target/linux/at91/sama5d4/target.mk

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
