Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EBBB88A3
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 02:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MTwZBzJ+XrwN6jd5JCsk+yjvM2/zN9wzbQpNo0rFY9E=; b=kFyqA3QlDyPhtm
	+UhN9NCiE9BPph+5ejBT74V9tmJeE01qisOV+5kX8BKGbNEfpAICQQ98q3bzTaFKjGpZPequteb4R
	fKXwwEiSCtV/8AAdT6HeYPrD7v7677liAzrUM8CkrxiZ4mcFuIm0QE0QRzMNzpAA/dDXKN8IM2PTT
	SwXPNT/X97i7W8dikkUtWrVT0RPlhSWF6e/lNhT4Ij6kAomQ3jo5LBwQWsPPtHMODWB2SpTTPloJl
	FGx6QkOS4/FcIBwbrj9ntzAZ1vKJaA8bShbY42zbawTGtHaUfHPceNJkA7A6Gq3Bc8EbrQ5iQxcX3
	StrnoT0qcaQACyzmjUBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB6xJ-0004E0-Sr; Fri, 20 Sep 2019 00:39:26 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB6xC-0004Dg-Ry
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 00:39:20 +0000
Received: by mail-pg1-x52f.google.com with SMTP id c17so2820716pgg.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Sep 2019 17:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=hPpmjvG1SC4159/CIfvMtFd1hsAh9P1M9SiA3CNF+o4=;
 b=H2qpoS7coUhrm0Qygv+oyXsh2FxqbkhyAwVbic5Re+5pnBAXlmxGAhON/Rb6x4nY7P
 JcMgAAuauIYu/e2+GPcO1O1dCoO4UEa2zekptMFKwk9HIunhMObdypnSa+0K7jGleOvq
 7gocp4uJ2HBPXzH+EMs7oiFunoJJn6SodGch3iO7qcPfkooDzGyqzGI9H3SqhB4cRqC5
 5y2ZbQOl7kH4tl14G91uzb5B7uvCgmY1hAHgOp7DrR2gLZpok/HvD2TX0HYc0u9c+qd7
 aXih/AYpuMhEn+fc0Rz5bz6myZjI8dZhrgb4KG4XIsa3V245GlRjny2PVkhkLZ4c8CuK
 TfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=hPpmjvG1SC4159/CIfvMtFd1hsAh9P1M9SiA3CNF+o4=;
 b=evSxcZayN/4BvX/da5zGOb33dLy6h99gJXl3xC4F7sDFQHRgkoP3mLMa5Tce56tGxl
 oLcQSXYpoixLfTtohTQLWJ7FjXzZ2lHjfFk7PegT/X1rLWDkzEozJWfUaRLmp7+DMjR5
 r4t1G3fDyDhU1EukOhNp4TVyBN7OCgGsZ4sXKEARHQJSm9CON82U75nH/CSvvBqgvTg4
 v4XJSq6nNG72hFq7vxOhcUAdreNpqEiwqsklteM0jTMtZ81d5KnVjKjmvZkX9ffOt5jY
 89U3/6/eMl4XS7hSqht6obmeLO3h5bEjCB1v4+wmigMe+g9hKg8XWsTrLPrbXqnwPKE9
 d4BQ==
X-Gm-Message-State: APjAAAVN+qAZVTyG0EKmWpHnSl9gW9OcGH2JKXR3ed0DGB3qsBJn+PwF
 EiBO1c870Aw4zvsW4HGZS+xl7x4XvD0=
X-Google-Smtp-Source: APXvYqwwcM898baO41O8vakfOn186HqU2FL621PZI4aFsayC56MmGhvFJrWfYpclq/m536ngsw01wg==
X-Received: by 2002:a65:6104:: with SMTP id z4mr11591212pgu.27.1568939956778; 
 Thu, 19 Sep 2019 17:39:16 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id q132sm204416pfq.16.2019.09.19.17.39.15
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 17:39:16 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Sep 2019 17:39:15 -0700
Message-Id: <20190920003915.5954-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_173918_932198_CAF42D48 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCHv2] uClibc++: Remove faulty patch
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

This patch was originally added to fix compilation with v4l2rtspserver.
Turns out it was v4l2rtspserver that was broken, not uClibc++. This now
causes issues with a different package where the arguments are being
split.

Note that with this patch, shellcheck throws an error:

SC2068: Double quote array expansions to avoid re-splitting elements.

More: https://github.com/openwrt/packages/pull/9972#discussion_r324878373

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Increase PKG_RELEASE
 package/libs/uclibc++/Makefile                    |  2 +-
 package/libs/uclibc++/patches/002-quote-fix.patch | 13 -------------
 2 files changed, 1 insertion(+), 14 deletions(-)
 delete mode 100644 package/libs/uclibc++/patches/002-quote-fix.patch

diff --git a/package/libs/uclibc++/Makefile b/package/libs/uclibc++/Makefile
index 763e0d9e4d..3adf70b360 100644
--- a/package/libs/uclibc++/Makefile
+++ b/package/libs/uclibc++/Makefile
@@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=uclibc++
 PKG_VERSION:=0.2.5
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=uClibc++-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://cxx.uclibc.org/src/
diff --git a/package/libs/uclibc++/patches/002-quote-fix.patch b/package/libs/uclibc++/patches/002-quote-fix.patch
deleted file mode 100644
index 49e7ac3d14..0000000000
--- a/package/libs/uclibc++/patches/002-quote-fix.patch
+++ /dev/null
@@ -1,13 +0,0 @@
---- a/bin/Makefile.in
-+++ b/bin/Makefile.in
-@@ -44,8 +44,8 @@ define do_wrapper
- 	$(Q)echo '	WRAPPER_OPTIONS="$$WRAPPER_OPTIONS -nodefaultlibs $$WRAPPER_LIBDIR -l$(LNAME) $$WRAPPER_LIBS"' >> $@.tmp
- 	$(Q)echo 'fi' >> $@.tmp
- 	$(Q)echo '' >> $@.tmp
--	$(Q)echo '[ -n "$$V" ] && [ $$V -gt 1 ] && echo $(CXX) $(GEN_CFLAGS) $(GEN_CXXFLAGS) $(EH_CXXFLAGS) $$WRAPPER_INCLUDEDIR "$$@" $$WRAPPER_OPTIONS' >> $@.tmp
--	$(Q)echo 'exec $(CXX) $(GEN_CFLAGS) $(GEN_CXXFLAGS) $(EH_CXXFLAGS) $$WRAPPER_INCLUDEDIR "$$@" $$WRAPPER_OPTIONS' >> $@.tmp
-+	$(Q)echo '[ -n "$$V" ] && [ $$V -gt 1 ] && echo $(CXX) $(GEN_CFLAGS) $(GEN_CXXFLAGS) $(EH_CXXFLAGS) $$WRAPPER_INCLUDEDIR $$@ $$WRAPPER_OPTIONS' >> $@.tmp
-+	$(Q)echo 'exec $(CXX) $(GEN_CFLAGS) $(GEN_CXXFLAGS) $(EH_CXXFLAGS) $$WRAPPER_INCLUDEDIR $$@ $$WRAPPER_OPTIONS' >> $@.tmp
- 	$(Q)echo '' >> $@.tmp
- 	$(Q)chmod 0755 $@.tmp
- 	$(Q)mv $@.tmp $@
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
