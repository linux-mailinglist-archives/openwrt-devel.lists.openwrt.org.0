Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BF731B97
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Jun 2019 13:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k7Ni6uWTcM27aqGitHZeXxK64NcQMhIuiCKJnAN9hC4=; b=GxwzBiqg2PkJTT
	0D9CuruZZY0kdKcXImTwEImogncdL994/QkKLgaWO+AgnWMTOjWrQyMFGZnSVKMrJRb4gD1HqSUcd
	JrL4K/9XDnBApDoiGOGeakkT3ZBb9x51XZYl/rJUntJqwhArSGClodDVzfjFUErdqDOo7HAhV849F
	0Fw011LXnE9wdzQKCyQcn7v2QgI+pBSPgLbwce9rI62ZX2aDHyLMXUcRmvRpGlZp1KJNgCI6UuiGy
	aXUDZYho/daFomJUjqF8PaLpNI1WdKVwRRrbIVNI5Mvu7bMERYY7Q+5lZxSDdueUuFRN6vU0Rvasn
	g/VVwEbRSWFv6IyeMheA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX2Mx-0006As-JD; Sat, 01 Jun 2019 11:40:15 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX2Mq-0005Fd-LB
 for openwrt-devel@lists.openwrt.org; Sat, 01 Jun 2019 11:40:10 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 52a26e84;
 Sat, 1 Jun 2019 11:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=9wSeN65A1p5V4mGZvF2yKhfTbnE=; b=WM41XZ01qZmC3ua/rssB
 THnkyVytZTF2aVpaqoJjp9b683Cf8O6IeaR8G2nAVo62hUO+cYu7lHeVxpSgf/ZC
 RR/MfWjKdBvavgdS4toIQkccSMuOx4EEHFgXM7kjYyK7CvtoEuQqohAPCcYPn29C
 ElYcyZQOQo4Xt0cU5dV5kEQ6zcauwOT7w2ibILtr1kFkN37XCIEsYfOjfiYmdSB0
 +FdtTzLI09b9BdrtOuOtZF7WJhd22iSxau0dCU1B2TogxTSrQ1VeFcMtBZ+WpEH5
 sOX5B9/Z2h6+I5R9fNKUcTBdpj2OIJjKxrqta1HJ6/BUbPrIhdKQicT/KdlX/NCA
 1g==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 42f9c87c
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Sat, 1 Jun 2019 11:09:11 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  1 Jun 2019 13:39:59 +0200
Message-Id: <20190601113959.26953-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_044008_971988_EBB7909A 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20190601
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

There was an issue with the backport compat layer in yesterday's snapshot,
causing issues on certain (mostly Atom) Intel chips on kernels older than
4.2, due to the use of xgetbv without checking cpu flags for xsave support.
This manifested itself simply at module load time. Indeed it's somewhat tricky
to support 33 different kernel versions (3.10+), plus weird distro
frankenkernels.

If OpenWRT doesn't support < 4.2, you probably don't need to apply this.
But it also can't hurt, and probably best to stay updated.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index e3471d0..310d559 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20190531
+PKG_VERSION:=0.0.20190601
 PKG_RELEASE:=1
 
 PKG_SOURCE:=WireGuard-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/WireGuard/snapshot/
-PKG_HASH:=8b0280322ec4c46fd1a786af4db0c4d0c600053542c4563582baac478e4127b1
+PKG_HASH:=7528461824a0174bd7d4f15e68d8f0ce9a8ea318411502b80759438e8ef65568
 
 PKG_LICENSE:=GPL-2.0 Apache-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
