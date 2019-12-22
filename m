Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C27128C2A
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 02:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PYYcKOMtvRBrFCrJV4fihYQ3DgsvFAxrJ6AyCPE/VM4=; b=NVMN44Cd0Oall9
	uARJOOuGhRLd+smuBkRdijrFpB0S8thgPY/kp4U84/7H0enWviYN6owbHLuVr31Bdhs/ZStzTm69u
	LTjPDpu7MlllozDHvrc7HC357hYjWqi8d9Eg4zuaqVTZBbLOB5g+PUSxDEevujCYiMgfDun2i1cxx
	/VtTivSNY0rmQEBOdDQSieuAQ0NvYQyif3Glu9t3t1mQKf+VG8xam/FyejO3HihSyX6I1l+Uhi9uL
	mLUFV+KP/VQeWIBhYP1tqq8SSbCTSbfkVRLJ1r0NUS2U3y4aqajfuIPpoHbbUesvzOeSl1nphxplt
	Za6nIsMfG2GyXXm9EaGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiqPe-0003gD-Fz; Sun, 22 Dec 2019 01:52:06 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiqPU-0003ft-SX
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 01:51:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l35so5865963pje.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 21 Dec 2019 17:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GRSQfcTnDXCgwMkMC+PMXxamz2vOOtybUA86cVkHjHw=;
 b=q1OpfOtysSVyX90Sb817OM2WFyD/f9FhU5gab7mt4diCvW+PL5P+CRrdJac6QWK5fM
 +VrRotrwZ/NoByh/JnT8yNsWdIKbcBNrsh7lyRYQIxhgL4aKeYJX6v3DEA6/43Y0XWkn
 k1abYIeHYA8tli3L23z+vAZ1x+M9nwgbrlkaf54ICMQtz0BBN8eNOXtI7jZmKwQpzKuv
 gPs39hDgYByW0lVnNcQBJ5KrnbZdLNOZhT2bW4EqOQJQFUFI9RX7PKYYtf62RdRPxKQy
 QyzuUbsU95XvKGOWMnDUhg50tmX5gBMMslWMWOuO1dKl65iOh81bWBDlDxl9yMp93XCT
 bodA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GRSQfcTnDXCgwMkMC+PMXxamz2vOOtybUA86cVkHjHw=;
 b=gS1lJf70xjW3lSF5leScOZFISYuTzaIPum4wKrDxWxpQe0OoUgseODFeMxjTUWkySw
 P+RVtR13ERobCfB3Rz16WPsnya3Cg6hlkxC+DSLZl7ENLha9wOYE0WB8FWAxmu3ndAhM
 1WouxUhuPCW2GS8FvkZizvD+sShXZ/luo/Vxp6Z9m1zaw2BCxIiH4YQ6Cq86B953BIb6
 VXqACX5TV0nWkkCgp+tw19uWWcJNA8WaVdEFUNQzAYwRRvx63yrxIpkcVBFcCEyToD63
 N/U5NKjphSPQ3epJLmS/yvWxvZSf6qWLuPXLQhd9y0eLMx61kgGa0WU8l4mheDijmFyN
 Gdaw==
X-Gm-Message-State: APjAAAUk50O+hzRndLKQMsQc/45m4wmq326DgFJrUCySyHYL0OaCtI0i
 8yrvNOC3sVBi+nRjXGo9dFb15IE0qxY=
X-Google-Smtp-Source: APXvYqxQL3ZLuf+Hd0zxsUnHnyv7pQHRhor1nKV1zchdzE65j5pVcr5De8DrYgj8P3f6j2inewSkyQ==
X-Received: by 2002:a17:902:a516:: with SMTP id
 s22mr23598084plq.89.1576979510346; 
 Sat, 21 Dec 2019 17:51:50 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id y197sm19075276pfc.79.2019.12.21.17.51.48
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 17:51:49 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 21 Dec 2019 17:51:47 -0800
Message-Id: <20191222015147.671590-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_175156_946884_8F37BA2F 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] perf: Add libunwind only if selected
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

The depends are totally wrong. libunwind does not work with powerpc and
i386 as it needs glibc.

Instead of duplicating the platforms, just change the dependency.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/devel/perf/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/devel/perf/Makefile b/package/devel/perf/Makefile
index 6f31c826e5..aa5fb16f60 100644
--- a/package/devel/perf/Makefile
+++ b/package/devel/perf/Makefile
@@ -10,7 +10,7 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=perf
 PKG_VERSION:=$(LINUX_VERSION)
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_USE_MIPS16:=0
 PKG_BUILD_PARALLEL:=1
@@ -26,7 +26,7 @@ include $(INCLUDE_DIR)/package.mk
 define Package/perf
   SECTION:=devel
   CATEGORY:=Development
-  DEPENDS:= +libelf +libdw +(mips||mipsel||powerpc||i386||x86_64||arm||aarch64):libunwind +libpthread +librt +objdump @!IN_SDK @!TARGET_arc770 @KERNEL_PERF_EVENTS
+  DEPENDS:= +libelf +libdw +PACKAGE_libunwind:libunwind +libpthread +librt +objdump @!IN_SDK @!TARGET_arc770 @KERNEL_PERF_EVENTS
   TITLE:=Linux performance monitoring tool
   VERSION:=$(LINUX_VERSION)-$(PKG_RELEASE)
   URL:=http://www.kernel.org
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
