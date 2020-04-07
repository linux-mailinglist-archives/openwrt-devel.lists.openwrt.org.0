Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E751A1683
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 22:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SI1esR/z/Prccx2Y8hpe7kGGlCX5wp3M5OsBUhmHluE=; b=fIHPnr1MJAGAcR
	8IzUpwOn8CUr83aBaHYYvyQ00bLSP7IQW6Etn9O/kh5toSmtnvl/GkMuQBB6vy1CBnBIim6j4Ngrt
	gMqSJyr6p+cDwYLLAynLXSYYq7bVwLZGBMp4uKBJgcbX4GTXljWB7EBqrsqHUeP1XfqhUaKWKgTOs
	WdWIhq8wWWmtb6VBpWt9SoLw+wwqvLNaeE7drxPpx51Yf453wa+GwNz3DpvCvozutsnDQKoq8/1NX
	eCTJXo8TlCL9Mi1FXatQ36IGXsyOK4wTnJPgzfUmRQMPuWPQ/cHDz5ThIh4n8DYwbsLKfpJhVoqT4
	JBFF3mB+HZtW5DsQYZHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuWO-0007Rz-TK; Tue, 07 Apr 2020 20:08:32 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuVc-0006Zs-1f
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 20:07:45 +0000
Received: by mail-qv1-xf32.google.com with SMTP id z13so2516192qvw.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 13:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x9EOu/TC5cmArJzuQ7Cq6UDxZwrCZ1sq8UazM3TEsHA=;
 b=VvJIqf0yMfFu0AAJtY2KmyLD+EUClHAIrUH1FpbtOPe7iuWBcNjzmi51wBeth/ULOB
 yLnbpO+1kIsWvHGHcshQsHNblw7r87oQkw6Kyg+vKvSd0TM++GJsYhT5vfIpNaIpCAYo
 hg5BR3Toztk8LcH3JBZ86PD8uSUcVgQKgIdwU8afC7AMXayBsQ1Gh/C8CVlJSZgwDu+P
 nLrEtTBoOUQP4PRJ1LVacQrNoN44xqk5F/mUhIsIX50gkoctyzJnDqiK7pRYLcrxwLmM
 abeQeEQ3JgLwCo2bGkjNEa6M0yTLBZC5uzgtBcCulxYBXCjt0WjocLRqBAcFzkVojLvp
 CEag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x9EOu/TC5cmArJzuQ7Cq6UDxZwrCZ1sq8UazM3TEsHA=;
 b=RpyCqX2+yxukynFK3BlffNlrN0TFXccYHde2ChqOxY2fUWstOOIxRaQnufu4hd0ov4
 8FcO6DvdwtFCOjMu4nh39aoNM0HBgfDVCP7m5KbBHGNiYnxE17TMDu8z/CGO25f+YphI
 f0WVgGdlTVzQlEfOJixN8DGnJhZWyfJC6lRnA7ba04tH1KhtTK/6F0rsGMYzBJgaXZ3N
 b2DUPYjEtRdXkj5kNsxnj2Ra45pRu9Vt9DfxI8ii4t2dJLp7+1XvbYJs8VceG+Ao5TqB
 1EhQFXcp+qkoRcBqyktYoHtriwu1rp/WVuL/ANKfT8EzFqF9yeNlzJAqYudUSjo/e+Gs
 t3rg==
X-Gm-Message-State: AGi0PublDVOqnEZ4IliLSzd3BqvW9k+k+6Q48bu1LZ8Al3BETZmnX26D
 wIPNfw2jn+Se3Mmm0VUQV/hRNPY6joI=
X-Google-Smtp-Source: APiQypJ0tgdxFfDR3BWRJTHIvzZr090KVkIflRkhHCjiGVxXGqozLj0V9I9WyMx/c9JiPRNsWCG5iw==
X-Received: by 2002:a0c:ea42:: with SMTP id u2mr4014406qvp.226.1586290062190; 
 Tue, 07 Apr 2020 13:07:42 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e10sm4913365qtj.76.2020.04.07.13.07.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 13:07:41 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 17:07:22 -0300
Message-Id: <20200407200724.8308-5-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200407200724.8308-1-cotequeiroz@gmail.com>
References: <20200407200724.8308-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_130744_095825_89A50CC3 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f32 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 4/6] build: simplify building *config
 targets
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Instead of passing pkg-config location through a variable when building
qconf (make xconfig), prepend its parent directory to the PATH, as it is
being done for other conf targets.

Use a Makefile pattern rule to group all 'scripts/config/%onf'
(currently conf, mconf, qconf) targets in a single rule.  Add -O2 to
CFLAGS when building them as well.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
 include/toplevel.mk     | 15 ++++-----------
 scripts/config/Makefile | 23 +++++++++--------------
 2 files changed, 13 insertions(+), 25 deletions(-)

diff --git a/include/toplevel.mk b/include/toplevel.mk
index 2b3b55db9f..2965f75c7c 100644
--- a/include/toplevel.mk
+++ b/include/toplevel.mk
@@ -100,21 +100,14 @@ prepare-tmpinfo: FORCE
 	fi
 
 ifneq ($(DISTRO_PKG_CONFIG),)
-scripts/config/mconf: export PATH:=$(dir $(DISTRO_PKG_CONFIG)):$(PATH)
+scripts/config/%onf: export PATH:=$(dir $(DISTRO_PKG_CONFIG)):$(PATH)
 endif
-scripts/config/mconf:
-	@$(_SINGLE)$(SUBMAKE) -s -C scripts/config all CC="$(HOSTCC_WRAPPER)"
+scripts/config/%onf: CFLAGS+= -O2
+scripts/config/%onf:
+	@$(_SINGLE)$(SUBMAKE) -s -C scripts/config $(notdir $@) CC="$(HOSTCC_WRAPPER)"
 
 $(eval $(call rdep,scripts/config,scripts/config/mconf))
 
-scripts/config/qconf:
-	@$(_SINGLE)$(SUBMAKE) -s -C scripts/config qconf \
-		CC="$(HOSTCC_WRAPPER)" \
-		DISTRO-PKG-CONFIG="$(DISTRO_PKG_CONFIG)"
-
-scripts/config/conf:
-	@$(_SINGLE)$(SUBMAKE) -s -C scripts/config conf CC="$(HOSTCC_WRAPPER)"
-
 config: scripts/config/conf prepare-tmpinfo FORCE
 	[ -L .config ] && export KCONFIG_OVERWRITECONFIG=1; \
 		$< Config.in
diff --git a/scripts/config/Makefile b/scripts/config/Makefile
index 0eac8edd22..1f9184e3aa 100644
--- a/scripts/config/Makefile
+++ b/scripts/config/Makefile
@@ -39,12 +39,7 @@ conf: $(conf-objs)
 mconf: $(mconf-objs) $(lxdialog-objs)
 	$(CC) -o $@ $^ $(call check_lxdialog,ldflags $(CC))
 qconf: $(qconf-cxxobjs) $(qconf-objs)
-ifneq ($(DISTRO-PKG-CONFIG),)
 	$(CXX) -o $@ $^ $(HOSTLOADLIBES_qconf)
-else
-	echo "You don't have 'pkg-config' installed. Cannot continue"
-	echo "For now, you may use 'make menuconfig' instead of 'make xconfig'"
-endif
 
 clean:
 	rm -f *.o lxdialog/*.o $(clean-files) conf mconf
@@ -74,17 +69,17 @@ qconf.o: .tmp_qtcheck
 # Qt needs some extra effort...
 .tmp_qtcheck:
 	@set -e; echo "  CHECK   qt"; \
-	if $(DISTRO-PKG-CONFIG) --exists Qt5Core; then \
-	    cflags="-std=c++11 -fPIC `$(DISTRO-PKG-CONFIG) --cflags Qt5Core Qt5Gui Qt5Widgets`"; \
-	    libs=`$(DISTRO-PKG-CONFIG) --libs Qt5Core Qt5Gui Qt5Widgets`; \
-	    moc=`$(DISTRO-PKG-CONFIG) --variable=host_bins Qt5Core`/moc; \
-	elif $(DISTRO-PKG-CONFIG) --exists QtCore; then \
-	    cflags=`$(DISTRO-PKG-CONFIG) --cflags QtCore QtGui`; \
-	    libs=`$(DISTRO-PKG-CONFIG) --libs QtCore QtGui`; \
-	    moc=`$(DISTRO-PKG-CONFIG) --variable=moc_location QtCore`; \
+	if pkg-config --exists Qt5Core; then \
+	    cflags="-std=c++11 -fPIC `pkg-config --cflags Qt5Core Qt5Gui Qt5Widgets`"; \
+	    libs=`pkg-config --libs Qt5Core Qt5Gui Qt5Widgets`; \
+	    moc=`pkg-config --variable=host_bins Qt5Core`/moc; \
+	elif pkg-config --exists QtCore; then \
+	    cflags=`pkg-config --cflags QtCore QtGui`; \
+	    libs=`pkg-config --libs QtCore QtGui`; \
+	    moc=`pkg-config --variable=moc_location QtCore`; \
 	else \
 	    echo >&2 "*"; \
-	    echo >&2 "* Could not find Qt via $(DISTRO-PKG-CONFIG)."; \
+	    echo >&2 "* Could not find Qt via pkg-config."; \
 	    echo >&2 "* Please install either Qt 4.8 or 5.x. and make sure it's in PKG_CONFIG_PATH"; \
 	    echo >&2 "*"; \
 	    exit 1; \

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
