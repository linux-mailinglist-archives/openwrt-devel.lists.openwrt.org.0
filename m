Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B303511F068
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 06:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PBB9Vhbz1AYwKBuswzb7lqdb0Axh1ca3z9xED1XEuA4=; b=LVVLwSzQ4mP/34
	9nAXj7VRpiQDRWEembCB5fSQ6TpaBS7efzoaSvsVnzJKn6w03XpjtBLscqprB8LX1wNaK1AWWOkHE
	94bRMhUrsysaxA4aBNO17qPxBUkOY/0nK0rD7SEZWZIWgZU17Kev/tiZelkSe4mb1OkoTkCUbvnfL
	Az38YEhYiQB3DBHCLtZBIxmKTUQlIlfNNUkOG0fWdI5yX8e4x5PhyO/5OhTwO97xqWo5AuztaBw/r
	Xcj2EF0iUJxiVpGSErsPebO61G0fhSt9Ea2FXGNqAGUYRgm1kTcwuL3nWYE4GtkiemPn63yHd3PLA
	FzfXFwhVphcIU7XjUw1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifzvZ-0006Eu-HL; Sat, 14 Dec 2019 05:25:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifzvQ-0005sA-DH
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 05:25:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so550221pgc.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Dec 2019 21:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g6OsYwmOYxKUWc5PdnKSfy1GK06lRaJtdqizWFEa1jg=;
 b=mCmZ5oR2QPAenwqNSguTlNo78OA5sqzt9ewErRWvPcoFlGhE6FgyB0bUBGO2WymC4J
 /Po+KJjZV4ne5S3iulK6fCGRBNOXfx0AMEduPLcsRuFGPQ54z6rkf4fxuf+3KJ9ha2AQ
 9tmnmFICo6T5Q5NDaEXf0RMZU8sk0CDcp4k8dme0LZ6yMS6uIm1tDoJtb6yH3r30n7wM
 k+jMnHXI+7kxfLZs6/S2B2E0+XX8tDfofDeIt+HANbNJ4TsDyQ73uN/nE0YTvQh5HQ/P
 YWmSvlW0T0630rytKtwxQs5I9rs6GXLVVhEaFlM9daeLSMto/oOu70u/Igv0FD7Rh53p
 QcxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g6OsYwmOYxKUWc5PdnKSfy1GK06lRaJtdqizWFEa1jg=;
 b=bm/NNcBy7VP2WfTe6LiKOfXZl3HEtdHX1ebyquwLVy1F0mNXndInaisr249v1lB2vw
 BlVH+KoPp+qGci5eew0P+MGMP7+PHgFyXg6iuAwoDFNn0mgVwbJGulk3DgJt9GU52JYs
 pjfc3lNCjXXodoHUL7yRD+Fv32bzGMaHbAu6fs2kscZj+YicQ/cf9vFdRxtS7bRSH5Tc
 FjNsu08nF3m8wRowHo5f04m5IokosniKok7kjcfnqOL83YtB118dLGQNkNla7pM4rMgW
 Gc0Rw2U5+s213/Fo2KchlHqw8Bsa21bGtSo2BjJ0uEikHwX+TJG/4N7s6Ce/A1cEFl+D
 CPAw==
X-Gm-Message-State: APjAAAXH5RefG5A8tuHdshfSIcBhrCZSBLaX7FSuYY5r46pKchMLOfXk
 6IIIPtKlE0yeRPTWw2zhRKE/Hk0BA2Y=
X-Google-Smtp-Source: APXvYqxBXaqj4SZe9aM6tI+Zm+6SNvt1OITfTGUsfbVu1Qn9cEu+9Mp+YjknNnscZddUDvWCy8z3Qg==
X-Received: by 2002:a62:1d90:: with SMTP id d138mr3582303pfd.93.1576301106141; 
 Fri, 13 Dec 2019 21:25:06 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id u4sm11384301pjb.31.2019.12.13.21.25.05
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 21:25:05 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Dec 2019 21:25:03 -0800
Message-Id: <20191214052503.1004780-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_212508_481970_802C2C81 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] iperf: Fix compilation with libcxx
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

Avoids redefining bool.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/network/utils/iperf/Makefile                 |  2 +-
 package/network/utils/iperf/patches/010-libcxx.patch | 12 ++++++++++++
 2 files changed, 13 insertions(+), 1 deletion(-)
 create mode 100644 package/network/utils/iperf/patches/010-libcxx.patch

diff --git a/package/network/utils/iperf/Makefile b/package/network/utils/iperf/Makefile
index 33d00b43d7..3a235fadc7 100644
--- a/package/network/utils/iperf/Makefile
+++ b/package/network/utils/iperf/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=iperf
 PKG_VERSION:=2.0.13
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_HASH:=c88adec966096a81136dda91b4bd19c27aae06df4d45a7f547a8e50d723778ad
diff --git a/package/network/utils/iperf/patches/010-libcxx.patch b/package/network/utils/iperf/patches/010-libcxx.patch
new file mode 100644
index 0000000000..cf0124232f
--- /dev/null
+++ b/package/network/utils/iperf/patches/010-libcxx.patch
@@ -0,0 +1,12 @@
+--- a/config.h.in
++++ b/config.h.in
+@@ -360,7 +360,9 @@
+ #undef _REENTRANT
+ 
+ /* */
++#ifndef __cplusplus
+ #undef bool
++#endif
+ 
+ /* Define to empty if `const' does not conform to ANSI C. */
+ #undef const
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
