Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E2D1DA743
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 03:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hLnni/TmDBhT4FnCntbxtsPYYJI1r0Sm+cz9EZCh7L0=; b=WhbJDmJiypM9lw
	J6IUtvJjaNRG7yAH7wARoAX2KkmXYBlTqjU7MbcI2MQJ1qxlPmINzbsw16plxzyEGLHjHq4zb/FEi
	MorAlqnu6iG6swa4CnZgp60JqvC/yjxgt1ebGGaqxzjLDe9E2ms3SM7pP0br0zjqKXdIFUs95HDqE
	OiFMj5mNe1yybHn+OR/TF8EPmpsBEuV9ahyurHnY5HKVH5AXa0CpqO9A8FPN7D+eRgnzAvRA2ttGk
	+meo3dhCFJuQY+2tRsNcZyOq+GEd7kpHZwBAEky/vTaVxQJCUQFbRMCnTvwiSr/1tdKHDo32Scq1U
	YtQQs+q6rUgsOgKpTnkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDhl-0001lm-3H; Wed, 20 May 2020 01:39:33 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDhd-0001ek-1r
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 01:39:26 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id d78657c8;
 Wed, 20 May 2020 01:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=wyjnHOaWR2t95t+GP9i7dBKCXfY=; b=v60aT9Zl2MVxeUNc6fB6
 mHfGRLufwx/+2S2c/9cCMkwMv4Yrk7O/QXOy8A3+oExuXtopGAyPnG25mEZNkHRD
 i1SHGnVocVEdxKwaH5GnhX4JfmmoV8jmc+dsJrh8sQByzI124nO4KabQVC7xBMr6
 k6v7IWTicOoYBw31lGJujfBOH59xkMtKet8/sLDxeBQf2gJqUBCKErjPpDYNI5/2
 e6sNN2spsP3qBq35YiBxtRiATTeCdRG2S32Q1y9YNDqtKK/LrzVECP2g+u1dwUEr
 GldD5gFdHYyBKloj4+MiUrFGuJ7OZEHYmeMN/xo5qUgc8OcBbZ1FWgQdPrlHqpnp
 +g==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 61140a18
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Wed, 20 May 2020 01:24:50 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 19 May 2020 19:39:08 -0600
Message-Id: <20200520013908.3626-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_183925_312668_0B0EC3CA 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] wireguard-tools: bump to 1.0.20200513
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

* ipc: add support for openbsd kernel implementation
* ipc: cleanup openbsd support
* wg-quick: add support for openbsd kernel implementation
* wg-quick: cleanup openbsd support

Very exciting! wg(8) and wg-quick(8) now support the kernel implementation for
OpenBSD. OpenBSD is the second kernel, after Linux, to receive full fledged
and supported WireGuard kernel support. We'll probably send our patch set up
to the list during this next week. `ifconfig wg0 create` to make an interface,
and `wg ...` like usual to configure WireGuard aspects of it, like usual.

* wg-quick: support dns search domains

If DNS= has a non-IP in it, it is now treated as a search domain in
resolv.conf.  This new feature will be rolling out across our various GUI
clients in the next week or so.

* Makefile: simplify silent cleaning
* ipc: remove extra space
* git: add gitattributes so tarball doesn't have gitignore files
* terminal: specialize color_mode to stdout only

Small cleanups.

* highlighter: insist on 256-bit keys, not 257-bit or 258-bit

The highlighter's key checker is now stricter with base64 validation.

* wg-quick: android: support application whitelist

Android users can now have an application whitelist instead of application
blacklist.

* systemd: add wg-quick.target

This enables all wg-quick at .services to be restarted or managed as a unit via
wg-quick.target.

* Makefile: remember to install all systemd units

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/utils/wireguard-tools/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/utils/wireguard-tools/Makefile b/package/network/utils/wireguard-tools/Makefile
index 5493295..3232060 100644
--- a/package/network/utils/wireguard-tools/Makefile
+++ b/package/network/utils/wireguard-tools/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard-tools
 
-PKG_VERSION:=1.0.20200319
+PKG_VERSION:=1.0.20200513
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-tools-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-tools/snapshot/
-PKG_HASH:=757ed31d4d48d5fd7853bfd9bfa6a3a1b53c24a94fe617439948784a2c0ed987
+PKG_HASH:=e73409a9fb8c90506db241d1e1a4e7372a60dbfa400e37f4ab2fd70a92ba495f
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
