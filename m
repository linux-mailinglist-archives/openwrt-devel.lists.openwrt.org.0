Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCA110940A
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x4zZNFU/8wT3XCXnY5ooW6zWsEGzKrql1kYjdq8WKZg=; b=OchYwldAKquHTJVmZLFKJXqPKC
	AU1cc3BWRUaXAf2Lxtcc+mgrbQdvcmiEJDi6kHkVjNb076B4xImUUagxI1ELOwrfbGEdyreuQLmcu
	E9dh7fqfxSdAXgllHZfVl3eKmMOIbHpIYcNpuVdTf8XQjGLDygEnuOSrfzM8o9fH91b0qO8Enp/1g
	h4WRGvmM529Hosa/HMX9Tj1lfoHBat1GYlEQjNdNuzYvX1NuaIsuqlpR9PTVo6Cn0jbCD2MA4rZc0
	bJSSdsYiJEIgdqxF6gYDPCUDn8q1t5o2/GoJacSbkjFsjqQVMM89LeHCq/t0w0Ji7hthaX0jl91Ov
	LqbaXQlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJof-0007lk-LN; Mon, 25 Nov 2019 19:14:33 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJnt-00071P-SD
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:47 +0000
Received: by mail-pg1-x52e.google.com with SMTP id r18so7620615pgu.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=oAhxspPGNpxvRGhawAPm41HpIFzpb4OicYlzRJ3b+ew=;
 b=uXqXqRqWfqkSQw5GXdhwoyIEWz4pJ2OPtB68ChdCuc0lN0zEFiGvVaK13dGsTD7mPL
 CgM9/cRpbcF/8f20Rt+uRwMRuoSYPhq3tjPnIvbM1Mm8ZvbwtFjq/6oJ8RsGcrlNERSt
 RCvUjqqUubAkdaxl4Waqdq+ngpCR4Cz+SjlhYiieLooje/5aWGYSSTgCyhoWL4c6+YKg
 cH2dbLHDq/lqr6KjcBak9ijmITsGJUR5sYsQlcrlSAFp0tpeN7ekGtQyXz7XJMcbhTEU
 L31U6YlCVnh1eN/o7+8VJmh3lqLWokMPGjyNAW93uyXcsXTor5UPKxQ+v+a2MX7LtmSW
 Oydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oAhxspPGNpxvRGhawAPm41HpIFzpb4OicYlzRJ3b+ew=;
 b=AHen73+z4cXUhuVRMORjt83uuZrHgpE7JD7CKDWJGaiobYQjG4EtT2+5uOs2XBDKeA
 8ihkmJsg130ckem5YPqS+d/w2Bi1+AfPzaGupzmu8i7Q+VF/Lzsq7uELoUELnCa9BQPR
 DmFGU0gRF1OUVJFh9IQJoDUc+khdd/L8Es48rkQEec8HqoeCrITdafIczwdP5m0W6naf
 ct62/BCa4uSItkbyhFNuDknIhp7mNRVmy/DzLlgel4l6mBiuMViHUlm2JrXaJ8OMSMcM
 UGq5eLA/YNd52wHKUzZ3OvBEA9+4TT7AhQSQcTau6BI0H0W5he0mEg6K7Dfjc4C3YgDl
 bsEw==
X-Gm-Message-State: APjAAAWBLfZKxM11elMan7Q2YdFbHWRl5x4pHjhH9WI254ThPaVo04qv
 OfU4/N0VyFeYxf9Mw9/plZicn78KqkY=
X-Google-Smtp-Source: APXvYqwiex5iB52O3DIBvi1NO3CsU+rLn+jkWgd8Jn8FDbFvlkgkGGvehwayetRBLVCR68mv+3yOrA==
X-Received: by 2002:a65:6149:: with SMTP id o9mr34046862pgv.228.1574709224669; 
 Mon, 25 Nov 2019 11:13:44 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.43
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:44 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:27 -0800
Message-Id: <20191125191340.5980-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111345_907739_0923D2B4 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
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
Subject: [OpenWrt-Devel] [PATCH 04/17] gen_zynq_sdcard_img.sh: Switch to
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
 target/linux/zynq/image/gen_zynq_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/zynq/image/gen_zynq_sdcard_img.sh b/target/linux/zynq/image/gen_zynq_sdcard_img.sh
index 460a336e69..9afe18713e 100755
--- a/target/linux/zynq/image/gen_zynq_sdcard_img.sh
+++ b/target/linux/zynq/image/gen_zynq_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 set -ex
 [ $# -eq 5 ] || {
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
