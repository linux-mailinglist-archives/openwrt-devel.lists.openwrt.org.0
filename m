Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6EE1095C1
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zVnSXiQyjoK4ZOfaHiS3UGDkTecJISVCEQdi9i2eqoU=; b=QqX0i4yKOo1xE1DhOqi/Cw3Kho
	wg+GC5xn/93JLAgabPUor4ftUKeZLYfAyoRRP/zdg8HzNFOpDsO+nskFXE/3QaJTSADMiFDqre39/
	8MkvEktsIXdzaC5zWIZ0yjp3/jhh6BMZVAIAqm4a/FIw455C2HmoIKGWjemD+v/Xl2MUB8//0saZJ
	4R8V43aRmvTTpI9+GemRmzixuSUYXcV2LxkThZb25/uIXtWPKzcryukOsP9mp78X/uzdgSqtmaf06
	ATbqQkSIxMO6gsgNO9/Vn7XCEOX0oFUolR9Pn0MzeY05WuWMi0h2Xd5g36V/0wECZCpv6iU6YOmJ1
	sPf8NpWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN8X-0000Jy-62; Mon, 25 Nov 2019 22:47:17 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6Z-0006AR-LP
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:17 +0000
Received: by mail-pj1-x102f.google.com with SMTP id a16so7280437pjs.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=pBGmO6zI4kqQpZa65t8xhbGx44c4hnTqtH6a+OWUUek=;
 b=iHLuNdNDfG47pxw+1xIJFD8OBsUBgVl8Pg+PjvDutItjKLKlj5pppftJxuoI2l3Qf3
 CGEYQAj8Il8KCC2gP+Iz2sVpBy6SXDmk5bZpU2kIOIotlwjDuM3RO5ke5ANGq8loTp/R
 LOoDJJIQ7IOsLOp8/VtBP/3pFbkfck/a7QwEfiYgqmAu39De+ki/rR35jhwRHS71efcR
 1Z4lQPpeWolfrhiOlrhY+EcrRneSlsJ0xu23CeryisNYkUpdSJxGZFIqV8IflsnElI3O
 aF9061MA1FTJNCCwx2GR+iTAfsbk7OIfEV0UO10bdlopHH6i6mgFyuGpz7cQUefSf1Vp
 reZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pBGmO6zI4kqQpZa65t8xhbGx44c4hnTqtH6a+OWUUek=;
 b=TdLP5VDNNm+6yRNxl0KfXqiZ8twp2lxMKhUPXX9677lJUpeO9NRn4M9TtYXu9xAUl6
 NUvSa5R3tFwMHFuv9Ff6PSTilF7/vxjBXHT8+abL9IcYbktzTng45K3LB8qvujUIkbyp
 TGdKRhazBKnC3sExIb6EQt6yIF9jrO2T+BQatM+fkfH1IinYHuERw87FDxUQKwnIKR4h
 GIrrCcF5tM/LWgEDoMvcCzay4PHD3WWwgAKqe5q3KIRT+vH/m79FRDy2xrAJSZ3ymZ8t
 P7STn5aQNwPlpA/bVs52D1+MMavBR28VPUSde7y/DfQHGipMItIKJ1ovdpiPUSEVg0Yx
 qA6A==
X-Gm-Message-State: APjAAAWa3ExScuXd1e5m1BExz014mUVr5oKh+sqFzpz5RwLsp++jQ4/s
 Rg8RT9LmnOzTfDLNE6bg4sGR09UMo2Y=
X-Google-Smtp-Source: APXvYqxoDlU79AfO3x3UB5b7V7Ylu6ZcrTp4RFNlQvE4EdIUkUvPBbMopvfq2m/2OXMWlQcoF897qA==
X-Received: by 2002:a17:902:a581:: with SMTP id
 az1mr30807205plb.23.1574721914309; 
 Mon, 25 Nov 2019 14:45:14 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.13
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:13 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:56 -0800
Message-Id: <20191125224502.266177-11-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144515_767595_18DDFDC3 
X-CRM114-Status: UNSURE (   8.64  )
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
Subject: [OpenWrt-Devel] [PATCH 11/17] gen_sdcard_head_img.sh: Switch to
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
 target/linux/layerscape/image/gen_sdcard_head_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/layerscape/image/gen_sdcard_head_img.sh b/target/linux/layerscape/image/gen_sdcard_head_img.sh
index c7ecbb6883..08ab4497d5 100755
--- a/target/linux/layerscape/image/gen_sdcard_head_img.sh
+++ b/target/linux/layerscape/image/gen_sdcard_head_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Copyright 2018 NXP
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
