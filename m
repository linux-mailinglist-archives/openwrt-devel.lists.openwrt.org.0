Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAC710CED2
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 20:19:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k1T3/XSpJSI63dZh5Y0OFmkKTECHcorn+Kq0eAuaha8=; b=OI2DYX9mkhpY4HtcaC28GOl31y
	z75AC570191VLqu1F7djaXsYYvUIuti76Mj1dSFKuZE3VCrofDzUKQk5eUSXSdonYvb/Mh1Yia0Tg
	B6zqtzjAmlep8Rt9EFU28vX+F0fY4w+i/SVEyxikuLT/mQiyRMiEuc0NSJmTyqXLBSGXx+rjFAq10
	nv62BLAkSApQk/Y3Yi2eCp0FgwURSnujIZUIl4RuPsIyszLNEF0PUb7t0NU9qdH4Ss/GDlxnWe+c8
	qYYcYMkSve04LkTn9g0krJVxtzxRdC4JTAX076ZPaFFD+TMEzY1kBhzKg2Men5MUzlZi8v8VB2wgd
	hwBAMGtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaPKN-00087K-6K; Thu, 28 Nov 2019 19:19:47 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaPKE-00085R-G6
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 19:19:39 +0000
Received: by mail-pg1-x52a.google.com with SMTP id e17so13265898pgd.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 Nov 2019 11:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=+70w58sZes/MK5njdJ7DFMZlr8iGLWwcm5Aoc5qkBzE=;
 b=usdroqZizHQxNrQ2LPDliYFIZPIF2qDzXh163T5XsaTGu8MVCxIzDK38cApGXRiQJk
 WWxZh6DlINO92mU6U2S7i31p5Xwrkk3RqU8jgniFmUjqFTYrocFXgSmb2L5JntenMGTP
 oQ5R8iJtaUQFv0HhtDu12iuP5ih2acsJiLDhPHd/lbEFu9qSlxQ671KYGZhVcPW6GWQf
 SnC40vwD/zDOO1V4rWyHNyEUwDPkwTftywQSgelocXl8/SMfqJeHcj8J1lC8Q8fXAzaY
 B5weA2wc6Li7vlP5VvwBwS/5i5n/nDoM7bif/K52RtiPez4Oj6ZxoObpwm9gSoUpJ2it
 481w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+70w58sZes/MK5njdJ7DFMZlr8iGLWwcm5Aoc5qkBzE=;
 b=DrwhBZ3VmNmVR1hCk9kwWnn77xy/mQSd0csuYxJUh6MxPIJjOX6X63bNGAj6Hhrta4
 cssajL13tYU3hQykjEF/Tk4QC4AL4QBhDpXgoRuID7k56aKcn93H0tg2ExKaut5xLm9v
 OKdrF1u0dHbT7G+vt5dbuv84u4Yno+RrbJ2m63hZEREPMhIJe39Yn1Qy7D4Z0r3RSIYy
 8mGSo7IQhaL104EwA62JaT+Cy1dI2BT3zPVA4zcqnnJ38uTbk8ZYW/DJGe71wAj+QtsM
 qsz7Tm+OwiEM6jWxBZSiPDZfbsQFoB5trSQeLt9wQANxxIIAbThSfqPRup/xEuAi82qA
 8RHA==
X-Gm-Message-State: APjAAAXPiI3h3sevfXN5N1rsl+G3sKshNQDgzGaob9YL0CC8IN0zPQZg
 1Nh2L2Q8xu0rNAFELOdVnk8brMHMANQ=
X-Google-Smtp-Source: APXvYqyD/DOLBWf1rgpBc7R4mlGCw0XFzpOe28/BdVJlvMrNoXiAChb6qytMPPvezff9CO2t9jOIxg==
X-Received: by 2002:a63:154d:: with SMTP id 13mr3566187pgv.248.1574968775456; 
 Thu, 28 Nov 2019 11:19:35 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id x197sm238594pfc.1.2019.11.28.11.19.34
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 11:19:34 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 Nov 2019 11:19:32 -0800
Message-Id: <20191128191933.5421-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128191933.5421-1-rosenp@gmail.com>
References: <20191128191933.5421-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_111938_532297_BA2C6160 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCHv2 2/3] tools/pkgconf: Run pkg-config wrapper
 through shellcheck
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

Mainly quoting fixes.

Separated parameters by \ for easier readability.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Removed calling by dirname.
 tools/pkgconf/files/pkg-config | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tools/pkgconf/files/pkg-config b/tools/pkgconf/files/pkg-config
index 82cc74ffcb..fa1faccc6c 100755
--- a/tools/pkgconf/files/pkg-config
+++ b/tools/pkgconf/files/pkg-config
@@ -1,3 +1,6 @@
 #!/bin/sh
 
-pkg-config.real --define-variable=prefix=${STAGING_PREFIX} --define-variable=exec_prefix=${STAGING_PREFIX} --define-variable=bindir=${STAGING_PREFIX}/bin $@
+pkg-config.real \
+--define-variable=prefix="${STAGING_PREFIX}" \
+--define-variable=exec_prefix="${STAGING_PREFIX}" \
+--define-variable=bindir="${STAGING_PREFIX}/bin" "$@"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
