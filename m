Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594866C43F
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 03:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=quMf7IwilT+hAFlNvcP7MwGOfppzGvnORw8uksSChbs=; b=NrzPV/i36BcIvy
	NVfizaFrSmJDj5pdX7bjwAmCB398Lo5c5k/xQSQUcWRVTsETO6SD2EvRWTRAjR1rGCY1d1uAIJRwY
	FXHpt9YTs/OgE3W9zPg8MRzqDfSfE391fbSgZf5AW8x0BZL6MPZdF1Qdcx6nVs6r6ntyoFKVvNfeo
	k2AXZ9zqnLjq7rRmb7jsvwmL8c0iShvAAPSTbC+yYZh3yucLM5puuAQBsKo0Jv8M9NRXQOsxWnb6L
	vY+2NkWKF+ZzZxrWeLnf6RR61UigkmvxyIp5V69HCggdaaWQ7sUBJn75KDKZHe2f6nTrJGmDZ4stb
	CnGnbfDnKeDGJ4tTc/Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvL5-0005hp-6C; Thu, 18 Jul 2019 01:36:07 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvKu-0005hI-D0
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 01:35:57 +0000
Received: by mail-pg1-x529.google.com with SMTP id i18so12047193pgl.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 18:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=mueAXbXyTbuCTR9j/cNuV7R7H5cEj5l50kTuMfccZ3Q=;
 b=d+Vq8A6hwZnfJdEaWQC/JNoA+/yuckq/BY+rgDGG6PPRTR5Ez5MbBXx6tToAJhytOp
 4sEb8lUlozNsObB/4/4sHluxQqQUXiHjIEZ4ltBKU3kwW6Hlkq7ona4ASDLK9oZXdjZw
 xyOjPqZwzoIEZH9dBOMvQ8uzC2eUEjk1fFh7os69GoEtzxhbJuHXseoc/3cea4diEY9k
 mC4t/IbEOJysfPgDczJ/lKlOIoHTZnmL2eztsMJxe6KWkpSs1vMDidePbWvHbCbjuFES
 Y6Cc6ht41JDTDfQ1JZzxiWs0Imd1TLS8ZOqvW/tUYpTw9dHCms3B6mPGc6T+RP3CLTym
 Xhxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=mueAXbXyTbuCTR9j/cNuV7R7H5cEj5l50kTuMfccZ3Q=;
 b=kMSntEMTcbzlGvx/wzpy2HNqgXPmXAt8mPcyIEAmVwJnREEYRhwwSOfsHj9S/6HXcB
 012Bit6aZHCo/+5rXhGNA6VAilGX/Tz05/jrj/G4F6tQg7HvtYYYAyrHIrMCCyrMMEFO
 jp6l0Qu+biYJCgK8W/DxwvmiCA2/m959iJgXXuA2PuFitp3h/TVaq5lOAbLmgKPOq8I+
 vaMNlxjdCxYWDjNnHXqBOwIVsT9tyLH4POM3Tit6nITLrsCQ/sIPRjNqoJ10U/0o5HcU
 SRLoqyqE9Eo1Ep4/R0pPlA/CsEzUExR9vpGsgMFJxgR8W1Bouf3KdN/2befYAK6iePDB
 +dnw==
X-Gm-Message-State: APjAAAUo5W1uZPthqwZfmP/DCRBvBUCFZpvi9lav/Oz9dYSCskFkRYMg
 0e1GMQoCkqZcdV4sOYZM7ISn9THbie8=
X-Google-Smtp-Source: APXvYqzjk2Aq9QY//WRjuHB6YNNhwnDAUyTEERYP3fLfYxdUgr+OB1lPfFvk2DW619NYvn6iCftWPw==
X-Received: by 2002:a63:181:: with SMTP id 123mr45812304pgb.63.1563413754503; 
 Wed, 17 Jul 2019 18:35:54 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id u128sm28457486pfu.48.2019.07.17.18.35.53
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 18:35:53 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jul 2019 18:35:52 -0700
Message-Id: <20190718013552.19112-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_183556_469732_F6065089 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ppp: Add missing headers
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

Fixes compilation with -Werror=implicit-function-declaration.

Patch submitted upstream: https://github.com/paulusmack/ppp/pull/124

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/network/services/ppp/Makefile         |  2 +-
 .../services/ppp/patches/700-musl.patch       | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+), 1 deletion(-)
 create mode 100644 package/network/services/ppp/patches/700-musl.patch

diff --git a/package/network/services/ppp/Makefile b/package/network/services/ppp/Makefile
index c8016dc619..7f266e126b 100644
--- a/package/network/services/ppp/Makefile
+++ b/package/network/services/ppp/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=ppp
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://github.com/paulusmack/ppp
diff --git a/package/network/services/ppp/patches/700-musl.patch b/package/network/services/ppp/patches/700-musl.patch
new file mode 100644
index 0000000000..70fad9ef99
--- /dev/null
+++ b/package/network/services/ppp/patches/700-musl.patch
@@ -0,0 +1,22 @@
+From bbe58b9f83ba197d1cca1ca4338214e35f6131c8 Mon Sep 17 00:00:00 2001
+From: Rosen Penev <rosenp@gmail.com>
+Date: Tue, 2 Jul 2019 12:53:12 -0700
+Subject: [PATCH] pppd.h: Add missing headers
+
+---
+ pppd/pppd.h | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/pppd/pppd.h b/pppd/pppd.h
+index 6e3743fd..b3470571 100644
+--- a/pppd/pppd.h
++++ b/pppd/pppd.h
+@@ -50,6 +50,8 @@
+ #define __PPPD_H__
+ 
+ #include <stdio.h>		/* for FILE */
++#include <stdlib.h>		/* for encrypt */
++#include <unistd.h>		/* for setkey */
+ #include <limits.h>		/* for NGROUPS_MAX */
+ #include <sys/param.h>		/* for MAXPATHLEN and BSD4_4, if defined */
+ #include <sys/types.h>		/* for u_int32_t, if defined */
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
