Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A76718DD94
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 03:13:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uyeZytYVjcNBOnRwkyz71fsYLMM1ZZYyD/d7SNlCxqE=; b=SMoLJ8tOea0dgY
	FfVddm0NZ8ryzDc+JDFuvHaWTIoFzJGi00cMbjjvd+Aqv/ERCv8hYfMs1q62v6kv4q83ydMkSg7va
	wL8twQmukYinqrrp46YPIRvb+9hx6vrFh09kt91Np5WtDXFwswEzTPyqX9z8erf2xbhVSz1lSAAaq
	FHTgToKcWHDvCzVIJa4hWYt4s+HinCPY6K1wcNfzZyzqQAvt5Pjk4kwQ8suFlIIz4wOapFOR9n8js
	qJC2R+jPDKhzZCTyx+O0fNu2hV2gAnIGbDoobgnPJToHHAJCpmGmUo30gr9wbssvkPAI09GjvlNUJ
	z+e5+f9PgbZC2k+5amXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFTd0-0007FW-Ow; Sat, 21 Mar 2020 02:12:46 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFTcr-0007F1-RE
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 02:12:39 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 062431e8;
 Sat, 21 Mar 2020 02:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=FRntvVS5Jikt+wOfl54d8O2CbaU=; b=SBgGtPSk64ZCOq/j6oxW
 LyCgm6eGzxZapcBaYIfd/+AdnL795g5UOwX5p46QuSAp6wXGQevuHyKBCRQtm3kX
 s4O28NIrDPZ9vNQjPQ1Z5NNhR1QR7RHcZJ8dbdCrgGBLZHkNcI1oPRm3+aXc6R8d
 Ro93DYmFcVmqo8RVYiBhw/a5Sf83SIxokzrPZLY9Ad+d6Qfloo4kDmEcY2vyZe6t
 SP/+mOc7Jpuyzkw7ASofeQ/7d1hiYbZKKiK5U1RAb4eanL7xxDAL3MV2jsSvctQp
 rr4Q4k6HOuPD2L4TW5CLHCRdOGYYguo1lSfjGVixvXAB2mcxfMn1t+efQUFmeELs
 Rg==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 582c9304
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Sat, 21 Mar 2020 02:05:44 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 20:12:17 -0600
Message-Id: <20200321021217.455289-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_191238_103525_1E5AA1C0 
X-CRM114-Status: UNSURE (   7.05  )
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
Subject: [OpenWrt-Devel] [PATCH] wireguard-tools: bump to 1.0.20200319
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

* netlink: initialize mostly unused field
* curve25519: squelch warnings on clang

Code quality improvements.

* man: fix grammar in wg(8) and wg-quick(8)
* man: backlink wg-quick(8) in wg(8)
* man: add a warning to the SaveConfig description

Man page improvements. We hope to rewrite our man pages in mdocml at some
point soon.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/utils/wireguard-tools/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/utils/wireguard-tools/Makefile b/package/network/utils/wireguard-tools/Makefile
index b2b71ce..5493295 100644
--- a/package/network/utils/wireguard-tools/Makefile
+++ b/package/network/utils/wireguard-tools/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard-tools
 
-PKG_VERSION:=1.0.20200206
+PKG_VERSION:=1.0.20200319
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-tools-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-tools/snapshot/
-PKG_HASH:=f5207248c6a3c3e3bfc9ab30b91c1897b00802ed861e1f9faaed873366078c64
+PKG_HASH:=757ed31d4d48d5fd7853bfd9bfa6a3a1b53c24a94fe617439948784a2c0ed987
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
