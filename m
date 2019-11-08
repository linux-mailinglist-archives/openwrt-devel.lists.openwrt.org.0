Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2ADF5356
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 19:14:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTB6DQSWewx410f8e79zXbvNLC9DViJ45mfr8+TQjBQ=; b=QIiV0McPprHZEp
	tSW8WtrLI2GnOSJH3G7iQxnZpyKpjesNlIFzOMsimcB5yA4xy/TEeYGvmp+g3nWAIWpEpPZns4eHH
	O108eU5i2WV7gJcfuX3KcqDqdwtZFeE5a0IBC3e7TdEOEXhXAW+tqLh9XsuECetw4poOhc4bMXNjS
	vlv7qpC1ajHmmuZxoWFyvu/LnPzOq3iOZtnHsfufJPsLVL2QrdWl2HHSfHuPOJ530Vy4jM7sXsb1K
	xHTkaULJ5L4NA6EZIK90nNr/DPK+05W+/ayHacAFs4WTsYem1k+7JVhQYy+OuG6t2regbJ2SVN3sy
	V3uQsP1rI7GFyjSM1Gpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8mM-0006MR-BE; Fri, 08 Nov 2019 18:14:38 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8m2-0006Ch-Nf
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 18:14:20 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MHndY-1ifkDC1w9e-00EuMc; Fri, 08 Nov 2019 19:14:12 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 19:14:04 +0100
Message-Id: <20191108181408.18272-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
References: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:HrURfZPd6NPinYklodVqwJWgBk/JSBYjnXkqFpOyJoFTUAqeRYZ
 3oNynCq7l997AXk2BV8+YWDGRoyJzE2pr4o6YfnNz86v7qOLvMcIsSyYVVhfTWITLoj0JS7
 +w8i49UY+F6hDUYKkbXnzg4XbATsVHwocybAAJ2yC78KZ8gu2NtjOHSpDP8t8MYqMbeWeji
 k1T4usVXaNRuBwsdp7jEA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lJJRw52eyIU=:iwaVwO6U3wuYSgfsMiA5P8
 za9nwfoeP7Q+GVLma5PvR8pfZo+NKeztspEO5QoeY5wiVx5IG2YR6IHlT1PY4s97AbGbfNJHq
 28pkDyWrdk40nlEh1qbBAoJ2x1AGbn01C1eMQUwqCCuQphV/vcIMR2ZzS/K7rezMS9hkNj6Gk
 kLP729+CHxo4WNljAO5frTZMkcSYmfOa+HboTgIDDgEAxXUSuqi/NoRoDdMz0hIbgMVuYrvxs
 q0IID0kDTzn9jXyOGmpZVulOISTs81gl3vXqEQlL6VSxERVSqJLNZA0wMjVoq4d6E/1hXbAze
 z35YXB2vtOABYdavA+whPF6vmTtkCPq+PP4EF27QD6DnX9x0bUQywZsaJD0CXUwLPebcmc/MJ
 Pi6L0LI6fXeijb4hmE6b2e6HQHF0y/47dhlD/M+niq7hkUfPyyuVLUj+QAXvidYkwBnz+YXz8
 WFQcWuADUFl30fZn588DsS6VpPragTEgdv6MJat4TxefIoaMvPmbwNoOcRVwUXM3D/2ytybfJ
 WFlGpWmVmMo3jpYWxVzwkv0id6q04D1zAic5US7d450vSxCK7SBxQO7iDBdChwsK9X3jXkG1M
 kyXOLop3Wg2S+TpxAA7ve0xWfcXMxXQapV0gWsFauVmHk5FppoB17T+T9VqWrTEv3pjt5yIED
 Xkwwsgo3KiptMMpjeeA7vUcH7CNRQ93B6gB3Da/zjK0TxbVaItJC205MJrg9ReeTxM6g9jOZj
 wdsb/sEgUxX5ix96NwFlezmCgX2vgg3tCCnin7bIXawIV8E2A74XkIhmOOkfjbNaoDa40ugYY
 jmVSni9+Q79VRA93+mKmQOvG5OEzKHXXYpRNyV5kdFLNZ+zTQT+DDhxajcprhcTEB0h7fgP60
 s0V288YJeSbo5Lw1w7X94HiCH7atTC5e7oLbwcD3U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_101419_069734_1728F20D 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/5] linux-firmware: add wil6210 firmware
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Robert Marko <robimarko@gmail.com>

This patch adds wil6210 firmware and board files.
Firmware version is not up to date but is only freely
redistributable one I found.
Board file is a generic one so most devices and especially those
for long distance PtP links will require so in a ipq-wifi like way.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 package/firmware/linux-firmware/qca.mk | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/package/firmware/linux-firmware/qca.mk b/package/firmware/linux-firmware/qca.mk
index 23fcc0905a..71b484d5c7 100644
--- a/package/firmware/linux-firmware/qca.mk
+++ b/package/firmware/linux-firmware/qca.mk
@@ -37,3 +37,11 @@ define Package/carl9170-firmware/install
 	$(INSTALL_DATA) $(PKG_BUILD_DIR)/carl9170-1.fw $(1)/lib/firmware
 endef
 $(eval $(call BuildPackage,carl9170-firmware))
+
+Package/wil6210-firmware = $(call Package/firmware-default,wil6210 firmware)
+define Package/wil6210-firmware/install
+	$(INSTALL_DIR) $(1)/lib/firmware
+	$(INSTALL_DATA) $(PKG_BUILD_DIR)/wil6210.fw $(1)/lib/firmware
+	$(INSTALL_DATA) $(PKG_BUILD_DIR)/wil6210.brd $(1)/lib/firmware
+endef
+$(eval $(call BuildPackage,wil6210-firmware))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
