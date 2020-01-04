Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBE8130197
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 10:19:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2mOPrmu0xfRdfIzFZK4UJy3HBu/8ke2FPz64grIvWBg=; b=VHQXTNutwuEMgl
	24dNU4lw/PbvT0FQGcVePOYEOmqzI/lxkSwjyQ4ETYJal23taqjVvtJgpE7bpIcI+3qcDuLsySmk+
	dV4R4xG1f7VmWrMOLYgLOK4lCw877ji1sGQDb1cU5loe/jGQcJTGzijRejxT6Isnvspm2BNwOM8Hl
	0h51BufVmRUDvMTIFHu2NPvhVqnw/tp2/uxWL/TcKG2JeQianTtzsqCPXrlFdkuQ0rG1Mhh//wyTi
	taCULXfM6FtOD4xTl0GyE7vWA0Buufe4eb0mPl3jlGj1I7QhDDxyN/zKEDjQ0MHFCJDW1sdphrLWK
	FQBkNeoWGz49L107pa7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1infam-00080z-R9; Sat, 04 Jan 2020 09:19:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1infaf-00080N-BV
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 09:19:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so44475632wre.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 Jan 2020 01:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GvhmjBXHXxSUXbsRPaY+iK0Pw20Rh9JCfMGX+WmnNUM=;
 b=DKQYnTirwbYVjAvD3ej2u+UcsShgeReYuKqxZP8ODQu3AVGIS07GiGmcpfvPdTQwa1
 QyYB3jRWDC5sy6NzxCJu+35kJgd965W+JahvI8f3Kqme+wJtyxEdz3sLEvOYD1QFNLkv
 tKgSkdnD9ZcfKuj6Yy7SAQRhmW5CGUhBi7SDKjwpWk9HhywKLNEW8IbMtHXlM4GOYn2s
 maave3g+R7hlhzZOBgkDbHLFMXloXZ5DQWA4VgnXYTW/MF7fxW9obhxm8USq5uZ0drrV
 c4WK2Y5pGSb1lTJGVBanEI6R/YzQEZNMCaUIcJLGkpMYgJbf3RKA4dKJAyHIxR3e+cAT
 a1Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GvhmjBXHXxSUXbsRPaY+iK0Pw20Rh9JCfMGX+WmnNUM=;
 b=I19SbbZxMf1DbQjZXP+qVugDZdofmHhrAahJtYy+Vc+ln92GnLSfcrmL2Vis7TOcot
 1HGQeqoOMaibyLB/ANNVPo59d9P5c6oDLiBIsrKx/F+wDWnt9OQxwl4VAhZ+L4rbwHO2
 7pFFRCod92100FOF0w5RzBctsLoQmHtrT6HIcAylP+g0f4J0COBhxPqaQWd08iO4LybY
 rIQBWjudz1SosLbZsiYN13qW2VYHmlfHKi0XoSesQBKVg4zE3L0/sLRbt1ONnaNyfm1p
 9wzoiUJ6qoNGDeHQp7/TffKAACjUgN2PyvcJWFBEDOXFM5fhEuEOVt62mr6FiLyAxGjh
 AENQ==
X-Gm-Message-State: APjAAAVzwMjTRiLfF+LxCE/Q1ByqvHL2CtWw3IXpC5HDXS0WQHMLWAga
 i3J6a/enIZp3P6WswoOxffQ5UTJa
X-Google-Smtp-Source: APXvYqyCyNDD6wX4L6HBhuNEZUUug2jFzYCq11xmQt4Si2FlzkcWXOANoicD1uXbyydT0eNflXUeVQ==
X-Received: by 2002:a5d:4a91:: with SMTP id o17mr14270746wrq.232.1578129561664; 
 Sat, 04 Jan 2020 01:19:21 -0800 (PST)
Received: from localhost.localdomain (ip-78-102-138-110.net.upcbroadband.cz.
 [78.102.138.110])
 by smtp.gmail.com with ESMTPSA id x132sm12812670wmg.0.2020.01.04.01.19.21
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 01:19:21 -0800 (PST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 Jan 2020 10:18:50 +0100
Message-Id: <20200104091850.13288-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_011925_421175_317D36B7 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe.schlehofer[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] strace: update to version 5.4
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

Changelog: https://strace.io/files/5.4/

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 package/devel/strace/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/devel/strace/Makefile b/package/devel/strace/Makefile
index 950dafc5d9..0d22b0bb23 100644
--- a/package/devel/strace/Makefile
+++ b/package/devel/strace/Makefile
@@ -9,12 +9,12 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=strace
-PKG_VERSION:=5.3
+PKG_VERSION:=5.4
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://strace.io/files/$(PKG_VERSION)
-PKG_HASH:=6c131198749656401fe3efd6b4b16a07ea867e8f530867ceae8930bbc937a047
+PKG_HASH:=f7d00514d51290b6db78ad7a9de709baf93caa5981498924cbc9a744cfd2a741
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 PKG_LICENSE:=LGPL-2.1-or-later
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
