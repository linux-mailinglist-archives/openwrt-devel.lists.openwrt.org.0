Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DBE1B7748
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 15:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+UQtfmaoW5WHC1tQIJvfE7jk/0+3r2oc9ztbSat8W9U=; b=UiH7lNxEh69dRY
	OC8nHf9WOou1ZYGRava3pmWplhRhTTEJyyQps5iMrrqiwYUpH0tZ6S+ahBAPdAhseoMqBlRy1j1Wz
	LyvC4JPQsjAL2ptYh2J7tMih8E9fH9i+c2zHfiXENs9WzLIDvuIuA86I65mWUSQZCK5XebRUijbCN
	5cu2Be+uwr/WYSSosK8A2aS1YVpM/W9JvKYqG1uRrpBNJEnvxShUNtW/2CXMRQJBb+paVogZzxyvo
	Feu5mmAZQRb37VsrHTLZrP8UNBgfJPl3oy6eGSVJIKxDIvwdcfuQgtJDUpPxEnOZaAxXumLQHH+i6
	mfnl3ipLIZTt903JmYzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRycy-0003et-2F; Fri, 24 Apr 2020 13:44:24 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyco-0003dX-VQ
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 13:44:17 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1jRyca-0002x5-Ea
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 15:44:01 +0200
Received: from build.bln.roederer.dhs.org ([192.168.8.5] helo=build)
 by feeble.bln.roederer.dhs.org with smtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1jRyca-00010t-1o
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 15:44:00 +0200
Received: (nullmailer pid 15340 invoked by uid 10000);
 Fri, 24 Apr 2020 13:43:52 -0000
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 24 Apr 2020 15:43:49 +0200
Message-Id: <20200424134349.15293-1-devel-sven@geroedel.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview: This directory can hold configuration-snippets which should
 also included in the backup. Signed-off-by: Sven Roederer
 <devel-sven@geroedel.de>
 --- package/network/services/dnsmasq/Makefile | 3 ++- 1 file changed,
 2 insertions(+), 1 deletion(-) 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_064415_158926_B2C2AD0B 
X-CRM114-Status: UNSURE (   3.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] dnsmasq: add /etc/dnsmasq.d/ to conffiles
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This directory can hold configuration-snippets which should also included in the backup.

Signed-off-by: Sven Roederer <devel-sven@geroedel.de>
---
 package/network/services/dnsmasq/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/network/services/dnsmasq/Makefile b/package/network/services/dnsmasq/Makefile
index d07804bad0..24387ca77a 100644
--- a/package/network/services/dnsmasq/Makefile
+++ b/package/network/services/dnsmasq/Makefile
@@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
 PKG_NAME:=dnsmasq
 PKG_UPSTREAM_VERSION:=2.81
 PKG_VERSION:=$(subst test,~~test,$(subst rc,~rc,$(PKG_UPSTREAM_VERSION)))
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_UPSTREAM_VERSION).tar.xz
 PKG_SOURCE_URL:=http://thekelleys.org.uk/dnsmasq
@@ -89,6 +89,7 @@ endef
 define Package/dnsmasq/conffiles
 /etc/config/dhcp
 /etc/dnsmasq.conf
+/etc/dnsmasq.d/
 endef
 
 define Package/dnsmasq-full/config
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
