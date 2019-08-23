Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D599B155
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 15:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b/MYOZaVP2taTTXGQqPEIVc46BvBDyKy7NBu1TnHZSU=; b=OTyP5fHWw12iVa
	XMy4P/FXRdEqWLce6LUQYECa/1RCKFpKp6HhAnEDUnSmDGvvYvQ9SINGhIv7uEsHS2CuR8ikPSTAh
	ZUyz/reSZMDIs1l0cZ8rypVeN1M/DyR+bVBtBSOwAt1wY58QL+urI1N7lA1iyOmG3sl4zBm1CI2Hs
	hv8Jzc2D5/WXFfE2qYMoNneqNoTeYZrTcWs9LCT+Dfj5cI7Jd9P15z4NRmgEdLe5uhOrgbJzk7REX
	a6uTMzVUmWsX8bWTT1qayKKmf9tqRFCWNx8sdWU3/RtaPZLaAR/eBUG7OH8Ohq+7Le7F21Gfz1Vsz
	Z5f2D554BTFZbX4pxxuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19ye-0007GC-K1; Fri, 23 Aug 2019 13:51:40 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19y2-0006bB-Kw
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 13:51:04 +0000
Received: (wp-smtpd smtp.tlen.pl 13532 invoked from network);
 23 Aug 2019 15:50:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566568259; bh=LCkc9pPdW8HyQZP1timaP1k0uo5c3RpmT4VntVO5KGY=;
 h=From:To:Subject;
 b=ejnzF7BOHRSTqiiFaZh1svk5Z2ln6ZMCMV1JZ8cOthtfvbG4TRuAg0a9IeLLrnXsL
 bY+lD8rwCzwKXwtWqYEz0fi3VdmSu+m+/s9DT3+rAGGWe4zA7mNGhVRKPR61SWFQya
 vppV8Mnw2EX7KRovsCyy2s5MjsiEfoALLzUOR4q0=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 23 Aug 2019 15:50:59 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 15:50:45 +0200
Message-Id: <20190823135052.2305-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-WP-MailID: 3c4286a0abf3a61ff1387844422833e2
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [8dJM]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065103_011535_AABF9D24 
X-CRM114-Status: UNSURE (   6.42  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 0/7] ath79: fixes for devices with
 RedBoot bootloader
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

Changes in v2:
- remove also sysupgrade image recipes instead of only disabling them, as
  requested by Adrian Schmutzler in:
  "ath79: image: disable sysupgrade images for routerstations and
  ja76pf2"

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
 target/linux/ath79/image/generic-ubnt.mk      |  6 +--
 target/linux/ath79/image/generic.mk           |  8 ++--
 .../408-mtd-redboot_partition_scan.patch      | 44 +++++++++++++++++++
 5 files changed, 54 insertions(+), 8 deletions(-)
 create mode 100644 target/linux/ath79/patches-4.19/408-mtd-redboot_partition_scan.patch

-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
