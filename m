Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16B4893CC
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 22:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WW/kipr2ONiJD4YoBYGB49dp5x9gNNiUGZ+PtHn22fs=; b=YEF76RBgIsQ2dj
	/3eFMdEKCbllQIOxKj3nLqzGcg1OFJMvfKp5PHkBDBBOA4WAdc9J6UeVytkpkqvy7viQfDOkr9I4B
	JpseK2gtBVukOtxuRfSJokYRQpRxuAqXhuR4QtPBpLGcs56U16NT8FJd1nFXbzlStFk8urLx18bDT
	PXyeOL1cwhdZuqMZr0Efrm1D+kuuAtEcCQdJMAkE4UYbrNSFFuypJhuk6JwMQ1ASBQ6tctRXQcZf/
	gjEAtLu4Ns+Hihaj+hAfp4U4tzbvyhbDeR2yXEOQf93vmVxuCEZ4ks6fknggHMacAjeJWkVZR3U88
	nCNzSlsehfykKnIXS3VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuu1-0001td-HK; Sun, 11 Aug 2019 20:57:21 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwutv-0001tI-C0
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 20:57:17 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id CE4BDA611BE; Sun, 11 Aug 2019 13:57:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 85065A60D97;
 Sun, 11 Aug 2019 13:57:08 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 11 Aug 2019 13:57:08 -0700
Message-ID: <87mugfe7yz.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_135715_453654_AFF9BF6A 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] tools/patch: apply upstream patch for
 cve-2019-13638
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


GNU patch through 2.7.6 is vulnerable to OS shell command injection that
can be exploited by opening a crafted patch file that contains an ed style
diff payload with shell metacharacters. The ed editor does not need to be
present on the vulnerable system. This is different from CVE-2018-1000156.

https://nvd.nist.gov/vuln/detail/CVE-2019-13638

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 tools/patch/Makefile                         |  2 +-
 tools/patch/patches/060-CVE-2019-13638.patch | 38 ++++++++++++++++++++
 2 files changed, 39 insertions(+), 1 deletion(-)
 create mode 100644 tools/patch/patches/060-CVE-2019-13638.patch

diff --git a/tools/patch/Makefile b/tools/patch/Makefile
index 3bcf668b04..e0481204f7 100644
--- a/tools/patch/Makefile
+++ b/tools/patch/Makefile
@@ -8,7 +8,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=patch
 PKG_VERSION:=2.7.6
-PKG_RELEASE:=5
+PKG_RELEASE:=6
 PKG_CPE_ID:=cpe:/a:gnu:patch
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
diff --git a/tools/patch/patches/060-CVE-2019-13638.patch b/tools/patch/patches/060-CVE-2019-13638.patch
new file mode 100644
index 0000000000..38caff628a
--- /dev/null
+++ b/tools/patch/patches/060-CVE-2019-13638.patch
@@ -0,0 +1,38 @@
+From 3fcd042d26d70856e826a42b5f93dc4854d80bf0 Mon Sep 17 00:00:00 2001
+From: Andreas Gruenbacher <agruen@gnu.org>
+Date: Fri, 6 Apr 2018 19:36:15 +0200
+Subject: Invoke ed directly instead of using the shell
+
+* src/pch.c (do_ed_script): Invoke ed directly instead of using a shell
+command to avoid quoting vulnerabilities.
+---
+ src/pch.c | 6 ++----
+ 1 file changed, 2 insertions(+), 4 deletions(-)
+
+diff --git a/src/pch.c b/src/pch.c
+index 4fd5a05..16e001a 100644
+--- a/src/pch.c
++++ b/src/pch.c
+@@ -2459,9 +2459,6 @@ do_ed_script (char const *inname, char const *outname,
+ 	    *outname_needs_removal = true;
+ 	    copy_file (inname, outname, 0, exclusive, instat.st_mode, true);
+ 	  }
+-	sprintf (buf, "%s %s%s", editor_program,
+-		 verbosity == VERBOSE ? "" : "- ",
+-		 outname);
+ 	fflush (stdout);
+ 
+ 	pid = fork();
+@@ -2470,7 +2467,8 @@ do_ed_script (char const *inname, char const *outname,
+ 	else if (pid == 0)
+ 	  {
+ 	    dup2 (tmpfd, 0);
+-	    execl ("/bin/sh", "sh", "-c", buf, (char *) 0);
++	    assert (outname[0] != '!' && outname[0] != '-');
++	    execlp (editor_program, editor_program, "-", outname, (char  *) NULL);
+ 	    _exit (2);
+ 	  }
+ 	else
+-- 
+cgit v1.0-41-gc330
+
-- 
2.22.0



-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
