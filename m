Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C38510940D
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aoge2W9ORjnaGSPzQDLhRfrSggSh50dz2/K0vle56jM=; b=MyaZ0RnrBDmABv6LgQdAVn30el
	LowR2gp9H2Ewg75UcMuo6RK5iq0X8Qpicyafe1xMteBYzCsYZ0X2tBH342aHqokc882L7aIH8M5DK
	noe60RHeXSCCfK7Zyxvm47Y6GLbQ0SMlPORMofuJPD5Rv6JSNY5wmBE835tSCrHyQnS4/lBwkE3+1
	jMNvV9hhO4CFLhm0720G3YWGMpLWl58qvcAtx70t13Y5tShf/26/cJ/2TFw9okDHl95G5VfsJG8q9
	JIMI8gTGiMYdONWZi++eTwnYg+i33r76Vg71hJXvHDzq6Yu/i2tKhbkpyMN7sCx77cn+SOpUOj0Qn
	BhjouO6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJot-000839-9X; Mon, 25 Nov 2019 19:14:47 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJnu-00071l-Sg
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:48 +0000
Received: by mail-pg1-x532.google.com with SMTP id 207so7641771pge.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=pj1Rx2IgwrhKFo3s2KqdLg+4YWsyAMtzKUeA2zRjr1o=;
 b=E3E+QJV5HapYkv4fwRC8abfjxbYYBN2y41UBdu91KB5CY/RffKokldLNSsqL6jaJeY
 RGq4BjFBdOF4h0SJQCznAP6wpW7xuBRIqBjoYwiOaDv4s362p12ItQdkgBotaZBVjMcs
 sjOMCr56diiD0jV84i8gKHfiO5DxGvHdHOFlDjGf7Rczv7FlODQPCLMiFF+gY90VKKAS
 25xEKvOgLKTBdSe76PyTlZC5HmmytCcYU9aFHrLlgla4UMBsl/IHyTncbf70mmcI9zyL
 u57KohYZYD+O2U86ppPKnmGcJaSE1909SvsSlJ5veL+c4JzeSBj+gZw945uwAO00xDBC
 T1QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pj1Rx2IgwrhKFo3s2KqdLg+4YWsyAMtzKUeA2zRjr1o=;
 b=Qe928Q2PcLvRIUV/fYA7KJWFQquFEPjq76z9P+ci7e1auZUMViC7j29CYYFY7NGHM7
 cyLMgsUA1qSVNXgKPxxhJy2MuS1OOnup1iJ2BKQiz8IcuZgaqOoOKPjbS7QC4qpoZfCR
 q4MZzFdkik2BlPzdyA/ISHspOP5fFsWAtdgYbLT0g2HdgpEz0fRc5Ttlcqwk2ZVJjyEG
 N0GsE7Z9N/rM7k/rt2CK33/quTztVP1Utrbic0GjsNpgNBn6NpGs/JgdYCwsoS11o/MX
 nIeHvaiBCe/LgN/c+ANfDzqbnZdyYiRMvFfiEnA1Fb/eKLJ6hQ4qbqB5lBdzuf+H4NdP
 x1eA==
X-Gm-Message-State: APjAAAUT2C3zGY11iw4yta10/rUvJIf78DCXcSDkmcSwhmpS5yv5YrER
 ND+74hH0Tik6t1JjLPz2h7bb5iLkJ4Q=
X-Google-Smtp-Source: APXvYqwPF23XNUOM9IoVpQaXKoCxaOwBDSBPFjS22KuZfL8S7tsltyDavhbxxg4VZgT6mQkOrfV5VA==
X-Received: by 2002:a62:8c:: with SMTP id 134mr37042430pfa.31.1574709225680;
 Mon, 25 Nov 2019 11:13:45 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.44
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:45 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:28 -0800
Message-Id: <20191125191340.5980-5-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111346_942015_DC507315 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 05/17] gen_sunxi_sdcard_img.sh: Switch to
 /bin/sh
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

This has nothing that needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/sunxi/image/gen_sunxi_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh b/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh
index 0d4a56d0d2..7dc22761dd 100755
--- a/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh
+++ b/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Copyright (C) 2013 OpenWrt.org
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
