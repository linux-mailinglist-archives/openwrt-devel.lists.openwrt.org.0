Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4158D10941D
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:17:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PmT80InWo49XCoS3WMAOo/+uHFNmyxSIU5qSQIYMd3g=; b=L+c64Xwu/YSXxX2D6tbcalmkPP
	JSp7uGq4RrPmNdw+oWaW1Fye4/KkkYTQHYrk9xYBhxesf8PLaHZzkSBkxIW9vA5+eXAJZ+OOZVHO8
	O1a+LgID92U07Fu8VrQvR7POucNuhZezllaYffXlxkOY0CyFYdLEMo5TOtdr9UX2rXDFnHUgOskAS
	KW7aiZ3Ft46Wj8X0OKASKmYn9EKWLqREhivc3FXsL5X6aoDs+G+DmqXvy+Wc8qOQox87LLj8GvgPX
	RM4pwMdewQVgRKVO/08ZCYwYA5d9ev8/8fr5xLiGUExtrsW+ChphNfTjYFJwofMJ3q0VIXPyDrmRQ
	xj5qd2pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJr0-0003mc-E9; Mon, 25 Nov 2019 19:16:58 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJo5-0007CE-C0
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:59 +0000
Received: by mail-pj1-x1042.google.com with SMTP id cq11so7040968pjb.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=D0UI4YOQwWnTI33q+aZja1HT3I6EaF2L0dxehe0z658=;
 b=ty9ng8GxNjbLzzcGIULYqmjTG6FaMb8RKe2Mp4iC9qFSufT49Vt1pGXydQyB2zwTFk
 xdYkvuoePDvxUOJn1gh3TByto8eCNAms+hGzHgM+Pn0twLCRdcpYAz5fDqxe4rLj7On6
 XQY9gK3XjnuePm2YXNopeMFskFpZbeCBgpjfVZdI4AUiYHmIjKK3wm/RB+n763yYHuWO
 lwJdS2Rw1nrImHpzkOGxUQbK3LxxLkdyc8cuhpp5QbF0w4CaXcoDylLvac/uwO9LTtG8
 fA/dbiQHwTqBtdUvycfNjxNj3CfKDiVbEiqNUWRhhfnM9IqU5/6PgxQ4u0aQxMx5YK6Q
 B15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D0UI4YOQwWnTI33q+aZja1HT3I6EaF2L0dxehe0z658=;
 b=UEhnnBPtr4GJ1gJ8yWt9S4m2nnXr8MgPqM0objjogGiAqPGEUMZg3uYRPdnljtUKVN
 omlCn50UNmS6pizgApFEXSQQHZ2Iy81jBiN5xnJCwUELVcDYVPKcdkk/A+FlWHCGAPfD
 FTsnxJIjz/TnIiGdC1/IO7ixpv4yIQ5mhw8IvIBVeg026pnxSueFypG12DjqXeq5Vrmc
 EdXHvhhRI1vOnWPzSkXOkQdftV0dSA3/oFUwz5WqVYCeYY2HkIoDnWlcKaZmfKsohbRD
 EFlvAtjbZU/6S1tRVJhja+kfnaq9RLh9DsmDSJbb2WuT3WJlhJFLHxFBB1L86DEWsoKm
 +gaQ==
X-Gm-Message-State: APjAAAXHVquuOlWp2d2BA9y1lqWh9MzzwdXRJfyaheUnGeWY/Y19jsaj
 1Jx6QbYIyN6/QFzNka0R/U5fWBwgFL4=
X-Google-Smtp-Source: APXvYqxzHQNz+pjffh/CY3AgxEJqgtaLVL0RPd+nxPdzsss9w2P1Jm6yd4ec3pICdn2QRdz1XHmoPg==
X-Received: by 2002:a17:90a:f496:: with SMTP id
 bx22mr608513pjb.101.1574709235322; 
 Mon, 25 Nov 2019 11:13:55 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.54
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:54 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:38 -0800
Message-Id: <20191125191340.5980-15-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111357_444020_BCD410EA 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Subject: [OpenWrt-Devel] [PATCH 15/17] gen_axs10x_sdcard_img.sh: Switch to
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

Nothing here needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/archs38/image/gen_axs10x_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/archs38/image/gen_axs10x_sdcard_img.sh b/target/linux/archs38/image/gen_axs10x_sdcard_img.sh
index 3cbd2caceb..87c2bba92c 100755
--- a/target/linux/archs38/image/gen_axs10x_sdcard_img.sh
+++ b/target/linux/archs38/image/gen_axs10x_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 #
 # Copyright (C) 2016 OpenWrt.org
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
