Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177B76D215
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 18:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fRXM8IqPeH5dEM0zQbkgli/ICXmJ55ZOQYGZ1nTI2jI=; b=KN9fj2EuErN3Kj
	pHBmflK+hQbVLhj2SxGu6Kroj6MYOESlgtEhklqMCIV0eS8617YgqWsyePl6Fhs0Nw32XnoobVFyw
	fiTKGLkt7oMUrSxInMYjvF0JMbVaj62VsfxAAFvYjHU70eJUzqF2RfYEiqFDsKGNwUkJqAJVwHBDC
	tw8CmxVGu/KuEkOTY9m3oXGYoThqriYRXClxYm7ZiPeeaBv/LNE6NS2tzleMueQ96yMWvM6nGmGB+
	7r5/x67dNqU+s6GmRj3SOutAk8KqC84gB+Vb1etFZW2h/scaJYKr6BQ3TGaXvsA4RU3V/BaY3YPbj
	dChLHUKBfdHw9NVeobuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9OR-0003gv-Lw; Thu, 18 Jul 2019 16:36:33 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9O3-0003Wn-Nc
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 16:36:09 +0000
Received: from localhost.localdomain (unknown [213.175.92.61])
 by mail.pbx.lv (MailSystem) with ESMTPSA id F07901A6061
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jul 2019 19:35:59 +0300 (EEST)
From: Roman Yeryomin <roman@advem.lv>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Thu, 18 Jul 2019 19:35:50 +0300
Message-Id: <20190718163550.28576-1-roman@advem.lv>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_093608_060166_D2789A25 
X-CRM114-Status: UNSURE (   6.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH] tools: libressl: update to 2.9.2 version
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

To keep in sync with OpenSSL 1.1.x branch version options.

Signed-off-by: Roman Yeryomin <roman@advem.lv>
---
 tools/libressl/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/libressl/Makefile b/tools/libressl/Makefile
index 8894a058e4..d029666611 100644
--- a/tools/libressl/Makefile
+++ b/tools/libressl/Makefile
@@ -8,8 +8,8 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libressl
-PKG_VERSION:=2.8.1
-PKG_HASH:=334bf7050f1db4087feebb30571ec13d9fa975bf05d6003ce3ab6d7d2452cf42
+PKG_VERSION:=2.9.2
+PKG_HASH:=c4c78167fae325b47aebd8beb54b6041d6f6a56b3743f4bd5d79b15642f9d5d4
 PKG_RELEASE:=1
 
 PKG_CPE_ID:=cpe:/a:openbsd:libressl
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
