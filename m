Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D3C1F697
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 16:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uwiJzz59vaP8vnTMAAk+czTnDlyW98ss5mGKxBWBnyw=; b=ueSX+ZOdZ6+Vav
	CPL+FtNCHGXgdhz8OMBUhZvZdMorDO4YDe0EowzHHjhaY6WtTG00QCIuytEWS7PrBHdyWtJs1836P
	xiQ8Px+jWeYNnfOr8PAr2gj0Xhy1dJglvs7yJhzOnlJNmzZ18WPBBd3AVR3zU0Mx77YWw3RrblR1N
	tlRe9gBosC+0LEUGr8XKLoOmCazqh63JiTK1yLJ+lXdzKNocYTC25oYL7lt/KtQekcNeu3z/po6Ov
	ru9KDgpnNU4mXDIw32K3VzRtE7Y8NmDrRSkRinwyPM7jXHTdHlJRF51dWRf+W44reKAPMavMPN+CI
	EXLkbj/XdiwhCg31Ioew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuvW-0002L3-Kq; Wed, 15 May 2019 14:30:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuvP-0002Kf-5o
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 14:30:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id t187so1453050pgb.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 07:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tSkdOWVCS3W6J1xSVqwx3RPfO0eyBDx3TGpk0xupqLo=;
 b=onoUBvQJSmHwr9X5WQnpOlUdDi6PWPjSdkRbc+uceG3obeyn21wRfxbJNZrkPLQGlt
 27eec6EhSX7sfQAZlkSAwPY+uxKg7I3E4U8YAQh1IGu7ZDi/WEbS1ZhXLb2lV38bl0bZ
 Iz93W0C0EfNyra8cZu3IlwB45IIcLeBDdl5gY+XqQK0VX/tc5ACBThq9C4SlsSASWVqb
 CIRgoRb/62NHO8RriYeBC7hWh5tBG0L7DajXIPx9x7rElgRSECbyfPaVMgFoJ3t5Y7lL
 UoesMkg9PdIzcPgz0834nod1TObQHMHZ8SziDaQSSxrDiBxq0pPKB9y17quk8iJfQO2h
 UWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tSkdOWVCS3W6J1xSVqwx3RPfO0eyBDx3TGpk0xupqLo=;
 b=lMfcs85bkJO2MPDcwxagFmtqCFsaldCRfB9AKQ1Dlz2fte565DFOKrbDuTs2zxM3Cs
 khXcL0xdE8+fGKtg53hds57KU+VGoehB1bRX7aQ5c+f8z88uLkicLe7nz1zNomAR/B8Z
 M6/nPsTqo607fvb5ge5YZHm7vjQsyOnz3idc99h5J/rGJgCePDrU41TwJNT6qGvm6iQH
 KZ3mg/qBt3Ox9fqawk0JzMQrGLQPo2VLd3Mll8xfM/mWgUZxBmmRPjdz6sQTxlgIv3dn
 l8VhxnFS7cvB4JsUrqbpa3PwSoUOS+s/M/I1s3cbTirHo/zTaqu9ZRw4CVAzOI3UBe54
 ianQ==
X-Gm-Message-State: APjAAAWM0VB07nyDrAI8AObplfq2PDo14EolPPdWiX8FuC5SAdt87OYM
 9rFpflhGFDPJIzNvlmXHRrOZYD+l
X-Google-Smtp-Source: APXvYqzWzQrev2IpPI5DTvbhNpXzdfoxDg2vTBY6mncn4ZgIKLpm5TSPPSSTucmvqWCqpnN6d1W0uw==
X-Received: by 2002:aa7:9356:: with SMTP id 22mr46620167pfn.188.1557930630228; 
 Wed, 15 May 2019 07:30:30 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id f4sm3080942pfn.118.2019.05.15.07.30.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 07:30:28 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 May 2019 22:30:24 +0800
Message-Id: <20190515143024.13070-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_073031_245094_03BCBD32 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] zlib: Use relative paths in pkg-config
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

The buildroot pkg-config (in staging_dir/host/bin) overrides the prefix
and exec_prefix variables in *.pc files, to supply the correct
(buildroot) paths for callers. If other variables are not defined
relative to prefix and exec_prefix, then the returned values will be
incorrect.

The default zlib.pc file generated by cmake contains absolute paths.
This patches the file to use relative paths (relative to ${prefix} and
${exec_prefix}).

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
v2: expanded commit message

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
