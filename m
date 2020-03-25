Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF2F193450
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 00:12:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sFmSGIpDXZ69yt+XFsvQBwuX1nf/5EhnWmZEiNr7/58=; b=crShgKRcR7+h5J
	ZEWV81Q9n0wegirLH5sFQWD5El92n8dPg1xEx/kKLYBXbCl8z2kMTCO7HiFTKxKLQ7scV7clNhYyA
	WGro3bIUNpjTAMZ7+gd5So1r/t0Rz7QXtME14p5uOGYFVzlBRtxqG7HJLO+5UIBXGKTRUN7jCgfgw
	JZx8nzBNGizQl86/Lft23F84Zzg+8PcEvExzU0t2v9qdpXNWAwMNgAmxwVo76Yc56tV24U8xfiwXF
	AbRfxjb9NpVPTr+R1zWcoqGYLN6GlaIUkZs5qJpNq25KYmNV9pJJoBtQqR4AljqEVUWlH0UiSAnH6
	tYQ6KGAAYU7mq7vhVd0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHFBi-0004DF-5u; Wed, 25 Mar 2020 23:11:54 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHFBb-0004Ck-HD
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 23:11:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id i13so1821554pfe.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 16:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M4sGYTDPwL0M7pS7QXfytFMU3KImGKfkTnR6hYJTKNo=;
 b=hfLzfGQ2vRqrD1LmDIrHc5k2cKGej/+hfBmIRdfQYSeWgaMbS6T6z92YutML4G3jXf
 +D+87GquS1fNCV8e4HBg35ZjPZAsmVWTyYMIJPfoAeuud1GX/VS6Sb3DbCmKowCODsqM
 yQmQCgCTWgtUhHOWogD/MMtbMtCBZ1GWGCkK2JL8i+QBu0z/GVajX4zzhrHUUJCcl+/7
 LWHgG4Brdvy/x93K7zO2jnXYenFaJleIrw/liUlvs/Y479g3HF8vMe89dyfTlk+iSFQd
 ne5NK4MJILSw0o6wSQ4nX6cy1stZe8J7jq3DYOIbv1fsx/2yyafP/Nh1UkS/5BzWXqb6
 rrDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M4sGYTDPwL0M7pS7QXfytFMU3KImGKfkTnR6hYJTKNo=;
 b=hEPfyrG7S9J80d/qA0AovBvV3LxX19q65biINQz4Dsqs/9zOk/dk9waAj/vwzaY5fM
 dhnL/PWk6ub8wcC89b5Jxz4unPiAxj0QpLFcPFsRlT+mqw7X+QBGJ/HlVZxjXKx+q/UE
 2TciqwEqScNlk3ikjvLuskmxKwPRikN+qtG23AVNg81xy/BDBsy6BW0uKJ/ADbOZv9l5
 akW27KyPDCq+YcoOUboMR5gUj954G03SznfZDfu/eD35kCwaTrIdDk2CAzGaoZnUbZlH
 Gzea+dmz+rCWBizzW9HdzZ8atVuS9obSEB5Hy47EATH6HcrFHFCUXnhAnRxpFcRrEMwC
 B2qg==
X-Gm-Message-State: ANhLgQ3tCk3SXEb6dI7aDwKCeYF4QDLbJXr2a9QMm9UtAAtyjL1gKV+Y
 /3l0/bf3QiDRw1ML+52aJ4pk951Yg0w=
X-Google-Smtp-Source: ADFU+vuR9DBmWd7Nl6LnzwuotwUBS8mCIUaSypNk6ctXLVwS9ja3Gp+ZGE9l877Y4dGXnY3SBnSiIw==
X-Received: by 2002:a63:7d05:: with SMTP id y5mr5373369pgc.420.1585177902813; 
 Wed, 25 Mar 2020 16:11:42 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id l7sm164943pff.204.2020.03.25.16.11.41
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 16:11:42 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 16:11:40 -0700
Message-Id: <20200325231140.6404-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_161147_572055_8C030E57 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv3] netifd: fix compilation with musl 1.2.0
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

Switched to the plain function instead of the now gone syscall.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v3: no need for linking to librt
 v2: switched to function
 system-linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/system-linux.c b/system-linux.c
index d533be8..d36d287 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -2421,7 +2421,7 @@ time_t system_get_rtime(void)
 	struct timespec ts;
 	struct timeval tv;
 
-	if (syscall(__NR_clock_gettime, CLOCK_MONOTONIC, &ts) == 0)
+	if (clock_gettime(CLOCK_MONOTONIC, &ts) == 0)
 		return ts.tv_sec;
 
 	if (gettimeofday(&tv, NULL) == 0)
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
