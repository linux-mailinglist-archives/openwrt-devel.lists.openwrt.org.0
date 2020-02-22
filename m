Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DFC1691FC
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 23:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cO+Gd6YmcHNlPTMbkn5EMJz7p5wrJf1WpuQPzOhVhYA=; b=GBGByT3p6cY/I5
	9tIkrDEOGWymV2oPm7fFUxWqtQpaoWf8Oo9l5a1Ah1ZoO5tv1ELagck2T3Juy69hzVAE4zRqreJgg
	W0Ccdo+Ykb/1ogq+IXDVv4CgN5sd7m1ZrxFeNIDSusVXepC9uWVj3m2rK7ENIC7rH/L1Q1dArTEEh
	7BvjRwKv/d/nMHnk/VfK6sHjHobFa1krJlN7EabDBGMMfV4T4SoVxoqZOx5ShzZH/YgHvn6+PH4PZ
	zWFgVuU+XYEGbaojWEXDAge0HDjy5YUJakNyCqZKynFaVbBNchCqwBHYht4GMOZMVSXAEYKMWMX8g
	op560dqit2ekG4RkUWLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5csy-0005uM-SJ; Sat, 22 Feb 2020 22:04:32 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5cso-0005th-JM
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 22:04:24 +0000
Received: by mail-wr1-x42c.google.com with SMTP id l5so1717746wrx.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Feb 2020 14:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tdaOioqKOzKPxzg/X0W9IE40Uf9C/VrFe4EwiVHjMJQ=;
 b=tTWtYtgFbVLxhpftysZ6mrjtcdEWHTo8jRt2dYwd7jtSfqi2wr5CAteIIWzGnt/RqS
 +U+YPOmlf5ZTo+6JKG66rkmp/4EehTC8jOMu5pZfg5sS7xe5vMlbtkY3lqHYA2W92Blp
 6kwovPRTOkjV2oK88YO2xjKkzf5OwSJll539hsqpoS7z/Ja6KwvmrRU1yIaJLpsRVOi5
 lbKw3Ldi9bZAYbuPp5n+8pCaKE/fyHy6JjGmZCiKuH9zyU86dJD9aiQ7PO7ybMrLDMEs
 JLVHpTApozBNR3ozlXFq7BSkMB/JB9FOz05560PTgpPCJF77Wv4Vz9R4dUt90SxZEaNN
 PvNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tdaOioqKOzKPxzg/X0W9IE40Uf9C/VrFe4EwiVHjMJQ=;
 b=YjCtP8dHRLVYm6YSZROks0EFGyd+XCEzu4pICE9b7InXh0hrLZPDs8itmiszpYhGKV
 VSdEUMa01HXwIHsxdU4NmLWQFupwsMOiSKXOVV8VhZwWeB24qv1wafgJb/xEAj5SQzjh
 7Fcks46P/KJQ9ePiT8pXUxtqEWe+cG42ERVQlAs9fr3fvI+tKUyqL0QCYgigRcD6E571
 IGkn/lGrmznM+lAniWlNUgFEuQ8NaqohdKPpumf6PR6jVFMz846n6qRM8sjTaXGrE1Vg
 G4734kDzQWybI1PnwhcC24fJIQq6SBdOYekk85gGwxb7vwVLG+qaQevpXKoDfVCvjqnN
 4pHA==
X-Gm-Message-State: APjAAAXFjeyP4wLy0NPhBlshCM0Si/4KHFFbBrbpynynmt25xcirSjCS
 uL/rRPiwi/8vOk/8lGhytJdToNtP
X-Google-Smtp-Source: APXvYqxWSIqS/m4S4k0S3lMLQe6c82mv5Aq3zhgfUhP/W8vf2kSFAaUY0CYElJUS6jFuGw1T/FezzA==
X-Received: by 2002:a05:6000:118d:: with SMTP id
 g13mr54121071wrx.141.1582409057704; 
 Sat, 22 Feb 2020 14:04:17 -0800 (PST)
Received: from pepe-notebook.office.nic.cz
 ([2001:1488:fffe:6:9023:eca:cef0:505c])
 by smtp.gmail.com with ESMTPSA id q6sm3413335wrf.67.2020.02.22.14.04.17
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 14:04:17 -0800 (PST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 23:03:36 +0100
Message-Id: <20200222220337.23347-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_140422_637559_0B71AC0E 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/2] mbedtls: update to version 2.16.5
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
https://tls.mbed.org/tech-updates/releases/mbedtls-2.16.5-and-2.7.14-released

Security advisory:
https://tls.mbed.org/tech-updates/security-advisories/mbedtls-security-advisory-2020-02

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 package/libs/mbedtls/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/libs/mbedtls/Makefile b/package/libs/mbedtls/Makefile
index 618a74703a..ad1da70268 100644
--- a/package/libs/mbedtls/Makefile
+++ b/package/libs/mbedtls/Makefile
@@ -8,13 +8,13 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=mbedtls
-PKG_VERSION:=2.16.4
+PKG_VERSION:=2.16.5
 PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-gpl.tgz
 PKG_SOURCE_URL:=https://tls.mbed.org/download/
-PKG_HASH:=5fdb9c43ab43fd9bcc3631508170b089ede7b86dd655253a93cb0ffeb42309f3
+PKG_HASH:=6ebdea6565c714f1315b9af6a802afb4b4e89976f7d5d2b15aa8028eb52e7d09
 
 PKG_BUILD_PARALLEL:=1
 PKG_LICENSE:=GPL-2.0+
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
