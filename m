Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D746515FA31
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Feb 2020 00:05:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cF9oLcIVaj/qIfx8WNUBq63c8MJHO/cRjGbhB8k63OY=; b=RSkoXprWRo/EZT
	EscbmNpY3VReN4UisJhCdV73fMu/8p5UWD1TQzK1pFMgnnbiN55qXK7lP65oubZWcE01qLmfmowRT
	cygI6XMqj6MFEr27jFQXyL/6297uceWgdqsSf0sl7EtYYCcgFo46mGfOVY445bhP0LDtQUf7iz/Y/
	49E/R85oHA5qBgfstiRt40rrurFpd2ZdPCX0u1hGUQ9RgNi2Atl//3f2k5kLRmIQyEGa3xUBYOcbA
	kZkV7BoWBo3GIK5z5jd3XfNxNaDKTLt+hJfz3fM1al4RwL0KC+5hFNsDhN3xbRVxCtaUAuyD1Ctoc
	uu4LI2F4tuBfgSdqQxdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2k1f-0002Lq-6t; Fri, 14 Feb 2020 23:05:35 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2k1W-0002KZ-VN
 for openwrt-devel@lists.openwrt.org; Fri, 14 Feb 2020 23:05:28 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id e2295e50;
 Fri, 14 Feb 2020 23:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=ElGKX9rL28z/P5vpA19P80EILKA=; b=PriXNXeCwVD5WmsQ6s/E
 UFAeKyiaEZXJHi94eVrmmeo8BuyZDwaYZ7mxRuLKSHH2N0ADkTHr0ek+lpWwIyV0
 phsNmTizSRku8Spjx2wobbwAEsxNz6KdziZ9Km84y7PFEbanmWXoNjrcPua0ceNr
 SXYaQTleyBIv43m7D7zIC83uA8W7CNlYAzCHGZ68WYZufTm5xFpqvKfIsh4VfLPN
 SbZrFojwoe8UEEHaKGhKDrJzZm7YWGxbcxf3fZO2ptdUD995994D6WTIocKk3oBX
 Vsd8jQpy6/kVEtClIzGrT4+m17w0BqXcR+luBsp3kMJf/w82tjTO4tBNiZDJdzs4
 yw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id bcdad01a
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 14 Feb 2020 23:03:09 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Feb 2020 00:05:17 +0100
Message-Id: <20200214230517.75654-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_150527_154200_A6E77511 
X-CRM114-Status: UNSURE (   7.75  )
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
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20200215
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

* send: cleanup skb padding calculation
* socket: remove useless synchronize_net

Sorry for the back-to-back releases. This fixes a regression spotted by Eric
Dumazet.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 6f9ae77..231f1f4 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20200205
+PKG_VERSION:=0.0.20200215
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=9669e165fc7252cab7f908ba57f160f6d57539b7cc81180f260cb675d2fd362b
+PKG_HASH:=0def6f3608ec06f6dfc454aa5281a7c38b06ff27096cb341448d20602da4e923
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
