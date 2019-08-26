Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D699D8FF
	for <lists+openwrt-devel@lfdr.de>; Tue, 27 Aug 2019 00:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e7N7joVkZI0t7mhfLEUYNKojRj7s1fqG5ibESj7hxmU=; b=kYOuRaOEvxT2jz
	J+NfC/45eCrjsAoYqjsXqTlDWEseNH+D6E2HVakpVteVkp5w9nNG0Fr6iEJi6KrSCxgKPebC7NT+K
	FTvn2QPM3ak/9jX7zfyV61FpQXrkFigtGu1epyT/HfMDOzK9RCW2wiEi23XHB5W+c3jJP7LubGCQv
	0Id2vVwPwLv5lYvFhHrk4P/to8OlQoxC3+m46jijmV+F1Baic4zylwt1wqTNfnzKtSIWXlLUkn3TQ
	VCqYg3RUUhKhccq3kngghob6vYlqTBYTxbYG2RM9k2gwPazXYWnk8DtspkcCw4jSn+BgxNDD0jUsd
	gzabh8TuK589x77DjyMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2NNq-00053a-6s; Mon, 26 Aug 2019 22:22:42 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2NNY-00053H-P7
 for openwrt-devel@lists.openwrt.org; Mon, 26 Aug 2019 22:22:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so11410606pgb.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 26 Aug 2019 15:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=i7Fg1W5XrF0J2zzoC+i8/kwQvWXouu5uRQKwEk9WC/g=;
 b=j2F/P7jqNDlbwvyK6Om/9gLrkd62VcbouPm0GmX8Ahs2E1FZatJDCkr7M1g05BvnRH
 6qJpaEeKjXL9LNIXlkPPGdhUjn71Dbkw3ERlJo44gL2f2dUkORO8AxniuOq2E0BDjLye
 rjDLQ1ECvqqZaksuinLrltCa27YL6eGgj8Da94z3nxvCTXh8ObC5EkzfLW/InzDhqAEO
 tzIQeL8jwnFHYok6XOomWgjBGQSSn8md0iOlPqoKbo1/TuZfS5+Ecsu55M/8RWhG3n+/
 oc6yEANuBfxW9cWe8DI6gF707sVos3JacIwodLd1i2RClD0t+9EDpprESNZWqcGouppf
 Jybg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=i7Fg1W5XrF0J2zzoC+i8/kwQvWXouu5uRQKwEk9WC/g=;
 b=EQ3//Fr7xX/rhjBLCGiTSoDz0lPnZKJgVn2qNfnKv5gTGPfFQo6hCD2SvfurtEEFFi
 vABYiZKm6vESvc9XXf3tUjyjPX/Aq0yruGZ6tJFbLyytlztXJZoeVwbNXkKvw4IISwKZ
 NXXY//drBrlVBeTf2ZDkdBTWIkt3i1OEIzpR9HJzZ/5xLtgXDR0I9WCfouvcR+nwDzRZ
 IR/m//wRniae8MRF3FCkv8QWfdXuyAVNe2M3yG5aPCrfIxyWiEvck459FmtUhYwcoXoP
 p6AC7Q9x9xIROhBO7bVqVUBwpDQ++mp+YaBn+thzwt4gJ610ayVzR6dzRh69U/Efdc/l
 GnCg==
X-Gm-Message-State: APjAAAW+I/E/66IBhEuZgSNOleIife+CM+4UnPGvilhq4QtjBgep7/0t
 sKrIeGMXkXROVpGH+RCL5GcvGdCeZyQ=
X-Google-Smtp-Source: APXvYqyfpqb+1Lvxr0ZGZL9BPtc9ATMYEs3ZmnQ9De6d4z50Lr1Cpkxq5qTxjxElUhwm/ViT3DQzIg==
X-Received: by 2002:aa7:8d98:: with SMTP id i24mr6309364pfr.199.1566858142465; 
 Mon, 26 Aug 2019 15:22:22 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id 81sm11981867pfx.111.2019.08.26.15.22.21
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 15:22:21 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 26 Aug 2019 15:22:15 -0700
Message-Id: <20190826222215.22209-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_152224_843159_7E1D0DEA 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] sysupgrade: Add missing _GNU_SOURCE define
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

Fixes compilation problem:

error: implicit declaration of function 'asprintf'; did you mean 'vsprintf'?
[-Werror=implicit-function-declaration]
   57 |   if (asprintf(&name, "%s%s", prefix, blobmsg_name(option)) <= 0)
      |       ^~~~~~~~
      |       vsprintf

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 sysupgrade.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/sysupgrade.c b/sysupgrade.c
index a5bad9a..7f3bbe8 100644
--- a/sysupgrade.c
+++ b/sysupgrade.c
@@ -17,10 +17,13 @@
 #include "watchdog.h"
 #include "sysupgrade.h"
 
-#include <ctype.h>
+#ifndef _GNU_SOURCE
+#define _GNU_SOURCE
+#endif
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
+#include <ctype.h>
 
 #include <libubox/blobmsg.h>
 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
