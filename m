Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E10FE64A1
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 18:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nFMzqMNtyV+eCUWIsH/FNUYEczUPXTRWBi3sBEEkOM=; b=s3t4YpBQfW4l8u
	8eLAF5Hp9dmZw4nUKNrRjHOz06zQll+EIj0gXD9uwHwVMVOEicZt2bYltdUAeRbYOb0GCRxFJg4rk
	roQLhoALiAxkALB6VNqc2UC9kI4oL4Lj8YzNf575PJq3G/tJpihLx83SdinzwMDEBuErlOb3Ss9ub
	mkITcxboP9VrqRO4O+1w3xRo0ovAhVrgkbnBpIdS3uokuRGGG33g8Hfv7BuxMT0gWkdih/+X1JRej
	+JgslCG8jwOXmo85F8IyLhXL5Y7tOWXXMGvTtVAdVsahi3WhgkOTr262rdg0YbJOmosX8Z6ouG5uM
	yoDT3F/MUmItZfB65mog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmbz-0004X7-RG; Sun, 27 Oct 2019 17:45:55 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmbM-00041y-Fb
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 17:45:18 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 3133CA3A3B;
 Sun, 27 Oct 2019 18:45:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id gkZ2575fpQuw; Sun, 27 Oct 2019 18:45:07 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 27 Oct 2019 18:44:36 +0100
Message-Id: <20191027174438.25795-5-hauke@hauke-m.de>
In-Reply-To: <20191027174438.25795-1-hauke@hauke-m.de>
References: <20191027174438.25795-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_104516_692470_428F46E7 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 4/6] hostapd: Activate PIE by default
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, daniel.engberg.lists@pyret.net,
 lynxis@fe80.eu, dave@taht.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This activates PIE ASLR support by default when the regular option is
selected.

This increases the binary size by 26% uncompressed and 16% compressed
on MIPS BE.

old:
460,933 /usr/sbin/wpad
283,891 wpad-basic_2019-08-08-ca8c2bd2-1_mips_24kc.ipk

new:
584,508 /usr/sbin/wpad
330,281 wpad-basic_2019-08-08-ca8c2bd2-1_mips_24kc.ipk

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/services/hostapd/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 4f6420f503..2d383ac629 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -20,6 +20,7 @@ PKG_LICENSE:=BSD-3-Clause
 PKG_CPE_ID:=cpe:/a:w1.fi:hostapd
 
 PKG_BUILD_PARALLEL:=1
+PKG_ASLR_PIE_REGULAR:=1
 
 PKG_CONFIG_DEPENDS:= \
 	CONFIG_PACKAGE_kmod-ath9k \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
