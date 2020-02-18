Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63F8163530
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Feb 2020 22:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9Zqw2B8jBYxSr6VcKSH+9x8hI03BOUp7GUj/B6tX1h8=; b=g/aYvvy7FE7IDZ
	LmYo7GflSdnWvORQZuXGnnepeKsYcXZDCCSv1kgDKZr9DEF9FM1ZI4HJA0nUXFvZ1kxEhG1OtfVjS
	I79XplHlgsSDYAROqJRRVUXbi/e9vUJthXv1E6WPjM3dPzKYLHlCRm9f+9r3t4nf/N99WrHMiHoGj
	1GLm2upg6UqVA6plXcOIdC5RrRhp6VvER7Uw7K7rOLvpyGLuRbHZJt0KtFgCTzDnZPxX134teaWkE
	4CkSnLzmZXzHPHOUr7uoOEymdApm4tkAhN1eSKy7sUWKPp/B0C5jjrRXABCev3dpFh0O74SOMQY7a
	yzLEo3hoIu2Bapj68Phg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AYj-00033M-Hl; Tue, 18 Feb 2020 21:37:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AYc-00032o-4a
 for openwrt-devel@lists.openwrt.org; Tue, 18 Feb 2020 21:37:31 +0000
Received: by mail-pf1-x442.google.com with SMTP id i6so11333774pfc.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 18 Feb 2020 13:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mo23icGYupYwrgIqdv05IMhqnmMwz1E5UAR9rcCZzvk=;
 b=pvXRD16RpMJVqRvs25AJ9PsqKDRAo9iwk1DjHby1l0z3qsaPbOfQly9zcrY/3kcPkC
 6KyhfT/7y+yuTwBa+02Tcal4qyAkHbLWkXU2D3FW47YLaqgMvw+BE8Chvz8WC3wtI7Mm
 8HFDRqrPZf823WRwhLlQr0eJ1/Nr9vQK8CiCrAtpFa0BNe71nK7dVR07mitr9AicEbEs
 KU2tPTsqoTUrAcgRthIWAr3PzNz5UMXDdYWb9UPfQkmt6KUB4GRzIqbH1OKaBFtqTH31
 SymVQRFzS3KjB2CxkAeUnl0RUgYGJdrNtCiVqpJGC8rEIAJkLHTXk78yvPIL5VDuQUkm
 kk4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mo23icGYupYwrgIqdv05IMhqnmMwz1E5UAR9rcCZzvk=;
 b=R305ael+KQvurDiN/E0lifHxQ+lxCzs8QDH9vtO6aAO3Vkpnc98lCxvoidQa5CCFDO
 Yai2NH2ItVPIEf59jXrpwDRPkWAS02olNhB/twstoaJToEgPULKVhZDVOjWXAeM1WPcV
 aeasiG50ytXqi2Vqyk+JU2loq2DmMyIvdf/5wjxZWhJv6J7Jk/+Lsoo4I5smEOYny10C
 Cibyu9BrLkRvQctsyNDJYTvgAM9gTzzUuy+l4PqlmpdWE2k/zXo+aRRzIvYWrB3C1vme
 R/Z0la0cD4rBUxqpxLDpXWCtBfOOIXhDvf9sytKpo91b9zwLwV9BvOb4iWYz2kMtpwgu
 5fpw==
X-Gm-Message-State: APjAAAWL8y5anebi+dl5izVMdXVvDQ6fWb2NbcPuPVGamSAy3xkdXlNt
 mv34daurK/OuQZLCprVhOrO9N26A
X-Google-Smtp-Source: APXvYqynk+o+flahDhQQZ8/nolDJnWe2223mhcYPXrSkabogLjPsyJ8CvEspuvGKYq17gUkjh5uv6Q==
X-Received: by 2002:a63:ff05:: with SMTP id k5mr24383469pgi.185.1582061848969; 
 Tue, 18 Feb 2020 13:37:28 -0800 (PST)
Received: from computer.lan (119246229239.ctinets.com. [119.246.229.239])
 by smtp.gmail.com with ESMTPSA id w18sm5991231pge.4.2020.02.18.13.37.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:37:28 -0800 (PST)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Feb 2020 05:37:22 +0800
Message-Id: <20200218213722.14030-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_133730_207582_6EE619C5 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jeffery.to[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] tools: Fix "lib" symlink created inside
 $(STAGING_DIR_HOST)/lib
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

Currently, if "make tools/install" is called after tools have already
been installed, a symbolic link named "lib" will be created inside
$(STAGING_DIR_HOST)/lib, pointing to "lib" (i.e. itself).

During tools/prepare, a "lib64" symlink is created inside
$(STAGING_DIR_HOST) that points to "lib" (also inside
$(STAGING_DIR_HOST)).

If tools/prepare is called and the "lib64" symlink already exists, then
ln will treat it as a directory and instead create a symlink named "lib"
inside of that directory.

This adds the -n option for ln so that $(STAGING_DIR_HOST)/lib64 is
always treated as a normal file (the link name), not as a directory.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 tools/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/Makefile b/tools/Makefile
index 2f57d25525..b7e236cbd2 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -138,7 +138,7 @@ $(STAGING_DIR_HOST)/.prepared: $(TMP_DIR)/.build
 	mkdir -p $(BUILD_DIR_HOST)/stamp $(STAGING_DIR_HOST)/include/sys
 	$(INSTALL_DATA) $(TOPDIR)/tools/include/*.h $(STAGING_DIR_HOST)/include/
 	$(INSTALL_DATA) $(TOPDIR)/tools/include/sys/*.h $(STAGING_DIR_HOST)/include/sys/
-	ln -sf lib $(STAGING_DIR_HOST)/lib64
+	ln -snf lib $(STAGING_DIR_HOST)/lib64
 	touch $@
 
 endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
