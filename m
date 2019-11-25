Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D29601095BE
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:47:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BSaQHM29xjSEYz8lSRrdWCRqTgvuCWwawf9R9PQy1UA=; b=smO106WUMxGXvdvwPF1xlGJDVM
	myQCSin9RQDTU967w2sq9K/XuPpaxoR7ST1SQfYFip2TmKJy72ZPakUC8iFwvP/63QKI9D+F0OzpH
	mpFpyfU8V/cNGUMaYgaZZNnurTuBlZCgsRoBnMi1P8stvoS24+T496XOGQIaxIM0NuXlRHb5P74YL
	Xlnl1ubrJ0FX49JCokc7gAbs6cgahiRo8SaWrK/ycQWvg3XhXzn472cqhirwi+Pn8bv1ae5a+Qnsq
	lCHMYhZ/Kd4NyMpWW3Qbwvf76gCB4e29KfFP9APgD73OInFWHsLdmlZmvev5S9meOgzKsnjNRY3uf
	5DthFdvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN8F-0008BL-L0; Mon, 25 Nov 2019 22:46:59 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6W-00063W-94
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:13 +0000
Received: by mail-pj1-x1044.google.com with SMTP id gc1so7286894pjb.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=U9F8lIaSQ6MPYSQMcj4UcHmwPb3AwxdcUbh5FSeCFXE=;
 b=f5zBHZXXWlJ1ziFk+FXW0ZPWmI/mFoCJJUPtrqc9RK0Fplr9MCv+S7olHMA/VAMjJk
 b8diDo5PCbKndVK+lKaI5PndmbQImCh0R4ZtNKF9QysHZBaXJSe3lfZjjdOZi5sl+Wk+
 vvVfT5VdkLc/kipYzu5H158Vsq37CRzYf0bPOUXwNo0RJgdpjNMYcvxcj49f3vLMN3zV
 IMOdZlExBuy7ppg2URh0UKpgBBY++C8uUPhsLxcSk+hkFCInabQI/amiLE/bB4hLxk1M
 EYc7X2vqj61cAYMk2+tvuW/c6O5IpK6b4QoU4XTLzNLLx1XCF1d03jpCjlKLF0Az1728
 NWYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U9F8lIaSQ6MPYSQMcj4UcHmwPb3AwxdcUbh5FSeCFXE=;
 b=rc0MuxgU8+OnyjgnDP6nMo4E/tZPxq0ntgxa+AS2iHJt90IOd99tMNe4ayC2x9VI39
 HNJFc6t8fsHFL6qIWlutSSrOcpSGH6JTiIBUkEKjBFvTHq9lYf0bW6VSG+UA+vjSB+b3
 imUOUZS43SL/sysgsxb5p88dBvOC8m23nzJT6UXIbpAelOYH5mg1RtorT7eTjMnqYqry
 jH5P3C+Dmxek7BdTIgut6GOuQFImEBE1vpODTmqwREOn7pkBvS/9zkeoizw6WouWB/0u
 MyBUYljIMTcgYJIsC+AUT6A+uVtAZraFz2ypRpGniK5ZdMdgF4SVX1ASgvZ1tKri77Dz
 4JVg==
X-Gm-Message-State: APjAAAX0wY3fdBA3cAu5/+u6V0Imo1yWjJWkuIVlwPcF5H705aKhgeu4
 4vX4qdKA83x4VbvxM69u1Ig8ThuX6WY=
X-Google-Smtp-Source: APXvYqxwzWHMvycH0oxkjolwhY8/YXQbOOpnDcMpmDQ3qS8ywWIKC/kiFPm++Vm0cgM6YZTOOa/lkA==
X-Received: by 2002:a17:902:9a02:: with SMTP id
 v2mr30918214plp.221.1574721910341; 
 Mon, 25 Nov 2019 14:45:10 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.09
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:09 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:52 -0800
Message-Id: <20191125224502.266177-7-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144512_336369_551D8929 
X-CRM114-Status: UNSURE (   8.61  )
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
