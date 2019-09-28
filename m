Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE27EC10AA
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 13:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D6mjP2D1NEiFxzn9WbYAMajOj730lmksHo18EILPzbk=; b=IE2zhgQ2e5fyYW
	OrRkeLrPRwR03fNhDJZsMhyuW2ytAu53JgVXDe+Xs9DPu+PH1S1ndzOwl7VKGPKnLHBwUwGuq78Rh
	c2Fh9uIINB0rqxo/srnza7pTYt78AF971d9Zm4/1mhQo4mb4ROSHKlZ9l3hXDCPcx+eBuJymaT5cx
	gnjW726JrvHAaFhnLxoz69vVpOrBUe/OznwIAnU2EHVpC8jRwSbOF37t3fK9+hmt2hWpv/0gahfSy
	hC3qdlwUyNgOAfPupDSZ/5LuX61YmD1yd6L6n85fGnyiHEMo+gokILzccWcxljKKDmj4SNhHkqQfV
	vG1hO+shm0GsPEZmyoqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEAd7-00065u-Go; Sat, 28 Sep 2019 11:11:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEAcz-00064X-4u
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 11:11:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id i18so5817923wru.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Sep 2019 04:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LWg5sga7m+lAE9JbbSsGDuELeQ5G1PDGVuaoVEA8F3o=;
 b=ekSJvSvwWuOyMxClnKQ8grDmxccSj/sdY06BqpkKbASaOo1wIYGoCKi7XnCX9pMiIm
 N1PsiPlm5AmeMDgvCe2exc2GEmcxcIfJqUdbVbZ49BfDgrKU0cmttzFdOFlbq6purxMP
 NdH2E9AiVchPh15AkkjZs1RXpCseuIHBeI9DO964cJl/Xut/JXhJMKUKYBYJWgEsdcik
 0A4Jbgp5Wg5MuF1/Acysdq67r/yLR5ZDXuAuNrDg+kN6cReVmA/wU7u+3PYZ4f/Dbqmr
 CKlptq+NZ0ymXF3xAXqTZClC99WFIRMNLyLFdPgeYpBwNehN9lMYGTFTML1NDayMtWWp
 Glyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LWg5sga7m+lAE9JbbSsGDuELeQ5G1PDGVuaoVEA8F3o=;
 b=flQeHSzOoABlDgWszrlo8NQNtsFwkC/galri9QAEYp6FK9iKuNrviIeNK+skoxhLSJ
 0ZpXiRmU0JhqDygeUvUaIP1CaWsARCXqKscE+xzXl2o/Jcuj4FewKrX7gTPdlM9M41H4
 8h7dNf15VGrzaQW1YJph78E3W481OAYcw3+8VBMPDsul1DyhCjJdAIDhYPK/535K53vl
 b/J4WsF8mPadjd14laK1hzHt4AHft9gmZPFDUnJfzxPhjCHeQ1V7ngFYCIlOm3UXEpK/
 Gzw0BchtgJp0IBRyH89GnxUN1Yu01VDAWkkhcjPuBVXU0COlkAvUL9hOXkGg/Hd6dcGr
 s3eQ==
X-Gm-Message-State: APjAAAWX/ogaVC0bDHPwhBYy/xL0gkIL4UFbH0oMH5ow1x2izkH8AFkz
 gPHKjqMXTlD+HJR3wCNT2tMKGHDp
X-Google-Smtp-Source: APXvYqwQJ1JaMypdWajxuX0z2gzgUCwQTVFHT/9RdpquyY7Q78sopU/v/2AM68zc8dxIFwPVkXdu1A==
X-Received: by 2002:adf:cc8a:: with SMTP id p10mr3504293wrj.321.1569669062700; 
 Sat, 28 Sep 2019 04:11:02 -0700 (PDT)
Received: from mamamia.internal (a89-182-91-175.net-htp.de. [89.182.91.175])
 by smtp.gmail.com with ESMTPSA id d28sm7980930wrb.95.2019.09.28.04.11.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Sep 2019 04:11:00 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Sep 2019 13:10:59 +0200
Message-Id: <20190928111059.4048-1-a.heider@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_041105_211508_01B62AC5 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] build: call Host/Uninstall before wiping
 the host build dir
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

Uninstall targets may depend on build artefacts, like `make uninstall`
or `ninja uninstall`.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 include/host-build.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/host-build.mk b/include/host-build.mk
index 827ea6bbfb..9fc14241c6 100644
--- a/include/host-build.mk
+++ b/include/host-build.mk
@@ -190,11 +190,11 @@ ifndef DUMP
   host-install: host-compile
 
   host-clean-build: FORCE
+	$(call Host/Uninstall)
 	rm -rf $(HOST_BUILD_DIR) $(HOST_STAMP_BUILT)
 
   host-clean: host-clean-build
 	$(call Host/Clean)
-	$(call Host/Uninstall)
 	rm -rf $(HOST_STAMP_INSTALLED)
 
     ifneq ($(CONFIG_AUTOREMOVE),)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
