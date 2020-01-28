Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6D014BD54
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 16:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TwJSQPaRS2QTr8JaMO5UMeaZykvqTZqWwWnUq0441H8=; b=VUvLrDCjX8eJ0q
	AiHLTLT9bVnb5M5VYTpvkV+5cpWfX8Jtpb7K4sLUJ8w7cE6epmP0UiRVerz3lSDALwnJSdd8YzhwP
	xmxXrP/S3t6M9kr6KOtnOsdN9Y3WMKO6CXalYbfoyyHfsnNd0tA3HPinv0xSW39204SP9uwIHJa+7
	mw1g3x1FCXTYn/ZVT3l4JiBFu7CY1oSNi4fZgvwB8k7yH0GI8i0/enayczvjjpnpc7JkH3/2yUgaw
	DQRpmo1NEMU8ItrO1F+5oHgztXlNGcAfxBPlkx3xycWUMOTy5SYAhWBHG0YOkxTr+BWUqgRrHsD2G
	1Hx1NqgHao+wTQSHvfAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTDC-0005pE-VJ; Tue, 28 Jan 2020 15:55:34 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTD2-0005ob-1v
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 15:55:26 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 03a42462;
 Tue, 28 Jan 2020 14:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=suh2Ya7hOeWqyPm2KIvC4sna5b4=; b=M1a5vSbE33IZbqV7OYCR
 0mbjKpH9oVx+LLPH7q0m1leqOiGZ2baViMBHbXvtq8rk4ld+n5t2jZIjc98NyQjD
 fLE7YqBCzKM3Nq8CUdfAbmGw3FUSEdQEGVWLkt4pkybqo8aGDoIzbyHK9UZs2OV/
 YbqfC62Iw5A+x9+JGDmJ+Ajipwh2JZ+ekcgEmERQfzONgnPbBvMQqL7dCEgKHVDE
 AvmLVshVXOiTDC2/+rxjxM21vZogXF5cVvNhn4yIrtSxMF4wwVUsoXI05PVpj/m0
 QnNcH/Ep7AivjPTHhZu/I9f+da/AGU+ul63ij9Vn9ydECUq6Wm3jxn07dbgTyK3y
 Lw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 0e06743f
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Tue, 28 Jan 2020 14:53:27 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 28 Jan 2020 16:55:16 +0100
Message-Id: <20200128155516.82047-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_075524_451236_2CA1E3C3 
X-CRM114-Status: UNSURE (   7.52  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20200128
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

This fixes a few small oversights for the 5.5 compat layer.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 7f0827a..435c50e 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20200121
+PKG_VERSION:=0.0.20200128
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=7726c2994d11913c4543fd3dc83636f7ce573ca689b15e11b83e980acc04422b
+PKG_HASH:=8610c6d8712cfd885f50b1a8c572518edf318c094d68491ea218bb50566a9a8a
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
