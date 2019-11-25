Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4660109419
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:16:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UM6z9ObpQw5fuVHatTruZNBWc6w7MjxZMhr9hQOHUYY=; b=rPYEKNDB4yujSMgx4AP9EaXOP9
	9lFmjrl2zWo27bXodTKZfmohrUq0RK4MCKs9uTJcYe02YPwS+AClI7WNEtsp8U4UCKNeCrXfV1tjx
	obyqqzUQn7fEVX7R4dK9IvZ3HBntDHpAMxI13rFLL5TsqlvTpyTuhEAyE01cJQgRTzoMmA5zNEFGj
	PSJaKFjhUP+dvTYCN9sDVJPJw3W5yz2Tar0OLB2AEHmoynhGExUdGMUJaRh+7264/8dn0alHxg4T4
	uWSP0DzwDRNWruXUNzPWdBBRdfU9WzROg4S6F2oe2WrcJDEjCFQ8/tNWSrvulVvNvZl9nhuF0fTd7
	mEgWK56g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJqR-00031I-0E; Mon, 25 Nov 2019 19:16:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJo5-0007Cw-0P
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:58 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so6934944plb.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=EQF27iEFb1mWbjySpiPt9ZTKNezjYALInuk45jkZUEY=;
 b=PZ3fAxrqyeyVdTDaJmic5g567IPpFpFx7lPG44nOryMKtBbIVIrTThhrRNa0YVM5se
 4WZc84aMWTARtMzfolecXfLS2liC3OOPZhYzerzjy4x8kOfrt+MuXF/8MU31A+rtBvPp
 BEFflBgp8dKsQB4xRlY4LpuOqGw/tXYm5qBiS/iKCZ8kYWM+j9vay4omt5KP0fey9O68
 z+L+CXgBJtWutsXHzEB9bpvJJISZvBT7gSw6UAgcMMbnCnn31PpB6L++jPyayVr+inhM
 M7S2jMZYoZ6D4EBx8qKmA9AO6lMVmh8ENV515UYsfveafsWjgDMaGQ9sKdmoJLJXKxIA
 Q4XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EQF27iEFb1mWbjySpiPt9ZTKNezjYALInuk45jkZUEY=;
 b=ATUBFcvdQ5ws0nXkSMYw+AMbO6p45EMv/CQjIKCnI4ep1jqVi9xH2XDmRpJGff3ujv
 YGhRm4VLVQnFdk1LmraQEu7tV5/xLFkHR8Q4m9+cTJFtJxOZbdveDIoTZ9MPcxImIBGr
 84R5Rqx8BflksQH50zYfNic8tZ0KMiLGqsejYuAlLTU1F9mFXjMRbW8qE7yhb9luubXm
 9J21F2Qikv+qPWrwzrYVqqtFZFUe1b1ZST18mIhfNRoDuaGEwLX5ZpPKdNbvB5jBI3y3
 k816n/VGk/wPKLMU/ROsBDFoUDnIM6jZDEAguKXfeXgRhBzTA1j4buIChYwoWHlZgD1e
 ZxYQ==
X-Gm-Message-State: APjAAAWYVBjeAlOdfbHwm61f7ge7vQErqkWxNQF1ywW9A1zknP4AR0FO
 47Yz00MInAd8EFQoBMKN0pql0dnv6kg=
X-Google-Smtp-Source: APXvYqxBdKhMXRqvk6eDFm5eJxsjIZfYETIrY+pCVSs9Bcyyx0VT1BOrkBH27OgEjiCrt9JYZIf3mQ==
X-Received: by 2002:a17:902:76c8:: with SMTP id
 j8mr30323927plt.122.1574709236045; 
 Mon, 25 Nov 2019 11:13:56 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.55
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:55 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:39 -0800
Message-Id: <20191125191340.5980-16-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111357_094301_2BF1A1B5 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 16/17] gen_axs10x_sdcard_img.sh: Switch to
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
 target/linux/arc770/image/gen_axs10x_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/arc770/image/gen_axs10x_sdcard_img.sh b/target/linux/arc770/image/gen_axs10x_sdcard_img.sh
index 3cbd2caceb..87c2bba92c 100755
--- a/target/linux/arc770/image/gen_axs10x_sdcard_img.sh
+++ b/target/linux/arc770/image/gen_axs10x_sdcard_img.sh
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
