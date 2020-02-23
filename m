Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995911696AC
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Feb 2020 08:49:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4tx/3icmsMJFucmnG9bRo3RbXN9rXHtROSkcLXUOCk4=; b=pKcmgAHqs2zUEE
	dQaiJa54p9md/5BAVJNp7+2fnYh4neHUh/x8W3UDnVv3Nf7yDZ/paUK7hQC9OHlabolnbqkShhHTx
	zIKCKA0ReMhIlrh1zO7R6Xutjsv08roR8dUI6SpH2y/Dt0t1tbhkLSughSnz9l7THQ8o5EqcvAAL2
	RCWiyVAEFU8v0tCdCQfAU9jE9nZ0tF707cGHY0l/sZA96Gg0O8VW7gYABCJrP/00fWU8smhcmjBdb
	9BsNERss4LsWXVOMS8K7elfHXeg/+C760AX28jmVUn4R4v6jVcqPO7pkB2/tDM1Qw/p37I5Xw7+2B
	88KLwURJsUDIe4ynGN/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5m0m-0000MU-Lx; Sun, 23 Feb 2020 07:49:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5m0f-0000M1-SK
 for openwrt-devel@lists.openwrt.org; Sun, 23 Feb 2020 07:49:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id e8so6683876wrm.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Feb 2020 23:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wo/RHlQ/59viFlbTAAgq8DXfwfucdOCr9KYstjfzwD4=;
 b=HWDlQm3zjwCkuqwr2TU68MHpqTh3rsqqUeQQl0XKF/dcitbjIwVJyrDAVVFLKFGo0T
 qZjBD1np9iRKoKkdzglbw2DfIBG0ZvY7QyVWOuWAtMV0ZGWfmxa8/S90rYxPTto6RlMu
 T40G0lKAJYdODWU2G7ktrIiFK36eD/XoUAN2e3D3Ex55yoPEWlrZTKinsNqECIttNh3w
 9sENx76zS1QLXuPkMZSpHN0Z5xi3gTnLSHj+Qi07Em93pti0gGkQyGJLxJ/3f0YUtvm9
 tXAbE6MF8xdDrqZa/YR2Txd6wQNHx/RcaY41BSofSGdzO3wkiT1QDo/XGo1HfrXYzDRT
 4sAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wo/RHlQ/59viFlbTAAgq8DXfwfucdOCr9KYstjfzwD4=;
 b=hxBM9XbXP2/k3QP+pSZwrOPm/7qG4jRBe7ySUilKoyD5nvoMy633+vszYw80BB7Y3i
 fEPkedBRXtGSTxxbJPGqlMuNVdKtTDNcI2jSO9ejDmUY/Yi6CqvFTtia2UOEpvyqXzAU
 6biA8fcSyj6ozC4uJhQi3H1FlnhGnnTT4kZ+uih/9WcZGpFtxDhWridT2P3upGcrR4wp
 a0BSpG4h7+GMKAllewUNVbG08fTu8HSNQqBaqTq8e4F3Xs9t34xFFU6aPKN9AZJZIkVx
 FF4XcgEoIymnN/eaXbXXcw3DrKRXlaHMeA3dBAZf6tMy6/dNGENnrb6Iquwicm3DWZd/
 Le6Q==
X-Gm-Message-State: APjAAAX1Fm6VY+d+ba6N+JrBQcukFXbLp4l3YkooXfzSfGEbiE1hgQXW
 baowwUacM7i3AMeCKUZGEnmaYhrH
X-Google-Smtp-Source: APXvYqzTGKp30PJn8zo2pBkQD+egeEF0LyPdrwDmi8b/89dLsWgBU0M6wNN53/2sT1ufT5tS+NFmHw==
X-Received: by 2002:a5d:4dc5:: with SMTP id f5mr60825930wru.114.1582444143880; 
 Sat, 22 Feb 2020 23:49:03 -0800 (PST)
Received: from localhost.localdomain (ip-78-102-138-110.net.upcbroadband.cz.
 [78.102.138.110])
 by smtp.gmail.com with ESMTPSA id j11sm12178419wmi.3.2020.02.22.23.49.03
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 23:49:03 -0800 (PST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 23 Feb 2020 08:48:39 +0100
Message-Id: <20200223074839.26901-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_234905_941278_320EBA0C 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe.schlehofer[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] strace: update to version 5.5
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

Changelog:
https://strace.io/files/5.5/

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 package/devel/strace/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/devel/strace/Makefile b/package/devel/strace/Makefile
index 0d22b0bb23..cdf4067ad2 100644
--- a/package/devel/strace/Makefile
+++ b/package/devel/strace/Makefile
@@ -9,12 +9,12 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=strace
-PKG_VERSION:=5.4
+PKG_VERSION:=5.5
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://strace.io/files/$(PKG_VERSION)
-PKG_HASH:=f7d00514d51290b6db78ad7a9de709baf93caa5981498924cbc9a744cfd2a741
+PKG_HASH:=9f58958c8e59ea62293d907d10572e352b582bd7948ed21aa28ebb47e5bf30ff
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 PKG_LICENSE:=LGPL-2.1-or-later
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
