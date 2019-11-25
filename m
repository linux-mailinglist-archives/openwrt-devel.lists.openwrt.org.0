Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280151095C7
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:48:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PmT80InWo49XCoS3WMAOo/+uHFNmyxSIU5qSQIYMd3g=; b=V+722dcZ8g8I00WWjA3NRUwsjW
	EQP8EfolLtI4i7uSx/I+E5NgPbXHr8HqJiMTZdZJPOJufKL4W3Mg9FJWF75Rr/8NhvwxxD9wricVA
	80PS/BsMaqbovuxWyJfwC7kb8dWN/RhN1EeWDJRhmnWdtotnuIfgsuGiX9oeI+iTU4BdTkhC+08SL
	kPjBOGA6Se9Dykm/SE/pXJH7+Jm7odN5DQXy/iI4dbKKP2EhD7uzsid2evrPBo5IC9d3nnchbaPlC
	T6465kDS4CC1eVVDEdHYeSdP1H1vPbO7hsbDmjNRGZrsvKWy3JA9pUmky+RDwieZnvpqurDHQfEf0
	rm8mrrow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN9S-0001nY-D3; Mon, 25 Nov 2019 22:48:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6e-0006GF-1C
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so3390733pgk.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=D0UI4YOQwWnTI33q+aZja1HT3I6EaF2L0dxehe0z658=;
 b=T5ippPGU9Z87PZZpMv1qxhiC0IxksHmwa15s+np0u+VDIg0DxA2eB3uuwfiwQ4IEVW
 0dT2hdAehm/eg5wMoM+6DRqIUd6QvMriezWHKsg+m8Z0Pt2RUl2Q2BILcXXgBf64tv6l
 Wd/E7PUNL3iwpG7ClTtylY7FlIOG0pw3E21ClrMGtBYXL6ZnrUOQElUguEdZaFPtjwRb
 4FkIircppUh99e3dhuIfk6Nijsk6kPrp0R+wwXh0VpPNLXo/OzVFbvcIfDCWknPiZpmG
 al6Z5iS38qYmPwqF95wr7NVpP9TgmmbP5wQszfnn7v5mnTnGLeRk3jw7b2KdWNo3xayp
 Adsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D0UI4YOQwWnTI33q+aZja1HT3I6EaF2L0dxehe0z658=;
 b=OAGmr2mfuW2nMOnYQOhXtVo4Vj9xQ+XbOa72LPfMp0kpmsZ+tWzNg4f/SjqMiIJ1wq
 iCr+8Y+c5dklyrSCrjCuMgG6kG4JYxCtIB9rrg3wsmoVtQ4da/eRLcZVD/l8fIepx8Mt
 qM3aCI3/0uzwLv/mvzSH39sSOQoOanjdKX/0mTri4M1NwHy/EfghAntMAtbQMW51j4OZ
 WjqcYpMqjMmem0LXfkSf2jifWxEEj21RrXbKqHgMeJLb4300IVzgbHdpSis+BB4IIRfZ
 TAvTriG2kUggVgzPgGouwsNY8D1rHF1HiYIjKlyXbd1cGCMZHMfNfUeH8dWH5JaWPYvz
 sFjw==
X-Gm-Message-State: APjAAAXR5bclLgDSBCnlAPPzchSMWP41OJhncwiLeHUoWOkeyiYGNNgV
 tSqrQW8aTogGEq3ccsRvwOh0MNPz10Q=
X-Google-Smtp-Source: APXvYqyhRpXne3bvm9b3JLyoutdbCikvtwZTZ0WTgKC4Oex8AePBKWHiJrWaG6DaVGBDLkJGtc6fMg==
X-Received: by 2002:a63:457:: with SMTP id 84mr34996271pge.319.1574721918097; 
 Mon, 25 Nov 2019 14:45:18 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.17
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:17 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:45:00 -0800
Message-Id: <20191125224502.266177-15-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144520_087327_2D28E529 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 15/17] gen_axs10x_sdcard_img.sh: Switch to
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
 target/linux/archs38/image/gen_axs10x_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/archs38/image/gen_axs10x_sdcard_img.sh b/target/linux/archs38/image/gen_axs10x_sdcard_img.sh
index 3cbd2caceb..87c2bba92c 100755
--- a/target/linux/archs38/image/gen_axs10x_sdcard_img.sh
+++ b/target/linux/archs38/image/gen_axs10x_sdcard_img.sh
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
