Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8248510940E
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BSaQHM29xjSEYz8lSRrdWCRqTgvuCWwawf9R9PQy1UA=; b=GmZt5Q3+8GlBF5tKfE4zxQr/2T
	/9asdMyYoj/oivlJdpLy/G3afDBcY6z7b1YN2F/SZLsPRPANb3IsAeigwnmyJi39M/l6kqwRorktn
	Yvebij3hDQnVXOLFckBo+mo04TrfQj/4kSJF7tanlOgNcuCFJzX9WfiJeeREtL2qVry/8/B3Ze2QM
	aB5b3Ib8PnPSLE9QTpHs+zA1fgrSdR3jzqBt6VrdT3y+9CmM0RJkPRceiPwoODnfCEhANXRr/jjHt
	sX7MYVlq/cYPsflUnwuAJFiwmujNWeYFXeCebO2J45avHdssr5BwP7ZF+qAzrq8BgfKrjNF5wT1U5
	rSWdFP8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJp3-0008Mq-JD; Mon, 25 Nov 2019 19:14:57 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJnw-00073d-Py
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id f9so6915514plr.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=U9F8lIaSQ6MPYSQMcj4UcHmwPb3AwxdcUbh5FSeCFXE=;
 b=Ub31ZA9a9au0KIojSvmpUe9IMAdmfamGGA40FUsWGpyo3MlGNkvM5VBqc9CnHDhKMn
 oLxZ8dSy0tOanWtxJcoC0pmeDXz1EI5Yc5tcCgH4+6n/0PkG4lT4mzvJriyJG9hyQ+8F
 QKgiK9+mFSqYqMco7GcRnvV8qON7xVKZy8RswGcEPvqYZFP/iNzyMGCDdq4sKVwUY6WN
 QIWUTRmBIt6KyxIu+0/wAL9XAdWHiK7/i8kjytAE2dFzFUvvKUT81RiT7Z8X1BigzOgn
 eVY32O23blmOfsBkmHBd6lZ1184GpNAMc4aBBbbMWFt328C7nXzcfPhszqJXwWFeW0do
 Ed6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U9F8lIaSQ6MPYSQMcj4UcHmwPb3AwxdcUbh5FSeCFXE=;
 b=lkTNva9gEyHwJjO+XMmeO3Xj6rrB4wGVK9mZxlPFlkEiWDkB/nBEJ9AzUL814K3OpP
 UIC8JSdVk0jy7+GYDkI8RYWHDNFvFiAaYeP+rTOMiid3L+gZQDgsPCoSbnbTdSaWvIB8
 PbclvDW61ltzSWaGiXTpuUiEQweOVfSGYBG3S7moq+rvH+HSZlxtJDqzHj+yw2W/KbCv
 AlAGh1us5A6/x0djSXoKCKrFKAqXPPMSUHqzYc24/gSOUDaItU0MdIRKNvctr5KR8R3M
 sdXQUNmGegs0qRRsb47JH+YS2xMIcQoFv6YRiFguchlEMLQJnpYcUMBoVyvv3dHkqC9t
 W47g==
X-Gm-Message-State: APjAAAURyfPsn/yGQzrkEKv3skuuemirEguApVgDAniSfoAtzi0vXySN
 /yBXNQgJl5QQ3PQKRatbF3vYan8yLkU=
X-Google-Smtp-Source: APXvYqz4mOtMHOZJZDfHH1yOcEyxMpgEwNw3VIz522psNv0TT4+4KETpyoz+upAe3KCmufL1BWpb4w==
X-Received: by 2002:a17:90b:28f:: with SMTP id
 az15mr641166pjb.27.1574709227814; 
 Mon, 25 Nov 2019 11:13:47 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.46
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:46 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:30 -0800
Message-Id: <20191125191340.5980-7-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111348_865051_AA20DB6F 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 07/17] gen_omap_sdcard_img.sh: Use /bin/sh
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
 target/linux/omap/image/gen_omap_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/omap/image/gen_omap_sdcard_img.sh b/target/linux/omap/image/gen_omap_sdcard_img.sh
index 881df9a05d..dbb50cbff4 100755
--- a/target/linux/omap/image/gen_omap_sdcard_img.sh
+++ b/target/linux/omap/image/gen_omap_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 #
 # Copyright (C) 2013 OpenWrt.org
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
