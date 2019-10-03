Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1174CCAF19
	for <lists+openwrt-devel@lfdr.de>; Thu,  3 Oct 2019 21:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=20vFqOoGZ5+ZVPINIDADt2iQC8FRdwY58Ru8pI8rKYQ=; b=gwah96eM5cJQOe
	LcK1KCSW+uZTzLewugXKES4pw5Qf7FHiO0DAKXve7iW6vSkrTPLfEmJL3Yv+cD25R+VQqlnymf4I2
	+TNgc2VcvQqXg6xWBj+eWFdq4DXwBBZ35wEbEn5ZcTKRFk/Gee5q+37hcsomCeI/NzaHpZUTvMjQT
	e0NDxPam07yDssG9zJL9f13pIsg5bmPI16jawJYFpdasbrSLNM3SdShsiDKugM+VnoBdsR9fCZQlK
	cMOMnMg9zg/n5Pns/TAMbBUL7eDktHn36RrxLNa9STKAgjNKkAlF5TlxG0wvP0wQhdfi6ne0SNCG6
	QbaOPfZ3nozh99inbN9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6h4-0003UM-3d; Thu, 03 Oct 2019 19:23:18 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6gx-0003QD-1r
 for openwrt-devel@lists.openwrt.org; Thu, 03 Oct 2019 19:23:12 +0000
Received: from pepe-notebook.utb.cz (unknown [195.178.92.69])
 by mail.nic.cz (Postfix) with ESMTPSA id B7112140E24
 for <openwrt-devel@lists.openwrt.org>; Thu,  3 Oct 2019 21:23:06 +0200 (CEST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  3 Oct 2019 21:23:00 +0200
Message-Id: <20191003192300.25176-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_122311_257714_BF7D2663 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe.schlehofer[at]gmail.com)
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list 2.0 SPOOFED_FREEMAIL       No description available.
Subject: [OpenWrt-Devel] [PATCH] tools/e2fsprogs: Update to version 1.45.4
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

Fixes CVE-2019-5094

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 tools/e2fsprogs/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/e2fsprogs/Makefile b/tools/e2fsprogs/Makefile
index a4523137ac..c7ccd4478f 100644
--- a/tools/e2fsprogs/Makefile
+++ b/tools/e2fsprogs/Makefile
@@ -9,8 +9,8 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=e2fsprogs
 PKG_CPE_ID:=cpe:/a:e2fsprogs_project:e2fsprogs
-PKG_VERSION:=1.45.3
-PKG_HASH:=90d10066b815e27b0b4875f0d5e396c663e0bf55aa3ca10868978d10c6ffe595
+PKG_VERSION:=1.45.4
+PKG_HASH:=65faf6b590ca1da97440d6446bd11de9e0914b42553740ba5d9d2a796fa0dc02
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
