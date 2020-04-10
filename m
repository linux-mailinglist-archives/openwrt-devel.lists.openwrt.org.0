Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4451A3E16
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 04:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wM2dl+d549AJh9xFf01fzy1YFlJKNV9BPWLz+xJIuyk=; b=ZpFOcwtxqGNVMANrRzTWsA22yc
	TeSpDWRqDF/o+YEMdqIY1v7y6hsUYTd0C0/Ero2zT4MwqtkEMn7YnmwLuzC5fYwaDufBcj7fv8dMh
	2bGj9W0ppSlx90FGLJbRJo78CYYhaOncQuHlBvDTDOS4MWBG7gYf3yCmL3ue+6xYzA1G8UmdNnhBY
	IICQ7xCsberIUBiS1I9T0ajKoJINz+D3V2v34xF4U8BgyEAXtxWGpQ3ujaQZgvjKwZQ7USUT9Bg4p
	xDZoKIs0+BlQkGE6AnuPWSubsVtovZD5pcAqRgg3LS5lXoohdG8z+uPWuLhSfC14AQHM2dHFLXZLu
	bBXJSrlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjCi-0006Hx-NY; Fri, 10 Apr 2020 02:15:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjCS-00068F-Q5
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 02:15:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id g6so377085pgs.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 Apr 2020 19:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=9FekQTC6QxAKIJF3g8qjpfKCAjsg5D35WQ5pzUwsIlc=;
 b=T1edWPgdolgeo9BmYvcRE3P2WsCu1n05QHTy2TZXX2tEcOda0gEEg/ceOMkq3MOanl
 SgCDf9W2vp2wja1zKGryj38JfKx3WXCqvby7hRBoPW1gMDxH4QXQjk6ePfJrF7bX2ZOx
 qjjpnBLRHSVCcCxvsDvnf7ru0oQ3+sM8O+duPfTXjN374TOZMFNitZnfyHvyZJe5U0cL
 Kd93a9DNTb4moGPf7Ggl+xp9e1cIt3JALyMpBbnCpgMxmTSnWfJQHFFIiEF4YVO94CfC
 28cZutLe+h66NY4oOtFhc5agI4+CftSY6NHUT5rdBOMsKLXoLtyQmy5vgRTAmibi+3Db
 8/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9FekQTC6QxAKIJF3g8qjpfKCAjsg5D35WQ5pzUwsIlc=;
 b=DlrfHZb0SdQH2cj3B32bpquNE7P9WlsCBvXUsbi9xirHNif0IHsoerEs7EApLBuWqO
 dAq436+rT2Dd3qRe04TiX8yifotxbu99VbwuzBX73wieVkkru0QuvigYLdlhWtMLM7bh
 fjwxFXKIOdhnKs2e0mmK1wdJipzJZP6J6FqaPbHaIU71ZqdY+Ji/ueRZTVF7/nhQd8ef
 NzbgfItgAsqwtMWF2MiLG2rJtJDF4hE/WknuLuot/BGU7mBmuKDhIx9NtjqEH+sCWKYe
 3yzZTmm1WosA67Zq3GOm69/UWemW7GOjc34tHB3R3aCsshkkZuej8i+1YEShiSH2TdVF
 eJmg==
X-Gm-Message-State: AGi0PuY+JRmhRWi+EcgzL2iVYIV6Q2jC2WMhmb3IkDvUcnycaY3jM7wz
 hHQnOuGerDyGSNSS29jQkkxp+TVH
X-Google-Smtp-Source: APiQypL1t4r4GT2xR0ZH8u6UlcZzRF6/GiHn6FPYu2D4RoJ+huF+sUfKPRilPBNzoJr90p3ACETxIw==
X-Received: by 2002:a62:fc07:: with SMTP id e7mr2796587pfh.299.1586484919759; 
 Thu, 09 Apr 2020 19:15:19 -0700 (PDT)
Received: from mangix-trapnet.lan (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id o15sm367764pgj.60.2020.04.09.19.15.18
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 19:15:19 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 Apr 2020 19:15:10 -0700
Message-Id: <20200410021510.1595823-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410021510.1595823-1-rosenp@gmail.com>
References: <20200410021510.1595823-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_191520_873849_8178BD29 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [18.06][PATCH 2/2] wireguard: bump to 1.0.20200401
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

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

Recent backports to 5.5 and 5.4 broke our compat layer. This release is
to keep things running with the latest upstream stable kernels.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
(cherry picked from commit e32eaf5896276825e81c2250d9c58e4952c3a563)
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index f90209fbef..30e6af5c73 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20191226
+PKG_VERSION:=1.0.20200401
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=7c0e576459c6337bcdea692bdbec561719a15da207dc739e0e3e60ff821a5491
+PKG_HASH:=7dfb4a8315e1d6ae406ff32d01c496175df558dd65968a19e5222d02c7cfb77a
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
