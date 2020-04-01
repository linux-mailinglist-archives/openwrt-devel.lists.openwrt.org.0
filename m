Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B2719B6C1
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 22:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qGzkUrdcRu9w1dOjRTDjiI6tz3Kqi+SbHPrZtRM3C5c=; b=AxvRhnEH0dk9BN
	nfPWuLBnvpcf2jZcmK3Mr+ziZw6EhQXHtqOhbvNMtx+uxU+//kRAQs/eyf0QdkkmaTKgpQLk4MGWz
	N4GwGSavpBrwvFHUkhR9Hb4MoNTNDV9JG/6EOqDS5LprEC1BGa1/i8wG1Cm7EKFT/8JRAL7jhQx4M
	zBiNbocODWozmEvbL+5OoQpLg1kE2P5KQBZ0jFciJ93JK6Gqlr/tJ4bGDN9Fba7PUax9J3y8DBgr1
	Jarf3d2Mg5smm5VeF/GnppZ7yX2SXx0hQrqTjC008aBEz6jWnRovdQweSxWrEZXzTKM+hnB8UMPOx
	VbCQeXyh4VkRkvQABCLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJjfW-0007jx-PA; Wed, 01 Apr 2020 20:08:58 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJjfQ-0007jE-QY
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 20:08:54 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id c3a03f75;
 Wed, 1 Apr 2020 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=sRSRTxkhmiJToANPmmFqfPclTDY=; b=lEOyWjoLYK+Jrc+adSh5
 sH2YLPg3HoByB6LsqEMzTVK/WV+6Kb6RbOhFu0eK/GZU09xyhV4GPmrixV/WidOE
 21OZ95Nh6n0dqbQG4JkofMOlbnze0pxxNU29j4KP2HItAggUdvKDxIR5lrs/Nknl
 xTuD5yxIm1kezG60Kq9IPSG59XgEjpiu9x3xoqxQX3tR5GzxiU4gXcGBz3pmMgBc
 KeB40iZ1q6gDc3eMDCil70t69Ks79AHpEkdLATCuFFuRzdai9NmpjPL4Jek9+FyZ
 a9nnMhAiwNI76DfaRLPUpqEWlmOyFk4n0IZh7UEFp2LXFuiFgvz0qrbsBCFF7+zV
 cA==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 91c4709f
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 1 Apr 2020 20:00:33 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Apr 2020 14:08:42 -0600
Message-Id: <20200401200842.260367-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_130853_079814_51496973 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 1.0.20200401
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

Recent backports to 5.5 and 5.4 broke our compat layer. This release is
to keep things running with the latest upstream stable kernels.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 7e98f0b..2d8a766 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=1.0.20200330
+PKG_VERSION:=1.0.20200401
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=2d57b239605be2ee0e4c2da935ff1a23e9ed8bb3ee692e10ae032ae50f280bef
+PKG_HASH:=7dfb4a8315e1d6ae406ff32d01c496175df558dd65968a19e5222d02c7cfb77a
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
