Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708BB109413
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nFhT/ErPR1OC06bhMpv3oA4+v+0Ctd3vJGAvXQMR068=; b=lScAD55+5s1AKkWfdT1n9TLBAF
	OOGhs7+1S0uq0CimRqThV51wMSSQsCLUIYKiWVs6cucDDAG1xriSkrbS/rYAT6ejmeIfPzbQjkzyt
	3W2Z1D7utVh7mO2EynRwfjc+43OtdUyqTgrJ9tu9sRGgUmzMIMmMGJ5BF1XPbGoXv9eDDA2AT3MUP
	YDF7JB5qhRtbU8Hh+QmD4LVTF7DB0/0lR6Gw6UBFxkItvIwAQGUcogRAFpsTAzY9Z2mRcTnkbKYYv
	9vUWDLoWO0c6gQvugyCKRxXQFtP1JIN2h8pkC2LrD/t6mOxdGkDrhqEuq4JtsycbfP80qDH/vRXXR
	2CI2KVaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJpx-0002IW-SN; Mon, 25 Nov 2019 19:15:53 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJo1-00076f-0h
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:54 +0000
Received: by mail-pg1-x530.google.com with SMTP id k1so7629826pgg.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=94Ok746n/qRpJVYDIpK3pZJhJwriXHG0+ONJY7RSNYA=;
 b=A26X+kq1wU1XgIygYnW8KlvtQolLQ8NjLpbKPyrPwDXgFrbqYWYe6Yd9iaErJ7X5Fx
 fuZ9sqzZqXJCfnWDRVC5gjL1odGDs/uvm3UcSEr5orvys+BXXIhnV8wdpS1X5nFfJ49N
 fUOs+b0x4QyXJSKGlTGO9gPwBWhecdJ33SCfbR8h4csdei8Bt6hgZEa3TdSAIpYZIKEm
 6Mv7/swilhbKHOFHlnbCrT5aot+RgVhmSBYD+6wU59VTGgARCjVG3LQSOMQz8yKM2zba
 e8LfKvXpKogGGq7O2Gw+mD8WBlpmR7SERlqxrrBHlwLKYkK6JnyoaEYWEk5Hz9acNfXO
 mMhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=94Ok746n/qRpJVYDIpK3pZJhJwriXHG0+ONJY7RSNYA=;
 b=lRWbszrIXHweZTzeDICYWw/dtB4RrQcQaE84dl9d+MxQ5XeiR2WIFp0pFvmcbvhUFi
 zeln+gC/gVyb7JkFdx6WWbA642jx2j++AWGTEvNLyEZ4tgpsh3QA10ztbbOv+SEu6zD8
 NBinKq/nrkO3FBY0CWY3AzsCjNG2EnJQd6RUq0PcRS/S+gDlptadj8SVaHPdx8p4aClW
 ZmkK42/zwY7VzOF7nwHbw4vhN+Lpx8EFY79Br1E6uIX4iWrT8lmK4u+pcAPHG5n9jx0L
 bgxVaBQSQIn8qKr161ohEBttnOkgkOpUVBA6cEWOO6owc+S3vxSyKgZ0GHTMl3MDj6jU
 6vTw==
X-Gm-Message-State: APjAAAUPIGqq83tHdRDjpm2P82XnkrvovQVDFYQaxIz0q77ry50UoP5H
 wM8zS0Qzu1YVlb69gipjA213ABqo7IU=
X-Google-Smtp-Source: APXvYqzUawJpR8e29rruPt4BNOXxiwrw9UBAC5L/ThXjD5epzxmqsYNh50iUTuE7VpZSQzs+ms6TlA==
X-Received: by 2002:a63:4c14:: with SMTP id z20mr25430384pga.10.1574709230507; 
 Mon, 25 Nov 2019 11:13:50 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.49
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:49 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:33 -0800
Message-Id: <20191125191340.5980-10-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111353_085446_DAD1A00B 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 10/17] gen_mt7623_emmc_img.sh: Use /bin/sh
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
 target/linux/mediatek/image/gen_mt7623_emmc_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mediatek/image/gen_mt7623_emmc_img.sh b/target/linux/mediatek/image/gen_mt7623_emmc_img.sh
index 1cb0883fb0..a5f296ef14 100755
--- a/target/linux/mediatek/image/gen_mt7623_emmc_img.sh
+++ b/target/linux/mediatek/image/gen_mt7623_emmc_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 OUTPUT_FILE=$1
 KERNEL_FILE=$2
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
