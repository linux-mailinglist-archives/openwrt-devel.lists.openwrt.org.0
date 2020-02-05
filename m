Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8A615322F
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 14:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LtNMTto1zq3tX/w0gIuCHPQQdUPsV5ksgk3ZabhfBrE=; b=ebfDjFoHSxyOX1
	KC3OEZsQVscgzMpSrGZDb0H6UvVFQ9wWek5UsoM22nnyAaQsC7eIDuHASbAj0l13g0U9LnMGwD9vc
	6Gzv4LFPtDJqrVpi/R3B5s1l3OOWVwxPrOLAmpJKSEB7eOYf7Qfq8YGlirTOFTm2KyuGLNP3gY/LQ
	1HBIJ7I0vkOpJ6mzcp0wb3Bk98bUXtO9I0duKWJYoQmZvEQjWqfqSKtrSvYk6N6o6dpvkvGzdWiCA
	Yuahlqj+dUgOH63aZ3Wp7VYjYvyuZGc44QJYTCguQl6JwPR17DtAENmx0hSDV2wT1cnZn+Abu9m6g
	hfUBxtQ9nW5Wv6CPM7OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izL1D-0008A4-K6; Wed, 05 Feb 2020 13:47:03 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izL16-00089Q-PF
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 13:46:58 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 603ee6ae;
 Wed, 5 Feb 2020 13:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=LTJ0y7xvzQubxpmBfW+gX5n4hWk=; b=1E4zj01ih2eXwd29LjJN
 0BgrgTDb49sakuXbdC3jy2CvEOychnPzNWEughtd3Nnua+KkxYvFqNQjvNR8tOiH
 dHTnRGaG6Y9nAj3nRR1kcE8l4E03mZFQpYXdHuVFKlSUZo7h4ptdiuMyf1CmOgka
 ruLQVIa6Iqm04/w5jfkyhQ6WXlV4s3RFWKcwT6G/SFTak2G8pfnxFmPG5vl2w2nv
 FWCYXeAU1Awcwen0LjJUBxNOvVJE06CFitivdRedg6H8ySWjUMcUu7OlL147/Stx
 cMhfYXxMXlMB148Yposi9q4jsQ4PN8LBSjOBBKLh9y09nmUlDhCvIWaIYg5jMUkb
 5Q==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 52ccfdbe
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 5 Feb 2020 13:45:54 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Feb 2020 14:46:46 +0100
Message-Id: <20200205134646.85403-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_054657_037740_6999C70D 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20200205
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

* compat: support building for RHEL-8.2
* compat: remove RHEL-7.6 workaround

Bleeding edge RHEL users should be content now (which includes the actual
RedHat employees I've been talking to about getting this into the RHEL kernel
itself). Also, we remove old hacks for versions we no longer support anyway.

* allowedips: remove previously added list item when OOM fail
* noise: reject peers with low order public keys

With this now being upstream, we benefit from increased fuzzing coverage of
the code, uncovering these two bugs.

* netns: ensure non-addition of peers with failed precomputation
* netns: tie socket waiting to target pid

An added test to our test suite for the above and a small fix for high-load CI
scenarios.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 435c50e..6f9ae77 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20200128
+PKG_VERSION:=0.0.20200205
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=8610c6d8712cfd885f50b1a8c572518edf318c094d68491ea218bb50566a9a8a
+PKG_HASH:=9669e165fc7252cab7f908ba57f160f6d57539b7cc81180f260cb675d2fd362b
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
