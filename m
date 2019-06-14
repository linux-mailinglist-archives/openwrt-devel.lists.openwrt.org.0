Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D46467A6
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 20:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4rJhvGJ+rs9+QDtdo1AezouwtOTOPJ3kY+vwch9srY=; b=bUNrpUxVxBoULB
	BVEIzUze1SLrzv1BiXVchBOXakNNgeM2RE+bDg6DN2SGwguH0aRtzAsS56fLqKgFHG/wrY/fJTiMj
	raJQtl1Qk0OVfyHuptvWzYB2MuPLHRuY0bDXyretbIoxygZn/On0vLzJZs9R7Jh3uzkdMUL5Mto9s
	FkZv4cluHihUWPGFGk8I0b9Uw2qL7G2pgNxZPORaRJCF76h4DhBHLaaO0qeVMIQZGDPHBwzc8xdNx
	xZ6Bl62WeiblgGURlamNJG+C8b7YWml6d3MAgPm3cfuHJO1rEXa9tAgT+x6nno0km4cJUDpT40Ixn
	pQJzgWcVTowJfbBBpAUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbr45-0002sX-Gy; Fri, 14 Jun 2019 18:36:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbr3G-0002Ab-1K
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 18:35:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so1933111pfe.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Jun 2019 11:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wVZgSvl2KDiUa1jCOA8LJdoqNcvq4kvvMCdLoWrv0CY=;
 b=LavVDxOPvjlxTEAwD3RZtQxI5iFaBslR+MHW2rL0U7/CCI2Qc2vKo9bzjoAfPpJJia
 UvJFGKwoHMClJENeDtP6Vpk+P+AkzCON33ynF1Ve0Vj8fdeO0D8bmbVyB9pWYNCwHJPM
 Q0acjYIf/gbExDVikmn2Q+b0hmZSNlwbn18pm1xImFGe9Vr2jNd9VTDINEoZzNdA6g9Q
 HPVZMCVpg3x30mKChMPSluRUA97k1N7Egz86hOyng4ezLI1PndvM/fPBv1+wpZOtUuVk
 tv1IVR1hesi0Cn5WFbuwmNXbFucyZehOeh1xn+L7fT8zK9wreBGlYnjCOlZU2y78QEK+
 sSpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wVZgSvl2KDiUa1jCOA8LJdoqNcvq4kvvMCdLoWrv0CY=;
 b=HqUK+f0Um2DeP7sz4rKJvRSMcSR4BNaIDLi4HLZxSu51bUUc6cEK+oixhR0fudS38/
 Tv3WY44N8XHw22OEuIVsDq1JZBT5YgTWJCNCvMfE+7p+pEvXtoWyQBXPhl+wGK/ixuVB
 XgI5rBETgP+sMpxVRakcZ0mhhSg9AnMy5j7qPN9R58LIQeVsPbEcfd+iQvZjDVR0RRcZ
 7mq2sPnYRWALwRLQ2BbvdYfKP2lleqHfKAzuzgBGDxqiGTNI7zGv+DNInxaT0qsFQCMe
 wQDjlgZtqKsdLlOGWM8M7suRcBTxHtCcnTg4QFlNlN1QSVzR7hCzQlqG3oxtQe+/WyHL
 mf0g==
X-Gm-Message-State: APjAAAXiI+wEAz1v2fXtRDkdycWil3e1BRCwpsIM0rTpAZLqRKazT2ui
 az64N0ZQnshse/n1haXFBHv7u6eDARM=
X-Google-Smtp-Source: APXvYqwo5sMFOKGm2vKP0td3SXwAy4E1/tJBOqsFbvLj/vQAnFseExlvqeG5luTgQlacDskz3z9Mvw==
X-Received: by 2002:a62:ed0a:: with SMTP id u10mr66529243pfh.243.1560537348917; 
 Fri, 14 Jun 2019 11:35:48 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id a24sm3388775pgb.85.2019.06.14.11.35.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 11:35:48 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 02:35:32 +0800
Message-Id: <20190614183534.14768-4-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614183534.14768-1-jeffery.to@gmail.com>
References: <20190614183534.14768-1-jeffery.to@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_113550_122463_5F676A5F 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 4/6] tools/autoconf,
 tools/quilt: Use default Host/Compile and Host/Install
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Since bash is used for all submake processes, it isn't necessary to
override Host/Compile and Host/Install to explicitly set SHELL=bash.

Using the default Host/Install also allows their files to be
automatically tracked and uninstalled.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 tools/autoconf/Makefile | 13 -------------
 tools/quilt/Makefile    | 13 ++-----------
 2 files changed, 2 insertions(+), 24 deletions(-)

diff --git a/tools/autoconf/Makefile b/tools/autoconf/Makefile
index 6eb64d77d5..671564337f 100644
--- a/tools/autoconf/Makefile
+++ b/tools/autoconf/Makefile
@@ -21,17 +21,4 @@ HOST_CONFIGURE_ARGS += \
 HOST_CONFIGURE_VARS += \
 	PERL="/usr/bin/env perl"
 
-define Host/Compile
-	export SHELL="$(BASH)"; $(MAKE) -C $(HOST_BUILD_DIR)
-endef
-
-define Host/Install
-	export SHELL="$(BASH)"; $(MAKE) -C $(HOST_BUILD_DIR) install
-endef
-
-define Host/Clean
-	-export SHELL="$(BASH)"; $(MAKE) -C $(HOST_BUILD_DIR) uninstall
-	$(call Host/Clean/Default)
-endef
-
 $(eval $(call HostBuild))
diff --git a/tools/quilt/Makefile b/tools/quilt/Makefile
index d0532b5984..e8f1a7a05f 100644
--- a/tools/quilt/Makefile
+++ b/tools/quilt/Makefile
@@ -21,16 +21,7 @@ define Host/Configure
 	[ -f $(HOST_BUILD_DIR)/Makefile ]
 endef
 
-define Host/Compile
-	$(MAKE) -C $(HOST_BUILD_DIR) SHELL="$(BASH)" all
-endef
-
-define Host/Install
-	$(MAKE) -C $(HOST_BUILD_DIR) SHELL="$(BASH)" install
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/quilt
-endef
+HOST_MAKE_INSTALL_FLAGS += \
+	BUILD_ROOT="$(HOST_INSTALL_DIR)"
 
 $(eval $(call HostBuild))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
