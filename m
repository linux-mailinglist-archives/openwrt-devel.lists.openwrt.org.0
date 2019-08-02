Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B319800A0
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 21:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x4AzbWfAVcX1wNc3gnXOv5IyVVeDpCyr8V9/vTBNVNM=; b=JqknapG6/meL+v
	h0NzATWRll0LUdEqR8sDUbda+KFW9oKDt/DzPmHDhegENDxNHK6ultwiliBrEPU9fKrgiUAAZsQQT
	lPz8NuoO8j3fGDinFaxtVhfu5LT47VLPV6Q/3BhXhua99vwnnqTKQRKWDxILsmrv0HBasIFXLG3wz
	zR3VGDklJx0cjEZ2DroFfk/n4zVqGeOla1JnO3rqDQZcucQzfmzgB43MDJNgWaWg2/4XoOpcGJgFp
	r9cPcrrNgoWlGvnQZXXcjrbxAdzBEFHcl5XqxAA6zEGf+8+VaREt1QAp1SFHl0EprIVfW2deQ1QEM
	kUEmsidU1QBUvRyKeSlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htcq0-0007iY-6d; Fri, 02 Aug 2019 19:03:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htcps-0007iF-AG
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 19:03:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so36469412pff.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 02 Aug 2019 12:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kAdSIZ8F1Fh+eiJSPWM6QNS8EkyT+akm2S6v1Y1f9GQ=;
 b=nkmrvJjIz4/JJc6+32Tzv534p3d4yt1qRRrn4heHSCYz8+zr8pjhtaaraKpcMmjd3A
 smw47Uej2x0DkRnYNqYxTu8U1mq13mSxbGcC8R+u4kdY5ZSDIHzb9rhdWlfhGKBuEvOh
 dWwipHyt2HeHy9e6PF3hwVmkPnMzfHPMOFACl6qKMyiHBRq/brMeo5Bjnng1DN0YfakB
 gid8P+8K3AGSr1/GivFwauF6XlW9KH6OW7L++ASlZHankG6V4Jx7ja5CQ39YIudZ6maY
 1yfL0/fpviI/J1KrgEpAxYs0KiBMO5tnneHAJiCF8G80jBrUt38+/Y/Tc0R6pNju1RT0
 xv1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kAdSIZ8F1Fh+eiJSPWM6QNS8EkyT+akm2S6v1Y1f9GQ=;
 b=EENItf0cKWb3eAzkBteWzCDIm3oxVbwOa4bA0NPeaR3xZaPlwDm4viazdg7gj6pEXM
 D20WA0kHwIbgJ1s390xf3RPb0rLCV8HFaKLsCi4NerAsmW/THCZ+DJLKgoJ9I7L/FU5l
 VaYKVEKTz6p6YAoBP2pbxSWTNZciOSvZDcdE0KkLbibasabytL+fDgwc3DbSQ63fbvGl
 E89R9iTAoBbisOmMk0RhCqdva99X/6sVfTKEO+ywswr+5bjXAottm0BLuAgTyT+ys6MZ
 OfzMUN2yXrBoVB6PG+hrhr4KduSxIpsY3C6D3Zqy3Y906ydLyRiWHE9skvGxXqXAztOD
 8EeA==
X-Gm-Message-State: APjAAAV0Gzs3Pom6v/2O/sD5GleuuKP89V8ZskssEIB+70K3rOEglsUE
 RRkuTCyQQXMFSKWI7+87QslcYjeW
X-Google-Smtp-Source: APXvYqxHm2Y6Ut9G2YjsJsFmrrUsTl8OEoaxhFi9700B8Ox9diuJevRUqK0QwWRvhBmAamplkolXFA==
X-Received: by 2002:a17:90a:c391:: with SMTP id
 h17mr5754884pjt.131.1564772606382; 
 Fri, 02 Aug 2019 12:03:26 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id u24sm17614999pgk.31.2019.08.02.12.03.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 12:03:25 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  3 Aug 2019 03:03:14 +0800
Message-Id: <20190802190314.12908-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_120328_357895_073A12AF 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] sdk: Fix cryptodev-linux build when
 CONFIG_ARM64_MODULE_PLTS=y
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When CONFIG_ARM64_MODULE_PLTS=y, arch/arm64/kernel/module.lds is
required to build cryptodev-linux. This updates the sdk to include this
file.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 target/sdk/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/sdk/Makefile b/target/sdk/Makefile
index 3b860db93a..0bed666d21 100644
--- a/target/sdk/Makefile
+++ b/target/sdk/Makefile
@@ -64,7 +64,8 @@ KERNEL_FILES_ARCH = \
 	include \
 	*/include \
 	scripts \
-	kernel/asm-offsets.s
+	kernel/asm-offsets.s \
+	kernel/module.lds
 
 KERNEL_FILES_BASE := \
 	.config \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
