Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99726CF01B
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 03:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D1cyxt+6QzO4ov887UrZChdgD7tgNY/pMISUum4l980=; b=dVDV8nxye6ZcVL
	F133vayeV075U85FRLf6lB0eM4wpQPJfShSHRSVz1IhIR3suI/w27Cude53f6zUQwxvdDNwA/UeK9
	ZQcqaOnSbkN7ew5MrJVh5KupD9NjcnMmz0bmdg166yyyPWvOAGV6d9nnrsKONkjCCqfWeKyzHbkEn
	G+Kq50d2gtX/W/emTc3Ho8pT9HejzUEQH4czU0m1TYq8zXCj0z79nknEW+Rv7yPl1QTyezy009zS+
	Tjt+QF/KV4AX86ew2vpemwBP5SrfPriJmeZ2tIFsI06ShCGlppPoNTG3bWWnaqtazgpd0Lcsab8u2
	d/HnO3wPRH78nQ1nVgLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHdtf-0005n0-N9; Tue, 08 Oct 2019 01:02:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdtW-0005la-EP
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 01:02:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id q12so9737651pff.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 18:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=NzmQ7+z11v3r1CVbIdxzu4dbsI14WgNHNWjEBJE0kzg=;
 b=EmQi5H9TQiCw5Htn+g+JiWkcszR2IrsMWLa1cVlKSLFhSbkz0fkFsENBUHxR43Rly9
 SqWTKm7h23vwVmIOjqD419xucRvbT+L6VsEIyFXZf9NhNuIMov9O57IBBXk4cwz7f90O
 vJJulq342GfVBNLFuaLhPd+XyGOr+qvNuwHfQR09y5bYz7bvD62627JEwKgNigFD8OQr
 jX6maoRCFqmAAYWgXWX9h7GDZGkmmnsjmRLteUiOQyrtPqJkaZ80+6InWbaP5S3sX+de
 J7nJamNtLhGLJXnjgOHsOuGuT9uaRK3XotWhCO8vs9/y9LPyKBPAj+Kheyl01s0l+0aj
 tIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=NzmQ7+z11v3r1CVbIdxzu4dbsI14WgNHNWjEBJE0kzg=;
 b=uLS54OQ5ed5piL18LDW+FnSHhrW1bUT+MrjomG4bV2MIw5eljBOWviGHb3+a+4DLFL
 z/XKFqBWj3Fhrh53WPlPcezb9/Qqw7AzCHU43Uz87mX0igRI1NMyhsyUPHX7iTIk5jGr
 pP1CI23bzV5KHtRt8xKCkEW18lelTbNBEOzGIwpnfgcvZmuNt8ADCBW0J7KmKm2KHbph
 MjdT1FZZ5bO5P/MTQCKhJL7+Prx3HPvfyb2fh7TB7r89WypIu2LOjs6cIHAiLQW9rszy
 PtHKNZ2Q46KeZhjWaimN/ddA2MtKeuIXt9Ka0O5YIKU0yq5E5HnZAsb1OmqKLZo+Ne+m
 h40g==
X-Gm-Message-State: APjAAAUtVy/y7z5THeDcB47HyPpEpTJxZn9BBQXydVBOpu0Qx+MLQ8rM
 azVJjjbnDIBrbFQ4c6kyGxX1a0bD
X-Google-Smtp-Source: APXvYqwUD5TRTOiVDd416vNaHd/uKSybdxD/2+yeiwLSFQSNp1/yK0vDGUmWphza1vEnshT4851/dw==
X-Received: by 2002:a63:1526:: with SMTP id v38mr34378562pgl.419.1570496547962; 
 Mon, 07 Oct 2019 18:02:27 -0700 (PDT)
Received: from mangix-pc.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id x9sm594901pje.27.2019.10.07.18.02.26
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 18:02:27 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 18:02:18 -0700
Message-Id: <20191008010225.8822-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_180230_479390_DE135851 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/8] ncurses: add cygwin compatibility
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

From: Alexey Loukianov <lx2@lexa2.ru>

* Properly handle ".exe" suffix for cygwin.

Signed-off-by: Alexey Loukianov <lx2@lexa2.ru>
(bumped PKG_RELEASE)
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/ncurses/Makefile | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/package/libs/ncurses/Makefile b/package/libs/ncurses/Makefile
index e22eb2b893..07e0fb5c5f 100644
--- a/package/libs/ncurses/Makefile
+++ b/package/libs/ncurses/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=ncurses
 PKG_VERSION:=6.1
-PKG_RELEASE:=5
+PKG_RELEASE:=6
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=@GNU/$(PKG_NAME)
@@ -26,6 +26,12 @@ PKG_BUILD_DEPENDS:=ncurses/host
 include $(INCLUDE_DIR)/package.mk
 include $(INCLUDE_DIR)/host-build.mk
 
+ifeq (CYGWIN,$(findstring CYGWIN,$(HOST_OS)))
+EXEC_SUFFIX:=.exe
+else
+EXEC_SUFFIX:=
+endif
+
 define Package/terminfo
   SECTION:=libs
   CATEGORY:=Libraries
@@ -167,7 +173,7 @@ endef
 
 define Host/Compile
 	$(MAKE) -C $(HOST_BUILD_DIR) libs
-	$(MAKE) -C $(HOST_BUILD_DIR)/progs tic
+	$(MAKE) -C $(HOST_BUILD_DIR)/progs tic$(EXEC_SUFFIX)
 endef
 
 $(eval $(call HostBuild))
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
