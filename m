Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0671AF5D1
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 01:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Om7JFG6SCZUS5quXpFgnw6050hBslQlcU3dTpjziDH4=; b=aLFM743cWEpFSj
	zNr1k0Jj3Yqjo8Nanue8EAu6Q2u45OWxX+i3b9o9sE4a24VmPS27Mzn8CZ60VHdjjhpq+Az0Z0lsp
	12Z/m+hjNPO6+u7R44BQI08CTZBtz4VsfZVzl9N7VHHskYJQX9DH2JtvTw6FZ6kfW7RWOmzmZjM/a
	DKOvHvtwXv35zXmNxCQXnzzhNxa+J3OpSpPWTQaAucOnL7b4dnbdYz9l8YiX4R3jadJAOyOVr0tEe
	W8Nlbe3oJ1EDZCUa3/Pl2oOzHjockY4tFE5YpaEOt8/iZSZD6RTbXBNEvp6BbcCK87K/NfiJ2Ig/c
	voWf8W89eFQXNaTfNdEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPwXY-0007R8-3D; Sat, 18 Apr 2020 23:06:24 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPwXS-0007QB-LX
 for openwrt-devel@lists.openwrt.org; Sat, 18 Apr 2020 23:06:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id t4so2471085plq.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 Apr 2020 16:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sADjyKEmieBpKuxdT2Lvqk9MhlfixXbkO5a3MrHq1Wc=;
 b=juhD6LtcTAUWwPQmZFHuhnJbBoXHR92TWju6MpA39p2IYA71ry6YR57+aKxl3RFmQl
 JTPKoqEGhV0pZBALbVLHREKBT5ruAdB+aaBHF7hhtqGdyL4hOmXdbV0bo62Xk2ElfYhE
 w3v7kcuKPvOUQuwX/4hDVYt7pg29F8NJVnTjaJAJ9/cDUXIC747nvip+fOu1eQ32TS3S
 Fihv7OsRS8siMSKdBgDJtdsaUdGj1PBlNSxf7IZrgc+sbl4ErED8GkuLecsX8EZDiEN4
 H2yFiZlgYqwrq0UJLdO9xlmJEsmUoiXLstXN0307DxFmAmEIWZvFWyVgNJl7B+llH+ZF
 GMiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sADjyKEmieBpKuxdT2Lvqk9MhlfixXbkO5a3MrHq1Wc=;
 b=rToVrHG7ZRPNB1cR5U/R6us+cQLqgrzART62sxjPiC5B2np/WbRKSuJVVgJEJ+2fZ3
 qJE9/gwCBIn0X/5AQuP5sl9Z9Tl5Zt1ZNHrHk8qrrMa73iV4/vLfH777lAUdMoCkjwfV
 OmWS9RGW+rj6ocuQcMgSiUQf/l91OJeECzBGoz1yyL+ViNy4SMuZ56Wtg6ZzgD97fqlV
 I+4wHhaF4aRPFJZAXdpBuNMQCW9SbtqMWYbDvqv8hTC2EX//tAuxGNNJYcl2toVntzbf
 Anhvwjf9LAyXoqf0chfyNlpOTGFkf+J2hsNjmwUlom4itqoAVWioeCH4tA73g2i8aiXn
 wC1w==
X-Gm-Message-State: AGi0Pua01nrDsGJRJNv6iGHf0j8dyGCizMiPL+kl4qGO1tXDRTemvMQC
 f30vqUMShsGazKln4el7xLYRPAIlGh4=
X-Google-Smtp-Source: APiQypLJRSaEcIDygd7k6SRgYg/3frLcNj94uL3T86c+OeGRrSk4XsiQz53kj6vhlo8MmonoOD6+WA==
X-Received: by 2002:a17:902:342:: with SMTP id
 60mr10503547pld.29.1587251177386; 
 Sat, 18 Apr 2020 16:06:17 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id w13sm8049387pfn.192.2020.04.18.16.06.16
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 16:06:16 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Apr 2020 16:06:15 -0700
Message-Id: <20200418230615.12246-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_160618_709024_8C1AE743 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] toolchain/gcc: eliminate uClibc atexit hack
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

This seems to be over 10 years old. It doesn't seem to be needed anymore.

Tested on malta with uClibc (selected BROKEN).

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 toolchain/gcc/common.mk | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/toolchain/gcc/common.mk b/toolchain/gcc/common.mk
index 090aa2447d..7fb30285aa 100644
--- a/toolchain/gcc/common.mk
+++ b/toolchain/gcc/common.mk
@@ -115,7 +115,8 @@ GCC_CONFIGURE:= \
 		--with-mpfr=$(TOPDIR)/staging_dir/host \
 		--with-mpc=$(TOPDIR)/staging_dir/host \
 		--disable-decimal-float \
-		--with-diagnostics-color=auto-if-env
+		--with-diagnostics-color=auto-if-env \
+		--enable-__cxa_atexit
 ifneq ($(CONFIG_mips)$(CONFIG_mipsel),)
   GCC_CONFIGURE += --with-mips-plt
 endif
@@ -150,14 +151,6 @@ ifdef CONFIG_sparc
 		--with-long-double-128
 endif
 
-ifeq ($(LIBC),uClibc)
-  GCC_CONFIGURE+= \
-		--disable-__cxa_atexit
-else
-  GCC_CONFIGURE+= \
-		--enable-__cxa_atexit
-endif
-
 ifneq ($(GCC_ARCH),)
   GCC_CONFIGURE+= --with-arch=$(GCC_ARCH)
 endif
-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
