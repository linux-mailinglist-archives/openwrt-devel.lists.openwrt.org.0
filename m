Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCD1153932
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 20:40:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5dutGjItbN5t/UHZ0z9yiBKY4OqjndE+f79pkySKYfo=; b=kmG5M7VyXaLXjq
	jYO9sW0Vv8MJ1o/Lf3BbEwsjWeCSAaGLfcwn1Gx0z0F4N2jaLnYCR5HmhNLh5lAoEtZ2aU2nwFTgk
	vmRlVVhvLITWXjT7St4b/BkGcTid8Ho6l3aYBtMfDaAx2Q0oHDKeAXBPeO+B9WKQW6pPOhKAFv+oD
	VoZaPO4cSOkzZ/yKqkTqudayrfKOopPRV37t58zCvOAeAaY+Kr1Wy/8UDTcoxBjoL+VID7uUXCi81
	o/HakRv/rEJ+afQM5wgk2+yrTqlMBTcfjuFzEOP8zKolNJ3plLwcRGSb4mxpIPLPKb2DeTMNaHqUl
	MOnotyRYZ247pGW5AmDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izQWm-0004Eq-3h; Wed, 05 Feb 2020 19:40:00 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izQWf-0004EG-18
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 19:39:54 +0000
Received: by mail-wm1-x333.google.com with SMTP id t23so3790598wmi.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 11:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rXAsC4yg0ysKNv1JE++oHuxj9mPgTLyGLYTL8gQbFUI=;
 b=ftP8s3wS4gr8V3Cwl5nRo5wU16ME/8x3D20zyVWGZLMvTAACMQ0wS5SJRSefZbRsxX
 lRsy4Ct5f8w2vUqR/qyUUb34M7JwBeyC4+dxAr3r0f3rZwl7Gzkd7gSrddibscuTfz1h
 jyKqnQVXzkldT76CSSn+jiy6G/Rza7X2FN+aHmA/BY4pl9cgawZXcuFQ7vph8ys6sslH
 /mLSWZp9Rliq8/q7oGLMmiBqf2/vzjDjU7j5hkDEHSeZqY3Mkz/zzwU754S4AZkBNKkc
 qey9pVAQGLccYoiHXTI980xfQFyF8NPGKVEp9U4RB7jR63RBCRtM2W/rt9OsIUAXknKO
 Fifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rXAsC4yg0ysKNv1JE++oHuxj9mPgTLyGLYTL8gQbFUI=;
 b=GSVGGk9RMqrEOt4kI4dSBJ2z64ng85E7zPYLaQ2T6Kfgj96yjY4vfABST8kbrxd08C
 bJLHL8Z/e6MN13ojkZur9Xa23SV6zsAlvXLWfkbnTA51HKwNBuCNEsOBQcCgYpj+tKtx
 y99FlcxRuVRUAVyRaoEQobKZmoMNvcebZUlrlYltKD0n3IQUCBCb1DqKQJH0l5lFPPb/
 +lbpCWrOr/9DDkGCdB6myAU5j2UhDIKD7f61QDHmO+mZOi8la0lGyIqGjrgkiqc86rjb
 LX/qX8nJHzCXjObe9hRM/KD5cd5cIJastWo+A0+8IqvlKFJc6k3jZoi8qD1CiSnwAkY8
 PASQ==
X-Gm-Message-State: APjAAAXL62QWbfhqJpP0XUTDnkeNUVJnF3fzD7FMrjH+ghGVsj8MtXOi
 gVlD+mLoucbuAvvHpPLXNH3zFl08
X-Google-Smtp-Source: APXvYqwBOkvJMgBlvBg4gfLo94B+X0xVa6JR3xra9m0C9gqSa77IACfrBrnlVU6ZGMEAJbg9cKPB1A==
X-Received: by 2002:a1c:4e01:: with SMTP id g1mr7026067wmh.12.1580931587526;
 Wed, 05 Feb 2020 11:39:47 -0800 (PST)
Received: from localhost.localdomain ([2a01:c22:cc11:d301:159f:9887:75e9:ef])
 by smtp.gmail.com with ESMTPSA id
 r3sm1060783wrn.34.2020.02.05.11.39.45
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 11:39:46 -0800 (PST)
From: Eduardo Abinader <eduardoabinader@gmail.com>
X-Google-Original-From: Eduardo Abinader <eduardo.abinader@lancom.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Feb 2020 20:39:40 +0100
Message-Id: <20200205193940.6730-1-eduardo.abinader@lancom.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_113953_098218_34B6A5D1 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eduardoabinader[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] check: bump 0.14.0
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

From: Eduardo Abinader <eduardoabinader@gmail.com>

Compiled and run in x86_64.

This release adds support for CMake's FetchContent.

Changes:

    -Add support for FetchContent in CMake
    -Rename CMake project from 'check' to 'Check'
    -Fix for checking for wrong tool when building docs in Autotools
    -Fix compiler warning with printf format
---
 libs/check/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/libs/check/Makefile b/libs/check/Makefile
index 35f90c3..52a400d 100644
--- a/libs/check/Makefile
+++ b/libs/check/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=check
-PKG_VERSION:=0.13.0
+PKG_VERSION:=0.14.0
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/libcheck/check/releases/download/$(PKG_VERSION)
-PKG_HASH:=c4336b31447acc7e3266854f73ec188cdb15554d0edd44739631da174a569909
+PKG_HASH:=bd0f0ca1be65b70238b32f8e9fe5d36dc2fbf7a759b7edf28e75323a7d74f30b
 
 PKG_MAINTAINER:=Eduardo Abinader <eduardoabinader@gmail.com>
 PKG_LICENSE:=LGPL-2.1-or-later
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
