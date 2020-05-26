Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30251E2342
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 15:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tllq1SeTcW6BZRkK1JCqxJWkKC2IP31rm45KaKUTwdg=; b=RLhQGGFifktrz4
	1MrUOuqZk15wqicW3f5FzNPIXkqT1D0Yipa/KNRKdHVhXKXnCj9viHsjb7uxwfWiAcpAsssnGOG04
	DD2U74TevlhMoF/3EG34JrwQFJD2hJVqOZucIrJs9GQH32qK7YWz1qgFtkUn3iH0ReGJxXyUB+QRe
	eo68BCMBiBF0ge8g04dTvSA/qOPFjSvekXO0ORgvvWu1JF5kbJ4kfHWgLcgzNhui3KCQoAIyR1Jlp
	Nq+1slFVHdpPslIepIg957LfAtEJMhSxNMbqw10ykoGbE/JslwZpJ1RaAey/R+LYGfA8sUl/iifNH
	cd/GZbl8X20wB9S4TUwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZu3-0007J5-Pi; Tue, 26 May 2020 13:45:59 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZti-00078r-60
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 13:45:39 +0000
Received: by mail-qk1-x743.google.com with SMTP id v79so10470639qkb.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 26 May 2020 06:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5PJ7uemIptbo9covHKS/tgh5u39+Q2e2MOgWZZZcLRw=;
 b=dfTUAJBjA6gEA1pKnWrs20qHA4arklN+8ZLFktlPlkSv7IKTYhR33ekdTyhtArbbnz
 A+5Be+UNgEHiOxHN5piqi6LO/zoifRJVENqZoBvGDtu0fhsiSVXff1JrA5JTW0GKGXM0
 WFVyVn8NFvbfgVZcNmSVj92jbd+bpHgZuxO1bsx65IVsE7JFMK1cFzwvYbRnNAdiPfSa
 /N+kMxZjlFFdRLD5XDfJa65RVeQU31pg3C3Rth04X0CLdo9rAkmbAV0jSRLgVzcZr3Y2
 35UIFlAceEXESBd9R/v50GxSzMLzd1g4HSVyQ9I5vUzidA/KEVD7kmCaPMv88p886nof
 HLsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5PJ7uemIptbo9covHKS/tgh5u39+Q2e2MOgWZZZcLRw=;
 b=eH1LJkMGMFKsKURr+EtDVxTSkuxnC0zNUBGrtgmGBpVa3KVoZmWoRS3B3iSaIx/uAt
 Wf5aipG+ixf1tEMpdbbOxHUelP56chuwuk78Cx/oC+vRnHp7SafPBJCDG1WLOfiAB9HB
 fR1SUlr/n7gsE0ZoS4dR5vhBbZlDz1vmFD8oqYnmL0RpHF5h4KqUr+8Y+gBULu74AF5/
 +J69Vf7S863FYkfzxz+SzpAhCI3ZISs6ZVjAB8nMv6XX3Id6vZtcLY9FY9EodKsQy9NK
 GPN02+6Z25p1fY8N3kTupPDAavYMb+BZsJKcSo6IeQ8x0Vxuus3q7oZKjWB4y+m0oxe6
 9w5g==
X-Gm-Message-State: AOAM530Z/c5smWbbLsIwSf0bD+Ve2uhffqDHM+fulH42oCQA4l4bEbXB
 R3p0iz3fCV2aqd9d1uTgexCtuXWT
X-Google-Smtp-Source: ABdhPJxZ3cUpAGCeXUVucW4ODg4xKJNvYrk8tfw3QHW/6y1Eko7JgDpBgz108C+KW818NsEnRFNoZQ==
X-Received: by 2002:a37:5507:: with SMTP id j7mr1364550qkb.150.1590500735334; 
 Tue, 26 May 2020 06:45:35 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id s45sm7617354qte.26.2020.05.26.06.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 06:45:34 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 26 May 2020 10:45:22 -0300
Message-Id: <20200526134522.8486-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_064538_310743_E16211F9 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] wolfssl: use -fomit-frame-pointer to fix
 asm error
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

32-bit x86 fail to compile fast-math feature when compiled with frame
pointer, which uses a register used in a couple of inline asm functions.

Previous versions of wolfssl had this by default.  Keeping an extra
register available may increase performance, so it's being restored for
all architectures.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

---
i386 builds currently fail with:
./wolfcrypt/src/asm.c:700:1: error: 'asm' operand has impossible constraints

This is because wolfssl uses all of the available register for [at
least] a couple of its fast-math inline asm functions.  The
frame-pointer uses up one of them causing the above failure.

gcc documentation indicates that -fomit-frame-pointer is used in -O1, so
it should be enabled without the flag, but this compile error indicates
otherwise.  I'm not experienced enough to know why this is happening.

There are other alternatives:
 - use -fomit-frame-pointer only for i386
 - disable asm for i386
 - disable fast-math for i386
 - patch asm.c to loosen the constraint of one of the arguments from r=
   to g= in the affected functions

The last 3 are there for completeness, I'm not really considering them.

Eneas

diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index b186a087e7..159cfbc53f 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wolfssl
 PKG_VERSION:=4.4.0-stable
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
@@ -56,7 +56,7 @@ define Package/libwolfssl/config
 	source "$(SOURCE)/Config.in"
 endef
 
-TARGET_CFLAGS += $(FPIC) -DFP_MAX_BITS=8192
+TARGET_CFLAGS += $(FPIC) -DFP_MAX_BITS=8192 -fomit-frame-pointer
 
 # --enable-stunnel needed for OpenSSL API compatibility bits
 CONFIGURE_ARGS += \

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
