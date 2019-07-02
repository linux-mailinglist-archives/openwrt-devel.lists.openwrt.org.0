Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DE75CFB2
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 14:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YBsZTzTd6tjgg2x4pL3NyY0KaMy492sT2CtBC5yjBtM=; b=Dnt6fHBDyVvOKW
	myWgu0cLt95a62jAkWIpjI9AQh5w+Ps8UoIrkuhdu3SF2dzYSw/ehxuDB47filoxB+6J0VcIebCaA
	Fg+5tEJMpo3q6SZquBeXCygcp+avkO/chuliljoXhDNlIb2+U7G6W+DTZwo+P5JCQMxYMrv9o7EKG
	O+C1Xe6x9zu34Et0H+ASYyrq3/AADrJdr0KngyP2gqZpSiY8FQZg2uLAYxbRE5gecKFnTTpOAhMY1
	a7rn2RVmOug8S5WKlZ/pG/lbCF2fjEP1AUqwXAHuDyc1ctJkuDYfPrN2TB6GQah1CzG7LfwWQvPjH
	mRGMUyp0iKPqL+lkSqpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiI7v-0002rl-H4; Tue, 02 Jul 2019 12:43:15 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiI7d-0002r9-OZ
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 12:42:59 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id f9469663;
 Tue, 2 Jul 2019 12:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=D2OOnWmecHoLm7sanKLGmeNGTM0=; b=sua5DKj9qZzUM2mlKdt3
 a3JKGD15AynlO8mxEPX7tldEoC6FJHNdlpAaHXH7yASfmK26iGl174G/e8pqTTae
 Zr36gtXC7wd0lBp2L2WNZCQ1VIx+C1xi6PKGeB6WtY2SFCfjnuIJ1DfAk/3zoHcA
 Fk/qLFnOAidNv57QhanKgKC74JZvkM2Os1JWreVA/svDaOtt27/+mcDQv9oNqlpA
 9iOExEI2wyrI0NideGk7ANDBFPqiY5qSHAcNt4g1mTn0/q9wAjmDtlQ/mIseEFeG
 T31ocAxY+xjxY0yaLpm7IX6vyESOxNhpYveG75Rm675dBIAjr6sYmqDRGR34yogj
 Zg==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id ef6d33fa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Tue, 2 Jul 2019 12:08:04 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  2 Jul 2019 14:42:50 +0200
Message-Id: <20190702124250.11079-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_054257_942407_A33F23E4 
X-CRM114-Status: UNSURE (   7.29  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20190702
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

* curve25519: not all linkers support bmi2 and adx

This should allow WireGuard to build on older toolchains.

* global: switch to coarse ktime

Our prior use of fast ktime before meant that sometimes, depending on how
broken the motherboard was, we'd wind up calling into the HPET slow path. Here
we move to coarse ktime which is always super speedy. In the process we had to
fix the resolution of the clock, as well as introduce a new interface for it,
landing in 5.3. Older kernels fall back to a fast-enough mechanism based on
jiffies.

https://lore.kernel.org/lkml/tip-e3ff9c3678b4d80e22d2557b68726174578eaf52@git.kernel.org/
https://lore.kernel.org/lkml/20190621203249.3909-3-Jason@zx2c4.com/

* netlink: cast struct over cb->args for type safety

This follow recent upstream changes such as:

https://lore.kernel.org/lkml/20190628144022.31376-1-Jason@zx2c4.com/

* peer: use LIST_HEAD macro

Style nit.

* receive: queue dead packets to napi queue instead of empty rx_queue

This mitigates a WARN_ON being triggered by the workqueue code. It was quite
hard to trigger, except sporadically, or reliably with a PC Engines ALIX, an
extremely slow board with an AMD LX800 that Ryan Whelan of Axatrax was kind
enough to mail me.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 310d559..0516769 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20190601
+PKG_VERSION:=0.0.20190702
 PKG_RELEASE:=1
 
 PKG_SOURCE:=WireGuard-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/WireGuard/snapshot/
-PKG_HASH:=7528461824a0174bd7d4f15e68d8f0ce9a8ea318411502b80759438e8ef65568
+PKG_HASH:=1a1311bc71abd47a72c47d918be3bacc486b3de90734661858af75cc990dbaac
 
 PKG_LICENSE:=GPL-2.0 Apache-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
