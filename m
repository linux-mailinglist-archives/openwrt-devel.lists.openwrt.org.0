Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204AB12DD87
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 04:38:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F6ExJtfYqZw6jPjpoXaH4V48r38FoytC/FSCbosv6Tc=; b=guapwP9owTC8kq
	4m2GUvzc+g08MSjwAfmQCjomIkjf6ro3b/XbU/I5H4PMk96d0bCbZZj4l2Xe/eOoVWeE0weRgH5a0
	ng2qsFr66DNPgVSff0UGA9djoehfbkHZIjC+J+lVChmwYaKCsHlijQlbu2BFiNwp3/noK+kSVvPRL
	P5YH0+tWnxb1v59rdVn/Wgp6UakRtGp/86mJtWWHFe+4vbSCCOU0NYK6Bf2hsdnwzR1tdKyhpJzSP
	3P4LWL5otai8yoQ4Wfw3n15qEkj5po2lzsvwwCtih7O98eC2KJB+F3cmCsfVqhU7a/Bbz6Vd9BG5e
	M9Ddk/efg/IlqQ66VuqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imUpN-0007yP-Sy; Wed, 01 Jan 2020 03:37:45 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imUpH-0007xp-En
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 03:37:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id b137so20198126pga.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 19:37:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qPA99MacQS6DjToSD7gw1GzBOcvE9AzgqFZzxOJV/FU=;
 b=mURkJgiwXFMl07anMx+/fjz4kxQUYwPZJFCYeZqK9rDFb1Dt/vDCVeOsYLm9m4zq9N
 kBC4qAss03xzmXNMeHItMoi8s9n5hdDkX3HfcwSJ+MaKKy6VQAdpahJoKJGjKxTEiD0y
 VsOHNCCaY8hnluuR1QW1d/dJ5qwI3bEFR3UH2FA/NuSTpGrVKYBKJXTYqwjt19+D5uqU
 VzGCt69vK+wjVE3s70HpzoTbD2dcZlF3QWj1wLaJAVD3SLVTwP5Am/CsPz2lmM3g+gxh
 dwFEt63bHd/3zwOXKkws2wLtXnvT8E3WUM9i98abwXGwLv/YuYLkBs5yqXPDZwlBb855
 SZww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qPA99MacQS6DjToSD7gw1GzBOcvE9AzgqFZzxOJV/FU=;
 b=OxUn3KVdMcH2S1uHLT+GR0EIuXtFnkHwG4Ct4tjLEoQ+E2Te5Ub05KpehpvePVwJHZ
 RurkaJgfJcfwjKBIsx/RJJPAkXSxjh8ZzTQ5rkaIuswF6F4dGZyf6qN/x7XhNTXVBU9p
 UdDOKeMkTJYU2xI0hSgzKxxo7ebDRpRBR2NMv5upojlfC73w0ZhcyewBg1RwnPKnGoqi
 RdLQ44+B/nQAKFtzM54I0MyiZyLBcTRXKVqUHZWvCQIkjj3e4I/HcGDOh5BqzFr2rMKw
 6kmkIJthyv5/YDURwuGjodwPiLFTWOIykO6fQcNSB46SBdfcNtvOBl7wCFg09f7z8eJA
 LmXw==
X-Gm-Message-State: APjAAAV4VtGfa9uIVePLCX5sJqYtcLFHPWCZmbr1leUpNiw3VXmm7BAj
 J1lkrRwShr8mujJaTnA0QbvypWLpOhY=
X-Google-Smtp-Source: APXvYqxfXoo+rXRDga24Lr4uh5VFJUzgKIERpW2ysD5+8oj/5dpvckD2qXF26dshyOc/1xzSyw5YpQ==
X-Received: by 2002:a63:1c1d:: with SMTP id c29mr82343950pgc.14.1577849858403; 
 Tue, 31 Dec 2019 19:37:38 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id s131sm40885816pfs.135.2019.12.31.19.37.37
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 19:37:37 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 19:37:34 -0800
Message-Id: <20200101033735.853371-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_193739_519737_34054C42 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/2] libcxx: Build with the libsupc++ ABI
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

Allows proper exception handling. This includes removing unimplemented
warnings.

File size increased as a result:

Before:

182874

After:

211006

On mipsel_24kc.

Note that this requires libsupc++ anyway. It's specified in g++-libcxx.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libcxx/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
index 695b0398fe..60978bdc31 100644
--- a/package/libs/libcxx/Makefile
+++ b/package/libs/libcxx/Makefile
@@ -7,7 +7,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libcxx
 PKG_VERSION:=9.0.1
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://git.llvm.org/git/libcxx
@@ -37,6 +37,7 @@ define Package/libcxx/description
 endef
 
 CMAKE_OPTIONS += \
+	-DLIBCXX_CXX_ABI="libsupc++" \
 	-DLIBCXX_ENABLE_ASSERTIONS=OFF \
 	-DLIBCXX_ENABLE_EXPERIMENTAL_LIBRARY=OFF \
 	-DLIBCXX_INCLUDE_BENCHMARKS=OFF \
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
