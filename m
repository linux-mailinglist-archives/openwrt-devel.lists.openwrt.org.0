Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB101DC65C
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 06:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DrLU8viNcJtkUB9Yd8EEwfFb326qGmM9VJ7kenwmilo=; b=orZ4gv2vCRI4Ww
	88JMsE1zRsG83MO7pnmKS6a5pAPXZRePSxJmSBcCcy3DFF0zJULJHfU3+0VcBJb0YRVMr9bHbUDiQ
	DIildg/clg0hP6K32dMWchLK/+2aWFsWe72P8YZk7IYdjLDptOHcnqgN+2G+sPflcBtvJejH5E3w3
	Kyst8IqAY3ocPTTPbOA5ZcREIKP1YNfZhwjcxcz88w7UsNkGXeQlZD/ZhltSFCsfGBtk4cx134IKh
	I5wGvdXdw+j8rc8KRwzuem9zIV528rBBgBwiDlKhs3oRk03wnTcgUUWlNcifyxEqj6gvPMuK43uRZ
	/TKXFBrzZQjlakg35/+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbd3H-0006ne-OY; Thu, 21 May 2020 04:43:27 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbd3C-0006n8-5n
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 04:43:24 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id eb9f3111;
 Thu, 21 May 2020 04:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=JLrfPaYZDAinNoN25CwRsM+AFz4=; b=3MhTH8HnWFoH9kZVGYHJ
 jd4Y1isCkBm70n9Jljo33Q7NIu5B2YBl8mDAaLHiG643mAa13WtOORpSqqzXCOUm
 LX8CoTJgGEiy5g31Z2gY32CCXvF+vAKdEs6MkYZp64BZfMxvmgMSRBY1VglO2HR3
 y/m5lualXAPl2Q7InSZ0gxbbQUaXoUkqekJUo1sfHUx1+PLxUGwSVkx2mrJTskju
 MuF3D2dFOb5Iwg8KHaxPsIXpMcijBltXOpp2Ehb9SK65bVMtF7JAlnbOwyQfQGaZ
 IA1fyKvVhemRUoGnWiMcFOwsMmHEsnuqYeTCBm14RG6mw14jdol9i1jfKRjb9cys
 zg==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 85dcb0cd
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Thu, 21 May 2020 04:28:40 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 May 2020 22:43:08 -0600
Message-Id: <20200521044308.13536-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_214322_575113_3F8AF0C9 
X-CRM114-Status: UNSURE (   9.66  )
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
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 1.0.20200520
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

This version has the various slew of bug fixes and compat fixes and
such, but the most interesting thing from an OpenWRT perspective is that
WireGuard now plays nicely with cake and fq_codel. I'll be very
interested to hear from OpenWRT users whether this makes a measurable
difference. Usual set of full changes follows.

This release aligns with the changes I sent to DaveM for 5.7-rc7 and were
pushed to net.git about 45 minutes ago.

* qemu: use newer iproute2 for gcc-10
* qemu: add -fcommon for compiling ping with gcc-10

These enable the test suite to compile with gcc-10.

* noise: read preshared key while taking lock

Matt noticed a benign data race when porting the Linux code to OpenBSD.

* queueing: preserve flow hash across packet scrubbing
* noise: separate receive counter from send counter

WireGuard now works with fq_codel, cake, and other qdiscs that make use of
skb->hash. This should significantly improve latency spikes related to
buffer bloat. Here's a before and after graph from some data Toke measured:
https://data.zx2c4.com/removal-of-buffer-bloat-in-wireguard.png

* compat: support RHEL 8 as 8.2, drop 8.1 support
* compat: support CentOS 8 explicitly
* compat: RHEL7 backported the skb hash renamings

The usual RHEL churn.

* compat: backport renamed/missing skb hash members

The new support for fq_codel and friends meant more backporting work.

* compat: ip6_dst_lookup_flow was backported to 4.14, 4.9, and 4.4

The main motivation for releasing this now: three stable kernels were released
at the same time, with a patch that necessitated updating in our compat layer.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index b856d82..ce91fbe 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=1.0.20200506
+PKG_VERSION:=1.0.20200520
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=98a99f2b825a82d57a7213e666f1ee4f7cc02bddb09bf4908b4b09447a8f121e
+PKG_HASH:=16e7ae4bef734b243428eea07f3b3c3d4721880c3ea8eb8f98628fd6ae5b77c3
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
