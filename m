Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4BC169115
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 18:55:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8vvEskIbkGkd+aNQTJyq1u9Tfg2s6STjaT4nxN3qJd0=; b=djSkfbO8TjqlO8
	eSCKId+aGOnbQE/3UnnqFbOltz9+Jo6+K+/7HYQOBl5EB/OhT3lYLzRD5QMfxflbnYhrj2G1qve/k
	cuIZeAy0uhzhA2/8cKwIxknhKMISSXDntxKrxLZaJy8Q613Zo+eH6D1g85AVJ0GLc5jXD7QpGcLI7
	B/btVJ2NRrI6ZXN1ejjS4lf8pQshIXeWeNY721xo86VQtUywBxllo+yqIwpB1wWecOM78Iuz5gyWt
	J3iPJmFVN3QUcFW8WAEc1477zC5IPi/37DpXF56D/VJn2HVRHP24DxGy8ruugQZ0ppjheHXJb2b+3
	V6PqEONV+PIkG81WbamQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Yzn-0002rM-Dn; Sat, 22 Feb 2020 17:55:19 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Yzc-0002U8-S1
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 17:55:10 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 48Pwvn3r1dzKmg3;
 Sat, 22 Feb 2020 18:55:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id rsK6qulEKJpl; Sat, 22 Feb 2020 18:54:57 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 18:54:40 +0100
Message-Id: <20200222175440.21837-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_095509_060865_CFB945B2 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.152 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] rtl8812au-ct: Update to version 2020-01-12
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This fixes compile problems with kernel 5.4

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---

We need this update to make this driver compile against kernel 5.4,
but I do not have the hardware to run time test this change.

 package/kernel/rtl8812au-ct/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/kernel/rtl8812au-ct/Makefile b/package/kernel/rtl8812au-ct/Makefile
index b7f6d225b1..aac754de7f 100644
--- a/package/kernel/rtl8812au-ct/Makefile
+++ b/package/kernel/rtl8812au-ct/Makefile
@@ -7,10 +7,10 @@ PKG_LICENSE:=GPLv2
 PKG_LICENSE_FILES:=
 
 PKG_SOURCE_URL:=https://github.com/greearb/rtl8812AU_8821AU_linux.git
-PKG_MIRROR_HASH:=42b32c56cf31bdf3c9cd4e304c9aac761b623c8737d8c57518117acdc5a84cfe
+PKG_MIRROR_HASH:=fa689e034cad9e4683ea784b8f3cb590492ab5c68e8babd492a4e8bf2de3b114
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2018-11-16
-PKG_SOURCE_VERSION:=661268fd174d4a74834c82d7d3987b0a560e6c57
+PKG_SOURCE_DATE:=2020-01-12
+PKG_SOURCE_VERSION:=e0d586aa93cb8687dd7dc0e593b6a820df2d6e1d
 
 PKG_MAINTAINER:=Ben Greear <greearb@candelatech.com>
 PKG_BUILD_PARALLEL:=1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
