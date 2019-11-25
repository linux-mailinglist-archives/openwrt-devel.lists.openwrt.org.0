Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1991095BD
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fZMYq+hI/yXO1hu9hCk/flE0YcVjGjJ73pdvCBS3JMs=; b=A1oZEzUTMx6gzvR0jmqJ8PXagk
	B73cUp1LzJz2vUBao/j59x8INRlJq6uz0M9+IFxjsKGhG8qIZl3MBZbF5/6K2I5RAjtYIvbXiVW7M
	vljZ5UWxMT9IU7ououzJYQ/tgIgfXvd1+GXPyv4l/TmGqCHdNfjrDB0ZvtaMgVYj8kTzaApAveJ7A
	PEwtxNNpJC1rE772cEaLsK6eCBf52zkgXQmcdeOBYcoB+NBJI55nU9ib4crbxKKtoyD6SopZHRG5f
	rXGf2zfVKOEnhwbljs+tsBV6tCliJzafimVEV1kA/Y7D6AJrshtTnwGOYxCm6AaakkkcFYddqxLJA
	448OoKKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN86-0007vh-0N; Mon, 25 Nov 2019 22:46:50 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6W-000665-VN
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:14 +0000
Received: by mail-pj1-x1041.google.com with SMTP id v93so4028637pjb.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=5kdnBV5V2z+2YgHBNyFcTZ9FO6Fb1pBsWqyXPSkWsN4=;
 b=j2I1oBDt2qMaqGCIJdbKoL8+nEhC8mwyegjCwZg8/l9f8RVsBjL1tTHMwL5bF8Rv+G
 T/dNHk82UKmQp0bgFRVVc83xWIt7NH6Lt6qwftuzyKsJOdKe0PBQocInZeBK+BBURzvQ
 Eg2GUntkXNN80eU3QzKuWnrFHPpvhEWsvTZtjRQOyG3dAuaqtuItPYbdimGTQoMHwRds
 fZH5wg4BplANXBciF39WMwKGaEGE8JZl+SczUWbUrzv+qapDulICZO0h2rDJ+dZZNf33
 tCFfn2IvRgB6Am+5hcjMopIVbIbzX6+xiYFwzEnvMH4UAlRxu/e5z6r3DnVSv5gPh8rk
 0Y8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5kdnBV5V2z+2YgHBNyFcTZ9FO6Fb1pBsWqyXPSkWsN4=;
 b=G4P0O73ItVPg90fXtVO/a6+sbAsPmMdYx3U/Ue3ydQm7oNyQ6DyjfszD6pgQu0P/ZJ
 y35FVk1eUZK1wjQqQGLxMNkxyPymE6gx4nRMDluDb5K26Lliwrrs53WWk1EYEdQbOzrn
 4AxRKy5ywd3bdpx0IQy1NxOt6JxfAS8J+XHvBguXqn549uiu8ieBNYC4rhvQ0cht47EQ
 GJj1p2DdOUUEt3zUUhbgRrLAEPYx04ZKkweiX0+YL2BJe+GeoHWO3/ZcIRy5nbx8OMwZ
 KHzVHSUrb5t/EeQycueXgvku+obdEE1h0/aBDnX/YMkeeua6WUwLYfpsCy8TYN4sVbl1
 Mmxg==
X-Gm-Message-State: APjAAAVUFmkxYNXl6hATKFYEhu4qVnqal7jBoLh0GYaoAIPYcA6Nyr3Y
 lug6X9M+SQGULO00hC9SVJxiIiT7dxc=
X-Google-Smtp-Source: APXvYqxC1kpyi/7XvXPmFcoXxDRLRBLZ4SupBypNvMPc85ZRRIPaD21TK26GMJjo42LWT63QqNkcgg==
X-Received: by 2002:a17:90a:9502:: with SMTP id
 t2mr2092711pjo.14.1574721911323; 
 Mon, 25 Nov 2019 14:45:11 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:10 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:53 -0800
Message-Id: <20191125224502.266177-8-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144513_069588_AF64C10E 
X-CRM114-Status: UNSURE (   8.54  )
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
Subject: [OpenWrt-Devel] [PATCH 08/17] mxs/image/gen_sdcard_vfat_ext4.sh:
 Use /bin/sh
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
 target/linux/mxs/image/gen_sdcard_vfat_ext4.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mxs/image/gen_sdcard_vfat_ext4.sh b/target/linux/mxs/image/gen_sdcard_vfat_ext4.sh
index bca664c780..9d2b7c46a8 100755
--- a/target/linux/mxs/image/gen_sdcard_vfat_ext4.sh
+++ b/target/linux/mxs/image/gen_sdcard_vfat_ext4.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Copyright (C) 2015 OpenWrt.org
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
