Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15721095BA
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:46:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aoge2W9ORjnaGSPzQDLhRfrSggSh50dz2/K0vle56jM=; b=tSxc5Sztlhsw7z0bBa1vuhnJ+p
	G/dGKTd4URbOCr8sT7EAfItmDVQQaqcAHUc0mblg083XneYhfUTiuRSBY2wk+jQVqbxE/tL/hyGqC
	yMMtL7HLxJoj8butcPySUzp/sYMpwQTfIQpY2msTKT7Q7lzbv7MwjAnYARqoHRxkQsegAl8FMwU+m
	pJXSb9GR+2U0oJfwrxnwiHD6/QflYg7CrZ4fWp76GO3gsb88EZWWLwEZPg38zEWP5zLD0pHbWn+Xq
	kF5Bw7aLOdk0GY4hOKzJPpMrebnLAOgF4RmUmj2XW2YEj2Ulc6kH2KVNySY6nwms1u4LwSWLbqFyY
	J2xIUdfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN7S-00076w-6C; Mon, 25 Nov 2019 22:46:10 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6T-0005s9-OC
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:11 +0000
Received: by mail-pg1-x532.google.com with SMTP id q17so7914836pgt.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=pj1Rx2IgwrhKFo3s2KqdLg+4YWsyAMtzKUeA2zRjr1o=;
 b=gKD1togpXNxUnUtjwE6RJKyFwzPpO2oYE4pNwQmkCDf62sQq3I/USbfLwBKu4dAlrC
 tx6Ch/gBn+r5i+KZk/3lwNNma1/s5DmXKKM1vVOzp+0LKIVMzGOCduN54Jz9S6+BEOkW
 +C5rhw+c26Q6a2tWjsJdtCmvgkW/fpHZYPaPpgtRJJmIoTOESIVX0rpVJWpQKv25Whlv
 V9op6kf+jCY3e7joISGOTzpoRXtyRAT1DwpXst+y/FWkS4vF44x8EZLuPSBEnLMhqvot
 t7VaI1cFB4u0wGIYKBIF5VjP/4xSCxFy9wkUPf/ExIWgy8/uyB8T1PqaiQ8D0zy7pjxj
 cWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pj1Rx2IgwrhKFo3s2KqdLg+4YWsyAMtzKUeA2zRjr1o=;
 b=CLXzz8gtom+xhqcBg5I1W+IGy+LejeK3uILXuoXKPeOrNxJwYYOURTlUThhoVqImau
 tbdc8Dz/4aVHeEeqKZZOJerm7gmHVSWv5XD9JZ/+OoYWfj6fvHWpme436eXD6fjs6NSI
 qUYdoYJtwl4fQBIJyoi+MUFFrFQCevjc5BJQHsZxoxHMYXG3Rq0k0vu+Whi8NxpI0Hnw
 8YSqZbLWO30nFc9YmkB8tFPD0wgf8oT1Hlg4OizAnNg+BOPI50WMzOvMVLA/07tDyNPr
 rEmg7cLXpBn4fRfdrw/LJg2nRTXhFAlLfSwwVPqg1722SLcG9rA0oMfSlK2GqySzxcpA
 PZpA==
X-Gm-Message-State: APjAAAUvWfmcInzgqKmTyE1/7W9lxLHmmzGVavvEtJ0kb+PqNUPOfgLZ
 gDqtZ1mXyF7VRTq7E1Kgy+h/Vaaxqxs=
X-Google-Smtp-Source: APXvYqyUlAH5JaKVSAPmTXpIRWGVOOce4lte0OXLPvHkWC6DdxptcdGC/jBQoJyBabQnRwV+kla/rA==
X-Received: by 2002:aa7:8b1a:: with SMTP id f26mr16251561pfd.81.1574721908360; 
 Mon, 25 Nov 2019 14:45:08 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.07
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:07 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:50 -0800
Message-Id: <20191125224502.266177-5-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144509_829489_B6FB167C 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 05/17] gen_sunxi_sdcard_img.sh: Switch to
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

This has nothing that needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/sunxi/image/gen_sunxi_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh b/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh
index 0d4a56d0d2..7dc22761dd 100755
--- a/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh
+++ b/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Copyright (C) 2013 OpenWrt.org
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
