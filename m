Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F1B12DD56
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:07:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SD+aO9B9WzEqwtlh6zXvI9TbnIdfGozCCd+NzGet5jA=; b=ZJ4Z8SEBkH9hCa
	qVPqwp+DbT2fJ4XtXb85oP7zjzg65yiu3Wd7x8wEZozapC/46+oxJZi6DpMFd3caSVDTsI7OH1kpT
	lpx5OXr/CNZY2XDtTgoBKbXYwkV4T1Yam/bM1Pm63tcPFxrXbe+zUB9IdJQLLnc2iJEls8n5k+l+K
	q1YKGigEiOGShkSRxfE3ocxxcVMb4SIO2T89sfWMhcdbIsHzVQTuGrMEalllVjUyDq2teiUT7nUlM
	tMHcP12Kuc5hCPOGLy7yeaT+XWtAM6MU9M8Tm4UyqYYakDE3RHQSAZ/wOd3V5zr10qtPDcAjkfnvd
	K7qOVFtp79KlWackKw6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTPp-0005ci-MO; Wed, 01 Jan 2020 02:07:17 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTPi-0005bt-Cv
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:07:11 +0000
Received: by mail-pg1-x52b.google.com with SMTP id a33so20149543pgm.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cLE8lxRd4ZtjrDhDsx1PFjX4ChxoOWaAXT8wntPRUeI=;
 b=WI501OAQn6lRJAifHX9lx/VsYsu/ytvTQ0Vg83McOQOOmNSEaqDatnj+pbQ/T0D04t
 5a5yC0h9PJK76pY4HK9ZW+wXKRqc+jaRvZpnu1qKKUaQwfStwjlptyvgEQYDXPYP0TYB
 uLHXdF7cp+W65pHxXcou3JTF28V+3zlm6uGs01GH6xHdQFVWL7Xz0Viku7HrdYnADQQp
 G5+5OeOeOW4xyOegc4D7uM56qvrprrCX+lxlHiyMrIQuFH1cFMWPdBQKmw7X6XlaFZ9j
 mlrGtM66/3yS8ILDZjU5hZPV/7kmc4OJ/CFeFVr7ndzfeRRTf6U3IHGdSUWhkcPf3yr2
 Jotg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cLE8lxRd4ZtjrDhDsx1PFjX4ChxoOWaAXT8wntPRUeI=;
 b=dnKeCEtJ7VJ7FIrxX42gyieciJpVUH+Mx70rp65PgRrEZfxpfLUPMqQ7p9BM3lTnX/
 rsWoTs//JR5snw5AYj8yRhg4okqSJaw+42MjlqWAd7qXMGJSkI3BJxDVVFQl1sD4aeh3
 sZAEKUtIJn64Q/7qK6HPAR4oJGlpLlrodx7kAJegEgNZxXOqD3HRvTiEeR+rDPcLMkTT
 7PRnpdKJCOj8XNH/Mt/0FiUKuNF5DMatTwJiL18EVIyouY2oJ2FUq1m4FPPgt1NxTpu3
 3t1Zyf0rQKY+Lq8gGiC4yVyPKQL1ejf4GWRfIV2+tcxnMQ/LNitIei8n+0gjtvIIuyBW
 zW4Q==
X-Gm-Message-State: APjAAAWVLPcqkM7A9DH9ROqyYOPwxKnZtO/68Y4ALPFf1UfzsOHq/97p
 4ewaIfWsMPZEAxoLxF+v3PjVONy61Iw=
X-Google-Smtp-Source: APXvYqyDfuSNhCstt6QDmZot4y+lN/O2XdUq8VpkwA+tftXyHt4hTusBYlt1vt5GxRVPDK8kI/ZU0A==
X-Received: by 2002:a65:5809:: with SMTP id g9mr82225696pgr.146.1577844429386; 
 Tue, 31 Dec 2019 18:07:09 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id l66sm53719184pga.30.2019.12.31.18.07.08
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:07:08 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:07:05 -0800
Message-Id: <20200101020705.21644-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180710_462791_66BD96C5 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] scripts/arm-magic.sh: Switch to /bin/sh
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

This does not use any special bash stuff.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/arm-magic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/arm-magic.sh b/scripts/arm-magic.sh
index 29ec88ab2f..b4b0fa94f5 100755
--- a/scripts/arm-magic.sh
+++ b/scripts/arm-magic.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 #   Empty/wrong machtype-workaround generator
 #
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
