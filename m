Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A4D19016E
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 23:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QHOrdEzTDkPIfVnRHZ+ox9gUcPiR13g/HKsdNFVdOI=; b=mn91aNjM1XkaDf
	pH72QDaGmtzge2TNmVL92aCBBOjyp0d7LJbSipSrMVz5mCuX8GBcoZHfptPf7uxCKlv0LRWd8ysaJ
	XNRJ4Ni4Xg4VR/G/vCgqTUWFP116UVjTjbckWoRV62U6xj8xauAMb5oMRPQ7uT6vLd+bLFjc/HvPC
	HnwR1fCnDPbArvj8yLdoS3ehSLla6qrK0kuYRJs1AHCx5GNkENdIKVNr3ncaIicWegvuGVN1EXuNw
	pk2BORxNQkFLxdU7KF1pagE5VyQ7SX8oB5wBKHuyhE21IObPotZP4EgBFa9aajkF8FuZHfCWfzQrQ
	y/fctKOYAh4bKFiNytwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGW0I-0007vA-HJ; Mon, 23 Mar 2020 22:57:06 +0000
Received: from mout-p-103.mailbox.org ([80.241.56.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVzJ-0007Bp-U6
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 22:56:08 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 48mV9B266zzKmgr;
 Mon, 23 Mar 2020 23:55:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id E6Ai7fk-Hyvu; Mon, 23 Mar 2020 23:55:55 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Mar 2020 23:55:39 +0100
Message-Id: <20200323225540.10886-2-hauke@hauke-m.de>
In-Reply-To: <20200323225540.10886-1-hauke@hauke-m.de>
References: <20200323225540.10886-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_155606_290725_11A93403 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/3] busybox: backport stime() removal fix
 for glibc 2.31
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

glibc 2.31 does not provide stime() any more, backport a fix from
current busybox master to avoid using this function.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../001-remove-stime-function-calls.patch     | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 package/utils/busybox/patches/001-remove-stime-function-calls.patch

diff --git a/package/utils/busybox/patches/001-remove-stime-function-calls.patch b/package/utils/busybox/patches/001-remove-stime-function-calls.patch
new file mode 100644
index 000000000000..ccf9bef35657
--- /dev/null
+++ b/package/utils/busybox/patches/001-remove-stime-function-calls.patch
@@ -0,0 +1,84 @@
+From d3539be8f27b8cbfdfee460fe08299158f08bcd9 Mon Sep 17 00:00:00 2001
+From: Alistair Francis <alistair.francis@wdc.com>
+Date: Tue, 19 Nov 2019 13:06:40 +0100
+Subject: Remove stime() function calls
+
+stime() has been deprecated in glibc 2.31 and replaced with
+clock_settime(). Let's replace the stime() function calls with
+clock_settime() in preperation.
+
+function                                             old     new   delta
+rdate_main                                           197     224     +27
+clock_settime                                          -      27     +27
+date_main                                            926     941     +15
+stime                                                 37       -     -37
+------------------------------------------------------------------------------
+(add/remove: 2/2 grow/shrink: 2/0 up/down: 69/-37)             Total: 32 bytes
+
+Signed-off-by: Alistair Francis <alistair.francis@wdc.com>
+Signed-off-by: Denys Vlasenko <vda.linux@googlemail.com>
+---
+ coreutils/date.c         | 6 +++++-
+ libbb/missing_syscalls.c | 8 --------
+ util-linux/rdate.c       | 8 ++++++--
+ 3 files changed, 11 insertions(+), 11 deletions(-)
+
+--- a/coreutils/date.c
++++ b/coreutils/date.c
+@@ -279,6 +279,9 @@ int date_main(int argc UNUSED_PARAM, cha
+ 		time(&ts.tv_sec);
+ #endif
+ 	}
++#if !ENABLE_FEATURE_DATE_NANO
++	ts.tv_nsec = 0;
++#endif
+ 	localtime_r(&ts.tv_sec, &tm_time);
+ 
+ 	/* If date string is given, update tm_time, and maybe set date */
+@@ -301,9 +304,10 @@ int date_main(int argc UNUSED_PARAM, cha
+ 		if (date_str[0] != '@')
+ 			tm_time.tm_isdst = -1;
+ 		ts.tv_sec = validate_tm_time(date_str, &tm_time);
++		ts.tv_nsec = 0;
+ 
+ 		/* if setting time, set it */
+-		if ((opt & OPT_SET) && stime(&ts.tv_sec) < 0) {
++		if ((opt & OPT_SET) && clock_settime(CLOCK_REALTIME, &ts) < 0) {
+ 			bb_perror_msg("can't set date");
+ 		}
+ 	}
+--- a/libbb/missing_syscalls.c
++++ b/libbb/missing_syscalls.c
+@@ -15,14 +15,6 @@ pid_t getsid(pid_t pid)
+ 	return syscall(__NR_getsid, pid);
+ }
+ 
+-int stime(const time_t *t)
+-{
+-	struct timeval tv;
+-	tv.tv_sec = *t;
+-	tv.tv_usec = 0;
+-	return settimeofday(&tv, NULL);
+-}
+-
+ int sethostname(const char *name, size_t len)
+ {
+ 	return syscall(__NR_sethostname, name, len);
+--- a/util-linux/rdate.c
++++ b/util-linux/rdate.c
+@@ -95,9 +95,13 @@ int rdate_main(int argc UNUSED_PARAM, ch
+ 	if (!(flags & 2)) { /* no -p (-s may be present) */
+ 		if (time(NULL) == remote_time)
+ 			bb_error_msg("current time matches remote time");
+-		else
+-			if (stime(&remote_time) < 0)
++		else {
++			struct timespec ts;
++			ts.tv_sec = remote_time;
++			ts.tv_nsec = 0;
++			if (clock_settime(CLOCK_REALTIME, &ts) < 0)
+ 				bb_perror_msg_and_die("can't set time of day");
++		}
+ 	}
+ 
+ 	if (flags != 1) /* not lone -s */
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
