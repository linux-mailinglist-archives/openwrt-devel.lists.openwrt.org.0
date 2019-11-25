Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8772210941B
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qNFm7JYBD5XhW1R5s4N7de4p4zslFbTGwm6DDw3iSGI=; b=e7elNB8HQv1GZyQcca4R4SBxva
	vHwzn9E0C846Pj1EnlBMcj2/YKQnJKw6+zes1MjQfk0JmEvIJjGy3HC9ZEviMNXnpe3xnc8YbPQcB
	NpGliWhJumlVYncikVFAO/VmI8nAyu/7zTUy43YVni8uifFMR2wUUc4+/2IF1clH1jiamm1oE4nAV
	Ktu7y0zCAHMb1LBpnYD6Bg3vL1e+i9DDUWtShe5F5yLW5yaogMwNk7UfVrtWyJdQ5U7MyDXs+X36r
	UtkxDyUO5/dR9YITOKyqYjFeN98qcb8FQe1tg5gXK4CZIxEihkZt3AG93+T1HvXgF6JS2kQ3Vtk7g
	CmCqUAaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJqr-0003WQ-Mb; Mon, 25 Nov 2019 19:16:49 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJo4-0007Bc-Bm
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:57 +0000
Received: by mail-pf1-x433.google.com with SMTP id s5so7819780pfh.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=DXyb0tf6sZYAW/tuNzh0UhnHzCRDSDENLqCL3ydVKG4=;
 b=MJL4DlnA4QMgUr6q9c2tD6jNyPRf1VfsKsxlWEUl54CKroSJ6FR35mrLb3ZeHSr63H
 7AYEZ5B/F5Ux9ePchedWgaCBF7Dogj5jrMaBHa+ZI9TYI3jWfHiQfz2pmnnzEW/vLWzm
 WPK6KN5Gv9GTbucDeunNrqeUaGdBR7ZuRySZeh4RJnjMbA4D/m31R2tOj+gbZeobjAJi
 Agyxiy9zc+VbR3zRT+TOBLIFbCJYK9CUVQ3DlkERhVuRCUwqeIwDyzZBru6Tmc76S73V
 HnaHVzYMFonyz5g0N4536KDv8X8n6l8W85XMHJOzTiZhpKzTBFlxVgxlhRzsPZw2Q0NH
 MNcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DXyb0tf6sZYAW/tuNzh0UhnHzCRDSDENLqCL3ydVKG4=;
 b=ocZ/EHsCwDLDdLj7j+dYvEr6Wd0tYS7FvRIUapRfvw/zlBseF181caCi7LNoQ7ZZ10
 8BadMi1YU+P4BUftWEWLE7g4eZRL3NBd5TaaP7woiHQpw+gJ77Ut4Fbk4fGTxSx3ayt4
 FqI+G1slnr79zHi3/HQEDRqQ6ajgj7YUPlCLhsLT2b27YZkx3iqOU168o8Z9FnaXbWMT
 9xzPP8tk0WoXQJ+HcDHwa5MWv+MMoBWVra4HShpc97eP938TmAg1z07I//fptnHlXVuM
 JY/tv5+8P5uBCiU2XCXe+h33M0cpE2Ik9Ia2J/+o7mAamFRQWkoF47RUwpoouji7rAHG
 glmQ==
X-Gm-Message-State: APjAAAVS/a+/ygJBFfeTdNFMtYulwYnVTZ0uPrTvyQCR5dEUW3vq4f0J
 NSttAvalGDgy0dRF+Q67fPhsRQAqTfg=
X-Google-Smtp-Source: APXvYqxoriWmIsAqwPb2q9E3gvgaX92s5YNPSN2IXjfG7Y8S0fRgWqPBLHqPyDpkSGJhLOiX+oOaZg==
X-Received: by 2002:a62:5e04:: with SMTP id s4mr37030442pfb.63.1574709234375; 
 Mon, 25 Nov 2019 11:13:54 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.53
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:53 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:37 -0800
Message-Id: <20191125191340.5980-14-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111356_478951_01E17E51 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 14/17] gen_at91_sdcard_img.sh: Switch to
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
 target/linux/at91/image/gen_at91_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/at91/image/gen_at91_sdcard_img.sh b/target/linux/at91/image/gen_at91_sdcard_img.sh
index 4eb30fa790..5171b6723e 100755
--- a/target/linux/at91/image/gen_at91_sdcard_img.sh
+++ b/target/linux/at91/image/gen_at91_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 #
 # Copyright (C) 2017 OpenWrt.org
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
