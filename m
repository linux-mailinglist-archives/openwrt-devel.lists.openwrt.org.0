Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596351A99B
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 23:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=twPRgfktfkkMaT6UKL27hX6bOOfSiZZJXp/YAKrK+zY=; b=Eat00p/UbZVwhC
	lnBN3bqd41CCK1q9QDhVEUyIejWVx5uY5U1wMOifXk7amWILOiVuafY1QFu7Cw1To19xSPVvyGHEp
	74H1rHIRl7W+YgRtc5IJxtLS9YWt3h2IZb0S/Emco+ezoZyBXz+K7FQBvGm9Gn6Z7zn+5nN9pmHQw
	aqyLsriBcY0FpQOcfyVknnNWdWDMfk8k/FvjbGAIqFdB515NaXeQCnanO9GPNebM19Qb360E8uRVK
	mqQc6UmPN7AWm6zchwmdKcMvl76TvaPHe8Ka0FzxnPF/xY8/XJiCwHA8iIRMy3kLIMDo1rBe+d0ON
	fIy0uIHm6tPF9bJzh5Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPZY2-0002VF-1c; Sat, 11 May 2019 21:28:50 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPZXu-0002Uu-Ip
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 21:28:44 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 5AF16A017D;
 Sat, 11 May 2019 23:28:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id Gg7CYzL-2O9z; Sat, 11 May 2019 23:28:32 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 23:28:29 +0200
Message-Id: <20190511212829.21680-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_142842_778672_52D26627 
X-CRM114-Status: UNSURE (   9.55  )
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
Subject: [OpenWrt-Devel] [PATCH] linux-firmware: update to version from
 2019-05-02
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The following firmware files we use are updated in this change:
ath10k/QCA6174/hw3.0/board-2.bin
ath10k/QCA9888/hw2.0/firmware-5.bin
ath10k/QCA988X/hw2.0/firmware-5.bin
ath10k/QCA9984/hw1.0/firmware-5.bin
mrvl/sd8887_uapsta.bin
mrvl/pcie8897_uapsta.bin
iwlwifi-8000C-36.ucode
iwlwifi-8265-36.ucode

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/firmware/linux-firmware/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/firmware/linux-firmware/Makefile b/package/firmware/linux-firmware/Makefile
index f460ac0ee6..20cea64f71 100644
--- a/package/firmware/linux-firmware/Makefile
+++ b/package/firmware/linux-firmware/Makefile
@@ -11,9 +11,9 @@ PKG_NAME:=linux-firmware
 PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2018-12-16
-PKG_SOURCE_VERSION:=211de1679a68b8ab0f841a8058df35e13e3963f0
-PKG_MIRROR_HASH:=894a13a44c9de58528488682feb3ade582725cd766a16ccaca07089628229d90
+PKG_SOURCE_DATE:=2019-05-02
+PKG_SOURCE_VERSION:=92e17d0dd2437140fab044ae62baf69b35d7d1fa
+PKG_MIRROR_HASH:=5cf291ae4ccdbd4ac251302f69e47016227bf2e1946bdb59e6a7fe404d2efbf0
 PKG_SOURCE_URL:=https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
