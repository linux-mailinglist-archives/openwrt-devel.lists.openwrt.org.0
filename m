Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3E4E64A7
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 18:46:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+1CMVPjuOAU8fz5+B3OcmCzloAa7FYefXSz0hSJNkqg=; b=SzfNdmrlNBP9Wa
	51uNU/ingDNL1b89evdr63G1Kej8i46gaQQsoudM5qSy5pyCUPAspZyD8x8m3I5uZqccUIb2Uum+y
	UeywPe3kiBPekomtqivXgcJP8VRgFG7US87ClnoSaecQ8v0Jr2OxHiUUkPo0Nhcwt1C66oSMeDfkX
	pGcTb33rq+I5A6rvXAeJjHb1wTCnM7ErLjwKAEjhbPH2smnG1bXmD2yLaIdl+oyJsBTY2QZXD/tre
	+m0+OcYmUjdc7YYy+PPEgy0krcpWRCG7Neyn+I0tP5LwLGEYnCSITyGOc/tmM4WVUa2fp99IOX9Vf
	dtznRoABNaS72Dcc35Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmcc-0005KH-IA; Sun, 27 Oct 2019 17:46:34 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmbM-00041W-GK
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 17:45:21 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id EAC61A33CF;
 Sun, 27 Oct 2019 18:45:06 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id lp6berkmYMlr; Sun, 27 Oct 2019 18:45:03 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 27 Oct 2019 18:44:32 +0100
Message-Id: <20191027174438.25795-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_104516_752658_20F82CEE 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/6] buildsystem: Activate PIE ASLR for some
 packages
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, daniel.engberg.lists@pyret.net,
 lynxis@fe80.eu, dave@taht.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a follow up patch on this discussion on the mailing list:
https://patchwork.ozlabs.org/patch/1041647/

This allows to activate PIE only for some packages where we thing it is 
necessary and not only globally for all of them.

Hauke Mehrtens (6):
  buildsystem: Make PIE ASLR option tristate
  dnsmasq: Activate PIE by default
  dropbear: Activate PIE by default
  hostapd: Activate PIE by default
  uhttpd: Activate PIE by default
  lantiq: Allow PKG_ASLR_PIE for DSL and voice drivers

 config/Config-build.in                       | 22 ++++++++++++++++----
 include/hardening.mk                         |  9 +++++++-
 package/kernel/lantiq/ltq-adsl/Makefile      |  1 -
 package/kernel/lantiq/ltq-ifxos/Makefile     |  1 -
 package/kernel/lantiq/ltq-tapi/Makefile      |  1 -
 package/kernel/lantiq/ltq-vdsl-mei/Makefile  |  2 --
 package/kernel/lantiq/ltq-vdsl/Makefile      |  1 -
 package/kernel/lantiq/ltq-vmmc/Makefile      |  1 -
 package/network/config/ltq-vdsl-app/Makefile |  1 -
 package/network/services/dnsmasq/Makefile    |  1 +
 package/network/services/dropbear/Makefile   |  1 +
 package/network/services/hostapd/Makefile    |  1 +
 package/network/services/uhttpd/Makefile     |  1 +
 13 files changed, 30 insertions(+), 13 deletions(-)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
