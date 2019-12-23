Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C66B1290B8
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Dec 2019 02:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gLIBbJQA2Fshku9jhvvo6rFwS39zmHSCflmv6Jvs4Fk=; b=c392fa9NjsliEf
	89b5Uc7JuG9dpTe0nQvokHv/++YNJBX3WN9BtQ3E4NpzwhFqbq/QhmJNxEUR5ngjhmONnN/kDahpE
	JqCgsZQ3+Zq0Fzg1nsBN5gxcZsnu1bauPmFylzH88gOfmXHxpeLB5bUWQWWy/9Gu6i4LZsvCjRnoS
	7mnUiGT8npapauzaK++lqiEyQBGfvp6sUohgeHiI1n9gMMgTS/j+ENz3hkHu5kq3sWxQBvWfp5yg6
	z54LhUtwQQ56F+o3KXIE8oN/Unsk15XOOYr0doqOs27Ngod2ks1BqxBuAaNYlzuKf/us5cSIukXpB
	PDCpN3kjChF3pxNBFbrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijCis-000731-Qg; Mon, 23 Dec 2019 01:41:26 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijCim-00072e-Gn
 for openwrt-devel@lists.openwrt.org; Mon, 23 Dec 2019 01:41:22 +0000
Received: by mail-pj1-x1043.google.com with SMTP id kx11so2637401pjb.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Dec 2019 17:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SdrXEd98dxqBec/olvaQ8+vM8xmVYfK9OSe3gvhJV0Q=;
 b=rrF/SfrpnFgv9o3hHgjryXfJ+qRutBd+DWGuO8TWIKgJzPhFlQHYcba9uc7ePcRa04
 Mdh/2Rk3hH7GOrYBZwCJDIccTD42cg3mTtS7AMl+y/fkY9FDb1otd0W2p0gkT9HC1Wy0
 Cg3iU4498LqNiRMNBkNd7ij9dmHFOx3IAaGdpkVSAxqtoQ1wTixIIpQEmjdfWWYa8e80
 RwUaCpylXYawe80AUsv2X1/aHk/J00BTt7+fxc5unjMWo8FaEWK0mdBbKt6qTEiDMSMJ
 PJ9gFex+1LGElDkawkrlLt6n0fXNDnWwU7ZijJazAPRS5otRKOKOLOo6LdDVJGDgnjVF
 XXnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SdrXEd98dxqBec/olvaQ8+vM8xmVYfK9OSe3gvhJV0Q=;
 b=bKuGeWIAZqGR8+MdEb0mad2ayZ9BO2DaIlepZw3V1ppHaviVnERD3FYaPsrgZNtEXM
 HWQuJw/UdHyJW1+pvnVBNWqSNGFBJdFW5EnUF4vRMjQcdPCE6xPqntUYBkFj7c9F0F+r
 TMADjom3CN2Z4oR/lu4h7NGazB6fkQQcM7D+ydwJ1ItWxP3jjFhyDFS91pNa5OfR7CRO
 h3fTW9R6B4is/sRWmY/sYwUYcersQpykywSZ0RuF8nMF6l8Jb/ZfLHeuHccOHs/UfEv4
 Y27inN/dcD+kvjXMzVK9EUqq/bXRpxd/s2nz3VVmMjUIbZgBkInwH33j8GoFtVbYLlKw
 +LLw==
X-Gm-Message-State: APjAAAXrj/Zlklvn/r3RQp8EMFIIZJSsc/xgg3EiRU4K8MrOBpdtgRGX
 lHkrjIopfSdZPIe9pVd0crNoTPNHwpE=
X-Google-Smtp-Source: APXvYqwN3pZgVwdiOJXeqjJGJvpylMnSezFu9ra8CEwBAzFAD/ZMRZcOeOZSP0ztXki8bCK2nS5g6A==
X-Received: by 2002:a17:902:a407:: with SMTP id
 p7mr26803896plq.4.1577065277916; 
 Sun, 22 Dec 2019 17:41:17 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id p23sm19596566pgh.83.2019.12.22.17.41.16
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 17:41:17 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Dec 2019 17:41:15 -0800
Message-Id: <20191223014115.475846-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_174120_584828_F0C0D867 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] libcxx: Depenency fixes
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

Don't build with uClibc-ng. It's totally unsupported as several functions
are missing.

Make the musl libc support conditional.

Fix hash with make check FIXUP=1. Apparently I based the Makefile off of
libedit and forgot to fix the hash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 config/Config-build.in       | 1 +
 package/libs/libcxx/Makefile | 8 ++++----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/config/Config-build.in b/config/Config-build.in
index bde5730e76..c0e4d869f8 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -199,6 +199,7 @@ menu "Global build settings"
 
 		config USE_LIBCXX
 			bool "libc++"
+			depends on !USE_UCLIBC
 
 		config USE_LIBSTDCXX
 			bool "libstdc++"
diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
index c1fa1d6b07..695b0398fe 100644
--- a/package/libs/libcxx/Makefile
+++ b/package/libs/libcxx/Makefile
@@ -7,12 +7,12 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libcxx
 PKG_VERSION:=9.0.1
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://git.llvm.org/git/libcxx
 PKG_SOURCE_VERSION:=2076f539f410805ef88692b9c0ce0a0b882a7680
-PKG_MIRROR_HASH:=6dff036660d478bfaa14e407fc5de26d22da1087118c897b1a3ad2e90cb7bf39
+PKG_MIRROR_HASH:=d527880a18dec9109575c76717cf5288fb91c11381b9d261cae2e5bebcbdab2e
 
 PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
 PKG_LICENSE:=MIT
@@ -42,8 +42,8 @@ CMAKE_OPTIONS += \
 	-DLIBCXX_INCLUDE_BENCHMARKS=OFF \
 	-DLIBCXX_INCLUDE_DOCS=OFF \
 	-DLIBCXX_INCLUDE_TESTS=OFF \
-	-DLIBCXX_HAS_MUSL_LIBC=ON \
-	-DLIBCXX_STANDALONE_BUILD=ON
+	-DLIBCXX_STANDALONE_BUILD=ON \
+	-DLIBCXX_HAS_MUSL_LIBC=$(if $(CONFIG_USE_MUSL),ON,OFF)
 
 TARGET_CXXFLAGS += -D_LIBCPP_DISABLE_DEPRECATION_WARNINGS -Wno-attributes -flto
 TARGET_LDFLAGS += -Wl,--as-needed
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
