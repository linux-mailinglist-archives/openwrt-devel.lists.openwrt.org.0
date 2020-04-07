Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B86E1A1687
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 22:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/f4YZZ+idhdIsUmpW70eoVeFynVw/NGt1uZpL67YwcY=; b=TGXnKbeZsPT++R
	/HgAZVsFgzB7otRQJcv1rFErbCdm6Zhiw1cHM3yd6Ptlc/ZtBIaE8rn+JjYwyXlntHkTDdCWNgcCb
	m63nb74f+V3JwcyMhUm0J9zsiVThlQA+sgtTzBPLz2cOaED0DVXThMvidgmKT1eqd5+mmdGNl3s1j
	jLf70K4QAjnkwKP8e16giko5Xe7+39qw1f0BhvE0KtonlzOvhY0DE0aOe4IG7v/GN56Q3B+fx4fsC
	nMSzvY97e6oXS0H3ycVe9QvhPOPmNqAD0GDin+LmfOQTtBYEyFqEuFdYo1zU+rKS4fEDZBe/AgLWW
	cFEFIKTWZ+uyfRctV6bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuWa-0007hF-NM; Tue, 07 Apr 2020 20:08:44 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuVi-0006iU-F5
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 20:07:51 +0000
Received: by mail-qt1-x833.google.com with SMTP id b10so3760315qtt.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 13:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WmdDPJwvMCoJknI35TfhSlhI0tfbBpBmIEkBgYD86DQ=;
 b=nH0gO22gUKp+IFNkb/x7EFiV0wIv/i+bB/7uJuDg6xsVkEgPqwiKP1jsSqlBgmIt8i
 UgJpLOrbNR2VMvw/59XaO5wLEcP/H1iWvWCBAtaOjidmoY5BMy2Uqqobbx8gkiYn7aEW
 vLnOpFQV+AWURJvLKoKxnATbQgzBlOTMABrrYiElEl7yBrDgnp3MsezfNd9XsWNd/Dv9
 oGoELr8HzfnKAoatNAX5WsddSUgyuR9YFcueG/hgYX4yapXRZNOcG55GdpL2iKaVce14
 xMUAHPH6L0nPVmR0/7VwHQdKT45cs/AnFM3jzuGiRcJelLufhE4tiBBRLdHwkSwx8J/K
 dQjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WmdDPJwvMCoJknI35TfhSlhI0tfbBpBmIEkBgYD86DQ=;
 b=ZXA9DqMK+TRuXE4MVSA8D66HqDECJoZt3D9m/rhI5PqdvS4Ma1yNcIy7ubSdxJL5px
 I5/mPMLiuUyI/evyZMUt9LvHJ3x2aoVO9jt7n6cNSlUkR/RuUn+lrvGmEeERxR+fn9TV
 pFMija6YFcSHv0BLyqI2kOpa7ttmm8XYxl3EDxBBIbF5lGZofsRrPtusRRxoZ/lyr3Gk
 O6i5fjJgDrmtEsbEtyhBlItmUpALzRPk38XTjY7132qsKYd7mLDLOws7vhwDLJgpS5kP
 9u1i1Nv+uCsVzNEq6GnpTDdClpy9C75QnPftvBOLN7sqOv1J3cejqKJjjrNO/uKb+JHu
 U5UA==
X-Gm-Message-State: AGi0Pubtk4iFkBiGG2obyhbQ3O+VQMWHw5Db47m3AehKD6k5tkdi3uxt
 CGCy55gntudR58WpNQrExi7lUcaezrY=
X-Google-Smtp-Source: APiQypIQyuDbQnDuPKcxuFjmTpEskd2tYpEgvMcwRk6EiKRerj4RZbQnG3suNS2e6kgGHzwI8YnzSA==
X-Received: by 2002:ac8:7a6b:: with SMTP id w11mr3977609qtt.126.1586290068858; 
 Tue, 07 Apr 2020 13:07:48 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e10sm4913365qtj.76.2020.04.07.13.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 13:07:48 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 17:07:24 -0300
Message-Id: <20200407200724.8308-7-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200407200724.8308-1-cotequeiroz@gmail.com>
References: <20200407200724.8308-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_130750_542791_57217FC0 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:833 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v2 6/6] build: add option to warn on
 recursive dependency
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
index ac5f094ff2..81243e8016 100644
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
  - use pre-built *.lex.c *.tab.[ch] files by default, to avoid depending on
    flex & bison.  Rebuild/remove these files only if running make with
    BUILD_SHIPPED_FILES defined
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
