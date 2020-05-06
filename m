Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84431C7D35
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 00:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fYpjmT4TdCS99/dw+zsc3+Ubrf84JI5QJcU6GDb9VAg=; b=eKQvWc0eGRMZh/
	TLXyR5gYG3Sws/Vwx19XLpvpC6ffu5Xrv+BnBpPrt0AKxXuM8BsE0YY1BzEwc47w4Uz2Jbwc0iqzO
	0kO2ig4mRBTG4Rj0I2DBxz7pKNopRbYFTOJSl2Ix7UUiSYNOW0IjwX+NDbPb5eWvzBqrpqTdC83nx
	On8PYXjHL3ayBmZ+OrXEA52bG+x5VkkloY9YCrFaqN/PwAYWchKseK2iWL8ZC/qRi2w/CB990Jklg
	bXRhJpZ3Ox/300kxCReMWml3uM8jYkny6cxcGhIY5gMFpTQdqL8Eo667Z5gX+hZeaK+4e6GX3psT/
	cId8KHsHVrV2pBZ97tjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWSRO-0007Qv-Sx; Wed, 06 May 2020 22:22:58 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWSRI-0007QT-IK
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 22:22:54 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 3da7f8b7;
 Wed, 6 May 2020 22:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=norO4o7tPkBQVvcU5xgBG0+TobM=; b=umgG2RfAxV4NjbVoUxBQ
 gLbmAu4qigBXbnOii6iFdLlHP3ZA6LFdP9gIcspS54Sl+gspXj9ZSAZ48hHROle3
 olHxCTD9sSfG37oG9oZ6pMKB++4/sbX5fYdMI5um5adwrZsVCpcjtC3k1ymfkJsa
 AZ3WdisfQo/nQNV2D4fLegTmAUSua/5NkJc9cKIqde7/p3myklbwRiwNxdI4WQSn
 Wua/Xmb6IppFvHx4ZJru5RoSdPOO+pPGFJ9fkry1Ws8DgcTjFvk2n0ZKrIj1XVRN
 0/GH6reRSkb08RK6yUmztihbYObvrTWBDDpy9WlDTsozjK6ht/oqlk6poUzdVzZE
 pg==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 6ddb3668
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Wed, 6 May 2020 22:10:05 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 May 2020 16:22:46 -0600
Message-Id: <20200506222246.1348177-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_152252_745631_530E8596 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 1.0.20200506
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

* compat: timeconst.h is a generated artifact

Before we were trying to check for timeconst.h by looking in the kernel
source directory. This isn't quite correct on configurations in which
the object directory is separate from the kernel source directory, for
example when using O="elsewhere" as a make option when building the
kernel. The correct fix is to use $(CURDIR), which should point to
where we want.

* compat: use bash instead of bc for HZ-->USEC calculation

This should make packaging somewhat easier, as bash is generally already
available (at least for dkms), whereas bc isn't provided by distros by
default in their build meta packages.

* socket: remove errant restriction on looping to self

It's already possible to create two different interfaces and loop
packets between them. This has always been possible with tunnels in the
kernel, and isn't specific to wireguard. Therefore, the networking stack
already needs to deal with that. At the very least, the packet winds up
exceeding the MTU and is discarded at that point. So, since this is
already something that happens, there's no need to forbid the not very
exceptional case of routing a packet back to the same interface; this
loop is no different than others, and we shouldn't special case it, but
rather rely on generic handling of loops in general. This also makes it
easier to do interesting things with wireguard such as onion routing.
At the same time, we add a selftest for this, ensuring that both onion
routing works and infinite routing loops do not crash the kernel. We
also add a test case for wireguard interfaces nesting packets and
sending traffic between each other, as well as the loop in this case
too. We make sure to send some throughput-heavy traffic for this use
case, to stress out any possible recursion issues with the locks around
workqueues.

* send: cond_resched() when processing tx ringbuffers

Users with pathological hardware reported CPU stalls on CONFIG_
PREEMPT_VOLUNTARY=y, because the ringbuffers would stay full, meaning
these workers would never terminate. That turned out not to be okay on
systems without forced preemption. This commit adds a cond_resched() to
the bottom of each loop iteration, so that these workers don't hog the
core. We don't do this on encryption/decryption because the compat
module here uses simd_relax, which already includes a call to schedule
in preempt_enable.

* selftests: initalize ipv6 members to NULL to squelch clang warning

This fixes a worthless warning from clang.

* send/receive: use explicit unlikely branch instead of implicit coalescing

Some code readibility cleanups.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index f57cb9f..b856d82 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=1.0.20200429
+PKG_VERSION:=1.0.20200506
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=c0050a94c33c195d4129a75ab4dca05ba021c5265e40fce8b2dfda7d7055cda2
+PKG_HASH:=98a99f2b825a82d57a7213e666f1ee4f7cc02bddb09bf4908b4b09447a8f121e
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
