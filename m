Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3E312CC35
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:43:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fRGqtKyXEkCqL7Lud9adpemrDGiu/9Ymr5U+xBHF9+w=; b=Dh5Xhg1gIKVZxg
	Jw/Hh+MQBAhKquou7Ygdwl2iWftiLk735jgATjXlABuRq5wBUITEQFgcqob0xbB0rCtHISDiKWjUq
	zLrKGdBR7OFVkJfeFi7qxyyXAOLLSzAIv5YvnKdMJhP2xpJUg0gxGYTW0QF6apV0llvk3HGhr8sis
	VIfFrv4dXQ4aKYfLfcB+xyhsV/0OKga2kCqDvjqhIfFfuUwH99TfCPZL6oSJDlSIHTjBZ7E6KJgi+
	tTrPN0mc2S9I1vd2UjPTSE2/rYJ5FjWO9vEIonUwwsvj4OCtcWcOO5wbL6vpPGroRfJFzG1X24/R7
	bAZ5xQiOpobMZBR8e8Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illxo-00059S-VM; Mon, 30 Dec 2019 03:43:29 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illxH-0004jF-88
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:43:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id x185so17641905pfc.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DqiMXXce4Q0SCc55/7WdV919p6g8wM7krbDv8a4xg3I=;
 b=XckKOdESd6gqFJdAMjZlMW2PHlnhmA86s0bxx+1EEXp34E2FaT3hbzNrAjlmVf3Fy1
 eN+NyG69Yh9miusZtRi7dSCmYmfydrl0Vgd/ZezdI5FHD1KxremEJ36BPV9NSlZcgAxr
 UaOvuEseM8qDMQ9P4IKADJLU25B94W88eFL0jzxoMmObs25B8LOUSNxnzi4dPndCKz62
 Af5tv/FDG1AIywyQwtMpqlIWY0AU2m3YVKRd3mIf2Nmamlabo2JjHGNg/5hzp9nh10l2
 +kFTn2GXUYKeQtl7SeXOj+HPdXElpxoZIhE/biWK83q0+XvVF6zPI+Om3b8jcFnexue7
 EXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DqiMXXce4Q0SCc55/7WdV919p6g8wM7krbDv8a4xg3I=;
 b=CjlIm6BuWczV8pZtxBAhyCPBNOTvFtbf71fuq4rRnCplnGv5JfBMBLz3vwbli0pMd0
 Iu50PGJJgxeYlNWwdtzWp1X78fiVzLlCE8r3Zmy8gvTTteMp2ShCxuHo2A8Y0/dRsxxd
 vbsQlnLmJSWlPgrG3Fkgq1XVw3LPdxqRI+NMGYzoo+NyPxjwMs/8WIN8dSgAf2InaRzc
 2YBfxtTxIbU8IkbHazkehcGMmuUjUcr2owmrCtUKF7hbh2R8L//ZAJYMbS1yH7Idf5Cc
 qn1YMaUK7wvi/wAMeStUicYiBWloDW9bEoPEDw64JLTIkKHc0gYHIXR19zAoms51cBDW
 YHKg==
X-Gm-Message-State: APjAAAXmv3l0HjLIwMyWmIssToms9AXGYoIR+fmg3OCRRLmvTOJRL0uP
 x9n8cBdYZSnneBv5G4ygnMHDXSuKubE=
X-Google-Smtp-Source: APXvYqxFcc4axNJhKNKFmtlJidGYaPiYAM18tu5s5rbIw7OxQugF7uJlrwMvO3yj6j+WI6l8jUzd3A==
X-Received: by 2002:a63:a707:: with SMTP id d7mr67563191pgf.93.1577677374473; 
 Sun, 29 Dec 2019 19:42:54 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id z30sm50978449pfq.154.2019.12.29.19.42.53
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:42:54 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:42:48 -0800
Message-Id: <20191230034251.21873-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194257_693330_03A346EC 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/4] scripts/gen_image_generic.sh: Replace
 -o with ||
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

-o is not well defined.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 2d2fb120ce..1e35b1b349 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,10 +1,10 @@
 #!/usr/bin/env bash
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
-[ $# == 5 -o $# == 6 ] || {
+if [ $# -ge 5 ] || [ $# -le 6 ]; then
     echo "SYNTAX: $0 <file> <kernel size> <kernel directory> <rootfs size> <rootfs image> [<align>]"
     exit 1
-}
+fi
 
 OUTPUT="$1"
 KERNELSIZE="$2"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
