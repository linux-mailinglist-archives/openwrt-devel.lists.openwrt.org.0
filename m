Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB3E19354D
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 02:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o+yPxwNpm3dUnNMijBVUxxt66DFINTBfHc29MuBmV50=; b=BWM9wt5tx4ll4K
	i/z6wAWHRC9TeyGZpQFT+KmBPYwTHMsQwb4zkOxhQzRE7FFJvhWds8rgW+ju/ijSGdNfh/UlAmdp+
	ugg3ei6ME4WEAJUV8yciwwUj+4GbjtbovjmYLQj2I2Wt5o/PQcgXh4VSW954rq1sXTYCO8873EKlU
	yTrkO4mO9+UhY1YQulUcEGGYDo4/+EZwzlEyw/AnMPmkBTy6mrmG249BRpW15wRQZQFQP2OfT5F1o
	kauIXeHRz4xLEQWQxUZu/S/H3TqeY/BkUJTFosBECqqxSlcj58Ux7ez6OdTNPbcVyfzpPPMPhrAn7
	zX2I3vRVtaioq9utX8zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHHQO-0007Ur-9j; Thu, 26 Mar 2020 01:35:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHHQ6-0007UR-Qe
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 01:34:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id t24so2061761pgj.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 18:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sz8JRVgbcxo1JrKvaPuHjWCou++6BUsmlnvgb7f01dk=;
 b=Ggoa1Gj6mR799P12BjjJ+rZE8QyyWaPB98sHdK44zvXF18TfyFBoPfQRS3rmnzzcaO
 CwXyn2z94Xjh+YiZ7eZEmZInBOPtQPqFR6DmQzhP9imyOnE84VxCJrbPmQXAMGus1pFn
 sUgzzwWIvdgpJtdLPw5flsJ7vbD4LEMWCyveo0d9OMfgQDnWAP2PX0HDrLolrHaqAyHq
 bRsxRFGvzs688ibMhwC0oJpj9Fcw9G/kszXtz8OmU4OPkGUc7ECXPgVlYF1gDwdDfZ/3
 z5n4AL1xHdxd9WcV/ZSxYVJV+Mmtz8lyrZSgf4T90jnipB4HoyW2pHZWL1WXxMxQrr2q
 HBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sz8JRVgbcxo1JrKvaPuHjWCou++6BUsmlnvgb7f01dk=;
 b=tWycYmPGHGtON+XfQ25fLomeixGgmC94r7ybX/j4pl1DI88k0aE/E11KN3hRKqEii8
 bmOUX9A6HwzrVruiF5AErsnzZOwkZpCyVaqfgc8WvMP5VAXbUB+QWcXKT6iPK3xbxeDX
 Yn3qW480pnlqdMzbm7KOKl3ZobKXFD2rh0Br5yh9Z+V9WwT8L2D+n8sCp1vtYK4zYjB0
 23DFgej5J0TXh6QMoqw1tqP8rAe0NG3ddNbcMW4RFhzGWCOJmQqUO5+8NAg+bBXr2gzv
 twPsFgzkw9G5er9JFg7ugNvG/Munk6F51H2G/rNv3kKfqRQp//s5887l8WLHZDJMefbx
 89pA==
X-Gm-Message-State: ANhLgQ1vENJbskg32aZk6TMv+rVUPVIMh+ggDmEIPSJKJ9C0HPolcthK
 4pfYu93bS3sKKI+B6K+tuc440UiJkgY=
X-Google-Smtp-Source: ADFU+vvxqBO3gCUo+mCgeNBuk/xSlT5mvglNjlsewYcs7Ev9cvPh/cpfGRzFh4I0a3L68VTlr5HxUQ==
X-Received: by 2002:a63:2642:: with SMTP id m63mr5923327pgm.258.1585186492738; 
 Wed, 25 Mar 2020 18:34:52 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id i4sm318729pgo.23.2020.03.25.18.34.51
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 18:34:51 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 18:34:50 -0700
Message-Id: <20200326013450.1774837-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_183454_892614_49C72C25 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] busybox: remove date -k patch
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

It breaks compilation on musl 1.2.0 as the syscall name changed.

According to one of the kernel developers working on removing the
settimeofday syscall, setting the kernel timezone is rather pointless:
https://github.com/systemd/systemd/issues/13305#issuecomment-520463236

The kernel generally only cares about the timezone in a few places:

the rtc time warp for windows compatibility on x86 machines

the timezone offset for file systems that require storing timestamps
in local time (fat, udf, hpfs, hfs). These typically allow a 'time_offset'
and/or 'timezone' mount option as an alternative.

some drivers that save timestamps as local time in hardware buffers,
typically scsi adapters. One can argue that these are just wrong, and we
should not be doing it that way, as other drivers do the same thing using
UTC.

Also changed base-files which is the only user of this functionality.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/base-files/Makefile                   |  2 +-
 package/base-files/files/etc/init.d/system    |  3 -
 package/utils/busybox/Makefile                |  2 +-
 .../busybox/patches/250-date-k-flag.patch     | 92 -------------------
 4 files changed, 2 insertions(+), 97 deletions(-)
 delete mode 100644 package/utils/busybox/patches/250-date-k-flag.patch

diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index 107d53e74f..8e252153fe 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
 include $(INCLUDE_DIR)/feeds.mk
 
 PKG_NAME:=base-files
-PKG_RELEASE:=214
+PKG_RELEASE:=215
 PKG_FLAGS:=nonshared
 
 PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/base-files/
diff --git a/package/base-files/files/etc/init.d/system b/package/base-files/files/etc/init.d/system
index 0e33c522b4..4c3a7b0f83 100755
--- a/package/base-files/files/etc/init.d/system
+++ b/package/base-files/files/etc/init.d/system
@@ -25,9 +25,6 @@ system_config() {
 	echo "$timezone" > /tmp/TZ
 	[ -n "$zonename" ] && [ -f "/usr/share/zoneinfo/$zonename" ] && \
 		ln -sf "/usr/share/zoneinfo/$zonename" /tmp/localtime && rm -f /tmp/TZ
-
-	# apply timezone to kernel
-	busybox date -k
 }
 
 reload_service() {
diff --git a/package/utils/busybox/Makefile b/package/utils/busybox/Makefile
index 01441d1e87..baf375eb13 100644
--- a/package/utils/busybox/Makefile
+++ b/package/utils/busybox/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=busybox
 PKG_VERSION:=1.31.1
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 PKG_FLAGS:=essential
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
diff --git a/package/utils/busybox/patches/250-date-k-flag.patch b/package/utils/busybox/patches/250-date-k-flag.patch
deleted file mode 100644
index 5aadbb233c..0000000000
--- a/package/utils/busybox/patches/250-date-k-flag.patch
+++ /dev/null
@@ -1,92 +0,0 @@
---- a/coreutils/date.c
-+++ b/coreutils/date.c
-@@ -123,6 +123,7 @@
- //usage:	IF_FEATURE_DATE_ISOFMT(
- //usage:     "\n	-D FMT		Use FMT (strptime format) for -d TIME conversion"
- //usage:	)
-+//usage:     "\n	-k		Set Kernel timezone from localtime and exit"
- //usage:     "\n"
- //usage:     "\nRecognized TIME formats:"
- //usage:     "\n	hh:mm[:ss]"
-@@ -139,9 +140,8 @@
- 
- #include "libbb.h"
- #include "common_bufsiz.h"
--#if ENABLE_FEATURE_DATE_NANO
--# include <sys/syscall.h>
--#endif
-+#include <sys/time.h>
-+#include <sys/syscall.h>
- 
- enum {
- 	OPT_RFC2822   = (1 << 0), /* R */
-@@ -149,8 +149,9 @@ enum {
- 	OPT_UTC       = (1 << 2), /* u */
- 	OPT_DATE      = (1 << 3), /* d */
- 	OPT_REFERENCE = (1 << 4), /* r */
--	OPT_TIMESPEC  = (1 << 5) * ENABLE_FEATURE_DATE_ISOFMT, /* I */
--	OPT_HINT      = (1 << 6) * ENABLE_FEATURE_DATE_ISOFMT, /* D */
-+	OPT_KERNELTZ  = (1 << 5), /* k */
-+	OPT_TIMESPEC  = (1 << 6) * ENABLE_FEATURE_DATE_ISOFMT, /* I */
-+	OPT_HINT      = (1 << 7) * ENABLE_FEATURE_DATE_ISOFMT, /* D */
- };
- 
- #if ENABLE_LONG_OPTS
-@@ -162,6 +163,7 @@ static const char date_longopts[] ALIGN1
- 	/*	"universal\0" No_argument       "u" */
- 		"date\0"      Required_argument "d"
- 		"reference\0" Required_argument "r"
-+		"set-kernel-tz\0" No_argument   "k"
- 		;
- #endif
- 
-@@ -181,6 +183,8 @@ static void maybe_set_utc(int opt)
- int date_main(int argc, char **argv) MAIN_EXTERNALLY_VISIBLE;
- int date_main(int argc UNUSED_PARAM, char **argv)
- {
-+	time_t tt;
-+	struct timezone tz;
- 	struct timespec ts;
- 	struct tm tm_time;
- 	char buf_fmt_dt2str[64];
-@@ -193,7 +197,7 @@ int date_main(int argc UNUSED_PARAM, cha
- 	char *isofmt_arg = NULL;
- 
- 	opt = getopt32long(argv, "^"
--			"Rs:ud:r:"
-+			"Rs:ud:r:k"
- 			IF_FEATURE_DATE_ISOFMT("I::D:")
- 			"\0"
- 			"d--s:s--d"
-@@ -256,6 +260,31 @@ int date_main(int argc UNUSED_PARAM, cha
- 	if (*argv)
- 		bb_show_usage();
- 
-+	/* Setting of kernel timezone was requested */
-+	if (opt & OPT_KERNELTZ) {
-+		tt = time(NULL);
-+		localtime_r(&tt, &tm_time);
-+
-+		/* workaround warp_clock() on first invocation */
-+		memset(&tz, 0, sizeof(tz));
-+		syscall(SYS_settimeofday, NULL, &tz);
-+
-+		memset(&tz, 0, sizeof(tz));
-+#ifdef __USE_MISC
-+		tz.tz_minuteswest = -(tm_time.tm_gmtoff / 60);
-+#else
-+		tz.tz_minuteswest = -(tm_time.__tm_gmtoff / 60);
-+#endif
-+
-+		if (syscall(SYS_settimeofday, NULL, &tz))
-+		{
-+			bb_perror_msg("can't set kernel time zone");
-+			return EXIT_FAILURE;
-+		}
-+
-+		return EXIT_SUCCESS;
-+	}
-+
- 	/* Now we have parsed all the information except the date format
- 	 * which depends on whether the clock is being set or read */
- 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
