Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46F56C4C1
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 03:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=miT9ND1b8wZSeMAhnsLwTiz72S8/JEJOIPiR65R9BAg=; b=XnP0gvMOAWC72s
	gyHeY90YsYKcxW3uUHOsRmkqBweXHTF1G6/kXqH/Uo1N8eLd3TNKyJJqxaXOMFmqJAeYcYAcrAQAx
	815+CbsI/uk0LI7ELNiWgFQEYsBna4sBw/+2UNAj4bRmr1T83/LMiOQIoTViSXDK2boA2GAngotBZ
	2hoB0unlHGToj1bGNrGhAYCRgtyK2mwHK7U6A0cHkT2MM1AOQjCwMrbCuW1fJ4BLfJ5hZDFnd9HTK
	u+QU6mD6KuWIb5Lk0nw419CHF5U8fKDpCHh4qvUonx3Vl2+rTwZN+kQ9JOkqhEk7PHI9SEa+oaOAj
	J6/jlitxasBA1iGf8gkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvg9-0005U6-IE; Thu, 18 Jul 2019 01:57:53 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvfz-0005Tp-6d
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 01:57:44 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so12953083plr.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 18:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=JWqdMztGNQ6rVxPmAxtUAdiiHvDqNou81SHM0dXZUxc=;
 b=q6wI8etW6FLxSqQe0GrfSEn7h50Bl5bIaTo2UbUbC4ZF3IB38Ini+eSx9/Q8ueZ1k+
 bLVVJL4H0k+aL4Mf59uKfq93eqwtqcrWHgJZx/g22rAi6eCQqsb0nKFmED5JNlpWu4+0
 Q0uCbpQdDH1+8SjmoWIV0IOfQoGyjpk4CqnZH2yE15xnliiHIN2TVDxIDovW11OYGo3o
 5HZY92eLRY9cBqArL2bnAX9pdF/XjaTBsgjCoEe4Te2igNtPoXSbXltQB6Q9oHIMEFXm
 /j58uz1l9PmLcJGBjNcJWjgYo0bA2g0mwAdBxYcuBUHfn/ZCWhYZ8UDElx2r9wKiKdf4
 Jv5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=JWqdMztGNQ6rVxPmAxtUAdiiHvDqNou81SHM0dXZUxc=;
 b=dQfAwAnHf+DwNn422soEXCUyUbH10zL0RWpxe0ZcEo4RP2CwGvMjMJuWMISjUKwr5y
 xe+eQmgrRIeC41Fi/X3MFBR37AUY+vi9RQAJiUK6pnHQdS4pzoLCDECgDRFj/yrxt4Fe
 MFm/MfupjIhbhHIvdu9ylnNn+NhuAhLz2XuMH5R8sbtQaWIJqJSUbn8DslfGPPRhkjaV
 1uqsi4wp34tJqrySKeKosgOMT0FGreZGSY1sUMGptq7tqjJgEFaWVABqNnuY1LMbUpWM
 gpem7355sefZSuU+pDJ/rVLQ1CqVwgLEytqDcImqTRF5E+96veqqssDNJjih0NkL9FaK
 MqiA==
X-Gm-Message-State: APjAAAVEkI30aQsxRuytinkuAaEbVCAU6dRe9grUc45+qpyJ885G5ner
 TQU37oApTu9Gzikg0+0zNvHf9Z0itfU=
X-Google-Smtp-Source: APXvYqy4OxWAWYmxKO7silXdg9G5O403SruVRauMiYex2aj7AstPlEYzLClhzNW8xO/96UmJzlI2ZQ==
X-Received: by 2002:a17:902:be0a:: with SMTP id
 r10mr44500665pls.51.1563415062263; 
 Wed, 17 Jul 2019 18:57:42 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id x9sm3831247pgp.75.2019.07.17.18.57.41
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 18:57:41 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jul 2019 18:57:40 -0700
Message-Id: <20190718015740.21462-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_185743_270923_C5A380C7 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCHv2] toolchain: Remove powerpc64 libc
 restriction
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Starting with version 1.1.15, musl supports powerpc64.

There are no known users of powerpc64 yet.

This is effectively a revert of 0de93311e1575ab6f8e9e90b5023b6fb2cedcf1f

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Add missing entries
 toolchain/Config.in | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/toolchain/Config.in b/toolchain/Config.in
index 95087b7078..faff3c8fbb 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -238,7 +238,6 @@ comment "C Library"
 choice
 	prompt "C Library implementation" if TOOLCHAINOPTS
 	default LIBC_USE_UCLIBC if arc
-	default LIBC_USE_GLIBC if powerpc64
 	default LIBC_USE_MUSL
 	help
 	  Select the C library implementation.
@@ -257,7 +256,7 @@ choice
 	config LIBC_USE_MUSL
 		select USE_MUSL
 		bool "Use musl"
-		depends on !(arc || powerpc64)
+		depends on !arc
 
 endchoice
 
@@ -275,7 +274,6 @@ config GDB
 	  Enable if you want to build the gdb.
 
 config USE_GLIBC
-	default y if !TOOLCHAINOPTS && !EXTERNAL_TOOLCHAIN && !NATIVE_TOOLCHAIN && (powerpc64)
 	bool
 
 config USE_UCLIBC
@@ -283,7 +281,7 @@ config USE_UCLIBC
 	bool
 
 config USE_MUSL
-	default y if !TOOLCHAINOPTS && !EXTERNAL_TOOLCHAIN && !NATIVE_TOOLCHAIN && !(arc || powerpc64)
+	default y if !TOOLCHAINOPTS && !EXTERNAL_TOOLCHAIN && !NATIVE_TOOLCHAIN && !(arc)
 	bool
 
 config SSP_SUPPORT
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
