Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1289B12DE6A
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 10:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b7rPEwWjtK4x3ORNPQoz6y5ts7IXxNS1twkyg/hpqtI=; b=dJDlOs2vyp5ZmD
	nEZ1BwUbxcK1ytvRfD8TPF4GkH0pBTFXmvLdgGcl/+8j5S25YT8P4RtYhTn4uorCynz6Fs4oh7waA
	uJb8mNJbc0c+qgdBr8J7e739x7Ywcrx4P5bh0PFZK7ZxpoAfDtG6PEFLX/HFnRNy64/9jsY6vwLUh
	fcHEXuyxC2CjbbmRUZHNktM8jmhFZpLESi/d2wTvDverzn7eKuChrAsAJdA0N1QXgj5C7X1DjpF2a
	LO/wkjrNk13oOdLMk01jOIkUDLrNdXh2HYGunyDWKXQzQfDyWrVxlAFW8D2DddtInWu/M4cLXtx79
	PVlc67Pzu2Hp+FqNQEFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imajb-0004bB-JB; Wed, 01 Jan 2020 09:56:11 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imajU-0004ai-Tq
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 09:56:06 +0000
Received: from localhost.localdomain (ip-78-102-138-110.net.upcbroadband.cz
 [78.102.138.110])
 by mail.nic.cz (Postfix) with ESMTPSA id E4F58140E8B;
 Wed,  1 Jan 2020 10:55:59 +0100 (CET)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Jan 2020 10:52:11 +0100
Message-Id: <20200101095210.7746-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at mail
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_015605_118460_BA2D1753 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe.schlehofer[at]gmail.com)
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list 2.0 SPOOFED_FREEMAIL       No description available.
Subject: [OpenWrt-Devel] [PATCH] [18.06] openssl: update to version 1.0.2u
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

Fixes CVE-2019-1551 (rsaz_512_sqr overflow bug) on x86_x64

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 package/libs/openssl/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index 50939568c8..d066d4bb0e 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openssl
 PKG_BASE:=1.0.2
-PKG_BUGFIX:=t
+PKG_BUGFIX:=u
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
 PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
@@ -24,7 +24,7 @@ PKG_SOURCE_URL:= \
 	http://gd.tuwien.ac.at/infosys/security/openssl/source/ \
 	http://www.openssl.org/source/ \
 	http://www.openssl.org/source/old/$(PKG_BASE)/
-PKG_HASH:=14cb464efe7ac6b54799b34456bd69558a749a4931ecfd9cf9f71d7881cac7bc
+PKG_HASH:=ecd0c6ffb493dd06707d38b14bb4d8c2288bb7033735606569d8f90f89669d16
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
