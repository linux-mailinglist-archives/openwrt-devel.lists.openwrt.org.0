Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8FC136027
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Jan 2020 19:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VZEriLeYvmzDsu9GBTavWaaaiY/0uzNTg9PDlCV2Z8s=; b=FFrX0tCb2rJJaO
	d9NJtokNzAcggQ+0G4K4s9U+zmx+e1LV34k0kYuAD1QjGMsXn7ZuHeaRhfZxKhzwrFX3oKHA5q99B
	PA1JkTgCuY3J1Ko3bjmSZY4Tu+LGV+ezKASMBH84cCQbb7Rlr+olOqdnxN09YDnbCfEy0/9yN/a9q
	aPEBUquqNbDGo6FRuLZPcTztu3+Bsw4QyrwCmRwnUQoH+/5+4m8lNg7m6nGNRkGYiufaiMcRMVQ/r
	ys6y/TukOecae5MkYuUKphLTndrTd23UuBKSVHInrbDeqKEoySKW8oRw1mYqIem++k94BHiiopMlj
	xZ81JC5WH8XlGZ19Bsbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcXJ-0003Ls-Ck; Thu, 09 Jan 2020 18:28:01 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcX9-0003LZ-1x
 for openwrt-devel@lists.openwrt.org; Thu, 09 Jan 2020 18:27:52 +0000
Received: by mail-lj1-x244.google.com with SMTP id j1so8320768lja.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 Jan 2020 10:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sbRApvip2L5dSsXlWmctq0fmy3nk5V/429wPlLxRyto=;
 b=bn+FGMoNiHUazXl+f5rtgVZKMzD/nbZLLseBty2fYrqGdxk+OKQY0yWJzS6Erq7+1z
 n9kTOXXOowHwoCEaenxFYWXllYXE6w6JzBJ5tlx7Fzu3FsW8I74M+BBoKlwPZeX2803g
 p0iXaEb608cmmWcFqsuMD8lgUnFMbKRqGj6g/Mq90tZMx2MSoR47ouD8ePVEU+517pv5
 GzBWqMve/3G68fnX4Ur/WZZBJJh9BlVcccQTalumpEH4vohQ9BopiUqIyeIrHeZW8RJJ
 CzCczvQ5mqUiNMsrGeB3xOQokJ/pg+rmzKYMn6CUe9bfL3yXToST5t8EsMdVm11qtKGU
 23PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sbRApvip2L5dSsXlWmctq0fmy3nk5V/429wPlLxRyto=;
 b=ClHMRXk8jU5R82sEXH0drTq2dz1sY9kZfuokd0KOXq9Ew6sWMC3UGOtd/c9JjWWE5G
 qUFk3VcRNpJhpBwn83StT7Xb56EsPnc9JLIHu+qmov46ceuNYIF93Ar+pZ8tqnnSDh0v
 Cb9wqlivYHhHEkgAW+rAUyNQbCTYhY5acnxmTwJ9rtcgKBQ0Z+MccDUUuLSNxnWT3xg4
 sMZcM7K2E0H9iheFA5o3yBrw4NL7VI+SMEERlN587qYtbxPJ/eAxcTXjFfgjv/ls0SeC
 zxR3rDPLMgCCpytzYGRkBFKTxpS2V78CthUtTtPahw4FvFVKX6e3ibcQ71XOp5LX4dyR
 jodw==
X-Gm-Message-State: APjAAAVQQLLCqpy8BhV6FyE7GoKhE4IOt1di4lmGc4YkP6cMUZo1vQi0
 B0QA36vfVIRfIKOhGr4ExC8/q55t+PQ=
X-Google-Smtp-Source: APXvYqyyascE2LOYLcAdEGA+qw4SeoC/SMM5yYrqm33y3egWKaUwmQxVrnTx6pNkDCe2YS/+t41M0A==
X-Received: by 2002:a2e:809a:: with SMTP id i26mr7241596ljg.108.1578594468385; 
 Thu, 09 Jan 2020 10:27:48 -0800 (PST)
Received: from smms-mbp.vortex ([109.251.129.237])
 by smtp.gmail.com with ESMTPSA id e20sm3380120ljl.59.2020.01.09.10.27.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jan 2020 10:27:47 -0800 (PST)
From: Maxim Storchak <m.storchak@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 Jan 2020 20:27:44 +0200
Message-Id: <20200109182744.32700-1-m.storchak@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_102751_126052_6E86A4D0 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (m.storchak[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] zram-swap: support swap priority
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
Cc: Maxim Storchak <m.storchak@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

If zram-backed swap is added after an existing swap, it gets a lower
priority. Assiming that usually all other swaps are slower, there should
be a way to assign a higher priority to zram swap.

Signed-off-by: Maxim Storchak <m.storchak@gmail.com>
---
 package/system/zram-swap/Makefile        | 2 +-
 package/system/zram-swap/files/zram.init | 4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/package/system/zram-swap/Makefile b/package/system/zram-swap/Makefile
index bcada98a81..ee5e85927f 100644
--- a/package/system/zram-swap/Makefile
+++ b/package/system/zram-swap/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=zram-swap
 PKG_VERSION:=1.1
-PKG_RELEASE:=3
+PKG_RELEASE:=4
 
 PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
 
diff --git a/package/system/zram-swap/files/zram.init b/package/system/zram-swap/files/zram.init
index ae432f3b00..49140ad406 100755
--- a/package/system/zram-swap/files/zram.init
+++ b/package/system/zram-swap/files/zram.init
@@ -172,6 +172,8 @@ start()
 	local zram_size="$( zram_getsize )"
 	local zram_dev="$( zram_getdev )"
 	zram_applicable "$zram_dev" || return 1
+	local zram_priority="$( uci -q get system.@system[0].zram_priority )"
+	zram_priority=${zram_priority:+-p $zram_priority}
 
 	logger -s -t zram_start -p daemon.debug "activating '$zram_dev' for swapping ($zram_size MegaBytes)"
 
@@ -180,7 +182,7 @@ start()
 	zram_comp_streams "$zram_dev"
 	echo $(( $zram_size * 1024 * 1024 )) >"/sys/block/$( basename "$zram_dev" )/disksize"
 	mkswap "$zram_dev"
-	swapon "$zram_dev"
+	swapon $zram_priority "$zram_dev"
 }
 
 stop()
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
