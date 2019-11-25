Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D578109417
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yplq2doAko9BgwCjCaytXYKvfwbsNHZcSwWCr9MoG/o=; b=jeWGXPjjDDe7r1RSRUJMJLQqpj
	UGIsaaZoOBI2HxLp/y4QifR+82vnSL/p3utHkSHJhtsypIKToxnVoABtYElhpZYQNCYVCwpzLigEP
	LWIGT/wM0pYN+IFcoeNWfIkpyKJ4/LqsBwiZi2QTK7RPAK+derWqgkhtEVjQkkwE+lUDOSYijfvYU
	nkrzpsEfm8fSDiiVTT6z9inxtbVcteGcnLQ+iO+h+jU5rNKExe3S0A3fN4S7YYYdtpMB7eVhZFMF+
	W+MBes3A0KBJKq32BvAtOr7qqnHoxqBSkJQYKY3hP7TosYG8Vo76nRPG6tuiOMYblahk7vTnkSrk3
	jDC8PlJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJq9-0002Yo-Dw; Mon, 25 Nov 2019 19:16:05 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJo2-0007A8-66
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:56 +0000
Received: by mail-pl1-x62f.google.com with SMTP id q16so2725443plr.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=tlnXzMy7tjmuPRRi5/39MLeLnnuv5yueepC5LvSF8wQ=;
 b=iIPH/sdbx0uQWbjJBVYUXDEEAAAhqyjGKGWw8tGbyJS3StO4wJ3UCQCbOGlZ/daLtN
 Lsa2rUEO/dLG2riqknpWOqKTO5+O9JQ4Ww+qMZOsjsFVKccdoy1E8bjV9oWchksd6S7d
 8KiLXA08fKUbgV2AK/4lJy7iLqkL6Va6BZw4cq1y9SGxMYCtPRcwZcJv9PBKQTVPcYnI
 RRC0QNBBKsknGFQaxS/qS81uX1Dd57V0bGiNe2dG82LiBYUROUECDRgn46FzN9NzO9VF
 T/RgdOAqqQZoEiopqZZ4dFGkQddVYlx+13zjMQUv8P0UsZEd6kgGcdT5ry4Cj0qQD+Yx
 PNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tlnXzMy7tjmuPRRi5/39MLeLnnuv5yueepC5LvSF8wQ=;
 b=gL1e7eNcrCUtsl7+hR1bW1qY/km+rQHPsAjUgcXqlikl4EeW9yp/mWyQIll05dHhlX
 6QCUshfweTCYEF/b9fUhuBfuRD1l7FoSzy/CO/Bek3kPEgR2BkuXpMnp5PPFQ1SdXRI5
 INBr8VXn8jGwHiBO/iGymZhEyF7H7Rv802ZK5y73G06KH/5ni/wPpgEMrcEnhEKiaKVN
 uh+VJPFRRNNwWKJqWeAzAX6em29dF0l3AFigcnfwJ51NYtASfxMx4cX+8VAsylrLTboE
 gGk5vVdOA0vvVBvTJTXl7aXbYvQguoq07zCxgF3VnBFi6NXWPIv+TjAy4eL4UwFwmXPy
 xHmA==
X-Gm-Message-State: APjAAAUlDfU8hZ7aZ5RcHy0EpDeZ3eBWtlrJNkBl9Ya/c8D6uwThjI/y
 luoCGEalDpolNLlWDA0HBM8qsTx4Y1o=
X-Google-Smtp-Source: APXvYqxHRU8smSPyk03wQchmKsv99tCzSLudNO34lkGgwxAZp5lJ0l1/0KOgLCF5FO0132LetlnF8A==
X-Received: by 2002:a17:902:758d:: with SMTP id
 j13mr30940554pll.55.1574709233190; 
 Mon, 25 Nov 2019 11:13:53 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.52
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:52 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:36 -0800
Message-Id: <20191125191340.5980-13-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111354_238178_3C76E3DD 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
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
Subject: [OpenWrt-Devel] [PATCH 13/17] gen_rpi_sdcard_img.sh: Use /bin/sh
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

Nothing here needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/brcm2708/image/gen_rpi_sdcard_img.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh b/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
index 60b66c3724..5e8fb2769c 100755
--- a/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
+++ b/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
@@ -1,6 +1,6 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
-set -x 
+set -x
 [ $# -eq 5 ] || {
     echo "SYNTAX: $0 <file> <bootfs image> <rootfs image> <bootfs size> <rootfs size>"
     exit 1
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
