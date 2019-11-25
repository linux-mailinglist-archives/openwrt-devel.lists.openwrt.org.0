Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C341109410
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:15:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fZMYq+hI/yXO1hu9hCk/flE0YcVjGjJ73pdvCBS3JMs=; b=h8P0OAa4wbUoD/XrbP8E/awyHl
	p2DxsTYysSZDLWZVx0F0uAtYmIHdDwK+3ARd6GFvbA+KRR4N4zIyo9ib9ODM6ACgPmjhaA9LlNi3F
	upPZ7nKYNlVnOnzrjMWxyV4lpV4Lz1cQVkv8Ev8HXKe6RnxxBLg08Sk/R8hP1j2nAH/s4s6Z71lBB
	IKwwwfL/8lkyA1uGwVwiFcvqrx3fyU73mDhWZ2UenljFOUzWF8Xaerr0wOEQDoJlwmgPCitFuTVQa
	9KaNrMR5KMKJ5MymyD6GikBts2gBco9FtThHuAM8RyeSSGpA2qbBk7kc/YOeV6/vj4Unea8Sl0+Q3
	rcB2t/KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJpU-0001eD-Ss; Mon, 25 Nov 2019 19:15:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJnx-00074P-Ef
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id x28so7831510pfo.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=5kdnBV5V2z+2YgHBNyFcTZ9FO6Fb1pBsWqyXPSkWsN4=;
 b=X3uBN6vCjLDmdIH6Kd9qZifCW4m0wCOTZY0p0v5R7q3QqZKJD6Q37IMDqYpw/tIs0R
 fuJ3UcYqkkassxUmMPpwa5JB4rmXj28oZPMDfprbcYR7xH20nAsgyNDGe58FPoOdCBnD
 6OOA/rVCf6WIIlQ233HEtmo970tB5Y05X94y6nHMNRJHOhDuijt9Kj72KOqSBS/3X+yj
 8VGANO1n8AnGFp93U0QNPOUzl+hzyDOEZ2FDRlb8lvfpj90J8/tVH+aFht//433lTDKo
 I5s4MV7TFDEWcrHh/1T6M3IVQ/puyUAgYqkh9UIvs8qtqIQfTVpPnjQDEFvuQ+7sAPRl
 z2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5kdnBV5V2z+2YgHBNyFcTZ9FO6Fb1pBsWqyXPSkWsN4=;
 b=YK3B3zOX0NVfGJHkh0DpIdcPpSVJrmlbEh6fV5plB9dRHSxoQg4PqXx2IwCtGM1wY2
 ClJEGek5TBmX6ODucB7bOePasl1hGoZL/OD6kudXCXcSydrZRGVH+Wxss3yP0MLfm4GV
 lW+cBbDnde9NS2n9AYVim2Bk2HVmKNcYE9zZlOuA4Notc8pCQyANJGJ0jWGUQbosLAUe
 XE/9fwX/0g+87QoK+ZsWewANr6fTHreisFRbuBZgEkl0UCIL+7hlpIojwmy5LUAb8lLK
 OhHD1TLsIaGrXkwrAjRk68JTcqdKLVIxire/d/hLZNE5ZRHVMoOG21WWcGUkFnWm4v8R
 oFkg==
X-Gm-Message-State: APjAAAW5EsoDNmlfq8hCYbm0fKTfIaMUTtb9b07BUFM4deY1ICj8v4xL
 WmKSGOZckZeNK4iUVJtg6GfKX7XKo6I=
X-Google-Smtp-Source: APXvYqxyg9zU5SxmKDYpvf56QsqAz2873uwlbsoTvM32WeX8yno3r5xrszHOPPr347hQaXjVC55D4w==
X-Received: by 2002:a63:5801:: with SMTP id m1mr33817519pgb.139.1574709228516; 
 Mon, 25 Nov 2019 11:13:48 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.47
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:48 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:31 -0800
Message-Id: <20191125191340.5980-8-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111349_491662_CE30A0BC 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
