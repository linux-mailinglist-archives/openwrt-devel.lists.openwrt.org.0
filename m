Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298911A04CE
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 04:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NrhjL2T2pbHnysyK/PPKKUiHwTf+0faw21gIrmmM/mw=; b=NuzukIsy3UnP0q
	qKZqZedMTH5fi3y7os3LrbUI7iLc+YEEC88gBz9uHkjlc+2pIPPbk5OhjPyM1CKMt88LACo466qm6
	HS6U0L483bDY9mRigsZiQv8hvO8oNScr3urQfh/5eDvMoJRB6l563VWohKcBkI7ru9Z2FK1LzkAah
	pNLNvvzCr+nkXduWf1T757M0fcqxUguJHYk5o5Yj63rD10qf39Q4aoCFg4mkacIZ57XYBtY+8i3A+
	E0XVt5axcsPJ2oA0Nw1lG4mbM2U+osBAEAfqTA/eZZyyhaulTQPQgQgh5rIyXXBWnXxZc4uMVSUhx
	NM23PDMo50Dl0fDGhUsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLdoY-0005rs-D7; Tue, 07 Apr 2020 02:18:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLdoP-0005qU-V0
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 02:18:03 +0000
Received: by mail-pl1-x642.google.com with SMTP id a23so664685plm.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 19:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ownuKaTCJ9wICxyT5ETnns5QvM1u5AbN3w8wUexHUTA=;
 b=SrdsuGqbaJqdAHrXmKyWWV+R3NUjJ1L8L93ouEZA8KLuPuRMxA/B13xXSl6Q5PIR2Q
 oqzXRSeVkDuMwYtIkUGGVJHxKQXYx5p7Nffw9TfijjQDOp6FG1TLAI1gqBW00c13oDgW
 V0S7y9Yk6BFHoDvBGyvZ0B5vo2FN9p7g/nLqVoJI+UCV1/3uUEJ/MatyFgxOFhlkLfiv
 Ur5bJK8q5zddQymp3vNzXueHIC4oTh1PY7QdNqeMgmEkowtY703iwTDBSJCg9Dd31y0o
 U6+zjaIBnLfCf6TOvwklYe73+kcCS1V8WZCk+3GbqeyCg3ICaHTd++W5lk9vMETgW0Cy
 VmaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ownuKaTCJ9wICxyT5ETnns5QvM1u5AbN3w8wUexHUTA=;
 b=c4M0ZVgDHXpwSOEuM/7puPKwqjkmy1vH2LUsWG8Mwfi4hw8fsUA7FVh7N8ioU7JOVN
 kiPVOJGE06wohuNBz7+gZ/QeFLhG8PxzakFUdf3xoUzNVVe4kMWf1g7hYV+jEfrmxPeB
 6mIsYLV/ny4YrYHDkhmyMveEtGWct3BvZuygxUOAkUS8daa7RxhsOPST+qFReVsck9Cx
 Tfi5nbXy3ZVECDM1ENnwEoOITOz6LBN+T0wcPoX/Eu/Y8m2LWuyWa6vtEzZH6n2ULZeT
 Fitiad1EVMS8GkdykOnjqroPQEnL/W/J611egp7aVeQ6+9mCHkwpXrGUXfBtBj2KYFI9
 Bf4w==
X-Gm-Message-State: AGi0PuZknOYjpuxNEo5P0/LRiXRU9SJ/U3NPJ7wBVJ4WuvHRKhaeD+H7
 5Nm/ikhVmHJX5W9xTK71XATYy8qA
X-Google-Smtp-Source: APiQypJrtvDTGgx9+0yOXJmQPYr9yOxob7hneMvHzebXfvFUKc/W6JVLzUUeSigqUrznPz6Nm/C9Kg==
X-Received: by 2002:a17:90a:fd90:: with SMTP id
 cx16mr2560938pjb.41.1586225880800; 
 Mon, 06 Apr 2020 19:18:00 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id c8sm13045614pfj.108.2020.04.06.19.18.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 19:18:00 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 19:17:59 -0700
Message-Id: <20200407021759.846860-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_191802_001664_E80B711F 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] hostapd: backport usleep patch
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

Optionally fixes compilation with uClibc-ng.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/network/services/hostapd/Makefile     |  2 +-
 .../services/hostapd/patches/800-usleep.patch | 58 +++++++++++++++++++
 2 files changed, 59 insertions(+), 1 deletion(-)
 create mode 100644 package/network/services/hostapd/patches/800-usleep.patch

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 7472f5904e..b7fe1d8018 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -7,7 +7,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=hostapd
-PKG_RELEASE:=8
+PKG_RELEASE:=9
 
 PKG_SOURCE_URL:=http://w1.fi/hostap.git
 PKG_SOURCE_PROTO:=git
diff --git a/package/network/services/hostapd/patches/800-usleep.patch b/package/network/services/hostapd/patches/800-usleep.patch
new file mode 100644
index 0000000000..8f7f7cfb5c
--- /dev/null
+++ b/package/network/services/hostapd/patches/800-usleep.patch
@@ -0,0 +1,58 @@
+From 39042d7f7c4997af55474ebe4513c81f00732837 Mon Sep 17 00:00:00 2001
+From: Rosen Penev <rosenp@gmail.com>
+Date: Sat, 24 Aug 2019 15:01:16 -0700
+Subject: os_sleep: Use nanosleep for POSIX versions 2008 and higher
+
+uClibc-ng optionally disabled deprecated POSIX functions like usleep,
+causing compilation failures. This switches to nanosleep while retaining
+support for older libcs that do not support nanosleep.
+
+Signed-off-by: Rosen Penev <rosenp@gmail.com>
+---
+ src/utils/os_internal.c | 6 ++++++
+ src/utils/os_unix.c     | 6 ++++++
+ 2 files changed, 12 insertions(+)
+
+diff --git a/src/utils/os_internal.c b/src/utils/os_internal.c
+index 474c8a3..feade6e 100644
+--- a/src/utils/os_internal.c
++++ b/src/utils/os_internal.c
+@@ -25,10 +25,16 @@
+ 
+ void os_sleep(os_time_t sec, os_time_t usec)
+ {
++#if defined(_POSIX_C_SOURCE) && (_POSIX_C_SOURCE >= 200809L)
++	const struct timespec req = { sec, usec * 1000 };
++
++	nanosleep(&req, NULL);
++#else
+ 	if (sec)
+ 		sleep(sec);
+ 	if (usec)
+ 		usleep(usec);
++#endif
+ }
+ 
+ 
+diff --git a/src/utils/os_unix.c b/src/utils/os_unix.c
+index 800c507..dd504f3 100644
+--- a/src/utils/os_unix.c
++++ b/src/utils/os_unix.c
+@@ -49,10 +49,16 @@ struct os_alloc_trace {
+ 
+ void os_sleep(os_time_t sec, os_time_t usec)
+ {
++#if defined(_POSIX_C_SOURCE) && (_POSIX_C_SOURCE >= 200809L)
++	const struct timespec req = { sec, usec * 1000 };
++
++	nanosleep(&req, NULL);
++#else
+ 	if (sec)
+ 		sleep(sec);
+ 	if (usec)
+ 		usleep(usec);
++#endif
+ }
+ 
+ 
+
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
