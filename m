Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CF81920A7
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 06:38:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NZ9yz/fJP2n7jQ4+HdeIpl0npkQqV+q23ocZX26haVY=; b=YgopJZIdWZIUti
	8VH0qeaATU2S0agIdH7ZzuU7wQ4sSKnk7yutGyDKgAajBsFr4AmVBsJTfeZbWnsgjKjdSDaDTwRA4
	QzCPfKr2ikof1hfTTLonIHwYoZNOSR7eAbmX0EfJCb4J+R5WgH7O3WYtWTgL/N1lArpSi80AN1a0X
	llC6I5y18+Sya+wE592wKqei9LlCia5niLYqqhuiMllUsSUETF23u9YMLcKCsEE4fjTNPGhAGhAA0
	D+ZE9GkXq2QoVu4/nzLsmiypZs/YhKZhDM0PCJZSRpJd/BEY+h8YIG8mNzm19L1ZlCdcx5XzpCvZr
	NISnUZLLoacRJjtp1j+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGyjm-0007Tc-J3; Wed, 25 Mar 2020 05:37:58 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGyjf-0007T8-8C
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 05:37:52 +0000
Received: by mail-pf1-x42c.google.com with SMTP id l184so496437pfl.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 22:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jTRRUTfxziiKEQSCCWbgMW2ZdAwWQtg4oOiTJxFIPyQ=;
 b=VFMWLPqH8zJ/XAygnpjxz6MOFzRDhG0yQpVqwzEB8PY2GlWceG5Eclu0FC2Itnv49l
 6LF/58pQDGev+qAlLpQ5hLjnZHWi7O5hm0jSwx79Zct7BjuK8nNhLKyPQ+JZVtrGj4SV
 CUaMUhpEPHPQ99f5tSeVlkXwyAgeoWjbTI1R1BsgadnKZiYAgy/hrx27VrId01vUkFvO
 LoB9nPpEgFhmMCp2InomVwiRC3IjRfv400KGGSBKGY1+IlSuWPC5pmahNNH3FWYYctl8
 /PnJbd6Qi8/tZmH1hS1zOAVrg4Jq858zlaEd2EiwdNBPAMQJDDzCuOjoKq2hjSfJsf94
 vo9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jTRRUTfxziiKEQSCCWbgMW2ZdAwWQtg4oOiTJxFIPyQ=;
 b=ObldkignTiGar2EI/lC4o5zgXJCeNs9u1oSWwadZRuLImHsnUZGQBcCpCu/CHjIPYj
 RjCebRHMK+EMJdK9E6w3tUq8G9+xwuJFRFBvqX7rds6txUO+d5FkNnvQuyVJtN9n2h7K
 EU990US+gcvyD/45mm188ff8HY0tBqSgt5SmJH0jCpuJowFB/7fsz6JyOgzBvOnp6a8x
 IR9jgzeAPVmGGgV1T9Z1Jf6sQT5kmlKcySr3hUyVEji3BB6PoGUezUYxYO5eXlzX4RQI
 s2kBHfJwzqscJFy06n02UN7lFjxCOTQJuHngcEjzFg1zM1XPtIoT2R6n836FZlyTuwID
 r7TA==
X-Gm-Message-State: ANhLgQ3gxMsfVdWDa9Vlfw5rBD5nBgKJwisMIm3mFJHyDbrj229pgeNL
 J3ErE0mkoJsVOSPvLa3Mc83F3IZJSWk=
X-Google-Smtp-Source: ADFU+vueAWlDpGG3ugJe71IwDxs0VbgoZ1Wz6L4bQUjmyMPXndTAcf+T8+E0PJZcm3KoMH4JyzVrFg==
X-Received: by 2002:a63:7f18:: with SMTP id a24mr1473594pgd.178.1585114669045; 
 Tue, 24 Mar 2020 22:37:49 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id x11sm14890757pgq.48.2020.03.24.22.37.47
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 22:37:48 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 22:37:45 -0700
Message-Id: <20200325053745.5452-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_223751_319501_5945A1F8 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCHv2] busybox: fix build with musl 1.2.0
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

SYS_settimeofday is no longer present. That is, it's replaced with the
time32 variant. There is no time64 variant.

Note that 5a7c064bdbb71bfbcded073c7c0a8723be306009 switched the patch to
use the syscall instead of the function as musl's settimeofday does not
use the tz argument for anything.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Switched to a define for uc/glibc compatibility.
     Reworded commit message slightly.
 package/utils/busybox/Makefile                 |  2 +-
 .../busybox/patches/250-date-k-flag.patch      | 18 ++++++++++--------
 2 files changed, 11 insertions(+), 9 deletions(-)

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
index 5aadbb233c..05be9fab8b 100644
--- a/package/utils/busybox/patches/250-date-k-flag.patch
+++ b/package/utils/busybox/patches/250-date-k-flag.patch
@@ -8,19 +8,21 @@
  //usage:     "\n"
  //usage:     "\nRecognized TIME formats:"
  //usage:     "\n	hh:mm[:ss]"
-@@ -139,9 +140,8 @@
+@@ -139,8 +140,11 @@
  
  #include "libbb.h"
  #include "common_bufsiz.h"
 -#if ENABLE_FEATURE_DATE_NANO
 -# include <sys/syscall.h>
--#endif
 +#include <sys/time.h>
 +#include <sys/syscall.h>
++
++#ifndef SYS_settimeofday
++#define SYS_settimeofday SYS_settimeofday_time32
+ #endif
  
  enum {
- 	OPT_RFC2822   = (1 << 0), /* R */
-@@ -149,8 +149,9 @@ enum {
+@@ -149,8 +153,9 @@ enum {
  	OPT_UTC       = (1 << 2), /* u */
  	OPT_DATE      = (1 << 3), /* d */
  	OPT_REFERENCE = (1 << 4), /* r */
@@ -32,7 +34,7 @@
  };
  
  #if ENABLE_LONG_OPTS
-@@ -162,6 +163,7 @@ static const char date_longopts[] ALIGN1
+@@ -162,6 +167,7 @@ static const char date_longopts[] ALIGN1 =
  	/*	"universal\0" No_argument       "u" */
  		"date\0"      Required_argument "d"
  		"reference\0" Required_argument "r"
@@ -40,7 +42,7 @@
  		;
  #endif
  
-@@ -181,6 +183,8 @@ static void maybe_set_utc(int opt)
+@@ -181,6 +187,8 @@ static void maybe_set_utc(int opt)
  int date_main(int argc, char **argv) MAIN_EXTERNALLY_VISIBLE;
  int date_main(int argc UNUSED_PARAM, char **argv)
  {
@@ -49,7 +51,7 @@
  	struct timespec ts;
  	struct tm tm_time;
  	char buf_fmt_dt2str[64];
-@@ -193,7 +197,7 @@ int date_main(int argc UNUSED_PARAM, cha
+@@ -193,7 +201,7 @@ int date_main(int argc UNUSED_PARAM, char **argv)
  	char *isofmt_arg = NULL;
  
  	opt = getopt32long(argv, "^"
@@ -58,7 +60,7 @@
  			IF_FEATURE_DATE_ISOFMT("I::D:")
  			"\0"
  			"d--s:s--d"
-@@ -256,6 +260,31 @@ int date_main(int argc UNUSED_PARAM, cha
+@@ -256,6 +264,31 @@ int date_main(int argc UNUSED_PARAM, char **argv)
  	if (*argv)
  		bb_show_usage();
  
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
