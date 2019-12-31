Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E14F12D5BF
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:19:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HQIrpLbaeuUzcTbs4Ded3gQkTkczMnSKU0dG8K9ZIpc=; b=DZOpVtlzFti4kd
	3UADpj0BRJvVzUePBpWevyI6LByzc+KHuCUO1JONHC6KwDVMC0evjol6Fa9JDlR18unsvPJ/nwoTF
	dZcvwg1xcrxjL6ogY8RT5zaIsMPJCoWpOis1I1K9AkYO+J8Oy+ax4fggFbxu8cZnYgOUnBiy/cktc
	XF1qt8Frwszt59acFSupi2Ms3WybVHjuJBoTDIluJaYG2Ji++9dmopeQIlLJzAzVVap1MzzMAQfpu
	qEFrjh+NwozfZWsDpbaGj/vo1RSYGBBdDR++OP2pw8YK+NfUhpV575Y4Wsu97oCFlurmd0er1EXLH
	GABhZ8jxvLL3WDCo/2TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im78F-0004Zl-7T; Tue, 31 Dec 2019 02:19:39 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im787-0004Ye-Us
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:19:33 +0000
Received: by mail-pg1-x542.google.com with SMTP id k3so18906814pgc.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9XsTjf+8Jg2dO0gXFxANKmlJ3uQWEc99xwnqyC0cd80=;
 b=MlE1mq1Dm9mABK0dC1bJiRHknyLJOSPaNO+FWakVHFAHSj2GyLxVks3t4AUte9T0bf
 B7vQf9FpMo+89q41VdlUfOrinp0UElL/WoAmrpnoGo0jCA8hCKZiCf2FJO1tKde4jKeh
 iyNOO2Op5gm29N+oNHT2qFNLhPNOBR/c97wTQkw7Ln9AmJ/nZsbzPNW8W7uLT+zScboM
 GUtsVeG4lxZVJrlxIugLMKtjGb2+Q7JOJvNS7Q3tf9ILuCH+cLF1rI2qe2VtazLdM1gI
 iA1Q4sTJ11IDdwJONPmhsChabapmVRFYTBr+QR9EpcJ9YEmLwqDrghmpjwypCFpoM+SN
 hqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9XsTjf+8Jg2dO0gXFxANKmlJ3uQWEc99xwnqyC0cd80=;
 b=ub/lmfqXT6v82jI2RiXcW1bwL/JQNu3oonjIukOz+K8AYSCDjnGuSPydWCIWpl6Euy
 svET3BIywyOceHnDhD9ObYRGUeWo3UJCy/MjOMsQMYi1M9pB7clyXj2Lp5iYO0LiM7AE
 CUfbcN0+SrfO9GMIb1gDaSIgwIQy6E/CLV8OxeQZBOFXYwgVeCFLjuIx141jYW+MoXSD
 M2ZZiBoccKfe6ZGi06CZt9V92kHEAQe6vAzpi7w/iPcpdMAONcChnJAr2d2a1gCdLeIt
 2Cxp59U+yEBjLHbb6yupwL3oyH3DCrBBwurk0nOAJ6N8xqYSi1bRYaiPzlf9JrZLnwHU
 MVww==
X-Gm-Message-State: APjAAAUpxkiPTVdi3qhPZMcPZh9OJTiikOctdzjX8AAq/cTzqXt9rpA/
 9r8O2Zt2zC6xDz265N9tAtCJGe5baqI=
X-Google-Smtp-Source: APXvYqx6nK1BoMtTr4WV57KqBcIgKVjORGEl0SiznTdNYkAkuN3zsmg/qDF9Q9wQZVFpX7z4tfo0Dw==
X-Received: by 2002:a63:e17:: with SMTP id d23mr76288478pgl.173.1577758771160; 
 Mon, 30 Dec 2019 18:19:31 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id p16sm36716712pfq.184.2019.12.30.18.19.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:19:30 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:19:29 -0800
Message-Id: <20191231021929.48012-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_181932_010010_97DF2482 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] scripts/symlink-tree.sh: Use /bin/sh
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

This uses nothing bash specific.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/symlink-tree.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/symlink-tree.sh b/scripts/symlink-tree.sh
index aa169e2455..6ed91dfb5a 100755
--- a/scripts/symlink-tree.sh
+++ b/scripts/symlink-tree.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 # Create a new openwrt tree with symlinks pointing at the current tree
 # Usage: ./scripts/symlink-tree.sh <destination>
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
