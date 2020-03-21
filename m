Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7134218DD95
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 03:13:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5buNhdVdyzLWisER4pknWDNYGuBO5KhqwfYHJ2cTcJU=; b=qG2jTPjqgpl56y
	tXyw0yZfS4h/99oESZPw6qA8t88I0jPZMqbuIUEtSG4Q1uOpPPLf35cklS41v7nJ1cbFZqrGXNnhn
	o3HFWPrcD9fBEllQrYtVZOX0fPVa0GA6ioFEXJXHXQ33gaIROYDDmSCsxAlaK2BylRXHYFOrXW3J1
	ffC92fq2wuSELdvf2zSWJLrWKFbI4JtBkR9pAN29OTg9qTu0pm6cohfAPaIODcyb9NZmxZHC8YaAf
	Uovq6OiU0RAnfZI9p98R7P3l3lgiazqUhdvCMrb7M5vrhbBgzlQM5mzYxXlpSb11vUPBqo8cgBGQV
	NYRlqaAEiZl92DK+E6FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFTdO-0007WQ-DJ; Sat, 21 Mar 2020 02:13:10 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFTdC-0007V9-FS
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 02:13:00 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id f047b065;
 Sat, 21 Mar 2020 02:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=0ODWZ2w/cgcTZYiHRfV3V+5wlQw=; b=jDwlGWxEacb4tbCYtOSd
 fXi3DCmLXEIXf/8yqZLaz1c9VIJDZpeOZxSTsWjLLcV+9TjtvLKJBFqlQp+3xrD2
 O0g58UbSVXsbyS9WUe/wimYzElZ3WSSwVQBMjLsIGsm2hR8oILF6QBk4wB6Anngq
 AIbLWpoZVB4+qXd8OLtP6bA9aiIjgLDMThb7E0GDElyaPE0vkW2yzil4t9FNXSTm
 AQCXKuav8qZtHB44X3S0LPUmwjKmbzeK6S+8YVdcjT+3NW3R8ArEC/KLpfUjy3XY
 tzBf+1L1msTGtd4eW+IeiKUENAHse2xCsgFbeIY8YBZkwlvkmWOUJMMiOGIATraP
 uQ==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 87c7f425
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Sat, 21 Mar 2020 02:06:16 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 20:12:53 -0600
Message-Id: <20200321021253.455419-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_191258_665608_940AA596 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20200318
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

WireGuard had a brief professional security audit. The auditors didn't find
any vulnerabilities, but they did suggest one defense-in-depth suggestion to
protect against potential API misuse down the road, mentioned below. This
compat snapshot corresponds with the patches I just pushed to Dave for
5.6-rc7.

* curve25519-x86_64: avoid use of r12

This buys us 100 extra cycles, which isn't much, but it winds up being even
faster on PaX kernels, which use r12 as a RAP register.

* wireguard: queueing: account for skb->protocol==0

This is the defense-in-depth change. We deal with skb->protocol==0 just fine,
but the advice to deal explicitly with it seems like a good idea.

* receive: remove dead code from default packet type case

A default case of a particular switch statement should never be hit, so
instead of printing a pretty debug message there, we full-on WARN(), so that
we get bug reports.

* noise: error out precomputed DH during handshake rather than config

All peer keys will now be addable, even if they're low order. However, no
handshake messages will be produced successfully. This is a more consistent
behavior with other low order keys, where the handshake just won't complete if
they're being used anywhere.

* send: use normaler alignment formula from upstream

We're trying to keep a minimal delta with upstream for the compat backport.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 231f1f4..4007fa5 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20200215
+PKG_VERSION:=0.0.20200318
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=0def6f3608ec06f6dfc454aa5281a7c38b06ff27096cb341448d20602da4e923
+PKG_HASH:=fa74a8627f731754fbf4ea7d6ae8f571a2cfe8cd4b744a5f165065619cb836a1
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
