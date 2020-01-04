Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20AD1300B4
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 04:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y+rv5UpEGImBrpEQMtmwGZxRsV0NBCWOGekn3WigAyM=; b=SuXCoDTiLqyLc12EI95T842mBx
	lXlITdj3/tTxK00Km3D0umkWBtRvyCU7vkvm/GH3Df5IpBe9dLuxu59MZL6Wr8sNnjAvTKd84Ck3L
	uWs5ZiPC/LIWU/A8MBirRVfVLM7gpSoERAtC7MJIIX5bz9eH12lOrf5/PKhAqMObjcjU0L90BKMkc
	MDPBvo8K3VkQGoJcaFIV2TKtHHWaz7tBBdM8YZ7blyw60LvYYoh45R9bjRisXNfQHkv6SxaYZKOJG
	dHSVLTR0fn5gKlwaE9E3myfZmTCiKYrSmmHuEdMK6FZHBJKxGeUocIiEK1+CoWGTtJA4JkJgeKhPT
	5V6hj4jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inaId-0006X4-TL; Sat, 04 Jan 2020 03:40:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inaID-0005Af-Dw
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 03:40:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id x184so24347593pfb.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 Jan 2020 19:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=DM9QV0/CzKZdufHcuky5etNvmPm4cITFaIU7p7tDmEE=;
 b=JZaeq0MwEW5EN0rF4gjZ9bJhM6i7eWY/WjA1+oh35yF8GniPYjLrM6NGzh+B41F9vx
 Wn2G42Ek98pvlBoUgmPmTb1iFfTEb+pz8x6fgZpeE3jxIzxMcibpvg12gzl47nb7GV/e
 UmtPIv1ijuIlA7kTATzOf8U6mk5VJiNXAoSxNFXrrEQBx8cyrNPs55o/INkcHdPYO3O1
 bwByKEAJW7v23at3Fu8F793MchE2FcLEewPeEN3Rn1hbgrjMBiM0qynZuquDWu0T7efu
 v2Voe1lhEylDtped24Sw2LThfyHbqrp5ptES7T7vhdqX7Ixw9mNO9avaNuzpt7SaLJQ4
 IYWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DM9QV0/CzKZdufHcuky5etNvmPm4cITFaIU7p7tDmEE=;
 b=Uj0ILJQiizmUxobtg3ibHpxFtFJ+QWWkuIqLCzb4wByVC93K9MZkrRHlXvTt5oMPEE
 7nsGAGP9DpV2XVysCNqwC410OxVNTVpLaa7Cylew9HMIu5pHNBpfudnm4nf86F+0kmGP
 Zxl+2M0jeHq4oqbTQI/YjzSfZnAMbv5OTpW5xT3OKCBYwnivfInIiToy5GLrgM2uj+qR
 lgCLm3HL4pePydSCpG7N+sLV84aakEw021k+isvzMmWmQUCTfzUBPkV/qis7OKkU+gHQ
 rq3ziC84D+HheEhKgcL+UCNm0bB7hAWKK+HYTfjirR6ISy3SPnJh+5wol4IpDlLz5gjl
 2mUw==
X-Gm-Message-State: APjAAAWcUSF11SXquPDXBFFNba1yRp4Qnu1Ht6QqvRPo9KQxO5DBTKYv
 ojOgRxu6GqKEzH8wYGFItnvTrAR9cjE=
X-Google-Smtp-Source: APXvYqzDOZrTUdg0+WuYPj8XeOSqLi/GdMZ9XjNmSnk/2xh7e6BC0jdIw+0ASd8idlBcPI8xIwlnTA==
X-Received: by 2002:a63:e84d:: with SMTP id
 a13mr104147294pgk.274.1578109196156; 
 Fri, 03 Jan 2020 19:39:56 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c199sm71154458pfb.126.2020.01.03.19.39.55
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 19:39:55 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Jan 2020 19:39:51 -0800
Message-Id: <20200104033951.194300-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200104033951.194300-1-rosenp@gmail.com>
References: <20200104033951.194300-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_194001_516360_A04AE329 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] scripts/gen_image_generic.sh: use
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

This has nothing bash specific.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 527ca5bacc..10a8495c4f 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/bash
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
 if [ $# -ne 5 ] && [ $# -ne 6 ]; then
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
