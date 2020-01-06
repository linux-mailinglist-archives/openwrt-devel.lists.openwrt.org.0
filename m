Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1B3130C1B
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hGvIBZ/FwYAnzAGwjk7NFqGpnLu+NsqLi2AEWL6Tp7M=; b=R/AVhYW6MRAId+6q9xJ4plXm2o
	x4c+GjP/SGS1bsV+qL34/h2gekxogR+PIUGrcz5CtqyPBEwkJND7/vRSI4LymvxZ5dqQki6oGjmnZ
	n9YJa5WceAJMTzp9Pn2h1cLGz/5bMAa2bvpvuboQRKURTvXkx1vML8KuMMP9LAySoGIMGDmJn2cxZ
	dk5g8n67Adx1NCMOp5rtedsrMpWiNrPvEHiKycdpNID8pXAeMCMHyELSDDWQIOVCG7fXeXeXNP+pb
	mVlgDLYggftbbZTW5+a19ppkE2uaf3YpSAQdHEnirOgaG2BlkuOfLMc5YtSH+NBR0qklLus2lpetw
	MnXsUjNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIBD-0001cY-4N; Mon, 06 Jan 2020 02:31:43 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIAw-0001R6-7Q
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:31:27 +0000
Received: by mail-pf1-x42b.google.com with SMTP id i6so19399877pfc.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0iTjjrtmcLbGL72uRDOjaNp+YiZSkx5AA7AaWar483g=;
 b=a2hZ9veSUoStXueMbeTZ/zhWzy6lt56Cjedq6auyWplB374VflsV1mkTcDImZBHrDw
 YY8k9KH0uHm0fb67a6awd8uUTN+/6RVRWtx1mydoxqPnc7tk4gvFFcHbRuAtknmXXU1E
 eNVJ8Kka9fGs5pfdtS+pvevd2xLHG0PnENy2xL6nfYoLfi4cEu1AJm2ZbW0AK1eubGsM
 YADzj4laXogFj96fH87sgBF2Kfnh3nQwG8TF0rVC2Dy5mAsp0OuCAzzpQpuenwib/25Y
 dwAMwTO4YAqlefBDKTCe8W/frAvnTuv2SezPHmD1oushtqL6NDpTQtx8WrRUBKusgwva
 YJhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0iTjjrtmcLbGL72uRDOjaNp+YiZSkx5AA7AaWar483g=;
 b=PzjOBWbUV4uqxUberYQX71AacOTAtk4ylzUKEPuOwQWcqAeOGQdBU0YxPZRjtOAt3p
 yBqxBUtadm8wnDDuI/6G7joJLuwIvgqyXvSMD8DbiD/K2eYf4rIcwwL7PRM4kHL8K862
 qxFPqa5Rl/NwDwTSySSiwFXTe2nhWmQxMrDOZ/kdqHko/yb8wJYbGPoiKIu3eQoMmNYs
 pUtmKJr0CP7p7Dbld9pA+ITeVIi1XLxL6xERVKchBsv6H9nxisALt0etypFeCuPirzPI
 OGY/eiRy9ct9EYow+BcrboZqpQ9NW+ZFRtPVDIDiuWE+o/c5cot6uZgF/6JZCdVynT2k
 EZjw==
X-Gm-Message-State: APjAAAW4LzBkh3LyKTMOW4Pt094QMRFsB0qjLVVebfSiRHZ6oP5DDgsy
 UUQeBqNS9qNkiFga7Ec7zl1YBr0qAfU=
X-Google-Smtp-Source: APXvYqxy9hia2j+xNtRg3BI++vw8JLNUswjWl3hAIKkVJnvS9OXqA815vanQQb9yk6jdVCqLN8b8yg==
X-Received: by 2002:a63:554c:: with SMTP id f12mr111092031pgm.23.1578277885280; 
 Sun, 05 Jan 2020 18:31:25 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id q21sm73960609pff.105.2020.01.05.18.31.24
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:31:24 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:31:20 -0800
Message-Id: <20200106023120.170525-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106023120.170525-1-rosenp@gmail.com>
References: <20200106023120.170525-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183126_280771_67183EB4 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 4/4] scripts/mkits.sh: switch from bash to sh
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

This no longer needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/mkits.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index c09e537dbd..62cfc21c6b 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Licensed under the terms of the GNU GPL License version 2 or later.
 #
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
