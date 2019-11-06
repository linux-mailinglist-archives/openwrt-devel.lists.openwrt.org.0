Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEE9F1724
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 14:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2eCvMCmgE/ZJeq0oiIeIFMmEb0/ahXqiDKjVn5gyTIc=; b=KdeR2OnNgBaILDfMqrhx9RIcXm
	3+zxuIyqlqSSSFLA915xu9nDZUWemtbxuRvD+rS12iVrg2o0AMINa6rsiPp6Xj8PQx5pjjTuSfP/K
	cN9eWqfMVZjeCNdOSFGkjM2qXPn/EJfdGkyWUBO29quQFuzNCztb6rNMcxi3A7APykdzesEFy7NJj
	bLnskdAn9mWaKBr5V5NF7Cad0l04Hwjt+ZVfIK22BNWDeNprD4uYt9jFVHYL5cYrGlgLgk0ZfWHFv
	mBon0Rm+Ju9QQYk40nKeeaTpEidqQB9nRmc5hjbQ0i1eqFvCJ7lDD1gHqX0V/N4Tp452ygKq6cQFa
	Dgz/7MgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLPK-0006tC-1k; Wed, 06 Nov 2019 13:31:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLOM-000698-DY
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 13:30:37 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9AF154429;
 Wed,  6 Nov 2019 14:30:31 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c7fa89b2;
 Wed, 6 Nov 2019 14:30:21 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 14:30:20 +0100
Message-Id: <20191106133028.2350-2-ynezz@true.cz>
In-Reply-To: <20191106133028.2350-1-ynezz@true.cz>
References: <20191106133028.2350-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_053034_641113_6FB111F3 
X-CRM114-Status: UNSURE (   4.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 19.07 01/12] hostapd: adjust removed
 wolfssl options
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Eneas U de Queiroz <cotequeiroz@gmail.com>

This edjusts the selection of recently removed wolfssl options which
have always been built into the library even in their abscence.
Also remove the selection of libwolfssl itself, allowing the library to
be built as a module.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
(cherry picked from commit 94d131332b5adbcf885a92608c40a22b79b3c708)
---
 package/network/services/hostapd/Config.in | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/package/network/services/hostapd/Config.in b/package/network/services/hostapd/Config.in
index 22719e46d8d9..9dfa44e3132d 100644
--- a/package/network/services/hostapd/Config.in
+++ b/package/network/services/hostapd/Config.in
@@ -51,14 +51,10 @@ config WPA_WOLFSSL
 	        PACKAGE_wpad-wolfssl ||\
 	        PACKAGE_wpad-mesh-wolfssl ||\
 	        PACKAGE_eapol-test-wolfssl
-	select PACKAGE_libwolfssl
 	select WOLFSSL_HAS_AES_CCM
 	select WOLFSSL_HAS_ARC4
-	select WOLFSSL_HAS_DES3
 	select WOLFSSL_HAS_DH
-	select WOLFSSL_HAS_ECC
 	select WOLFSSL_HAS_OCSP
-	select WOLFSSL_HAS_PSK
 	select WOLFSSL_HAS_SESSION_TICKET
 	select WOLFSSL_HAS_WPAS
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
