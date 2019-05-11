Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE241A7B2
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yJL2+QDwPAXv2m3nnnOotdZWyLRy3KQnhlhEpdjztkA=; b=bwRndNaJqKJg+v
	N5OQmPYIcPx6nqsYh2WxhJP03W9jjBwrQNQVPCM84uZ0VSr4QHkGFOle5iPD5W6EVH8MEfSeVep8d
	hD2xAtC0AO1qk4IWOjCHfBTq0LAi24C2NaIOAMwN5Mg/KDFy4u2zckeI/LTH/oQEHA6f/yjLPyCtk
	xkf3CqvN6a8U3D5x1jIV8Y3X8UEMuyWGs1DCsJW3OlyqQzpxw4Fld6o+iUogPE5o89eIwpyicfp3z
	SWxNgdNgls2vU3ZoD+dpr4rIt9PEIS7GR0jzh9KdJgNsTZ3JIOy29ZfB1GiE5s+lxRwhcVSzcyj3g
	2xzgBEE+Zxbh4sVuk4bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQUE-0006ZD-R1; Sat, 11 May 2019 11:48:18 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQTz-0006SU-6f
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:48:05 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 44B2EA1161;
 Sat, 11 May 2019 13:47:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id XVhnlu3GhSS7; Sat, 11 May 2019 13:47:46 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:47:35 +0200
Message-Id: <20190511114737.11922-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_044803_405090_1C5E61E1 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/2] ar7: Update kernel to version 4.14
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, f.fainelli@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The next OpenWrt release will only contain support for kernel 4.14, to 
still support the ar7 target update it to kernel 4.14.

This was only build tested, I do not have this device, could someone 
please run test it on some device and report the results back.

The patches are also available in this branch:
https://git.openwrt.org/?p=openwrt/staging/hauke.git;a=shortlog;h=refs/heads/kernel-4.14

Hauke Mehrtens (2):
  ar7: Refresh kernel configuration
  ar7: Update kernel to version 4.14

 .../patches-D7.04.03.00/270-4.14_fixes.patch  | 51 +++++++++++++++++++
 target/linux/ar7/Makefile                     |  2 +-
 target/linux/ar7/{config-4.9 => config-4.14}  | 20 +++++++-
 .../100-fix-highmem-offset.patch              |  0
 .../110-flash.patch                           |  4 +-
 .../160-vlynq_try_remote_first.patch          |  0
 .../200-free-mem-below-kernel-offset.patch    |  2 +-
 .../300-add-ac49x-platform.patch              |  4 +-
 .../310-ac49x-prom-support.patch              |  0
 .../320-ac49x-mtd-partitions.patch            |  4 +-
 .../920-ar7part.patch                         |  0
 .../925-actiontec_leds.patch                  |  6 +--
 .../950-cpmac_titan.patch                     |  8 +--
 ...R7-allow-NULL-clock-for-clk_get_rate.patch | 45 ----------------
 14 files changed, 85 insertions(+), 61 deletions(-)
 create mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/270-4.14_fixes.patch
 rename target/linux/ar7/{config-4.9 => config-4.14} (86%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/100-fix-highmem-offset.patch (100%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/110-flash.patch (85%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/160-vlynq_try_remote_first.patch (100%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/200-free-mem-below-kernel-offset.patch (89%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/300-add-ac49x-platform.patch (96%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/310-ac49x-prom-support.patch (100%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/320-ac49x-mtd-partitions.patch (90%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/920-ar7part.patch (100%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/925-actiontec_leds.patch (90%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/950-cpmac_titan.patch (86%)
 delete mode 100644 target/linux/ar7/patches-4.9/101-MIPS-AR7-allow-NULL-clock-for-clk_get_rate.patch

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
