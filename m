Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08D51AFD38
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 20:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npQtDcC1JRl9fy7dY/8teW3qZkW3h3SQzd9fmtwd/Pk=; b=orRWUPrcVsNQTX
	40ZjZL2yj2g6bUR1j/vJOeA9aSUXSqTh2IXuLDc2YY8FjCWqYGXpB/h7U3mdfnOnWtKwTEK3YGZOZ
	jkQspQD1hztGr+FkLyRhrLS7kqEnuaHb0Og7VCxs85xpiGlDpGw9RQJBwkaaZo5VcR9DAGvMOaQvH
	hCgiwwAdqpWDM3v8lKh1FYWlP0ESNnDlQORr5FpPUPIJW2DmqvaKs+WomawBH5wmCpUmdRJxQUqnV
	EvIy5UQffxPxtd8RVh6nSS4K4kwT619D7rAQE3Fqz2g0tVHbm7Pna71GXTvM43h9u6sFHzdZfQV8T
	Z4VrBUYCyfnkkaBhal1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQF0o-0008T0-RK; Sun, 19 Apr 2020 18:49:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQF0V-0008IR-0g
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 18:49:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id j2so9360682wrs.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 11:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=G6MdebW+sSis0DRxXmyMU0ZdYIZnfDFXeDJUyepxwho=;
 b=ehpD8xY4QOplwOujA7MQBd6bIfkr5XlgLkSAN+ZsO8fi0auO760kh0RNeTrAMdzvdC
 w9LY7KKZVKECI+KyPxNzV9NjmbOwtvxA3ZcW86ojH0UP77cvpBVMC3nm9S0RpG3D5aoS
 mZd1xvoVx/bIeORHjJ6H2AaxfxnqkliofUu1LxP/xvBJh2xC3hz74iG+OC4N5ylHU8AK
 ISvhumIw889MwMhkiRStor1AXYc5MMbuZIWSiJLU5qYm+q2ssQFun2svAe2qPygdfLXt
 ymHVOYGYJI7BhS6T+Hmp6ApaLqDZY+PRlRrpdPN3HHJQzcQ/hAw4Mfc3HP9FZRSLcaUJ
 eaAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=G6MdebW+sSis0DRxXmyMU0ZdYIZnfDFXeDJUyepxwho=;
 b=hvS7FXTefIDPFSS+VYnM1E54rLnzzKTMwZaXcHR5WxzhtvjUNK34CdKk5rygq/GOM9
 KrZ1lWKeJb5IasvyhmWDBSa3pLi52UO8WL3n6lOrfOYp8cPhEtArXu/aJWAn8TAHF1yl
 EuOID1cxdlpjqK+EJg2FKRdQeIzuAHrIcSh+d/4ExtRjpSiX7o2dp1MnTQ3HFa3cLpXK
 cCc/ja+dLR0LTglXayUUm3ACnJer5X8Q9xG3+S2PSzI3KIk7yMBcVZlqL5SvFgBdNq3o
 otz4HwBX29a9UdJHIohiK7v9AtmLDNTChApykPcYXf152T8Zh/d3IaFjYNFcui0ybAla
 unqQ==
X-Gm-Message-State: AGi0Pua+dg2z9c6KhhygEkBPSky5Jhx5HmQAZyor+qzI2+DMZBqeXNpZ
 WcinBdnG9Rgbv9iscFOSm/fKBX3hBvM=
X-Google-Smtp-Source: APiQypKeFpLTkUQD8FmdPkK/OABp3x9gk/nkXodkQtvBADk42H0RBt0mqb/qs8EtaLfz707AFVDs/Q==
X-Received: by 2002:adf:f1cd:: with SMTP id z13mr15711659wro.166.1587322169195; 
 Sun, 19 Apr 2020 11:49:29 -0700 (PDT)
Received: from localhost
 (2a01-036d-0111-d83f-915c-1114-2382-d092.pool6.digikabel.hu.
 [2a01:36d:111:d83f:915c:1114:2382:d092])
 by smtp.gmail.com with ESMTPSA id b82sm17547289wmh.1.2020.04.19.11.49.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Apr 2020 11:49:28 -0700 (PDT)
From: Szabolcs Hubai <szab.hu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 19 Apr 2020 20:49:11 +0200
Message-Id: <20200419184911.5249-2-szab.hu@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419184911.5249-1-szab.hu@gmail.com>
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_114931_081595_C5EA1FE1 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: use lzma-loader for D-Link
 DIR-860L B1
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
Cc: Szabolcs Hubai <szab.hu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This device has trouble extracting big kernel from flash,
and supports LZMA compressed kernels only.

Using OpenWrt kernel loader saves us 64 KB compared to the dictionary
size limiting workaround.

Factory image sizes (commit: 5f126c541a74) with "CONFIG_ALL_KMODS=y":
- original ("-d23", default): 4784188 bytes, LZMA ERROR 1
- with "-d19": 4915260, LZMA ERROR 1
- with "-d18": 4915260, diff to original: +128 KB
- with "-d17": 4980796, diff to original: +192 KB
- with this patch: 4849724, diff to original: +64 KB

To save some CPU cycle, use minimal compression ("-a0") for the LZMA
compressed uImage.

The most robust solution would use a different loader,
which reads the compressed kernel directly from the flash.
See the thread at [0] for more details!

[0] http://lists.infradead.org/pipermail/openwrt-devel/2020-April/022926.html

Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>
---
 target/linux/ramips/image/mt7621.mk | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index aa6836d50a..e954f730da 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -218,7 +218,9 @@ define Device/dlink_dir-860l-b1
   $(Device/seama)
   BLOCKSIZE := 64k
   SEAMA_SIGNATURE := wrgac13_dlink.2013gui_dir860lb
-  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
+  LOADER_TYPE := bin
+  KERNEL := kernel-bin | append-dtb | lzma | loader-kernel | \
+  relocate-kernel | lzma -a0 | uImage lzma
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DIR-860L
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
