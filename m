Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2216A99F47
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 20:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1K1ZONLLJueWV86C/uxKsSwAapCWpcD1KaF3sO0gYbg=; b=eNB5PzB018IztO
	qn1Y2yA/2nJKocrIEFLaHSuvLWZ9TaXMuxc7jcrwePZDE7L2VPg7lK97Rok1TLZTA22elP8ef6egI
	lce2wFYTkCsEiyXvJLZVceyvHI8HNT4yeFdZQBmLgiBzPaeXVhz1j9/IYlt1PQgL/GDfcYlvtXz28
	lmL4CVPCMlTvEJ6qguV06JKHzZ/olPD58ksMH3FjI/tC6DzEJXdJXiPOuXSViCHldVF5/LPa8cgv8
	ZMFtkNus+KSecJkUhqhll53GRoMqoe9SwcSMcW11He1D/J0pwKfjvZ3OpzcYM2vo/2o3ozxGUNLZR
	lh0/EMUHcBgoaXHCkwsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0sJF-0001l9-2T; Thu, 22 Aug 2019 18:59:45 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sIt-0001Xn-BR
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 18:59:25 +0000
Received: (wp-smtpd smtp.tlen.pl 23240 invoked from network);
 22 Aug 2019 20:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566500358; bh=1lZixjVohgJrPwOz+ytNod/yezG9zfHw7M67o6lkXsE=;
 h=From:To:Subject;
 b=r8d8yjLfmiM24Z9lLoiTK9a4mFDRApIzuQtT/UcjOSuKOUmeYoG1fpz1/fgYtfaJO
 Ypr9SCaKTwS/d9buVFK8L5z0ide+zZlpeiKaGrzMqDP0owc8061eRkLbmpIivtlBqb
 7nuHXorqYEjXaPEhAQxlzjWimQ7T8sWbTzrFoBoM=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Aug 2019 20:59:18 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 20:59:04 +0200
Message-Id: <20190822185911.12336-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-WP-MailID: 9ef417fe7eaf87c40d6a8c4bf5027449
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [gTK8]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_115924_168550_6C467B20 
X-CRM114-Status: UNSURE (   5.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/7] ath79: fixes for devices with RedBoot
 bootloader
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

Few fixes with common denominator being RedBoot bootloader, mostly
related to images generation. Some of these will need a cherry-pick to
19.07 branch - I'll prepare the patches if theese will be commited.
I would like to also put some focus on FS#2428 [1] bug, which will
disable sysupgrade for few devices and which I don't have knowledge to
tackle. Hope someone will help.

1. https://bugs.openwrt.org/index.php?do=details&task_id=2428

Tomasz Maciej Nowak (7):
  ath79: dts: fix ja76pf2 spi frequency
  ath79: image: retire combined-image for Adtran/Bluesocket devices
  ar71xx: sysupgrade: accept ath79 combined-image
  ath79: image: append metadata to routerstations and ja76pf2 images
  ath79: image: add supported string for routerstations and ja76pf2
  ath79: fix FIS partition detection for 4.19 kernel
  ath79: image: disable sysupgrade images for routerstations and ja76pf2

 .../ar71xx/base-files/lib/upgrade/platform.sh |  2 +-
 .../linux/ath79/dts/ar7161_jjplus_ja76pf2.dts |  2 +-
 target/linux/ath79/image/generic-ubnt.mk      |  6 ++-
 target/linux/ath79/image/generic.mk           |  8 +++-
 .../408-mtd-redboot_partition_scan.patch      | 44 +++++++++++++++++++
 5 files changed, 56 insertions(+), 6 deletions(-)
 create mode 100644 target/linux/ath79/patches-4.19/408-mtd-redboot_partition_scan.patch

-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
