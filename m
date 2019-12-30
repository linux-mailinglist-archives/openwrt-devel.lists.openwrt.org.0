Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E4912CC2F
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:41:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jRdjKtEXaTvoW0fxz+ktaF/JfrDVCBs4AzPXkxOldsc=; b=I3JymfZurKSTLU
	Ev2SJYOUxHWy8p73rrLqtAhSWAYTjSSz5cSWmhgUfCUJUSMXsrVhpo/hj2SNeGtl4dgRCd07Ro9QL
	ndiCKSoCRnd08tgfUGwaszP5kbtBnXSR7joZXgzvx5Fiw5Dm2/Sgjv/IKP4nBwZLEESohXwCbQe0K
	b+gvX6xu5GQ2Xs1IRk8D5j6uBs8oAEldFHDpLz56NrZ2mQwsgE+iVMQ8uDhHOdh4qDSXt9/AROcGk
	O3/KONnWcQJ0dhwA/TV0216jfDwqUifwejaPH+sUWE4cUzy0LIcmivE2wGspqfH5PvD9qB2HK+YsQ
	MPEZ5ACR5HeGHXz/Uslg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illvt-0003tU-I6; Mon, 30 Dec 2019 03:41:29 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illvm-0003sW-Vk
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:41:24 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so14124535plb.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vUXEqp9wGivgCeT5XwoVXw/RYE5MZhXzzZDtt8w3Ig8=;
 b=Av0+ZnpjyZoDaxNJdFUn110e/XCYvm5d1cpi1VEjH5+YutAGheJyzdDdzu0rZaHp6E
 tjDFNFKvvFrPsMfK92iT8maqii8rTuDEsgzhqAOYmc/FPH4PyzfaDHUGIRU35bYyTs4J
 XTlKVkIcLEYaTg2s+pqsouZZlihjiQwYct3FL+odN87EMoZB3l84B1jpX6YwjaarBwmG
 ZQsp9tlpVDRmAdMESdb1AP1gG6Hg4FDcivFhSl3/T0hZOrVfYArpUNbPucG+/a1zJqBK
 +ajopW1j+qqZXor280txYBDEFKgCj68VKS/g5GVaQCBQf2gq4oW98wNDovVJ8X/AyU9g
 137w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vUXEqp9wGivgCeT5XwoVXw/RYE5MZhXzzZDtt8w3Ig8=;
 b=XKrk6dC1KSl6y5D7CUzM6yK0JUspCF+4bqgP8+sW/Chh83KRCLD/HUVqfc1lFr4XuL
 CGchdpG3DvMj4DifVaH47T+H5qSFP2HLsWfHWao2k1+MN+EyCCDciDWCR8lS/8ed8DUX
 iTTR4Yo7jVykxvFlAxNdXbSjV5rPzRM79chL3G4rgn6uUHwfYaw6SsCWnZFstgh1ggaJ
 UAdREyP9Chl8KBw/jkA1sQKDtmE35h+S9cPpPEjpNHuYpmtpFS8ocagvL/Dzizfpx/Qz
 k905jAXHKZ+AjJ4vj4RrRRW5aY88c6Smxu13KCFp+wdp5j6WRAAYCgSbL2XwQPWDTsdI
 NoyA==
X-Gm-Message-State: APjAAAUbXb/3pUSjW3siswl5NIEEzzP8U49pHtmuZc5AA86rZFU2JefS
 QvKCrVHicJktusOQlmB7s/NgLMkmqhg=
X-Google-Smtp-Source: APXvYqzwHAS9r+xS5Tkq8zAOSXBeuVgvQQx0VZorbxYWCT8xMYBmNVb6TEtay5jxjjsaju0O+goDMg==
X-Received: by 2002:a17:902:9302:: with SMTP id
 bc2mr49689616plb.328.1577677281614; 
 Sun, 29 Dec 2019 19:41:21 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k21sm43351576pgt.22.2019.12.29.19.41.20
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:41:20 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:41:16 -0800
Message-Id: <20191230034118.21718-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194123_070861_9D001378 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/3] toolchain/wrapper: Replace legacy ``
 with $()
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

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/toolchain/files/wrapper.sh | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/toolchain/files/wrapper.sh b/target/toolchain/files/wrapper.sh
index 4452128382..bd4996cac2 100755
--- a/target/toolchain/files/wrapper.sh
+++ b/target/toolchain/files/wrapper.sh
@@ -15,10 +15,10 @@
 #
 
 PROGNAME=$0
-REALNAME=`readlink -f $0`
+REALNAME=$(readlink -f $0)
 
-REALNAME_BASE=`basename $REALNAME`
-REALNAME_DIR=`dirname $REALNAME`
+REALNAME_BASE=$(basename $REALNAME)
+REALNAME_DIR=$(dirname $REALNAME)
 
 TARGET_FUNDAMENTAL_ASFLAGS=''
 TARGET_FUNDAMENTAL_CFLAGS=''
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
