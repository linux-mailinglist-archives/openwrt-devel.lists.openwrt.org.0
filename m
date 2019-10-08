Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBCCCF027
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 03:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uhvTxfl0jDgnAr5aYpW+jGGevLhwwRsQf6hSt2niSGo=; b=tna5QuC4bxfD/0bqGpF1jwYyxh
	skhT55lJSZk8eDaaEGfFrXXhcTSMRBn6xKhQFRWttj8GdbSUERlngEXzTEKNm1SfxTzCMh1ioPtal
	Q2hURpVuKQlrNXoFUecFViYKucHgL2406e16m4xN9pH9tmNbIm4xj8ZjseOVfrv6FJrinW4dK07PB
	S8mluwwQYIDr1NEfcfgA1qpQh+fwkLBUDy4bKxMBN95X5GcIQYGlZc/e6NIorDz3jeFosUT53JwEK
	8jAJy1SgRhNCBWI03Ev3Jj96k/uvxaqsbe40sVmZI29JN1Sn+WJDm5q+iJwUNZEzz9dOWyEQAujpM
	OK1MHqkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHduy-0007CC-Np; Tue, 08 Oct 2019 01:04:00 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdtb-0005oB-GN
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 01:02:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id v4so9749422pff.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 18:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=XyuJYODBGcl2ohMFlZ32bvBsxZnAFrbZ8zK2mNN1J+c=;
 b=f987rT8o98ITp/v3u21bj5siZEsahDY7K5+lHWd6ox8ZMnNv9S8Z5F2sOlyy6dS6D/
 /3JRtjanEEaM7J47c/uYkAubPaXwIrw2N+SgasEg0NM0N5XKW6gljY8coaSoY0iH2Wy6
 TvHw1JesPXWjDMHRM5EQNorKe2uRyzi+DD6hoGbN+pKwpm9WCHq/tQyVl/SgRVDHdPEz
 GAZWCdDCf2B5eOXgb/jHKOT3kCmqPPIJSg6UsKyPiji7f8PjLd6mhFyHOePnNY5MrbX6
 G9P7li7gK2gZbc1P89qf6gYYTbJU1xCrW7jyYlb3RCFdf8t6ruPEMqOrBRFY9Z31h/7t
 084g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=XyuJYODBGcl2ohMFlZ32bvBsxZnAFrbZ8zK2mNN1J+c=;
 b=tweQT9AUfLkjHcODtWFdg85VHb2RCwsRyFq5RmtL4qZ+XIllRPATnJNoVJycEwYE4F
 2gmLVJVwuQnYDBrwccjIf453avL+m4qTl7S5xH5m6UcnXfuNxGQ1hEt8tG30+viOYDhO
 RIuTs98hOb1x/LDhV2Rer0veXnVaKwzbWA20y3g0r7SaSvj7Bn8UF2nEC4EnoHcQbOWN
 j8F6hssbzc1BKI3C4YrWMzVyaCPIfe37vfe/Q6aFKWb/BQQ/5mCIBGrlM9kaoGdd4kUQ
 RThIfM7v3HwqvN+SyrhI8xCoX5FSY/0gnTxWrKiDdmu1ntIVwaJjHxKK5a/sM8YpzxlM
 xySQ==
X-Gm-Message-State: APjAAAXJ0KjRjny3vgRi4v9CaqaRWIqS6oL/Po4gRGuiNrQB8gBF8Chz
 WWQfD6FIWquV9WPBQBxG+WbnlCSk
X-Google-Smtp-Source: APXvYqw/3Z3ijrXt7LiBU+LJxtHDZUtzLoRxA3Bn0bOrpw4l6Jn+38jxjOuEJDNY6m1Xv2j59QENxw==
X-Received: by 2002:a62:7790:: with SMTP id s138mr1326667pfc.57.1570496553989; 
 Mon, 07 Oct 2019 18:02:33 -0700 (PDT)
Received: from mangix-pc.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id x9sm594901pje.27.2019.10.07.18.02.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 18:02:33 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 18:02:24 -0700
Message-Id: <20191008010225.8822-7-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008010225.8822-1-rosenp@gmail.com>
References: <20191008010225.8822-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_180235_567641_5AEFBCCD 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 7/8] tools/findutils: improve cygwin
 compatibility
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Alexey Loukianov <lx2@lexa2.ru>

Environment block size on Windows is limited to ~32k. But
contrary to typical posix limitation process arguments are
not included in environment block and are separate from it.
Thus it is not required to compare env_size with arg_max
when checking for execl(e) limits in findutils.

This is important due to a fact that some software like
linux kernel backports tend to export a lot of environment
variables during build which leads to find/xargs failing
with "environment is too large for exec" message when
working under cygwin.

Signed-off-by: Alexey Loukianov <lx2@lexa2.ru>
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 ...cygwin-env-is-not-included-into-args.patch | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 tools/findutils/patches/900-cygwin-env-is-not-included-into-args.patch

diff --git a/tools/findutils/patches/900-cygwin-env-is-not-included-into-args.patch b/tools/findutils/patches/900-cygwin-env-is-not-included-into-args.patch
new file mode 100644
index 0000000000..d96b2fce91
--- /dev/null
+++ b/tools/findutils/patches/900-cygwin-env-is-not-included-into-args.patch
@@ -0,0 +1,33 @@
+Index: findutils-4.6.0/lib/buildcmd.c
+===================================================================
+--- findutils-4.6.0.orig/lib/buildcmd.c
++++ findutils-4.6.0/lib/buildcmd.c
+@@ -509,6 +509,8 @@ bc_init_controlinfo (struct buildcmd_con
+ 
+   ctl->exit_if_size_exceeded = 0;
+ 
++
++#ifndef __CYGWIN__
+   /* Take the size of the environment into account.  */
+   if (size_of_environment > ctl->posix_arg_size_max)
+     {
+@@ -525,9 +527,19 @@ bc_init_controlinfo (struct buildcmd_con
+     }
+   else
+     {
++      ctl->posix_arg_size_max -= headroom;
+       ctl->posix_arg_size_max -= size_of_environment;
++    }
++#else
++  if (headroom >= ctl->posix_arg_size_max)
++    {
++      return BC_INIT_CANNOT_ACCOMODATE_HEADROOM;
++    }
++  else
++    {
+       ctl->posix_arg_size_max -= headroom;
+     }
++#endif
+ 
+   /* need to subtract 2 on the following line - for Linux/PPC */
+   ctl->max_arg_count = (ctl->posix_arg_size_max / sizeof (char*)) - 2u;
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
