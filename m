Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3A312DD5A
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3+FvzqjHXE631s2lq76eOexKuSEBvLGR8/wAIp5lYpo=; b=rW1oNMhETfSe5I
	ExaFRW+5bjpEZUcuiROTkk3nDNu4879cl6J+nQnZ+DxICXg515cDqjuQLNR8eVr23eIqLuWwVVxbc
	bK7O1f2BHRYKwuYETGZaoNorHwLUJpIQVGSl2K7Snr3XK1XCNgtW9o2GRVddZCMmcUz0VD7MnnwHx
	ntP6XhRhXFYc9WMIA0YFRciXMkuVWTfSx+k4pNDo3Qaz1EOq4I7as9uO5ph3ykaPqGt21d/J1i2c7
	Ss2swjAetvk+9jkOXPRUD38NZnQ/YyKXtMxOxr1Yn/tkH/+jJxB++5wpn6iRJdtfrFdhG2Ye35yjo
	iXuWY8yh7vhbS/9Nc6rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTVh-0000D1-3h; Wed, 01 Jan 2020 02:13:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTVY-0000CT-2V
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:13:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so20327581pfg.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X4HhN65oZNO9wgpCtioic/QdNX11Z5vLjkqC2uRELvM=;
 b=oCJ7tnebI3Prr2ROeitiU7FuxpkbO4unkmFu2rrGwE/TVJ8EJMFYpyfDW0fRCTTZ4s
 zWg2OXhhKiE2ERa+1jZrgmvlLUItY57ay2B85hIJumoc5yTusjqPOuLV3A7NK8FmquX/
 M831kdrZ4cYjLMZ1MgXv7XJJS/uvkCG9cuqWrD9sXGSnAJ2c+n0lTKWK6DZoUaSP3W2Z
 WjFZLAH2sVWj8vW451dGbqHG90UQNC25sLVPkTcrikQhuf0TkUHgmzs7KCa9ZgZfmcVd
 bz7n8zlXip4REi7gNKzCmCDLVnYLLNPFmtYQQVXQwyRU97gPJaQ4r4WFD1vFdM1tc7mV
 L2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X4HhN65oZNO9wgpCtioic/QdNX11Z5vLjkqC2uRELvM=;
 b=HGRlHxYpqnUdaStLH7ER0+QEYPQSfNbaf5BKUcMTDQKygywhtgbO0EbkUCjv48JhKu
 0spZ9j8blz600pW6a0cGpvE3rB/8e1nbtBrJNkOQZMw9Bp6bljuqcFXe+tMxIG3nkGaI
 0+oi9yYruPnCPVyX6TC/0ADix+9F69mbwI8PK975AmFy4y/GacRsF9Or7nhTiUOx+42E
 B4agvptXPZNFye+gk4uoGGOEbYupxpO/ldeGhao/7AnNrFWIOFUFzk+5vLpkuANxbAng
 u2KprSaxH4kQ0g7+bUz2A/oKS/OLlKoYcJakneI6yJfOlIuxiih/K6CZe5qghrLwgelK
 BQgg==
X-Gm-Message-State: APjAAAUZ4MYA2051DvKyIO/R4lxlGZGDP/hPYEMMc9qFdCzj7A8/Fx3w
 cXWsTYmv0FGp0+eCW6qA7/WzWRqddnY=
X-Google-Smtp-Source: APXvYqwjbbOOJkTwHob7+xTntkMtUwbaRS9Byt/xQom8nQ5b/CYcfSYhbbZD1HbsBSGOKdr4qXkbsw==
X-Received: by 2002:a62:197:: with SMTP id 145mr79726489pfb.188.1577844791131; 
 Tue, 31 Dec 2019 18:13:11 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id w20sm47344759pfi.86.2019.12.31.18.13.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:13:10 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:13:09 -0800
Message-Id: <20200101021309.22847-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_181312_139961_26BC89BE 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] scripts/gen_image_generic.sh: Replace -o
 with ||
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

-o is not well defined.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 2c57d56f07..81feeaa7d7 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,10 +1,10 @@
 #!/usr/bin/env bash
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
-[ $# == 5 -o $# == 6 ] || {
+if [ ! $# -eq 5 ] || [ ! $# -eq 6 ]; then
     echo "SYNTAX: $0 <file> <kernel size> <kernel directory> <rootfs size> <rootfs image> [<align>]"
     exit 1
-}
+fi
 
 OUTPUT="$1"
 KERNELSIZE="$2"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
