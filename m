Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA0219FED6
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 22:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaYD/ofQLb3jRI/43Q8vx8TyovGHQROc9t8cJmHLEqo=; b=B573e0qt9rdZ3x
	BOPs3mC8ic/rI9c3ZygDnyl8xq0GRRcMnIgi3Qs/iGZ1IMY/eR/mzDwau5i5ab8ozeOi3pUknagpB
	bG45Srr3x5w2ZBiNh7RPNiT+6ABntIvIqUXDEcLQjJYfGnD5nBtcLoh5pW626VuixnZeVVU/5t4X2
	FRGWgBxcgJ2SwjTFs+WLffeOryfB3nlAvQnspfnqswWrM88vMZlLW5mOsvqrHc7nurKHqrNLjvUHF
	91Xe+C+eAek3KANugNSP8x5pdxE7VvyhReQBNuxLcfqgjkuxNVdbfSq61bM8Ibn8CnIzlOjh4Gjzq
	Df6TOhaqkR3AyEQ2TBhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLY6Z-0005Ni-Dt; Mon, 06 Apr 2020 20:12:23 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLY5E-00041R-8s
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 20:11:01 +0000
Received: by mail-qt1-x82e.google.com with SMTP id 14so914961qtp.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 13:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S5Os1UVVTj4+pQDZa8jMokymwzpEGhA+jZoX64SiZCc=;
 b=bUTV0INKxts3XTKgB+L+h+9HPnvBTFIdDGT+VurEfIFjilVaY1AS/GJMEODI1mwe1m
 508AAZSyF5twXeIpJa81GFsDYgpkU0wQNiSv1HcRQ+QiJryYl9V4dXPYmObi81AY3/ci
 Nk1llf1Kvh92UMki5asQ1j07nb8zRPyNz3LjQguCGgQqvY2nEHww3rrYh6uOA1jPIal0
 I0uU/+mxQLLCwwkMtqyuD5bgPGU7qWVYx0hwZolqIM1vywFI4FSLseCKk56/Wxd/jRQH
 bLvo7vrk2zm/QXmNtyMjlWA/g0E4VPKN7zys3IR7IuBdP5V+nFQ77zZrKQCaIRiqkAkb
 ldzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S5Os1UVVTj4+pQDZa8jMokymwzpEGhA+jZoX64SiZCc=;
 b=RXxMoY0lPlFrLAlyYf8U0blBCvY+TzKO/i+PNPlFYxKj8sfFkEZ23KEc99xSMnxNk2
 v6y89DngmWhoCUchzXrcQ6Lkfnhc8YVzl9AvIIXZ9OpGGuj8MwjVEnuHiPt7kdRg91lY
 G1y5RKjsFlBeD6zNHjPfxlmbEPOxwXa3/AZUk1PuUjORhXkWjnBRmo9evzrslfX1nXH2
 v1H9dcVWL7xH2Zu1bngtBUflZjVFMCh7rMUWkSoQfFBw4/rDBfZgtuejKleSL6xoEs0w
 znTXzbkYOIS0Fsob+AxXSiF8HQGiTy/B0GCiNNVUECj6aDO6jPD/0/Hctpo81ipG2YNQ
 iEaA==
X-Gm-Message-State: AGi0PuYADCGW5PMcatGZKfBxWAbXyxYtWOWWndpp2+ZGRoZkHprSwkJI
 d3htiAITpylE32D1IBZ+mBYwQYu54bY=
X-Google-Smtp-Source: APiQypIkCyv2bCUkTXhiiuu9mH0olfW1Y46VEl+9UjuzevQdtFs9cigmYkybNLxIVIXjTq4YBxwWaA==
X-Received: by 2002:aed:2d41:: with SMTP id h59mr1332205qtd.115.1586203858810; 
 Mon, 06 Apr 2020 13:10:58 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id c6sm13446543qkg.88.2020.04.06.13.10.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 13:10:58 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 17:10:36 -0300
Message-Id: <20200406201036.19144-7-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200406201036.19144-1-cotequeiroz@gmail.com>
References: <20200406201036.19144-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_131100_389467_822D77E8 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 6/6] build: add option to warn on recursive
 dependency
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Eneas U de Queiroz <cotequeiroz@gmail.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This addes the option to treat recursive dependencies as warnings
instead of errors, by running make with WARN_RECURSIVE_DEP=1.

Note that the script/config targets will not get rebuilt when you add or
remove WARN_RECURSIVE_DEP while running make.  One must run
'make config-clean' before building config with a different setting.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
 include/toplevel.mk     | 2 +-
 scripts/config/README   | 4 ++++
 scripts/config/symbol.c | 5 +++++
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/include/toplevel.mk b/include/toplevel.mk
index 2965f75c7c..def80503dd 100644
--- a/include/toplevel.mk
+++ b/include/toplevel.mk
@@ -102,7 +102,7 @@ prepare-tmpinfo: FORCE
 ifneq ($(DISTRO_PKG_CONFIG),)
 scripts/config/%onf: export PATH:=$(dir $(DISTRO_PKG_CONFIG)):$(PATH)
 endif
-scripts/config/%onf: CFLAGS+= -O2
+scripts/config/%onf: CFLAGS+= -O2 $(if $(WARN_RECURSIVE_DEP),-DWARN_RECURSIVE_DEP)
 scripts/config/%onf:
 	@$(_SINGLE)$(SUBMAKE) -s -C scripts/config $(notdir $@) CC="$(HOSTCC_WRAPPER)"
 
diff --git a/scripts/config/README b/scripts/config/README
index f84a0134b3..91019b0e5b 100644
--- a/scripts/config/README
+++ b/scripts/config/README
@@ -16,6 +16,10 @@ OpenWrt Buildroot:
  - reverted an upstream change that avoids writing symbols that are not
    visible to .config, which breaks OpenWrt busybox's '.config' generation
    logic.
+ - add a compilation option (-DWARN_RECURSIVE_DEP) to treat recursive deps
+   as a warning, avoiding a complete build failure because of unrelated or
+   minor recursive deps, or making a scrict check before commiting a change
+   that may cause one.
 
 For a full list of changes, see the repository at:
 https://github.com/cotequeiroz/linux/commits/openwrt/scripts/kconfig
diff --git a/scripts/config/symbol.c b/scripts/config/symbol.c
index b1dd9be29d..5c6f540314 100644
--- a/scripts/config/symbol.c
+++ b/scripts/config/symbol.c
@@ -1250,6 +1250,11 @@ struct symbol *sym_check_deps(struct symbol *sym)
 		sym->flags &= ~SYMBOL_CHECK;
 	}
 
+#ifdef WARN_RECURSIVE_DEP
+	if (sym2 && sym2 == sym)
+		sym2 = NULL;
+#endif
+
 	return sym2;
 }
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
