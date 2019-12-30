Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE99512CC31
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IjyxlAvZV38sL+ekwzjvTAHZNF6+6voA5Xrk2I6ajCw=; b=FBKNEduU0yKEq2wwiMOHWzrDBj
	FP3BxpTrf35naz5kT7Jru6H6V8cpvHKlUGhOzRiXewjjaC4YauLgHlxpYb6FkP4Cgevqzxhr4oKVB
	YUGNsNTdV2T4CI4u+2i0TJv5/37fxkkSFMp2qUTQsYDjVyORerh503ZBr94sEkEAT5Ytf9QmxOGh1
	/3OxM2pXW2mM4YzLntRQvwHPiYewLzFPlOFOnKueTAB+k0iN/APudoksqxRTAukAvxKjN0frIWkdX
	u4BQ5w5KP36MjY8Oh51ZTVllTw71jwoNtthP3D7tKLWzPGNMcFA342ma85Zsw8tjyqh7rE4Utgj4a
	jJn2SWBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illwF-0004Ip-HY; Mon, 30 Dec 2019 03:41:51 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illvo-0003t2-Ev
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:41:25 +0000
Received: by mail-pg1-x534.google.com with SMTP id b9so17368621pgk.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KUigej7HI1q9QCTOZrFg/VGZS3z3nNd97Bgecq26EPs=;
 b=Aoh+o/lKm2giXtorjNCTQQ6INEJMYhYGjYhQ2QBXamarLG/NaC7iYExN4Kc5C+1FA+
 SyL3vfLyh2waLGl4tJsWHWLsPXf19yGsHN9XCGKMhqyIAd3NKeQ90PAHK+DbnhS8v9qD
 88E3MkI42+p/w2DUnKlqaT3srHb8kNcBVPF5hbv/tHqQG/AM7I08AgFeOj7CJPPHo6t+
 8G55FLl081srBW2Ij/SZ1jH2PZe0zFeqSmw6gMHpfCF2t2uRXUFJ62wOum0IXd2yAdcN
 WcRZRTm9xy/VRH1zlYX2Y9N1hgAzcuURko/RX8k5t0P4ttjc3RoO5eT/Oh2xeFJTRs/R
 Zk0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KUigej7HI1q9QCTOZrFg/VGZS3z3nNd97Bgecq26EPs=;
 b=ixbdUUpS1dBqgZAQcGb1g6SehCQ0MwcNACSoTBpBNobRZ+bzpN5k2JjbeT49azVx93
 Bn7NAhrqCaBUp0odAIBf6OEd+IEv8xjP8HY9D1jvCXruZXSauh2nfiW9BQNlcWtNVbqH
 3D3MZTCf2RoiwiXH3hCqXE+DwDYKnYQuGGWDueTludRr3MiGwd0Rf+hiFaL8RQuJiLGX
 XC5wjq/Fg0RpXcNmOeL5dvVkWZV54SO80UELOwR9wVg2ydpm07IalKgApAW/76tShlnS
 pEMIAd4fVHeEEq9hrKBrLvnDrjeLezg2MJDZw9f104XK56DZAEjD64RalawVCAaESns2
 +V7g==
X-Gm-Message-State: APjAAAXtzHtVlo8vZGGMP1h95nevNISVAlD9WYYXx6d5dSW+T/zcIIIq
 5W0KC9Su5NKNfA0ZupshEUpSgfYhYpk=
X-Google-Smtp-Source: APXvYqw+J4X2qKLk8kZavptEqVVylAOowKqofr5d/5UBYPu/vwzV2Elt0pTQliqklNCsCQHRwsz9Kw==
X-Received: by 2002:aa7:9816:: with SMTP id e22mr70294809pfl.229.1577677283413; 
 Sun, 29 Dec 2019 19:41:23 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k21sm43351576pgt.22.2019.12.29.19.41.22
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:41:22 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:41:18 -0800
Message-Id: <20191230034118.21718-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230034118.21718-1-rosenp@gmail.com>
References: <20191230034118.21718-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194124_499055_55FE3455 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:534 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 3/3] toolchain/wrapper.sh: Use /bin/sh
 instead of bash
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

No bash features are actually used here.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/toolchain/files/wrapper.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/toolchain/files/wrapper.sh b/target/toolchain/files/wrapper.sh
index ba2b34778f..d42c6a14d5 100755
--- a/target/toolchain/files/wrapper.sh
+++ b/target/toolchain/files/wrapper.sh
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/bin/sh
 
 # 2009 (C) Copyright Industrie Dial Face S.p.A.
 #          Luigi 'Comio' Mantellini <luigi.mantellini@idf-hit.com>
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
