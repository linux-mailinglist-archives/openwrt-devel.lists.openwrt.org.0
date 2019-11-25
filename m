Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAED1095C8
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:48:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4UBg5PiqHeys5KaX8P7Oyl9sOYMXIfX4avvedIpjzbY=; b=CAhl/AcAFLOsaKVq7X6By4rdPg
	5gUqSj0Nb2cBNihcBFk8TAziodOeNWE9nDqSby97A8ga6PC+lfLEHIwoTC0TCpNBkHmGwBinqu5Ke
	P0N2y4BooBRFs/6vwj99h8+K+yK/An8WS4CLTzlS3PxjkMALFSQCMyZGPzgskUYkmjJCryBiFzDEr
	TeY2QRStKn6BCrSIQzIGgGC3SELa9X3iBf5il9+zK6egR1AaT9t+R6cUIsHha4uJbvUf+pfM8HZpR
	rfqIQ8e0j1S2Mr6KXxdBvIEWauRIwM/DsgKRzYog8VuPZ8+XZf079KSkjeJNEVoinpsAURlItBgrY
	tyx+z0pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN9b-00021r-Fu; Mon, 25 Nov 2019 22:48:23 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6f-0006Hj-Dr
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:23 +0000
Received: by mail-pg1-x531.google.com with SMTP id b1so7911768pgq.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=gerS1REM8GHr9gUlQNrTBOWlgCgHUct+XSEkh5CGTbI=;
 b=n5qjjz4q0visUZZrW3w92D4iQjDj8+5L8iD8KT82mCBCPht1lG/HfGb1YGmr4B/hiw
 Wjiek4CGVf3dSea+eThjkvqNsenMHG5SqnpA6/G8gOXmyfRAHFnwG9/epTKzS4jo9CiV
 Vm7coa8JVRJncSv5ju5l2QNug5Y4R5oUKkGGdFa31SQNzOcPNhqU60vnk1kHzQX130qK
 TY5PiKzeYy2WRVaL8JYmqOEn6315izLsJhCuuh3555t4YHcZMo/D/Hs5bwlC3XmyiLGT
 sTx+fWPrd3K09uWHjQG5P7nssGAIQO9Xrs01fOOhXsJHThB6ZKoR3OaUAt2WyyP7lsMP
 8YZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gerS1REM8GHr9gUlQNrTBOWlgCgHUct+XSEkh5CGTbI=;
 b=Hj+pR2SfXq7cm6yZhNiM0gLQNrgggftjqqHZH3e3sJuEdIj57Ri/Tpd5MF0q32UV7r
 H3wFiNOHaQq8QrnqF+zGSnzbX1DzMdOuIfmgcENLoflkyxlQJmvjUwLIM0XYSBG2+XB7
 uBHxhOec5/4VZ4RXK3wiHFxU1MUIQ4z3VZhXVMVcS3u5PHXZsX53fu5ykuB0twEb502p
 oU/bATEhHqJDZjRSmSbVpJ3f/8s5hwsM2xTtka/6c75EnCuVP6uD5gFv6TwI0ul6e//r
 9PujpnZyYGfNlCB98BteF2gfHV87Q6bPzgfpAGu966X/MOL6RtmfpCJPk4/AcG/6XGw+
 GEew==
X-Gm-Message-State: APjAAAVbycQ2CIsJQ0gJhocPFAg9Nz7XA8KF/xuOOzaXFa8Gc0PVY0LK
 TgG/rPoTv2koix9naRQaHZNeRvUCvpY=
X-Google-Smtp-Source: APXvYqzPoldcb9I/g5/ep5OP7atLNr+jZkW3i8KFqhN9Dllm0hoRmypBZy0+tpWjd/6PRB5lk3KacA==
X-Received: by 2002:a63:584a:: with SMTP id i10mr33475771pgm.29.1574721919812; 
 Mon, 25 Nov 2019 14:45:19 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:19 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:45:02 -0800
Message-Id: <20191125224502.266177-17-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144521_564595_C5570239 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 17/17] mbl_gen_hdd_img.sh: Switch to /bin/sh
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
 target/linux/apm821xx/image/mbl_gen_hdd_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/apm821xx/image/mbl_gen_hdd_img.sh b/target/linux/apm821xx/image/mbl_gen_hdd_img.sh
index 1fb868b5b3..0e11e10226 100755
--- a/target/linux/apm821xx/image/mbl_gen_hdd_img.sh
+++ b/target/linux/apm821xx/image/mbl_gen_hdd_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 set -x
 [ $# -eq 5 ] || {
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
