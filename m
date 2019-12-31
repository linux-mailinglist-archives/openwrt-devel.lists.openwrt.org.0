Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27D112D5C2
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=flOsxyKUZKZgCtCsQnAy+gcvs10wlxRkWfRbzs0pl1Q=; b=GLgOFKe2t7FDcZqDKifrH1iUUV
	BYQYn/AwdWLIEa4Fn8bh0jt+qt5/DdfyT+acbDqqJQBju3QVntOy+j7AGc6Ogd9cUUVU904MBo6YH
	8T7qfks4mLTfKCqbADuxrN2yKztt1vvo/qrxjdxl7HFSuHdHlL5n6ukfI8ieC5kCgQWll0T4Y7ol8
	YrIc/6bUIPxyYmicoHI2EEnLekKsNkfWE5pSoniP3Zj22X4BlyNRANo3vfzNXd+V7gpJZIARFoeRd
	4m5FDmndxQbsOtlyX68YImeFoPrk4h09lVL/KQeZ6F9apY6OzsQBH2LsFpdPCUIOqompesnN3VI7J
	Oq9fafbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im7Ap-0006WW-Bi; Tue, 31 Dec 2019 02:22:19 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im7AI-00064N-2A
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:21:47 +0000
Received: by mail-pl1-x631.google.com with SMTP id c23so15356734plz.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4UbFv+NdbiZ9F2Xo1g5YQOdHAXpc9sKL97aPfZ6oaQw=;
 b=PjMFDAMawihi6R7r+iReq22o/S+xFCA7qPdzqnD9cZDUj9aRG0m8lGSiqJGOJrpMlH
 xUhNgpk9cu6e9C8147gs1511daBbaYv9zFC74MWq+I9wtYwkNFrUOV3ZzPaCPKpUXLC8
 CH07ReB8EEyR5evYkzR6SVENne6bIkPciNYQhIapMFsJRelTNjXvjjKs1swZjlMnSmqH
 vlWinjXaFQ33KQKLtINlgqTk38vd3G0kBa7L5Ya60xYBLr8vU4WM5VZVDfOY3vRs/UEo
 6FmVtTcCPzWhp1AJDA5Dtg0byv3QOrltvHEdnLg1hi0WeDH/uC9NCjh7lGcVEgNzdTlx
 rvnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4UbFv+NdbiZ9F2Xo1g5YQOdHAXpc9sKL97aPfZ6oaQw=;
 b=DAopDXfWY56uT4oEA1jrxjlzkTVnUfMzUJSTSTabaIGcD4GHiWIy+/hVLGf95y9iKv
 St+w5/2L35TN35/BiFpZEqrcy11zF8H9yplsz5eGhOVmC7Bk5SsG5oqBsrkrG4M4pdo5
 zp6K/NQynxNBwQX6KZ1Gm/ToIAkH952OKI7wJV0vOGHl1U3l+7esuCWV7Un5csVxdxaU
 R3kdmy4MNNz71ogMD1mYJ8lFLQAPgLhiIg/zCrJRjF1jTtHHD9NuWpXdwLzU/9PTfyDM
 6RdBGdUJRMoe0PAkAV2h2zEQgn/M06YN5cpTu3B3tlbTN/6BJ0rwQ/D8i6ahErfemm3i
 cy8w==
X-Gm-Message-State: APjAAAWip8KSIblCgNnse3SVTVQhJ+3P68fRo1mnkNlaQ+1jvVK1dAC0
 sBY5X9m4cjKFs92LKXzdTQJQ+oe1Xe0=
X-Google-Smtp-Source: APXvYqwl5WMAry7xsOWiaW2GD9HgXXE5lbhhwhCKm3Sj0/+uxuqvx7AcNEMWjDEZQIx9HrqfozGXIw==
X-Received: by 2002:a17:90a:4498:: with SMTP id
 t24mr3180486pjg.98.1577758905107; 
 Mon, 30 Dec 2019 18:21:45 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k1sm908587pjl.21.2019.12.30.18.21.44
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:21:44 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:21:38 -0800
Message-Id: <20191231022140.48222-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191231022140.48222-1-rosenp@gmail.com>
References: <20191231022140.48222-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_182146_101941_A1CEB506 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:631 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 3/5] scripts/mkits.sh Add missing quotes
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
 scripts/mkits.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index def3d3c7c2..53b9ec5f20 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -55,7 +55,7 @@ if [ -z "${ARCH}" ] || [ -z "${COMPRESS}" ] || [ -z "${LOAD_ADDR}" ] || \
 	usage
 fi
 
-ARCH_UPPER=$(echo $ARCH | tr '[:lower:]' '[:upper:]')
+ARCH_UPPER=$(echo "$ARCH" | tr '[:lower:]' '[:upper:]')
 
 # Conditionally create fdt information
 if [ -n "${DTB}" ]; then
@@ -115,4 +115,4 @@ ${FDT_NODE}
 };"
 
 # Write .its file to disk
-echo "$DATA" > ${OUTPUT}
+echo "$DATA" > "${OUTPUT}"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
