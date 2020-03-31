Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 617681988E3
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 02:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z3t3UDIEEDdW2vndhG1d/STcvw58lF79FTa99YDlxp4=; b=m2xQl9rdChb86F
	ROxfn/YmNWWNuT/RsETNtct/aA4n9DYR7AFLgCUkRqLhc51yc4lPUht5OEj867P10jC10rftVcp04
	YzF0wuuX2GjTjiPzPvq7sAPbwtb0bSnNtHK2bpS3FlIV9JDKICVNW1IHVKiAjETmQR2N1tQ0ZCC9D
	miAB85oEuiv/3TbMkrPA9UzHZaZW7cv5VNkggChJDr3xR7VW1CW2zYB+Jjvtv1OocP8oE5YEpUj07
	nUJKZdB41QdaOkavaODfk3+Y8gRfKb+aqxDAyrEUYdejBtxzUtfO7FRMwrWs189OXT7zv73zamSYO
	erCj/rd0QH+KfrrtShiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ4iv-0002PD-DV; Tue, 31 Mar 2020 00:25:45 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ4il-0002MP-Kf
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 00:25:37 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id e7ee4266;
 Tue, 31 Mar 2020 00:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=IZjnDGKJwX98ncxE5nml6Bo4QDA=; b=mfCybJGLcioVMl77PKm2
 BeArzVhLQhylyuyZc3/j6kq97FvLDaWIRtLymJB4CBkKQF7Iyll65y/VXdTcDjr/
 Z2ZVi38YPEAYSztP8PIfAPW8fBQnLLhaRFnjLnaZlNXua64nUWE0VsdOKk6Sjnd5
 A0B50ZoufEs1Zr7hPGXZRxspU6C6X7WU9Is9cknB4D5nTsxRor+cw0eF0BovTgqO
 ChIBvwGYJF6KcMNP4eSDlQ7geSOS8GKmy8EeWKfp+nsJXircQsoQM8mY0U1ywaYS
 23FWVavzfK+g5beH6evGoQ9vhkfjBhUoJTFkSjWhFys1m0omCCr4MYvI4w4JVWwK
 Kw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id f9237729
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Tue, 31 Mar 2020 00:17:34 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Mar 2020 18:25:29 -0600
Message-Id: <20200331002529.504184-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_172535_898781_A24E690E 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 1.0.20200330
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

* queueing: backport skb_reset_redirect change from 5.6
* version: bump

This release has only one slight change, to put it closer to the 5.6
codebase, but its main purpose is to bump us to a 1.0.y version number.
Now that WireGuard 1.0.0 has been released for Linux 5.6 [1], we can put
the same number on the backport compat codebase.

When OpenWRT bumps to Linux 5.6, we'll be able to drop this package
entirely, which I look forward to seeing.

[1] https://lists.zx2c4.com/pipermail/wireguard/2020-March/005206.html

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 4007fa5..7e98f0b 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20200318
+PKG_VERSION:=1.0.20200330
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=fa74a8627f731754fbf4ea7d6ae8f571a2cfe8cd4b744a5f165065619cb836a1
+PKG_HASH:=2d57b239605be2ee0e4c2da935ff1a23e9ed8bb3ee692e10ae032ae50f280bef
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
