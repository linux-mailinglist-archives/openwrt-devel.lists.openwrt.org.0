Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEA31095C3
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yplq2doAko9BgwCjCaytXYKvfwbsNHZcSwWCr9MoG/o=; b=nd2lm7eooPHlOEvYOsnuRRua7O
	Eorf6OhQ4upVklNJSVqpP0EZ7hmr+ZeVUc8rVN2SsS+RVYmX/jNKyQPbdwyThT4ZGv9BCsn0LykW+
	5q+zVHulS/uGHgbly0hRSksry5/AzCAI8YdbyUwvASuoGGuh/fLe2LeNiYf1lvU1hZr0DF94OY6/L
	OZ5vKxnzcHju6JRrjXU9kFKq0l28J/Jm0wMYzQqlKVBLBwvGYrMa+JnC/qtwJ9CKR+xJPzRS0gA8w
	HFRwtQovbrNt6XUycho1utvP62Gfxcxtx4sAIW37NHL9qIuh1vBi7RO+UP1r5GiGORDav6RXT4uzb
	bduZ3GOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN8w-0000sT-LR; Mon, 25 Nov 2019 22:47:42 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6b-0006Cr-HU
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:18 +0000
Received: by mail-pl1-x62d.google.com with SMTP id q16so2982937plr.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=tlnXzMy7tjmuPRRi5/39MLeLnnuv5yueepC5LvSF8wQ=;
 b=E3rGBo1cqxNDGjvlgftuAvUPX6bqO7dr9+rI8aGce/ImFssnhd89LJxcBQEynn5RKx
 WP1s9E0uoL5GDe7pgoaisEHKVNcgcDbpheeoZxY9zgN0Sr/8VFKM4EoHDlQeqitaNc7B
 pHnB6TeD2MuME6pmmYtBCvUGGNCPmXvakLEf7QhNHym+ObAj3qjKB0WOeZ0x4hLILYn5
 L0CEtagKO5CVOr/7dSNZ+OI89DkkvNcv7h1PQjE8dsuHcDctHpYGAnLOHtXT09ftfpb1
 xQPUot5lwn+5e08SUHzb5OosMVcga6OKrbXkGOOGXxjBrVoGfZPGPtYROcuEMEapggzc
 qmig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tlnXzMy7tjmuPRRi5/39MLeLnnuv5yueepC5LvSF8wQ=;
 b=pWSeQKxUnX0JncTRjEBryWYOUxyBoX7m3Z0PBMnCdlPdUmEYkiimPlt9T6L1lRka6M
 V4Le4jht3XTMzWTvtv5bUbjh33FF35SdkSLy2SLWCAdz+IllH5Qmzb9t+3CJdnma1L58
 quzlWr9VaTNJ72Zpc2NFvd7tLSK0UI13aJNDoxndTp2x1k2qNMswHC5Y7/uhPkVuEULf
 cKZ2awW3k+c8HqAMjAQUfhiNJrsduJxuNPCFVI2ZA6dBw1J1rYo4sao7KcpBQE8vhqri
 h0NRtkeefCQp8fV48SVHwF7lRiIaHboUrhpKlNHVGs/Y2b6olMqqAXl0TE7jg1M4alH0
 TC1w==
X-Gm-Message-State: APjAAAUY2Kld15KOs9hdimr4WWHCqWejlnD17oteBsWy94Bk6lJBlXkz
 opZ6KZKWRE1cKtRN+d2wOVZT+qc1928=
X-Google-Smtp-Source: APXvYqy6/nuVkMk1DgeoXEoInqEqhEGlAgd+Et0Mf8rueV3FoQWJ5VZD01TSkk4ncp/upRud0xqkqw==
X-Received: by 2002:a17:90a:fa96:: with SMTP id
 cu22mr1914347pjb.121.1574721916400; 
 Mon, 25 Nov 2019 14:45:16 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.15
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:15 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:58 -0800
Message-Id: <20191125224502.266177-13-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144517_575116_7BEDDE33 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
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
Subject: [OpenWrt-Devel] [PATCH 13/17] gen_rpi_sdcard_img.sh: Use /bin/sh
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
 target/linux/brcm2708/image/gen_rpi_sdcard_img.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh b/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
index 60b66c3724..5e8fb2769c 100755
--- a/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
+++ b/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
@@ -1,6 +1,6 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
-set -x 
+set -x
 [ $# -eq 5 ] || {
     echo "SYNTAX: $0 <file> <bootfs image> <rootfs image> <bootfs size> <rootfs size>"
     exit 1
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
