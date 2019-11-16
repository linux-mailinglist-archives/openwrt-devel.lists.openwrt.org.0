Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53643FF56F
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fSVrCPw5X1SDRyoYp1W4rAWwmv3ztwoclc7m71LB86I=; b=RXYjc1nIPh8O9S
	J0HrVlms+WX4xK7QD47V/QJhYmpH+km8BiUx3x6AyQFkgAbA0e6mbEobIDgmbaLLlMQ0si1fQxZqR
	+eUs6TQzOGatfP0F7heMWjtosDnUhlkjnR4PCYL3OX/R2XmsWbfKdLcwvCnLqNpATN/hPrxjLvT75
	cAzuXE/m0fFu0Fl8vCoaSFggoSjFEef9k9f5AsMFuShCYka2cyOWjWDkH+38aSTiGdiWsjRfLL9uE
	UK0padepJBqPdRmbEPV8J/tdBmJS3kd21OAOsMwfFQVjgZOLZ3cbXnO696+KT9E/WOXk+gUMArSb6
	6dYglokcPFCdsIj0gh0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4ca-00047p-Mi; Sat, 16 Nov 2019 20:24:40 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4bn-0003cE-TS
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:23:56 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 2114457BC9; Sat, 16 Nov 2019 21:23:48 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id AF75157BC6
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:47 +0100 (CET)
Received: (qmail 21253 invoked from network); 16 Nov 2019 21:23:47 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:47 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:29 +0100
Message-Id: <20191116202346.31885-1-jo@mein.io>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122352_100859_9C153050 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC PATCH 00/17] disable known broken device
 images for 19.07
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch series is to be applied against openwrt-19.07 and disables
known broken devices that were unable to retain configuration according
to https://forum.openwrt.org/t/devices-too-big-to-save/18161 .

The actual number of broken device images is likely higher but I wanted
to be conservative here and only disable the ones explicitly reported.

Jo-Philipp Wich (17):
  ramips: disable ASUS RT-N10+ B1 by default
  ar71xx: disable Netgear WNR612 v2 by default
  ar71xx: disable TP-Link TL-WA850RE v2 by default
  ar71xx: disable On Networks N150R by default
  ar71xx: disable Netgear WNR2000v4 by default
  ramips: disable D-Link DIR-300 B5/B6/B7 by default
  ramips: disable D-Link DIR-645 by default
  ramips: disable Sitecom WL-351 by default
  ramips: disable TP-Link TL-WR840N v5 by default
  ar71xx: disable TP-Link TL-WA850RE by default
  ramips: disable TP-Link TL-WA750RE by default
  brcm47xx: disable Linksys E1000 v1 by default
  brcm47xx: disable Netgear WNR2000 v2 by default
  ar71xx: disable TP-Link TL-WA855RE by default
  ramips: disable A5-V11 by default
  ramips: disable WR512-3GN 4MB variant by default
  ramips: disable ZyXel Keenetic by default

 target/linux/ar71xx/image/tiny-legacy-devices.mk | 3 +++
 target/linux/ar71xx/image/tiny-tp-link.mk        | 4 ++++
 target/linux/brcm47xx/image/Makefile             | 3 +++
 target/linux/ramips/image/mt76x8.mk              | 1 +
 target/linux/ramips/image/rt305x.mk              | 7 +++++++
 target/linux/ramips/image/rt3883.mk              | 1 +
 6 files changed, 19 insertions(+)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
