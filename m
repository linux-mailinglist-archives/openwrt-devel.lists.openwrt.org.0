Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9FD130C20
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:33:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pSaKjQwah3jZhFG4L7NUIW4AI2fdZDuYiJbfY9O7OcE=; b=B7i5LWLlMo3B3t
	pZW+PFZNFjZ0LvMOgBhaHzFxWMc8w42jo/NLCDm0ex7DtDs8vHlHstxpQIjJcxFCOuqgTnW9swyoV
	86LQyd9kjsqsv/0NHi2j+kjWxuR4ChUit6czuHrEXeO9+183FgEPnDfcwfhhoFpis9stC+IPfdfDa
	JoQ8YcT+SfyPqspm9k1Tz4NGvT65MIummgChEwRCwZ6RlBzJRceqUJIbw59DRBM3Te7XzPvuoT8oy
	5BKNPYt3/Jh2PU8JAhBDHNyT0OIECXhcJLY+y3DtvL7AiIe214aCNYMlM2mfpYdDCmIAvW376Rieh
	6w+idelKVs7to+6BT44Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioICb-0002gs-JY; Mon, 06 Jan 2020 02:33:09 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIC9-0002TV-SX
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:32:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id z16so26265056pfk.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mjZ85W3qUd+PooHRz7LNI1g7cC3UtgLRI3hCXXmWW+E=;
 b=E0n1ss3eg1abY20KJxypM08qG1CqTi4+gsFyKYrh58SAwXY0FzSHHtr9cgirhqBvXA
 czrZWWxXArMc3CNXqHgNS10/4JRhPm2pU0cQpvCMi1JzHXdpgsEt48AVX0a2adUOC3sl
 SvLMFKKu8Z+GB4VYYoSAPna/ryZe06lcUyc8W2ci/m8ClSwFsTM3XFrvs3NnVoPOzjnz
 nhs6konTbU6NPuzAv+A/zTMNkexCjpn6gPRQKqynCT0cGefuzEXXK0tdjDlhYX0MWCFM
 lcUf8HBIJZSgjkTgqkaHjYGe84BML32unhCEmHQLMVDRpRTINbzXj59DhTOqM6QBtXqI
 2IuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mjZ85W3qUd+PooHRz7LNI1g7cC3UtgLRI3hCXXmWW+E=;
 b=VYck01oZF35QToJm+XdYpwCMG47v3Gn9PVzfYdBR3WTpgHqiSZRkS/p1ojHuQ4soZ3
 B2HMrWbe0WBgTZA/Mfeh9atlwfQan4Hi9ME0Z3KhqA6jvw//eimO5u58hTzouCM11Mla
 hCshJGvt1M1atLd82vBi7G6ym55s7OEegJJYukvPvnL3A4wF07pYOXgQmIdXT54ll+aS
 Npuy2+zOPgS9gkugPVpyKjRXHJAurVNl/4C3WUQZP+bcB/jcuvNyZF/Y/qZ59m3EXakl
 fXAbNowBZnoKze6W3APbtxYq9344bHpNVfYQLT3R8byMtv+517/3mRKv8sB0U5jRXrLz
 EFmw==
X-Gm-Message-State: APjAAAVQ0+R1xmZu10WFqlqctvwxSdyEQx+DPpK+hnb73PWuujNXKRLF
 6NxS91GszGWE+RlBt+qOXLqVzDi4SeQ=
X-Google-Smtp-Source: APXvYqyc31MaQmeL8gFaFD+nBo0Y+DUe25hCJ9j3PECmomMFO9GaulKrtdk9zVtg8jnOgaCPY5PRvA==
X-Received: by 2002:a63:d705:: with SMTP id d5mr107348844pgg.24.1578277960768; 
 Sun, 05 Jan 2020 18:32:40 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j9sm62628168pff.6.2020.01.05.18.32.39
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:32:40 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:32:35 -0800
Message-Id: <20200106023238.170677-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183243_714963_986995D0 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/4] scripts/env: use command -v instead of
 which
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

Simpler and built in to the shell.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/env | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/env b/scripts/env
index 7bfca58c5d..563f39c1cf 100755
--- a/scripts/env
+++ b/scripts/env
@@ -57,7 +57,7 @@ env_init() {
 	if [ -z "$CREATE" ]; then
 		[ -d "$ENVDIR" ] || exit 0
 	fi
-	[ -x "$(which git 2>/dev/null)" ] || error "Git is not installed"
+	command -v git || error "Git is not installed"
 	mkdir -p "$ENVDIR" || error "Failed to create the environment directory"
 	cd "$ENVDIR" || error "Failed to switch to the environment directory"
 	[ -d .git ] || { 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
