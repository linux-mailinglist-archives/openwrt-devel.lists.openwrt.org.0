Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598F71A7BA
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L3Dx4JkdJWIuSPhxlawdCc9YatE/B5HTXV+9TeMP3LM=; b=P0VsuMs6BuQMR0
	4dGf+jlnwP+qPUYwH5cL2jmM3evQRqx6EtYbLwKx3I5Ftp6irggdB82Hh2IMDHVGvLm+uzeqOeysZ
	U7O0XI+Fvn/5Q6+nCEo9fVsF8fKVcTwcedGxfjftxWatv811mDBOEXqVopjIF7HFwCkLn7OYy2X7t
	TeUNq+ZJYDZz3yHFads6k4T1NKa0NLTI9hEnL81rnUVt/cCeVYzEN2mQ4POvlDXmS4vBJKgCdIRAU
	Irgw0pOJGRG/ArSLNvCZVQ9elXj4g9CJQU8GHXgvT5uuxDsXYhXna6xSgt4S6VovRjQmC6RRn0lpp
	1xHeAmeYeFoWBBLHQrbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQXO-00011F-Bx; Sat, 11 May 2019 11:51:34 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQXG-00010h-QG
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:51:28 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 87B794E705;
 Sat, 11 May 2019 13:51:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id FEzeFkDnwBLL; Sat, 11 May 2019 13:51:14 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:51:06 +0200
Message-Id: <20190511115108.12139-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045127_004822_9B7E3F08 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/2] orion: Update kernel to version 4.14
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, kaloz@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The next OpenWrt release will only contain support for kernel 4.14, to 
still support the orion target update it to kernel 4.14.

This was only build tested, I do not have this device, could someone 
please run test it on some device and report the results back.

The patches are also available in this branch:
https://git.openwrt.org/?p=openwrt/staging/hauke.git;a=shortlog;h=refs/heads/kernel-4.14

Hauke Mehrtens (2):
  orion: Refresh kernel configuration
  orion: Update kernel to version 4.14

 target/linux/orion/Makefile                   |  2 +-
 .../linux/orion/{config-4.9 => config-4.14}   | 58 ++++++++++++++-----
 target/linux/orion/harddisk/config-default    | 10 +++-
 .../000-arm_openwrt_machtypes.patch           | 18 ++++++
 .../100-wrt350nv2_openwrt_partition_map.patch |  0
 .../101-wnr854t_partition_map.patch           |  0
 .../200-dt2_board_support.patch               | 13 ++---
 .../210-wn802t_support.patch                  | 41 +++++++------
 .../000-arm_openwrt_machtypes.patch           |  8 ---
 9 files changed, 93 insertions(+), 57 deletions(-)
 rename target/linux/orion/{config-4.9 => config-4.14} (83%)
 create mode 100644 target/linux/orion/patches-4.14/000-arm_openwrt_machtypes.patch
 rename target/linux/orion/{patches-4.9 => patches-4.14}/100-wrt350nv2_openwrt_partition_map.patch (100%)
 rename target/linux/orion/{patches-4.9 => patches-4.14}/101-wnr854t_partition_map.patch (100%)
 rename target/linux/orion/{patches-4.9 => patches-4.14}/200-dt2_board_support.patch (98%)
 rename target/linux/orion/{patches-4.9 => patches-4.14}/210-wn802t_support.patch (69%)
 delete mode 100644 target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
