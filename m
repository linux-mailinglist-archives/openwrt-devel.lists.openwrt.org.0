Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E44C1933CC
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 23:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GEIsfK5NhUbULo9KJxwTZEf/1kg4Eqn66ciNsIkXx9c=; b=fAbGZwSTp9at79
	DkRYsBCOHmfuHP2YKZc0k/xqF4crcAg2OlZ/4mf/ONjEYciQB2Mo56BTilWKlejcl01OTgw8nSAcS
	BHzLKcUNCJ7gz99ZOev+c49xXI21OVwyrGUt/3MPCkKG+q8yogaLhyn2ubzipuSxrezVW6cXg1SsK
	x2Rj482+JCtvVDa1uNzEEdqqkmur2q2yZQzYYMkBE2clp9J8rnYPajPH+pZSKQCADACU5+dSTufG4
	NhEOwMWgI4PRCIoU4fJicsJj8VR04R9Nt6Pm/Tq+P07yJVsvTr9q7rkMZuMsyha+zdgpUWM6ATgnu
	cT7LD57eWXSR701VuQRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHEeH-0007Yo-SM; Wed, 25 Mar 2020 22:37:21 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHEeB-0007YV-MF
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 22:37:17 +0000
Received: by mail-pj1-x1042.google.com with SMTP id nu11so1615476pjb.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 15:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0jk9A534i8DvArvGhBjljC42OASCDB3m3XP/LYe0mss=;
 b=QwvG/QI6RmPp47P01jO2Q1RmaW+qHf/LO47mQix6K0KofUmBrGzvPo9GIYWC12EhlE
 QuK5DBMYAQ9oYYk1JjB0LpIqZTfjxP7w9FAavSzQxT8jtmJxLFI6CT1F95tEY6Q3ik2A
 /4f2bzMXf7TCpfJMcpDg5Qo6yaMt+9MORh7ynAHZE6b/f1ARqBO6O9KoecbtDUQ2EqdW
 94lKHiBciOtEUGhkOj5/YCMxVL4WNOqpDsApW/2CErh+z4AtH3giIsZFiXpxWQmZR5A+
 FuaHtSS2llU+Q+kfv7V8eIzR5nZQPhp415FiQbD+371zWJU3gif6saakxIxpc0kTKMHN
 q4+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0jk9A534i8DvArvGhBjljC42OASCDB3m3XP/LYe0mss=;
 b=CycSnEEn6Za08ayL9Ilc8Uknkmr5rNcS2yGc8MMxOFkzaAgZqa6BdUQou/H6xp6CpL
 U2+Yh4pNS5nuPtARqhc7YVMcFqRVRWHg7gf9KYoj7Obf5zdlWxTAdpvRBRJPlowXCypB
 siUvaOhn9rpKG/Ak1MsA6o+LsFA2s8YqHK5PI/UKYhKSCxeGLHVJ3wzAF410UNpwxmgY
 GnfRuTd5d+JLQRTKDBy8jP1GU41B4JlUWJbkvXU8pW/R8H+F5FWMBAOfAKXfaCjG3E13
 lvpon8wCJRV+T4kyB5GDngaQXGOs5r3rYboTJUNL/imfCY85/hpLAbBF7gPcypUOaXYw
 gtZg==
X-Gm-Message-State: ANhLgQ1z5gukJRYGVnTVy53fcFrlF9/mD1fE3HCHV3Z+nKsp8cDxeBh0
 Bdo2iNGB3x+JN69C3BswhDmWXbeeDMY=
X-Google-Smtp-Source: ADFU+vuOpEvL72sQEOobxor8HZ+7C04S7/9485ze+OYVliWGKVjt6phzBc/huuZGdUsRWcreUl+xwQ==
X-Received: by 2002:a17:90a:a005:: with SMTP id
 q5mr6280082pjp.33.1585175831610; 
 Wed, 25 Mar 2020 15:37:11 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id s15sm136514pfd.164.2020.03.25.15.37.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 15:37:10 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 15:37:09 -0700
Message-Id: <20200325223709.4042-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_153715_749563_60DA9968 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] odhcp6c: fix compilation with musl 1.2.0
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

SYS_clock_gettime is gone with musl 1.2.0. Switch to using the normal
function.

This was done back in the day when uClibc was used when librt was
separate. Since only glibc is impacted now, this should be fine.

Added a link to rt just to be sure.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Switched to function.
 CMakeLists.txt | 2 +-
 src/odhcp6c.c  | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/CMakeLists.txt b/CMakeLists.txt
index a5b0cb3..9cce2b6 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -17,7 +17,7 @@ endif(${EXT_CER_ID})
 
 set(SOURCES src/odhcp6c.c src/dhcpv6.c src/ra.c src/script.c)
 
-set(LIBRARIES resolv)
+set(LIBRARIES resolv rt)
 
 if(USE_LIBUBOX)
 	add_definitions(-DUSE_LIBUBOX)
diff --git a/src/odhcp6c.c b/src/odhcp6c.c
index 19a86f2..5191759 100644
--- a/src/odhcp6c.c
+++ b/src/odhcp6c.c
@@ -639,8 +639,8 @@ static int usage(void)
 // Don't want to pull-in librt and libpthread just for a monotonic clock...
 uint64_t odhcp6c_get_milli_time(void)
 {
-	struct timespec t = {0, 0};
-	syscall(SYS_clock_gettime, CLOCK_MONOTONIC, &t);
+	struct timespec t;
+	clock_gettime(CLOCK_MONOTONIC, &t);
 
 	return ((uint64_t)t.tv_sec) * 1000 + ((uint64_t)t.tv_nsec) / 1000000;
 }
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
