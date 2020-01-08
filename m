Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC30134F73
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 23:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IpKDfDFeXWx3LyMxWHtnRFSMiLdLgDVwje+M4c9zNfE=; b=TKN10JPgo6T+4U
	Xyv2J2mUvT55e1hZiiHhD1l19ApZbAV0u3+w86N43C2u3xhxvMxOnDa/FeWIZVOBi7W4L0I+XQGq8
	/Gubc9QjrIAwCY62p1uG+w4I5vBWv5hMHK9maEy5WfRVevKzO7qJGeoEmFJrklvwP11Ze+dYSULqy
	qI8GRlMUP51LMDsCjaCFBf79Q5Aldi7pgXdVNA+s0UleTljMFB/h6/OW/Pd2WBr+JQki8GRLm9K3h
	4QDwlHVnU6N3hL5rQ4YzFYRWxmBdL1u/FOmpszTSEt9v/eEyOYKitUXYIltOJ/Xq6rh8rsJxqG8lz
	YcYmTi6BRhfFx1HWgkrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipJvd-0001nx-2l; Wed, 08 Jan 2020 22:35:53 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipJvU-0001nR-U1
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 22:35:46 +0000
Received: by mail-pj1-x1043.google.com with SMTP id j11so239241pjs.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Jan 2020 14:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GMH4vHBCGK7mUcnV83BCiXXBSBDoFFK0/Ssjpu9YjHM=;
 b=OnrwUJYZFNGpajnI+wyGmUolHBBoOndYwwTWQORCbCutFtar29iq8LIHTJEcqWrjzy
 fMX1h+caNcEJ+25mWEbyb7JzU6q6iUKx/evDI2VzeHsJ+w4SsVt8YgbnSNirisVJRwl2
 Z+MXbREr2pUx7S0RM1lN2ghm5mYJf4rN7ULeuQP6PvUPzEm5EYchIpR7IuvpnF8gD0WF
 VN9PkITiiHRNHvXxiBcXK6E/mGqY4PZ/fGe37qqWi3MDoGTnxy+UFeR54yMFM/hnoH8F
 1ammwNnMYuSCXBxXAhv2VP6F8HdrP+ouSdStI4PMYvseCLUHTrs4FAqgIZafFyUZW/YT
 kezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GMH4vHBCGK7mUcnV83BCiXXBSBDoFFK0/Ssjpu9YjHM=;
 b=LGsouRSD4xFe7v8n97Mn9tdFWnMRsXSaircXp0RrfxNRiFBANZV5tkBOXIjauj/SuY
 Kf4svrvCnt8hNv5vmGLD5t04BTcPknm5DZXV9b49T4idOB0Il1P1OTKaJxAQ63JL5rW0
 r49sfljkOpj99+vj4jEvq+dvUtu6W3V7Gy2wtc01vAPa4htcw4D6CTvTnfluIoz3elfP
 FK1iDmbSbZqwiUZoLDQhigP9pLVbVXpKded2T5iZRFncI7fsns5zyYxPnylQgg9ng82W
 jmu/5Zkj1RQqStxJc9HJuZfNhnky5L0cI6x9TT8JrfZGCCHbfnwIAFIclO7mYf3boH+t
 c+kA==
X-Gm-Message-State: APjAAAVrS1RRNc7PNA+vEDZ1GipOyUFP6BUdh11q02CChKNAiwCeeBhC
 3BHhzp4OTApNKYgT42r2nA0kSQL7Zhw=
X-Google-Smtp-Source: APXvYqxmKt9vSPZ7X+FXy/4lcBK9aW3l3w2l5xPqADqMDi4PzL9Vo0gn3Wq7rq7s2hiJ/4X/a9NY3w==
X-Received: by 2002:a17:90b:f06:: with SMTP id
 br6mr1114198pjb.125.1578522943941; 
 Wed, 08 Jan 2020 14:35:43 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id a23sm5040783pfg.82.2020.01.08.14.35.43
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 14:35:43 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Jan 2020 14:35:42 -0800
Message-Id: <20200108223542.599823-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_143544_969082_0150E4CE 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] toolchain/nasm: Do not build for pentium
 targets
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

NASM builds completely broken files with pentium targets. This causes
ffmpeg to fail compilation. Instead of working around the problem in the
ffmpeg Makefile, it's easier to just not build for broken platforms.

Not even objdump can figure out what the generated files are.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 toolchain/Config.in | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/toolchain/Config.in b/toolchain/Config.in
index 762f4e10d7..f55e756877 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -226,7 +226,7 @@ source "toolchain/gcc/Config.in"
 
 config NASM
 	bool
-	depends on ( i386 || x86_64 )
+	depends on (x86_64 || (i386 && !(TARGET_x86_geode || TARGET_x86_legacy)))
 	prompt "Build nasm" if TOOLCHAINOPTS
 	default y
 	help
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
