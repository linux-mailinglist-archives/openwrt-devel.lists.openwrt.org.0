Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A11E64A0
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 18:45:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2akEkCqBt78a+fAXqhWmth7lkJtLl7li2UsoNdtJ2rE=; b=X4PY8t903qBiLc
	PbhiR/JcHFmoilNVJsCfN+MfVQBXIg+HeulW7h47XF/Xso9zBo9kmD5LBAnGhSo6mPNzuVnm3GDPb
	WMJm4Btp4EjO+mZKpSDAovxEdvo4uzgW5FhaBlSykGkDDSgPC8xpbBqPJLkISO9litFprECN3KszO
	F7LMwzLQsMol8Cjxq6M+m17jb0qclBqmeqDfuBDzUhfsCTlXuzhZUw34X8Wx82G2CIhvXdHA3BcPD
	ecr80JxxRWorSmPWamETl3rQjOVpGL0sz+15hibCQXuTWmWd1wdtJPvAk4KKxM9SzzzeFqIs402L/
	AK8H367uu3he/Lq3PApQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmbn-0004IO-HH; Sun, 27 Oct 2019 17:45:43 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmbM-000418-GG
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 17:45:18 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 004F8A39F0;
 Sun, 27 Oct 2019 18:45:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id U_Z_rmKAjfXo; Sun, 27 Oct 2019 18:45:04 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 27 Oct 2019 18:44:34 +0100
Message-Id: <20191027174438.25795-3-hauke@hauke-m.de>
In-Reply-To: <20191027174438.25795-1-hauke@hauke-m.de>
References: <20191027174438.25795-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_104516_707170_93B4BA6E 
X-CRM114-Status: GOOD (  10.58  )
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
Subject: [OpenWrt-Devel] [PATCH 2/6] dnsmasq: Activate PIE by default
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

This increases the binary size by 37% uncompressed and 18% compressed
on MIPS BE.

old:
146,933 /usr/sbin/dnsmasq
101,837 dnsmasq_2.80-14_mips_24kc.ipk

new:
202,020 /usr/sbin/dnsmasq
120,577 dnsmasq_2.80-14_mips_24kc.ipk

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/services/dnsmasq/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/network/services/dnsmasq/Makefile b/package/network/services/dnsmasq/Makefile
index dc20ada292..5c114eb1c6 100644
--- a/package/network/services/dnsmasq/Makefile
+++ b/package/network/services/dnsmasq/Makefile
@@ -24,6 +24,7 @@ PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_UPSTR
 
 PKG_INSTALL:=1
 PKG_BUILD_PARALLEL:=1
+PKG_ASLR_PIE_REGULAR:=1
 PKG_CONFIG_DEPENDS:= CONFIG_PACKAGE_dnsmasq_$(BUILD_VARIANT)_dhcp \
 	CONFIG_PACKAGE_dnsmasq_$(BUILD_VARIANT)_dhcpv6 \
 	CONFIG_PACKAGE_dnsmasq_$(BUILD_VARIANT)_dnssec \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
