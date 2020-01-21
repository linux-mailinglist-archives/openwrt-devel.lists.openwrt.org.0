Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F9D1440BB
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 16:43:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oYXb9Wk+eLJsRQHC2xZXSG6e39m43igHB675gn+/46s=; b=eTbs/zWfY0BW1u
	F6TEaukZLA8wimHEhTQw6bYhmY/ncWA8YTWRIMcEtTQy4b3xL1vBtC6AJ6MPEVJjf1LCAqcjNdBGV
	d092dU+fEogCH0u4hiHoiNjCJ8zBU6TPmAMWvOI2yqJHhH9wMsWVhVBd21cj1ZHKU3F9WUWf+7SSJ
	AwtLp7h8aPJAtZSdJW+oQBnE4qOzRQWBqegHeHLLVrq4N+FjiL9Ui1q72OHoYRvKZYJ5zREmnU5T/
	OFSM7K4Uk2p0H7SiXDSFAVHLnihi4o3vj2YgYKKKUppDuAKhpPbjmQq/znsmsYLmdSMDniaKQt/Mr
	PRDNS7MsCHH3LjETEh3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvgW-0002F3-Fg; Tue, 21 Jan 2020 15:43:20 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvgI-0002EH-2X
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 15:43:11 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id e396147c;
 Tue, 21 Jan 2020 14:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=AyG0NUrmN+uzvSRPhLADIRr3LuE=; b=1RFL91ysKd5adrQRGntu
 jdv2GvyiRmN12aHQuZkee41C8WNegZH2c7bllptO7uN3Rp50gika7T+/x+nfa0q9
 EZNS1xHUnvfDKrRThB8nR62gw2Mq4YSsfCWJxLQmt9lFByxefo+QY7fJneeFJ4yb
 qb2HkDDyeN4VkverP8DR7KCK5JKmcCys/qUtSPFRO9a+Si9ME9nTwEHE7g1Nx6Rw
 7xfu9bXUgpFKSy5MWX0s7JhIhQxM5TisdH+wP/O6k2yUyt57uuLVe+aaU99FgCPz
 m6bln9iGt4Ml2kkf+1IAMgCJZrCSlQ1iXNXQ34snp24Xbwth1++NupfSLdPZEYt8
 Iw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 0320e8be
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Tue, 21 Jan 2020 14:42:04 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 16:42:57 +0100
Message-Id: <20200121154258.1165421-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_074306_328889_1C88E3E1 
X-CRM114-Status: GOOD (  11.37  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/2] wireguard: bump to 0.0.20200121
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

* Makefile: strip prefixed v from version.h

This fixes a mistake in dmesg output and when parsing the sysfs entry in the
filesystem.

* device: skb_list_walk_safe moved upstream

This is a 5.6 change, which we won't support here, but it does make the code
cleaner, so we make this change to keep things in sync.

* curve25519: x86_64: replace with formally verified implementation

This comes from INRIA's HACL*/Vale. It implements the same algorithm and
implementation strategy as the code it replaces, only this code has been
formally verified, sans the base point multiplication, which uses code
similar to prior, only it uses the formally verified field arithmetic
alongside reproducable ladder generation steps. This doesn't have a
pure-bmi2 version, which means haswell no longer benefits, but the
increased (doubled) code complexity is not worth it for a single
generation of chips that's already old.

Performance-wise, this is around 1% slower on older microarchitectures,
and slightly faster on newer microarchitectures, mainly 10nm ones or
backports of 10nm to 14nm. This implementation is "everest" below:

Xeon E5-2680 v4 (Broadwell)

armfazh: 133340 cycles per call
everest: 133436 cycles per call

Xeon Gold 5120 (Sky Lake Server)

armfazh: 112636 cycles per call
everest: 113906 cycles per call

Core i5-6300U (Sky Lake Client)

armfazh: 116810 cycles per call
everest: 117916 cycles per call

Core i7-7600U (Kaby Lake)

armfazh: 119523 cycles per call
everest: 119040 cycles per call

Core i7-8750H (Coffee Lake)

armfazh: 113914 cycles per call
everest: 113650 cycles per call

Core i9-9880H (Coffee Lake Refresh)

armfazh: 112616 cycles per call
everest: 114082 cycles per call

Core i3-8121U (Cannon Lake)

armfazh: 113202 cycles per call
everest: 111382 cycles per call

Core i7-8265U (Whiskey Lake)

armfazh: 127307 cycles per call
everest: 127697 cycles per call

Core i7-8550U (Kaby Lake Refresh)

armfazh: 127522 cycles per call
everest: 127083 cycles per call

Xeon Platinum 8275CL (Cascade Lake)

armfazh: 114380 cycles per call
everest: 114656 cycles per call

Achieving these kind of results with formally verified code is quite
remarkable, especialy considering that performance is favorable for
newer chips.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 9593c1d..7f0827a 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20200105
+PKG_VERSION:=0.0.20200121
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=9f12f68e96f6865325995c38213e09b05751cd1ef03e0bbc9f1bdc3e5680b337
+PKG_HASH:=7726c2994d11913c4543fd3dc83636f7ce573ca689b15e11b83e980acc04422b
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
