Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85847E64AC
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 18:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvTs9uWrUbTDYEC4A/BxaDaYjhWbh3cIq8I+0VZZW5E=; b=gZzpW75N3f8/St
	fDPQUKIoltmOktNDmDXIJ+m/wLP5USgYLXRMLuBjteiSDSPIxPRTfRsRYzvGvbaU6Wjo6Cgoe0+aa
	p2XpUkZkorIA0diQOulomP4ii0rwJxjQSQla80UC/eNI3Ax1VeoD/EYT8vI/AtuCfFwn5kscO1FCX
	/Zyxu3LIpz+G2g+Kw0ZoSYbU/ZwOK3xpzNFNsywFeqgWHu0wSra4A68Lf8PT3xGdCCNsqij1RGUh4
	5cZmYSzBX7dIXFwannJQwvFj995nQvQWk3cOfehD0aPXyfqrBTN3o/T4n79EyjKIO/+eXMKa88rzp
	JVrhGa4aNMXt27PYGg2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmd0-0005iJ-Fu; Sun, 27 Oct 2019 17:46:58 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmbQ-00048F-Nd
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 17:45:23 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 20CCAA1F19;
 Sun, 27 Oct 2019 18:45:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id MftIDGqpMe4e; Sun, 27 Oct 2019 18:45:07 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 27 Oct 2019 18:44:37 +0100
Message-Id: <20191027174438.25795-6-hauke@hauke-m.de>
In-Reply-To: <20191027174438.25795-1-hauke@hauke-m.de>
References: <20191027174438.25795-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_104522_314119_92F78D0D 
X-CRM114-Status: UNSURE (   9.26  )
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
Subject: [OpenWrt-Devel] [PATCH 5/6] uhttpd: Activate PIE by default
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

This increases the binary size by 39% uncompressed and 21% compressed
on MIPS BE.

old:
33,189 /usr/sbin/uhttpd
23,016 uhttpd_2019-08-17-6b03f960-4_mips_24kc.ipk

new:
46,212 /usr/sbin/uhttpd
27,979 uhttpd_2019-08-17-6b03f960-4_mips_24kc.ipk

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/services/uhttpd/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/network/services/uhttpd/Makefile b/package/network/services/uhttpd/Makefile
index 85b7be7607..a9a7ae769f 100644
--- a/package/network/services/uhttpd/Makefile
+++ b/package/network/services/uhttpd/Makefile
@@ -18,6 +18,7 @@ PKG_MIRROR_HASH:=4df96054a4fce659e6c849feae7850d542b37ad5caffc1485b7a63c7c2764cb
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 PKG_LICENSE:=ISC
 
+PKG_ASLR_PIE_REGULAR:=1
 PKG_BUILD_DEPENDS = ustream-ssl
 PKG_CONFIG_DEPENDS:= CONFIG_uhttpd_lua
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
