Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66102141DA6
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 12:39:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9o+AOW6vAT2eWRBFrnepavuD0ypvYNSZT+XC1VB0ATA=; b=gQdJ1BX6R/gu71
	q4zMbhuVbLge+7Txa2LTEWV/LXMgEIwQysemtBkEHPB9yJ7er7pM6O9RzUGXLaD3xHKQNIxmQXOua
	Q4v8lDoBs/3ufnfXKYaT+pCoT8+cYiocNmX8zjwGRoNwobcgyjvyPfowiyMdXSurP8mwhLIeWH8fM
	50Sg5DRuKJpCtxnC55G5B5Yo+DMOljy0KF4gObtqQC3gyoWvzhoIKU/vCcKS5bM4erNFfVQwSDdYC
	zZdB6lPJbwvNGGUFEKNa/NJS2EOtZHeZtg1+Bd1x6hS6gPX0ltXT5Jyb2xuhLL3tHOjYkT+SLiPt4
	fyuXcR24ucD0ftqPhvKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it8vG-0005cV-VH; Sun, 19 Jan 2020 11:39:18 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it8v9-0005bR-IR
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 11:39:13 +0000
Received: (wp-smtpd smtp.wp.pl 35983 invoked from network);
 19 Jan 2020 12:39:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579433944; bh=tpsFrXy2defspKKRdbiwzRtZdMQm4v1iPPiuEVm+D/4=;
 h=From:To:Cc:Subject;
 b=NbG/iXiTdn/TUy1Hk//LruV1HP4f5QZPRwzZT1Om0REDLEMjVhRhxw4GklMVvbYCE
 vnCgiQhzEGtHIdPsFwiQjMjgB247mDflWhhPt71GRcl6oz0sIcGs5jmoPzlxSFPrYy
 A/+3BX1mspuxggoDBWi4vWCGGvXyF1wac45cwUFc=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 19 Jan 2020 12:39:04 +0100
Date: Sun, 19 Jan 2020 12:08:16 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20200119120816.44406149@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 68e5dd6663ac422e3a947680c1df0bfe
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [gTPg]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_033911_969219_CBC5AF0C 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/2] ath79: update device naming for Netgear
 WNDR3700v2
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patchset changes device string to 'wndr3700-v2' (adds dash before
variant) making it compatible with naming convention for ath79 target.
Then board, under its new name, is added to uboot-envtools.

Patch list (2):
  ath79: WNDR3700v2: add dash before version in device name
  ath79: uboot-envtools: add Netgear WNDR3700v2

 package/boot/uboot-envtools/files/ath79                     | 3 ++-
 ...etgear_wndr3700v2.dts => ar7161_netgear_wndr3700-v2.dts} | 4 ++--
 .../linux/ath79/generic/base-files/etc/board.d/02_network   | 4 ++--
 .../base-files/etc/hotplug.d/firmware/10-ath9k-eeprom       | 4 ++--
 target/linux/ath79/image/generic.mk                         | 6 +++---
 5 files changed, 11 insertions(+), 10 deletions(-)
 rename target/linux/ath79/dts/{ar7161_netgear_wndr3700v2.dts => ar7161_netgear_wndr3700-v2.dts} (85%)

-- 
2.25.0

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
