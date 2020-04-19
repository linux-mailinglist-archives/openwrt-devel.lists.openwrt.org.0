Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 420251AFED9
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 01:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJBez1I6wj7eYM6R3Xr4wsgTwIl7F/fXO96Tj5rc85I=; b=slLsl5uVaSIiDP
	MlBoBadhWJY1Uommwj8ALxjFiYP6ddHxD8iFooQBCcLp8PteTUTEQCge4snadt8VucqBeo6qdPJIU
	GkCvaJuv1YmlOfml9YtNJvIPL38B4NDrXAro9hqy+2Nst6C+kCTr1Yc7f9NwdXxT3bsmByHDlJPFB
	1qjTWGn5VFvLsM6P9X1HvTPahj3fXoNY7bt4teHN7otltKsQEn9SK7RKxOIp63MFsnplg/+y5GJo9
	nDTUZ7gvXDNqnmZX9lScb5uEMMB8QGF0Df8CoHkAadkEwzFJXrTaP5q5E28xNStnMzNq2X/sanKAh
	lS9OcN1CFPr2ZG7sYb0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQJ8k-00083Z-9n; Sun, 19 Apr 2020 23:14:18 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQJ8W-00081p-4K
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 23:14:05 +0000
Received: by mail-qt1-x831.google.com with SMTP id l60so7052398qtd.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 16:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X2TeCgF897oDIVf9UmL13p5aWPnHbMfjXJomYERYGFc=;
 b=t/GrTTmtEoW86OwxSVZ4p7kdRUj6o1iwLVQiHo2n6MU7IyJKQueI+YCbbBQY4uH+yj
 sRRn+8tcvJA1HU7s50B/Lb/jD/5aEl37NFUkujn6EfEITbeUYPsYjC4xpj7PcEC2puUx
 8RJ4U75uPjOexZm4nuIZOYLfn6fqWud+xzZ1NfdMYKvI2mMNOAaaXGOUWHGo42dhtNyC
 2UioyqfIVgjPqqg+m7TjoyJqfJc2oU0rmtj+pJTW5VLvTJjMSTOLZbu+JUCPqd9GXSPX
 ol8sSB4SUjSy1OXQLP6UUfxFa65mw12YPdfYOnoaiNcLBvYNnSmZFCRI45+gk65yhXeb
 yCJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X2TeCgF897oDIVf9UmL13p5aWPnHbMfjXJomYERYGFc=;
 b=Eqzf3tCeOvhPWkcc98w5ya/JlrUtpGctzEejJB8E4UK0nPOdHpAouk6Nk0XGnWWowG
 WEwTVOwlPGyEX6AA6hzviea+6phOubrt1zwsQL3dBZVlQgGhcojM1+Wlc0FA432qExj1
 ObM3WhghedvPvX4Xl6LwdLoMfJSLD2rgv1G2JqSlV5rBnplh9LRI9Itarw/fNol/d8BP
 SyAKulr8BQCscWQdGw90v8+56w31E1RPAFSdyUyB84gS06R4bTNKpw5RJKF0LgAkvQBh
 rmHi1mGzKmHwOgwI/+iGUuFh06WTNzdR7Gs6BJYIH8x+2ns/tnI4K3tEDgC3EQgmuq3n
 zYkQ==
X-Gm-Message-State: AGi0PubCB9HmzgBN+117MTMxUfz6xyU83sQNbXCIq17/5qsX81swruzB
 mjgmhYQFpb11AV7z0A07etwjwOkTL5k=
X-Google-Smtp-Source: APiQypJIu42gY/d+tTemARhPjZj5ez00GQUvJbkAe7JDpGIRHj2G5fPEgd9KXqj3+1MYmJM0ap7XFA==
X-Received: by 2002:ac8:ff2:: with SMTP id f47mr13840448qtk.48.1587338042656; 
 Sun, 19 Apr 2020 16:14:02 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e133sm4173650qkb.128.2020.04.19.16.14.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 16:14:02 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 19 Apr 2020 20:12:51 -0300
Message-Id: <20200419231252.19853-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200419231252.19853-1-cotequeiroz@gmail.com>
References: <20200419231252.19853-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_161404_173030_1FCDAFE5 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:831 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3 2/3] build: add option to treat recursive
 deps as error
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>, Jo-Philip Wich <jow@mein.io>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Running make with RECURSIVE_DEP_IS_ERROR=1 will cause a hard failure
when a recursive dependency is detected.  This is useful to apply
stricter Ci tests, for example.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/include/toplevel.mk b/include/toplevel.mk
index ad8e5b8f20..5cf93ce7ef 100644
--- a/include/toplevel.mk
+++ b/include/toplevel.mk
@@ -99,6 +99,9 @@ prepare-tmpinfo: FORCE
 		$(_SINGLE)$(NO_TRACE_MAKE) menuconfig $(PREP_MK); \
 	fi
 
+ifeq ($(RECURSIVE_DEP_IS_ERROR),1)
+  KCONF_FLAGS=--fatalrecursive
+endif
 ifneq ($(DISTRO_PKG_CONFIG),)
 scripts/config/%onf: export PATH:=$(dir $(DISTRO_PKG_CONFIG)):$(PATH)
 endif
@@ -111,7 +114,7 @@ $(eval $(call rdep,scripts/config,scripts/config/mconf))
 
 config: scripts/config/conf prepare-tmpinfo FORCE
 	[ -L .config ] && export KCONFIG_OVERWRITECONFIG=1; \
-		$< Config.in
+		$< $(KCONF_FLAGS) Config.in
 
 config-clean: FORCE
 	$(_SINGLE)$(NO_TRACE_MAKE) -C scripts/config clean
@@ -120,7 +123,7 @@ defconfig: scripts/config/conf prepare-tmpinfo FORCE
 	touch .config
 	@if [ ! -s .config -a -e $(HOME)/.openwrt/defconfig ]; then cp $(HOME)/.openwrt/defconfig .config; fi
 	[ -L .config ] && export KCONFIG_OVERWRITECONFIG=1; \
-		$< --defconfig=.config Config.in
+		$< $(KCONF_FLAGS) --defconfig=.config Config.in
 
 confdefault-y=allyes
 confdefault-m=allmod
@@ -129,7 +132,7 @@ confdefault:=$(confdefault-$(CONFDEFAULT))
 
 oldconfig: scripts/config/conf prepare-tmpinfo FORCE
 	[ -L .config ] && export KCONFIG_OVERWRITECONFIG=1; \
-		$< --$(if $(confdefault),$(confdefault),old)config Config.in
+		$< $(KCONF_FLAGS) --$(if $(confdefault),$(confdefault),old)config Config.in
 
 menuconfig: scripts/config/mconf prepare-tmpinfo FORCE
 	if [ \! -e .config -a -e $(HOME)/.openwrt/defconfig ]; then \
@@ -210,7 +213,7 @@ ifeq ($(SDK),1)
 
 %::
 	@+$(PREP_MK) $(NO_TRACE_MAKE) -r -s prereq
-	@./scripts/config/conf --defconfig=.config Config.in
+	@./scripts/config/conf $(KCONF_FLAGS) --defconfig=.config Config.in
 	@+$(ULIMIT_FIX) $(SUBMAKE) -r $@
 
 else
@@ -219,7 +222,7 @@ else
 	@+$(PREP_MK) $(NO_TRACE_MAKE) -r -s prereq
 	@( \
 		cp .config tmp/.config; \
-		./scripts/config/conf --defconfig=tmp/.config -w tmp/.config Config.in > /dev/null 2>&1; \
+		./scripts/config/conf $(KCONF_FLAGS) --defconfig=tmp/.config -w tmp/.config Config.in > /dev/null 2>&1; \
 		if ./scripts/kconfig.pl '>' .config tmp/.config | grep -q CONFIG; then \
 			printf "$(_R)WARNING: your configuration is out of sync. Please run make menuconfig, oldconfig or defconfig!$(_N)\n" >&2; \
 		fi \

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
