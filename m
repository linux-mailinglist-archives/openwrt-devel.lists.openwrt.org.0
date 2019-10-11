Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF39D3C65
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 11:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jLSPKDWHJBzI3eJ18A12q9qu6k0jfc4Y4jlTfSFnMPM=; b=dZ1VaBS/4ACnoy
	OdNSeRXKkqEJnjflqp1x2XW4WBnhTZqeoDo0Hu7/W6V6AE4VAZsT5gM0+zOIoc9wjgkgP2y2/7Bl0
	riLm6OYh0Z1jmoZVVuJfS+n3+bObt00fKsl537tvFBE7jSxbEcfhrHI90ARjJdE44M++MysbRtUox
	8tJlwgISzSgu4OabG2DRVpzrPFOxE7BW45X1llutCofKkMnd6tz7dGvutAJqNPIVyJJYCh3tzzj2N
	NwFpYRMAPoao2l88PksuCp/ql1pvAnhH4qR194SkaQGCq972FnGj4vQAK105B53RDTnkOhFJWT054
	gdCQELVydqOyDuYsYLPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrID-0001er-V4; Fri, 11 Oct 2019 09:33:01 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrH5-0000Wa-7X
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 09:31:52 +0000
Received: (wp-smtpd smtp.wp.pl 21389 invoked from network);
 11 Oct 2019 11:31:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570786308; bh=qNu6dVxR97700aKXCpY/h1GBb9IhU72NceyjELGWNSU=;
 h=From:To:Subject;
 b=jKUszMw0GVojCSjycj6p44Q+0HiYlPUoM0yRyWsTqER+Nq7TtPTfVUvFI5DDqV3/1
 i9KaXW0Vsb9e9FucGVEFP1dLhQUucZBHMreepQ49QVUmG8Kir8esECgxq+n8wwQ6Vs
 b0u3B+qbTYhHL4k8LwxvvaKoucaNQahY674o1OzU=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Oct 2019 11:31:48 +0200
Date: Fri, 11 Oct 2019 11:14:46 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191011111446.77a86e7b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 41da138491c48d7351c32fc5e020f14f
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [waPh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023151_509545_EFC79E4F 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/2] ath79: add support for Netgear WNDR4300
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

This patchset enables ath79 target for Netgear WNDR4300 (version 1).

The goal is to provide full functionality in ath79, on a par with
ar71xx target. For OpenWrt to build and operate correctly on this 
equipment, two prerequisite patches are required:
* "ath79: add AR934x NAND Flash Controller driver" - to access
  internal flash storage
* "image: add magic number option for append-uImage-fakehdr" - to
  produce correct image file accepted by uboot

Patch #1 contains usual files and modifications provided when adding
new device plus changes to makefile system as it is apparently the
first Netgear NAND-based router to be supported in ath79 tree.

Patch #2 for syspugrade is a workaround ported from ar71xx. It may
(or may not) follow sysupgrade design concept for ath79, but such
or similar solution is required for this device - otherwise upgrading
using this command fails and requires TFTP recovery to bring device
back to function.

Patch list (2):
  ath79: add support for Netgear WNDR4300
  base-files: fix sysupgrade for Netgear WNDR4300

 .../ath79/base-files/etc/board.d/01_leds      |   3 +
 .../ath79/base-files/etc/board.d/02_network   |   5 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   6 +
 .../ath79/base-files/lib/upgrade/platform.sh  |   5 +
 .../ath79/dts/ar9344_netgear_wndr4300.dts     | 291 ++++++++++++++++++
 target/linux/ath79/image/Makefile             |   1 +
 target/linux/ath79/image/nand-netgear.mk      |  34 ++
 target/linux/ath79/nand/config-default        |  30 +-
 8 files changed, 373 insertions(+), 2 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar9344_netgear_wndr4300.dts
 create mode 100644 target/linux/ath79/image/nand-netgear.mk

-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
