Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA0C617B5
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jul 2019 23:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9i2yM4eyAIoJuwy3bXSt3H2neVrJJYUCeWVaf5RATDQ=; b=Ptr5iK6fFv1ASA
	a/3erxJ18liEo9oXT5z+GTnCux+F+EkzFpsP0kQMunD/QFI9jBfHdRFp5o24HwWpz3VRQVVIRhsvY
	vmazw6e3jYEs/CBJhIvFWDyoLXumo/0XBfVhazehNScxcP5exK6YdY460BQF74aI6TUDd5dFHqAOB
	u1HD0x87BUD0W0UnJNTMBS2zBWJgiMa/1ZB17qmoxcWzVWay8UTbITZNkFpL0hYeRwLrEH6sGDTNq
	0uJdQkRQeieqr3Z51ehQoE5EVUwQBRH8NRn9TSMsqeNHlgB/9JmbJ8V+IaGrdRfg4uuKxGDF5pYV7
	UBjIYCLfps9N7iZbAfQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkEjx-00068C-JY; Sun, 07 Jul 2019 21:30:33 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkEjn-00067t-RW
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jul 2019 21:30:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id s27so6621059pgl.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 07 Jul 2019 14:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=lOhFmP6iu6/qoO0mUHdtUxPspP7CFTNJN5MACQIRoiM=;
 b=GbGKbECIfKnUU1Nxb5iJIFHQst3beFO6Lc5B/V898gUNrITw00CTwUa15hGvefohtH
 98RYZZgjdNehRu8xuONzFHMdtb51Lf7JNan7e35SwUAYGN2fbY70BouTPWcdotvp7WHv
 wzPfIijhUmOYiF7bZA+cD7SW77nLcTcU0kEVSJ9O2xsdkH7tLdbg0RWs2svig+kKyIqa
 wVT0kJpVZEB0LZBAylwt/HbTRmwYBjCSp7sB3YwpxhpWf8g5LWSETUkNLkI1wUONHFLt
 qUm31s4rKhRe13QMhF89SGDfy45lJSIWzhO9NWwXLtP3iVHbpFudDFTwVUQu13Lpjr1H
 r1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=lOhFmP6iu6/qoO0mUHdtUxPspP7CFTNJN5MACQIRoiM=;
 b=jPz+xuO/GgR7YqU9xErDwESQtERFVlDAZ+IhKNE8aGOy9TZHMY/pj37ikq/6gROcqc
 3yxS7L+EXLrlpLVDz3HtX1al98DN7UjQx60VZDE/eCkqOASl0Papwj2qytQ5q9iufGx/
 SiaGzJqTd6ArzEOpRFbwS2g9KNT/ynssKVDfVpk0NWIWH4Buq2Ma/PCuIdfP7V5ZyIkB
 UQTav22IIAG3qiDXvrZj/p9am39jYp4M0yYU9Wq4pFVEyGm+3J5LPnnAKUlPfVl0MrpR
 ce/B+TlvtUVVMc7iwUZxv52qrAI6fWqOVOCNdf+TMrVKAFxGSTE+XWC22IhS45KbZ/Ui
 LtNQ==
X-Gm-Message-State: APjAAAVEN1ylr12MhDLXYovIbdLsB6bZOz3RabPwMe9H0T7O4bg+VzTp
 nTVsolTHTfDdH3E4DFKCsCTZK1NrX5k=
X-Google-Smtp-Source: APXvYqxKP37wsve+GV0wPqcDqYxoqt7Zi+bTR8OX7uONXlCu5GTf8OooVQoeNBDi8v3AW2pvLuWGbA==
X-Received: by 2002:a63:e610:: with SMTP id g16mr8277521pgh.392.1562535021057; 
 Sun, 07 Jul 2019 14:30:21 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id v12sm12902307pjk.13.2019.07.07.14.30.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 14:30:20 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  7 Jul 2019 14:30:17 -0700
Message-Id: <20190707213017.19661-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_143023_915763_AC9FF7A2 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] usbreset: Add missing header
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

Fixes undefined reference to strtoul

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/usbreset/Makefile       | 2 +-
 package/utils/usbreset/src/usbreset.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/utils/usbreset/Makefile b/package/utils/usbreset/Makefile
index 5324e9d045..bf3160cb1a 100644
--- a/package/utils/usbreset/Makefile
+++ b/package/utils/usbreset/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=usbreset
-PKG_RELEASE:=4
+PKG_RELEASE:=5
 
 include $(INCLUDE_DIR)/package.mk
 
diff --git a/package/utils/usbreset/src/usbreset.c b/package/utils/usbreset/src/usbreset.c
index ead30b1d82..dc2df3cb3b 100644
--- a/package/utils/usbreset/src/usbreset.c
+++ b/package/utils/usbreset/src/usbreset.c
@@ -37,6 +37,7 @@ Alan Stern
 */
 
 #include <stdio.h>
+#include <stdlib.h>
 #include <stdbool.h>
 #include <unistd.h>
 #include <fcntl.h>
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
