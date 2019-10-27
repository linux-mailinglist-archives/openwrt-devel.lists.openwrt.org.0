Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F93E64A6
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 18:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKRGWtR9F4oXVuLqQWwLKaWbESq3EXUrl+jJY882oDM=; b=f0/RbQYxjurcAD
	MkTJ5EQaHXCN7+j/XL7XX0w9pmdAnv0TOpL25Uwao4StpumqdlbjOZv42RzqRS5Ln/hnxzwKeubHB
	WUpdtSJjk30Dc/f+L7YpsAK041XmrN3WSMVaFBYVDYHPfSTbnW/deL8kiOwSHRTA6wsPxcPd90axI
	S/9RzsOWPtfP0WOeKBzqxJQwIUpsKf7Iz3W2b7rBSnLunspa00ZYI2HoKrHOAaV5We0bh63HnfXOW
	ZuY3Iuj+7dgubdUf7Lm8DhsRX3hZ81utmgTKIdm1B6fl/u0Rg0ZKmRg/OuX/xdDxbmhfJUycESLkV
	cDp2//KVHDmnBO1SKbFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmcR-00053q-7H; Sun, 27 Oct 2019 17:46:23 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmbM-00042p-GK
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 17:45:21 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 69F97A3788;
 Sun, 27 Oct 2019 18:45:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 2SQBpB59KTp6; Sun, 27 Oct 2019 18:45:06 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 27 Oct 2019 18:44:35 +0100
Message-Id: <20191027174438.25795-4-hauke@hauke-m.de>
In-Reply-To: <20191027174438.25795-1-hauke@hauke-m.de>
References: <20191027174438.25795-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_104516_772071_AFB44801 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/6] dropbear: Activate PIE by default
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

This increases the binary size by 18% uncompressed and 17% compressed
on MIPS BE.

old:
164,261 /usr/sbin/dropbear
 85,648 dropbear_2019.78-2_mips_24kc.ipk

new:
194,492 /usr/sbin/dropbear
100,309 dropbear_2019.78-2_mips_24kc.ipk

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/services/dropbear/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/network/services/dropbear/Makefile b/package/network/services/dropbear/Makefile
index 63204042f7..fae1c9587d 100644
--- a/package/network/services/dropbear/Makefile
+++ b/package/network/services/dropbear/Makefile
@@ -22,6 +22,7 @@ PKG_LICENSE_FILES:=LICENSE libtomcrypt/LICENSE libtommath/LICENSE
 PKG_CPE_ID:=cpe:/a:matt_johnston:dropbear_ssh_server
 
 PKG_BUILD_PARALLEL:=1
+PKG_ASLR_PIE_REGULAR:=1
 PKG_USE_MIPS16:=0
 PKG_FIXUP:=autoreconf
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
