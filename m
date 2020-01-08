Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02272134F75
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 23:38:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q3AG62F59npqZqY0p+pqgIjcbvLVmXlo5DBCnohOa0g=; b=eOD7qNHLE2VMsA
	rZYTunW5Qmr+52rXDP5WWbxhDC1jPDnZxfBmr90ZCrY2WrYqZxbIkdX0kDT/np5JSXmSNpgEMkWUI
	lu5X1ecc5BU3h0Zt9M+VSe4Fu5uopKBdX19fjE3Rs3xFbpO5NCeeShClnBZAQBeQ3KHnLi3cTJCk4
	Jqbwdl8zwthjm7Mgz57sjTeIZdNNvDTTgM8ATfPzodSuqH6PCGvc1Woht4Hb0r5hxtIt4cf7lGdMn
	Wn4St/dJ6GAcU3z49CA+2map3jmCQ+/Nd3VI6xoWEoBH2o/Tmbagk5GOasW82pL4Vnemjg6Hdahy+
	EPtw6CvbBIZ7JvlAaSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipJxc-0002M1-1b; Wed, 08 Jan 2020 22:37:56 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipJxT-0002Bx-IG
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 22:37:49 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id d7fc94bb;
 Wed, 8 Jan 2020 21:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=W9LifhIW6C64rUANPJCxbWYMtms=; b=iL7f5lL9/X5SjlAlIJIL
 mdSpC8syW222+ZPDN1Qw81fXHBQBbd4ovy3KIOlL+Olfo4KflvRbD5SBGbmEdBJw
 KMsXWld6pi+wYVFYKW30o4nxRTbARhsCMOtYgPPdhU8tYT2wE6rCzM5bfI9jcx/9
 C++a0Nv6YX55SEl11ptPKx4lYOErlEbMKefzwIMTA2R/S3FIRQGvUpxej2Lro5sR
 DI0eVb3iIC2SzUnJg5OmJ4KdLNLA2sBkXSHOQvGKDsqp0jh9eJhrPcgwqM6dsaHg
 EsAsfalRoWexM2Vn8yGPRZKr3gPU0x+F60+/Zs0dAvzwV+CeZG4LFnGoR9VpYKT5
 hw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 0b324eb7
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 8 Jan 2020 21:38:24 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Jan 2020 17:37:40 -0500
Message-Id: <20200108223741.487861-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_143747_675841_7676F3C8 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] wireguard: bump to 0.0.20200105
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

* socket: mark skbs as not on list when receiving via gro

Certain drivers will pass gro skbs to udp, at which point the udp driver
simply iterates through them and passes them off to encap_rcv, which is
where we pick up. At the moment, we're not attempting to coalesce these
into bundles, but we also don't want to wind up having cascaded lists of
skbs treated separately. The right behavior here, then, is to just mark
each incoming one as not on a list. This can be seen in practice, for
example, with Qualcomm's rmnet_perf driver. This lead to crashes on
OnePlus devices and possibly other Qualcomm 4.14 devices. But I fear
that it could lead to issues on other drivers on weird OpenWRT routers.

This commit is upstream in net-next as:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=736775d06bac60d7a353e405398b48b2bd8b1e54

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index c379b71..9593c1d 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20191226
+PKG_VERSION:=0.0.20200105
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=7c0e576459c6337bcdea692bdbec561719a15da207dc739e0e3e60ff821a5491
+PKG_HASH:=9f12f68e96f6865325995c38213e09b05751cd1ef03e0bbc9f1bdc3e5680b337
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
