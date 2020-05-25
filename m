Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A6B1E0421
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 02:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f3yQf4YWcuj1xMxaKU5rSf567FkQLtgK3m5nW9KtcLk=; b=IDVSQ3DchtaC1x
	x7Ea4M+xre2BkFGKaeCub1qvSC6px3PMAx0OW9sUzh3tK0NTrggEMwjtrdFdtF64dQ/Pds2BtijEP
	tj0Y4Wxbd82N61p/4k7tRGpsreiBoaqDtwkLp1NiTcrnqzngi2DtfFsfMhC2ZO99M7D16BauYnhBH
	HcxP0O+0CyXhzaf0jhEJQCqj65BEijrNvbTZGaC2rAlQQ2rE9YqtPEBfyofaI8SE7vF5VJRKaDNNc
	4u4ylIyoeXZ8k4COnkUZmESis8qMNdXuO7nrKNBOP7IzKZBJeV413rqKriiKPVq8Uc4+0ZlVZzXk7
	IVC63k+YRZ+pyk14Z4eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd0qz-0000e3-2K; Mon, 25 May 2020 00:20:29 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd0qs-0000dS-0U
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 00:20:25 +0000
Received: by mail-qv1-xf42.google.com with SMTP id d1so7424551qvl.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 24 May 2020 17:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8sbJcsSDAsLXivPy/M23TNjJf4Dh7i3be9A5NDdPo6E=;
 b=dcneDyrqvfI8jP92guZEZv+uaV3D9NV+zaV5hBEpN5w2p3vzxuKGmrhhnHgHPV/xzN
 KfzUcy79tWDaZ4b73Utc45NgH0Ic26m1cEFqmJh9QZ0czo29Q73C05dQ8wHlMLxneCoh
 /8ckbQNa40En/KzYORvLr3xEJFA84e+Kfc5dMsV22F+v3DF7feLAvKr4B9+NdGEu9Z+0
 7fTalRMwF4FNWZ9LmvrPTNF/vJMl9v1inrcuCaN8xgx9u6+Pewxez5nlfGIX6HEd0rQI
 Rbs2/Sb5tJxbOvIOM0Hj+82qyBEydZ79lN0nPlPMyG/JuDOXpIkO/9NTSvD9I2tQ8zPc
 xtYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8sbJcsSDAsLXivPy/M23TNjJf4Dh7i3be9A5NDdPo6E=;
 b=q42/q9pTAuppk9xGLHyCtHtUaltXRchwfiOavqAD4LsBfO3KXwzburbQjSYqqlWaps
 +HLl/rnEAmxnJQV5h2r8NmViN8GuNxsnhz4UjyJ8WBmVMWekJ3HsLOPsoTTwQkKhM7K5
 ttd8On+7HYccaQcgZTyZO6PpKi801wns5V/eQjn2EDB8eQgh4i86Dw9wL74ML/FVFHQo
 PgMBs4ZsfFf5a0vpfyBXUEknORbghOXnowwAOk5jSEPOCorscWPTOMwFjy36qk+G065n
 FOtyPOmA0yqVWpGYzhExkGQCfMbADFM9JecY9a0wYbLoEm75UYTpAp49YUuJY1xt3Fkl
 g1OQ==
X-Gm-Message-State: AOAM532BKX3ehLWmbDwskquVeFCH/boNpPkSe6PIl21ucJU2hWGKcW2q
 sOTde8tDcNO1ntomPl438BY3Guv2
X-Google-Smtp-Source: ABdhPJwsHFu1KOPvqtJSzkqG7s4uD4ldr75j0JeSZ30ZGwXg2z6AU6bYa4Us1ZGO820S9W23DPQNkw==
X-Received: by 2002:a0c:c342:: with SMTP id j2mr13197506qvi.209.1590366016104; 
 Sun, 24 May 2020 17:20:16 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id m1sm15052483qtf.72.2020.05.24.17.20.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 17:20:15 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 24 May 2020 21:19:56 -0300
Message-Id: <20200525001956.9485-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_172022_069293_BB2F9A70 
X-CRM114-Status: UNSURE (   5.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] build: always use -minterlink-mips16 if
 USE_MIPS16
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Individual packages may turn off MIPS16 ISA individually with
PKG_USE_MIPS16.  However, they may link to a library compiled with
MIPS16.  In such cases, the -minterlink-mips16 is needed to ensure there
are no direct jumps to code compiled with a different ISA.

Instead of adding -minterlink-mips16 only when PKG_USE_MIPS16 is on, add
it when global USE_MIPS16 is on.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
Tested by compiling all packages in base, packages, routing and
telephony feeds for mips_74kc, with MIPS16 enabled.

This was discovered while working on lxc fixes 
(https://github.com/openwrt/packages/pull/12241), where compilation with
mips16 would fail because of '-fstack-check=specific not implemented for
MIPS16', and it would fail with PKG_USE_MIPS16=0 because of jumping to a
different ISA mode:

lxc-4.0.2/src/lxc/caps.c:24:(.text+0xa4): unsupported jump between ISA
modes; consider recompiling with interlinking enabled

In theory this could happen in more places, so set interlinking on
whenever MIPS16 is turned on globally.

diff --git a/include/package.mk b/include/package.mk
index 0575692742..f2c699ef2f 100644
--- a/include/package.mk
+++ b/include/package.mk
@@ -25,10 +25,11 @@ else
 PKG_JOBS?=$(if $(PKG_BUILD_PARALLEL),$(MAKE_J),-j1)
 endif
 ifdef CONFIG_USE_MIPS16
+  TARGET_ASFLAGS_DEFAULT = $(filter-out -mips16 -minterlink-mips16,$(TARGET_CFLAGS))
   ifeq ($(strip $(PKG_USE_MIPS16)),1)
-    TARGET_ASFLAGS_DEFAULT = $(filter-out -mips16 -minterlink-mips16,$(TARGET_CFLAGS))
-    TARGET_CFLAGS += -mips16 -minterlink-mips16
+    TARGET_CFLAGS += -mips16
   endif
+  TARGET_CFLAGS += -minterlink-mips16
 endif
 ifeq ($(strip $(PKG_IREMAP)),1)
   IREMAP_CFLAGS = $(call iremap,$(PKG_BUILD_DIR),$(notdir $(PKG_BUILD_DIR)))

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
