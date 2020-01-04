Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06E91300B3
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 04:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AY0SJorKXlyo6MfBezjCu/A0cb3PtNUj+VSXyuMzgJk=; b=F1Lp7YgX4wMs8J
	nHa93IGP/CfESbiRgi7qM5Uh3DqtSmifAPSsu9ZPJhmQjdLEVifihHs5+HeYj1WjngptAelZo8Phl
	+GDa8waAb9dIyBWi0RklYD7v9wyxdnDWM3ibyD6EIZj8wbzL3jJprSPImROc28j+7CbXtjw5mZcPV
	jq4eS9nMiU/xLLvjlWJQ/feFsOkuts5XEN7dlgmkACkBWPnYUCUBza/YnURl6abPtabUwtncNIqva
	8Xajkrxl9dLnS/Qk7fgvEQETGs9blipS8Zw+opFfE53wEXLL9sNSFVwj+f59/ZB114k9a4BguNu/Q
	Rm8wJVRSmEGF+hMExPfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inaIQ-0005Ks-FZ; Sat, 04 Jan 2020 03:40:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inaIB-0005Ae-99
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 03:40:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id x184so24347579pfb.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 Jan 2020 19:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wTcviqiBfirlh6kZs0CnQvv7l5BK6wQ3RIRWOrNoLAA=;
 b=mvBe+2kYQvHIY36BbyWy2/8V+PdhO8lV5djUHMaRoODrLEp6FH4ysFT/CCBOIkUjDu
 WK+CbbzljkicEKKU7GbbxrTYmxlsEZYT139Ui2mUBxdfyFkQUTungzriZL/YJX8Ryrmn
 NyqWum0s3PiFsOHPTNNymwpHW5DGumd0huAJkI9T9sNYusgU1cVKBOIYm6GYel+Fd/Is
 Xv6ajXSpUymzQ9MCBpX/2keN86jdeTCEtMdXNFVaJLxrERoRtcqXcbucQPtdK9Zhbecd
 PFApUXXIp220IdMs8RgECz04pLjiqefpZUS1Jy6JAnK8P11Pvc7OWEf0Y7vbHQXDlRex
 KQ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wTcviqiBfirlh6kZs0CnQvv7l5BK6wQ3RIRWOrNoLAA=;
 b=JvilIYcuxZVicMcHqNYnzxCByY6kGdzcp+4j96qDUVdC0iwLrDvcNU0l5lcQiqrtWd
 1rD1vrwj9wOjFYXoH56ODZPqgvi5m4nQwd7ETSRnG5XCS96fUi6q583n6gS+qd2YgJZM
 H1omTDLoQvfk2AJbjit2czBFL9S/+NO/ni/u1al1S/zmCFXyyJKSaiy5BSSFKT7CSFQw
 NTNx3VvorxEOEa2g1rKeSirCFNNfrbmD5aKDoK6oc6xKd2nsiUtFcbG+Zx5fcDzuB8gj
 ElT+20yyuKTYViQugdnYfnttq13p09kDwHSo06KGPdJdcgdfXphkG1DB5xonJQvHhRkT
 VeZw==
X-Gm-Message-State: APjAAAWqZ2q2z0I8O4iaD6PM2Rvemnb3USD2s4hDdm7k1Qp3SjDYSYr+
 U0SuaUj1NRhUAetYdzk75XzCbiZFIMQ=
X-Google-Smtp-Source: APXvYqyddmgMy9vTdtSTlQOPAJAIEJqKy4Erm5c8Zt1KyhiimJj4SgYBtFkw3LSoc3PBUbBMhWWvQA==
X-Received: by 2002:aa7:874a:: with SMTP id g10mr79458825pfo.205.1578109195072; 
 Fri, 03 Jan 2020 19:39:55 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c199sm71154458pfb.126.2020.01.03.19.39.53
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 19:39:54 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Jan 2020 19:39:50 -0800
Message-Id: <20200104033951.194300-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_193959_349577_52C2CCE0 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] scripts/gen_image_generic.sh: replace
 -o with if/&&
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
index 2c57d56f07..527ca5bacc 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,10 +1,10 @@
 #!/usr/bin/env bash
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
-[ $# == 5 -o $# == 6 ] || {
+if [ $# -ne 5 ] && [ $# -ne 6 ]; then
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
