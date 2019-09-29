Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B9DC1411
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Sep 2019 11:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pqzikTqWhncDPM3SKGTLjLO7HgMPltSUvyebyVk6XU0=; b=OtLp+M9R+BGohl
	HAECNmuWkw+5RWaqVKYPAoij6RkfEZGe+HLN7CCb52HA+eljHqK1ycDmqQ5f0hZrGLJsFsJ5FEDMZ
	fUb0AG/fSAw3qEVo+rbx/tv1kjh0tTqGMIhyAJa7Z3AY3wILvNyOY0HQsqs6RbTSlj9EtQMk2HBmb
	KMjcJVuyn39HSjoAp3iomWZxxS6Fy+PrF81AuiQxQusM0rDAzayS+Fc9XSn94FWY312MrV8BOygcq
	DgtKdnyfj2N+uFoVvKsprdnyXuVd6zhu6h647s5lxiE3AwJb9Ud4IitgVbvcKDZqY0XapsOfbjFQm
	fS7DigcXNeLww2hBaJDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEVPP-0008Pi-Kw; Sun, 29 Sep 2019 09:22:27 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEVPJ-0008PL-R0
 for openwrt-devel@lists.openwrt.org; Sun, 29 Sep 2019 09:22:23 +0000
Received: from pepe-notebook.office.nic.cz (unknown
 [IPv6:2001:1488:fffe:6:ca6:b807:8dd:b116])
 by mail.nic.cz (Postfix) with ESMTPSA id D4AA9140C34
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Sep 2019 11:22:17 +0200 (CEST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Sep 2019 11:21:29 +0200
Message-Id: <20190929092129.3792-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_022222_024609_3BB53227 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe.schlehofer[at]gmail.com)
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list 2.0 SPOOFED_FREEMAIL       No description available.
Subject: [OpenWrt-Devel] [PATCH] expat: Update to version 2.2.9
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

Fixes CVE-2019-15903

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 tools/expat/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/expat/Makefile b/tools/expat/Makefile
index 4afcb5e923..de7f2a0deb 100644
--- a/tools/expat/Makefile
+++ b/tools/expat/Makefile
@@ -9,10 +9,10 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=expat
 PKG_CPE_ID:=cpe:/a:libexpat:expat
-PKG_VERSION:=2.2.7
+PKG_VERSION:=2.2.9
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
-PKG_HASH:=cbc9102f4a31a8dafd42d642e9a3aa31e79a0aedaa1f6efd2795ebc83174ec18
+PKG_HASH:=f1063084dc4302a427dabcca499c8312b3a32a29b7d2506653ecc8f950a9a237
 PKG_SOURCE_URL:=@SF/expat
 
 HOST_BUILD_PARALLEL:=1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
