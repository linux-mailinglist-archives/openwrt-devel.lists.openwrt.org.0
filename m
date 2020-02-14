Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CC115D8A8
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Feb 2020 14:41:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2NCGo3Sfps5qKHFwXkkijO7Kevl7AcKEzxR7rCrQmSg=; b=dGLkwBAWH9YjdQ
	fOVxzzqFs+RMOSj8g0tWuYXyK5KP+aBXI6BenhpH8AqUEwewsfT10rEpBv7ENvWbHDygh9kmlY9Zm
	rHhny6OwaVTDUjiFSyEzckpV6TZ43cQhmbehq25RcqNPZkfa8xWh47Fu/Xhq0Rk6+WpQpQebW08D2
	2COgC0E1HPYUay+dA8nnW136Gr8JM8s4Cs19oXJe/XfvOw2LXBmbbeQEzwmSo59guGOqa1XrlKQ9Q
	qWgvTwni5yEjHaWPatG14ViNGzWe3fD09l587BkA2awIV7meBeVAo/JhNno9Xjj3f/o9Gm/0TX1My
	Pcouk/LVD+KoOslUMMYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bDS-0008Oi-0d; Fri, 14 Feb 2020 13:41:10 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2bDK-0008MZ-1t
 for openwrt-devel@lists.openwrt.org; Fri, 14 Feb 2020 13:41:03 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 933275fe;
 Fri, 14 Feb 2020 13:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=tDdp2Af9k7yZebbaLunfCni1gSs=; b=tvh2rXzMN6H+uZzwQqJo
 SMM9GteOu9qRhspn9LE3JMxKn/9Om3EqZw1TglddXT7SZlUkufuPM/pgkGqy2wXs
 0Nbu7tZx3SaZ7oexSY+fJnCnlZxw8vbMGgK0dfJEkOVJbGN1zBCFWLQhiZLWOCd/
 qPl0Us0Kp1aMd8XIKTkrvAp2Zw6ptsxZhJbZtTbMrXJZ2LuXzDB5DvjK24d5SVsh
 eZZiwLVCdCqd2RBe8NgfYBGZ7AEsZUPw7VqYoQt0RMfrTFjSKgsdX2ImMA01s+nw
 Znw6mTuog1BdEKdZoXVZwBeV+yKRuWW4SltopHnBtiXniu1z/5i/SaB4r1NqJc8S
 3A==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id f29eade0
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 14 Feb 2020 13:38:49 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 14 Feb 2020 14:40:53 +0100
Message-Id: <20200214134053.32776-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_054102_242987_6341CE58 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20200214
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

* chacha20poly1305: defensively protect against large inputs

Defense-in-depth sort of check.

* netns: ensure that icmp src address is correct with nat

We finally upstreamed the last remaining compat.h hack in this patch series:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=803381f9f117493d6204d82445a530c834040fe6
That means we can port compat.h to use the new proper API.

* receive: reset last_under_load to zero

Matt found a small optimization while porting the Linux kernel module to
OpenBSD's kernel.

* send: account for mtu=0 devices

This fixes issues related to setting the MTU of a device to zero.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 6f9ae77..776f375 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20200205
+PKG_VERSION:=0.0.20200214
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=9669e165fc7252cab7f908ba57f160f6d57539b7cc81180f260cb675d2fd362b
+PKG_HASH:=6aaed62beb23803a456b7875a56e9462125a589c9dfb6d0b672c1a8f9f3f45ab
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
