Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CEC1384BA
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 05:44:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yHFvPxZQjeAkcgIk3s7zdaJmANVwS+NC9KraqmUGEi8=; b=Ujh2u6uwhiZSAa
	ubX6silZ0SoC9Pb/4WmGqi7H0wiRwvvEcLYwr6c5FA2/mj/9/Gbhn1HdGQP4r203TwhND9oh+JHEL
	XN8BGmIS9BzV2iOokd4DZISJwlUCHh6i2o5ymnh29ARqQ3M65+21+LlbY7DQ51B2ZNLIl2Nea0eE0
	ldV7WiexMbjzHS4z8zyP2xTHVTwwf2hA3nFZmMiNYYSHulTHIt80LjWl2GIoXCnMQOIpmq9tUqWbu
	OLro+j3ocxxPgOVJexxz78W/4Z6V4wXLRlauLJEGYYyVvmniufxVMDLTUlDRGq4SBU4mKHItQxne/
	+b1xSSX1fQaXoP5rS4hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqV7I-0004pH-Sg; Sun, 12 Jan 2020 04:44:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqV7A-0004or-Hp
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 04:44:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id x8so3025827pgk.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 11 Jan 2020 20:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z293yQIl4XBtEDCoUt9y8lWU16mfWuXDHBWn1zyfc4g=;
 b=BGJcefMQ3o170gk4XBN9CO/HaNEe8cUx9oDK/pO35uDOz2f6OcSqy56MqiDwu3iJYm
 sOi9aelPiRJVDiG6DyTtfY0NfcObjiSEjPiyBaIFtwN9wZbuhAz8jLY9jvrf55BxjdtI
 valhEP5ECvuQqE36mPclmlKRUCccQ3m2p3Pbska9YMYPuentr8bkMVbVALQGn4PUrjfP
 7y1k4SsDe9hg28UjotQ8GL7BMCss7q8mW7guy2dc8nEs4zdjB2XIMTT4vO2h942lBHcg
 IlfwQBpqeJ46v6PfugG6YYe96OVDFX2krkfd4GzvmFm/AbfeAiEQmFvPlU/xnuL3jneH
 7CSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z293yQIl4XBtEDCoUt9y8lWU16mfWuXDHBWn1zyfc4g=;
 b=oTGuLrbTFZBOcv9JhMc4hYL5G06gvl+iQDx2TDqm8yZ9ojdBvP2dN+UAl8Jm59Z6aF
 BkQNzjA/MHIK2BK8DZtyPM5/4PVKviJEy0kIViTwB2MzYtuIEp9BT8qMS1bcOC+K7k5e
 YphhBos1F1qiKYb2FIRm7vr5tU4OmX1W1DJzzdN0FjK92TiMXnd97BZOyvMDiCWTP4kz
 AH+NdBvTmX6IJK22/v/Ikhz3eb3iv/BZrxeKAomWCI0vXIYciTCCdxzU96q5in2xJ+Fs
 ap9c1LRQnUPPltlxzsi69i4mftqE3QnZu/6ge7Hf5qFlX3AFdPQJ2KfaaSLXTtpvPIP4
 jO2g==
X-Gm-Message-State: APjAAAXaY/BGp01s2yabR302Y36c2KUSWTKqBS5R20tZw8G5norW/Y9g
 UAR4KD5JtwG+3Ieh0f+NLlm45xvgvu4=
X-Google-Smtp-Source: APXvYqwEAZK7PvkObInonNyK80wzjrLkW0Ug01HxM+8NkZZ4FMNSi04T2PmbN384ofLxAA4mo1iFBw==
X-Received: by 2002:a62:e411:: with SMTP id r17mr13011903pfh.119.1578804278786; 
 Sat, 11 Jan 2020 20:44:38 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id s26sm8706232pfe.166.2020.01.11.20.44.37
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 20:44:38 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 Jan 2020 20:44:34 -0800
Message-Id: <20200112044434.633455-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_204440_616005_E9227B13 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] target: bump minimum CPU type to pentium-mmx
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

f4f8f4a180366ee90fd8e153213db2cb746ca361 broke ffmpeg compilation with x86

The reason is that ffmpeg's x86 assembly requires at least MMX, which the
pentium CPU_TYPE was preventing.

Fixes ffmpeg compilation on x86_legacy and x86_geode.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 include/target.mk | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/target.mk b/include/target.mk
index a813ba2d2d..a30400c5bc 100644
--- a/include/target.mk
+++ b/include/target.mk
@@ -177,8 +177,8 @@ ifeq ($(DUMP),1)
     CPU_CFLAGS_octeonplus = -march=octeon+ -mabi=64
   endif
   ifeq ($(ARCH),i386)
-    CPU_TYPE ?= pentium
-    CPU_CFLAGS_pentium = -march=pentium-mmx
+    CPU_TYPE ?= pentium-mmx
+    CPU_CFLAGS_pentium-mmx = -march=pentium-mmx
     CPU_CFLAGS_pentium4 = -march=pentium4
   endif
   ifneq ($(findstring arm,$(ARCH)),)
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
