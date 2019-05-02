Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2817512084
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 18:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fBUn8gCyjlWbkXg4s0+gAXaX2ri2MNDQDmgxXDAT/Vo=; b=Y/OzdDaV8RHVoj
	kuF0XswfNMWLbb3WV4iXkSKD++L7M5vrbGsul53iLv+X3QM7D/80sLPguX2dyYEtbZzb27Nq9gyuN
	cw7vOK4m1+K+2JPmeo9nOMiwSrygPnGUlSi95wO0paeASWsmGxPoZ5B77PzYX8Q/uT/bj1rr0huum
	jyLS79O3DsKNWiKEtu1z59B0/dJwaQcTxGnek7agxId2bOoGT1NkkG3My3nPd5IzaNUZdwe8Mjh6Z
	hbHIcO1906Z9GfCBv72ZTNH4WNEV/HZlczNoXHR4yd7lIJJhNzYTe3mDyVBL6MaZrK0KTJExUsHrp
	8XcP/v+Ie2cutb/BXi8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEs7-0001Nu-GW; Thu, 02 May 2019 16:47:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMErz-0001Mq-GB
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 16:47:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id y3so1301885plp.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 09:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iPR3AKpxGIR5XtJaSJBuPmwTbbNACL/pbTCRWVnTr2s=;
 b=rXtKePyy7906IafpXATrA6iTFNyyDrWTwlkfUcKKuhoswvDCXlqza56OCdOE5HBc8D
 8cTjO+188UkH1OBY01+tldM67O6rjDoDw2G+qnEBziBsLaWcrAM3I2d5AEg2bwoHoCT7
 BuF82SCWn4rN74kpqB8pau/GFVMkUT8s+e4xLS5bqoHf5ydN5lEdRXdUEmMdijSr5XQF
 +Nq9eKRutJaHdWXtMHUNWpRVq0/oFegmZMOkgzDVfCHB8pL3bxpvM9IL3/vnbLUezjPg
 6uypvSX2MosyButQELpE5mjD6ald74/H346z0f9+JiBD7ad0pAzekdq+GCWRU/ciN3Dg
 bvAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iPR3AKpxGIR5XtJaSJBuPmwTbbNACL/pbTCRWVnTr2s=;
 b=Y6bZn1dD9w72E9s5vq5hD2GCah2p6QBoG97GATIgjTn574hUrHbe85ECVYJB8lFUM/
 G5qFUV/Pj/IdVLIfOA+5VWL2Z8Z+bot5Av5itsyOWLnVG1/Wl2zHfZqVcYzfJucqfmz7
 72zNecBkPC6bwmAj04XGyWOvdjGZicskIrITIVPXawxAIhkQR+xan27TGbtvBMVTbUag
 CczabTYMb7iGoSiLYf0bCFNuiWB6VgvyP1fZndnkvRCx2YHyZ+CoUdW2Pu0mi5RoCSpQ
 2UcNeWA+J+utNVksPCgapDE+QCz/bT7IxgViEoFqxFC5CYHU0c6HZWTWhZnOjWY7ZXY5
 We8g==
X-Gm-Message-State: APjAAAXZWifUN3u3hclb4Wnj5bkvzesXyL2KhT1npVy9tt8hYlfsKsAL
 p8zZHiOLeo64fOBRG+VOcq5SNMqs
X-Google-Smtp-Source: APXvYqx7WCz9K0MQTsDIooO6t4EpYXA1hxbhcghVNgbpqjOcHnd+eJhsvOVYcldWrXkHHqECii5Fzw==
X-Received: by 2002:a17:902:2b88:: with SMTP id
 l8mr4787902plb.262.1556815657579; 
 Thu, 02 May 2019 09:47:37 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id z22sm44759868pgv.23.2019.05.02.09.47.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 09:47:36 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 00:47:06 +0800
Message-Id: <20190502164706.31453-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_094739_541862_0F15D13F 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] zlib: Use relative paths in pkg-config
 metadata file
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The default zlib.pc file generated by cmake contains absolute paths.
This patches the file to use relative paths (relative to ${prefix} and
${exec_prefix}).

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 package/libs/zlib/Makefile                         |  2 +-
 .../patches/004-relative-pkg-config-paths.patch    | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)
 create mode 100644 package/libs/zlib/patches/004-relative-pkg-config-paths.patch

diff --git a/package/libs/zlib/Makefile b/package/libs/zlib/Makefile
index 4a2a0e53b0..c7a8415c79 100644
--- a/package/libs/zlib/Makefile
+++ b/package/libs/zlib/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=zlib
 PKG_VERSION:=1.2.11
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@SF/libpng http://www.zlib.net
diff --git a/package/libs/zlib/patches/004-relative-pkg-config-paths.patch b/package/libs/zlib/patches/004-relative-pkg-config-paths.patch
new file mode 100644
index 0000000000..c86d19b412
--- /dev/null
+++ b/package/libs/zlib/patches/004-relative-pkg-config-paths.patch
@@ -0,0 +1,14 @@
+--- a/zlib.pc.cmakein
++++ b/zlib.pc.cmakein
+@@ -1,8 +1,8 @@
+ prefix=@CMAKE_INSTALL_PREFIX@
+ exec_prefix=@CMAKE_INSTALL_PREFIX@
+-libdir=@INSTALL_LIB_DIR@
+-sharedlibdir=@INSTALL_LIB_DIR@
+-includedir=@INSTALL_INC_DIR@
++libdir=${exec_prefix}/lib
++sharedlibdir=${exec_prefix}/lib
++includedir=${prefix}/include
+ 
+ Name: zlib
+ Description: zlib compression library
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
